<?php

/**
 * Joomla! Content Management System
 *
 * @copyright  (C) 2015 Open Source Matters, Inc. <https://www.joomla.org>
 * @license    GNU General Public License version 2 or later; see LICENSE.txt
 */

namespace Joomla\CMS\Document\Renderer\Feed;

use Joomla\CMS\Document\DocumentRenderer;
use Joomla\CMS\Factory;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Router\Route;
use Joomla\CMS\Uri\Uri;
use Joomla\CMS\Version;

// phpcs:disable PSR1.Files.SideEffects
\defined('_JEXEC') or die;
// phpcs:enable PSR1.Files.SideEffects

/**
 * AtomRenderer is a feed that implements the atom specification
 *
 * Please note that just by using this class you won't automatically
 * produce valid atom files. For example, you have to specify either an editor
 * for the feed or an author for every single feed item.
 *
 * @link   http://www.atomenabled.org/developers/syndication/atom-format-spec.php
 * @since  3.5
 *
 * @property-read  \Joomla\CMS\Document\FeedDocument  $_doc  Reference to the Document object that instantiated the renderer
 */
class AtomRenderer extends DocumentRenderer
{
    /**
     * Document mime type
     *
     * @var    string
     * @since  3.5
     */
    protected $_mime = 'application/atom+xml';

