<?php

/**
 * Part of the Joomla Framework Application Package
 *
 * @copyright  (C) 2013 Open Source Matters, Inc. <https://www.joomla.org>
 * @license    GNU General Public License version 2 or later; see LICENSE
 */

namespace Joomla\Application\Web;

/**
 * Class to model a Web Client.
 *
 * @property-read  integer  $platform        The detected platform on which the web client runs.
 * @property-read  boolean  $mobile          True if the web client is a mobile device.
 * @property-read  integer  $engine          The detected rendering engine used by the web client.
 * @property-read  integer  $browser         The detected browser used by the web client.
 * @property-read  string   $browserVersion  The detected browser version used by the web client.
 * @property-read  array    $languages       The priority order detected accepted languages for the client.
 * @property-read  array    $encodings       The priority order detected accepted encodings for the client.
 * @property-read  string   $userAgent       The web client's user agent string.
 * @property-read  string   $acceptEncoding  The web client's accepted encoding string.
 * @property-read  string   $acceptLanguage  The web client's accepted languages string.
 * @property-read  array    $detection       An array of flags determining whether a detection routine has been run.
 * @property-read  boolean  $robot           True if the web client is a robot
 * @property-read  array    $headers         An array of all headers sent by client
 *
 * @since  1.0.0
 */
class WebClient
{
    public const WINDOWS       = 1;
    public const WINDOWS_PHONE = 2;
    public const WINDOWS_CE    = 3;
    public const IPHONE        = 4;
    public const IPAD          = 5;
    public const IPOD          = 6;
    public const MAC           = 7;
    public const BLACKBERRY    = 8;
    public const ANDROID       = 9;
    public const LINUX         = 10;
    public const TRIDENT       = 11;
    public const WEBKIT        = 12;
    public const GECKO         = 13;
    public const PRESTO        = 14;
    public const KHTML         = 15;
    public const AMAYA         = 16;
    public const IE            = 17;
    public const FIREFOX       = 18;
    public const CHROME        = 19;
    public const SAFARI        = 20;
    public const OPERA         = 21;
    public const ANDROIDTABLET = 22;
    public const EDGE          = 23;
    public const BLINK         = 24;
    public const EDG           = 25;

    /**
     * The detected platform on which the web client runs.
     *
     * @var    integer
     * @since  1.0.0
     */
    protected $platform;

    /**
     * True if the web client is a mobile device.
     *
     * @var    boolean
     * @since  1.0.0
     */
    protected $mobile = false;

    /**
     * The detected rendering engine used by the web client.
     *
     * @var    integer
     * @since  1.0.0
     */
    protected $engine;

    /**
     * The detected browser used by the web client.
     *
     * @var    integer
     * @since  1.0.0
     */
    protected $browser;

    /**
     * The detected browser version used by the web client.
     *
     * @var    string
     * @since  1.0.0
     */
    protected $browserVersion;

    /**
     * The priority order detected accepted languages for the client.
     *
     * @var    array
     * @since  1.0.0
     */
    protected $languages = [];

    /**
     * The priority order detected accepted encodings for the client.
     *
     * @var    array
     * @since  1.0.0
     */
    protected $encodings = [];

    /**
     * The web client's user agent string.
     *
     * @var    string
     * @since  1.0.0
     */
    protected $userAgent;

    /**
     * The web client's accepted encoding string.
     *
     * @var    string
     * @since  1.0.0
     */
    protected $acceptEncoding;

    /**
     * The web client's accepted languages string.
     *
     * @var    string
     * @since  1.0.0
     */
    protected $acceptLanguage;

    /**
     * True if the web client is a robot.
     *
     * @var    boolean
     * @since  1.0.0
     */
    protected $robot = false;

    /**
     * An array of flags determining whether or not a detection routine has been run.
     *
     * @var    array
     * @since  1.0.0
     */
    protected $detection = [];

    /**
     * An array of headers sent by client.
     *
     * @var    array
     * @since  1.3.0
     */
    protected $headers;