    /**
     * Render the feed.
     *
     * @param   string  $name     The name of the element to render
     * @param   array   $params   Array of values
     * @param   string  $content  Override the output of the renderer
     *
     * @return  string  The output of the script
     *
     * @see     DocumentRenderer::render()
     * @since   3.5
     */
    public function render($name = '', $params = null, $content = null)
    {
        $app = Factory::getApplication();

        // Gets and sets timezone offset from site configuration
        $tz  = new \DateTimeZone($app->get('offset'));
        $now = Factory::getDate();
        $now->setTimezone($tz);

        $data = $this->_doc;

        $url            = Uri::getInstance()->toString(['scheme', 'user', 'pass', 'host', 'port']);
        $syndicationURL = Route::_('&format=feed&type=atom');

        $title = $data->getTitle();

        if ($app->get('sitename_pagetitles', 0) == 1) {
            $title = Text::sprintf('JPAGETITLE', $app->get('sitename'), $data->getTitle());
        } elseif ($app->get('sitename_pagetitles', 0) == 2) {
            $title = Text::sprintf('JPAGETITLE', $data->getTitle(), $app->get('sitename'));
        }

        $feed_title = htmlspecialchars($title, ENT_COMPAT, 'UTF-8');

        $feed = "<feed xmlns=\"http://www.w3.org/2005/Atom\"";

        if ($data->getLanguage() != '') {
            $feed .= " xml:lang=\"" . $data->getLanguage() . "\"";
        }

        $feed .= ">\n";
        $feed .= "	<title type=\"text\">" . $feed_title . "</title>\n";
        $feed .= "	<subtitle type=\"text\">" . htmlspecialchars($data->getDescription() ?? '', ENT_COMPAT, 'UTF-8') . "</subtitle>\n";

        if (!empty($data->category)) {
            if (\is_array($data->category)) {
                foreach ($data->category as $cat) {
                    $feed .= "	<category term=\"" . htmlspecialchars($cat, ENT_COMPAT, 'UTF-8') . "\" />\n";
                }
            } else {
                $feed .= "	<category term=\"" . htmlspecialchars($data->category, ENT_COMPAT, 'UTF-8') . "\" />\n";
            }
        }

        $feed .= "	<link rel=\"alternate\" type=\"text/html\" href=\"" . $url . "\"/>\n";
        $feed .= "	<id>" . str_replace(' ', '%20', $data->getBase()) . "</id>\n";
        $feed .= "	<updated>" . htmlspecialchars($now->toISO8601(true), ENT_COMPAT, 'UTF-8') . "</updated>\n";

        if ($data->editor != '') {
            $feed .= "	<author>\n";
            $feed .= "		<name>" . $data->editor . "</name>\n";

            if ($data->editorEmail != '') {
                $feed .= "		<email>" . htmlspecialchars($data->editorEmail, ENT_COMPAT, 'UTF-8') . "</email>\n";
            }

            $feed .= "	</author>\n";
        }

        $versionHtmlEscaped = '';

        if ($app->get('MetaVersion', 0)) {
            $minorVersion       = Version::MAJOR_VERSION . '.' . Version::MINOR_VERSION;
            $versionHtmlEscaped = ' version="' . htmlspecialchars($minorVersion, ENT_COMPAT, 'UTF-8') . '"';
        }

        $feed .= "	<generator uri=\"https://www.joomla.org\"" . $versionHtmlEscaped . ">" . $data->getGenerator() . "</generator>\n";
        $feed .= "	<link rel=\"self\" type=\"application/atom+xml\" href=\"" . str_replace(' ', '%20', $url . $syndicationURL) . "\"/>\n";

        foreach ($data->items as $item) {
            $itemlink = $item->link;

            if (preg_match('/[\x80-\xFF]/', $itemlink)) {
                $itemlink = implode('/', array_map('rawurlencode', explode('/', $itemlink)));
            }

            $feed .= "	<entry>\n";
            $feed .= "		<title>" . htmlspecialchars(strip_tags($item->title), ENT_COMPAT, 'UTF-8') . "</title>\n";
            $feed .= "		<link rel=\"alternate\" type=\"text/html\" href=\"" . $url . $itemlink . "\"/>\n";

            if ($item->date == '') {
                $item->date = $now->toUnix();
            }

            $itemDate = Factory::getDate($item->date);
            $itemDate->setTimezone($tz);
            $feed .= "		<published>" . htmlspecialchars($itemDate->toISO8601(true), ENT_COMPAT, 'UTF-8') . "</published>\n";
            $feed .= "		<updated>" . htmlspecialchars($itemDate->toISO8601(true), ENT_COMPAT, 'UTF-8') . "</updated>\n";

            if (empty($item->guid)) {
                $itemGuid = str_replace(' ', '%20', $url . $itemlink);
            } else {
                $itemGuid = htmlspecialchars($item->guid, ENT_COMPAT, 'UTF-8');
            }

            $feed .= "		<id>" . $itemGuid . "</id>\n";

            if ($item->author != '') {
                $feed .= "		<author>\n";
                $feed .= "			<name>" . htmlspecialchars($item->author, ENT_COMPAT, 'UTF-8') . "</name>\n";

                if (!empty($item->authorEmail)) {
                    $feed .= "			<email>" . htmlspecialchars($item->authorEmail, ENT_COMPAT, 'UTF-8') . "</email>\n";
                }

                $feed .= "		</author>\n";
            }

            if (!empty($item->description)) {
                $feed .= "		<summary type=\"html\">" . htmlspecialchars($this->_relToAbs($item->description), ENT_COMPAT, 'UTF-8') . "</summary>\n";
                $feed .= "		<content type=\"html\">" . htmlspecialchars($this->_relToAbs($item->description), ENT_COMPAT, 'UTF-8') . "</content>\n";
            }

            if (!empty($item->category)) {
                if (\is_array($item->category)) {
                    foreach ($item->category as $cat) {
                        $feed .= "		<category term=\"" . htmlspecialchars($cat, ENT_COMPAT, 'UTF-8') . "\" />\n";
                    }
                } else {
                    $feed .= "		<category term=\"" . htmlspecialchars($item->category, ENT_COMPAT, 'UTF-8') . "\" />\n";
                }
            }

            if ($item->enclosure != null) {
                $feed .= "		<link rel=\"enclosure\" href=\"" . $item->enclosure->url . "\" type=\""
                    . $item->enclosure->type . "\"  length=\"" . $item->enclosure->length . "\"/>\n";
            }

            $feed .= "	</entry>\n";
        }

        $feed .= "</feed>\n";

        return $feed;
    }
}