    /**
     * Class constructor.
     *
     * @param   string  $userAgent       The optional user-agent string to parse.
     * @param   string  $acceptEncoding  The optional client accept encoding string to parse.
     * @param   string  $acceptLanguage  The optional client accept language string to parse.
     *
     * @since   1.0.0
     */
    public function __construct($userAgent = null, $acceptEncoding = null, $acceptLanguage = null)
    {
        // If no explicit user agent string was given attempt to use the implicit one from server environment.
        if (empty($userAgent) && isset($_SERVER['HTTP_USER_AGENT'])) {
            $this->userAgent = $_SERVER['HTTP_USER_AGENT'];
        } else {
            $this->userAgent = $userAgent;
        }

        // If no explicit acceptable encoding string was given attempt to use the implicit one from server environment.
        if (empty($acceptEncoding) && isset($_SERVER['HTTP_ACCEPT_ENCODING'])) {
            $this->acceptEncoding = $_SERVER['HTTP_ACCEPT_ENCODING'];
        } else {
            $this->acceptEncoding = $acceptEncoding;
        }

        // If no explicit acceptable languages string was given attempt to use the implicit one from server environment.
        if (empty($acceptLanguage) && isset($_SERVER['HTTP_ACCEPT_LANGUAGE'])) {
            $this->acceptLanguage = $_SERVER['HTTP_ACCEPT_LANGUAGE'];
        } else {
            $this->acceptLanguage = $acceptLanguage;
        }
    }

    /**
     * Magic method to get an object property's value by name.
     *
     * @param   string  $name  Name of the property for which to return a value.
     *
     * @return  mixed  The requested value if it exists.
     *
     * @since   1.0.0
     */
    public function __get($name)
    {
        switch ($name) {
            case 'mobile':
            case 'platform':
                if (empty($this->detection['platform'])) {
                    $this->detectPlatform($this->userAgent);
                }

                break;

            case 'engine':
                if (empty($this->detection['engine'])) {
                    $this->detectEngine($this->userAgent);
                }

                break;

            case 'browser':
            case 'browserVersion':
                if (empty($this->detection['browser'])) {
                    $this->detectBrowser($this->userAgent);
                }

                break;

            case 'languages':
                if (empty($this->detection['acceptLanguage'])) {
                    $this->detectLanguage($this->acceptLanguage);
                }

                break;

            case 'encodings':
                if (empty($this->detection['acceptEncoding'])) {
                    $this->detectEncoding($this->acceptEncoding);
                }

                break;

            case 'robot':
                if (empty($this->detection['robot'])) {
                    $this->detectRobot($this->userAgent);
                }

                break;

            case 'headers':
                if (empty($this->detection['headers'])) {
                    $this->detectHeaders();
                }

                break;
        }

        // Return the property if it exists.
        if (\property_exists($this, $name)) {
            return $this->$name;
        }

        $trace = \debug_backtrace();
        \trigger_error(
            'Undefined property via \__get(): ' . $name . ' in ' . $trace[0]['file'] . ' on line ' . $trace[0]['line'],
            E_USER_NOTICE
        );
    }

    /**
     * Detects the client browser and version in a user agent string.
     *
     * @param   string  $userAgent  The user-agent string to parse.
     *
     * @return  void
     *
     * @since   1.0.0
     */
    protected function detectBrowser($userAgent)
    {
        // Mark this detection routine as run.
        $this->detection['browser'] = true;

        if (empty($userAgent)) {
            return;
        }

        // Check for Google's Private Prefetch Proxy
        if ($userAgent === 'Chrome Privacy Preserving Prefetch Proxy') {
            // Private Prefetch Proxy does not provide any further details like e.g. version
            $this->browser = self::CHROME;

            return;
        }

        $patternBrowser = '';

        // Attempt to detect the browser type.  Obviously we are only worried about major browsers.
        if ((\stripos($userAgent, 'MSIE') !== false) && (\stripos($userAgent, 'Opera') === false)) {
            $this->browser  = self::IE;
            $patternBrowser = 'MSIE';
        } elseif (\stripos($userAgent, 'Trident') !== false) {
            $this->browser  = self::IE;
            $patternBrowser = ' rv';
        } elseif (\stripos($userAgent, 'Edge') !== false) {
            $this->browser  = self::EDGE;
            $patternBrowser = 'Edge';
        } elseif (\stripos($userAgent, 'Edg') !== false) {
            $this->browser  = self::EDG;
            $patternBrowser = 'Edg';
        } elseif ((\stripos($userAgent, 'Firefox') !== false) && (\stripos($userAgent, 'like Firefox') === false)) {
            $this->browser  = self::FIREFOX;
            $patternBrowser = 'Firefox';
        } elseif (\stripos($userAgent, 'OPR') !== false) {
            $this->browser  = self::OPERA;
            $patternBrowser = 'OPR';
        } elseif (\stripos($userAgent, 'Chrome') !== false) {
            $this->browser  = self::CHROME;
            $patternBrowser = 'Chrome';
        } elseif (\stripos($userAgent, 'Safari') !== false) {
            $this->browser  = self::SAFARI;
            $patternBrowser = 'Safari';
        } elseif (\stripos($userAgent, 'Opera') !== false) {
            $this->browser  = self::OPERA;
            $patternBrowser = 'Opera';
        }

        // If we detected a known browser let's attempt to determine the version.
        if ($this->browser) {
            // Build the REGEX pattern to match the browser version string within the user agent string.
            $pattern = '#(?<browser>Version|' . $patternBrowser . ')[/ :]+(?<version>[0-9.|a-zA-Z.]*)#';

            // Attempt to find version strings in the user agent string.
            $matches = [];

            if (\preg_match_all($pattern, $userAgent, $matches)) {
                // Do we have both a Version and browser match?
                if (\count($matches['browser']) == 2) {
                    // See whether Version or browser came first, and use the number accordingly.
                    if (\strripos($userAgent, 'Version') < \strripos($userAgent, $patternBrowser)) {
                        $this->browserVersion = $matches['version'][0];
                    } else {
                        $this->browserVersion = $matches['version'][1];
                    }
                } elseif (\count($matches['browser']) > 2) {
                    $key = \array_search('Version', $matches['browser']);

                    if ($key) {
                        $this->browserVersion = $matches['version'][$key];
                    }
                } else {
                    // We only have a Version or a browser so use what we have.
                    $this->browserVersion = $matches['version'][0];
                }
            }
        }
    }

    /**
     * Method to detect the accepted response encoding by the client.
     *
     * @param   string  $acceptEncoding  The client accept encoding string to parse.
     *
     * @return  void
     *
     * @since   1.0.0
     */
    protected function detectEncoding($acceptEncoding)
    {
        // Parse the accepted encodings.
        $this->encodings = \array_map('trim', (array) \explode(',', (string) $acceptEncoding));

        // Mark this detection routine as run.
        $this->detection['acceptEncoding'] = true;
    }

    /**
     * Detects the client rendering engine in a user agent string.
     *
     * @param   string  $userAgent  The user-agent string to parse.
     *
     * @return  void
     *
     * @since   1.0.0
     */
    protected function detectEngine($userAgent)
    {
        // Mark this detection routine as run.
        $this->detection['engine'] = true;

        if (empty($userAgent)) {
            return;
        }

        if (\stripos($userAgent, 'MSIE') !== false || \stripos($userAgent, 'Trident') !== false) {
            // Attempt to detect the client engine -- starting with the most popular ... for now.
            $this->engine = self::TRIDENT;
        } elseif (\stripos($userAgent, 'Edge') !== false || \stripos($userAgent, 'EdgeHTML') !== false) {
            $this->engine = self::EDGE;
        } elseif (\stripos($userAgent, 'Edg') !== false) {
            $this->engine = self::BLINK;
        } elseif (\stripos($userAgent, 'Chrome') !== false) {
            $this->engine = self::BLINK;

            $result = \explode('/', \stristr($userAgent, 'Chrome'));

            if (isset($result[1])) {
                $version = \explode(' ', $result[1]);

                if (version_compare($version[0], '28.0', 'lt')) {
                    $this->engine = self::WEBKIT;
                }
            }
        } elseif (\stripos($userAgent, 'AppleWebKit') !== false || \stripos($userAgent, 'blackberry') !== false) {
            $this->engine = self::WEBKIT;

            if (\stripos($userAgent, 'AppleWebKit') !== false) {
                $result = \explode('/', \stristr($userAgent, 'AppleWebKit'));

                if (isset($result[1])) {
                    $version = \explode(' ', $result[1]);

                    if ($version[0] === '537.36') {
                        // AppleWebKit/537.36 is Blink engine specific, exception is Blink emulated IEMobile, Trident or Edge
                        $this->engine = self::BLINK;
                    }
                }
            }
        } elseif (\stripos($userAgent, 'Gecko') !== false && \stripos($userAgent, 'like Gecko') === false) {
            // We have to check for like Gecko because some other browsers spoof Gecko.
            $this->engine = self::GECKO;
        } elseif (\stripos($userAgent, 'Opera') !== false || \stripos($userAgent, 'Presto') !== false) {
            $version = false;

            if (\preg_match('/Opera[\/| ]?([0-9.]+)/u', $userAgent, $match)) {
                $version = (float) ($match[1]);
            }

            if (\preg_match('/Version\/([0-9.]+)/u', $userAgent, $match)) {
                if ((float) ($match[1]) >= 10) {
                    $version = (float) ($match[1]);
                }
            }

            if ($version !== false && $version >= 15) {
                $this->engine = self::BLINK;
            } else {
                $this->engine = self::PRESTO;
            }
        } elseif (\stripos($userAgent, 'KHTML') !== false) {
            // *sigh*
            $this->engine = self::KHTML;
        } elseif (\stripos($userAgent, 'Amaya') !== false) {
            // Lesser known engine but it finishes off the major list from Wikipedia :-)
            $this->engine = self::AMAYA;
        }
    }

    /**
     * Method to detect the accepted languages by the client.
     *
     * @param   mixed  $acceptLanguage  The client accept language string to parse.
     *
     * @return  void
     *
     * @since   1.0.0
     */
    protected function detectLanguage($acceptLanguage)
    {
        // Parse the accepted encodings.
        $this->languages = \array_map('trim', (array) \explode(',', $acceptLanguage));

        // Mark this detection routine as run.
        $this->detection['acceptLanguage'] = true;
    }

    /**
     * Detects the client platform in a user agent string.
     *
     * @param   string  $userAgent  The user-agent string to parse.
     *
     * @return  void
     *
     * @since   1.0.0
     */
    protected function detectPlatform($userAgent)
    {
        // Mark this detection routine as run.
        $this->detection['platform'] = true;

        if (empty($userAgent)) {
            return;
        }

        // Attempt to detect the client platform.
        if (\stripos($userAgent, 'Windows') !== false) {
            $this->platform = self::WINDOWS;

            // Let's look at the specific mobile options in the Windows space.
            if (\stripos($userAgent, 'Windows Phone') !== false) {
                $this->mobile   = true;
                $this->platform = self::WINDOWS_PHONE;
            } elseif (\stripos($userAgent, 'Windows CE') !== false) {
                $this->mobile   = true;
                $this->platform = self::WINDOWS_CE;
            }
        } elseif (\stripos($userAgent, 'iPhone') !== false) {
            // Interestingly 'iPhone' is present in all iOS devices so far including iPad and iPods.
            $this->mobile   = true;
            $this->platform = self::IPHONE;

            // Let's look at the specific mobile options in the iOS space.
            if (\stripos($userAgent, 'iPad') !== false) {
                $this->platform = self::IPAD;
            } elseif (\stripos($userAgent, 'iPod') !== false) {
                $this->platform = self::IPOD;
            }
        } elseif (\stripos($userAgent, 'iPad') !== false) {
            // In case where iPhone is not mentioed in iPad user agent string
            $this->mobile   = true;
            $this->platform = self::IPAD;
        } elseif (\stripos($userAgent, 'iPod') !== false) {
            // In case where iPhone is not mentioed in iPod user agent string
            $this->mobile   = true;
            $this->platform = self::IPOD;
        } elseif (\preg_match('/macintosh|mac os x/i', $userAgent)) {
            // This has to come after the iPhone check because mac strings are also present in iOS devices.
            $this->platform = self::MAC;
        } elseif (\stripos($userAgent, 'Blackberry') !== false) {
            $this->mobile   = true;
            $this->platform = self::BLACKBERRY;
        } elseif (\stripos($userAgent, 'Android') !== false) {
            $this->mobile   = true;
            $this->platform = self::ANDROID;

            /*
             * Attempt to distinguish between Android phones and tablets
             * There is no totally foolproof method but certain rules almost always hold
             *   Android 3.x is only used for tablets
             *   Some devices and browsers encourage users to change their UA string to include Tablet.
             *   Google encourages manufacturers to exclude the string Mobile from tablet device UA strings.
             *   In some modes Kindle Android devices include the string Mobile but they include the string Silk.
             */
            if (
                \stripos($userAgent, 'Android 3') !== false || \stripos($userAgent, 'Tablet') !== false
                || \stripos($userAgent, 'Mobile') === false || \stripos($userAgent, 'Silk') !== false
            ) {
                $this->platform = self::ANDROIDTABLET;
            }
        } elseif (\stripos($userAgent, 'Linux') !== false) {
            $this->platform = self::LINUX;
        }
    }

    /**
     * Determines if the browser is a robot or not.
     *
     * @param   string  $userAgent  The user-agent string to parse.
     *
     * @return  void
     *
     * @since   1.0.0
     */
    protected function detectRobot($userAgent)
    {
        $this->detection['robot'] = true;

        if (empty($userAgent)) {
            return;
        }

        $this->robot = (bool) \preg_match('/http|bot|robot|spider|crawler|curl|^$/i', $userAgent);
    }

    /**
     * Fills internal array of headers
     *
     * @return  void
     *
     * @since   1.3.0
     */
    protected function detectHeaders()
    {
        if (\function_exists('getallheaders')) {
            // If php is working under Apache, there is a special function
            $this->headers = \getallheaders();
        } else {
            // Else we fill headers from $_SERVER variable
            $this->headers = [];

            foreach ($_SERVER as $name => $value) {
                if (\substr($name, 0, 5) == 'HTTP_') {
                    $this->headers[\str_replace(' ', '-', \ucwords(\strtolower(\str_replace('_', ' ', \substr($name, 5)))))] = $value;
                }
            }
        }

        // Mark this detection routine as run.
        $this->detection['headers'] = true;
    }
}
