-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: db:3306
-- Tiempo de generación: 29-01-2025 a las 23:33:08
-- Versión del servidor: 8.1.0
-- Versión de PHP: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_joomla`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_action_logs`
--

CREATE TABLE `oh67l_action_logs` (
  `id` int UNSIGNED NOT NULL,
  `message_language_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date` datetime NOT NULL,
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int NOT NULL DEFAULT '0',
  `item_id` int NOT NULL DEFAULT '0',
  `ip_address` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0.0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_action_logs`
--

INSERT INTO `oh67l_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(1, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2025-01-28 19:24:19', 'com_users', 974, 0, 'COM_ACTIONLOGS_DISABLED'),
(2, 'PLG_ACTIONLOG_JOOMLA_GUIDEDTOURS_TOURCOMPLETED', '{\"id\":12,\"title\":\"Welcome to Joomla!\",\"state\":\"completed\",\"step\":6,\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-28 19:24:28', 'com_guidedtours.state', 974, 12, 'COM_ACTIONLOGS_DISABLED'),
(3, 'PLG_ACTIONLOG_JOOMLA_USER_LOGIN_FAILED', '{\"action\":\"login\",\"id\":974,\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2025-01-28 19:24:45', 'com_users', 974, 974, 'COM_ACTIONLOGS_DISABLED'),
(4, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2025-01-28 19:24:58', 'com_users', 974, 0, 'COM_ACTIONLOGS_DISABLED'),
(5, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":17,\"title\":\"Stockflow\",\"extension_name\":\"Stockflow\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=17\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-28 19:39:20', 'com_modules.module', 974, 17, 'COM_ACTIONLOGS_DISABLED'),
(6, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"Main Menu\",\"extension_name\":\"Main Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-28 19:40:28', 'com_modules.module', 974, 1, 'COM_ACTIONLOGS_DISABLED'),
(7, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"975\",\"title\":\"David Crespo\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=975\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-28 19:44:24', 'com_users', 974, 975, 'COM_ACTIONLOGS_DISABLED'),
(8, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_DELETED', '{\"action\":\"delete\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":975,\"title\":\"David Crespo\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-28 19:44:48', 'com_users', 974, 975, 'COM_ACTIONLOGS_DISABLED'),
(9, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"976\",\"title\":\"Vicent Jord\\u00e0\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=976\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-28 19:45:45', 'com_users', 974, 976, 'COM_ACTIONLOGS_DISABLED'),
(10, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"977\",\"title\":\"David Crespo\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=977\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-28 19:46:25', 'com_users', 974, 977, 'COM_ACTIONLOGS_DISABLED'),
(11, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"978\",\"title\":\"Javier Signes\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=978\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-28 19:46:55', 'com_users', 974, 978, 'COM_ACTIONLOGS_DISABLED'),
(12, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"logo_footer2.png\",\"itemlink\":\"index.php?option=com_media&path=local-images:\\/\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-28 19:52:31', 'com_media.file', 974, 0, 'COM_ACTIONLOGS_DISABLED'),
(13, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"Home\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-28 19:52:41', 'com_content.article', 974, 1, 'COM_ACTIONLOGS_DISABLED'),
(14, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":974,\"title\":\"gabi\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"table\":\"#__content\"}', '2025-01-28 19:53:22', 'com_checkin', 974, 974, 'COM_ACTIONLOGS_DISABLED'),
(15, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"logo_footer2.png\",\"itemlink\":\"index.php?option=com_media&path=local-images:\\/Home\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-28 19:56:43', 'com_media.file', 974, 0, 'COM_ACTIONLOGS_DISABLED'),
(16, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2025-01-28 19:57:23', 'com_users', 974, 0, 'COM_ACTIONLOGS_DISABLED'),
(17, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"Home\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-28 20:00:41', 'com_content.article', 974, 1, 'COM_ACTIONLOGS_DISABLED'),
(18, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":974,\"title\":\"gabi\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"table\":\"#__content\"}', '2025-01-28 20:00:41', 'com_checkin', 974, 974, 'COM_ACTIONLOGS_DISABLED'),
(19, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"Home\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-28 20:01:09', 'com_content.article', 974, 1, 'COM_ACTIONLOGS_DISABLED'),
(20, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":974,\"title\":\"gabi\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"table\":\"#__content\"}', '2025-01-28 20:01:09', 'com_checkin', 974, 974, 'COM_ACTIONLOGS_DISABLED'),
(21, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"Home\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-28 20:03:33', 'com_content.article', 974, 1, 'COM_ACTIONLOGS_DISABLED'),
(22, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":974,\"title\":\"gabi\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"table\":\"#__content\"}', '2025-01-28 20:03:33', 'com_checkin', 974, 974, 'COM_ACTIONLOGS_DISABLED'),
(23, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"Home\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-28 20:04:37', 'com_content.article', 974, 1, 'COM_ACTIONLOGS_DISABLED'),
(24, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":974,\"title\":\"gabi\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"table\":\"#__content\"}', '2025-01-28 20:04:37', 'com_checkin', 974, 974, 'COM_ACTIONLOGS_DISABLED'),
(25, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":974,\"title\":\"gabi\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"table\":\"#__menu\"}', '2025-01-28 20:09:36', 'com_checkin', 974, 974, 'COM_ACTIONLOGS_DISABLED'),
(26, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":974,\"title\":\"gabi\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"table\":\"#__menu\"}', '2025-01-28 20:10:49', 'com_checkin', 974, 974, 'COM_ACTIONLOGS_DISABLED'),
(27, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":\"2\",\"title\":\"Home\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=2\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-28 20:11:35', 'com_categories.category', 974, 2, 'COM_ACTIONLOGS_DISABLED'),
(28, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":974,\"title\":\"gabi\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"table\":\"#__categories\"}', '2025-01-28 20:11:35', 'com_checkin', 974, 974, 'COM_ACTIONLOGS_DISABLED'),
(29, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":974,\"title\":\"gabi\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"table\":\"#__categories\"}', '2025-01-28 20:12:13', 'com_checkin', 974, 974, 'COM_ACTIONLOGS_DISABLED'),
(30, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":974,\"title\":\"gabi\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"table\":\"#__modules\"}', '2025-01-28 20:19:29', 'com_checkin', 974, 974, 'COM_ACTIONLOGS_DISABLED'),
(31, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"11\",\"title\":\"Cassiopeia - Default\",\"extension_name\":\"Cassiopeia - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=11\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-28 20:21:04', 'com_templates.style', 974, 11, 'COM_ACTIONLOGS_DISABLED'),
(32, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2025-01-28 21:46:03', 'com_users', 974, 0, 'COM_ACTIONLOGS_DISABLED'),
(33, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2025-01-29 16:20:00', 'com_users', 974, 0, 'COM_ACTIONLOGS_DISABLED'),
(34, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2025-01-29 16:20:13', 'com_users', 974, 0, 'COM_ACTIONLOGS_DISABLED'),
(35, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2025-01-29 22:24:35', 'com_users', 974, 0, 'COM_ACTIONLOGS_DISABLED'),
(36, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2025-01-29 22:24:37', 'com_users', 974, 0, 'COM_ACTIONLOGS_DISABLED'),
(37, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"Stockflow\",\"extension_name\":\"Stockflow\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-29 22:28:16', 'com_modules.module', 974, 1, 'COM_ACTIONLOGS_DISABLED'),
(38, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2025-01-29 22:28:41', 'com_users', 974, 0, 'COM_ACTIONLOGS_DISABLED'),
(39, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"Home-StockFlow\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-29 22:31:06', 'com_content.article', 974, 2, 'COM_ACTIONLOGS_DISABLED'),
(40, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":974,\"title\":\"gabi\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"table\":\"#__content\"}', '2025-01-29 22:31:17', 'com_checkin', 974, 974, 'COM_ACTIONLOGS_DISABLED'),
(41, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_TRASHED', '{\"action\":\"trash\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":2,\"title\":\"Home-StockFlow\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-29 22:31:42', 'com_content.article', 974, 2, 'COM_ACTIONLOGS_DISABLED'),
(42, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_TRASHED', '{\"action\":\"trash\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"Home\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-29 22:31:42', 'com_content.article', 974, 1, 'COM_ACTIONLOGS_DISABLED'),
(43, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":974,\"title\":\"gabi\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"table\":\"#__modules\"}', '2025-01-29 22:33:39', 'com_checkin', 974, 974, 'COM_ACTIONLOGS_DISABLED'),
(44, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_TRASHED', '{\"action\":\"trash\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":17,\"title\":\"Stockflow\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=17\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-29 22:33:39', 'com_modules.module', 974, 17, 'COM_ACTIONLOGS_DISABLED'),
(45, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"Stockflow\",\"extension_name\":\"Stockflow\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-29 22:34:01', 'com_modules.module', 974, 1, 'COM_ACTIONLOGS_DISABLED'),
(46, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":974,\"title\":\"gabi\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"table\":\"#__modules\"}', '2025-01-29 22:34:01', 'com_checkin', 974, 974, 'COM_ACTIONLOGS_DISABLED'),
(47, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":974,\"title\":\"gabi\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"table\":\"#__modules\"}', '2025-01-29 22:34:07', 'com_checkin', 974, 974, 'COM_ACTIONLOGS_DISABLED'),
(48, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":\"2\",\"title\":\"Home\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=2\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-29 22:34:41', 'com_categories.category', 974, 2, 'COM_ACTIONLOGS_DISABLED'),
(49, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":974,\"title\":\"gabi\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"table\":\"#__categories\"}', '2025-01-29 22:34:41', 'com_checkin', 974, 974, 'COM_ACTIONLOGS_DISABLED'),
(50, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":\"2\",\"title\":\"Home\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=2\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-29 22:34:50', 'com_categories.category', 974, 2, 'COM_ACTIONLOGS_DISABLED'),
(51, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":974,\"title\":\"gabi\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"table\":\"#__categories\"}', '2025-01-29 22:34:50', 'com_checkin', 974, 974, 'COM_ACTIONLOGS_DISABLED'),
(52, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":974,\"title\":\"gabi\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"table\":\"#__categories\"}', '2025-01-29 22:34:51', 'com_checkin', 974, 974, 'COM_ACTIONLOGS_DISABLED'),
(53, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Home\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-29 22:35:37', 'com_menus.item', 974, 101, 'COM_ACTIONLOGS_DISABLED'),
(54, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":974,\"title\":\"gabi\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"table\":\"#__menu\"}', '2025-01-29 22:35:37', 'com_checkin', 974, 974, 'COM_ACTIONLOGS_DISABLED'),
(55, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"3\",\"title\":\"Stockflow\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=3\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-29 22:38:03', 'com_content.article', 974, 3, 'COM_ACTIONLOGS_DISABLED'),
(56, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":974,\"title\":\"gabi\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"table\":\"#__menu\"}', '2025-01-29 22:40:04', 'com_checkin', 974, 974, 'COM_ACTIONLOGS_DISABLED'),
(57, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":974,\"title\":\"gabi\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"table\":\"#__menu\"}', '2025-01-29 22:40:42', 'com_checkin', 974, 974, 'COM_ACTIONLOGS_DISABLED'),
(58, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":\"102\",\"title\":\"Stockflow\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=102\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-29 22:41:35', 'com_menus.item', 974, 102, 'COM_ACTIONLOGS_DISABLED'),
(59, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"3\",\"title\":\"Stockflow\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=3\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-29 22:54:27', 'com_content.article', 974, 3, 'COM_ACTIONLOGS_DISABLED'),
(60, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":974,\"title\":\"gabi\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"table\":\"#__content\"}', '2025-01-29 22:54:27', 'com_checkin', 974, 974, 'COM_ACTIONLOGS_DISABLED'),
(61, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"3\",\"title\":\"Stockflow\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=3\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-29 22:55:19', 'com_content.article', 974, 3, 'COM_ACTIONLOGS_DISABLED'),
(62, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":974,\"title\":\"gabi\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"table\":\"#__content\"}', '2025-01-29 22:55:19', 'com_checkin', 974, 974, 'COM_ACTIONLOGS_DISABLED'),
(63, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":974,\"title\":\"gabi\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"table\":\"#__menu\"}', '2025-01-29 22:55:40', 'com_checkin', 974, 974, 'COM_ACTIONLOGS_DISABLED'),
(64, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_TRASHED', '{\"action\":\"trash\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Home\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\"}', '2025-01-29 22:55:40', 'com_menus.item', 974, 101, 'COM_ACTIONLOGS_DISABLED'),
(65, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":974,\"title\":\"gabi\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"userid\":974,\"username\":\"gabi\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=974\",\"table\":\"#__menu\"}', '2025-01-29 22:57:55', 'com_checkin', 974, 974, 'COM_ACTIONLOGS_DISABLED');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_action_logs_extensions`
--

CREATE TABLE `oh67l_action_logs_extensions` (
  `id` int UNSIGNED NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_action_logs_extensions`
--

INSERT INTO `oh67l_action_logs_extensions` (`id`, `extension`) VALUES
(1, 'com_banners'),
(2, 'com_cache'),
(3, 'com_categories'),
(4, 'com_config'),
(5, 'com_contact'),
(6, 'com_content'),
(7, 'com_installer'),
(8, 'com_media'),
(9, 'com_menus'),
(10, 'com_messages'),
(11, 'com_modules'),
(12, 'com_newsfeeds'),
(13, 'com_plugins'),
(14, 'com_redirect'),
(15, 'com_tags'),
(16, 'com_templates'),
(17, 'com_users'),
(18, 'com_checkin'),
(19, 'com_scheduler'),
(20, 'com_fields'),
(21, 'com_guidedtours');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_action_logs_users`
--

CREATE TABLE `oh67l_action_logs_users` (
  `user_id` int UNSIGNED NOT NULL,
  `notify` tinyint UNSIGNED NOT NULL,
  `extensions` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_action_log_config`
--

CREATE TABLE `oh67l_action_log_config` (
  `id` int UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `id_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_holder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_prefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_action_log_config`
--

INSERT INTO `oh67l_action_log_config` (`id`, `type_title`, `type_alias`, `id_holder`, `title_holder`, `table_name`, `text_prefix`) VALUES
(1, 'article', 'com_content.article', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(2, 'article', 'com_content.form', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(3, 'banner', 'com_banners.banner', 'id', 'name', '#__banners', 'PLG_ACTIONLOG_JOOMLA'),
(4, 'user_note', 'com_users.note', 'id', 'subject', '#__user_notes', 'PLG_ACTIONLOG_JOOMLA'),
(5, 'media', 'com_media.file', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(6, 'category', 'com_categories.category', 'id', 'title', '#__categories', 'PLG_ACTIONLOG_JOOMLA'),
(7, 'menu', 'com_menus.menu', 'id', 'title', '#__menu_types', 'PLG_ACTIONLOG_JOOMLA'),
(8, 'menu_item', 'com_menus.item', 'id', 'title', '#__menu', 'PLG_ACTIONLOG_JOOMLA'),
(9, 'newsfeed', 'com_newsfeeds.newsfeed', 'id', 'name', '#__newsfeeds', 'PLG_ACTIONLOG_JOOMLA'),
(10, 'link', 'com_redirect.link', 'id', 'old_url', '#__redirect_links', 'PLG_ACTIONLOG_JOOMLA'),
(11, 'tag', 'com_tags.tag', 'id', 'title', '#__tags', 'PLG_ACTIONLOG_JOOMLA'),
(12, 'style', 'com_templates.style', 'id', 'title', '#__template_styles', 'PLG_ACTIONLOG_JOOMLA'),
(13, 'plugin', 'com_plugins.plugin', 'extension_id', 'name', '#__extensions', 'PLG_ACTIONLOG_JOOMLA'),
(14, 'component_config', 'com_config.component', 'extension_id', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(15, 'contact', 'com_contact.contact', 'id', 'name', '#__contact_details', 'PLG_ACTIONLOG_JOOMLA'),
(16, 'module', 'com_modules.module', 'id', 'title', '#__modules', 'PLG_ACTIONLOG_JOOMLA'),
(17, 'access_level', 'com_users.level', 'id', 'title', '#__viewlevels', 'PLG_ACTIONLOG_JOOMLA'),
(18, 'banner_client', 'com_banners.client', 'id', 'name', '#__banner_clients', 'PLG_ACTIONLOG_JOOMLA'),
(19, 'application_config', 'com_config.application', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(20, 'task', 'com_scheduler.task', 'id', 'title', '#__scheduler_tasks', 'PLG_ACTIONLOG_JOOMLA'),
(21, 'field', 'com_fields.field', 'id', 'title', '#__fields', 'PLG_ACTIONLOG_JOOMLA'),
(22, 'guidedtour', 'com_guidedtours.state', 'id', 'title', '#__guidedtours', 'PLG_ACTIONLOG_JOOMLA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_assets`
--

CREATE TABLE `oh67l_assets` (
  `id` int UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_assets`
--

INSERT INTO `oh67l_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 189, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.api\":{\"8\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 44, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.execute.transition\":{\"6\":1,\"5\":1}}'),
(9, 1, 45, 46, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 47, 48, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 49, 52, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 11, 50, 51, 2, 'com_languages.language.1', 'English (en-GB)', '{}'),
(13, 1, 53, 54, 1, 'com_login', 'com_login', '{}'),
(14, 1, 55, 56, 1, 'com_mails', 'com_mails', '{}'),
(15, 1, 57, 58, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 59, 62, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 63, 64, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 65, 138, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 139, 142, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 143, 144, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 145, 146, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(23, 1, 147, 148, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 153, 156, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 157, 158, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 25, 2, 'com_content.category.2', 'Home', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 140, 141, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 154, 155, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 159, 160, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 161, 162, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 163, 164, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 165, 166, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 167, 168, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 169, 170, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 66, 67, 2, 'com_modules.module.1', 'Stockflow', '{}'),
(40, 18, 68, 69, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 70, 71, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 72, 73, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 74, 75, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 76, 77, 2, 'com_modules.module.9', 'Notifications', '{}'),
(45, 18, 78, 79, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 80, 81, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(49, 18, 86, 87, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 88, 89, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 90, 91, 2, 'com_modules.module.17', 'Stockflow', '{}'),
(52, 18, 92, 93, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 96, 97, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 60, 61, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 18, 100, 101, 2, 'com_modules.module.87', 'Sample Data', '{}'),
(56, 8, 26, 43, 2, 'com_content.workflow.1', 'COM_WORKFLOW_BASIC_WORKFLOW', '{}'),
(57, 56, 27, 28, 3, 'com_content.stage.1', 'COM_WORKFLOW_BASIC_STAGE', '{}'),
(58, 56, 29, 30, 3, 'com_content.transition.1', 'UNPUBLISH', '{}'),
(59, 56, 31, 32, 3, 'com_content.transition.2', 'PUBLISH', '{}'),
(60, 56, 33, 34, 3, 'com_content.transition.3', 'TRASH', '{}'),
(61, 56, 35, 36, 3, 'com_content.transition.4', 'ARCHIVE', '{}'),
(62, 56, 37, 38, 3, 'com_content.transition.5', 'FEATURE', '{}'),
(63, 56, 39, 40, 3, 'com_content.transition.6', 'UNFEATURE', '{}'),
(64, 56, 41, 42, 3, 'com_content.transition.7', 'PUBLISH_AND_FEATURE', '{}'),
(65, 1, 149, 150, 1, 'com_privacy', 'com_privacy', '{}'),
(66, 1, 151, 152, 1, 'com_actionlogs', 'com_actionlogs', '{}'),
(67, 18, 82, 83, 2, 'com_modules.module.88', 'Latest Actions', '{}'),
(68, 18, 84, 85, 2, 'com_modules.module.89', 'Privacy Dashboard', '{}'),
(70, 18, 94, 95, 2, 'com_modules.module.103', 'Site', '{}'),
(71, 18, 98, 99, 2, 'com_modules.module.104', 'System', '{}'),
(72, 18, 102, 103, 2, 'com_modules.module.91', 'System Dashboard', '{}'),
(73, 18, 104, 105, 2, 'com_modules.module.92', 'Content Dashboard', '{}'),
(74, 18, 106, 107, 2, 'com_modules.module.93', 'Menus Dashboard', '{}'),
(75, 18, 108, 109, 2, 'com_modules.module.94', 'Components Dashboard', '{}'),
(76, 18, 110, 111, 2, 'com_modules.module.95', 'Users Dashboard', '{}'),
(77, 18, 112, 113, 2, 'com_modules.module.99', 'Frontend Link', '{}'),
(78, 18, 114, 115, 2, 'com_modules.module.100', 'Messages', '{}'),
(79, 18, 116, 117, 2, 'com_modules.module.101', 'Post Install Messages', '{}'),
(80, 18, 118, 119, 2, 'com_modules.module.102', 'User Status', '{}'),
(82, 18, 120, 121, 2, 'com_modules.module.105', '3rd Party', '{}'),
(83, 18, 122, 123, 2, 'com_modules.module.106', 'Help Dashboard', '{}'),
(84, 18, 124, 125, 2, 'com_modules.module.107', 'Privacy Requests', '{}'),
(85, 18, 126, 127, 2, 'com_modules.module.108', 'Privacy Status', '{}'),
(86, 18, 128, 129, 2, 'com_modules.module.96', 'Popular Articles', '{}'),
(87, 18, 130, 131, 2, 'com_modules.module.97', 'Recently Added Articles', '{}'),
(88, 18, 132, 133, 2, 'com_modules.module.98', 'Logged-in Users', '{}'),
(89, 18, 134, 135, 2, 'com_modules.module.90', 'Login Support', '{}'),
(90, 1, 171, 172, 1, 'com_scheduler', 'com_scheduler', '{}'),
(91, 1, 173, 174, 1, 'com_associations', 'com_associations', '{}'),
(92, 1, 175, 176, 1, 'com_categories', 'com_categories', '{}'),
(93, 1, 177, 178, 1, 'com_fields', 'com_fields', '{}'),
(94, 1, 179, 180, 1, 'com_workflow', 'com_workflow', '{}'),
(95, 1, 181, 182, 1, 'com_guidedtours', 'com_guidedtours', '{}'),
(96, 18, 136, 137, 2, 'com_modules.module.109', 'Guided Tours', '{}'),
(97, 1, 183, 184, 1, 'com_scheduler.task.1', 'com_scheduler.task.1', '{}'),
(98, 1, 185, 186, 1, 'com_scheduler.task.2', 'com_scheduler.task.2', '{}'),
(99, 1, 187, 188, 1, 'com_scheduler.task.3', 'com_scheduler.task.3', '{}'),
(100, 27, 19, 20, 3, 'com_content.article.1', 'Home', '{}'),
(101, 27, 21, 22, 3, 'com_content.article.2', 'Home-StockFlow', '{}'),
(102, 27, 23, 24, 3, 'com_content.article.3', 'Stockflow', '{}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_associations`
--

CREATE TABLE `oh67l_associations` (
  `id` int NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_banners`
--

CREATE TABLE `oh67l_banners` (
  `id` int NOT NULL,
  `cid` int NOT NULL DEFAULT '0',
  `type` int NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int NOT NULL DEFAULT '0',
  `impmade` int NOT NULL DEFAULT '0',
  `clicks` int NOT NULL DEFAULT '0',
  `clickurl` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint NOT NULL DEFAULT '0',
  `catid` int UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint NOT NULL DEFAULT '-1',
  `track_clicks` tinyint NOT NULL DEFAULT '-1',
  `track_impressions` tinyint NOT NULL DEFAULT '-1',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `reset` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int UNSIGNED NOT NULL DEFAULT '0',
  `version` int UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_banner_clients`
--

CREATE TABLE `oh67l_banner_clients` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `own_prefix` tinyint NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint NOT NULL DEFAULT '-1',
  `track_clicks` tinyint NOT NULL DEFAULT '-1',
  `track_impressions` tinyint NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_banner_tracks`
--

CREATE TABLE `oh67l_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int UNSIGNED NOT NULL,
  `banner_id` int UNSIGNED NOT NULL,
  `count` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_categories`
--

CREATE TABLE `oh67l_categories` (
  `id` int NOT NULL,
  `asset_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0',
  `lft` int NOT NULL DEFAULT '0',
  `rgt` int NOT NULL DEFAULT '0',
  `level` int UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `published` tinyint NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL,
  `modified_user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `hits` int UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_categories`
--

INSERT INTO `oh67l_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, NULL, NULL, 1, '{}', '', '', '{}', 974, '2025-01-28 19:24:01', 974, '2025-01-28 19:24:01', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'home', 'com_content', 'Home', 'home', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 974, '2025-01-28 19:24:01', 974, '2025-01-29 22:34:50', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 974, '2025-01-28 19:24:01', 974, '2025-01-28 19:24:01', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 974, '2025-01-28 19:24:01', 974, '2025-01-28 19:24:01', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 974, '2025-01-28 19:24:01', 974, '2025-01-28 19:24:01', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 974, '2025-01-28 19:24:01', 974, '2025-01-28 19:24:01', 0, '*', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_contact_details`
--

CREATE TABLE `oh67l_contact_details` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `catid` int NOT NULL DEFAULT '0',
  `access` int UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `version` int UNSIGNED NOT NULL DEFAULT '1',
  `hits` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_content`
--

CREATE TABLE `oh67l_content` (
  `id` int UNSIGNED NOT NULL,
  `asset_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `catid` int UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int UNSIGNED NOT NULL DEFAULT '0',
  `hits` int UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_content`
--

INSERT INTO `oh67l_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `note`) VALUES
(1, 100, 'Home', 'home', '<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-12 col-lg-2 fonsBlauFosc justify-content-center flex-column px-0\">\r\n<div class=\"d-flex align-items-center justify-content-between\">\r\n<div class=\"foto align-items-center justify-content-center\"><img class=\"float-none\" src=\"images/logo_footer2.png#joomlaImage://local-images/logo_footer2.png?width=200&amp;height=110\" width=\"200\" height=\"110\"></div>\r\n<!-- hamburguesita --> <button class=\"btn  d-lg-none text-end fs-1 shadow davant\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#menuNav\" aria-expanded=\"false\" aria-controls=\"menuNav\"> </button></div>\r\n<div id=\"menuNav\" class=\"collapse d-lg-block position-relative davant\"><nav class=\"nav flex-column\"><a class=\"nav-link  py-3 border-top px-1 noPointer\" href=\"#\"> Administració </a> <a class=\"nav-link  py-2 fonsBlauClar border-top border-bottom hvb\" href=\"#\">Usuaris</a> <a class=\"nav-link  py-2 fonsBlauClar border-bottom hvb\" href=\"#\">Rols</a> <a class=\"nav-link  py-2 fonsBlauClar border-bottom hvb\" href=\"#\">Dades geogràfiques</a> <a class=\"nav-link  py-2 fonsGrisDif border-bottom actiu px-0\" href=\"#\"> Transportistes</a> <a class=\"nav-link  py-3 border-top border-bottom px-1 noPointer\" href=\"#\"> Envíament </a> <a class=\"nav-link  py-2 fonsBlauClar border-top border-bottom hvb\" href=\"#\">Clients</a> <a class=\"nav-link  py-2 fonsBlauClar border-bottom hvb\" href=\"#\">Ordres d\'enviament <span class=\"bg-danger rounded-5 px-3  num\">9</span></a> <a class=\"nav-link  py-3 border-top border-bottom px-1 noPointer\" href=\"#\"> Recepció </a> <a class=\"nav-link  py-2 fonsBlauClar border-top border-bottom hvb\" href=\"#\">Proveïdors</a> <a class=\"nav-link  py-2 fonsBlauClar border-bottom hvb\" href=\"#\">Estats Ordres</a> <a class=\"nav-link  py-2 fonsBlauClar border-bottom hvb\" href=\"#\">Estats Línia</a> <a class=\"nav-link  py-2 fonsBlauClar border-bottom hvb\" href=\"#\">Productes</a> <a class=\"nav-link  py-2 fonsBlauClar border-bottom hvb\" href=\"#\">Lots</a> <a class=\"nav-link  py-3 border-top border-bottom px-1 noPointer\" href=\"#\"> Magatzem </a> <a class=\"nav-link  py-1 fonsBlauClar border-top border-bottom hvb\" href=\"#\">Gestió de magatzem</a> <a class=\"nav-link  py-2 fonsBlauClar border-bottom hvb\" href=\"#\">Invertaris</a> <a class=\"nav-link  py-2 fonsBlauClar border-bottom hvb\" href=\"#\">Incidències</a> <a class=\"nav-link  py-2 fonsBlauClar border-bottom hvb\" href=\"#\">Moviments</a> <a class=\"nav-link  py-2 bg-danger border-bottom hvb\" href=\"#\"> Tancar </a></nav></div>\r\n</div>\r\n<!--títol-->\r\n<div class=\"col-12 col-lg-10 p-0\">\r\n<div class=\"fonsTaronja\">\r\n<h1 class=\"text-center  py-4 m-0 fs-4 fw-bolder\">Llistat de Transportistes</h1>\r\n</div>\r\n<!--filtres-->\r\n<div class=\"container-fluid fonsGris\">\r\n<div class=\"row p-2\">\r\n<div class=\"col-12 col-md-6 col-xl-4 p-2\"><label class=\"form-label\">Nom</label> <input class=\"form-control\" type=\"text\"></div>\r\n<div class=\"col-12 col-md-6 col-xl-4 p-2\"><label class=\"form-label\">DNI/NIF</label> <input class=\"form-control\" type=\"text\"></div>\r\n<div class=\"col-12 col-md-6 col-xl-4 p-2\"><label class=\"form-label\">Telèfon</label> <input class=\"form-control\" type=\"text\"></div>\r\n<div class=\"col-12 col-md-6 col-xl-4 p-2\"><label class=\"form-label\">Correu</label> <input class=\"form-control\" type=\"text\"></div>\r\n<!--boto-->\r\n<div class=\"container-button-filter py-2 text-end\"><button class=\" btn btn-secondary\"> Netejar</button> <button class=\" btn aplicar\"> Filtrar </button></div>\r\n</div>\r\n</div>\r\n<div class=\"container-fluid\">\r\n<div class=\"row rounded-4\">\r\n<div class=\"col-12 pt-3\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row fonsGrisDif rounded-2\">\r\n<div class=\"col-6 py-2\">\r\n<div class=\"input-group border rounded-2 select\">\r\n<div class=\"form-floating rounded-2\"><select class=\"form-select\">\r\n<option selected=\"selected\">Tria una opció</option>\r\n<option>Esborrar</option>\r\n</select><label class=\"text-muted\">Accions en lot</label></div>\r\n<button class=\"btn  aplicar\" type=\"button\"> Aplicar </button></div>\r\n</div>\r\n<div class=\"col-6 py-2 text-end\"><button class=\"btn  bg-black py-3 border\" type=\"button\"> Crear </button></div>\r\n</div>\r\n<!--taula-->\r\n<div class=\"row\">\r\n<div class=\"col-12 p-0\">\r\n<div class=\"table-responsive blau\">\r\n<table class=\"table table-striped align-middle text-center taulaGestio\">\r\n<thead>\r\n<tr>\r\n<th class=\"text-center\"><input type=\"checkbox\"></th>\r\n<th>ID</th>\r\n<th>Nom</th>\r\n<th>DNI/NIF</th>\r\n<th>Telèfon</th>\r\n<th>Correu</th>\r\n<th>Accions</th>\r\n</tr>\r\n</thead>\r\n<tbody id=\"files\">\r\n<tr class=\"blau\">\r\n<td class=\"text-center\" data-no-colon=\"true\"><input type=\"checkbox\"></td>\r\n<td data-cell=\"ID\">1001</td>\r\n<td data-cell=\"Nom\">DHL</td>\r\n<td data-cell=\"DNI/NIF\">68458699G</td>\r\n<td data-cell=\"Telèfon\">639639639</td>\r\n<td data-cell=\"Correu\">carlos2@dhl.com</td>\r\n<td data-no-colon=\"true\"> </td>\r\n</tr>\r\n<tr class=\"blau\">\r\n<td class=\"text-center\" data-no-colon=\"true\"><input type=\"checkbox\"></td>\r\n<td data-cell=\"ID\">1002</td>\r\n<td data-cell=\"Nom\">DHL</td>\r\n<td data-cell=\"DNI/NIF\">68458699G</td>\r\n<td data-cell=\"Telèfon\">639639639</td>\r\n<td data-cell=\"Correu\">carlos2@dhl.com</td>\r\n<td data-no-colon=\"true\"> </td>\r\n</tr>\r\n<tr class=\"blau\">\r\n<td class=\"text-center\" data-no-colon=\"true\"><input type=\"checkbox\"></td>\r\n<td data-cell=\"ID\">1003</td>\r\n<td data-cell=\"Nom\">DHL</td>\r\n<td data-cell=\"DNI/NIF\">68458699G</td>\r\n<td data-cell=\"Telèfon\">639639639</td>\r\n<td data-cell=\"Correu\">carlos2@dhl.com</td>\r\n<td data-no-colon=\"true\"> </td>\r\n</tr>\r\n<tr class=\"blau\">\r\n<td class=\"text-center\" data-no-colon=\"true\"><input type=\"checkbox\"></td>\r\n<td data-cell=\"ID\">1004</td>\r\n<td data-cell=\"Nom\">DHL</td>\r\n<td data-cell=\"DNI/NIF\">68458699G</td>\r\n<td data-cell=\"Telèfon\">639639639</td>\r\n<td data-cell=\"Correu\">carlos2@dhl.com</td>\r\n<td data-no-colon=\"true\"> </td>\r\n</tr>\r\n<tr class=\"blau\">\r\n<td class=\"text-center\" data-no-colon=\"true\"><input type=\"checkbox\"></td>\r\n<td data-cell=\"ID\">1005</td>\r\n<td data-cell=\"Nom\">DHL</td>\r\n<td data-cell=\"DNI/NIF\">68458699G</td>\r\n<td data-cell=\"Telèfon\">639639639</td>\r\n<td data-cell=\"Correu\">carlos2@dhl.com</td>\r\n<td data-no-colon=\"true\"> </td>\r\n</tr>\r\n<tr class=\"blau\">\r\n<td class=\"text-center\" data-no-colon=\"true\"><input type=\"checkbox\"></td>\r\n<td data-cell=\"ID\">1007</td>\r\n<td data-cell=\"Nom\">DHL</td>\r\n<td data-cell=\"DNI/NIF\">68458699G</td>\r\n<td data-cell=\"Telèfon\">639639639</td>\r\n<td data-cell=\"Correu\">carlos2@dhl.com</td>\r\n<td data-no-colon=\"true\"> </td>\r\n</tr>\r\n<tr class=\"blau\">\r\n<td class=\"text-center\" data-no-colon=\"true\"><input type=\"checkbox\"></td>\r\n<td data-cell=\"ID\">1008</td>\r\n<td data-cell=\"Nom\">DHL</td>\r\n<td data-cell=\"DNI/NIF\">68458699G</td>\r\n<td data-cell=\"Telèfon\">639639639</td>\r\n<td data-cell=\"Correu\">carlos2@dhl.com</td>\r\n<td data-no-colon=\"true\"> </td>\r\n</tr>\r\n<tr class=\"blau\">\r\n<td class=\"text-center\" data-no-colon=\"true\"><input type=\"checkbox\"></td>\r\n<td data-cell=\"ID\">1009</td>\r\n<td data-cell=\"Nom\">DHL</td>\r\n<td data-cell=\"DNI/NIF\">68458699G</td>\r\n<td data-cell=\"Telèfon\">639639639</td>\r\n<td data-cell=\"Correu\">carlos2@dhl.com</td>\r\n<td data-no-colon=\"true\"> </td>\r\n</tr>\r\n<tr class=\"blau\">\r\n<td class=\"text-center\" data-no-colon=\"true\"><input type=\"checkbox\"></td>\r\n<td data-cell=\"ID\">1010</td>\r\n<td data-cell=\"Nom\">DHL</td>\r\n<td data-cell=\"DNI/NIF\">68458699G</td>\r\n<td data-cell=\"Telèfon\">639639639</td>\r\n<td data-cell=\"Correu\">carlos2@dhl.com</td>\r\n<td data-no-colon=\"true\"> </td>\r\n</tr>\r\n<tr class=\"blau\">\r\n<td class=\"text-center\" data-no-colon=\"true\"><input type=\"checkbox\"></td>\r\n<td data-cell=\"ID\">1011</td>\r\n<td data-cell=\"Nom\">DHL</td>\r\n<td data-cell=\"DNI/NIF\">68458699G</td>\r\n<td data-cell=\"Telèfon\">639639639</td>\r\n<td data-cell=\"Correu\">carlos2@dhl.com</td>\r\n<td data-no-colon=\"true\"> </td>\r\n</tr>\r\n<tr class=\"blau\">\r\n<td class=\"text-center\" data-no-colon=\"true\"><input type=\"checkbox\"></td>\r\n<td data-cell=\"ID\">1012</td>\r\n<td data-cell=\"Nom\">DHL</td>\r\n<td data-cell=\"DNI/NIF\">68458699G</td>\r\n<td data-cell=\"Telèfon\">639639639</td>\r\n<td data-cell=\"Correu\">carlos2@dhl.com</td>\r\n<td data-no-colon=\"true\"> </td>\r\n</tr>\r\n<tr class=\"blau\">\r\n<td class=\"text-center\" data-no-colon=\"true\"><input type=\"checkbox\"></td>\r\n<td data-cell=\"ID\">1013</td>\r\n<td data-cell=\"Nom\">DHL</td>\r\n<td data-cell=\"DNI/NIF\">68458699G</td>\r\n<td data-cell=\"Telèfon\">639639639</td>\r\n<td data-cell=\"Correu\">carlos2@dhl.com</td>\r\n<td data-no-colon=\"true\"> </td>\r\n</tr>\r\n<tr class=\"blau\">\r\n<td class=\"text-center\" data-no-colon=\"true\"><input type=\"checkbox\"></td>\r\n<td data-cell=\"ID\">1014</td>\r\n<td data-cell=\"Nom\">DHL</td>\r\n<td data-cell=\"DNI/NIF\">68458699G</td>\r\n<td data-cell=\"Telèfon\">639639639</td>\r\n<td data-cell=\"Correu\">carlos2@dhl.com</td>\r\n<td data-no-colon=\"true\"> </td>\r\n</tr>\r\n<tr class=\"blau\">\r\n<td class=\"text-center\" data-no-colon=\"true\"><input type=\"checkbox\"></td>\r\n<td data-cell=\"ID\">1015</td>\r\n<td data-cell=\"Nom\">DHL</td>\r\n<td data-cell=\"DNI/NIF\">68458699G</td>\r\n<td data-cell=\"Telèfon\">639639639</td>\r\n<td data-cell=\"Correu\">carlos2@dhl.com</td>\r\n<td data-no-colon=\"true\"> </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!--paginetes--><nav>\r\n<ul class=\"pagination justify-content-center\">\r\n<li class=\"page-item\"><a class=\"page-link\" href=\"#\"> <span aria-hidden=\"true\">«</span> </a></li>\r\n<li class=\"page-item active\" aria-current=\"page\"><a class=\"page-link\" href=\"#\">1</a></li>\r\n<li class=\"page-item\"><a class=\"page-link\" href=\"#\">2</a></li>\r\n<li class=\"page-item\"><a class=\"page-link\" href=\"#\">3</a></li>\r\n<li class=\"page-item\"><a class=\"page-link\" href=\"#\"> <span aria-hidden=\"true\">»</span> </a></li>\r\n</ul>\r\n</nav></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!--no tocar-->', '', -2, 2, '2025-01-28 19:52:41', 974, '', '2025-01-28 20:04:37', 974, 974, '2025-01-28 20:05:52', '2025-01-28 19:52:41', NULL, '{\"image_intro\":\"images\\/logo_footer2.png#joomlaImage:\\/\\/local-images\\/logo_footer2.png?width=200&height=110\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 5, 1, '', '', 1, 11, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}', 0, '*', ''),
(2, 101, 'Home-StockFlow', 'home-stockflow', '<p> </p>\r\n<!--menu |\\\\|-->\r\n<div class=\"container-fluid fonsGris position-fixed\">\r\n<div class=\"row\">\r\n<div class=\"col-12 align-items-center\"><nav class=\"navbar navbar-expand-lg\">\r\n<div class=\"container-fluid py-1\">\r\n<div class=\"ps-2\"><img class=\"logo-header\" src=\"img/logo_header.png\"></div>\r\n<div class=\"p-3 d-flex align-items-center\"> </div>\r\n<button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\"> </button>\r\n<div id=\"navbarSupportedContent\" class=\"collapse navbar-collapse\">\r\n<ul class=\"navbar-nav ms-lg-auto mb-2 mb-lg-0\">\r\n<li class=\"nav-item dropdown\"><a class=\"nav-link dropdown-toggle btn-header\" role=\"button\" href=\"#\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\"> PRODUCTO </a>\r\n<ul class=\"dropdown-menu bg-white\">\r\n<li><a class=\"dropdown-item btn-header\" href=\"#\">DESCARGA DE PRODUCTO</a></li>\r\n<li><a class=\"dropdown-item btn-header\" href=\"#\">PLANES Y PRECIOS</a></li>\r\n</ul>\r\n</li>\r\n<li class=\"nav-item\"><a class=\"nav-link btn-header\" href=\"#\">CASOS DE ÉXITO</a></li>\r\n<li class=\"nav-item\"><a class=\"nav-link btn-header border-end border-black\" href=\"#\">RESEÑAS</a></li>\r\n<li class=\"nav-item\"><a class=\"nav-link btn-header\">QUIÉNES SOMOS</a></li>\r\n<li class=\"nav-item\"><a class=\"nav-link btn-header\">BLOG</a></li>\r\n<li class=\"nav-item\"><a class=\"nav-link btn-header\">CONTACTO</a></li>\r\n<li class=\"nav-item ps-2\"><button class=\"btn btn-taronja border-black text-white rounded-2\" type=\"submit\">DEMO</button></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</nav></div>\r\n</div>\r\n</div>\r\n<!--software de gestión |\\\\|-->\r\n<div class=\"container-lg-fluid container-xl pt-5 justify-content-center\">\r\n<div class=\"row rounded-3\">\r\n<div class=\"col-lg-1\"> </div>\r\n<div class=\"col-lg-10\">\r\n<div class=\"container-fluid marginMenu\">\r\n<div class=\"row\">\r\n<div class=\"col-12 col-md-6 fonsGris rounded-start-4 p-4 pe-3\">\r\n<h1 class=\"w-75 titul fw-bolder ps-3 pt-1\">Software de Gestión de Almacenes</h1>\r\n<h3 class=\"fw-bolder ps-3 pt-1 m-0\">(SGA / WMS)</h3>\r\n<p class=\"lh-lg ps-3\">Nuestra aplicación está diseñada para simplificar la recepción, almacenamiento y envío de productos, eliminando el caos y permitiendo un control total de tu inventario desde cualquier lugar. Aumenta la productividad de tu equipo con una solución moderna, intuitiva y accesible desde cualquier dispositivo.</p>\r\n<div class=\"d-grid d-lg-block gap-2 mx-auto\"><button class=\"btn btn-taronja text-white border-black px-5\">Solicitar DEMO</button> <button class=\"btn btn-blau text-white border-white py-2 px-4\">Precios y planes &gt;</button></div>\r\n</div>\r\n<div class=\"col-12 col-md-6 fonsGris rounded-end-3 pt-5 pe-1\"><img class=\"img-fluid\" src=\"img/1_inicio.png\" alt=\"Gestión de Almacenes\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-1 p-0\"> </div>\r\n</div>\r\n</div>\r\n<!--caixes |\\\\|-->\r\n<div class=\"container-lg-fluid container-xl py-4\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-1\"> </div>\r\n<div class=\"col-lg-10 col-xs-12\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-3 col-sm-6 p-3 text-center\">\r\n<div class=\"border fonsGris rounded-4 pt-4 h-100\">\r\n<h4 class=\"fs-6 fw-bolder m-0\">GESTIÓN INTERGRAL DE INVENTARIOS</h4>\r\n<p class=\"m-0 pb-2\">-----------------------------------</p>\r\n<p class=\"lh-sm px-3\">Controla cada detalle de tus productos: desde la recepción hasta el envío, con un seguimiento en tiempo real y alertas de stock bajo.</p>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-3 col-sm-6 p-3 text-center\">\r\n<div class=\"border fonsGris rounded-4 pt-4 px-2 h-100\">\r\n<h4 class=\"fs-6 fw-bolder m-0\">INTERFAZ ADAPTABLE Y FÁCIL DE USAR</h4>\r\n<p class=\"m-0 pb-2\">-----------------------------------</p>\r\n<p class=\"lh-sm\">Accede a toda la información que necesitas con una interfaz moderna, intuitiva y optimizada para dispositivos móviles y laptops.</p>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-3 col-sm-6 p-3 text-center\">\r\n<div class=\"border fonsGris rounded-4 pt-4 px-2 h-100\">\r\n<h4 class=\"fs-6 fw-bolder m-0 px-2\">AUTOMATIZACIÓN DE PROCESOS</h4>\r\n<p class=\"m-0 pb-2\">-----------------------------------</p>\r\n<p class=\"lh-sm\">Simplifica las tareas diarias con flujos de trabajo automatizados que reducen el tiempo de administración y minimizan errores humanos.</p>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-3 col-sm-6 p-3 text-center\">\r\n<div class=\"border fonsGris rounded-4 pt-4 px-2  h-100\">\r\n<h4 class=\"fs-6 fw-bolder m-0\">ANÁLISIS Y REPORTES AVANZADOS</h4>\r\n<p class=\"m-0 pb-2\">-----------------------------------</p>\r\n<p class=\"lh-sm\">Obtén informes detallados sobre la rotación de productos, el rendimiento del almacén y el cumplimiento de pedidos, facilitando la toma de decisiones estratégicas.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-1\"> </div>\r\n</div>\r\n</div>\r\n</div>\r\n<!--beneficios |\\\\|-->\r\n<div class=\"container-lg-fluid container-xl pt-2 pb-5\">\r\n<div class=\"row align-items-center\">\r\n<h1 class=\"text-center pb-5 fs-3 fw-bolder mb-0\">BENEFICIOS PARA TU EMPRESA</h1>\r\n<div class=\"col-lg-1\"> </div>\r\n<div class=\"col-lg-10\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-6 px-1\"><img class=\"img-fluid d-md-none d-lg-block\" src=\"img/2_beneficios.png\" alt=\"Beneficios\"></div>\r\n<div class=\"col-lg-6 fonsGris rounded-4 pt-3\">\r\n<ul class=\"ps-5\">\r\n<li>\r\n<h6 class=\"fw-bolder\">Ahorro de Tiempo y Costos</h6>\r\n<p>Al automatizar tareas y centralizar la gestión, se reducen tiempos de búsqueda de productos y se minimizan los errores costosos.</p>\r\n</li>\r\n<li>\r\n<h6 class=\"fw-bolder\">Mejora en la Productividad</h6>\r\n<p class=\"mb-2\">Los operarios y encargados trabajan de manera más organizada, optimizando rutas de picking y reduciendo tiempos de preparación de pedidos.</p>\r\n</li>\r\n<li class=\"pt-1\">\r\n<h6 class=\"fw-bolder\">Mayor Control y Visibilidad</h6>\r\n<p class=\"mb-2\">Monitorea el estado de tu inventario en tiempo real y realiza un seguimiento preciso de todos los movimientos dentro del almacén.</p>\r\n</li>\r\n<li class=\"pt-1\">\r\n<h6 class=\"fw-bolder\">Escalabilidad y Adaptación</h6>\r\n<p>Crece con tu negocio: el sistema se adapta fácilmente a nuevas ubicaciones y almacenes, manteniendo siempre el control centralizado.</p>\r\n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-1\"> </div>\r\n</div>\r\n</div>\r\n<!--casos éxito |\\\\|-->\r\n<div class=\"container-lg-fluid container-xl\">\r\n<h1 class=\"text-center pb-5 fs-3 fw-bolder\">CASOS DE ÉXITO DE NUESTROS CLIENTES</h1>\r\n<div class=\"row align-items-center\">\r\n<div class=\"col-lg-1\"> </div>\r\n<div class=\"col-lg-10\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-6 pt-lg-0 pt-sm-4 col-12 ps-lg-0\"><img class=\"img-fluid\" src=\"img/3_casoDeExito.png\" alt=\"imagen-caso-Exito-1\"></div>\r\n<div class=\"col-sm-6 pt-lg-0 pt-4 col-12 pe-lg-0\"><img class=\"img-fluid w-100\" src=\"img/4_casoDeExito.png\" alt=\"imagen-caso-Exito-2\"></div>\r\n<div class=\"col-sm-6 pt-4 col-12 ps-lg-0\"><img class=\"img-fluid w-100\" src=\"img/5_casoDeExito.png\" alt=\"imagen-caso-Exito-3\"></div>\r\n<div class=\"col-sm-6 pt-4 col-12 pe-lg-0\"><img class=\"img-fluid w-100\" src=\"img/6_casoDeExito.png\" alt=\"imagen-caso-Exito-4\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-1\"> </div>\r\n</div>\r\n</div>\r\n<!--reseñas |\\\\|-->\r\n<div class=\"container-lg-fluid container-xl pt-5 pb-5\">\r\n<h1 class=\"text-center fs-3 fw-bolder pb-4\">RESEÑAS</h1>\r\n<div class=\"row\">\r\n<div class=\"col-lg-1\"> </div>\r\n<div class=\"col-lg-10 col-xs-12 pt-4 px-0\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-md-3 col-sm-6\">\r\n<div class=\"border fonsGris rounded-3 h-100 pb-3\"><img class=\"img-fluid\" src=\"img/7_reseña.png\">\r\n<p class=\"text-center py-2 justify-content-evenly d-flex px-3 mb-2\"> </p>\r\n<div class=\"px-3\">\r\n<p><strong>\"Este software ha revolucionado nuestra manera de trabajar en el almacén. Antes era un caos encontrar productos, pero ahora todo está organizado y accesible desde cualquier dispositivo.\"</strong></p>\r\n<p><em>- Carlos M., Gerente de Logística.</em></p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-md-3 col-sm-6\">\r\n<div class=\"border fonsGris rounded-3 h-100\"><img class=\"img-fluid\" src=\"img/8_reseña.png\">\r\n<p class=\"text-center py-2 justify-content-evenly d-flex px-3 mb-2\"> </p>\r\n<div class=\"px-3\">\r\n<p><strong>\"Nos encanta la facilidad de uso y cómo ha mejorado la productividad del equipo. Ahora completamos las órdenes de envío en la mitad del tiempo.\"</strong></p>\r\n<p><em>- Marta G., Supervisora de Almacén.</em></p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-md-3 col-sm-6\">\r\n<div class=\"border fonsGris rounded-3 h-100\"><img class=\"img-fluid\" src=\"img/9_reseña.png\">\r\n<p class=\"text-center py-2 justify-content-evenly d-flex px-3 mb-2\"> </p>\r\n<div class=\"px-3\">\r\n<p><strong>\"La automatización de procesos nos ha permitido reducir los errores en un 90%. No puedo imaginar volver a trabajar sin esta herramienta.\"</strong></p>\r\n<p><em>- Juan M., Adjunto logística.</em></p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-md-3 col-sm-6\">\r\n<div class=\"border fonsGris rounded-3 h-100\"><img class=\"img-fluid\" src=\"img/10_reseña.png\">\r\n<p class=\"text-center py-2 justify-content-evenly d-flex px-3 mb-2\"> </p>\r\n<div class=\"px-3\">\r\n<p><strong>\"El sistema de reportes es increíble. Nos da toda la información que necesitamos para tomar decisiones más rápidas y acertadas sobre nuestro stock.\"</strong></p>\r\n<p><em>- Ana S., Responsable de Inventario.</em></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-1\"> </div>\r\n</div>\r\n</div>\r\n<!--footer |\\\\|-->\r\n<div class=\"container-fluid pt-1 fonsBlau text-white\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-6 col-lg-4 pt-2 d-flex flex-column align-items-center pe-0 ps-4\"><img class=\"fotoFooter ps-2 pt-2 pb-5\" src=\"img/logo_footer.png\">\r\n<div class=\"text-start pt-4 ps-5\">\r\n<p class=\"pt-3 d-flex align-items-center mb-2\">C/Duanes, 17 - Pego</p>\r\n<p class=\"d-flex align-items-center mb-2\">+34 966 409 960</p>\r\n<p class=\"d-flex align-items-center\">03007613@edu.gva.es</p>\r\n</div>\r\n</div>\r\n<div class=\"col-sm-6 col-lg-4 text-center pt-4\">\r\n<p class=\"pt-1 fw-bolder\">Legal</p>\r\n<div class=\"pt-5 text-center pb-4\">\r\n<p class=\"pt-4 mb-0\"><a class=\"text-decoration-underline text-white\" href=\"#\">Aviso legal</a></p>\r\n<p class=\"mb-0\"><a class=\"text-decoration-underline text-white\" href=\"#\">Política de cookies</a></p>\r\n<p class=\"mb-0\"><a class=\"text-decoration-underline text-white\" href=\"#\">Política de privacidad</a></p>\r\n</div>\r\n<div class=\"text-center pt-5 mt-1\"><a class=\"text-decoration-none text-white\" href=\"https://x.com/Gag0val/status/1658048420920139776\"> </a> <a class=\"text-decoration-none text-white px-4\" href=\"https://www.linkedin.com/company/aichatgpt/\"> </a> <a class=\"text-decoration-none text-white\" href=\"https://youtu.be/xvFZjo5PgG0\"> </a></div>\r\n</div>\r\n<div class=\"col-md-12 col-lg-4 pt-lg-2 pe-lg-5 mt-4\">\r\n<div class=\"text-center pt-lg-1 pe-lg-5\">\r\n<h6 class=\"pe-lg-4 fw-bolder\">NEWSLETTERS</h6>\r\n<p class=\"pe-lg-4 mb-lg-2\">* Nombre</p>\r\n<input class=\"rounded-2 py-lg-1 me-lg-4 px-lg-2\" type=\"text\">\r\n<p class=\"pe-lg-4 pt-lg-3\">* Email</p>\r\n<input class=\"rounded-2 py-lg-1 me-lg-4 px-lg-2 mb-lg-0\" type=\"text\">\r\n<p class=\"pt-lg-3 pe-lg-5 d-flex justify-content-center mb-lg-2\"><input class=\"pt-2\" type=\"checkbox\"></p>\r\n<p class=\"text-center px-lg-5\">Acepto <a class=\"text-decoration-underline text-white\" href=\"#\">términos</a> y <a class=\"text-decoration-underline text-white\" href=\"#\">condiciones</a></p>\r\n<button class=\"btn-taronja rounded-3 text-white mx-lg-5\">Suscríbete</button></div>\r\n</div>\r\n</div>\r\n</div>\r\n<!--copy |\\\\|-->\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-12\">\r\n<p class=\"text-end align-items-center m-0 py-3\">© Copyright 2024. Todos los derechos reservados</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!--script-->', '', -2, 2, '2025-01-29 22:31:06', 974, '', '2025-01-29 22:31:06', 974, 974, '2025-01-29 22:31:26', '2025-01-29 22:31:06', NULL, '{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}', 0, '*', ''),
(3, 102, 'Stockflow', 'stockflow', '<!--menu |\\\\|-->\r\n<div class=\"container-fluid fonsGris\">\r\n<div class=\"row\">\r\n<div class=\"col-12 align-items-center\"><nav class=\"navbar navbar-expand-lg\">\r\n<div class=\"container-fluid py-1\"><button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\"> </button>\r\n<div id=\"navbarSupportedContent\" class=\"collapse navbar-collapse\">\r\n<ul class=\"navbar-nav ms-lg-auto mb-2 mb-lg-0\">\r\n<li class=\"nav-item dropdown\"><a class=\"nav-link dropdown-toggle btn-header\" role=\"button\" href=\"#\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\"> PRODUCTO </a>\r\n<ul class=\"dropdown-menu bg-white\">\r\n<li><a class=\"dropdown-item btn-header\" href=\"#\">DESCARGA DE PRODUCTO</a></li>\r\n<li><a class=\"dropdown-item btn-header\" href=\"#\">PLANES Y PRECIOS</a></li>\r\n</ul>\r\n</li>\r\n<li class=\"nav-item\"><a class=\"nav-link btn-header\" href=\"#\">CASOS DE ÉXITO</a></li>\r\n<li class=\"nav-item\"><a class=\"nav-link btn-header border-end border-black\" href=\"#\">RESEÑAS</a></li>\r\n<li class=\"nav-item\"><a class=\"nav-link btn-header\">QUIÉNES SOMOS</a></li>\r\n<li class=\"nav-item\"><a class=\"nav-link btn-header\">BLOG</a></li>\r\n<li class=\"nav-item\"><a class=\"nav-link btn-header\">CONTACTO</a></li>\r\n<li class=\"nav-item ps-2\"><button class=\"btn btn-taronja border-black text-white rounded-2\" type=\"submit\">DEMO</button></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</nav></div>\r\n</div>\r\n</div>\r\n<!--software de gestión |\\\\|-->\r\n<div class=\"container-lg-fluid container-xl pt-5 justify-content-center\">\r\n<div class=\"row rounded-3\">\r\n<div class=\"col-lg-1\"> </div>\r\n<div class=\"col-lg-10\">\r\n<div class=\"container-fluid marginMenu\">\r\n<div class=\"row\">\r\n<div class=\"col-12 col-md-6 fonsGris rounded-start-4 p-4 pe-3\">\r\n<h1 class=\"w-75 titul fw-bolder ps-3 pt-1\">Software de Gestión de Almacenes</h1>\r\n<h3 class=\"fw-bolder ps-3 pt-1 m-0\">(SGA / WMS)</h3>\r\n<p class=\"lh-lg ps-3\">Nuestra aplicación está diseñada para simplificar la recepción, almacenamiento y envío de productos, eliminando el caos y permitiendo un control total de tu inventario desde cualquier lugar. Aumenta la productividad de tu equipo con una solución moderna, intuitiva y accesible desde cualquier dispositivo.</p>\r\n<div class=\"d-grid d-lg-block gap-2 mx-auto\"><button class=\"btn btn-taronja text-white border-black px-5\">Solicitar DEMO</button> <button class=\"btn btn-blau text-white border-white py-2 px-4\">Precios y planes &gt;</button></div>\r\n</div>\r\n<div class=\"col-12 col-md-6 fonsGris rounded-end-3 pt-5 pe-1\"><img class=\"img-fluid\" src=\"img/1_inicio.png\" alt=\"Gestión de Almacenes\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-1 p-0\"> </div>\r\n</div>\r\n</div>\r\n<!--caixes |\\\\|-->\r\n<div class=\"container-lg-fluid container-xl py-4\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-1\"> </div>\r\n<div class=\"col-lg-10 col-xs-12\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-3 col-sm-6 p-3 text-center\">\r\n<div class=\"border fonsGris rounded-4 pt-4 h-100\">\r\n<h4 class=\"fs-6 fw-bolder m-0\">GESTIÓN INTERGRAL DE INVENTARIOS</h4>\r\n<p class=\"m-0 pb-2\">-----------------------------------</p>\r\n<p class=\"lh-sm px-3\">Controla cada detalle de tus productos: desde la recepción hasta el envío, con un seguimiento en tiempo real y alertas de stock bajo.</p>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-3 col-sm-6 p-3 text-center\">\r\n<div class=\"border fonsGris rounded-4 pt-4 px-2 h-100\">\r\n<h4 class=\"fs-6 fw-bolder m-0\">INTERFAZ ADAPTABLE Y FÁCIL DE USAR</h4>\r\n<p class=\"m-0 pb-2\">-----------------------------------</p>\r\n<p class=\"lh-sm\">Accede a toda la información que necesitas con una interfaz moderna, intuitiva y optimizada para dispositivos móviles y laptops.</p>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-3 col-sm-6 p-3 text-center\">\r\n<div class=\"border fonsGris rounded-4 pt-4 px-2 h-100\">\r\n<h4 class=\"fs-6 fw-bolder m-0 px-2\">AUTOMATIZACIÓN DE PROCESOS</h4>\r\n<p class=\"m-0 pb-2\">-----------------------------------</p>\r\n<p class=\"lh-sm\">Simplifica las tareas diarias con flujos de trabajo automatizados que reducen el tiempo de administración y minimizan errores humanos.</p>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-3 col-sm-6 p-3 text-center\">\r\n<div class=\"border fonsGris rounded-4 pt-4 px-2  h-100\">\r\n<h4 class=\"fs-6 fw-bolder m-0\">ANÁLISIS Y REPORTES AVANZADOS</h4>\r\n<p class=\"m-0 pb-2\">-----------------------------------</p>\r\n<p class=\"lh-sm\">Obtén informes detallados sobre la rotación de productos, el rendimiento del almacén y el cumplimiento de pedidos, facilitando la toma de decisiones estratégicas.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-1\"> </div>\r\n</div>\r\n</div>\r\n</div>\r\n<!--beneficios |\\\\|-->\r\n<div class=\"container-lg-fluid container-xl pt-2 pb-5\">\r\n<div class=\"row align-items-center\">\r\n<h1 class=\"text-center pb-5 fs-3 fw-bolder mb-0\">BENEFICIOS PARA TU EMPRESA</h1>\r\n<div class=\"col-lg-1\"> </div>\r\n<div class=\"col-lg-10\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-6 px-1\"><img class=\"img-fluid d-md-none d-lg-block\" src=\"img/2_beneficios.png\" alt=\"Beneficios\"></div>\r\n<div class=\"col-lg-6 fonsGris rounded-4 pt-3\">\r\n<ul class=\"ps-5\">\r\n<li>\r\n<h6 class=\"fw-bolder\">Ahorro de Tiempo y Costos</h6>\r\n<p>Al automatizar tareas y centralizar la gestión, se reducen tiempos de búsqueda de productos y se minimizan los errores costosos.</p>\r\n</li>\r\n<li>\r\n<h6 class=\"fw-bolder\">Mejora en la Productividad</h6>\r\n<p class=\"mb-2\">Los operarios y encargados trabajan de manera más organizada, optimizando rutas de picking y reduciendo tiempos de preparación de pedidos.</p>\r\n</li>\r\n<li class=\"pt-1\">\r\n<h6 class=\"fw-bolder\">Mayor Control y Visibilidad</h6>\r\n<p class=\"mb-2\">Monitorea el estado de tu inventario en tiempo real y realiza un seguimiento preciso de todos los movimientos dentro del almacén.</p>\r\n</li>\r\n<li class=\"pt-1\">\r\n<h6 class=\"fw-bolder\">Escalabilidad y Adaptación</h6>\r\n<p>Crece con tu negocio: el sistema se adapta fácilmente a nuevas ubicaciones y almacenes, manteniendo siempre el control centralizado.</p>\r\n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-1\"> </div>\r\n</div>\r\n</div>\r\n<!--casos éxito |\\\\|-->\r\n<div class=\"container-lg-fluid container-xl\">\r\n<h1 class=\"text-center pb-5 fs-3 fw-bolder\">CASOS DE ÉXITO DE NUESTROS CLIENTES</h1>\r\n<div class=\"row align-items-center\">\r\n<div class=\"col-lg-1\"> </div>\r\n<div class=\"col-lg-10\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-6 pt-lg-0 pt-sm-4 col-12 ps-lg-0\"><img class=\"img-fluid\" src=\"img/3_casoDeExito.png\" alt=\"imagen-caso-Exito-1\"></div>\r\n<div class=\"col-sm-6 pt-lg-0 pt-4 col-12 pe-lg-0\"><img class=\"img-fluid w-100\" src=\"img/4_casoDeExito.png\" alt=\"imagen-caso-Exito-2\"></div>\r\n<div class=\"col-sm-6 pt-4 col-12 ps-lg-0\"><img class=\"img-fluid w-100\" src=\"img/5_casoDeExito.png\" alt=\"imagen-caso-Exito-3\"></div>\r\n<div class=\"col-sm-6 pt-4 col-12 pe-lg-0\"><img class=\"img-fluid w-100\" src=\"img/6_casoDeExito.png\" alt=\"imagen-caso-Exito-4\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-1\"> </div>\r\n</div>\r\n</div>\r\n<!--reseñas |\\\\|-->\r\n<div class=\"container-lg-fluid container-xl pt-5 pb-5\">\r\n<h1 class=\"text-center fs-3 fw-bolder pb-4\">RESEÑAS</h1>\r\n<div class=\"row\">\r\n<div class=\"col-lg-1\"> </div>\r\n<div class=\"col-lg-10 col-xs-12 pt-4 px-0\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-md-3 col-sm-6\">\r\n<div class=\"border fonsGris rounded-3 h-100 pb-3\"><img class=\"img-fluid\" src=\"img/7_reseña.png\">\r\n<p class=\"text-center py-2 justify-content-evenly d-flex px-3 mb-2\"> </p>\r\n<div class=\"px-3\">\r\n<p><strong>\"Este software ha revolucionado nuestra manera de trabajar en el almacén. Antes era un caos encontrar productos, pero ahora todo está organizado y accesible desde cualquier dispositivo.\"</strong></p>\r\n<p><em>- Carlos M., Gerente de Logística.</em></p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-md-3 col-sm-6\">\r\n<div class=\"border fonsGris rounded-3 h-100\"><img class=\"img-fluid\" src=\"img/8_reseña.png\">\r\n<p class=\"text-center py-2 justify-content-evenly d-flex px-3 mb-2\"> </p>\r\n<div class=\"px-3\">\r\n<p><strong>\"Nos encanta la facilidad de uso y cómo ha mejorado la productividad del equipo. Ahora completamos las órdenes de envío en la mitad del tiempo.\"</strong></p>\r\n<p><em>- Marta G., Supervisora de Almacén.</em></p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-md-3 col-sm-6\">\r\n<div class=\"border fonsGris rounded-3 h-100\"><img class=\"img-fluid\" src=\"img/9_reseña.png\">\r\n<p class=\"text-center py-2 justify-content-evenly d-flex px-3 mb-2\"> </p>\r\n<div class=\"px-3\">\r\n<p><strong>\"La automatización de procesos nos ha permitido reducir los errores en un 90%. No puedo imaginar volver a trabajar sin esta herramienta.\"</strong></p>\r\n<p><em>- Juan M., Adjunto logística.</em></p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-md-3 col-sm-6\">\r\n<div class=\"border fonsGris rounded-3 h-100\"><img class=\"img-fluid\" src=\"img/10_reseña.png\">\r\n<p class=\"text-center py-2 justify-content-evenly d-flex px-3 mb-2\"> </p>\r\n<div class=\"px-3\">\r\n<p><strong>\"El sistema de reportes es increíble. Nos da toda la información que necesitamos para tomar decisiones más rápidas y acertadas sobre nuestro stock.\"</strong></p>\r\n<p><em>- Ana S., Responsable de Inventario.</em></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-1\"> </div>\r\n</div>\r\n</div>\r\n<!--footer |\\\\|-->\r\n<div class=\"container-fluid pt-1 fonsBlau text-white\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-6 col-lg-4 pt-2 d-flex flex-column align-items-center pe-0 ps-4\"><img class=\"fotoFooter ps-2 pt-2 pb-5\" src=\"img/logo_footer.png\">\r\n<div class=\"text-start pt-4 ps-5\">\r\n<p class=\"pt-3 d-flex align-items-center mb-2\">C/Duanes, 17 - Pego</p>\r\n<p class=\"d-flex align-items-center mb-2\">+34 966 409 960</p>\r\n<p class=\"d-flex align-items-center\">03007613@edu.gva.es</p>\r\n</div>\r\n</div>\r\n<div class=\"col-sm-6 col-lg-4 text-center pt-4\">\r\n<p class=\"pt-1 fw-bolder\">Legal</p>\r\n<div class=\"pt-5 text-center pb-4\">\r\n<p class=\"pt-4 mb-0\"><a class=\"text-decoration-underline text-white\" href=\"#\">Aviso legal</a></p>\r\n<p class=\"mb-0\"><a class=\"text-decoration-underline text-white\" href=\"#\">Política de cookies</a></p>\r\n<p class=\"mb-0\"><a class=\"text-decoration-underline text-white\" href=\"#\">Política de privacidad</a></p>\r\n</div>\r\n<div class=\"text-center pt-5 mt-1\"><a class=\"text-decoration-none text-white\" href=\"https://x.com/Gag0val/status/1658048420920139776\"> </a> <a class=\"text-decoration-none text-white px-4\" href=\"https://www.linkedin.com/company/aichatgpt/\"> </a> <a class=\"text-decoration-none text-white\" href=\"https://youtu.be/xvFZjo5PgG0\"> </a></div>\r\n</div>\r\n<div class=\"col-md-12 col-lg-4 pt-lg-2 pe-lg-5 mt-4\">\r\n<div class=\"text-center pt-lg-1 pe-lg-5\">\r\n<h6 class=\"pe-lg-4 fw-bolder\">NEWSLETTERS</h6>\r\n<p class=\"pe-lg-4 mb-lg-2\">* Nombre</p>\r\n<input class=\"rounded-2 py-lg-1 me-lg-4 px-lg-2\" type=\"text\">\r\n<p class=\"pe-lg-4 pt-lg-3\">* Email</p>\r\n<input class=\"rounded-2 py-lg-1 me-lg-4 px-lg-2 mb-lg-0\" type=\"text\">\r\n<p class=\"pt-lg-3 pe-lg-5 d-flex justify-content-center mb-lg-2\"><input class=\"pt-2\" type=\"checkbox\"></p>\r\n<p class=\"text-center px-lg-5\">Acepto <a class=\"text-decoration-underline text-white\" href=\"#\">términos</a> y <a class=\"text-decoration-underline text-white\" href=\"#\">condiciones</a></p>\r\n<button class=\"btn-taronja rounded-3 text-white mx-lg-5\">Suscríbete</button></div>\r\n</div>\r\n</div>\r\n</div>\r\n<!--copy |\\\\|-->\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-12\">\r\n<p class=\"text-end align-items-center m-0 py-3\">© Copyright 2024. Todos los derechos reservados</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!--script-->', '', 1, 2, '2025-01-29 22:38:03', 974, '', '2025-01-29 22:55:19', 974, NULL, NULL, '2025-01-29 22:38:03', NULL, '{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 0, '', '', 1, 8, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}', 0, '*', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_contentitem_tag_map`
--

CREATE TABLE `oh67l_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_content_frontpage`
--

CREATE TABLE `oh67l_content_frontpage` (
  `content_id` int NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `featured_up` datetime DEFAULT NULL,
  `featured_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_content_rating`
--

CREATE TABLE `oh67l_content_rating` (
  `content_id` int NOT NULL DEFAULT '0',
  `rating_sum` int UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_content_types`
--

CREATE TABLE `oh67l_content_types` (
  `type_id` int UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_content_types`
--

INSERT INTO `oh67l_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"ArticleTable\",\"prefix\":\"Joomla\\\\Component\\\\Content\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"asset_id\", \"note\":\"note\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"ContactTable\",\"prefix\":\"Joomla\\\\Component\\\\Contact\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"NewsfeedTable\",\"prefix\":\"Joomla\\\\Component\\\\Newsfeeds\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerDate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', '', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"TagTable\",\"prefix\":\"Joomla\\\\Component\\\\Tags\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"BannerTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"ClientTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"NoteTable\",\"prefix\":\"Joomla\\\\Component\\\\Users\\\\Administrator\\\\Table\\\\\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_extensions`
--

CREATE TABLE `oh67l_extensions` (
  `extension_id` int NOT NULL,
  `package_id` int NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `changelogurl` text COLLATE utf8mb4_unicode_ci,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint NOT NULL,
  `enabled` tinyint NOT NULL DEFAULT '0',
  `access` int UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint NOT NULL DEFAULT '0' COMMENT 'Flag to indicate if the extension is protected. Protected extensions cannot be disabled.',
  `locked` tinyint NOT NULL DEFAULT '0' COMMENT 'Flag to indicate if the extension is locked. Locked extensions cannot be uninstalled.',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int DEFAULT '0',
  `state` int DEFAULT '0',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_extensions`
--

INSERT INTO `oh67l_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `changelogurl`, `folder`, `client_id`, `enabled`, `access`, `protected`, `locked`, `manifest_cache`, `params`, `custom_data`, `checked_out`, `checked_out_time`, `ordering`, `state`, `note`) VALUES
(1, 0, 'com_wrapper', 'component', 'com_wrapper', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Wrapper\",\"filename\":\"wrapper\"}', '', '', NULL, NULL, 0, 0, NULL),
(2, 0, 'com_admin', 'component', 'com_admin', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Admin\"}', '', '', NULL, NULL, 0, 0, NULL),
(3, 0, 'com_banners', 'component', 'com_banners', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Banners\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', NULL, NULL, 0, 0, NULL),
(4, 0, 'com_cache', 'component', 'com_cache', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Cache\"}', '', '', NULL, NULL, 0, 0, NULL),
(5, 0, 'com_categories', 'component', 'com_categories', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Categories\"}', '', '', NULL, NULL, 0, 0, NULL),
(6, 0, 'com_checkin', 'component', 'com_checkin', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Checkin\"}', '', '', NULL, NULL, 0, 0, NULL),
(7, 0, 'com_contact', 'component', 'com_contact', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Contact\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_ids\":1,\"custom_fields_enable\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(8, 0, 'com_cpanel', 'component', 'com_cpanel', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"2007-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Cpanel\"}', '', '', NULL, NULL, 0, 0, NULL),
(9, 0, 'com_installer', 'component', 'com_installer', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Installer\"}', '{\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', NULL, NULL, 0, 0, NULL),
(10, 0, 'com_languages', 'component', 'com_languages', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Languages\"}', '{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}', '', NULL, NULL, 0, 0, NULL),
(11, 0, 'com_login', 'component', 'com_login', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Login\"}', '', '', NULL, NULL, 0, 0, NULL),
(12, 0, 'com_media', 'component', 'com_media', '', '', 1, 1, 0, 1, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Media\",\"filename\":\"media\"}', '{\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"restrict_uploads_extensions\":\"bmp,gif,jpg,jpeg,png,webp,avif,ico,mp3,m4a,mp4a,ogg,mp4,mp4v,mpeg,mov,odg,odp,ods,odt,pdf,ppt,txt,xcf,xls,csv\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png,jpeg,webp,avif\",\"audio_extensions\":\"mp3,m4a,mp4a,ogg\",\"video_extensions\":\"mp4,mp4v,mpeg,mov,webm\",\"doc_extensions\":\"odg,odp,ods,odt,pdf,ppt,txt,xcf,xls,csv\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,image\\/webp,image\\/avif,audio\\/ogg,audio\\/mpeg,audio\\/mp4,video\\/mp4,video\\/webm,video\\/mpeg,video\\/quicktime,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\"}', '', NULL, NULL, 0, 0, NULL),
(13, 0, 'com_menus', 'component', 'com_menus', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Menus\",\"filename\":\"menus\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', NULL, NULL, 0, 0, NULL),
(14, 0, 'com_messages', 'component', 'com_messages', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Messages\"}', '', '', NULL, NULL, 0, 0, NULL),
(15, 0, 'com_modules', 'component', 'com_modules', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Modules\",\"filename\":\"modules\"}', '', '', NULL, NULL, 0, 0, NULL),
(16, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"sef_ids\":1}', '', NULL, NULL, 0, 0, NULL),
(17, 0, 'com_plugins', 'component', 'com_plugins', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Plugins\"}', '', '', NULL, NULL, 0, 0, NULL),
(18, 0, 'com_templates', 'component', 'com_templates', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Templates\"}', '{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png,webp\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass,json\",\"font_formats\":\"woff,woff2,ttf,otf\",\"compressed_formats\":\"zip\",\"difference\":\"SideBySide\"}', '', NULL, NULL, 0, 0, NULL),
(19, 0, 'com_content', 'component', 'com_content', '', '', 1, 1, 0, 1, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Content\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"info_block_show_title\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"0\",\"flags\":\"1\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":100,\"show_tags\":\"1\",\"record_hits\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"urls_position\":0,\"captcha\":\"\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_configure_edit_options\":\"1\",\"show_permissions\":\"1\",\"show_associations_edit\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_category_heading_title_text\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":1,\"blog_class_leading\":\"\",\"num_intro_articles\":4,\"blog_class\":\"\",\"num_columns\":1,\"multi_column_order\":\"0\",\"num_links\":4,\"show_subcategory_content\":\"0\",\"link_intro_image\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"display_num\":\"10\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\",\"sef_ids\":1,\"custom_fields_enable\":\"1\",\"workflow_enabled\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(20, 0, 'com_config', 'component', 'com_config', '', '', 1, 1, 0, 1, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Config\",\"filename\":\"config\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', NULL, NULL, 0, 0, NULL),
(21, 0, 'com_redirect', 'component', 'com_redirect', '', '', 1, 1, 0, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Redirect\"}', '', '', NULL, NULL, 0, 0, NULL),
(22, 0, 'com_users', 'component', 'com_users', '', '', 1, 1, 0, 1, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Users\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"12\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', NULL, NULL, 0, 0, NULL),
(23, 0, 'com_finder', 'component', 'com_finder', '', '', 1, 1, 0, 0, 1, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Finder\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(24, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', '', 1, 1, 0, 1, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.3\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Joomlaupdate\"}', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', NULL, NULL, 0, 0, NULL),
(25, 0, 'com_tags', 'component', 'com_tags', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"2013-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Tags\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_description\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(26, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"2013-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Contenthistory\",\"filename\":\"contenthistory\"}', '', '', NULL, NULL, 0, 0, NULL),
(27, 0, 'com_ajax', 'component', 'com_ajax', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"2013-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"ajax\"}', '', '', NULL, NULL, 0, 0, NULL),
(28, 0, 'com_postinstall', 'component', 'com_postinstall', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"2013-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Postinstall\"}', '', '', NULL, NULL, 0, 0, NULL),
(29, 0, 'com_fields', 'component', 'com_fields', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Fields\",\"filename\":\"fields\"}', '', '', NULL, NULL, 0, 0, NULL),
(30, 0, 'com_associations', 'component', 'com_associations', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Associations\"}', '', '', NULL, NULL, 0, 0, NULL),
(31, 0, 'com_privacy', 'component', 'com_privacy', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_privacy\",\"type\":\"component\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Privacy\",\"filename\":\"privacy\"}', '', '', NULL, NULL, 0, 0, NULL),
(32, 0, 'com_actionlogs', 'component', 'com_actionlogs', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_actionlogs\",\"type\":\"component\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Actionlogs\"}', '{\"ip_logging\":0,\"csv_delimiter\":\",\",\"loggable_extensions\":[\"com_banners\",\"com_cache\",\"com_categories\",\"com_checkin\",\"com_config\",\"com_contact\",\"com_content\",\"com_fields\",\"com_guidedtours\",\"com_installer\",\"com_media\",\"com_menus\",\"com_messages\",\"com_modules\",\"com_newsfeeds\",\"com_plugins\",\"com_redirect\",\"com_scheduler\",\"com_tags\",\"com_templates\",\"com_users\"]}', '', NULL, NULL, 0, 0, NULL),
(33, 0, 'com_workflow', 'component', 'com_workflow', '', '', 1, 1, 0, 1, 1, '{\"name\":\"com_workflow\",\"type\":\"component\",\"creationDate\":\"2017-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WORKFLOW_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Workflow\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(34, 0, 'com_mails', 'component', 'com_mails', '', '', 1, 1, 1, 1, 1, '{\"name\":\"com_mails\",\"type\":\"component\",\"creationDate\":\"2019-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MAILS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Mails\"}', '', '', NULL, NULL, 0, 0, NULL),
(35, 0, 'com_scheduler', 'component', 'com_scheduler', '', '', 1, 1, 1, 0, 1, '{\"name\":\"com_scheduler\",\"type\":\"component\",\"creationDate\":\"2021-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"COM_SCHEDULER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Scheduler\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(36, 0, 'com_guidedtours', 'component', 'com_guidedtours', '', '', 1, 1, 0, 0, 1, '{\"name\":\"com_guidedtours\",\"type\":\"component\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"COM_GUIDEDTOURS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Guidedtours\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(37, 0, 'lib_joomla', 'library', 'joomla', '', '', 0, 1, 1, 1, 1, '{\"name\":\"lib_joomla\",\"type\":\"library\",\"creationDate\":\"2008-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"joomla\"}', '', '', NULL, NULL, 0, 0, NULL),
(38, 0, 'lib_phpass', 'library', 'phpass', '', '', 0, 1, 1, 1, 1, '{\"name\":\"lib_phpass\",\"type\":\"library\",\"creationDate\":\"2004-01\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"https:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"phpass\"}', '', '', NULL, NULL, 0, 0, NULL),
(39, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesArchive\",\"filename\":\"mod_articles_archive\"}', '', '', NULL, NULL, 0, 0, NULL),
(40, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesLatest\",\"filename\":\"mod_articles_latest\"}', '', '', NULL, NULL, 0, 0, NULL),
(41, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesPopular\",\"filename\":\"mod_articles_popular\"}', '', '', NULL, NULL, 0, 0, NULL),
(42, 0, 'mod_banners', 'module', 'mod_banners', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Banners\",\"filename\":\"mod_banners\"}', '', '', NULL, NULL, 0, 0, NULL),
(43, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Breadcrumbs\",\"filename\":\"mod_breadcrumbs\"}', '', '', NULL, NULL, 0, 0, NULL),
(44, 0, 'mod_custom', 'module', 'mod_custom', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Custom\",\"filename\":\"mod_custom\"}', '', '', NULL, NULL, 0, 0, NULL),
(45, 0, 'mod_feed', 'module', 'mod_feed', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"2005-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Feed\",\"filename\":\"mod_feed\"}', '', '', NULL, NULL, 0, 0, NULL),
(46, 0, 'mod_footer', 'module', 'mod_footer', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Footer\",\"filename\":\"mod_footer\"}', '', '', NULL, NULL, 0, 0, NULL),
(47, 0, 'mod_login', 'module', 'mod_login', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Login\",\"filename\":\"mod_login\"}', '', '', NULL, NULL, 0, 0, NULL),
(48, 0, 'mod_menu', 'module', 'mod_menu', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Menu\",\"filename\":\"mod_menu\"}', '', '', NULL, NULL, 0, 0, NULL),
(49, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesNews\",\"filename\":\"mod_articles_news\"}', '', '', NULL, NULL, 0, 0, NULL),
(50, 0, 'mod_random_image', 'module', 'mod_random_image', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\RandomImage\",\"filename\":\"mod_random_image\"}', '', '', NULL, NULL, 0, 0, NULL),
(51, 0, 'mod_related_items', 'module', 'mod_related_items', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\RelatedItems\",\"filename\":\"mod_related_items\"}', '', '', NULL, NULL, 0, 0, NULL),
(52, 0, 'mod_stats', 'module', 'mod_stats', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Stats\",\"filename\":\"mod_stats\"}', '', '', NULL, NULL, 0, 0, NULL),
(53, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"2006-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Syndicate\",\"filename\":\"mod_syndicate\"}', '', '', NULL, NULL, 0, 0, NULL),
(54, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"2009-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\UsersLatest\",\"filename\":\"mod_users_latest\"}', '', '', NULL, NULL, 0, 0, NULL),
(55, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Whosonline\",\"filename\":\"mod_whosonline\"}', '', '', NULL, NULL, 0, 0, NULL),
(56, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"2004-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Wrapper\",\"filename\":\"mod_wrapper\"}', '', '', NULL, NULL, 0, 0, NULL),
(57, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesCategory\",\"filename\":\"mod_articles_category\"}', '', '', NULL, NULL, 0, 0, NULL),
(58, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesCategories\",\"filename\":\"mod_articles_categories\"}', '', '', NULL, NULL, 0, 0, NULL),
(59, 0, 'mod_languages', 'module', 'mod_languages', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Languages\",\"filename\":\"mod_languages\"}', '', '', NULL, NULL, 0, 0, NULL),
(60, 0, 'mod_finder', 'module', 'mod_finder', '', '', 0, 1, 0, 0, 1, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Finder\",\"filename\":\"mod_finder\"}', '', '', NULL, NULL, 0, 0, NULL),
(61, 0, 'MOD_ARTICLES', 'module', 'mod_articles', '', '', 0, 1, 0, 0, 1, '{\"name\":\"MOD_ARTICLES\",\"type\":\"module\",\"creationDate\":\"2024-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.2.0\",\"description\":\"MOD_ARTICLES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Articles\",\"filename\":\"mod_articles\"}', '', '', NULL, NULL, 0, 0, NULL),
(62, 0, 'mod_custom', 'module', 'mod_custom', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Custom\",\"filename\":\"mod_custom\"}', '', '', NULL, NULL, 0, 0, NULL),
(63, 0, 'mod_feed', 'module', 'mod_feed', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"2005-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Feed\",\"filename\":\"mod_feed\"}', '', '', NULL, NULL, 0, 0, NULL),
(64, 0, 'mod_latest', 'module', 'mod_latest', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Latest\",\"filename\":\"mod_latest\"}', '', '', NULL, NULL, 0, 0, NULL),
(65, 0, 'mod_logged', 'module', 'mod_logged', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"2005-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Logged\",\"filename\":\"mod_logged\"}', '', '', NULL, NULL, 0, 0, NULL),
(66, 0, 'mod_login', 'module', 'mod_login', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"2005-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Login\",\"filename\":\"mod_login\"}', '', '', NULL, NULL, 0, 0, NULL),
(67, 0, 'mod_loginsupport', 'module', 'mod_loginsupport', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_loginsupport\",\"type\":\"module\",\"creationDate\":\"2019-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_LOGINSUPPORT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Loginsupport\",\"filename\":\"mod_loginsupport\"}', '', '', NULL, NULL, 0, 0, NULL),
(68, 0, 'mod_menu', 'module', 'mod_menu', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"2006-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Menu\",\"filename\":\"mod_menu\"}', '', '', NULL, NULL, 0, 0, NULL),
(69, 0, 'mod_popular', 'module', 'mod_popular', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Popular\",\"filename\":\"mod_popular\"}', '', '', NULL, NULL, 0, 0, NULL),
(70, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Quickicon\",\"filename\":\"mod_quickicon\"}', '', '', NULL, NULL, 0, 0, NULL),
(71, 0, 'mod_frontend', 'module', 'mod_frontend', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_frontend\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_FRONTEND_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Frontend\",\"filename\":\"mod_frontend\"}', '', '', NULL, NULL, 0, 0, NULL),
(72, 0, 'mod_messages', 'module', 'mod_messages', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_messages\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Messages\",\"filename\":\"mod_messages\"}', '', '', NULL, NULL, 0, 0, NULL),
(73, 0, 'mod_post_installation_messages', 'module', 'mod_post_installation_messages', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_post_installation_messages\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_POST_INSTALLATION_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PostInstallationMessages\",\"filename\":\"mod_post_installation_messages\"}', '', '', NULL, NULL, 0, 0, NULL),
(74, 0, 'mod_user', 'module', 'mod_user', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_user\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_USER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\User\",\"filename\":\"mod_user\"}', '', '', NULL, NULL, 0, 0, NULL),
(75, 0, 'mod_title', 'module', 'mod_title', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Title\",\"filename\":\"mod_title\"}', '', '', NULL, NULL, 0, 0, NULL),
(76, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Toolbar\",\"filename\":\"mod_toolbar\"}', '', '', NULL, NULL, 0, 0, NULL);
INSERT INTO `oh67l_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `changelogurl`, `folder`, `client_id`, `enabled`, `access`, `protected`, `locked`, `manifest_cache`, `params`, `custom_data`, `checked_out`, `checked_out_time`, `ordering`, `state`, `note`) VALUES
(77, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"2011-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\MultilangStatus\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(78, 0, 'mod_version', 'module', 'mod_version', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"2012-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Version\",\"filename\":\"mod_version\"}', '{\"cache\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(79, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\StatsAdmin\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', NULL, NULL, 0, 0, NULL),
(80, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"2013-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\TagsPopular\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(81, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', '', 0, 1, 1, 0, 1, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"2013-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\TagsSimilar\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(82, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"2017-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Sampledata\",\"filename\":\"mod_sampledata\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(83, 0, 'mod_latestactions', 'module', 'mod_latestactions', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_latestactions\",\"type\":\"module\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_LATESTACTIONS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\LatestActions\",\"filename\":\"mod_latestactions\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(84, 0, 'mod_privacy_dashboard', 'module', 'mod_privacy_dashboard', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_privacy_dashboard\",\"type\":\"module\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PrivacyDashboard\",\"filename\":\"mod_privacy_dashboard\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(85, 0, 'mod_submenu', 'module', 'mod_submenu', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"2006-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Submenu\",\"filename\":\"mod_submenu\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(86, 0, 'mod_privacy_status', 'module', 'mod_privacy_status', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_privacy_status\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_PRIVACY_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PrivacyStatus\",\"filename\":\"mod_privacy_status\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(87, 0, 'mod_guidedtours', 'module', 'mod_guidedtours', '', '', 1, 1, 1, 0, 1, '{\"name\":\"mod_guidedtours\",\"type\":\"module\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"MOD_GUIDEDTOURS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Module\\\\GuidedTours\",\"filename\":\"mod_guidedtours\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(88, 0, 'plg_actionlog_joomla', 'plugin', 'joomla', '', 'actionlog', 0, 1, 1, 0, 1, '{\"name\":\"plg_actionlog_joomla\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Actionlog\\\\Joomla\",\"filename\":\"joomla\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(89, 0, 'plg_api-authentication_basic', 'plugin', 'basic', '', 'api-authentication', 0, 0, 1, 0, 1, '{\"name\":\"plg_api-authentication_basic\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_BASIC_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\ApiAuthentication\\\\Basic\",\"filename\":\"basic\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(90, 0, 'plg_api-authentication_token', 'plugin', 'token', '', 'api-authentication', 0, 1, 1, 0, 1, '{\"name\":\"plg_api-authentication_token\",\"type\":\"plugin\",\"creationDate\":\"2019-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\ApiAuthentication\\\\Token\",\"filename\":\"token\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(91, 0, 'plg_authentication_cookie', 'plugin', 'cookie', '', 'authentication', 0, 1, 1, 0, 1, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"2013-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Cookie\",\"filename\":\"cookie\"}', '', '', NULL, NULL, 1, 0, NULL),
(92, 0, 'plg_authentication_joomla', 'plugin', 'joomla', '', 'authentication', 0, 1, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Joomla\",\"filename\":\"joomla\"}', '', '', NULL, NULL, 2, 0, NULL),
(93, 0, 'plg_authentication_ldap', 'plugin', 'ldap', '', 'authentication', 0, 0, 1, 0, 1, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Ldap\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', NULL, NULL, 3, 0, NULL),
(94, 0, 'plg_behaviour_compat', 'plugin', 'compat', '', 'behaviour', 0, 1, 1, 0, 1, '{\"name\":\"plg_behaviour_compat\",\"type\":\"plugin\",\"creationDate\":\"2023-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_COMPAT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Compat\",\"filename\":\"compat\"}', '{\"classes_aliases\":\"1\",\"es5_assets\":\"1\"}', '', NULL, NULL, 1, 0, NULL),
(95, 0, 'plg_behaviour_taggable', 'plugin', 'taggable', '', 'behaviour', 0, 1, 1, 0, 1, '{\"name\":\"plg_behaviour_taggable\",\"type\":\"plugin\",\"creationDate\":\"2015-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_TAGGABLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Taggable\",\"filename\":\"taggable\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(96, 0, 'plg_behaviour_versionable', 'plugin', 'versionable', '', 'behaviour', 0, 1, 1, 0, 1, '{\"name\":\"plg_behaviour_versionable\",\"type\":\"plugin\",\"creationDate\":\"2015-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_VERSIONABLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Versionable\",\"filename\":\"versionable\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(97, 0, 'plg_content_confirmconsent', 'plugin', 'confirmconsent', '', 'content', 0, 0, 1, 0, 1, '{\"name\":\"plg_content_confirmconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\ConfirmConsent\",\"filename\":\"confirmconsent\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(98, 0, 'plg_content_contact', 'plugin', 'contact', '', 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"2014-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2014 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Contact\",\"filename\":\"contact\"}', '', '', NULL, NULL, 2, 0, NULL),
(99, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', '', 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\EmailCloak\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', NULL, NULL, 3, 0, NULL),
(100, 0, 'plg_content_fields', 'plugin', 'fields', '', 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Fields\",\"filename\":\"fields\"}', '', '', NULL, NULL, 4, 0, NULL),
(101, 0, 'plg_content_finder', 'plugin', 'finder', '', 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"2011-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Finder\",\"filename\":\"finder\"}', '', '', NULL, NULL, 5, 0, NULL),
(102, 0, 'plg_content_joomla', 'plugin', 'joomla', '', 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"2010-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Joomla\",\"filename\":\"joomla\"}', '', '', NULL, NULL, 6, 0, NULL),
(103, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', '', 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\LoadModule\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', NULL, NULL, 7, 0, NULL),
(104, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', '', 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\PageBreak\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', NULL, NULL, 8, 0, NULL),
(105, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', '', 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"2006-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\PageNavigation\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', NULL, NULL, 9, 0, NULL),
(106, 0, 'plg_content_vote', 'plugin', 'vote', '', 'content', 0, 0, 1, 0, 1, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Vote\",\"filename\":\"vote\"}', '', '', NULL, NULL, 10, 0, NULL),
(107, 0, 'plg_editors-xtd_article', 'plugin', 'article', '', 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"2009-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Article\",\"filename\":\"article\"}', '', '', NULL, NULL, 1, 0, NULL),
(108, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', '', 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"2016-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Contact\",\"filename\":\"contact\"}', '', '', NULL, NULL, 2, 0, NULL),
(109, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', '', 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Fields\",\"filename\":\"fields\"}', '', '', NULL, NULL, 3, 0, NULL),
(110, 0, 'plg_editors-xtd_image', 'plugin', 'image', '', 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"2004-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Image\",\"filename\":\"image\"}', '', '', NULL, NULL, 4, 0, NULL),
(111, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', '', 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"2016-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Menu\",\"filename\":\"menu\"}', '', '', NULL, NULL, 5, 0, NULL),
(112, 0, 'plg_editors-xtd_module', 'plugin', 'module', '', 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"2015-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Module\",\"filename\":\"module\"}', '', '', NULL, NULL, 6, 0, NULL),
(113, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', '', 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"2004-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\PageBreak\",\"filename\":\"pagebreak\"}', '', '', NULL, NULL, 7, 0, NULL),
(114, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', '', 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"2006-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\ReadMore\",\"filename\":\"readmore\"}', '', '', NULL, NULL, 8, 0, NULL),
(115, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', '', 'editors', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2021 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"https:\\/\\/codemirror.net\\/\",\"version\":\"6.0.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\CodeMirror\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', NULL, NULL, 1, 0, NULL),
(116, 0, 'plg_editors_none', 'plugin', 'none', '', 'editors', 0, 1, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"2005-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\None\",\"filename\":\"none\"}', '', '', NULL, NULL, 2, 0, NULL),
(117, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', '', 'editors', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-08\",\"author\":\"Tiny Technologies, Inc\",\"copyright\":\"Tiny Technologies, Inc\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"https:\\/\\/www.tiny.cloud\",\"version\":\"6.8.4\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\TinyMCE\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"blocks\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styles\",\"|\",\"blocks\",\"fontfamily\",\"fontsize\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"jtemplate\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', NULL, NULL, 3, 0, NULL),
(118, 0, 'plg_extension_finder', 'plugin', 'finder', '', 'extension', 0, 1, 1, 0, 1, '{\"name\":\"plg_extension_finder\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Finder\",\"filename\":\"finder\"}', '', '', NULL, NULL, 1, 0, NULL),
(119, 0, 'plg_extension_joomla', 'plugin', 'joomla', '', 'extension', 0, 1, 1, 0, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"2010-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Joomla\",\"filename\":\"joomla\"}', '', '', NULL, NULL, 2, 0, NULL),
(120, 0, 'plg_extension_namespacemap', 'plugin', 'namespacemap', '', 'extension', 0, 1, 1, 1, 1, '{\"name\":\"plg_extension_namespacemap\",\"type\":\"plugin\",\"creationDate\":\"2017-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_NAMESPACEMAP_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\NamespaceMap\",\"filename\":\"namespacemap\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(121, 0, 'plg_fields_calendar', 'plugin', 'calendar', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Calendar\",\"filename\":\"calendar\"}', '', '', NULL, NULL, 1, 0, NULL),
(122, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Checkboxes\",\"filename\":\"checkboxes\"}', '', '', NULL, NULL, 2, 0, NULL),
(123, 0, 'plg_fields_color', 'plugin', 'color', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Color\",\"filename\":\"color\"}', '', '', NULL, NULL, 3, 0, NULL),
(124, 0, 'plg_fields_editor', 'plugin', 'editor', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Editor\",\"filename\":\"editor\"}', '{\"buttons\":0,\"width\":\"100%\",\"height\":\"250px\",\"filter\":\"\\\\Joomla\\\\CMS\\\\Component\\\\ComponentHelper::filterText\"}', '', NULL, NULL, 4, 0, NULL),
(125, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Imagelist\",\"filename\":\"imagelist\"}', '', '', NULL, NULL, 5, 0, NULL),
(126, 0, 'plg_fields_integer', 'plugin', 'integer', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Integer\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', NULL, NULL, 6, 0, NULL),
(127, 0, 'plg_fields_list', 'plugin', 'list', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\ListField\",\"filename\":\"list\"}', '', '', NULL, NULL, 7, 0, NULL),
(128, 0, 'plg_fields_media', 'plugin', 'media', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Media\",\"filename\":\"media\"}', '', '', NULL, NULL, 8, 0, NULL),
(129, 0, 'plg_fields_radio', 'plugin', 'radio', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Radio\",\"filename\":\"radio\"}', '', '', NULL, NULL, 9, 0, NULL),
(130, 0, 'plg_fields_sql', 'plugin', 'sql', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\SQL\",\"filename\":\"sql\"}', '', '', NULL, NULL, 10, 0, NULL),
(131, 0, 'plg_fields_subform', 'plugin', 'subform', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_subform\",\"type\":\"plugin\",\"creationDate\":\"2017-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FIELDS_SUBFORM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Subform\",\"filename\":\"subform\"}', '', '', NULL, NULL, 11, 0, NULL),
(132, 0, 'plg_fields_text', 'plugin', 'text', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Text\",\"filename\":\"text\"}', '', '', NULL, NULL, 12, 0, NULL),
(133, 0, 'plg_fields_textarea', 'plugin', 'textarea', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Textarea\",\"filename\":\"textarea\"}', '{\"rows\":10,\"cols\":10,\"maxlength\":\"\",\"filter\":\"\\\\Joomla\\\\CMS\\\\Component\\\\ComponentHelper::filterText\"}', '', NULL, NULL, 13, 0, NULL),
(134, 0, 'plg_fields_url', 'plugin', 'url', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Url\",\"filename\":\"url\"}', '', '', NULL, NULL, 14, 0, NULL),
(135, 0, 'plg_fields_user', 'plugin', 'user', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\User\",\"filename\":\"user\"}', '', '', NULL, NULL, 15, 0, NULL),
(136, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', '', 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\UsergroupList\",\"filename\":\"usergrouplist\"}', '', '', NULL, NULL, 16, 0, NULL),
(137, 0, 'plg_filesystem_local', 'plugin', 'local', '', 'filesystem', 0, 1, 1, 0, 1, '{\"name\":\"plg_filesystem_local\",\"type\":\"plugin\",\"creationDate\":\"2017-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FILESYSTEM_LOCAL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Filesystem\\\\Local\",\"filename\":\"local\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(138, 0, 'plg_finder_categories', 'plugin', 'categories', '', 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Categories\",\"filename\":\"categories\"}', '', '', NULL, NULL, 1, 0, NULL),
(139, 0, 'plg_finder_contacts', 'plugin', 'contacts', '', 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Contacts\",\"filename\":\"contacts\"}', '', '', NULL, NULL, 2, 0, NULL),
(140, 0, 'plg_finder_content', 'plugin', 'content', '', 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Content\",\"filename\":\"content\"}', '', '', NULL, NULL, 3, 0, NULL),
(141, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', '', 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}', '', '', NULL, NULL, 4, 0, NULL),
(142, 0, 'plg_finder_tags', 'plugin', 'tags', '', 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"2013-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Tags\",\"filename\":\"tags\"}', '', '', NULL, NULL, 5, 0, NULL),
(143, 0, 'plg_installer_folderinstaller', 'plugin', 'folderinstaller', '', 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_folderinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Folder\",\"filename\":\"folderinstaller\"}', '', '', NULL, NULL, 2, 0, NULL),
(144, 0, 'plg_installer_override', 'plugin', 'override', '', 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_override\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_OVERRIDE_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Override\",\"filename\":\"override\"}', '', '', NULL, NULL, 4, 0, NULL),
(145, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', '', 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Package\",\"filename\":\"packageinstaller\"}', '', '', NULL, NULL, 1, 0, NULL),
(146, 0, 'plg_installer_urlinstaller', 'plugin', 'urlinstaller', '', 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_urlinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Url\",\"filename\":\"urlinstaller\"}', '', '', NULL, NULL, 3, 0, NULL),
(147, 0, 'plg_installer_webinstaller', 'plugin', 'webinstaller', '', 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_webinstaller\",\"type\":\"plugin\",\"creationDate\":\"2017-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Web\",\"filename\":\"webinstaller\"}', '{\"tab_position\":\"1\"}', '', NULL, NULL, 5, 0, NULL),
(148, 0, 'plg_media-action_crop', 'plugin', 'crop', '', 'media-action', 0, 1, 1, 0, 1, '{\"name\":\"plg_media-action_crop\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_CROP_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Crop\",\"filename\":\"crop\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(149, 0, 'plg_media-action_resize', 'plugin', 'resize', '', 'media-action', 0, 1, 1, 0, 1, '{\"name\":\"plg_media-action_resize\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_RESIZE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Resize\",\"filename\":\"resize\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(150, 0, 'plg_media-action_rotate', 'plugin', 'rotate', '', 'media-action', 0, 1, 1, 0, 1, '{\"name\":\"plg_media-action_rotate\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_ROTATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Rotate\",\"filename\":\"rotate\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(151, 0, 'plg_privacy_actionlogs', 'plugin', 'actionlogs', '', 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Actionlogs\",\"filename\":\"actionlogs\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(152, 0, 'plg_privacy_consents', 'plugin', 'consents', '', 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_consents\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Consents\",\"filename\":\"consents\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(153, 0, 'plg_privacy_contact', 'plugin', 'contact', '', 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_contact\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Contact\",\"filename\":\"contact\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(154, 0, 'plg_privacy_content', 'plugin', 'content', '', 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_content\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Content\",\"filename\":\"content\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(155, 0, 'plg_privacy_message', 'plugin', 'message', '', 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_message\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Message\",\"filename\":\"message\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(156, 0, 'plg_privacy_user', 'plugin', 'user', '', 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_user\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_USER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\User\",\"filename\":\"user\"}', '{}', '', NULL, NULL, 6, 0, NULL);
INSERT INTO `oh67l_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `changelogurl`, `folder`, `client_id`, `enabled`, `access`, `protected`, `locked`, `manifest_cache`, `params`, `custom_data`, `checked_out`, `checked_out_time`, `ordering`, `state`, `note`) VALUES
(157, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', '', 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Joomlaupdate\",\"filename\":\"joomlaupdate\"}', '', '', NULL, NULL, 1, 0, NULL),
(158, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', '', 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Extensionupdate\",\"filename\":\"extensionupdate\"}', '', '', NULL, NULL, 2, 0, NULL),
(159, 0, 'plg_quickicon_overridecheck', 'plugin', 'overridecheck', '', 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_overridecheck\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_OVERRIDECHECK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\OverrideCheck\",\"filename\":\"overridecheck\"}', '', '', NULL, NULL, 3, 0, NULL),
(160, 0, 'plg_quickicon_downloadkey', 'plugin', 'downloadkey', '', 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_downloadkey\",\"type\":\"plugin\",\"creationDate\":\"2019-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_DOWNLOADKEY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Downloadkey\",\"filename\":\"downloadkey\"}', '', '', NULL, NULL, 4, 0, NULL),
(161, 0, 'plg_quickicon_privacycheck', 'plugin', 'privacycheck', '', 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_privacycheck\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\PrivacyCheck\",\"filename\":\"privacycheck\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(162, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', '', 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"2016-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\PhpVersionCheck\",\"filename\":\"phpversioncheck\"}', '', '', NULL, NULL, 6, 0, NULL),
(163, 0, 'plg_quickicon_eos', 'plugin', 'eos', '', 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_eos\",\"type\":\"plugin\",\"creationDate\":\"2023-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.4.0\",\"description\":\"PLG_QUICKICON_EOS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Eos\",\"filename\":\"eos\"}', '', '', NULL, NULL, 7, 0, NULL),
(164, 0, 'plg_sampledata_blog', 'plugin', 'blog', '', 'sampledata', 0, 1, 1, 0, 1, '{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"2017-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\SampleData\\\\Blog\",\"filename\":\"blog\"}', '', '', NULL, NULL, 1, 0, NULL),
(165, 0, 'plg_sampledata_multilang', 'plugin', 'multilang', '', 'sampledata', 0, 1, 1, 0, 1, '{\"name\":\"plg_sampledata_multilang\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SAMPLEDATA_MULTILANG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\SampleData\\\\MultiLanguage\",\"filename\":\"multilang\"}', '', '', NULL, NULL, 2, 0, NULL),
(166, 0, 'plg_schemaorg_article', 'plugin', 'article', '', 'schemaorg', 0, 1, 1, 0, 0, '{\"name\":\"plg_schemaorg_article\",\"type\":\"plugin\",\"creationDate\":\"2024-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.0\",\"description\":\"PLG_SCHEMAORG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Article\",\"filename\":\"article\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(167, 0, 'plg_schemaorg_blogposting', 'plugin', 'blogposting', '', 'schemaorg', 0, 1, 1, 0, 0, '{\"name\":\"plg_schemaorg_blogposting\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_BLOGPOSTING_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\BlogPosting\",\"filename\":\"blogposting\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(168, 0, 'plg_schemaorg_book', 'plugin', 'book', '', 'schemaorg', 0, 1, 1, 0, 0, '{\"name\":\"plg_schemaorg_book\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_BOOK_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Book\",\"filename\":\"book\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(169, 0, 'plg_schemaorg_event', 'plugin', 'event', '', 'schemaorg', 0, 1, 1, 0, 0, '{\"name\":\"plg_schemaorg_event\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_EVENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Event\",\"filename\":\"event\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(170, 0, 'plg_schemaorg_jobposting', 'plugin', 'jobposting', '', 'schemaorg', 0, 1, 1, 0, 0, '{\"name\":\"plg_schemaorg_jobposting\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_JOBPOSTING_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\JobPosting\",\"filename\":\"jobposting\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(171, 0, 'plg_schemaorg_organization', 'plugin', 'organization', '', 'schemaorg', 0, 1, 1, 0, 0, '{\"name\":\"plg_schemaorg_organization\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_ORGANIZATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Organization\",\"filename\":\"organization\"}', '{}', '', NULL, NULL, 6, 0, NULL),
(172, 0, 'plg_schemaorg_person', 'plugin', 'person', '', 'schemaorg', 0, 1, 1, 0, 0, '{\"name\":\"plg_schemaorg_person\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_PERSON_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Person\",\"filename\":\"person\"}', '{}', '', NULL, NULL, 7, 0, NULL),
(173, 0, 'plg_schemaorg_recipe', 'plugin', 'recipe', '', 'schemaorg', 0, 1, 1, 0, 0, '{\"name\":\"plg_schemaorg_recipe\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_RECIPE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Recipe\",\"filename\":\"recipe\"}', '{}', '', NULL, NULL, 8, 0, NULL),
(174, 0, 'plg_schemaorg_custom', 'plugin', 'custom', '', 'schemaorg', 0, 1, 1, 0, 0, '{\"name\":\"plg_schemaorg_custom\",\"type\":\"plugin\",\"creationDate\":\"2024-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.0\",\"description\":\"PLG_SCHEMAORG_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Custom\",\"filename\":\"custom\"}', '{}', '', NULL, NULL, 9, 0, NULL),
(175, 0, 'plg_system_accessibility', 'plugin', 'accessibility', '', 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_accessibility\",\"type\":\"plugin\",\"creationDate\":\"2020-02-15\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_ACCESSIBILITY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Accessibility\",\"filename\":\"accessibility\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(176, 0, 'plg_system_actionlogs', 'plugin', 'actionlogs', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\ActionLogs\",\"filename\":\"actionlogs\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(177, 0, 'plg_system_cache', 'plugin', 'cache', '', 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"2007-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Cache\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', NULL, NULL, 3, 0, NULL),
(178, 0, 'plg_system_debug', 'plugin', 'debug', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"2006-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Debug\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', NULL, NULL, 4, 0, NULL),
(179, 0, 'plg_system_fields', 'plugin', 'fields', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Fields\",\"filename\":\"fields\"}', '', '', NULL, NULL, 5, 0, NULL),
(180, 0, 'plg_system_highlight', 'plugin', 'highlight', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Highlight\",\"filename\":\"highlight\"}', '', '', NULL, NULL, 6, 0, NULL),
(181, 0, 'plg_system_httpheaders', 'plugin', 'httpheaders', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_httpheaders\",\"type\":\"plugin\",\"creationDate\":\"2017-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_HTTPHEADERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Httpheaders\",\"filename\":\"httpheaders\"}', '{}', '', NULL, NULL, 7, 0, NULL),
(182, 0, 'plg_system_jooa11y', 'plugin', 'jooa11y', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_jooa11y\",\"type\":\"plugin\",\"creationDate\":\"2022-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_JOOA11Y_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Jooa11y\",\"filename\":\"jooa11y\"}', '', '', NULL, NULL, 8, 0, NULL),
(183, 0, 'plg_system_languagecode', 'plugin', 'languagecode', '', 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"2011-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\LanguageCode\",\"filename\":\"languagecode\"}', '', '', NULL, NULL, 9, 0, NULL),
(184, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', '', 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"2010-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\LanguageFilter\",\"filename\":\"languagefilter\"}', '', '', NULL, NULL, 10, 0, NULL),
(185, 0, 'plg_system_log', 'plugin', 'log', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Log\",\"filename\":\"log\"}', '', '', NULL, NULL, 11, 0, NULL),
(186, 0, 'plg_system_logout', 'plugin', 'logout', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Logout\",\"filename\":\"logout\"}', '', '', NULL, NULL, 12, 0, NULL),
(187, 0, 'plg_system_privacyconsent', 'plugin', 'privacyconsent', '', 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\PrivacyConsent\",\"filename\":\"privacyconsent\"}', '{}', '', NULL, NULL, 14, 0, NULL),
(188, 0, 'plg_system_redirect', 'plugin', 'redirect', '', 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Redirect\",\"filename\":\"redirect\"}', '', '', NULL, NULL, 15, 0, NULL),
(189, 0, 'plg_system_remember', 'plugin', 'remember', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Remember\",\"filename\":\"remember\"}', '', '', NULL, NULL, 16, 0, NULL),
(190, 0, 'plg_system_schedulerunner', 'plugin', 'schedulerunner', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_schedulerunner\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_SCHEDULERUNNER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\ScheduleRunner\",\"filename\":\"schedulerunner\"}', '{}', '', NULL, NULL, 17, 0, NULL),
(191, 0, 'plg_system_schemaorg', 'plugin', 'schemaorg', '', 'system', 0, 1, 1, 0, 0, '{\"name\":\"plg_system_schemaorg\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SYSTEM_SCHEMAORG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Schemaorg\",\"filename\":\"schemaorg\"}', '{}', '', NULL, NULL, 18, 0, NULL),
(192, 0, 'plg_system_sef', 'plugin', 'sef', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Sef\",\"filename\":\"sef\"}', '{\"domain\":\"\",\"indexphp\":\"1\",\"trailingslash\":\"0\",\"enforcesuffix\":\"1\",\"strictrouting\":\"1\"}', '', NULL, NULL, 19, 0, NULL),
(193, 0, 'plg_system_shortcut', 'plugin', 'shortcut', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_shortcut\",\"type\":\"plugin\",\"creationDate\":\"2022-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_SHORTCUT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Shortcut\",\"filename\":\"shortcut\"}', '{}', '', NULL, NULL, 21, 0, NULL),
(194, 0, 'plg_system_skipto', 'plugin', 'skipto', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_skipto\",\"type\":\"plugin\",\"creationDate\":\"2020-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_SKIPTO_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Skipto\",\"filename\":\"skipto\"}', '{}', '', NULL, NULL, 22, 0, NULL),
(195, 0, 'plg_system_stats', 'plugin', 'stats', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"2013-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Stats\",\"filename\":\"stats\"}', '{\"mode\":1,\"lastrun\":1738167614,\"unique_id\":\"4f759609c9260dc160d123cb5422b74a8225f00a\",\"interval\":12}', '', NULL, NULL, 23, 0, NULL),
(196, 0, 'plg_system_task_notification', 'plugin', 'tasknotification', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_task_notification\",\"type\":\"plugin\",\"creationDate\":\"2021-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_TASK_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\TaskNotification\",\"filename\":\"tasknotification\"}', '', '', NULL, NULL, 24, 0, NULL),
(197, 0, 'plg_system_webauthn', 'plugin', 'webauthn', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2019-07-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_WEBAUTHN_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Webauthn\",\"filename\":\"webauthn\"}', '{}', '', NULL, NULL, 26, 0, NULL),
(198, 0, 'plg_task_check_files', 'plugin', 'checkfiles', '', 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_check_files\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_CHECK_FILES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Checkfiles\",\"filename\":\"checkfiles\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(199, 0, 'plg_task_deleteactionlogs', 'plugin', 'deleteactionlogs', '', 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_deleteactionlogs\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_DELETEACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\DeleteActionLogs\",\"filename\":\"deleteactionlogs\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(200, 0, 'plg_task_globalcheckin', 'plugin', 'globalcheckin', '', 'task', 0, 1, 1, 0, 0, '{\"name\":\"plg_task_globalcheckin\",\"type\":\"plugin\",\"creationDate\":\"2023-06-22\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_GLOBALCHECKIN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Globalcheckin\",\"filename\":\"globalcheckin\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(201, 0, 'plg_task_requests', 'plugin', 'requests', '', 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_requests\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_REQUESTS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Requests\",\"filename\":\"requests\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(202, 0, 'plg_task_privacyconsent', 'plugin', 'privacyconsent', '', 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\PrivacyConsent\",\"filename\":\"privacyconsent\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(203, 0, 'plg_task_rotatelogs', 'plugin', 'rotatelogs', '', 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_rotatelogs\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_ROTATELOGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\RotateLogs\",\"filename\":\"rotatelogs\"}', '{}', '', NULL, NULL, 6, 0, NULL),
(204, 0, 'plg_task_sessiongc', 'plugin', 'sessiongc', '', 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"2023-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\SessionGC\",\"filename\":\"sessiongc\"}', '{}', '', NULL, NULL, 7, 0, NULL),
(205, 0, 'plg_task_site_status', 'plugin', 'sitestatus', '', 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_site_status\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_SITE_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\SiteStatus\",\"filename\":\"sitestatus\"}', '{}', '', NULL, NULL, 8, 0, NULL),
(206, 0, 'plg_task_updatenotification', 'plugin', 'updatenotification', '', 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\UpdateNotification\",\"filename\":\"updatenotification\"}', '{}', '', NULL, NULL, 9, 0, NULL),
(207, 0, 'plg_multifactorauth_totp', 'plugin', 'totp', '', 'multifactorauth', 0, 1, 1, 0, 1, '{\"name\":\"plg_multifactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"2013-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Totp\",\"filename\":\"totp\"}', '', '', NULL, NULL, 1, 0, NULL),
(208, 0, 'plg_multifactorauth_yubikey', 'plugin', 'yubikey', '', 'multifactorauth', 0, 1, 1, 0, 1, '{\"name\":\"plg_multifactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"2013-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Yubikey\",\"filename\":\"yubikey\"}', '', '', NULL, NULL, 2, 0, NULL),
(209, 0, 'plg_multifactorauth_webauthn', 'plugin', 'webauthn', '', 'multifactorauth', 0, 1, 1, 0, 1, '{\"name\":\"plg_multifactorauth_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_WEBAUTHN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Webauthn\",\"filename\":\"webauthn\"}', '', '', NULL, NULL, 3, 0, NULL),
(210, 0, 'plg_multifactorauth_email', 'plugin', 'email', '', 'multifactorauth', 0, 1, 1, 0, 1, '{\"name\":\"plg_multifactorauth_email\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_EMAIL_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Email\",\"filename\":\"email\"}', '', '', NULL, NULL, 4, 0, NULL),
(211, 0, 'plg_multifactorauth_fixed', 'plugin', 'fixed', '', 'multifactorauth', 0, 0, 1, 0, 1, '{\"name\":\"plg_multifactorauth_fixed\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_FIXED_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Fixed\",\"filename\":\"fixed\"}', '', '', NULL, NULL, 5, 0, NULL),
(212, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', '', 'user', 0, 0, 1, 0, 1, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"2009-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\ContactCreator\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"4\",\"autopublish\":\"0\"}', '', NULL, NULL, 1, 0, NULL),
(213, 0, 'plg_user_joomla', 'plugin', 'joomla', '', 'user', 0, 1, 1, 0, 1, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"2006-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Joomla\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', NULL, NULL, 2, 0, NULL),
(214, 0, 'plg_user_profile', 'plugin', 'profile', '', 'user', 0, 0, 1, 0, 1, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"2008-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Profile\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', NULL, NULL, 3, 0, NULL),
(215, 0, 'plg_user_terms', 'plugin', 'terms', '', 'user', 0, 0, 1, 0, 1, '{\"name\":\"plg_user_terms\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TERMS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Terms\",\"filename\":\"terms\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(216, 0, 'plg_user_token', 'plugin', 'token', '', 'user', 0, 1, 1, 0, 1, '{\"name\":\"plg_user_token\",\"type\":\"plugin\",\"creationDate\":\"2019-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Token\",\"filename\":\"token\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(217, 0, 'plg_webservices_banners', 'plugin', 'banners', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_banners\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Banners\",\"filename\":\"banners\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(218, 0, 'plg_webservices_config', 'plugin', 'config', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_config\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Config\",\"filename\":\"config\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(219, 0, 'plg_webservices_contact', 'plugin', 'contact', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_contact\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Contact\",\"filename\":\"contact\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(220, 0, 'plg_webservices_content', 'plugin', 'content', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_content\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Content\",\"filename\":\"content\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(221, 0, 'plg_webservices_installer', 'plugin', 'installer', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_installer\",\"type\":\"plugin\",\"creationDate\":\"2020-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Installer\",\"filename\":\"installer\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(222, 0, 'plg_webservices_languages', 'plugin', 'languages', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_languages\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Languages\",\"filename\":\"languages\"}', '{}', '', NULL, NULL, 6, 0, NULL),
(223, 0, 'plg_webservices_media', 'plugin', 'media', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_media\",\"type\":\"plugin\",\"creationDate\":\"2021-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"PLG_WEBSERVICES_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Media\",\"filename\":\"media\"}', '{}', '', NULL, NULL, 7, 0, NULL),
(224, 0, 'plg_webservices_menus', 'plugin', 'menus', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_menus\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Menus\",\"filename\":\"menus\"}', '{}', '', NULL, NULL, 7, 0, NULL),
(225, 0, 'plg_webservices_messages', 'plugin', 'messages', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_messages\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Messages\",\"filename\":\"messages\"}', '{}', '', NULL, NULL, 8, 0, NULL),
(226, 0, 'plg_webservices_modules', 'plugin', 'modules', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_modules\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Modules\",\"filename\":\"modules\"}', '{}', '', NULL, NULL, 9, 0, NULL),
(227, 0, 'plg_webservices_newsfeeds', 'plugin', 'newsfeeds', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}', '{}', '', NULL, NULL, 10, 0, NULL),
(228, 0, 'plg_webservices_plugins', 'plugin', 'plugins', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_plugins\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Plugins\",\"filename\":\"plugins\"}', '{}', '', NULL, NULL, 11, 0, NULL),
(229, 0, 'plg_webservices_privacy', 'plugin', 'privacy', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_privacy\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Privacy\",\"filename\":\"privacy\"}', '{}', '', NULL, NULL, 12, 0, NULL),
(230, 0, 'plg_webservices_redirect', 'plugin', 'redirect', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_redirect\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Redirect\",\"filename\":\"redirect\"}', '{}', '', NULL, NULL, 13, 0, NULL),
(231, 0, 'plg_webservices_tags', 'plugin', 'tags', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_tags\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Tags\",\"filename\":\"tags\"}', '{}', '', NULL, NULL, 14, 0, NULL),
(232, 0, 'plg_webservices_templates', 'plugin', 'templates', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_templates\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Templates\",\"filename\":\"templates\"}', '{}', '', NULL, NULL, 15, 0, NULL),
(233, 0, 'plg_webservices_users', 'plugin', 'users', '', 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_users\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_USERS_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Users\",\"filename\":\"users\"}', '{}', '', NULL, NULL, 16, 0, NULL),
(234, 0, 'plg_workflow_featuring', 'plugin', 'featuring', '', 'workflow', 0, 1, 1, 0, 1, '{\"name\":\"plg_workflow_featuring\",\"type\":\"plugin\",\"creationDate\":\"2020-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_FEATURING_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Featuring\",\"filename\":\"featuring\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(235, 0, 'plg_workflow_notification', 'plugin', 'notification', '', 'workflow', 0, 1, 1, 0, 1, '{\"name\":\"plg_workflow_notification\",\"type\":\"plugin\",\"creationDate\":\"2020-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Notification\",\"filename\":\"notification\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(236, 0, 'plg_workflow_publishing', 'plugin', 'publishing', '', 'workflow', 0, 1, 1, 0, 1, '{\"name\":\"plg_workflow_publishing\",\"type\":\"plugin\",\"creationDate\":\"2020-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_PUBLISHING_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Publishing\",\"filename\":\"publishing\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(237, 0, 'plg_system_guidedtours', 'plugin', 'guidedtours', '', 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_guidedtours\",\"type\":\"plugin\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"PLG_SYSTEM_GUIDEDTOURS_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\GuidedTours\",\"filename\":\"guidedtours\"}', '{}', '', NULL, NULL, 15, 0, NULL),
(238, 0, 'atum', 'template', 'atum', '', '', 1, 1, 1, 0, 1, '{\"name\":\"atum\",\"type\":\"template\",\"creationDate\":\"2016-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ATUM_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}', '', '', NULL, NULL, 0, 0, NULL),
(239, 0, 'cassiopeia', 'template', 'cassiopeia', '', '', 0, 1, 1, 0, 1, '{\"name\":\"cassiopeia\",\"type\":\"template\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_CASSIOPEIA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}', '{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":0,\"backTop\":0}', '', NULL, NULL, 0, 0, NULL),
(240, 0, 'files_joomla', 'file', 'joomla', '', '', 0, 1, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"2025-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.2.3\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"changelogurl\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(241, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', '', 0, 1, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"2025-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.2.3.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"changelogurl\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', NULL, NULL, 0, 0, NULL);
INSERT INTO `oh67l_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `changelogurl`, `folder`, `client_id`, `enabled`, `access`, `protected`, `locked`, `manifest_cache`, `params`, `custom_data`, `checked_out`, `checked_out_time`, `ordering`, `state`, `note`) VALUES
(242, 241, 'English (en-GB)', 'language', 'en-GB', '', '', 0, 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2025-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.2.3\",\"description\":\"en-GB site language\",\"group\":\"\",\"changelogurl\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(243, 241, 'English (en-GB)', 'language', 'en-GB', '', '', 1, 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2025-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.2.3\",\"description\":\"en-GB administrator language\",\"group\":\"\",\"changelogurl\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(244, 241, 'English (en-GB)', 'language', 'en-GB', '', '', 3, 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2025-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.2.3\",\"description\":\"en-GB api language\",\"group\":\"\",\"changelogurl\":\"\"}', '', '', NULL, NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_fields`
--

CREATE TABLE `oh67l_fields` (
  `id` int UNSIGNED NOT NULL,
  `asset_id` int UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `required` tinyint NOT NULL DEFAULT '0',
  `only_use_in_subform` tinyint NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL,
  `created_user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `modified_by` int UNSIGNED NOT NULL DEFAULT '0',
  `access` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_fields_categories`
--

CREATE TABLE `oh67l_fields_categories` (
  `field_id` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_fields_groups`
--

CREATE TABLE `oh67l_fields_groups` (
  `id` int UNSIGNED NOT NULL,
  `asset_id` int UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `modified_by` int UNSIGNED NOT NULL DEFAULT '0',
  `access` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_fields_values`
--

CREATE TABLE `oh67l_fields_values` (
  `field_id` int UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_finder_filters`
--

CREATE TABLE `oh67l_finder_filters` (
  `filter_id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `map_count` int UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `params` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_finder_links`
--

CREATE TABLE `oh67l_finder_links` (
  `link_id` int UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `indexdate` datetime NOT NULL,
  `md5sum` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint NOT NULL DEFAULT '1',
  `state` int NOT NULL DEFAULT '1',
  `access` int NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `publish_start_date` datetime DEFAULT NULL,
  `publish_end_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int NOT NULL,
  `object` mediumblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_finder_links`
--

INSERT INTO `oh67l_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(1, 'index.php?option=com_content&view=article&id=1', 'index.php?option=com_content&view=article&id=1:home&catid=2', 'Home', ' Administració Usuaris Rols Dades geogràfiques Transportistes Envíament Clients Ordres d\'enviament 9 Recepció Proveïdors Estats Ordres Estats Línia Productes Lots Magatzem Gestió de magatzem Invertaris Incidències Moviments Tancar Llistat de Transportistes Nom DNI/NIF Telèfon Correu Netejar Filtrar Tria una opció Esborrar Accions en lot Aplicar Crear ID Nom DNI/NIF Telèfon Correu Accions 1001 DHL 68458699G 639639639 carlos2@dhl.com 1002 DHL 68458699G 639639639 carlos2@dhl.com 1003 DHL 68458699G 639639639 carlos2@dhl.com 1004 DHL 68458699G 639639639 carlos2@dhl.com 1005 DHL 68458699G 639639639 carlos2@dhl.com 1007 DHL 68458699G 639639639 carlos2@dhl.com 1008 DHL 68458699G 639639639 carlos2@dhl.com 1009 DHL 68458699G 639639639 carlos2@dhl.com 1010 DHL 68458699G 639639639 carlos2@dhl.com 1011 DHL 68458699G 639639639 carlos2@dhl.com 1012 DHL 68458699G 639639639 carlos2@dhl.com 1013 DHL 68458699G 639639639 carlos2@dhl.com 1014 DHL 68458699G 639639639 carlos2@dhl.com 1015 DHL 68458699G 639639639 carlos2@dhl.com « 1 2 3 » ', '2025-01-28 20:04:37', '7cfad311b444746c0085e17913982a28', 1, 0, 1, '*', '2025-01-28 19:52:41', NULL, '2025-01-28 19:52:41', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a313034343a222041646d696e69737472616369c3b3205573756172697320526f6c732044616465732067656f6772c3a0666971756573205472616e73706f7274697374657320456e76c3ad616d656e7420436c69656e7473204f7264726573206427656e7669616d656e7420392052656365706369c3b32050726f7665c3af646f727320457374617473204f726472657320457374617473204cc3ad6e69612050726f647563746573204c6f7473204d616761747a656d204765737469c3b3206465206d616761747a656d20496e766572746172697320496e636964c3a86e63696573204d6f76696d656e74732054616e636172204c6c6973746174206465205472616e73706f72746973746573204e6f6d20444e492f4e49462054656cc3a8666f6e20436f72726575204e6574656a61722046696c74726172205472696120756e61206f706369c3b3204573626f7272617220416363696f6e7320656e206c6f742041706c69636172204372656172204944204e6f6d20444e492f4e49462054656cc3a8666f6e20436f7272657520416363696f6e7320313030312044484c2036383435383639394720363339363339363339206361726c6f73324064686c2e636f6d20313030322044484c2036383435383639394720363339363339363339206361726c6f73324064686c2e636f6d20313030332044484c2036383435383639394720363339363339363339206361726c6f73324064686c2e636f6d20313030342044484c2036383435383639394720363339363339363339206361726c6f73324064686c2e636f6d20313030352044484c2036383435383639394720363339363339363339206361726c6f73324064686c2e636f6d20313030372044484c2036383435383639394720363339363339363339206361726c6f73324064686c2e636f6d20313030382044484c2036383435383639394720363339363339363339206361726c6f73324064686c2e636f6d20313030392044484c2036383435383639394720363339363339363339206361726c6f73324064686c2e636f6d20313031302044484c2036383435383639394720363339363339363339206361726c6f73324064686c2e636f6d20313031312044484c2036383435383639394720363339363339363339206361726c6f73324064686c2e636f6d20313031322044484c2036383435383639394720363339363339363339206361726c6f73324064686c2e636f6d20313031332044484c2036383435383639394720363339363339363339206361726c6f73324064686c2e636f6d20313031342044484c2036383435383639394720363339363339363339206361726c6f73324064686c2e636f6d20313031352044484c2036383435383639394720363339363339363339206361726c6f73324064686c2e636f6d20c2ab20312032203320c2bb20223b693a333b613a32373a7b733a323a226964223b693a313b733a353a22616c696173223b733a343a22686f6d65223b733a373a2273756d6d617279223b733a393630373a223c64697620636c6173733d22636f6e7461696e65722d666c756964223e0d0a3c64697620636c6173733d22726f77223e0d0a3c64697620636c6173733d22636f6c2d313220636f6c2d6c672d3220666f6e73426c6175466f7363206a7573746966792d636f6e74656e742d63656e74657220666c65782d636f6c756d6e2070782d30223e0d0a3c64697620636c6173733d22642d666c657820616c69676e2d6974656d732d63656e746572206a7573746966792d636f6e74656e742d6265747765656e223e0d0a3c64697620636c6173733d22666f746f20616c69676e2d6974656d732d63656e746572206a7573746966792d636f6e74656e742d63656e746572223e3c696d6720636c6173733d22666c6f61742d6e6f6e6522207372633d22696d616765732f6c6f676f5f666f6f746572322e706e67236a6f6f6d6c61496d6167653a2f2f6c6f63616c2d696d616765732f6c6f676f5f666f6f746572322e706e673f77696474683d32303026616d703b6865696768743d313130222077696474683d2232303022206865696768743d22313130223e3c2f6469763e0d0a3c212d2d2068616d62757267756573697461202d2d3e203c627574746f6e20636c6173733d2262746e2020642d6c672d6e6f6e6520746578742d656e642066732d3120736861646f7720646176616e742220747970653d22627574746f6e2220646174612d62732d746f67676c653d22636f6c6c617073652220646174612d62732d7461726765743d22236d656e754e61762220617269612d657870616e6465643d2266616c73652220617269612d636f6e74726f6c733d226d656e754e6176223e203c2f627574746f6e3e3c2f6469763e0d0a3c6469762069643d226d656e754e61762220636c6173733d22636f6c6c6170736520642d6c672d626c6f636b20706f736974696f6e2d72656c617469766520646176616e74223e3c6e617620636c6173733d226e617620666c65782d636f6c756d6e223e3c6120636c6173733d226e61762d6c696e6b202070792d3320626f726465722d746f702070782d31206e6f506f696e7465722220687265663d2223223e2041646d696e69737472616369c3b3203c2f613e203c6120636c6173733d226e61762d6c696e6b202070792d3220666f6e73426c6175436c617220626f726465722d746f7020626f726465722d626f74746f6d206876622220687265663d2223223e557375617269733c2f613e203c6120636c6173733d226e61762d6c696e6b202070792d3220666f6e73426c6175436c617220626f726465722d626f74746f6d206876622220687265663d2223223e526f6c733c2f613e203c6120636c6173733d226e61762d6c696e6b202070792d3220666f6e73426c6175436c617220626f726465722d626f74746f6d206876622220687265663d2223223e44616465732067656f6772c3a06669717565733c2f613e203c6120636c6173733d226e61762d6c696e6b202070792d3220666f6e734772697344696620626f726465722d626f74746f6d2061637469752070782d302220687265663d2223223e205472616e73706f727469737465733c2f613e203c6120636c6173733d226e61762d6c696e6b202070792d3320626f726465722d746f7020626f726465722d626f74746f6d2070782d31206e6f506f696e7465722220687265663d2223223e20456e76c3ad616d656e74203c2f613e203c6120636c6173733d226e61762d6c696e6b202070792d3220666f6e73426c6175436c617220626f726465722d746f7020626f726465722d626f74746f6d206876622220687265663d2223223e436c69656e74733c2f613e203c6120636c6173733d226e61762d6c696e6b202070792d3220666f6e73426c6175436c617220626f726465722d626f74746f6d206876622220687265663d2223223e4f7264726573206427656e7669616d656e74203c7370616e20636c6173733d2262672d64616e67657220726f756e6465642d352070782d3320206e756d223e393c2f7370616e3e3c2f613e203c6120636c6173733d226e61762d6c696e6b202070792d3320626f726465722d746f7020626f726465722d626f74746f6d2070782d31206e6f506f696e7465722220687265663d2223223e2052656365706369c3b3203c2f613e203c6120636c6173733d226e61762d6c696e6b202070792d3220666f6e73426c6175436c617220626f726465722d746f7020626f726465722d626f74746f6d206876622220687265663d2223223e50726f7665c3af646f72733c2f613e203c6120636c6173733d226e61762d6c696e6b202070792d3220666f6e73426c6175436c617220626f726465722d626f74746f6d206876622220687265663d2223223e457374617473204f72647265733c2f613e203c6120636c6173733d226e61762d6c696e6b202070792d3220666f6e73426c6175436c617220626f726465722d626f74746f6d206876622220687265663d2223223e457374617473204cc3ad6e69613c2f613e203c6120636c6173733d226e61762d6c696e6b202070792d3220666f6e73426c6175436c617220626f726465722d626f74746f6d206876622220687265663d2223223e50726f6475637465733c2f613e203c6120636c6173733d226e61762d6c696e6b202070792d3220666f6e73426c6175436c617220626f726465722d626f74746f6d206876622220687265663d2223223e4c6f74733c2f613e203c6120636c6173733d226e61762d6c696e6b202070792d3320626f726465722d746f7020626f726465722d626f74746f6d2070782d31206e6f506f696e7465722220687265663d2223223e204d616761747a656d203c2f613e203c6120636c6173733d226e61762d6c696e6b202070792d3120666f6e73426c6175436c617220626f726465722d746f7020626f726465722d626f74746f6d206876622220687265663d2223223e4765737469c3b3206465206d616761747a656d3c2f613e203c6120636c6173733d226e61762d6c696e6b202070792d3220666f6e73426c6175436c617220626f726465722d626f74746f6d206876622220687265663d2223223e496e76657274617269733c2f613e203c6120636c6173733d226e61762d6c696e6b202070792d3220666f6e73426c6175436c617220626f726465722d626f74746f6d206876622220687265663d2223223e496e636964c3a86e636965733c2f613e203c6120636c6173733d226e61762d6c696e6b202070792d3220666f6e73426c6175436c617220626f726465722d626f74746f6d206876622220687265663d2223223e4d6f76696d656e74733c2f613e203c6120636c6173733d226e61762d6c696e6b202070792d322062672d64616e67657220626f726465722d626f74746f6d206876622220687265663d2223223e2054616e636172203c2f613e3c2f6e61763e3c2f6469763e0d0a3c2f6469763e0d0a3c212d2d74c3ad746f6c2d2d3e0d0a3c64697620636c6173733d22636f6c2d313220636f6c2d6c672d313020702d30223e0d0a3c64697620636c6173733d22666f6e735461726f6e6a61223e0d0a3c683120636c6173733d22746578742d63656e746572202070792d34206d2d302066732d342066772d626f6c646572223e4c6c6973746174206465205472616e73706f727469737465733c2f68313e0d0a3c2f6469763e0d0a3c212d2d66696c747265732d2d3e0d0a3c64697620636c6173733d22636f6e7461696e65722d666c75696420666f6e7347726973223e0d0a3c64697620636c6173733d22726f7720702d32223e0d0a3c64697620636c6173733d22636f6c2d313220636f6c2d6d642d3620636f6c2d786c2d3420702d32223e3c6c6162656c20636c6173733d22666f726d2d6c6162656c223e4e6f6d3c2f6c6162656c3e203c696e70757420636c6173733d22666f726d2d636f6e74726f6c2220747970653d2274657874223e3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d313220636f6c2d6d642d3620636f6c2d786c2d3420702d32223e3c6c6162656c20636c6173733d22666f726d2d6c6162656c223e444e492f4e49463c2f6c6162656c3e203c696e70757420636c6173733d22666f726d2d636f6e74726f6c2220747970653d2274657874223e3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d313220636f6c2d6d642d3620636f6c2d786c2d3420702d32223e3c6c6162656c20636c6173733d22666f726d2d6c6162656c223e54656cc3a8666f6e3c2f6c6162656c3e203c696e70757420636c6173733d22666f726d2d636f6e74726f6c2220747970653d2274657874223e3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d313220636f6c2d6d642d3620636f6c2d786c2d3420702d32223e3c6c6162656c20636c6173733d22666f726d2d6c6162656c223e436f727265753c2f6c6162656c3e203c696e70757420636c6173733d22666f726d2d636f6e74726f6c2220747970653d2274657874223e3c2f6469763e0d0a3c212d2d626f746f2d2d3e0d0a3c64697620636c6173733d22636f6e7461696e65722d627574746f6e2d66696c7465722070792d3220746578742d656e64223e3c627574746f6e20636c6173733d222062746e2062746e2d7365636f6e64617279223e204e6574656a61723c2f627574746f6e3e203c627574746f6e20636c6173733d222062746e2061706c69636172223e2046696c74726172203c2f627574746f6e3e3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6e7461696e65722d666c756964223e0d0a3c64697620636c6173733d22726f7720726f756e6465642d34223e0d0a3c64697620636c6173733d22636f6c2d31322070742d33223e0d0a3c64697620636c6173733d22636f6e7461696e65722d666c756964223e0d0a3c64697620636c6173733d22726f7720666f6e734772697344696620726f756e6465642d32223e0d0a3c64697620636c6173733d22636f6c2d362070792d32223e0d0a3c64697620636c6173733d22696e7075742d67726f757020626f7264657220726f756e6465642d322073656c656374223e0d0a3c64697620636c6173733d22666f726d2d666c6f6174696e6720726f756e6465642d32223e3c73656c65637420636c6173733d22666f726d2d73656c656374223e0d0a3c6f7074696f6e2073656c65637465643d2273656c6563746564223e5472696120756e61206f706369c3b33c2f6f7074696f6e3e0d0a3c6f7074696f6e3e4573626f727261723c2f6f7074696f6e3e0d0a3c2f73656c6563743e3c6c6162656c20636c6173733d22746578742d6d75746564223e416363696f6e7320656e206c6f743c2f6c6162656c3e3c2f6469763e0d0a3c627574746f6e20636c6173733d2262746e202061706c696361722220747970653d22627574746f6e223e2041706c69636172203c2f627574746f6e3e3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d362070792d3220746578742d656e64223e3c627574746f6e20636c6173733d2262746e202062672d626c61636b2070792d3320626f726465722220747970653d22627574746f6e223e204372656172203c2f627574746f6e3e3c2f6469763e0d0a3c2f6469763e0d0a3c212d2d7461756c612d2d3e0d0a3c64697620636c6173733d22726f77223e0d0a3c64697620636c6173733d22636f6c2d313220702d30223e0d0a3c64697620636c6173733d227461626c652d726573706f6e7369766520626c6175223e0d0a3c7461626c6520636c6173733d227461626c65207461626c652d7374726970656420616c69676e2d6d6964646c6520746578742d63656e746572207461756c6147657374696f223e0d0a3c74686561643e0d0a3c74723e0d0a3c746820636c6173733d22746578742d63656e746572223e3c696e70757420747970653d22636865636b626f78223e3c2f74683e0d0a3c74683e49443c2f74683e0d0a3c74683e4e6f6d3c2f74683e0d0a3c74683e444e492f4e49463c2f74683e0d0a3c74683e54656cc3a8666f6e3c2f74683e0d0a3c74683e436f727265753c2f74683e0d0a3c74683e416363696f6e733c2f74683e0d0a3c2f74723e0d0a3c2f74686561643e0d0a3c74626f64792069643d2266696c6573223e0d0a3c747220636c6173733d22626c6175223e0d0a3c746420636c6173733d22746578742d63656e7465722220646174612d6e6f2d636f6c6f6e3d2274727565223e3c696e70757420747970653d22636865636b626f78223e3c2f74643e0d0a3c746420646174612d63656c6c3d224944223e313030313c2f74643e0d0a3c746420646174612d63656c6c3d224e6f6d223e44484c3c2f74643e0d0a3c746420646174612d63656c6c3d22444e492f4e4946223e3638343538363939473c2f74643e0d0a3c746420646174612d63656c6c3d2254656cc3a8666f6e223e3633393633393633393c2f74643e0d0a3c746420646174612d63656c6c3d22436f72726575223e6361726c6f73324064686c2e636f6d3c2f74643e0d0a3c746420646174612d6e6f2d636f6c6f6e3d2274727565223ec2a03c2f74643e0d0a3c2f74723e0d0a3c747220636c6173733d22626c6175223e0d0a3c746420636c6173733d22746578742d63656e7465722220646174612d6e6f2d636f6c6f6e3d2274727565223e3c696e70757420747970653d22636865636b626f78223e3c2f74643e0d0a3c746420646174612d63656c6c3d224944223e313030323c2f74643e0d0a3c746420646174612d63656c6c3d224e6f6d223e44484c3c2f74643e0d0a3c746420646174612d63656c6c3d22444e492f4e4946223e3638343538363939473c2f74643e0d0a3c746420646174612d63656c6c3d2254656cc3a8666f6e223e3633393633393633393c2f74643e0d0a3c746420646174612d63656c6c3d22436f72726575223e6361726c6f73324064686c2e636f6d3c2f74643e0d0a3c746420646174612d6e6f2d636f6c6f6e3d2274727565223ec2a03c2f74643e0d0a3c2f74723e0d0a3c747220636c6173733d22626c6175223e0d0a3c746420636c6173733d22746578742d63656e7465722220646174612d6e6f2d636f6c6f6e3d2274727565223e3c696e70757420747970653d22636865636b626f78223e3c2f74643e0d0a3c746420646174612d63656c6c3d224944223e313030333c2f74643e0d0a3c746420646174612d63656c6c3d224e6f6d223e44484c3c2f74643e0d0a3c746420646174612d63656c6c3d22444e492f4e4946223e3638343538363939473c2f74643e0d0a3c746420646174612d63656c6c3d2254656cc3a8666f6e223e3633393633393633393c2f74643e0d0a3c746420646174612d63656c6c3d22436f72726575223e6361726c6f73324064686c2e636f6d3c2f74643e0d0a3c746420646174612d6e6f2d636f6c6f6e3d2274727565223ec2a03c2f74643e0d0a3c2f74723e0d0a3c747220636c6173733d22626c6175223e0d0a3c746420636c6173733d22746578742d63656e7465722220646174612d6e6f2d636f6c6f6e3d2274727565223e3c696e70757420747970653d22636865636b626f78223e3c2f74643e0d0a3c746420646174612d63656c6c3d224944223e313030343c2f74643e0d0a3c746420646174612d63656c6c3d224e6f6d223e44484c3c2f74643e0d0a3c746420646174612d63656c6c3d22444e492f4e4946223e3638343538363939473c2f74643e0d0a3c746420646174612d63656c6c3d2254656cc3a8666f6e223e3633393633393633393c2f74643e0d0a3c746420646174612d63656c6c3d22436f72726575223e6361726c6f73324064686c2e636f6d3c2f74643e0d0a3c746420646174612d6e6f2d636f6c6f6e3d2274727565223ec2a03c2f74643e0d0a3c2f74723e0d0a3c747220636c6173733d22626c6175223e0d0a3c746420636c6173733d22746578742d63656e7465722220646174612d6e6f2d636f6c6f6e3d2274727565223e3c696e70757420747970653d22636865636b626f78223e3c2f74643e0d0a3c746420646174612d63656c6c3d224944223e313030353c2f74643e0d0a3c746420646174612d63656c6c3d224e6f6d223e44484c3c2f74643e0d0a3c746420646174612d63656c6c3d22444e492f4e4946223e3638343538363939473c2f74643e0d0a3c746420646174612d63656c6c3d2254656cc3a8666f6e223e3633393633393633393c2f74643e0d0a3c746420646174612d63656c6c3d22436f72726575223e6361726c6f73324064686c2e636f6d3c2f74643e0d0a3c746420646174612d6e6f2d636f6c6f6e3d2274727565223ec2a03c2f74643e0d0a3c2f74723e0d0a3c747220636c6173733d22626c6175223e0d0a3c746420636c6173733d22746578742d63656e7465722220646174612d6e6f2d636f6c6f6e3d2274727565223e3c696e70757420747970653d22636865636b626f78223e3c2f74643e0d0a3c746420646174612d63656c6c3d224944223e313030373c2f74643e0d0a3c746420646174612d63656c6c3d224e6f6d223e44484c3c2f74643e0d0a3c746420646174612d63656c6c3d22444e492f4e4946223e3638343538363939473c2f74643e0d0a3c746420646174612d63656c6c3d2254656cc3a8666f6e223e3633393633393633393c2f74643e0d0a3c746420646174612d63656c6c3d22436f72726575223e6361726c6f73324064686c2e636f6d3c2f74643e0d0a3c746420646174612d6e6f2d636f6c6f6e3d2274727565223ec2a03c2f74643e0d0a3c2f74723e0d0a3c747220636c6173733d22626c6175223e0d0a3c746420636c6173733d22746578742d63656e7465722220646174612d6e6f2d636f6c6f6e3d2274727565223e3c696e70757420747970653d22636865636b626f78223e3c2f74643e0d0a3c746420646174612d63656c6c3d224944223e313030383c2f74643e0d0a3c746420646174612d63656c6c3d224e6f6d223e44484c3c2f74643e0d0a3c746420646174612d63656c6c3d22444e492f4e4946223e3638343538363939473c2f74643e0d0a3c746420646174612d63656c6c3d2254656cc3a8666f6e223e3633393633393633393c2f74643e0d0a3c746420646174612d63656c6c3d22436f72726575223e6361726c6f73324064686c2e636f6d3c2f74643e0d0a3c746420646174612d6e6f2d636f6c6f6e3d2274727565223ec2a03c2f74643e0d0a3c2f74723e0d0a3c747220636c6173733d22626c6175223e0d0a3c746420636c6173733d22746578742d63656e7465722220646174612d6e6f2d636f6c6f6e3d2274727565223e3c696e70757420747970653d22636865636b626f78223e3c2f74643e0d0a3c746420646174612d63656c6c3d224944223e313030393c2f74643e0d0a3c746420646174612d63656c6c3d224e6f6d223e44484c3c2f74643e0d0a3c746420646174612d63656c6c3d22444e492f4e4946223e3638343538363939473c2f74643e0d0a3c746420646174612d63656c6c3d2254656cc3a8666f6e223e3633393633393633393c2f74643e0d0a3c746420646174612d63656c6c3d22436f72726575223e6361726c6f73324064686c2e636f6d3c2f74643e0d0a3c746420646174612d6e6f2d636f6c6f6e3d2274727565223ec2a03c2f74643e0d0a3c2f74723e0d0a3c747220636c6173733d22626c6175223e0d0a3c746420636c6173733d22746578742d63656e7465722220646174612d6e6f2d636f6c6f6e3d2274727565223e3c696e70757420747970653d22636865636b626f78223e3c2f74643e0d0a3c746420646174612d63656c6c3d224944223e313031303c2f74643e0d0a3c746420646174612d63656c6c3d224e6f6d223e44484c3c2f74643e0d0a3c746420646174612d63656c6c3d22444e492f4e4946223e3638343538363939473c2f74643e0d0a3c746420646174612d63656c6c3d2254656cc3a8666f6e223e3633393633393633393c2f74643e0d0a3c746420646174612d63656c6c3d22436f72726575223e6361726c6f73324064686c2e636f6d3c2f74643e0d0a3c746420646174612d6e6f2d636f6c6f6e3d2274727565223ec2a03c2f74643e0d0a3c2f74723e0d0a3c747220636c6173733d22626c6175223e0d0a3c746420636c6173733d22746578742d63656e7465722220646174612d6e6f2d636f6c6f6e3d2274727565223e3c696e70757420747970653d22636865636b626f78223e3c2f74643e0d0a3c746420646174612d63656c6c3d224944223e313031313c2f74643e0d0a3c746420646174612d63656c6c3d224e6f6d223e44484c3c2f74643e0d0a3c746420646174612d63656c6c3d22444e492f4e4946223e3638343538363939473c2f74643e0d0a3c746420646174612d63656c6c3d2254656cc3a8666f6e223e3633393633393633393c2f74643e0d0a3c746420646174612d63656c6c3d22436f72726575223e6361726c6f73324064686c2e636f6d3c2f74643e0d0a3c746420646174612d6e6f2d636f6c6f6e3d2274727565223ec2a03c2f74643e0d0a3c2f74723e0d0a3c747220636c6173733d22626c6175223e0d0a3c746420636c6173733d22746578742d63656e7465722220646174612d6e6f2d636f6c6f6e3d2274727565223e3c696e70757420747970653d22636865636b626f78223e3c2f74643e0d0a3c746420646174612d63656c6c3d224944223e313031323c2f74643e0d0a3c746420646174612d63656c6c3d224e6f6d223e44484c3c2f74643e0d0a3c746420646174612d63656c6c3d22444e492f4e4946223e3638343538363939473c2f74643e0d0a3c746420646174612d63656c6c3d2254656cc3a8666f6e223e3633393633393633393c2f74643e0d0a3c746420646174612d63656c6c3d22436f72726575223e6361726c6f73324064686c2e636f6d3c2f74643e0d0a3c746420646174612d6e6f2d636f6c6f6e3d2274727565223ec2a03c2f74643e0d0a3c2f74723e0d0a3c747220636c6173733d22626c6175223e0d0a3c746420636c6173733d22746578742d63656e7465722220646174612d6e6f2d636f6c6f6e3d2274727565223e3c696e70757420747970653d22636865636b626f78223e3c2f74643e0d0a3c746420646174612d63656c6c3d224944223e313031333c2f74643e0d0a3c746420646174612d63656c6c3d224e6f6d223e44484c3c2f74643e0d0a3c746420646174612d63656c6c3d22444e492f4e4946223e3638343538363939473c2f74643e0d0a3c746420646174612d63656c6c3d2254656cc3a8666f6e223e3633393633393633393c2f74643e0d0a3c746420646174612d63656c6c3d22436f72726575223e6361726c6f73324064686c2e636f6d3c2f74643e0d0a3c746420646174612d6e6f2d636f6c6f6e3d2274727565223ec2a03c2f74643e0d0a3c2f74723e0d0a3c747220636c6173733d22626c6175223e0d0a3c746420636c6173733d22746578742d63656e7465722220646174612d6e6f2d636f6c6f6e3d2274727565223e3c696e70757420747970653d22636865636b626f78223e3c2f74643e0d0a3c746420646174612d63656c6c3d224944223e313031343c2f74643e0d0a3c746420646174612d63656c6c3d224e6f6d223e44484c3c2f74643e0d0a3c746420646174612d63656c6c3d22444e492f4e4946223e3638343538363939473c2f74643e0d0a3c746420646174612d63656c6c3d2254656cc3a8666f6e223e3633393633393633393c2f74643e0d0a3c746420646174612d63656c6c3d22436f72726575223e6361726c6f73324064686c2e636f6d3c2f74643e0d0a3c746420646174612d6e6f2d636f6c6f6e3d2274727565223ec2a03c2f74643e0d0a3c2f74723e0d0a3c747220636c6173733d22626c6175223e0d0a3c746420636c6173733d22746578742d63656e7465722220646174612d6e6f2d636f6c6f6e3d2274727565223e3c696e70757420747970653d22636865636b626f78223e3c2f74643e0d0a3c746420646174612d63656c6c3d224944223e313031353c2f74643e0d0a3c746420646174612d63656c6c3d224e6f6d223e44484c3c2f74643e0d0a3c746420646174612d63656c6c3d22444e492f4e4946223e3638343538363939473c2f74643e0d0a3c746420646174612d63656c6c3d2254656cc3a8666f6e223e3633393633393633393c2f74643e0d0a3c746420646174612d63656c6c3d22436f72726575223e6361726c6f73324064686c2e636f6d3c2f74643e0d0a3c746420646174612d6e6f2d636f6c6f6e3d2274727565223ec2a03c2f74643e0d0a3c2f74723e0d0a3c2f74626f64793e0d0a3c2f7461626c653e0d0a3c212d2d706167696e657465732d2d3e3c6e61763e0d0a3c756c20636c6173733d22706167696e6174696f6e206a7573746966792d636f6e74656e742d63656e746572223e0d0a3c6c6920636c6173733d22706167652d6974656d223e3c6120636c6173733d22706167652d6c696e6b2220687265663d2223223e203c7370616e20617269612d68696464656e3d2274727565223ec2ab3c2f7370616e3e203c2f613e3c2f6c693e0d0a3c6c6920636c6173733d22706167652d6974656d206163746976652220617269612d63757272656e743d2270616765223e3c6120636c6173733d22706167652d6c696e6b2220687265663d2223223e313c2f613e3c2f6c693e0d0a3c6c6920636c6173733d22706167652d6974656d223e3c6120636c6173733d22706167652d6c696e6b2220687265663d2223223e323c2f613e3c2f6c693e0d0a3c6c6920636c6173733d22706167652d6974656d223e3c6120636c6173733d22706167652d6c696e6b2220687265663d2223223e333c2f613e3c2f6c693e0d0a3c6c6920636c6173733d22706167652d6974656d223e3c6120636c6173733d22706167652d6c696e6b2220687265663d2223223e203c7370616e20617269612d68696464656e3d2274727565223ec2bb3c2f7370616e3e203c2f613e3c2f6c693e0d0a3c2f756c3e0d0a3c2f6e61763e3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c212d2d6e6f20746f6361722d2d3e223b733a343a22626f6479223b733a303a22223b733a363a22696d61676573223b733a3236353a227b22696d6167655f696e74726f223a22696d616765735c2f6c6f676f5f666f6f746572322e706e67236a6f6f6d6c61496d6167653a5c2f5c2f6c6f63616c2d696d616765735c2f6c6f676f5f666f6f746572322e706e673f77696474683d323030266865696768743d313130222c22696d6167655f696e74726f5f616c74223a22222c22666c6f61745f696e74726f223a22222c22696d6167655f696e74726f5f63617074696f6e223a22222c22696d6167655f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f616c74223a22222c22666c6f61745f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f63617074696f6e223a22227d223b733a353a226361746964223b693a323b733a31303a22637265617465645f6279223b693a3937343b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323032352d30312d32382032303a30343a3337223b733a31313a226d6f6469666965645f6279223b693a3937343b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a353b733a383a226f72646572696e67223b693a303b733a383a2263617465676f7279223b733a31333a22556e63617465676f7269736564223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a363a22313a686f6d65223b733a373a22636174736c7567223b733a31353a22323a756e63617465676f7269736564223b733a363a22617574686f72223b733a373a226761627269656c223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a383a22696d61676555726c223b733a38383a22696d616765732f6c6f676f5f666f6f746572322e706e67236a6f6f6d6c61496d6167653a2f2f6c6f63616c2d696d616765732f6c6f676f5f666f6f746572322e706e673f77696474683d323030266865696768743d313130223b733a383a22696d616765416c74223b733a303a22223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032352d30312d32382031393a35323a3431223b693a31303b4e3b693a31313b733a35393a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d313a686f6d652663617469643d32223b693a31323b4e3b693a31333b733a31393a22323032352d30312d32382031393a35323a3431223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a226761627269656c223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a373b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a393b7d7d7d693a31363b733a343a22486f6d65223b693a31373b693a333b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d31223b7d),
(2, 'index.php?option=com_content&view=category&id=2', 'index.php?option=com_content&view=category&id=2', 'Home', '', '2025-01-29 22:34:50', 'ca351976a4215636151d29ec9e01b0db', 1, 1, 1, '*', NULL, NULL, '2025-01-28 19:24:01', NULL, 0, 0, 1, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a303a22223b693a333b613a31373a7b733a323a226964223b693a323b733a353a22616c696173223b733a343a22686f6d65223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a333a226c6674223b693a313b733a393a22706172656e745f6964223b693a313b733a353a226c6576656c223b693a313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a2273756d6d617279223b733a303a22223b733a31303a22637265617465645f6279223b693a3937343b733a383a226d6f646966696564223b733a31393a22323032352d30312d32392032323a33343a3530223b733a31313a226d6f6469666965645f6279223b693a3937343b733a343a22736c7567223b733a363a22323a686f6d65223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d32223b693a31323b4e3b693a31333b733a31393a22323032352d30312d32382031393a32343a3031223b693a31343b693a313b693a31353b613a323a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a31303b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a393b7d7d7d693a31363b733a343a22486f6d65223b693a31373b693a313b693a31383b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d32223b7d);
INSERT INTO `oh67l_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(3, 'index.php?option=com_content&view=article&id=2', 'index.php?option=com_content&view=article&id=2:home-stockflow&catid=2', 'Home-StockFlow', ' PRODUCTO DESCARGA DE PRODUCTO PLANES Y PRECIOS CASOS DE ÉXITO RESEÑAS QUIÉNES SOMOS BLOG CONTACTO DEMO Software de Gestión de Almacenes (SGA / WMS) Nuestra aplicación está diseñada para simplificar la recepción, almacenamiento y envío de productos, eliminando el caos y permitiendo un control total de tu inventario desde cualquier lugar. Aumenta la productividad de tu equipo con una solución moderna, intuitiva y accesible desde cualquier dispositivo. Solicitar DEMO Precios y planes > GESTIÓN INTERGRAL DE INVENTARIOS ----------------------------------- Controla cada detalle de tus productos: desde la recepción hasta el envío, con un seguimiento en tiempo real y alertas de stock bajo. INTERFAZ ADAPTABLE Y FÁCIL DE USAR ----------------------------------- Accede a toda la información que necesitas con una interfaz moderna, intuitiva y optimizada para dispositivos móviles y laptops. AUTOMATIZACIÓN DE PROCESOS ----------------------------------- Simplifica las tareas diarias con flujos de trabajo automatizados que reducen el tiempo de administración y minimizan errores humanos. ANÁLISIS Y REPORTES AVANZADOS ----------------------------------- Obtén informes detallados sobre la rotación de productos, el rendimiento del almacén y el cumplimiento de pedidos, facilitando la toma de decisiones estratégicas. BENEFICIOS PARA TU EMPRESA Ahorro de Tiempo y Costos Al automatizar tareas y centralizar la gestión, se reducen tiempos de búsqueda de productos y se minimizan los errores costosos. Mejora en la Productividad Los operarios y encargados trabajan de manera más organizada, optimizando rutas de picking y reduciendo tiempos de preparación de pedidos. Mayor Control y Visibilidad Monitorea el estado de tu inventario en tiempo real y realiza un seguimiento preciso de todos los movimientos dentro del almacén. Escalabilidad y Adaptación Crece con tu negocio: el sistema se adapta fácilmente a nuevas ubicaciones y almacenes, manteniendo siempre el control centralizado. CASOS DE ÉXITO DE NUESTROS CLIENTES RESEÑAS \"Este software ha revolucionado nuestra manera de trabajar en el almacén. Antes era un caos encontrar productos, pero ahora todo está organizado y accesible desde cualquier dispositivo.\" - Carlos M., Gerente de Logística. \"Nos encanta la facilidad de uso y cómo ha mejorado la productividad del equipo. Ahora completamos las órdenes de envío en la mitad del tiempo.\" - Marta G., Supervisora de Almacén. \"La automatización de procesos nos ha permitido reducir los errores en un 90%. No puedo imaginar volver a trabajar sin esta herramienta.\" - Juan M., Adjunto logística. \"El sistema de reportes es increíble. Nos da toda la información que necesitamos para tomar decisiones más rápidas y acertadas sobre nuestro stock.\" - Ana S., Responsable de Inventario. C/Duanes, 17 - Pego +34 966 409 960 03007613@edu.gva.es Legal Aviso legal Política de cookies Política de privacidad NEWSLETTERS * Nombre * Email Acepto términos y condiciones Suscríbete © Copyright 2024. Todos los derechos reservados ', '2025-01-29 22:31:06', 'aba005066634256775a46e9e057c5950', 1, 0, 1, '*', '2025-01-29 22:31:06', NULL, '2025-01-29 22:31:06', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a333037313a222050524f445543544f2044455343415247412044452050524f445543544f20504c414e455320592050524543494f53204341534f5320444520c3895849544f2052455345c391415320515549c3894e455320534f4d4f5320424c4f4720434f4e544143544f2044454d4f20536f667477617265206465204765737469c3b36e20646520416c6d6163656e65732028534741202f20574d5329204e7565737472612061706c6963616369c3b36e20657374c3a12064697365c3b161646120706172612073696d706c696669636172206c612072656365706369c3b36e2c20616c6d6163656e616d69656e746f207920656e76c3ad6f2064652070726f647563746f732c20656c696d696e616e646f20656c2063616f732079207065726d697469656e646f20756e20636f6e74726f6c20746f74616c20646520747520696e76656e746172696f206465736465206375616c7175696572206c756761722e2041756d656e7461206c612070726f647563746976696461642064652074752065717569706f20636f6e20756e6120736f6c756369c3b36e206d6f6465726e612c20696e74756974697661207920616363657369626c65206465736465206375616c717569657220646973706f73697469766f2e20536f6c6963697461722044454d4f2050726563696f73207920706c616e6573203e204745535449c3934e20494e5445524752414c20444520494e56454e544152494f53202d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d20436f6e74726f6c61206361646120646574616c6c65206465207475732070726f647563746f733a206465736465206c612072656365706369c3b36e20686173746120656c20656e76c3ad6f2c20636f6e20756e2073656775696d69656e746f20656e207469656d706f207265616c207920616c65727461732064652073746f636b2062616a6f2e20494e54455246415a20414441505441424c4520592046c38143494c2044452055534152202d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d20416363656465206120746f6461206c6120696e666f726d616369c3b36e20717565206e656365736974617320636f6e20756e6120696e74657266617a206d6f6465726e612c20696e747569746976612079206f7074696d697a616461207061726120646973706f73697469766f73206dc3b376696c65732079206c6170746f70732e204155544f4d4154495a414349c3934e2044452050524f4345534f53202d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2053696d706c6966696361206c617320746172656173206469617269617320636f6e20666c756a6f732064652074726162616a6f206175746f6d6174697a61646f7320717565207265647563656e20656c207469656d706f2064652061646d696e69737472616369c3b36e2079206d696e696d697a616e206572726f7265732068756d616e6f732e20414ec3814c495349532059205245504f52544553204156414e5a41444f53202d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d204f6274c3a96e20696e666f726d657320646574616c6c61646f7320736f627265206c6120726f74616369c3b36e2064652070726f647563746f732c20656c2072656e64696d69656e746f2064656c20616c6d6163c3a96e207920656c2063756d706c696d69656e746f2064652070656469646f732c20666163696c6974616e646f206c6120746f6d61206465206465636973696f6e657320657374726174c3a967696361732e2042454e45464943494f53205041524120545520454d50524553412041686f72726f206465205469656d706f207920436f73746f7320416c206175746f6d6174697a61722074617265617320792063656e7472616c697a6172206c61206765737469c3b36e2c207365207265647563656e207469656d706f732064652062c3ba7371756564612064652070726f647563746f732079207365206d696e696d697a616e206c6f73206572726f72657320636f73746f736f732e204d656a6f726120656e206c612050726f64756374697669646164204c6f73206f7065726172696f73207920656e6361726761646f732074726162616a616e206465206d616e657261206dc3a173206f7267616e697a6164612c206f7074696d697a616e646f207275746173206465207069636b696e67207920726564756369656e646f207469656d706f7320646520707265706172616369c3b36e2064652070656469646f732e204d61796f7220436f6e74726f6c2079205669736962696c69646164204d6f6e69746f72656120656c2065737461646f20646520747520696e76656e746172696f20656e207469656d706f207265616c2079207265616c697a6120756e2073656775696d69656e746f207072656369736f20646520746f646f73206c6f73206d6f76696d69656e746f732064656e74726f2064656c20616c6d6163c3a96e2e20457363616c6162696c696461642079204164617074616369c3b36e20437265636520636f6e207475206e65676f63696f3a20656c2073697374656d61207365206164617074612066c3a163696c6d656e74652061206e756576617320756269636163696f6e6573207920616c6d6163656e65732c206d616e74656e69656e646f207369656d70726520656c20636f6e74726f6c2063656e7472616c697a61646f2e204341534f5320444520c3895849544f204445204e55455354524f5320434c49454e5445532052455345c391415320224573746520736f667477617265206861207265766f6c7563696f6e61646f206e756573747261206d616e6572612064652074726162616a617220656e20656c20616c6d6163c3a96e2e20416e7465732065726120756e2063616f7320656e636f6e747261722070726f647563746f732c207065726f2061686f726120746f646f20657374c3a1206f7267616e697a61646f207920616363657369626c65206465736465206375616c717569657220646973706f73697469766f2e22202d204361726c6f73204d2e2c20476572656e7465206465204c6f67c3ad73746963612e20224e6f7320656e63616e7461206c6120666163696c696461642064652075736f20792063c3b36d6f206861206d656a6f7261646f206c612070726f647563746976696461642064656c2065717569706f2e2041686f726120636f6d706c6574616d6f73206c617320c3b37264656e657320646520656e76c3ad6f20656e206c61206d697461642064656c207469656d706f2e22202d204d6172746120472e2c2053757065727669736f726120646520416c6d6163c3a96e2e20224c61206175746f6d6174697a616369c3b36e2064652070726f6365736f73206e6f73206861207065726d697469646f2072656475636972206c6f73206572726f72657320656e20756e203930252e204e6f20707565646f20696d6167696e617220766f6c76657220612074726162616a61722073696e20657374612068657272616d69656e74612e22202d204a75616e204d2e2c2041646a756e746f206c6f67c3ad73746963612e2022456c2073697374656d61206465207265706f7274657320657320696e637265c3ad626c652e204e6f7320646120746f6461206c6120696e666f726d616369c3b36e20717565206e656365736974616d6f73207061726120746f6d6172206465636973696f6e6573206dc3a1732072c3a1706964617320792061636572746164617320736f627265206e75657374726f2073746f636b2e22202d20416e6120532e2c20526573706f6e7361626c6520646520496e76656e746172696f2e20432f4475616e65732c203137202d205065676f202b3334203936362034303920393630203033303037363133406564752e6776612e6573204c6567616c20417669736f206c6567616c20506f6cc3ad7469636120646520636f6f6b69657320506f6cc3ad746963612064652070726976616369646164204e4557534c455454455253202a204e6f6d627265202a20456d61696c2041636570746f2074c3a9726d696e6f73207920636f6e646963696f6e6573205375736372c3ad6265746520c2a920436f7079726967687420323032342e20546f646f73206c6f73206465726563686f732072657365727661646f7320223b693a333b613a32353a7b733a323a226964223b693a323b733a353a22616c696173223b733a31343a22686f6d652073746f636b666c6f77223b733a373a2273756d6d617279223b733a31313830393a223c703ec2a03c2f703e0d0a3c212d2d6d656e75207c5c5c7c2d2d3e0d0a3c64697620636c6173733d22636f6e7461696e65722d666c75696420666f6e734772697320706f736974696f6e2d6669786564223e0d0a3c64697620636c6173733d22726f77223e0d0a3c64697620636c6173733d22636f6c2d313220616c69676e2d6974656d732d63656e746572223e3c6e617620636c6173733d226e6176626172206e61766261722d657870616e642d6c67223e0d0a3c64697620636c6173733d22636f6e7461696e65722d666c7569642070792d31223e0d0a3c64697620636c6173733d2270732d32223e3c696d6720636c6173733d226c6f676f2d68656164657222207372633d22696d672f6c6f676f5f6865616465722e706e67223e3c2f6469763e0d0a3c64697620636c6173733d22702d3320642d666c657820616c69676e2d6974656d732d63656e746572223ec2a03c2f6469763e0d0a3c627574746f6e20636c6173733d226e61766261722d746f67676c65722220747970653d22627574746f6e2220646174612d62732d746f67676c653d22636f6c6c617073652220646174612d62732d7461726765743d22236e6176626172537570706f72746564436f6e74656e742220617269612d636f6e74726f6c733d226e6176626172537570706f72746564436f6e74656e742220617269612d657870616e6465643d2266616c73652220617269612d6c6162656c3d22546f67676c65206e617669676174696f6e223e203c2f627574746f6e3e0d0a3c6469762069643d226e6176626172537570706f72746564436f6e74656e742220636c6173733d22636f6c6c61707365206e61766261722d636f6c6c61707365223e0d0a3c756c20636c6173733d226e61766261722d6e6176206d732d6c672d6175746f206d622d32206d622d6c672d30223e0d0a3c6c6920636c6173733d226e61762d6974656d2064726f70646f776e223e3c6120636c6173733d226e61762d6c696e6b2064726f70646f776e2d746f67676c652062746e2d6865616465722220726f6c653d22627574746f6e2220687265663d22232220646174612d62732d746f67676c653d2264726f70646f776e2220617269612d657870616e6465643d2266616c7365223e2050524f445543544f203c2f613e0d0a3c756c20636c6173733d2264726f70646f776e2d6d656e752062672d7768697465223e0d0a3c6c693e3c6120636c6173733d2264726f70646f776e2d6974656d2062746e2d6865616465722220687265663d2223223e44455343415247412044452050524f445543544f3c2f613e3c2f6c693e0d0a3c6c693e3c6120636c6173733d2264726f70646f776e2d6974656d2062746e2d6865616465722220687265663d2223223e504c414e455320592050524543494f533c2f613e3c2f6c693e0d0a3c2f756c3e0d0a3c2f6c693e0d0a3c6c6920636c6173733d226e61762d6974656d223e3c6120636c6173733d226e61762d6c696e6b2062746e2d6865616465722220687265663d2223223e4341534f5320444520c3895849544f3c2f613e3c2f6c693e0d0a3c6c6920636c6173733d226e61762d6974656d223e3c6120636c6173733d226e61762d6c696e6b2062746e2d68656164657220626f726465722d656e6420626f726465722d626c61636b2220687265663d2223223e52455345c39141533c2f613e3c2f6c693e0d0a3c6c6920636c6173733d226e61762d6974656d223e3c6120636c6173733d226e61762d6c696e6b2062746e2d686561646572223e515549c3894e455320534f4d4f533c2f613e3c2f6c693e0d0a3c6c6920636c6173733d226e61762d6974656d223e3c6120636c6173733d226e61762d6c696e6b2062746e2d686561646572223e424c4f473c2f613e3c2f6c693e0d0a3c6c6920636c6173733d226e61762d6974656d223e3c6120636c6173733d226e61762d6c696e6b2062746e2d686561646572223e434f4e544143544f3c2f613e3c2f6c693e0d0a3c6c6920636c6173733d226e61762d6974656d2070732d32223e3c627574746f6e20636c6173733d2262746e2062746e2d7461726f6e6a6120626f726465722d626c61636b20746578742d776869746520726f756e6465642d322220747970653d227375626d6974223e44454d4f3c2f627574746f6e3e3c2f6c693e0d0a3c2f756c3e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6e61763e3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c212d2d736f667477617265206465206765737469c3b36e207c5c5c7c2d2d3e0d0a3c64697620636c6173733d22636f6e7461696e65722d6c672d666c75696420636f6e7461696e65722d786c2070742d35206a7573746966792d636f6e74656e742d63656e746572223e0d0a3c64697620636c6173733d22726f7720726f756e6465642d33223e0d0a3c64697620636c6173733d22636f6c2d6c672d31223ec2a03c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6c672d3130223e0d0a3c64697620636c6173733d22636f6e7461696e65722d666c756964206d617267696e4d656e75223e0d0a3c64697620636c6173733d22726f77223e0d0a3c64697620636c6173733d22636f6c2d313220636f6c2d6d642d3620666f6e734772697320726f756e6465642d73746172742d3420702d342070652d33223e0d0a3c683120636c6173733d22772d373520746974756c2066772d626f6c6465722070732d332070742d31223e536f667477617265206465204765737469c3b36e20646520416c6d6163656e65733c2f68313e0d0a3c683320636c6173733d2266772d626f6c6465722070732d332070742d31206d2d30223e28534741202f20574d53293c2f68333e0d0a3c7020636c6173733d226c682d6c672070732d33223e4e7565737472612061706c6963616369c3b36e20657374c3a12064697365c3b161646120706172612073696d706c696669636172206c612072656365706369c3b36e2c20616c6d6163656e616d69656e746f207920656e76c3ad6f2064652070726f647563746f732c20656c696d696e616e646f20656c2063616f732079207065726d697469656e646f20756e20636f6e74726f6c20746f74616c20646520747520696e76656e746172696f206465736465206375616c7175696572206c756761722e2041756d656e7461206c612070726f647563746976696461642064652074752065717569706f20636f6e20756e6120736f6c756369c3b36e206d6f6465726e612c20696e74756974697661207920616363657369626c65206465736465206375616c717569657220646973706f73697469766f2e3c2f703e0d0a3c64697620636c6173733d22642d6772696420642d6c672d626c6f636b206761702d32206d782d6175746f223e3c627574746f6e20636c6173733d2262746e2062746e2d7461726f6e6a6120746578742d776869746520626f726465722d626c61636b2070782d35223e536f6c6963697461722044454d4f3c2f627574746f6e3e203c627574746f6e20636c6173733d2262746e2062746e2d626c617520746578742d776869746520626f726465722d77686974652070792d322070782d34223e50726563696f73207920706c616e6573202667743b3c2f627574746f6e3e3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d313220636f6c2d6d642d3620666f6e734772697320726f756e6465642d656e642d332070742d352070652d31223e3c696d6720636c6173733d22696d672d666c75696422207372633d22696d672f315f696e6963696f2e706e672220616c743d224765737469c3b36e20646520416c6d6163656e6573223e3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6c672d3120702d30223ec2a03c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c212d2d636169786573207c5c5c7c2d2d3e0d0a3c64697620636c6173733d22636f6e7461696e65722d6c672d666c75696420636f6e7461696e65722d786c2070792d34223e0d0a3c64697620636c6173733d22726f77223e0d0a3c64697620636c6173733d22636f6c2d6c672d31223ec2a03c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6c672d313020636f6c2d78732d3132223e0d0a3c64697620636c6173733d22636f6e7461696e65722d666c756964223e0d0a3c64697620636c6173733d22726f77223e0d0a3c64697620636c6173733d22636f6c2d6c672d3320636f6c2d736d2d3620702d3320746578742d63656e746572223e0d0a3c64697620636c6173733d22626f7264657220666f6e734772697320726f756e6465642d342070742d3420682d313030223e0d0a3c683420636c6173733d2266732d362066772d626f6c646572206d2d30223e4745535449c3934e20494e5445524752414c20444520494e56454e544152494f533c2f68343e0d0a3c7020636c6173733d226d2d302070622d32223e2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d3c2f703e0d0a3c7020636c6173733d226c682d736d2070782d33223e436f6e74726f6c61206361646120646574616c6c65206465207475732070726f647563746f733a206465736465206c612072656365706369c3b36e20686173746120656c20656e76c3ad6f2c20636f6e20756e2073656775696d69656e746f20656e207469656d706f207265616c207920616c65727461732064652073746f636b2062616a6f2e3c2f703e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6c672d3320636f6c2d736d2d3620702d3320746578742d63656e746572223e0d0a3c64697620636c6173733d22626f7264657220666f6e734772697320726f756e6465642d342070742d342070782d3220682d313030223e0d0a3c683420636c6173733d2266732d362066772d626f6c646572206d2d30223e494e54455246415a20414441505441424c4520592046c38143494c20444520555341523c2f68343e0d0a3c7020636c6173733d226d2d302070622d32223e2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d3c2f703e0d0a3c7020636c6173733d226c682d736d223e416363656465206120746f6461206c6120696e666f726d616369c3b36e20717565206e656365736974617320636f6e20756e6120696e74657266617a206d6f6465726e612c20696e747569746976612079206f7074696d697a616461207061726120646973706f73697469766f73206dc3b376696c65732079206c6170746f70732e3c2f703e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6c672d3320636f6c2d736d2d3620702d3320746578742d63656e746572223e0d0a3c64697620636c6173733d22626f7264657220666f6e734772697320726f756e6465642d342070742d342070782d3220682d313030223e0d0a3c683420636c6173733d2266732d362066772d626f6c646572206d2d302070782d32223e4155544f4d4154495a414349c3934e2044452050524f4345534f533c2f68343e0d0a3c7020636c6173733d226d2d302070622d32223e2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d3c2f703e0d0a3c7020636c6173733d226c682d736d223e53696d706c6966696361206c617320746172656173206469617269617320636f6e20666c756a6f732064652074726162616a6f206175746f6d6174697a61646f7320717565207265647563656e20656c207469656d706f2064652061646d696e69737472616369c3b36e2079206d696e696d697a616e206572726f7265732068756d616e6f732e3c2f703e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6c672d3320636f6c2d736d2d3620702d3320746578742d63656e746572223e0d0a3c64697620636c6173733d22626f7264657220666f6e734772697320726f756e6465642d342070742d342070782d322020682d313030223e0d0a3c683420636c6173733d2266732d362066772d626f6c646572206d2d30223e414ec3814c495349532059205245504f52544553204156414e5a41444f533c2f68343e0d0a3c7020636c6173733d226d2d302070622d32223e2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d3c2f703e0d0a3c7020636c6173733d226c682d736d223e4f6274c3a96e20696e666f726d657320646574616c6c61646f7320736f627265206c6120726f74616369c3b36e2064652070726f647563746f732c20656c2072656e64696d69656e746f2064656c20616c6d6163c3a96e207920656c2063756d706c696d69656e746f2064652070656469646f732c20666163696c6974616e646f206c6120746f6d61206465206465636973696f6e657320657374726174c3a967696361732e3c2f703e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6c672d31223ec2a03c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c212d2d62656e65666963696f73207c5c5c7c2d2d3e0d0a3c64697620636c6173733d22636f6e7461696e65722d6c672d666c75696420636f6e7461696e65722d786c2070742d322070622d35223e0d0a3c64697620636c6173733d22726f7720616c69676e2d6974656d732d63656e746572223e0d0a3c683120636c6173733d22746578742d63656e7465722070622d352066732d332066772d626f6c646572206d622d30223e42454e45464943494f53205041524120545520454d50524553413c2f68313e0d0a3c64697620636c6173733d22636f6c2d6c672d31223ec2a03c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6c672d3130223e0d0a3c64697620636c6173733d22636f6e7461696e65722d666c756964223e0d0a3c64697620636c6173733d22726f77223e0d0a3c64697620636c6173733d22636f6c2d6c672d362070782d31223e3c696d6720636c6173733d22696d672d666c75696420642d6d642d6e6f6e6520642d6c672d626c6f636b22207372633d22696d672f325f62656e65666963696f732e706e672220616c743d2242656e65666963696f73223e3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6c672d3620666f6e734772697320726f756e6465642d342070742d33223e0d0a3c756c20636c6173733d2270732d35223e0d0a3c6c693e0d0a3c683620636c6173733d2266772d626f6c646572223e41686f72726f206465205469656d706f207920436f73746f733c2f68363e0d0a3c703e416c206175746f6d6174697a61722074617265617320792063656e7472616c697a6172206c61206765737469c3b36e2c207365207265647563656e207469656d706f732064652062c3ba7371756564612064652070726f647563746f732079207365206d696e696d697a616e206c6f73206572726f72657320636f73746f736f732e3c2f703e0d0a3c2f6c693e0d0a3c6c693e0d0a3c683620636c6173733d2266772d626f6c646572223e4d656a6f726120656e206c612050726f647563746976696461643c2f68363e0d0a3c7020636c6173733d226d622d32223e4c6f73206f7065726172696f73207920656e6361726761646f732074726162616a616e206465206d616e657261206dc3a173206f7267616e697a6164612c206f7074696d697a616e646f207275746173206465207069636b696e67207920726564756369656e646f207469656d706f7320646520707265706172616369c3b36e2064652070656469646f732e3c2f703e0d0a3c2f6c693e0d0a3c6c6920636c6173733d2270742d31223e0d0a3c683620636c6173733d2266772d626f6c646572223e4d61796f7220436f6e74726f6c2079205669736962696c696461643c2f68363e0d0a3c7020636c6173733d226d622d32223e4d6f6e69746f72656120656c2065737461646f20646520747520696e76656e746172696f20656e207469656d706f207265616c2079207265616c697a6120756e2073656775696d69656e746f207072656369736f20646520746f646f73206c6f73206d6f76696d69656e746f732064656e74726f2064656c20616c6d6163c3a96e2e3c2f703e0d0a3c2f6c693e0d0a3c6c6920636c6173733d2270742d31223e0d0a3c683620636c6173733d2266772d626f6c646572223e457363616c6162696c696461642079204164617074616369c3b36e3c2f68363e0d0a3c703e437265636520636f6e207475206e65676f63696f3a20656c2073697374656d61207365206164617074612066c3a163696c6d656e74652061206e756576617320756269636163696f6e6573207920616c6d6163656e65732c206d616e74656e69656e646f207369656d70726520656c20636f6e74726f6c2063656e7472616c697a61646f2e3c2f703e0d0a3c2f6c693e0d0a3c2f756c3e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6c672d31223ec2a03c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c212d2d6361736f7320c3a97869746f207c5c5c7c2d2d3e0d0a3c64697620636c6173733d22636f6e7461696e65722d6c672d666c75696420636f6e7461696e65722d786c223e0d0a3c683120636c6173733d22746578742d63656e7465722070622d352066732d332066772d626f6c646572223e4341534f5320444520c3895849544f204445204e55455354524f5320434c49454e5445533c2f68313e0d0a3c64697620636c6173733d22726f7720616c69676e2d6974656d732d63656e746572223e0d0a3c64697620636c6173733d22636f6c2d6c672d31223ec2a03c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6c672d3130223e0d0a3c64697620636c6173733d22636f6e7461696e65722d666c756964223e0d0a3c64697620636c6173733d22726f77223e0d0a3c64697620636c6173733d22636f6c2d736d2d362070742d6c672d302070742d736d2d3420636f6c2d31322070732d6c672d30223e3c696d6720636c6173733d22696d672d666c75696422207372633d22696d672f335f6361736f4465457869746f2e706e672220616c743d22696d6167656e2d6361736f2d457869746f2d31223e3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d736d2d362070742d6c672d302070742d3420636f6c2d31322070652d6c672d30223e3c696d6720636c6173733d22696d672d666c75696420772d31303022207372633d22696d672f345f6361736f4465457869746f2e706e672220616c743d22696d6167656e2d6361736f2d457869746f2d32223e3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d736d2d362070742d3420636f6c2d31322070732d6c672d30223e3c696d6720636c6173733d22696d672d666c75696420772d31303022207372633d22696d672f355f6361736f4465457869746f2e706e672220616c743d22696d6167656e2d6361736f2d457869746f2d33223e3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d736d2d362070742d3420636f6c2d31322070652d6c672d30223e3c696d6720636c6173733d22696d672d666c75696420772d31303022207372633d22696d672f365f6361736f4465457869746f2e706e672220616c743d22696d6167656e2d6361736f2d457869746f2d34223e3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6c672d31223ec2a03c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c212d2d72657365c3b16173207c5c5c7c2d2d3e0d0a3c64697620636c6173733d22636f6e7461696e65722d6c672d666c75696420636f6e7461696e65722d786c2070742d352070622d35223e0d0a3c683120636c6173733d22746578742d63656e7465722066732d332066772d626f6c6465722070622d34223e52455345c39141533c2f68313e0d0a3c64697620636c6173733d22726f77223e0d0a3c64697620636c6173733d22636f6c2d6c672d31223ec2a03c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6c672d313020636f6c2d78732d31322070742d342070782d30223e0d0a3c64697620636c6173733d22636f6e7461696e65722d666c756964223e0d0a3c64697620636c6173733d22726f77223e0d0a3c64697620636c6173733d22636f6c2d6d642d3320636f6c2d736d2d36223e0d0a3c64697620636c6173733d22626f7264657220666f6e734772697320726f756e6465642d3320682d3130302070622d33223e3c696d6720636c6173733d22696d672d666c75696422207372633d22696d672f375f72657365c3b1612e706e67223e0d0a3c7020636c6173733d22746578742d63656e7465722070792d32206a7573746966792d636f6e74656e742d6576656e6c7920642d666c65782070782d33206d622d32223ec2a03c2f703e0d0a3c64697620636c6173733d2270782d33223e0d0a3c703e3c7374726f6e673e224573746520736f667477617265206861207265766f6c7563696f6e61646f206e756573747261206d616e6572612064652074726162616a617220656e20656c20616c6d6163c3a96e2e20416e7465732065726120756e2063616f7320656e636f6e747261722070726f647563746f732c207065726f2061686f726120746f646f20657374c3a1206f7267616e697a61646f207920616363657369626c65206465736465206375616c717569657220646973706f73697469766f2e223c2f7374726f6e673e3c2f703e0d0a3c703e3c656d3e2d204361726c6f73204d2e2c20476572656e7465206465204c6f67c3ad73746963612e3c2f656d3e3c2f703e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6d642d3320636f6c2d736d2d36223e0d0a3c64697620636c6173733d22626f7264657220666f6e734772697320726f756e6465642d3320682d313030223e3c696d6720636c6173733d22696d672d666c75696422207372633d22696d672f385f72657365c3b1612e706e67223e0d0a3c7020636c6173733d22746578742d63656e7465722070792d32206a7573746966792d636f6e74656e742d6576656e6c7920642d666c65782070782d33206d622d32223ec2a03c2f703e0d0a3c64697620636c6173733d2270782d33223e0d0a3c703e3c7374726f6e673e224e6f7320656e63616e7461206c6120666163696c696461642064652075736f20792063c3b36d6f206861206d656a6f7261646f206c612070726f647563746976696461642064656c2065717569706f2e2041686f726120636f6d706c6574616d6f73206c617320c3b37264656e657320646520656e76c3ad6f20656e206c61206d697461642064656c207469656d706f2e223c2f7374726f6e673e3c2f703e0d0a3c703e3c656d3e2d204d6172746120472e2c2053757065727669736f726120646520416c6d6163c3a96e2e3c2f656d3e3c2f703e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6d642d3320636f6c2d736d2d36223e0d0a3c64697620636c6173733d22626f7264657220666f6e734772697320726f756e6465642d3320682d313030223e3c696d6720636c6173733d22696d672d666c75696422207372633d22696d672f395f72657365c3b1612e706e67223e0d0a3c7020636c6173733d22746578742d63656e7465722070792d32206a7573746966792d636f6e74656e742d6576656e6c7920642d666c65782070782d33206d622d32223ec2a03c2f703e0d0a3c64697620636c6173733d2270782d33223e0d0a3c703e3c7374726f6e673e224c61206175746f6d6174697a616369c3b36e2064652070726f6365736f73206e6f73206861207065726d697469646f2072656475636972206c6f73206572726f72657320656e20756e203930252e204e6f20707565646f20696d6167696e617220766f6c76657220612074726162616a61722073696e20657374612068657272616d69656e74612e223c2f7374726f6e673e3c2f703e0d0a3c703e3c656d3e2d204a75616e204d2e2c2041646a756e746f206c6f67c3ad73746963612e3c2f656d3e3c2f703e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6d642d3320636f6c2d736d2d36223e0d0a3c64697620636c6173733d22626f7264657220666f6e734772697320726f756e6465642d3320682d313030223e3c696d6720636c6173733d22696d672d666c75696422207372633d22696d672f31305f72657365c3b1612e706e67223e0d0a3c7020636c6173733d22746578742d63656e7465722070792d32206a7573746966792d636f6e74656e742d6576656e6c7920642d666c65782070782d33206d622d32223ec2a03c2f703e0d0a3c64697620636c6173733d2270782d33223e0d0a3c703e3c7374726f6e673e22456c2073697374656d61206465207265706f7274657320657320696e637265c3ad626c652e204e6f7320646120746f6461206c6120696e666f726d616369c3b36e20717565206e656365736974616d6f73207061726120746f6d6172206465636973696f6e6573206dc3a1732072c3a1706964617320792061636572746164617320736f627265206e75657374726f2073746f636b2e223c2f7374726f6e673e3c2f703e0d0a3c703e3c656d3e2d20416e6120532e2c20526573706f6e7361626c6520646520496e76656e746172696f2e3c2f656d3e3c2f703e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6c672d31223ec2a03c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c212d2d666f6f746572207c5c5c7c2d2d3e0d0a3c64697620636c6173733d22636f6e7461696e65722d666c7569642070742d3120666f6e73426c617520746578742d7768697465223e0d0a3c64697620636c6173733d22726f77223e0d0a3c64697620636c6173733d22636f6c2d736d2d3620636f6c2d6c672d342070742d3220642d666c657820666c65782d636f6c756d6e20616c69676e2d6974656d732d63656e7465722070652d302070732d34223e3c696d6720636c6173733d22666f746f466f6f7465722070732d322070742d322070622d3522207372633d22696d672f6c6f676f5f666f6f7465722e706e67223e0d0a3c64697620636c6173733d22746578742d73746172742070742d342070732d35223e0d0a3c7020636c6173733d2270742d3320642d666c657820616c69676e2d6974656d732d63656e746572206d622d32223e432f4475616e65732c203137202d205065676f3c2f703e0d0a3c7020636c6173733d22642d666c657820616c69676e2d6974656d732d63656e746572206d622d32223e2b33342039363620343039203936303c2f703e0d0a3c7020636c6173733d22642d666c657820616c69676e2d6974656d732d63656e746572223e3033303037363133406564752e6776612e65733c2f703e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d736d2d3620636f6c2d6c672d3420746578742d63656e7465722070742d34223e0d0a3c7020636c6173733d2270742d312066772d626f6c646572223e4c6567616c3c2f703e0d0a3c64697620636c6173733d2270742d3520746578742d63656e7465722070622d34223e0d0a3c7020636c6173733d2270742d34206d622d30223e3c6120636c6173733d22746578742d6465636f726174696f6e2d756e6465726c696e6520746578742d77686974652220687265663d2223223e417669736f206c6567616c3c2f613e3c2f703e0d0a3c7020636c6173733d226d622d30223e3c6120636c6173733d22746578742d6465636f726174696f6e2d756e6465726c696e6520746578742d77686974652220687265663d2223223e506f6cc3ad7469636120646520636f6f6b6965733c2f613e3c2f703e0d0a3c7020636c6173733d226d622d30223e3c6120636c6173733d22746578742d6465636f726174696f6e2d756e6465726c696e6520746578742d77686974652220687265663d2223223e506f6cc3ad7469636120646520707269766163696461643c2f613e3c2f703e0d0a3c2f6469763e0d0a3c64697620636c6173733d22746578742d63656e7465722070742d35206d742d31223e3c6120636c6173733d22746578742d6465636f726174696f6e2d6e6f6e6520746578742d77686974652220687265663d2268747470733a2f2f782e636f6d2f4761673076616c2f7374617475732f31363538303438343230393230313339373736223e203c2f613e203c6120636c6173733d22746578742d6465636f726174696f6e2d6e6f6e6520746578742d77686974652070782d342220687265663d2268747470733a2f2f7777772e6c696e6b6564696e2e636f6d2f636f6d70616e792f6169636861746770742f223e203c2f613e203c6120636c6173733d22746578742d6465636f726174696f6e2d6e6f6e6520746578742d77686974652220687265663d2268747470733a2f2f796f7574752e62652f7876465a6a6f3550674730223e203c2f613e3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6d642d313220636f6c2d6c672d342070742d6c672d322070652d6c672d35206d742d34223e0d0a3c64697620636c6173733d22746578742d63656e7465722070742d6c672d312070652d6c672d35223e0d0a3c683620636c6173733d2270652d6c672d342066772d626f6c646572223e4e4557534c4554544552533c2f68363e0d0a3c7020636c6173733d2270652d6c672d34206d622d6c672d32223e2a204e6f6d6272653c2f703e0d0a3c696e70757420636c6173733d22726f756e6465642d322070792d6c672d31206d652d6c672d342070782d6c672d322220747970653d2274657874223e0d0a3c7020636c6173733d2270652d6c672d342070742d6c672d33223e2a20456d61696c3c2f703e0d0a3c696e70757420636c6173733d22726f756e6465642d322070792d6c672d31206d652d6c672d342070782d6c672d32206d622d6c672d302220747970653d2274657874223e0d0a3c7020636c6173733d2270742d6c672d332070652d6c672d3520642d666c6578206a7573746966792d636f6e74656e742d63656e746572206d622d6c672d32223e3c696e70757420636c6173733d2270742d322220747970653d22636865636b626f78223e3c2f703e0d0a3c7020636c6173733d22746578742d63656e7465722070782d6c672d35223e41636570746f203c6120636c6173733d22746578742d6465636f726174696f6e2d756e6465726c696e6520746578742d77686974652220687265663d2223223e74c3a9726d696e6f733c2f613e2079203c6120636c6173733d22746578742d6465636f726174696f6e2d756e6465726c696e6520746578742d77686974652220687265663d2223223e636f6e646963696f6e65733c2f613e3c2f703e0d0a3c627574746f6e20636c6173733d2262746e2d7461726f6e6a6120726f756e6465642d3320746578742d7768697465206d782d6c672d35223e5375736372c3ad626574653c2f627574746f6e3e3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c212d2d636f7079207c5c5c7c2d2d3e0d0a3c64697620636c6173733d22636f6e7461696e65722d666c756964223e0d0a3c64697620636c6173733d22726f77223e0d0a3c64697620636c6173733d22636f6c2d3132223e0d0a3c7020636c6173733d22746578742d656e6420616c69676e2d6974656d732d63656e746572206d2d302070792d33223ec2a920436f7079726967687420323032342e20546f646f73206c6f73206465726563686f732072657365727661646f733c2f703e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c212d2d7363726970742d2d3e223b733a343a22626f6479223b733a303a22223b733a363a22696d61676573223b733a3137333a227b22696d6167655f696e74726f223a22222c22696d6167655f696e74726f5f616c74223a22222c22666c6f61745f696e74726f223a22222c22696d6167655f696e74726f5f63617074696f6e223a22222c22696d6167655f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f616c74223a22222c22666c6f61745f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f63617074696f6e223a22227d223b733a353a226361746964223b693a323b733a31303a22637265617465645f6279223b693a3937343b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323032352d30312d32392032323a33313a3036223b733a31313a226d6f6469666965645f6279223b693a3937343b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a313b733a383a226f72646572696e67223b693a303b733a383a2263617465676f7279223b733a343a22486f6d65223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a31363a22323a686f6d652d73746f636b666c6f77223b733a373a22636174736c7567223b733a363a22323a686f6d65223b733a363a22617574686f72223b733a373a226761627269656c223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032352d30312d32392032323a33313a3036223b693a31303b4e3b693a31313b733a36393a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d323a686f6d652d73746f636b666c6f772663617469643d32223b693a31323b4e3b693a31333b733a31393a22323032352d30312d32392032323a33313a3036223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a226761627269656c223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a343a22486f6d65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b733a323a223131223b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a393b7d7d7d693a31363b733a31343a22486f6d652d53746f636b466c6f77223b693a31373b693a333b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d32223b7d);
INSERT INTO `oh67l_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(4, 'index.php?option=com_content&view=article&id=3', 'index.php?option=com_content&view=article&id=3:stockflow&catid=2', 'Stockflow', ' PRODUCTO DESCARGA DE PRODUCTO PLANES Y PRECIOS CASOS DE ÉXITO RESEÑAS QUIÉNES SOMOS BLOG CONTACTO DEMO Software de Gestión de Almacenes (SGA / WMS) Nuestra aplicación está diseñada para simplificar la recepción, almacenamiento y envío de productos, eliminando el caos y permitiendo un control total de tu inventario desde cualquier lugar. Aumenta la productividad de tu equipo con una solución moderna, intuitiva y accesible desde cualquier dispositivo. Solicitar DEMO Precios y planes > GESTIÓN INTERGRAL DE INVENTARIOS ----------------------------------- Controla cada detalle de tus productos: desde la recepción hasta el envío, con un seguimiento en tiempo real y alertas de stock bajo. INTERFAZ ADAPTABLE Y FÁCIL DE USAR ----------------------------------- Accede a toda la información que necesitas con una interfaz moderna, intuitiva y optimizada para dispositivos móviles y laptops. AUTOMATIZACIÓN DE PROCESOS ----------------------------------- Simplifica las tareas diarias con flujos de trabajo automatizados que reducen el tiempo de administración y minimizan errores humanos. ANÁLISIS Y REPORTES AVANZADOS ----------------------------------- Obtén informes detallados sobre la rotación de productos, el rendimiento del almacén y el cumplimiento de pedidos, facilitando la toma de decisiones estratégicas. BENEFICIOS PARA TU EMPRESA Ahorro de Tiempo y Costos Al automatizar tareas y centralizar la gestión, se reducen tiempos de búsqueda de productos y se minimizan los errores costosos. Mejora en la Productividad Los operarios y encargados trabajan de manera más organizada, optimizando rutas de picking y reduciendo tiempos de preparación de pedidos. Mayor Control y Visibilidad Monitorea el estado de tu inventario en tiempo real y realiza un seguimiento preciso de todos los movimientos dentro del almacén. Escalabilidad y Adaptación Crece con tu negocio: el sistema se adapta fácilmente a nuevas ubicaciones y almacenes, manteniendo siempre el control centralizado. CASOS DE ÉXITO DE NUESTROS CLIENTES RESEÑAS \"Este software ha revolucionado nuestra manera de trabajar en el almacén. Antes era un caos encontrar productos, pero ahora todo está organizado y accesible desde cualquier dispositivo.\" - Carlos M., Gerente de Logística. \"Nos encanta la facilidad de uso y cómo ha mejorado la productividad del equipo. Ahora completamos las órdenes de envío en la mitad del tiempo.\" - Marta G., Supervisora de Almacén. \"La automatización de procesos nos ha permitido reducir los errores en un 90%. No puedo imaginar volver a trabajar sin esta herramienta.\" - Juan M., Adjunto logística. \"El sistema de reportes es increíble. Nos da toda la información que necesitamos para tomar decisiones más rápidas y acertadas sobre nuestro stock.\" - Ana S., Responsable de Inventario. C/Duanes, 17 - Pego +34 966 409 960 03007613@edu.gva.es Legal Aviso legal Política de cookies Política de privacidad NEWSLETTERS * Nombre * Email Acepto términos y condiciones Suscríbete © Copyright 2024. Todos los derechos reservados ', '2025-01-29 22:55:19', '6f92b92aba9569a9e2704b66a34b6bf6', 1, 1, 1, '*', '2025-01-29 22:38:03', NULL, '2025-01-29 22:38:03', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a333037313a222050524f445543544f2044455343415247412044452050524f445543544f20504c414e455320592050524543494f53204341534f5320444520c3895849544f2052455345c391415320515549c3894e455320534f4d4f5320424c4f4720434f4e544143544f2044454d4f20536f667477617265206465204765737469c3b36e20646520416c6d6163656e65732028534741202f20574d5329204e7565737472612061706c6963616369c3b36e20657374c3a12064697365c3b161646120706172612073696d706c696669636172206c612072656365706369c3b36e2c20616c6d6163656e616d69656e746f207920656e76c3ad6f2064652070726f647563746f732c20656c696d696e616e646f20656c2063616f732079207065726d697469656e646f20756e20636f6e74726f6c20746f74616c20646520747520696e76656e746172696f206465736465206375616c7175696572206c756761722e2041756d656e7461206c612070726f647563746976696461642064652074752065717569706f20636f6e20756e6120736f6c756369c3b36e206d6f6465726e612c20696e74756974697661207920616363657369626c65206465736465206375616c717569657220646973706f73697469766f2e20536f6c6963697461722044454d4f2050726563696f73207920706c616e6573203e204745535449c3934e20494e5445524752414c20444520494e56454e544152494f53202d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d20436f6e74726f6c61206361646120646574616c6c65206465207475732070726f647563746f733a206465736465206c612072656365706369c3b36e20686173746120656c20656e76c3ad6f2c20636f6e20756e2073656775696d69656e746f20656e207469656d706f207265616c207920616c65727461732064652073746f636b2062616a6f2e20494e54455246415a20414441505441424c4520592046c38143494c2044452055534152202d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d20416363656465206120746f6461206c6120696e666f726d616369c3b36e20717565206e656365736974617320636f6e20756e6120696e74657266617a206d6f6465726e612c20696e747569746976612079206f7074696d697a616461207061726120646973706f73697469766f73206dc3b376696c65732079206c6170746f70732e204155544f4d4154495a414349c3934e2044452050524f4345534f53202d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2053696d706c6966696361206c617320746172656173206469617269617320636f6e20666c756a6f732064652074726162616a6f206175746f6d6174697a61646f7320717565207265647563656e20656c207469656d706f2064652061646d696e69737472616369c3b36e2079206d696e696d697a616e206572726f7265732068756d616e6f732e20414ec3814c495349532059205245504f52544553204156414e5a41444f53202d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d204f6274c3a96e20696e666f726d657320646574616c6c61646f7320736f627265206c6120726f74616369c3b36e2064652070726f647563746f732c20656c2072656e64696d69656e746f2064656c20616c6d6163c3a96e207920656c2063756d706c696d69656e746f2064652070656469646f732c20666163696c6974616e646f206c6120746f6d61206465206465636973696f6e657320657374726174c3a967696361732e2042454e45464943494f53205041524120545520454d50524553412041686f72726f206465205469656d706f207920436f73746f7320416c206175746f6d6174697a61722074617265617320792063656e7472616c697a6172206c61206765737469c3b36e2c207365207265647563656e207469656d706f732064652062c3ba7371756564612064652070726f647563746f732079207365206d696e696d697a616e206c6f73206572726f72657320636f73746f736f732e204d656a6f726120656e206c612050726f64756374697669646164204c6f73206f7065726172696f73207920656e6361726761646f732074726162616a616e206465206d616e657261206dc3a173206f7267616e697a6164612c206f7074696d697a616e646f207275746173206465207069636b696e67207920726564756369656e646f207469656d706f7320646520707265706172616369c3b36e2064652070656469646f732e204d61796f7220436f6e74726f6c2079205669736962696c69646164204d6f6e69746f72656120656c2065737461646f20646520747520696e76656e746172696f20656e207469656d706f207265616c2079207265616c697a6120756e2073656775696d69656e746f207072656369736f20646520746f646f73206c6f73206d6f76696d69656e746f732064656e74726f2064656c20616c6d6163c3a96e2e20457363616c6162696c696461642079204164617074616369c3b36e20437265636520636f6e207475206e65676f63696f3a20656c2073697374656d61207365206164617074612066c3a163696c6d656e74652061206e756576617320756269636163696f6e6573207920616c6d6163656e65732c206d616e74656e69656e646f207369656d70726520656c20636f6e74726f6c2063656e7472616c697a61646f2e204341534f5320444520c3895849544f204445204e55455354524f5320434c49454e5445532052455345c391415320224573746520736f667477617265206861207265766f6c7563696f6e61646f206e756573747261206d616e6572612064652074726162616a617220656e20656c20616c6d6163c3a96e2e20416e7465732065726120756e2063616f7320656e636f6e747261722070726f647563746f732c207065726f2061686f726120746f646f20657374c3a1206f7267616e697a61646f207920616363657369626c65206465736465206375616c717569657220646973706f73697469766f2e22202d204361726c6f73204d2e2c20476572656e7465206465204c6f67c3ad73746963612e20224e6f7320656e63616e7461206c6120666163696c696461642064652075736f20792063c3b36d6f206861206d656a6f7261646f206c612070726f647563746976696461642064656c2065717569706f2e2041686f726120636f6d706c6574616d6f73206c617320c3b37264656e657320646520656e76c3ad6f20656e206c61206d697461642064656c207469656d706f2e22202d204d6172746120472e2c2053757065727669736f726120646520416c6d6163c3a96e2e20224c61206175746f6d6174697a616369c3b36e2064652070726f6365736f73206e6f73206861207065726d697469646f2072656475636972206c6f73206572726f72657320656e20756e203930252e204e6f20707565646f20696d6167696e617220766f6c76657220612074726162616a61722073696e20657374612068657272616d69656e74612e22202d204a75616e204d2e2c2041646a756e746f206c6f67c3ad73746963612e2022456c2073697374656d61206465207265706f7274657320657320696e637265c3ad626c652e204e6f7320646120746f6461206c6120696e666f726d616369c3b36e20717565206e656365736974616d6f73207061726120746f6d6172206465636973696f6e6573206dc3a1732072c3a1706964617320792061636572746164617320736f627265206e75657374726f2073746f636b2e22202d20416e6120532e2c20526573706f6e7361626c6520646520496e76656e746172696f2e20432f4475616e65732c203137202d205065676f202b3334203936362034303920393630203033303037363133406564752e6776612e6573204c6567616c20417669736f206c6567616c20506f6cc3ad7469636120646520636f6f6b69657320506f6cc3ad746963612064652070726976616369646164204e4557534c455454455253202a204e6f6d627265202a20456d61696c2041636570746f2074c3a9726d696e6f73207920636f6e646963696f6e6573205375736372c3ad6265746520c2a920436f7079726967687420323032342e20546f646f73206c6f73206465726563686f732072657365727661646f7320223b693a333b613a32353a7b733a323a226964223b693a333b733a353a22616c696173223b733a393a2273746f636b666c6f77223b733a373a2273756d6d617279223b733a31313635323a223c212d2d6d656e75207c5c5c7c2d2d3e0d0a3c64697620636c6173733d22636f6e7461696e65722d666c75696420666f6e7347726973223e0d0a3c64697620636c6173733d22726f77223e0d0a3c64697620636c6173733d22636f6c2d313220616c69676e2d6974656d732d63656e746572223e3c6e617620636c6173733d226e6176626172206e61766261722d657870616e642d6c67223e0d0a3c64697620636c6173733d22636f6e7461696e65722d666c7569642070792d31223e3c627574746f6e20636c6173733d226e61766261722d746f67676c65722220747970653d22627574746f6e2220646174612d62732d746f67676c653d22636f6c6c617073652220646174612d62732d7461726765743d22236e6176626172537570706f72746564436f6e74656e742220617269612d636f6e74726f6c733d226e6176626172537570706f72746564436f6e74656e742220617269612d657870616e6465643d2266616c73652220617269612d6c6162656c3d22546f67676c65206e617669676174696f6e223ec2a03c2f627574746f6e3e0d0a3c6469762069643d226e6176626172537570706f72746564436f6e74656e742220636c6173733d22636f6c6c61707365206e61766261722d636f6c6c61707365223e0d0a3c756c20636c6173733d226e61766261722d6e6176206d732d6c672d6175746f206d622d32206d622d6c672d30223e0d0a3c6c6920636c6173733d226e61762d6974656d2064726f70646f776e223e3c6120636c6173733d226e61762d6c696e6b2064726f70646f776e2d746f67676c652062746e2d6865616465722220726f6c653d22627574746f6e2220687265663d22232220646174612d62732d746f67676c653d2264726f70646f776e2220617269612d657870616e6465643d2266616c7365223e2050524f445543544f203c2f613e0d0a3c756c20636c6173733d2264726f70646f776e2d6d656e752062672d7768697465223e0d0a3c6c693e3c6120636c6173733d2264726f70646f776e2d6974656d2062746e2d6865616465722220687265663d2223223e44455343415247412044452050524f445543544f3c2f613e3c2f6c693e0d0a3c6c693e3c6120636c6173733d2264726f70646f776e2d6974656d2062746e2d6865616465722220687265663d2223223e504c414e455320592050524543494f533c2f613e3c2f6c693e0d0a3c2f756c3e0d0a3c2f6c693e0d0a3c6c6920636c6173733d226e61762d6974656d223e3c6120636c6173733d226e61762d6c696e6b2062746e2d6865616465722220687265663d2223223e4341534f5320444520c3895849544f3c2f613e3c2f6c693e0d0a3c6c6920636c6173733d226e61762d6974656d223e3c6120636c6173733d226e61762d6c696e6b2062746e2d68656164657220626f726465722d656e6420626f726465722d626c61636b2220687265663d2223223e52455345c39141533c2f613e3c2f6c693e0d0a3c6c6920636c6173733d226e61762d6974656d223e3c6120636c6173733d226e61762d6c696e6b2062746e2d686561646572223e515549c3894e455320534f4d4f533c2f613e3c2f6c693e0d0a3c6c6920636c6173733d226e61762d6974656d223e3c6120636c6173733d226e61762d6c696e6b2062746e2d686561646572223e424c4f473c2f613e3c2f6c693e0d0a3c6c6920636c6173733d226e61762d6974656d223e3c6120636c6173733d226e61762d6c696e6b2062746e2d686561646572223e434f4e544143544f3c2f613e3c2f6c693e0d0a3c6c6920636c6173733d226e61762d6974656d2070732d32223e3c627574746f6e20636c6173733d2262746e2062746e2d7461726f6e6a6120626f726465722d626c61636b20746578742d776869746520726f756e6465642d322220747970653d227375626d6974223e44454d4f3c2f627574746f6e3e3c2f6c693e0d0a3c2f756c3e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6e61763e3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c212d2d736f667477617265206465206765737469c3b36e207c5c5c7c2d2d3e0d0a3c64697620636c6173733d22636f6e7461696e65722d6c672d666c75696420636f6e7461696e65722d786c2070742d35206a7573746966792d636f6e74656e742d63656e746572223e0d0a3c64697620636c6173733d22726f7720726f756e6465642d33223e0d0a3c64697620636c6173733d22636f6c2d6c672d31223ec2a03c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6c672d3130223e0d0a3c64697620636c6173733d22636f6e7461696e65722d666c756964206d617267696e4d656e75223e0d0a3c64697620636c6173733d22726f77223e0d0a3c64697620636c6173733d22636f6c2d313220636f6c2d6d642d3620666f6e734772697320726f756e6465642d73746172742d3420702d342070652d33223e0d0a3c683120636c6173733d22772d373520746974756c2066772d626f6c6465722070732d332070742d31223e536f667477617265206465204765737469c3b36e20646520416c6d6163656e65733c2f68313e0d0a3c683320636c6173733d2266772d626f6c6465722070732d332070742d31206d2d30223e28534741202f20574d53293c2f68333e0d0a3c7020636c6173733d226c682d6c672070732d33223e4e7565737472612061706c6963616369c3b36e20657374c3a12064697365c3b161646120706172612073696d706c696669636172206c612072656365706369c3b36e2c20616c6d6163656e616d69656e746f207920656e76c3ad6f2064652070726f647563746f732c20656c696d696e616e646f20656c2063616f732079207065726d697469656e646f20756e20636f6e74726f6c20746f74616c20646520747520696e76656e746172696f206465736465206375616c7175696572206c756761722e2041756d656e7461206c612070726f647563746976696461642064652074752065717569706f20636f6e20756e6120736f6c756369c3b36e206d6f6465726e612c20696e74756974697661207920616363657369626c65206465736465206375616c717569657220646973706f73697469766f2e3c2f703e0d0a3c64697620636c6173733d22642d6772696420642d6c672d626c6f636b206761702d32206d782d6175746f223e3c627574746f6e20636c6173733d2262746e2062746e2d7461726f6e6a6120746578742d776869746520626f726465722d626c61636b2070782d35223e536f6c6963697461722044454d4f3c2f627574746f6e3e203c627574746f6e20636c6173733d2262746e2062746e2d626c617520746578742d776869746520626f726465722d77686974652070792d322070782d34223e50726563696f73207920706c616e6573202667743b3c2f627574746f6e3e3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d313220636f6c2d6d642d3620666f6e734772697320726f756e6465642d656e642d332070742d352070652d31223e3c696d6720636c6173733d22696d672d666c75696422207372633d22696d672f315f696e6963696f2e706e672220616c743d224765737469c3b36e20646520416c6d6163656e6573223e3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6c672d3120702d30223ec2a03c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c212d2d636169786573207c5c5c7c2d2d3e0d0a3c64697620636c6173733d22636f6e7461696e65722d6c672d666c75696420636f6e7461696e65722d786c2070792d34223e0d0a3c64697620636c6173733d22726f77223e0d0a3c64697620636c6173733d22636f6c2d6c672d31223ec2a03c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6c672d313020636f6c2d78732d3132223e0d0a3c64697620636c6173733d22636f6e7461696e65722d666c756964223e0d0a3c64697620636c6173733d22726f77223e0d0a3c64697620636c6173733d22636f6c2d6c672d3320636f6c2d736d2d3620702d3320746578742d63656e746572223e0d0a3c64697620636c6173733d22626f7264657220666f6e734772697320726f756e6465642d342070742d3420682d313030223e0d0a3c683420636c6173733d2266732d362066772d626f6c646572206d2d30223e4745535449c3934e20494e5445524752414c20444520494e56454e544152494f533c2f68343e0d0a3c7020636c6173733d226d2d302070622d32223e2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d3c2f703e0d0a3c7020636c6173733d226c682d736d2070782d33223e436f6e74726f6c61206361646120646574616c6c65206465207475732070726f647563746f733a206465736465206c612072656365706369c3b36e20686173746120656c20656e76c3ad6f2c20636f6e20756e2073656775696d69656e746f20656e207469656d706f207265616c207920616c65727461732064652073746f636b2062616a6f2e3c2f703e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6c672d3320636f6c2d736d2d3620702d3320746578742d63656e746572223e0d0a3c64697620636c6173733d22626f7264657220666f6e734772697320726f756e6465642d342070742d342070782d3220682d313030223e0d0a3c683420636c6173733d2266732d362066772d626f6c646572206d2d30223e494e54455246415a20414441505441424c4520592046c38143494c20444520555341523c2f68343e0d0a3c7020636c6173733d226d2d302070622d32223e2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d3c2f703e0d0a3c7020636c6173733d226c682d736d223e416363656465206120746f6461206c6120696e666f726d616369c3b36e20717565206e656365736974617320636f6e20756e6120696e74657266617a206d6f6465726e612c20696e747569746976612079206f7074696d697a616461207061726120646973706f73697469766f73206dc3b376696c65732079206c6170746f70732e3c2f703e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6c672d3320636f6c2d736d2d3620702d3320746578742d63656e746572223e0d0a3c64697620636c6173733d22626f7264657220666f6e734772697320726f756e6465642d342070742d342070782d3220682d313030223e0d0a3c683420636c6173733d2266732d362066772d626f6c646572206d2d302070782d32223e4155544f4d4154495a414349c3934e2044452050524f4345534f533c2f68343e0d0a3c7020636c6173733d226d2d302070622d32223e2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d3c2f703e0d0a3c7020636c6173733d226c682d736d223e53696d706c6966696361206c617320746172656173206469617269617320636f6e20666c756a6f732064652074726162616a6f206175746f6d6174697a61646f7320717565207265647563656e20656c207469656d706f2064652061646d696e69737472616369c3b36e2079206d696e696d697a616e206572726f7265732068756d616e6f732e3c2f703e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6c672d3320636f6c2d736d2d3620702d3320746578742d63656e746572223e0d0a3c64697620636c6173733d22626f7264657220666f6e734772697320726f756e6465642d342070742d342070782d322020682d313030223e0d0a3c683420636c6173733d2266732d362066772d626f6c646572206d2d30223e414ec3814c495349532059205245504f52544553204156414e5a41444f533c2f68343e0d0a3c7020636c6173733d226d2d302070622d32223e2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d3c2f703e0d0a3c7020636c6173733d226c682d736d223e4f6274c3a96e20696e666f726d657320646574616c6c61646f7320736f627265206c6120726f74616369c3b36e2064652070726f647563746f732c20656c2072656e64696d69656e746f2064656c20616c6d6163c3a96e207920656c2063756d706c696d69656e746f2064652070656469646f732c20666163696c6974616e646f206c6120746f6d61206465206465636973696f6e657320657374726174c3a967696361732e3c2f703e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6c672d31223ec2a03c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c212d2d62656e65666963696f73207c5c5c7c2d2d3e0d0a3c64697620636c6173733d22636f6e7461696e65722d6c672d666c75696420636f6e7461696e65722d786c2070742d322070622d35223e0d0a3c64697620636c6173733d22726f7720616c69676e2d6974656d732d63656e746572223e0d0a3c683120636c6173733d22746578742d63656e7465722070622d352066732d332066772d626f6c646572206d622d30223e42454e45464943494f53205041524120545520454d50524553413c2f68313e0d0a3c64697620636c6173733d22636f6c2d6c672d31223ec2a03c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6c672d3130223e0d0a3c64697620636c6173733d22636f6e7461696e65722d666c756964223e0d0a3c64697620636c6173733d22726f77223e0d0a3c64697620636c6173733d22636f6c2d6c672d362070782d31223e3c696d6720636c6173733d22696d672d666c75696420642d6d642d6e6f6e6520642d6c672d626c6f636b22207372633d22696d672f325f62656e65666963696f732e706e672220616c743d2242656e65666963696f73223e3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6c672d3620666f6e734772697320726f756e6465642d342070742d33223e0d0a3c756c20636c6173733d2270732d35223e0d0a3c6c693e0d0a3c683620636c6173733d2266772d626f6c646572223e41686f72726f206465205469656d706f207920436f73746f733c2f68363e0d0a3c703e416c206175746f6d6174697a61722074617265617320792063656e7472616c697a6172206c61206765737469c3b36e2c207365207265647563656e207469656d706f732064652062c3ba7371756564612064652070726f647563746f732079207365206d696e696d697a616e206c6f73206572726f72657320636f73746f736f732e3c2f703e0d0a3c2f6c693e0d0a3c6c693e0d0a3c683620636c6173733d2266772d626f6c646572223e4d656a6f726120656e206c612050726f647563746976696461643c2f68363e0d0a3c7020636c6173733d226d622d32223e4c6f73206f7065726172696f73207920656e6361726761646f732074726162616a616e206465206d616e657261206dc3a173206f7267616e697a6164612c206f7074696d697a616e646f207275746173206465207069636b696e67207920726564756369656e646f207469656d706f7320646520707265706172616369c3b36e2064652070656469646f732e3c2f703e0d0a3c2f6c693e0d0a3c6c6920636c6173733d2270742d31223e0d0a3c683620636c6173733d2266772d626f6c646572223e4d61796f7220436f6e74726f6c2079205669736962696c696461643c2f68363e0d0a3c7020636c6173733d226d622d32223e4d6f6e69746f72656120656c2065737461646f20646520747520696e76656e746172696f20656e207469656d706f207265616c2079207265616c697a6120756e2073656775696d69656e746f207072656369736f20646520746f646f73206c6f73206d6f76696d69656e746f732064656e74726f2064656c20616c6d6163c3a96e2e3c2f703e0d0a3c2f6c693e0d0a3c6c6920636c6173733d2270742d31223e0d0a3c683620636c6173733d2266772d626f6c646572223e457363616c6162696c696461642079204164617074616369c3b36e3c2f68363e0d0a3c703e437265636520636f6e207475206e65676f63696f3a20656c2073697374656d61207365206164617074612066c3a163696c6d656e74652061206e756576617320756269636163696f6e6573207920616c6d6163656e65732c206d616e74656e69656e646f207369656d70726520656c20636f6e74726f6c2063656e7472616c697a61646f2e3c2f703e0d0a3c2f6c693e0d0a3c2f756c3e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6c672d31223ec2a03c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c212d2d6361736f7320c3a97869746f207c5c5c7c2d2d3e0d0a3c64697620636c6173733d22636f6e7461696e65722d6c672d666c75696420636f6e7461696e65722d786c223e0d0a3c683120636c6173733d22746578742d63656e7465722070622d352066732d332066772d626f6c646572223e4341534f5320444520c3895849544f204445204e55455354524f5320434c49454e5445533c2f68313e0d0a3c64697620636c6173733d22726f7720616c69676e2d6974656d732d63656e746572223e0d0a3c64697620636c6173733d22636f6c2d6c672d31223ec2a03c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6c672d3130223e0d0a3c64697620636c6173733d22636f6e7461696e65722d666c756964223e0d0a3c64697620636c6173733d22726f77223e0d0a3c64697620636c6173733d22636f6c2d736d2d362070742d6c672d302070742d736d2d3420636f6c2d31322070732d6c672d30223e3c696d6720636c6173733d22696d672d666c75696422207372633d22696d672f335f6361736f4465457869746f2e706e672220616c743d22696d6167656e2d6361736f2d457869746f2d31223e3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d736d2d362070742d6c672d302070742d3420636f6c2d31322070652d6c672d30223e3c696d6720636c6173733d22696d672d666c75696420772d31303022207372633d22696d672f345f6361736f4465457869746f2e706e672220616c743d22696d6167656e2d6361736f2d457869746f2d32223e3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d736d2d362070742d3420636f6c2d31322070732d6c672d30223e3c696d6720636c6173733d22696d672d666c75696420772d31303022207372633d22696d672f355f6361736f4465457869746f2e706e672220616c743d22696d6167656e2d6361736f2d457869746f2d33223e3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d736d2d362070742d3420636f6c2d31322070652d6c672d30223e3c696d6720636c6173733d22696d672d666c75696420772d31303022207372633d22696d672f365f6361736f4465457869746f2e706e672220616c743d22696d6167656e2d6361736f2d457869746f2d34223e3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6c672d31223ec2a03c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c212d2d72657365c3b16173207c5c5c7c2d2d3e0d0a3c64697620636c6173733d22636f6e7461696e65722d6c672d666c75696420636f6e7461696e65722d786c2070742d352070622d35223e0d0a3c683120636c6173733d22746578742d63656e7465722066732d332066772d626f6c6465722070622d34223e52455345c39141533c2f68313e0d0a3c64697620636c6173733d22726f77223e0d0a3c64697620636c6173733d22636f6c2d6c672d31223ec2a03c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6c672d313020636f6c2d78732d31322070742d342070782d30223e0d0a3c64697620636c6173733d22636f6e7461696e65722d666c756964223e0d0a3c64697620636c6173733d22726f77223e0d0a3c64697620636c6173733d22636f6c2d6d642d3320636f6c2d736d2d36223e0d0a3c64697620636c6173733d22626f7264657220666f6e734772697320726f756e6465642d3320682d3130302070622d33223e3c696d6720636c6173733d22696d672d666c75696422207372633d22696d672f375f72657365c3b1612e706e67223e0d0a3c7020636c6173733d22746578742d63656e7465722070792d32206a7573746966792d636f6e74656e742d6576656e6c7920642d666c65782070782d33206d622d32223ec2a03c2f703e0d0a3c64697620636c6173733d2270782d33223e0d0a3c703e3c7374726f6e673e224573746520736f667477617265206861207265766f6c7563696f6e61646f206e756573747261206d616e6572612064652074726162616a617220656e20656c20616c6d6163c3a96e2e20416e7465732065726120756e2063616f7320656e636f6e747261722070726f647563746f732c207065726f2061686f726120746f646f20657374c3a1206f7267616e697a61646f207920616363657369626c65206465736465206375616c717569657220646973706f73697469766f2e223c2f7374726f6e673e3c2f703e0d0a3c703e3c656d3e2d204361726c6f73204d2e2c20476572656e7465206465204c6f67c3ad73746963612e3c2f656d3e3c2f703e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6d642d3320636f6c2d736d2d36223e0d0a3c64697620636c6173733d22626f7264657220666f6e734772697320726f756e6465642d3320682d313030223e3c696d6720636c6173733d22696d672d666c75696422207372633d22696d672f385f72657365c3b1612e706e67223e0d0a3c7020636c6173733d22746578742d63656e7465722070792d32206a7573746966792d636f6e74656e742d6576656e6c7920642d666c65782070782d33206d622d32223ec2a03c2f703e0d0a3c64697620636c6173733d2270782d33223e0d0a3c703e3c7374726f6e673e224e6f7320656e63616e7461206c6120666163696c696461642064652075736f20792063c3b36d6f206861206d656a6f7261646f206c612070726f647563746976696461642064656c2065717569706f2e2041686f726120636f6d706c6574616d6f73206c617320c3b37264656e657320646520656e76c3ad6f20656e206c61206d697461642064656c207469656d706f2e223c2f7374726f6e673e3c2f703e0d0a3c703e3c656d3e2d204d6172746120472e2c2053757065727669736f726120646520416c6d6163c3a96e2e3c2f656d3e3c2f703e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6d642d3320636f6c2d736d2d36223e0d0a3c64697620636c6173733d22626f7264657220666f6e734772697320726f756e6465642d3320682d313030223e3c696d6720636c6173733d22696d672d666c75696422207372633d22696d672f395f72657365c3b1612e706e67223e0d0a3c7020636c6173733d22746578742d63656e7465722070792d32206a7573746966792d636f6e74656e742d6576656e6c7920642d666c65782070782d33206d622d32223ec2a03c2f703e0d0a3c64697620636c6173733d2270782d33223e0d0a3c703e3c7374726f6e673e224c61206175746f6d6174697a616369c3b36e2064652070726f6365736f73206e6f73206861207065726d697469646f2072656475636972206c6f73206572726f72657320656e20756e203930252e204e6f20707565646f20696d6167696e617220766f6c76657220612074726162616a61722073696e20657374612068657272616d69656e74612e223c2f7374726f6e673e3c2f703e0d0a3c703e3c656d3e2d204a75616e204d2e2c2041646a756e746f206c6f67c3ad73746963612e3c2f656d3e3c2f703e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6d642d3320636f6c2d736d2d36223e0d0a3c64697620636c6173733d22626f7264657220666f6e734772697320726f756e6465642d3320682d313030223e3c696d6720636c6173733d22696d672d666c75696422207372633d22696d672f31305f72657365c3b1612e706e67223e0d0a3c7020636c6173733d22746578742d63656e7465722070792d32206a7573746966792d636f6e74656e742d6576656e6c7920642d666c65782070782d33206d622d32223ec2a03c2f703e0d0a3c64697620636c6173733d2270782d33223e0d0a3c703e3c7374726f6e673e22456c2073697374656d61206465207265706f7274657320657320696e637265c3ad626c652e204e6f7320646120746f6461206c6120696e666f726d616369c3b36e20717565206e656365736974616d6f73207061726120746f6d6172206465636973696f6e6573206dc3a1732072c3a1706964617320792061636572746164617320736f627265206e75657374726f2073746f636b2e223c2f7374726f6e673e3c2f703e0d0a3c703e3c656d3e2d20416e6120532e2c20526573706f6e7361626c6520646520496e76656e746172696f2e3c2f656d3e3c2f703e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6c672d31223ec2a03c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c212d2d666f6f746572207c5c5c7c2d2d3e0d0a3c64697620636c6173733d22636f6e7461696e65722d666c7569642070742d3120666f6e73426c617520746578742d7768697465223e0d0a3c64697620636c6173733d22726f77223e0d0a3c64697620636c6173733d22636f6c2d736d2d3620636f6c2d6c672d342070742d3220642d666c657820666c65782d636f6c756d6e20616c69676e2d6974656d732d63656e7465722070652d302070732d34223e3c696d6720636c6173733d22666f746f466f6f7465722070732d322070742d322070622d3522207372633d22696d672f6c6f676f5f666f6f7465722e706e67223e0d0a3c64697620636c6173733d22746578742d73746172742070742d342070732d35223e0d0a3c7020636c6173733d2270742d3320642d666c657820616c69676e2d6974656d732d63656e746572206d622d32223e432f4475616e65732c203137202d205065676f3c2f703e0d0a3c7020636c6173733d22642d666c657820616c69676e2d6974656d732d63656e746572206d622d32223e2b33342039363620343039203936303c2f703e0d0a3c7020636c6173733d22642d666c657820616c69676e2d6974656d732d63656e746572223e3033303037363133406564752e6776612e65733c2f703e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d736d2d3620636f6c2d6c672d3420746578742d63656e7465722070742d34223e0d0a3c7020636c6173733d2270742d312066772d626f6c646572223e4c6567616c3c2f703e0d0a3c64697620636c6173733d2270742d3520746578742d63656e7465722070622d34223e0d0a3c7020636c6173733d2270742d34206d622d30223e3c6120636c6173733d22746578742d6465636f726174696f6e2d756e6465726c696e6520746578742d77686974652220687265663d2223223e417669736f206c6567616c3c2f613e3c2f703e0d0a3c7020636c6173733d226d622d30223e3c6120636c6173733d22746578742d6465636f726174696f6e2d756e6465726c696e6520746578742d77686974652220687265663d2223223e506f6cc3ad7469636120646520636f6f6b6965733c2f613e3c2f703e0d0a3c7020636c6173733d226d622d30223e3c6120636c6173733d22746578742d6465636f726174696f6e2d756e6465726c696e6520746578742d77686974652220687265663d2223223e506f6cc3ad7469636120646520707269766163696461643c2f613e3c2f703e0d0a3c2f6469763e0d0a3c64697620636c6173733d22746578742d63656e7465722070742d35206d742d31223e3c6120636c6173733d22746578742d6465636f726174696f6e2d6e6f6e6520746578742d77686974652220687265663d2268747470733a2f2f782e636f6d2f4761673076616c2f7374617475732f31363538303438343230393230313339373736223e203c2f613e203c6120636c6173733d22746578742d6465636f726174696f6e2d6e6f6e6520746578742d77686974652070782d342220687265663d2268747470733a2f2f7777772e6c696e6b6564696e2e636f6d2f636f6d70616e792f6169636861746770742f223e203c2f613e203c6120636c6173733d22746578742d6465636f726174696f6e2d6e6f6e6520746578742d77686974652220687265663d2268747470733a2f2f796f7574752e62652f7876465a6a6f3550674730223e203c2f613e3c2f6469763e0d0a3c2f6469763e0d0a3c64697620636c6173733d22636f6c2d6d642d313220636f6c2d6c672d342070742d6c672d322070652d6c672d35206d742d34223e0d0a3c64697620636c6173733d22746578742d63656e7465722070742d6c672d312070652d6c672d35223e0d0a3c683620636c6173733d2270652d6c672d342066772d626f6c646572223e4e4557534c4554544552533c2f68363e0d0a3c7020636c6173733d2270652d6c672d34206d622d6c672d32223e2a204e6f6d6272653c2f703e0d0a3c696e70757420636c6173733d22726f756e6465642d322070792d6c672d31206d652d6c672d342070782d6c672d322220747970653d2274657874223e0d0a3c7020636c6173733d2270652d6c672d342070742d6c672d33223e2a20456d61696c3c2f703e0d0a3c696e70757420636c6173733d22726f756e6465642d322070792d6c672d31206d652d6c672d342070782d6c672d32206d622d6c672d302220747970653d2274657874223e0d0a3c7020636c6173733d2270742d6c672d332070652d6c672d3520642d666c6578206a7573746966792d636f6e74656e742d63656e746572206d622d6c672d32223e3c696e70757420636c6173733d2270742d322220747970653d22636865636b626f78223e3c2f703e0d0a3c7020636c6173733d22746578742d63656e7465722070782d6c672d35223e41636570746f203c6120636c6173733d22746578742d6465636f726174696f6e2d756e6465726c696e6520746578742d77686974652220687265663d2223223e74c3a9726d696e6f733c2f613e2079203c6120636c6173733d22746578742d6465636f726174696f6e2d756e6465726c696e6520746578742d77686974652220687265663d2223223e636f6e646963696f6e65733c2f613e3c2f703e0d0a3c627574746f6e20636c6173733d2262746e2d7461726f6e6a6120726f756e6465642d3320746578742d7768697465206d782d6c672d35223e5375736372c3ad626574653c2f627574746f6e3e3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c212d2d636f7079207c5c5c7c2d2d3e0d0a3c64697620636c6173733d22636f6e7461696e65722d666c756964223e0d0a3c64697620636c6173733d22726f77223e0d0a3c64697620636c6173733d22636f6c2d3132223e0d0a3c7020636c6173733d22746578742d656e6420616c69676e2d6974656d732d63656e746572206d2d302070792d33223ec2a920436f7079726967687420323032342e20546f646f73206c6f73206465726563686f732072657365727661646f733c2f703e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c2f6469763e0d0a3c212d2d7363726970742d2d3e223b733a343a22626f6479223b733a303a22223b733a363a22696d61676573223b733a3137333a227b22696d6167655f696e74726f223a22222c22696d6167655f696e74726f5f616c74223a22222c22666c6f61745f696e74726f223a22222c22696d6167655f696e74726f5f63617074696f6e223a22222c22696d6167655f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f616c74223a22222c22666c6f61745f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f63617074696f6e223a22227d223b733a353a226361746964223b693a323b733a31303a22637265617465645f6279223b693a3937343b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323032352d30312d32392032323a35353a3139223b733a31313a226d6f6469666965645f6279223b693a3937343b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a333b733a383a226f72646572696e67223b693a303b733a383a2263617465676f7279223b733a343a22486f6d65223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a31313a22333a73746f636b666c6f77223b733a373a22636174736c7567223b733a363a22323a686f6d65223b733a363a22617574686f72223b733a373a226761627269656c223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032352d30312d32392032323a33383a3033223b693a31303b4e3b693a31313b733a36343a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d333a73746f636b666c6f772663617469643d32223b693a31323b4e3b693a31333b733a31393a22323032352d30312d32392032323a33383a3033223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a226761627269656c223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a343a22486f6d65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a31313b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a393b7d7d7d693a31363b733a393a2253746f636b666c6f77223b693a31373b693a333b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d33223b7d);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_finder_links_terms`
--

CREATE TABLE `oh67l_finder_links_terms` (
  `link_id` int UNSIGNED NOT NULL,
  `term_id` int UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_finder_links_terms`
--

INSERT INTO `oh67l_finder_links_terms` (`link_id`, `term_id`, `weight`) VALUES
(3, 1, 0.5334),
(1, 1, 0.98679),
(2, 1, 0.98679),
(1, 2, 0.56004),
(3, 2, 0.56004),
(4, 2, 0.56004),
(1, 3, 0.24),
(1, 4, 0.28),
(1, 5, 0.28),
(1, 6, 0.28),
(1, 7, 0.28),
(1, 8, 0.28),
(1, 9, 0.28),
(1, 10, 0.28),
(1, 11, 0.28),
(1, 12, 0.28),
(1, 13, 0.28),
(1, 14, 0.28),
(1, 15, 0.28),
(1, 16, 0.28),
(1, 17, 0.28),
(1, 18, 0.07),
(2, 18, 0.17),
(3, 18, 0.17),
(1, 19, 0.07),
(4, 19, 0.17),
(1, 20, 8.82),
(1, 21, 5.88),
(1, 22, 0.07),
(1, 23, 0.65338),
(1, 24, 0.60669),
(1, 25, 0.32669),
(1, 26, 4.57366),
(1, 27, 0.32669),
(1, 28, 1.96),
(1, 29, 0.56),
(1, 30, 0.23331),
(1, 31, 0.51331),
(1, 32, 0.23331),
(1, 33, 0.18662),
(3, 33, 3.54578),
(4, 33, 3.54578),
(1, 34, 3.92),
(1, 35, 0.28),
(1, 36, 0.09331),
(3, 36, 0.55986),
(4, 36, 0.55986),
(1, 37, 0.42),
(1, 38, 0.37331),
(1, 39, 0.56),
(1, 40, 0.32669),
(1, 41, 0.56),
(1, 42, 0.28),
(1, 43, 0.09331),
(1, 44, 0.51331),
(1, 45, 0.46669),
(1, 46, 0.32669),
(1, 47, 0.14),
(1, 48, 0.18669),
(1, 49, 0.23331),
(1, 50, 0.74662),
(1, 51, 0.42),
(1, 52, 0.32669),
(1, 53, 0.28),
(1, 54, 0.28),
(1, 55, 0.23331),
(1, 56, 0.56),
(1, 57, 0.42),
(1, 58, 0.46669),
(1, 59, 0.37331),
(1, 60, 0.18669),
(1, 61, 0.28),
(1, 62, 0.65338),
(1, 63, 1.30662),
(1, 64, 0.18669),
(1, 65, 0.14),
(3, 65, 0.28),
(4, 65, 0.28),
(1, 66, 0.32669),
(3, 209, 1.2),
(4, 209, 2.22),
(3, 210, 0.21),
(4, 210, 0.21),
(3, 211, 0.56),
(4, 211, 0.56),
(3, 212, 0.14),
(4, 212, 0.14),
(3, 213, 0.28),
(4, 213, 0.28),
(3, 214, 0.21),
(4, 214, 0.21),
(3, 215, 0.14),
(4, 215, 0.14),
(3, 216, 0.21),
(4, 216, 0.21),
(3, 217, 0.21),
(4, 217, 0.21),
(3, 218, 0.14007),
(4, 218, 0.14007),
(3, 219, 0.28),
(4, 219, 0.28),
(3, 220, 0.84),
(4, 220, 0.84),
(3, 221, 0.28),
(4, 221, 0.28),
(3, 222, 0.42),
(4, 222, 0.42),
(3, 223, 0.28),
(4, 223, 0.28),
(3, 224, 0.42),
(4, 224, 0.42),
(3, 225, 0.46669),
(4, 225, 0.46669),
(3, 226, 0.32669),
(4, 226, 0.32669),
(3, 227, 0.65331),
(4, 227, 0.65331),
(3, 228, 0.46662),
(4, 228, 0.46662),
(3, 229, 0.28),
(4, 229, 0.28),
(3, 230, 0.09331),
(4, 230, 0.09331),
(3, 231, 0.32669),
(4, 231, 0.32669),
(3, 232, 0.65331),
(4, 232, 0.65331),
(3, 233, 0.84),
(4, 233, 0.84),
(3, 234, 1.30676),
(4, 234, 1.30676),
(3, 235, 0.14),
(4, 235, 0.14),
(3, 236, 0.23331),
(4, 236, 0.23331),
(3, 237, 0.37331),
(4, 237, 0.37331),
(3, 238, 0.46669),
(4, 238, 0.46669),
(3, 239, 0.32669),
(4, 239, 0.32669),
(3, 240, 1.30662),
(4, 240, 1.30662),
(3, 241, 0.60669),
(4, 241, 0.60669),
(3, 242, 0.51331),
(4, 242, 0.51331),
(3, 243, 0.42),
(4, 243, 0.42),
(3, 244, 0.23331),
(4, 244, 0.23331),
(3, 245, 0.18669),
(4, 245, 0.18669),
(3, 246, 0.46669),
(4, 246, 0.46669),
(3, 247, 0.18669),
(4, 247, 0.18669),
(3, 248, 0.37331),
(4, 248, 0.37331),
(3, 249, 0.04669),
(4, 249, 0.04669),
(3, 250, 0.18669),
(4, 250, 0.18669),
(3, 251, 0.37338),
(4, 251, 0.37338),
(3, 252, 0.28),
(4, 252, 0.28),
(3, 253, 0.46662),
(4, 253, 0.46662),
(3, 254, 0.56),
(4, 254, 0.56),
(3, 255, 0.51331),
(4, 255, 0.51331),
(3, 256, 0.37331),
(4, 256, 0.37331),
(3, 257, 0.51331),
(4, 257, 0.51331),
(3, 258, 0.7),
(4, 258, 0.7),
(3, 259, 0.51331),
(4, 259, 0.51331),
(3, 260, 0.37331),
(4, 260, 0.37331),
(3, 261, 0.98007),
(4, 261, 0.98007),
(3, 262, 0.37331),
(4, 262, 0.37331),
(3, 263, 0.32669),
(4, 263, 0.32669),
(3, 264, 0.42),
(4, 264, 0.42),
(3, 265, 0.28),
(4, 265, 0.28),
(3, 266, 0.37331),
(4, 266, 0.37331),
(3, 267, 0.23331),
(4, 267, 0.23331),
(3, 268, 1.26),
(4, 268, 1.26),
(3, 269, 0.56),
(4, 269, 0.56),
(3, 270, 0.18669),
(4, 270, 0.18669),
(3, 271, 0.09331),
(4, 271, 0.09331),
(3, 272, 0.93338),
(4, 272, 0.93338),
(3, 273, 0.56),
(4, 273, 0.56),
(3, 274, 0.37338),
(4, 274, 0.37338),
(3, 275, 0.28),
(4, 275, 0.28),
(3, 276, 0.37331),
(4, 276, 0.37331),
(3, 277, 0.37331),
(4, 277, 0.37331),
(3, 278, 0.93324),
(4, 278, 0.93324),
(3, 279, 0.46669),
(4, 279, 0.46669),
(3, 280, 0.32669),
(4, 280, 0.32669),
(3, 281, 0.32669),
(4, 281, 0.32669),
(3, 282, 0.37331),
(4, 282, 0.37331),
(3, 283, 1.02662),
(4, 283, 1.02662),
(3, 284, 0.56),
(4, 284, 0.56),
(3, 285, 0.28),
(4, 285, 0.28),
(3, 286, 0.14),
(4, 286, 0.14),
(3, 287, 0.9331),
(4, 287, 0.9331),
(3, 288, 0.46669),
(4, 288, 0.46669),
(3, 289, 0.23331),
(4, 289, 0.23331),
(3, 290, 0.32669),
(4, 290, 0.32669),
(3, 291, 0.32669),
(4, 291, 0.32669),
(3, 292, 0.46669),
(4, 292, 0.46669),
(3, 293, 0.42),
(4, 293, 0.42),
(3, 294, 0.69993),
(4, 294, 0.69993),
(3, 295, 0.56),
(4, 295, 0.56),
(3, 296, 0.14),
(4, 296, 0.14),
(3, 297, 0.98007),
(4, 297, 0.98007),
(3, 298, 0.18662),
(4, 298, 0.18662),
(3, 299, 0.60669),
(4, 299, 0.60669),
(3, 300, 0.18669),
(4, 300, 0.18669),
(3, 301, 0.28),
(4, 301, 0.28),
(3, 302, 0.18669),
(4, 302, 0.18669),
(3, 303, 0.56),
(4, 303, 0.56),
(3, 304, 0.37338),
(4, 304, 0.37338),
(3, 305, 0.42),
(4, 305, 0.42),
(3, 306, 0.51331),
(4, 306, 0.51331),
(3, 307, 0.28),
(4, 307, 0.28),
(3, 308, 0.23331),
(4, 308, 0.23331),
(3, 309, 0.46669),
(4, 309, 0.46669),
(3, 310, 0.04669),
(4, 310, 0.04669),
(3, 311, 0.32669),
(4, 311, 0.32669),
(3, 312, 0.98007),
(4, 312, 0.98007),
(3, 313, 0.14),
(4, 313, 0.14),
(3, 314, 0.27993),
(4, 314, 0.27993),
(3, 315, 0.23331),
(4, 315, 0.23331),
(3, 316, 0.51331),
(4, 316, 0.51331),
(3, 317, 0.32669),
(4, 317, 0.32669),
(3, 318, 0.37331),
(4, 318, 0.37331),
(3, 319, 0.42),
(4, 319, 0.42),
(3, 320, 1.02662),
(4, 320, 1.02662),
(3, 321, 0.37331),
(4, 321, 0.37331),
(3, 322, 0.74662),
(4, 322, 0.74662),
(3, 323, 0.42),
(4, 323, 0.42),
(3, 324, 0.84),
(4, 324, 0.84),
(3, 325, 1.40007),
(4, 325, 1.40007),
(3, 326, 0.51331),
(4, 326, 0.51331),
(3, 327, 0.18669),
(4, 327, 0.18669),
(3, 328, 1.21303),
(4, 328, 1.21303),
(3, 329, 0.32669),
(4, 329, 0.32669),
(3, 330, 0.28),
(4, 330, 0.28),
(3, 331, 0.46662),
(4, 331, 0.46662),
(3, 332, 0.84),
(4, 332, 0.84),
(3, 333, 0.7),
(4, 333, 0.7),
(3, 334, 0.23331),
(4, 334, 0.23331),
(3, 335, 0.09338),
(4, 335, 0.09338),
(3, 336, 0.56),
(4, 336, 0.56),
(3, 337, 0.51331),
(4, 337, 0.51331),
(3, 338, 0.23331),
(4, 338, 0.23331),
(3, 339, 0.23331),
(4, 339, 0.23331),
(3, 340, 0.28),
(4, 340, 0.28),
(3, 341, 0.37331),
(4, 341, 0.37331),
(3, 342, 0.84),
(4, 342, 0.84),
(3, 343, 0.23331),
(4, 343, 0.23331),
(3, 344, 0.65338),
(4, 344, 0.65338),
(3, 345, 0.42),
(4, 345, 0.42),
(3, 346, 0.51331),
(4, 346, 0.51331),
(3, 347, 0.28),
(4, 347, 0.28),
(3, 348, 0.32669),
(4, 348, 0.32669),
(3, 349, 0.51331),
(4, 349, 0.51331),
(3, 350, 0.42),
(4, 350, 0.42),
(3, 351, 0.32669),
(4, 351, 0.32669),
(3, 352, 0.51331),
(4, 352, 0.51331),
(3, 353, 0.09331),
(4, 353, 0.09331),
(3, 354, 0.28),
(4, 354, 0.28),
(3, 355, 0.42),
(4, 355, 0.42),
(3, 356, 0.65338),
(4, 356, 0.65338),
(3, 357, 0.32669),
(4, 357, 0.32669),
(3, 358, 0.37331),
(4, 358, 0.37331),
(3, 359, 0.28),
(4, 359, 0.28),
(3, 360, 0.23331),
(4, 360, 0.23331),
(3, 361, 0.42),
(4, 361, 0.42),
(3, 362, 0.46669),
(4, 362, 0.46669),
(3, 363, 0.51331),
(4, 363, 0.51331),
(3, 364, 0.46669),
(4, 364, 0.46669),
(3, 365, 0.46669),
(4, 365, 0.46669),
(3, 366, 0.74676),
(4, 366, 0.74676),
(3, 367, 0.65338),
(4, 367, 0.65338),
(3, 368, 0.18669),
(4, 368, 0.18669),
(3, 369, 0.42),
(4, 369, 0.42),
(3, 370, 0.51331),
(4, 370, 0.51331),
(3, 371, 0.18669),
(4, 371, 0.18669),
(3, 372, 0.32669),
(4, 372, 0.32669),
(3, 373, 0.56),
(4, 373, 0.56),
(3, 374, 0.74662),
(4, 374, 0.74662),
(3, 375, 0.65338),
(4, 375, 0.65338),
(3, 376, 0.32669),
(4, 376, 0.32669),
(3, 377, 0.51331),
(4, 377, 0.51331),
(3, 378, 0.46669),
(4, 378, 0.46669),
(3, 379, 0.74662),
(4, 379, 0.74662),
(3, 380, 1.82007),
(4, 380, 1.82007),
(3, 381, 0.74662),
(4, 381, 0.74662),
(3, 382, 2.1),
(4, 382, 2.1),
(3, 383, 0.23331),
(4, 383, 0.23331),
(3, 384, 0.42),
(4, 384, 0.42),
(3, 385, 0.32669),
(4, 385, 0.32669),
(3, 386, 0.37338),
(4, 386, 0.37338),
(3, 387, 0.32669),
(4, 387, 0.32669),
(3, 388, 0.84),
(4, 388, 0.84),
(3, 389, 0.65338),
(4, 389, 0.65338),
(3, 390, 0.46669),
(4, 390, 0.46669),
(3, 391, 0.32669),
(4, 391, 0.32669),
(3, 392, 0.51331),
(4, 392, 0.51331),
(3, 393, 0.74662),
(4, 393, 0.74662),
(3, 394, 0.46669),
(4, 394, 0.46669),
(3, 395, 0.65338),
(4, 395, 0.65338),
(3, 396, 0.51331),
(4, 396, 0.51331),
(3, 397, 0.60669),
(4, 397, 0.60669),
(3, 398, 0.37331),
(4, 398, 0.37331),
(3, 399, 0.23331),
(4, 399, 0.23331),
(3, 400, 0.32669),
(4, 400, 0.32669),
(3, 401, 0.04669),
(4, 401, 0.04669),
(3, 402, 0.27993),
(4, 402, 0.27993),
(3, 403, 1.02662),
(4, 403, 1.02662),
(3, 404, 0.14),
(4, 404, 0.14),
(3, 405, 0.32669),
(4, 405, 0.32669),
(3, 406, 0.46669),
(4, 406, 0.46669),
(3, 407, 0.51331),
(4, 407, 0.51331),
(3, 408, 0.14),
(4, 408, 0.14),
(3, 409, 0.65338),
(4, 409, 0.65338),
(3, 410, 0.46662),
(4, 410, 0.46662),
(3, 411, 0.74662),
(4, 411, 0.74662),
(3, 412, 0.42),
(4, 412, 0.42),
(3, 413, 0.37331),
(4, 413, 0.37331),
(3, 414, 0.23331),
(4, 414, 0.23331),
(3, 415, 0.46662),
(4, 415, 0.46662),
(3, 416, 0.51331),
(4, 416, 0.51331),
(3, 417, 0.46669),
(4, 417, 0.46669),
(3, 418, 0.56),
(4, 418, 0.56),
(3, 419, 1.4),
(4, 419, 1.4),
(3, 420, 0.65338),
(4, 420, 0.65338),
(3, 421, 0.37338),
(4, 421, 0.37338),
(3, 422, 0.18669),
(4, 422, 0.18669),
(3, 423, 0.46662),
(4, 423, 0.46662),
(3, 424, 0.18669),
(4, 424, 0.18669),
(3, 425, 0.23331),
(4, 425, 0.23331),
(3, 426, 0.23331),
(4, 426, 0.23331),
(3, 427, 0.37331),
(4, 427, 0.37331),
(3, 428, 0.74662),
(4, 428, 0.74662),
(3, 429, 0.32669),
(4, 429, 0.32669),
(3, 430, 0.46655),
(4, 430, 0.46655),
(3, 431, 0.14),
(4, 431, 0.14),
(3, 432, 0.37331),
(4, 432, 0.37331),
(3, 433, 0.51331),
(4, 433, 0.51331),
(3, 434, 0.46655),
(4, 434, 0.46655),
(3, 435, 0.18669),
(4, 435, 0.18669),
(3, 436, 0.14),
(4, 436, 0.14),
(3, 437, 0.51331),
(4, 437, 0.51331),
(3, 438, 0.28),
(4, 438, 0.28),
(3, 439, 0.14),
(4, 439, 0.14),
(3, 440, 1.16725),
(4, 440, 1.16725),
(3, 441, 0.46662),
(4, 441, 0.46662),
(3, 442, 0.32669),
(4, 442, 0.32669),
(3, 443, 1.58661);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_finder_logging`
--

CREATE TABLE `oh67l_finder_logging` (
  `searchterm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5sum` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `query` blob NOT NULL,
  `hits` int NOT NULL DEFAULT '1',
  `results` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_finder_taxonomy`
--

CREATE TABLE `oh67l_finder_taxonomy` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0',
  `lft` int NOT NULL DEFAULT '0',
  `rgt` int NOT NULL DEFAULT '0',
  `level` int UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_finder_taxonomy`
--

INSERT INTO `oh67l_finder_taxonomy` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `state`, `access`, `language`) VALUES
(1, 0, 0, 21, 0, '', 'ROOT', 'root', 1, 1, '*'),
(2, 1, 1, 6, 1, 'type', 'Type', 'type', 1, 1, '*'),
(3, 2, 2, 3, 2, 'type/article', 'Article', 'article', 1, 1, '*'),
(4, 1, 7, 10, 1, 'author', 'Author', 'author', 1, 1, '*'),
(5, 4, 8, 9, 2, 'author/gabriel', 'gabriel', 'gabriel', 1, 1, '*'),
(6, 1, 11, 16, 1, 'category', 'Category', 'category', 1, 1, '*'),
(7, 6, 12, 13, 2, 'category/uncategorised', 'Uncategorised', 'uncategorised', 1, 1, '*'),
(8, 1, 17, 20, 1, 'language', 'Language', 'language', 1, 1, '*'),
(9, 8, 18, 19, 2, 'language/4086f6336014c75439f87cbda42d9c51', '*', '4086f6336014c75439f87cbda42d9c51', 1, 1, '*'),
(10, 2, 4, 5, 2, 'type/category', 'Category', 'category', 1, 1, '*'),
(11, 6, 14, 15, 2, 'category/home', 'Home', 'home', 1, 1, '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_finder_taxonomy_map`
--

CREATE TABLE `oh67l_finder_taxonomy_map` (
  `link_id` int UNSIGNED NOT NULL,
  `node_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_finder_taxonomy_map`
--

INSERT INTO `oh67l_finder_taxonomy_map` (`link_id`, `node_id`) VALUES
(1, 3),
(1, 5),
(1, 7),
(1, 9),
(2, 9),
(2, 10),
(3, 3),
(3, 5),
(3, 9),
(3, 11),
(4, 3),
(4, 5),
(4, 9),
(4, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_finder_terms`
--

CREATE TABLE `oh67l_finder_terms` (
  `term_id` int UNSIGNED NOT NULL,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `links` int NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_finder_terms`
--

INSERT INTO `oh67l_finder_terms` (`term_id`, `term`, `stem`, `common`, `phrase`, `weight`, `soundex`, `links`, `language`) VALUES
(1, 'home', 'home', 0, 0, 0.2667, 'H500', 9, '*'),
(2, 'gabriel', 'gabriel', 0, 0, 0.4667, 'G164', 9, '*'),
(3, '1', '1', 0, 0, 0.1, '', 5, '*'),
(4, '1001', '1001', 0, 0, 0.4, '', 5, '*'),
(5, '1002', '1002', 0, 0, 0.4, '', 5, '*'),
(6, '1003', '1003', 0, 0, 0.4, '', 5, '*'),
(7, '1004', '1004', 0, 0, 0.4, '', 5, '*'),
(8, '1005', '1005', 0, 0, 0.4, '', 5, '*'),
(9, '1007', '1007', 0, 0, 0.4, '', 5, '*'),
(10, '1008', '1008', 0, 0, 0.4, '', 5, '*'),
(11, '1009', '1009', 0, 0, 0.4, '', 5, '*'),
(12, '1010', '1010', 0, 0, 0.4, '', 5, '*'),
(13, '1011', '1011', 0, 0, 0.4, '', 5, '*'),
(14, '1012', '1012', 0, 0, 0.4, '', 5, '*'),
(15, '1013', '1013', 0, 0, 0.4, '', 5, '*'),
(16, '1014', '1014', 0, 0, 0.4, '', 5, '*'),
(17, '1015', '1015', 0, 0, 0.4, '', 5, '*'),
(18, '2', '2', 0, 0, 0.1, '', 9, '*'),
(19, '3', '3', 0, 0, 0.1, '', 8, '*'),
(20, '639639639', '639639639', 0, 0, 0.9, '', 5, '*'),
(21, '68458699g', '68458699g', 0, 0, 0.6, 'G000', 5, '*'),
(22, '9', '9', 0, 0, 0.1, '', 5, '*'),
(23, 'accions', 'accions', 0, 0, 0.4667, 'A252', 5, '*'),
(24, 'administració', 'administració', 0, 0, 0.8667, 'A352362', 5, '*'),
(25, 'aplicar', 'aplicar', 0, 0, 0.4667, 'A1426', 5, '*'),
(26, 'carlos2', 'carlos2', 0, 0, 0.4667, 'C642', 5, '*'),
(27, 'clients', 'clients', 0, 0, 0.4667, 'C4532', 5, '*'),
(28, 'com', 'com', 0, 0, 0.2, 'C500', 5, '*'),
(29, 'correu', 'correu', 0, 0, 0.4, 'C600', 5, '*'),
(30, 'crear', 'crear', 0, 0, 0.3333, 'C600', 5, '*'),
(31, 'd\'enviament', 'd\'enviament', 0, 0, 0.7333, 'D5153', 5, '*'),
(32, 'dades', 'dades', 0, 0, 0.3333, 'D200', 5, '*'),
(33, 'de', 'de', 0, 0, 0.1333, 'D000', 9, '*'),
(34, 'dhl', 'dhl', 0, 0, 0.2, 'D400', 5, '*'),
(35, 'dni', 'dni', 0, 0, 0.2, 'D500', 5, '*'),
(36, 'en', 'en', 0, 0, 0.1333, 'E500', 9, '*'),
(37, 'envíament', 'envíament', 0, 0, 0.6, 'E5153', 5, '*'),
(38, 'esborrar', 'esborrar', 0, 0, 0.5333, 'E216', 5, '*'),
(39, 'estats', 'estats', 0, 0, 0.4, 'E232', 5, '*'),
(40, 'filtrar', 'filtrar', 0, 0, 0.4667, 'F436', 5, '*'),
(41, 'geogràfiques', 'geogràfiques', 0, 0, 0.8, 'G612', 5, '*'),
(42, 'gestió', 'gestió', 0, 0, 0.4, 'G300', 5, '*'),
(43, 'id', 'id', 0, 0, 0.1333, 'I300', 5, '*'),
(44, 'incidències', 'incidències', 0, 0, 0.7333, 'I52352', 5, '*'),
(45, 'invertaris', 'invertaris', 0, 0, 0.6667, 'I516362', 5, '*'),
(46, 'llistat', 'llistat', 0, 0, 0.4667, 'L230', 5, '*'),
(47, 'lot', 'lot', 0, 0, 0.2, 'L300', 5, '*'),
(48, 'lots', 'lots', 0, 0, 0.2667, 'L320', 5, '*'),
(49, 'línia', 'línia', 0, 0, 0.3333, 'L500', 5, '*'),
(50, 'magatzem', 'magatzem', 0, 0, 0.5333, 'M2325', 5, '*'),
(51, 'moviments', 'moviments', 0, 0, 0.6, 'M1532', 5, '*'),
(52, 'netejar', 'netejar', 0, 0, 0.4667, 'N326', 5, '*'),
(53, 'nif', 'nif', 0, 0, 0.2, 'N100', 5, '*'),
(54, 'nom', 'nom', 0, 0, 0.2, 'N000', 5, '*'),
(55, 'opció', 'opció', 0, 0, 0.3333, 'O120', 5, '*'),
(56, 'ordres', 'ordres', 0, 0, 0.4, 'O6362', 5, '*'),
(57, 'productes', 'productes', 0, 0, 0.6, 'P63232', 5, '*'),
(58, 'proveïdors', 'proveïdors', 0, 0, 0.6667, 'P61362', 5, '*'),
(59, 'recepció', 'recepció', 0, 0, 0.5333, 'R212', 5, '*'),
(60, 'rols', 'rols', 0, 0, 0.2667, 'R420', 5, '*'),
(61, 'tancar', 'tancar', 0, 0, 0.4, 'T526', 5, '*'),
(62, 'telèfon', 'telèfon', 0, 0, 0.4667, 'T415', 5, '*'),
(63, 'transportistes', 'transportistes', 0, 0, 0.9333, 'T652163232', 5, '*'),
(64, 'tria', 'tria', 0, 0, 0.2667, 'T600', 5, '*'),
(65, 'una', 'una', 0, 0, 0.2, 'U500', 9, '*'),
(66, 'usuaris', 'usuaris', 0, 0, 0.4667, 'U262', 5, '*'),
(128, '--blauclar', '--blauclar', 0, 0, 0.6667, 'B4246', 2, '*'),
(129, '--blaufosc', '--blaufosc', 0, 0, 0.6667, 'B412', 2, '*'),
(130, '--gris', '--gris', 0, 0, 0.4, 'G620', 2, '*'),
(131, '--grisoscur', '--grisoscur', 0, 0, 0.7333, 'G626', 2, '*'),
(132, '--taronja', '--taronja', 0, 0, 0.6, 'T652', 2, '*'),
(133, '--taronjaog', '--taronjaog', 0, 0, 0.7333, 'T652', 2, '*'),
(134, '.aplicar', '.aplicar', 0, 0, 0.5333, 'A1426', 2, '*'),
(135, '.bg-danger', '.bg-danger', 0, 0, 0.6667, 'B23526', 2, '*'),
(136, '.bi', '.bi', 0, 0, 0.2, 'B000', 2, '*'),
(137, '.blau', '.blau', 0, 0, 0.3333, 'B400', 2, '*'),
(138, '.btn', '.btn', 0, 0, 0.2667, 'B350', 2, '*'),
(139, '.d-flex', '.d-flex', 0, 0, 0.4667, 'D142', 2, '*'),
(140, '.damunt', '.damunt', 0, 0, 0.4667, 'D530', 2, '*'),
(141, '.fonsblauclar', '.fonsblauclar', 0, 0, 0.8667, 'F5214246', 2, '*'),
(142, '.fonsblaufosc', '.fonsblaufosc', 0, 0, 0.8667, 'F521412', 2, '*'),
(143, '.fonsgris', '.fonsgris', 0, 0, 0.6, 'F5262', 2, '*'),
(144, '.fonsgrisdif', '.fonsgrisdif', 0, 0, 0.8, 'F526231', 2, '*'),
(145, '.fonstaronja', '.fonstaronja', 0, 0, 0.8, 'F523652', 2, '*'),
(146, '.fonstaronjaog', '.fonstaronjaog', 0, 0, 0.9333, 'F523652', 2, '*'),
(147, '.hvb', '.hvb', 0, 0, 0.2667, 'H100', 2, '*'),
(148, '.logo-footer', '.logo-footer', 0, 0, 0.8, 'L2136', 2, '*'),
(149, '.nopointer', '.nopointer', 0, 0, 0.6667, 'N1536', 2, '*'),
(150, '.num', '.num', 0, 0, 0.2667, 'N000', 2, '*'),
(151, '.page-item', '.page-item', 0, 0, 0.6667, 'P235', 2, '*'),
(152, '.page-link', '.page-link', 0, 0, 0.6667, 'P2452', 2, '*'),
(153, '.pagination', '.pagination', 0, 0, 0.7333, 'P2535', 2, '*'),
(154, '0.85em', '0.85em', 0, 0, 0.4, 'E500', 2, '*'),
(155, '1050', '1050', 0, 0, 0.4, '', 2, '*'),
(156, '222831', '222831', 0, 0, 0.6, '', 2, '*'),
(157, '25px', '25px', 0, 0, 0.2667, 'P200', 2, '*'),
(158, '30475e', '30475e', 0, 0, 0.4, 'E000', 2, '*'),
(159, '700', '700', 0, 0, 0.3, '', 2, '*'),
(160, '80px', '80px', 0, 0, 0.2667, 'P200', 2, '*'),
(161, '991px', '991px', 0, 0, 0.3333, 'P200', 2, '*'),
(162, 'active', 'active', 0, 0, 0.4, 'A231', 2, '*'),
(163, 'align-items', 'align-items', 0, 0, 0.7333, 'A425352', 2, '*'),
(164, 'attr', 'attr', 0, 0, 0.2667, 'A360', 2, '*'),
(165, 'b9bbbd', 'b9bbbd', 0, 0, 0.4, 'B300', 2, '*'),
(166, 'background-color', 'background-color', 0, 0, 1, 'B2653246', 2, '*'),
(167, 'before', 'before', 0, 0, 0.4, 'B600', 2, '*'),
(168, 'block', 'block', 0, 0, 0.3333, 'B420', 2, '*'),
(169, 'body', 'body', 0, 0, 0.2667, 'B300', 2, '*'),
(170, 'border-color', 'border-color', 0, 0, 0.8, 'B636246', 2, '*'),
(171, 'capitalize', 'capitalize', 0, 0, 0.6667, 'C1342', 2, '*'),
(172, 'center', 'center', 0, 0, 0.4, 'C536', 2, '*'),
(173, 'color', 'color', 0, 0, 0.3333, 'C460', 2, '*'),
(174, 'content', 'content', 0, 0, 0.4667, 'C5353', 2, '*'),
(175, 'cursor', 'cursor', 0, 0, 0.4, 'C626', 2, '*'),
(176, 'data-cell', 'data-cell', 0, 0, 0.6, 'D240', 2, '*'),
(177, 'data-no-colon', 'data-no-colon', 0, 0, 0.8667, 'D5245', 2, '*'),
(178, 'default', 'default', 0, 0, 0.4667, 'D143', 2, '*'),
(179, 'display', 'display', 0, 0, 0.4667, 'D214', 2, '*'),
(180, 'e9ecef', 'e9ecef', 0, 0, 0.4, 'E210', 2, '*'),
(181, 'ececec', 'ececec', 0, 0, 0.4, 'E200', 2, '*'),
(182, 'ff7000', 'ff7000', 0, 0, 0.4, 'F000', 2, '*'),
(183, 'ff7f50', 'ff7f50', 0, 0, 0.4, 'F000', 2, '*'),
(184, 'ffffff', 'ffffff', 0, 0, 0.4, 'F000', 2, '*'),
(185, 'flex-direction', 'flex-direction', 0, 0, 0.9333, 'F4236235', 2, '*'),
(186, 'font-family', 'font-family', 0, 0, 0.7333, 'F53154', 2, '*'),
(187, 'font-size', 'font-size', 0, 0, 0.6, 'F532', 2, '*'),
(188, 'font-weight', 'font-weight', 0, 0, 0.7333, 'F5323', 2, '*'),
(189, 'hover', 'hover', 0, 0, 0.3333, 'H160', 2, '*'),
(190, 'important', 'important', 0, 0, 0.6, 'I516353', 2, '*'),
(191, 'justify-content', 'justify-content', 0, 0, 1, 'J3125353', 2, '*'),
(192, 'margin', 'margin', 0, 0, 0.4, 'M625', 2, '*'),
(193, 'max-width', 'max-width', 0, 0, 0.6, 'M230', 2, '*'),
(194, 'media', 'media', 0, 0, 0.3333, 'M300', 2, '*'),
(195, 'none', 'none', 0, 0, 0.2667, 'N000', 2, '*'),
(196, 'noto', 'noto', 0, 0, 0.2667, 'N300', 2, '*'),
(197, 'padding', 'padding', 0, 0, 0.4667, 'P352', 2, '*'),
(198, 'root', 'root', 0, 0, 0.2667, 'R300', 2, '*'),
(199, 'row', 'row', 0, 0, 0.2, 'R000', 2, '*'),
(200, 'serif', 'serif', 0, 0, 0.3333, 'S610', 2, '*'),
(201, 'space-between', 'space-between', 0, 0, 0.8667, 'S12135', 2, '*'),
(202, 'td', 'td', 0, 0, 0.1333, 'T000', 2, '*'),
(203, 'text-transform', 'text-transform', 0, 0, 0.9333, 'T23652165', 2, '*'),
(204, 'th', 'th', 0, 0, 0.1333, 'T000', 2, '*'),
(205, 'true', 'true', 0, 0, 0.2667, 'T600', 2, '*'),
(206, 'var', 'var', 0, 0, 0.2, 'V600', 2, '*'),
(207, 'white', 'white', 0, 0, 0.3333, 'W300', 2, '*'),
(208, 'z-index', 'z-index', 0, 0, 0.4667, 'Z532', 2, '*'),
(209, 'stockflow', 'stockflow', 0, 0, 0.6, 'S3214', 4, '*'),
(210, '+34', '+34', 0, 0, 0.3, '', 4, '*'),
(211, '03007613', '03007613', 0, 0, 0.8, '', 4, '*'),
(212, '17', '17', 0, 0, 0.2, '', 4, '*'),
(213, '2024', '2024', 0, 0, 0.4, '', 4, '*'),
(214, '409', '409', 0, 0, 0.3, '', 4, '*'),
(215, '90', '90', 0, 0, 0.2, '', 4, '*'),
(216, '960', '960', 0, 0, 0.3, '', 4, '*'),
(217, '966', '966', 0, 0, 0.3, '', 4, '*'),
(218, 'a', 'a', 0, 0, 0.0667, 'A000', 4, '*'),
(219, 'accede', 'accede', 0, 0, 0.4, 'A230', 4, '*'),
(220, 'accesible', 'accesible', 0, 0, 0.6, 'A214', 4, '*'),
(221, 'acepto', 'acepto', 0, 0, 0.4, 'A213', 4, '*'),
(222, 'acertadas', 'acertadas', 0, 0, 0.6, 'A2632', 4, '*'),
(223, 'adapta', 'adapta', 0, 0, 0.4, 'A313', 4, '*'),
(224, 'adaptable', 'adaptable', 0, 0, 0.6, 'A31314', 4, '*'),
(225, 'adaptación', 'adaptación', 0, 0, 0.6667, 'A31325', 4, '*'),
(226, 'adjunto', 'adjunto', 0, 0, 0.4667, 'A3253', 4, '*'),
(227, 'administración', 'administración', 0, 0, 0.9333, 'A3523625', 4, '*'),
(228, 'ahora', 'ahora', 0, 0, 0.3333, 'A600', 4, '*'),
(229, 'ahorro', 'ahorro', 0, 0, 0.4, 'A600', 4, '*'),
(230, 'al', 'al', 0, 0, 0.1333, 'A400', 4, '*'),
(231, 'alertas', 'alertas', 0, 0, 0.4667, 'A4632', 4, '*'),
(232, 'almacenamiento', 'almacenamiento', 0, 0, 0.9333, 'A45253', 4, '*'),
(233, 'almacenes', 'almacenes', 0, 0, 0.6, 'A45252', 4, '*'),
(234, 'almacén', 'almacén', 0, 0, 0.4667, 'A4525', 4, '*'),
(235, 'ana', 'ana', 0, 0, 0.2, 'A500', 4, '*'),
(236, 'antes', 'antes', 0, 0, 0.3333, 'A532', 4, '*'),
(237, 'análisis', 'análisis', 0, 0, 0.5333, 'A542', 4, '*'),
(238, 'aplicación', 'aplicación', 0, 0, 0.6667, 'A1425', 4, '*'),
(239, 'aumenta', 'aumenta', 0, 0, 0.4667, 'A530', 4, '*'),
(240, 'automatización', 'automatización', 0, 0, 0.9333, 'A35325', 4, '*'),
(241, 'automatizados', 'automatizados', 0, 0, 0.8667, 'A353232', 4, '*'),
(242, 'automatizar', 'automatizar', 0, 0, 0.7333, 'A35326', 4, '*'),
(243, 'avanzados', 'avanzados', 0, 0, 0.6, 'A15232', 4, '*'),
(244, 'aviso', 'aviso', 0, 0, 0.3333, 'A120', 4, '*'),
(245, 'bajo', 'bajo', 0, 0, 0.2667, 'B200', 4, '*'),
(246, 'beneficios', 'beneficios', 0, 0, 0.6667, 'B512', 4, '*'),
(247, 'blog', 'blog', 0, 0, 0.2667, 'B420', 4, '*'),
(248, 'búsqueda', 'búsqueda', 0, 0, 0.5333, 'B230', 4, '*'),
(249, 'c', 'c', 0, 0, 0.0667, 'C000', 4, '*'),
(250, 'cada', 'cada', 0, 0, 0.2667, 'C300', 4, '*'),
(251, 'caos', 'caos', 0, 0, 0.2667, 'C000', 4, '*'),
(252, 'carlos', 'carlos', 0, 0, 0.4, 'C642', 4, '*'),
(253, 'casos', 'casos', 0, 0, 0.3333, 'C000', 4, '*'),
(254, 'centralizado', 'centralizado', 0, 0, 0.8, 'C536423', 4, '*'),
(255, 'centralizar', 'centralizar', 0, 0, 0.7333, 'C536426', 4, '*'),
(256, 'clientes', 'clientes', 0, 0, 0.5333, 'C4532', 4, '*'),
(257, 'completamos', 'completamos', 0, 0, 0.7333, 'C514352', 4, '*'),
(258, 'con', 'con', 0, 0, 0.2, 'C500', 4, '*'),
(259, 'condiciones', 'condiciones', 0, 0, 0.7333, 'C53252', 4, '*'),
(260, 'contacto', 'contacto', 0, 0, 0.5333, 'C5323', 4, '*'),
(261, 'control', 'control', 0, 0, 0.4667, 'C5364', 4, '*'),
(262, 'controla', 'controla', 0, 0, 0.5333, 'C5364', 4, '*'),
(263, 'cookies', 'cookies', 0, 0, 0.4667, 'C000', 4, '*'),
(264, 'copyright', 'copyright', 0, 0, 0.6, 'C1623', 4, '*'),
(265, 'costos', 'costos', 0, 0, 0.4, 'C320', 4, '*'),
(266, 'costosos', 'costosos', 0, 0, 0.5333, 'C320', 4, '*'),
(267, 'crece', 'crece', 0, 0, 0.3333, 'C620', 4, '*'),
(268, 'cualquier', 'cualquier', 0, 0, 0.6, 'C426', 4, '*'),
(269, 'cumplimiento', 'cumplimiento', 0, 0, 0.8, 'C51453', 4, '*'),
(270, 'cómo', 'cómo', 0, 0, 0.2667, 'C500', 4, '*'),
(271, 'da', 'da', 0, 0, 0.1333, 'D000', 4, '*'),
(272, 'decisiones', 'decisiones', 0, 0, 0.6667, 'D252', 4, '*'),
(273, 'del', 'del', 0, 0, 0.2, 'D400', 4, '*'),
(274, 'demo', 'demo', 0, 0, 0.2667, 'D500', 4, '*'),
(275, 'dentro', 'dentro', 0, 0, 0.4, 'D536', 4, '*'),
(276, 'derechos', 'derechos', 0, 0, 0.5333, 'D620', 4, '*'),
(277, 'descarga', 'descarga', 0, 0, 0.5333, 'D262', 4, '*'),
(278, 'desde', 'desde', 0, 0, 0.3333, 'D230', 4, '*'),
(279, 'detallados', 'detallados', 0, 0, 0.6667, 'D432', 4, '*'),
(280, 'detalle', 'detalle', 0, 0, 0.4667, 'D400', 4, '*'),
(281, 'diarias', 'diarias', 0, 0, 0.4667, 'D620', 4, '*'),
(282, 'diseñada', 'diseñada', 0, 0, 0.5333, 'D230', 4, '*'),
(283, 'dispositivo', 'dispositivo', 0, 0, 0.7333, 'D21231', 4, '*'),
(284, 'dispositivos', 'dispositivos', 0, 0, 0.8, 'D212312', 4, '*'),
(285, 'duanes', 'duanes', 0, 0, 0.4, 'D520', 4, '*'),
(286, 'edu', 'edu', 0, 0, 0.2, 'E300', 4, '*'),
(287, 'el', 'el', 0, 0, 0.1333, 'E400', 4, '*'),
(288, 'eliminando', 'eliminando', 0, 0, 0.6667, 'E453', 4, '*'),
(289, 'email', 'email', 0, 0, 0.3333, 'E540', 4, '*'),
(290, 'empresa', 'empresa', 0, 0, 0.4667, 'E5162', 4, '*'),
(291, 'encanta', 'encanta', 0, 0, 0.4667, 'E5253', 4, '*'),
(292, 'encargados', 'encargados', 0, 0, 0.6667, 'E526232', 4, '*'),
(293, 'encontrar', 'encontrar', 0, 0, 0.6, 'E52536', 4, '*'),
(294, 'envío', 'envío', 0, 0, 0.3333, 'E510', 4, '*'),
(295, 'equipo', 'equipo', 0, 0, 0.4, 'E210', 4, '*'),
(296, 'era', 'era', 0, 0, 0.2, 'E600', 4, '*'),
(297, 'errores', 'errores', 0, 0, 0.4667, 'E620', 4, '*'),
(298, 'es', 'es', 0, 0, 0.1333, 'E200', 4, '*'),
(299, 'escalabilidad', 'escalabilidad', 0, 0, 0.8667, 'E24143', 4, '*'),
(300, 'esta', 'esta', 0, 0, 0.2667, 'E230', 4, '*'),
(301, 'estado', 'estado', 0, 0, 0.4, 'E230', 4, '*'),
(302, 'este', 'este', 0, 0, 0.2667, 'E230', 4, '*'),
(303, 'estratégicas', 'estratégicas', 0, 0, 0.8, 'E23632', 4, '*'),
(304, 'está', 'está', 0, 0, 0.2667, 'E230', 4, '*'),
(305, 'facilidad', 'facilidad', 0, 0, 0.6, 'F243', 4, '*'),
(306, 'facilitando', 'facilitando', 0, 0, 0.7333, 'F24353', 4, '*'),
(307, 'flujos', 'flujos', 0, 0, 0.4, 'F420', 4, '*'),
(308, 'fácil', 'fácil', 0, 0, 0.3333, 'F240', 4, '*'),
(309, 'fácilmente', 'fácilmente', 0, 0, 0.6667, 'F2453', 4, '*'),
(310, 'g', 'g', 0, 0, 0.0667, 'G000', 4, '*'),
(311, 'gerente', 'gerente', 0, 0, 0.4667, 'G653', 4, '*'),
(312, 'gestión', 'gestión', 0, 0, 0.4667, 'G350', 4, '*'),
(313, 'gva', 'gva', 0, 0, 0.2, 'G100', 4, '*'),
(314, 'ha', 'ha', 0, 0, 0.1333, 'H000', 4, '*'),
(315, 'hasta', 'hasta', 0, 0, 0.3333, 'H230', 4, '*'),
(316, 'herramienta', 'herramienta', 0, 0, 0.7333, 'H653', 4, '*'),
(317, 'humanos', 'humanos', 0, 0, 0.4667, 'H520', 4, '*'),
(318, 'imaginar', 'imaginar', 0, 0, 0.5333, 'I5256', 4, '*'),
(319, 'increíble', 'increíble', 0, 0, 0.6, 'I52614', 4, '*'),
(320, 'información', 'información', 0, 0, 0.7333, 'I516525', 4, '*'),
(321, 'informes', 'informes', 0, 0, 0.5333, 'I51652', 4, '*'),
(322, 'interfaz', 'interfaz', 0, 0, 0.5333, 'I53612', 4, '*'),
(323, 'intergral', 'intergral', 0, 0, 0.6, 'I536264', 4, '*'),
(324, 'intuitiva', 'intuitiva', 0, 0, 0.6, 'I531', 4, '*'),
(325, 'inventario', 'inventario', 0, 0, 0.6667, 'I51536', 4, '*'),
(326, 'inventarios', 'inventarios', 0, 0, 0.7333, 'I515362', 4, '*'),
(327, 'juan', 'juan', 0, 0, 0.2667, 'J500', 4, '*'),
(328, 'la', 'la', 0, 0, 0.1333, 'L000', 4, '*'),
(329, 'laptops', 'laptops', 0, 0, 0.4667, 'L1312', 4, '*'),
(330, 'las', 'las', 0, 0, 0.2, 'L200', 4, '*'),
(331, 'legal', 'legal', 0, 0, 0.3333, 'L240', 4, '*'),
(332, 'logística', 'logística', 0, 0, 0.6, 'L232', 4, '*'),
(333, 'los', 'los', 0, 0, 0.2, 'L200', 4, '*'),
(334, 'lugar', 'lugar', 0, 0, 0.3333, 'L260', 4, '*'),
(335, 'm', 'm', 0, 0, 0.0667, 'M000', 4, '*'),
(336, 'manera', 'manera', 0, 0, 0.4, 'M600', 4, '*'),
(337, 'manteniendo', 'manteniendo', 0, 0, 0.7333, 'M353', 4, '*'),
(338, 'marta', 'marta', 0, 0, 0.3333, 'M630', 4, '*'),
(339, 'mayor', 'mayor', 0, 0, 0.3333, 'M600', 4, '*'),
(340, 'mejora', 'mejora', 0, 0, 0.4, 'M260', 4, '*'),
(341, 'mejorado', 'mejorado', 0, 0, 0.5333, 'M263', 4, '*'),
(342, 'minimizan', 'minimizan', 0, 0, 0.6, 'M250', 4, '*'),
(343, 'mitad', 'mitad', 0, 0, 0.3333, 'M300', 4, '*'),
(344, 'moderna', 'moderna', 0, 0, 0.4667, 'M365', 4, '*'),
(345, 'monitorea', 'monitorea', 0, 0, 0.6, 'M360', 4, '*'),
(346, 'movimientos', 'movimientos', 0, 0, 0.7333, 'M1532', 4, '*'),
(347, 'más', 'más', 0, 0, 0.2, 'M200', 4, '*'),
(348, 'móviles', 'móviles', 0, 0, 0.4667, 'M142', 4, '*'),
(349, 'necesitamos', 'necesitamos', 0, 0, 0.7333, 'N2352', 4, '*'),
(350, 'necesitas', 'necesitas', 0, 0, 0.6, 'N232', 4, '*'),
(351, 'negocio', 'negocio', 0, 0, 0.4667, 'N200', 4, '*'),
(352, 'newsletters', 'newsletters', 0, 0, 0.7333, 'N24362', 4, '*'),
(353, 'no', 'no', 0, 0, 0.1333, 'N000', 4, '*'),
(354, 'nombre', 'nombre', 0, 0, 0.4, 'N160', 4, '*'),
(355, 'nos', 'nos', 0, 0, 0.2, 'N200', 4, '*'),
(356, 'nuestra', 'nuestra', 0, 0, 0.4667, 'N236', 4, '*'),
(357, 'nuestro', 'nuestro', 0, 0, 0.4667, 'N236', 4, '*'),
(358, 'nuestros', 'nuestros', 0, 0, 0.5333, 'N2362', 4, '*'),
(359, 'nuevas', 'nuevas', 0, 0, 0.4, 'N120', 4, '*'),
(360, 'obtén', 'obtén', 0, 0, 0.3333, 'O135', 4, '*'),
(361, 'operarios', 'operarios', 0, 0, 0.6, 'O162', 4, '*'),
(362, 'optimizada', 'optimizada', 0, 0, 0.6667, 'O13523', 4, '*'),
(363, 'optimizando', 'optimizando', 0, 0, 0.7333, 'O135253', 4, '*'),
(364, 'organizada', 'organizada', 0, 0, 0.6667, 'O62523', 4, '*'),
(365, 'organizado', 'organizado', 0, 0, 0.6667, 'O62523', 4, '*'),
(366, 'para', 'para', 0, 0, 0.2667, 'P600', 4, '*'),
(367, 'pedidos', 'pedidos', 0, 0, 0.4667, 'P320', 4, '*'),
(368, 'pego', 'pego', 0, 0, 0.2667, 'P200', 4, '*'),
(369, 'permitido', 'permitido', 0, 0, 0.6, 'P653', 4, '*'),
(370, 'permitiendo', 'permitiendo', 0, 0, 0.7333, 'P65353', 4, '*'),
(371, 'pero', 'pero', 0, 0, 0.2667, 'P600', 4, '*'),
(372, 'picking', 'picking', 0, 0, 0.4667, 'P252', 4, '*'),
(373, 'planes', 'planes', 0, 0, 0.4, 'P452', 4, '*'),
(374, 'política', 'política', 0, 0, 0.5333, 'P432', 4, '*'),
(375, 'precios', 'precios', 0, 0, 0.4667, 'P620', 4, '*'),
(376, 'preciso', 'preciso', 0, 0, 0.4667, 'P620', 4, '*'),
(377, 'preparación', 'preparación', 0, 0, 0.7333, 'P61625', 4, '*'),
(378, 'privacidad', 'privacidad', 0, 0, 0.6667, 'P6123', 4, '*'),
(379, 'procesos', 'procesos', 0, 0, 0.5333, 'P620', 4, '*'),
(380, 'productividad', 'productividad', 0, 0, 0.8667, 'P632313', 4, '*'),
(381, 'producto', 'producto', 0, 0, 0.5333, 'P6323', 4, '*'),
(382, 'productos', 'productos', 0, 0, 0.6, 'P63232', 4, '*'),
(383, 'puedo', 'puedo', 0, 0, 0.3333, 'P300', 4, '*'),
(384, 'que', 'que', 0, 0, 0.2, 'Q000', 4, '*'),
(385, 'quiénes', 'quiénes', 0, 0, 0.4667, 'Q520', 4, '*'),
(386, 'real', 'real', 0, 0, 0.2667, 'R400', 4, '*'),
(387, 'realiza', 'realiza', 0, 0, 0.4667, 'R420', 4, '*'),
(388, 'recepción', 'recepción', 0, 0, 0.6, 'R2125', 4, '*'),
(389, 'reducen', 'reducen', 0, 0, 0.4667, 'R325', 4, '*'),
(390, 'reduciendo', 'reduciendo', 0, 0, 0.6667, 'R3253', 4, '*'),
(391, 'reducir', 'reducir', 0, 0, 0.4667, 'R326', 4, '*'),
(392, 'rendimiento', 'rendimiento', 0, 0, 0.7333, 'R5353', 4, '*'),
(393, 'reportes', 'reportes', 0, 0, 0.5333, 'R1632', 4, '*'),
(394, 'reservados', 'reservados', 0, 0, 0.6667, 'R26132', 4, '*'),
(395, 'reseñas', 'reseñas', 0, 0, 0.4667, 'R200', 4, '*'),
(396, 'responsable', 'responsable', 0, 0, 0.7333, 'R215214', 4, '*'),
(397, 'revolucionado', 'revolucionado', 0, 0, 0.8667, 'R14253', 4, '*'),
(398, 'rotación', 'rotación', 0, 0, 0.5333, 'R325', 4, '*'),
(399, 'rutas', 'rutas', 0, 0, 0.3333, 'R320', 4, '*'),
(400, 'rápidas', 'rápidas', 0, 0, 0.4667, 'R132', 4, '*'),
(401, 's', 's', 0, 0, 0.0667, 'S000', 4, '*'),
(402, 'se', 'se', 0, 0, 0.1333, 'S000', 4, '*'),
(403, 'seguimiento', 'seguimiento', 0, 0, 0.7333, 'S530', 4, '*'),
(404, 'sga', 'sga', 0, 0, 0.2, 'S000', 4, '*'),
(405, 'siempre', 'siempre', 0, 0, 0.4667, 'S516', 4, '*'),
(406, 'simplifica', 'simplifica', 0, 0, 0.6667, 'S51412', 4, '*'),
(407, 'simplificar', 'simplificar', 0, 0, 0.7333, 'S514126', 4, '*'),
(408, 'sin', 'sin', 0, 0, 0.2, 'S500', 4, '*'),
(409, 'sistema', 'sistema', 0, 0, 0.4667, 'S350', 4, '*'),
(410, 'sobre', 'sobre', 0, 0, 0.3333, 'S160', 4, '*'),
(411, 'software', 'software', 0, 0, 0.5333, 'S136', 4, '*'),
(412, 'solicitar', 'solicitar', 0, 0, 0.6, 'S4236', 4, '*'),
(413, 'solución', 'solución', 0, 0, 0.5333, 'S425', 4, '*'),
(414, 'somos', 'somos', 0, 0, 0.3333, 'S520', 4, '*'),
(415, 'stock', 'stock', 0, 0, 0.3333, 'S320', 4, '*'),
(416, 'supervisora', 'supervisora', 0, 0, 0.7333, 'S16126', 4, '*'),
(417, 'suscríbete', 'suscríbete', 0, 0, 0.6667, 'S613', 4, '*'),
(418, 'tareas', 'tareas', 0, 0, 0.4, 'T620', 4, '*'),
(419, 'tiempo', 'tiempo', 0, 0, 0.4, 'T510', 4, '*'),
(420, 'tiempos', 'tiempos', 0, 0, 0.4667, 'T512', 4, '*'),
(421, 'toda', 'toda', 0, 0, 0.2667, 'T000', 4, '*'),
(422, 'todo', 'todo', 0, 0, 0.2667, 'T000', 4, '*'),
(423, 'todos', 'todos', 0, 0, 0.3333, 'T200', 4, '*'),
(424, 'toma', 'toma', 0, 0, 0.2667, 'T500', 4, '*'),
(425, 'tomar', 'tomar', 0, 0, 0.3333, 'T560', 4, '*'),
(426, 'total', 'total', 0, 0, 0.3333, 'T400', 4, '*'),
(427, 'trabajan', 'trabajan', 0, 0, 0.5333, 'T6125', 4, '*'),
(428, 'trabajar', 'trabajar', 0, 0, 0.5333, 'T6126', 4, '*'),
(429, 'trabajo', 'trabajo', 0, 0, 0.4667, 'T612', 4, '*'),
(430, 'tu', 'tu', 0, 0, 0.1333, 'T000', 4, '*'),
(431, 'tus', 'tus', 0, 0, 0.2, 'T200', 4, '*'),
(432, 'términos', 'términos', 0, 0, 0.5333, 'T652', 4, '*'),
(433, 'ubicaciones', 'ubicaciones', 0, 0, 0.7333, 'U1252', 4, '*'),
(434, 'un', 'un', 0, 0, 0.1333, 'U500', 4, '*'),
(435, 'usar', 'usar', 0, 0, 0.2667, 'U260', 4, '*'),
(436, 'uso', 'uso', 0, 0, 0.2, 'U200', 4, '*'),
(437, 'visibilidad', 'visibilidad', 0, 0, 0.7333, 'V2143', 4, '*'),
(438, 'volver', 'volver', 0, 0, 0.4, 'V416', 4, '*'),
(439, 'wms', 'wms', 0, 0, 0.2, 'W520', 4, '*'),
(440, 'y', 'y', 0, 0, 0.0667, 'Y000', 4, '*'),
(441, 'éxito', 'éxito', 0, 0, 0.3333, 'é230', 4, '*'),
(442, 'órdenes', 'órdenes', 0, 0, 0.4667, 'ó6352', 4, '*'),
(443, 'home-stockflow', 'home-stockflow', 0, 0, 0.9333, 'H523214', 1, '*'),
(464, 'hello', 'hello', 0, 0, 0.3333, 'H400', 1, '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_finder_terms_common`
--

CREATE TABLE `oh67l_finder_terms_common` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_finder_terms_common`
--

INSERT INTO `oh67l_finder_terms_common` (`term`, `language`, `custom`) VALUES
('a', 'en', 0),
('about', 'en', 0),
('above', 'en', 0),
('after', 'en', 0),
('again', 'en', 0),
('against', 'en', 0),
('all', 'en', 0),
('am', 'en', 0),
('an', 'en', 0),
('and', 'en', 0),
('any', 'en', 0),
('are', 'en', 0),
('aren\'t', 'en', 0),
('as', 'en', 0),
('at', 'en', 0),
('be', 'en', 0),
('because', 'en', 0),
('been', 'en', 0),
('before', 'en', 0),
('being', 'en', 0),
('below', 'en', 0),
('between', 'en', 0),
('both', 'en', 0),
('but', 'en', 0),
('by', 'en', 0),
('can\'t', 'en', 0),
('cannot', 'en', 0),
('could', 'en', 0),
('couldn\'t', 'en', 0),
('did', 'en', 0),
('didn\'t', 'en', 0),
('do', 'en', 0),
('does', 'en', 0),
('doesn\'t', 'en', 0),
('doing', 'en', 0),
('don\'t', 'en', 0),
('down', 'en', 0),
('during', 'en', 0),
('each', 'en', 0),
('few', 'en', 0),
('for', 'en', 0),
('from', 'en', 0),
('further', 'en', 0),
('had', 'en', 0),
('hadn\'t', 'en', 0),
('has', 'en', 0),
('hasn\'t', 'en', 0),
('have', 'en', 0),
('haven\'t', 'en', 0),
('having', 'en', 0),
('he', 'en', 0),
('he\'d', 'en', 0),
('he\'ll', 'en', 0),
('he\'s', 'en', 0),
('her', 'en', 0),
('here', 'en', 0),
('here\'s', 'en', 0),
('hers', 'en', 0),
('herself', 'en', 0),
('him', 'en', 0),
('himself', 'en', 0),
('his', 'en', 0),
('how', 'en', 0),
('how\'s', 'en', 0),
('i', 'en', 0),
('i\'d', 'en', 0),
('i\'ll', 'en', 0),
('i\'m', 'en', 0),
('i\'ve', 'en', 0),
('if', 'en', 0),
('in', 'en', 0),
('into', 'en', 0),
('is', 'en', 0),
('isn\'t', 'en', 0),
('it', 'en', 0),
('it\'s', 'en', 0),
('its', 'en', 0),
('itself', 'en', 0),
('let\'s', 'en', 0),
('me', 'en', 0),
('more', 'en', 0),
('most', 'en', 0),
('mustn\'t', 'en', 0),
('my', 'en', 0),
('myself', 'en', 0),
('no', 'en', 0),
('nor', 'en', 0),
('not', 'en', 0),
('of', 'en', 0),
('off', 'en', 0),
('on', 'en', 0),
('once', 'en', 0),
('only', 'en', 0),
('or', 'en', 0),
('other', 'en', 0),
('ought', 'en', 0),
('our', 'en', 0),
('ours', 'en', 0),
('ourselves', 'en', 0),
('out', 'en', 0),
('over', 'en', 0),
('own', 'en', 0),
('same', 'en', 0),
('shan\'t', 'en', 0),
('she', 'en', 0),
('she\'d', 'en', 0),
('she\'ll', 'en', 0),
('she\'s', 'en', 0),
('should', 'en', 0),
('shouldn\'t', 'en', 0),
('so', 'en', 0),
('some', 'en', 0),
('such', 'en', 0),
('than', 'en', 0),
('that', 'en', 0),
('that\'s', 'en', 0),
('the', 'en', 0),
('their', 'en', 0),
('theirs', 'en', 0),
('them', 'en', 0),
('themselves', 'en', 0),
('then', 'en', 0),
('there', 'en', 0),
('there\'s', 'en', 0),
('these', 'en', 0),
('they', 'en', 0),
('they\'d', 'en', 0),
('they\'ll', 'en', 0),
('they\'re', 'en', 0),
('they\'ve', 'en', 0),
('this', 'en', 0),
('those', 'en', 0),
('through', 'en', 0),
('to', 'en', 0),
('too', 'en', 0),
('under', 'en', 0),
('until', 'en', 0),
('up', 'en', 0),
('very', 'en', 0),
('was', 'en', 0),
('wasn\'t', 'en', 0),
('we', 'en', 0),
('we\'d', 'en', 0),
('we\'ll', 'en', 0),
('we\'re', 'en', 0),
('we\'ve', 'en', 0),
('were', 'en', 0),
('weren\'t', 'en', 0),
('what', 'en', 0),
('what\'s', 'en', 0),
('when', 'en', 0),
('when\'s', 'en', 0),
('where', 'en', 0),
('where\'s', 'en', 0),
('which', 'en', 0),
('while', 'en', 0),
('who', 'en', 0),
('who\'s', 'en', 0),
('whom', 'en', 0),
('why', 'en', 0),
('why\'s', 'en', 0),
('with', 'en', 0),
('won\'t', 'en', 0),
('would', 'en', 0),
('wouldn\'t', 'en', 0),
('you', 'en', 0),
('you\'d', 'en', 0),
('you\'ll', 'en', 0),
('you\'re', 'en', 0),
('you\'ve', 'en', 0),
('your', 'en', 0),
('yours', 'en', 0),
('yourself', 'en', 0),
('yourselves', 'en', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_finder_tokens`
--

CREATE TABLE `oh67l_finder_tokens` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint UNSIGNED NOT NULL DEFAULT '2',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_finder_tokens_aggregate`
--

CREATE TABLE `oh67l_finder_tokens_aggregate` (
  `term_id` int UNSIGNED NOT NULL,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL DEFAULT '0',
  `context` tinyint UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL DEFAULT '0',
  `total_weight` float UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_finder_types`
--

CREATE TABLE `oh67l_finder_types` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_finder_types`
--

INSERT INTO `oh67l_finder_types` (`id`, `title`, `mime`) VALUES
(1, 'Category', ''),
(2, 'Contact', ''),
(3, 'Article', ''),
(4, 'News Feed', ''),
(5, 'Tag', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_guidedtours`
--

CREATE TABLE `oh67l_guidedtours` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uid` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `extensions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `modified_by` int NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int UNSIGNED DEFAULT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `access` int UNSIGNED NOT NULL DEFAULT '0',
  `autostart` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_guidedtours`
--

INSERT INTO `oh67l_guidedtours` (`id`, `title`, `uid`, `description`, `ordering`, `extensions`, `url`, `created`, `created_by`, `modified`, `modified_by`, `checked_out_time`, `checked_out`, `published`, `language`, `note`, `access`, `autostart`) VALUES
(1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_TITLE', 'joomla-guidedtours', 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_DESCRIPTION', 1, '[\"com_guidedtours\"]', 'administrator/index.php?option=com_guidedtours&view=tours', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, 1, '*', '', 1, 0),
(2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_TITLE', 'joomla-guidedtoursteps', 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_DESCRIPTION', 2, '[\"com_guidedtours\"]', 'administrator/index.php?option=com_guidedtours&view=tours', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, 1, '*', '', 1, 0),
(3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_TITLE', 'joomla-articles', 'COM_GUIDEDTOURS_TOUR_ARTICLES_DESCRIPTION', 3, '[\"com_content\",\"com_categories\"]', 'administrator/index.php?option=com_content&view=articles', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, 1, '*', '', 1, 0),
(4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_TITLE', 'joomla-categories', 'COM_GUIDEDTOURS_TOUR_CATEGORIES_DESCRIPTION', 4, '[\"com_content\",\"com_categories\"]', 'administrator/index.php?option=com_categories&view=categories&extension=com_content', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, 1, '*', '', 1, 0),
(5, 'COM_GUIDEDTOURS_TOUR_MENUS_TITLE', 'joomla-menus', 'COM_GUIDEDTOURS_TOUR_MENUS_DESCRIPTION', 5, '[\"com_menus\"]', 'administrator/index.php?option=com_menus&view=menus', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, 1, '*', '', 1, 0),
(6, 'COM_GUIDEDTOURS_TOUR_TAGS_TITLE', 'joomla-tags', 'COM_GUIDEDTOURS_TOUR_TAGS_DESCRIPTION', 6, '[\"com_tags\"]', 'administrator/index.php?option=com_tags&view=tags', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, 1, '*', '', 1, 0),
(7, 'COM_GUIDEDTOURS_TOUR_BANNERS_TITLE', 'joomla-banners', 'COM_GUIDEDTOURS_TOUR_BANNERS_DESCRIPTION', 7, '[\"com_banners\"]', 'administrator/index.php?option=com_banners&view=banners', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, 1, '*', '', 1, 0),
(8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_TITLE', 'joomla-contacts', 'COM_GUIDEDTOURS_TOUR_CONTACTS_DESCRIPTION', 8, '[\"com_contact\"]', 'administrator/index.php?option=com_contact&view=contacts', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, 1, '*', '', 1, 0),
(9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_TITLE', 'joomla-newsfeeds', 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_DESCRIPTION', 9, '[\"com_newsfeeds\"]', 'administrator/index.php?option=com_newsfeeds&view=newsfeeds', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, 1, '*', '', 1, 0),
(10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_TITLE', 'joomla-smartsearch', 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_DESCRIPTION', 10, '[\"com_finder\"]', 'administrator/index.php?option=com_finder&view=filters', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, 1, '*', '', 1, 0),
(11, 'COM_GUIDEDTOURS_TOUR_USERS_TITLE', 'joomla-users', 'COM_GUIDEDTOURS_TOUR_USERS_DESCRIPTION', 11, '[\"com_users\"]', 'administrator/index.php?option=com_users&view=users', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, 1, '*', '', 1, 0),
(12, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_TITLE', 'joomla-welcome', 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_DESCRIPTION', 12, '[\"com_cpanel\"]', 'administrator/index.php', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, 1, '*', '', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_guidedtour_steps`
--

CREATE TABLE `oh67l_guidedtour_steps` (
  `id` int NOT NULL,
  `tour_id` int NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int NOT NULL,
  `interactive_type` int NOT NULL DEFAULT '1',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `modified_by` int UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int UNSIGNED DEFAULT NULL,
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_guidedtour_steps`
--

INSERT INTO `oh67l_guidedtour_steps` (`id`, `tour_id`, `title`, `published`, `description`, `ordering`, `position`, `target`, `type`, `interactive_type`, `url`, `created`, `created_by`, `modified`, `modified_by`, `checked_out_time`, `checked_out`, `language`, `note`, `params`) VALUES
(1, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_NEW_DESCRIPTION', 1, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_guidedtours&view=tours', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(2, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_TITLE_DESCRIPTION', 2, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(3, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_URL_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_URL_DESCRIPTION', 3, 'top', '#jform_url', 2, 2, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(4, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONTENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONTENT_DESCRIPTION', 4, 'bottom', '#jform_description,#jform_description_ifr', 2, 3, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(5, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_COMPONENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_COMPONENT_DESCRIPTION', 5, 'top', 'joomla-field-fancy-select .choices', 2, 3, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(6, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_AUTOSTART_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_AUTOSTART_DESCRIPTION', 6, 'bottom', '#jform_autostart0', 2, 3, '', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(7, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_SAVECLOSE_DESCRIPTION', 7, 'top', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(8, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONGRATULATIONS_DESCRIPTION', 8, 'bottom', '', 0, 1, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(9, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_COUNTER_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_COUNTER_DESCRIPTION', 9, 'top', '#toursList tbody tr:nth-last-of-type(1) td:nth-of-type(5) .btn', 2, 1, '', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(10, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_NEW_DESCRIPTION', 10, 'bottom', '.button-new', 2, 1, '', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(11, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TITLE_DESCRIPTION', 11, 'bottom', '#jform_title', 2, 2, '', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(12, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_DESCRIPTION_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_DESCRIPTION_DESCRIPTION', 12, 'bottom', '#jform_description,#jform_description_ifr', 2, 3, '', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(13, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_STATUS_DESCRIPTION', 13, 'bottom', '#jform_published', 2, 3, '', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(14, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_POSITION_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_POSITION_DESCRIPTION', 14, 'top', '#jform_position', 2, 3, '', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(15, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TARGET_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TARGET_DESCRIPTION', 15, 'top', '#jform_target', 2, 3, '', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(16, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TYPE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TYPE_DESCRIPTION', 16, 'top', '#jform_type', 2, 3, '', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(17, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_SAVECLOSE_DESCRIPTION', 17, 'bottom', '#save-group-children-save .button-save', 2, 1, '', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(18, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_CONGRATULATIONS_DESCRIPTION', 18, 'bottom', '', 0, 1, '', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(19, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NEW_DESCRIPTION', 19, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_content&view=articles', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(20, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TITLE_DESCRIPTION', 20, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_content&view=article&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(21, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ALIAS_DESCRIPTION', 21, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_content&view=article&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(22, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONTENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONTENT_DESCRIPTION', 22, 'bottom', '#jform_articletext,#jform_articletext_ifr', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(23, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_STATUS_DESCRIPTION', 23, 'bottom', '#jform_state', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(24, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CATEGORY_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CATEGORY_DESCRIPTION', 24, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(25, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_FEATURED_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_FEATURED_DESCRIPTION', 25, 'bottom', '#jform_featured0', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(26, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ACCESS_DESCRIPTION', 26, 'bottom', '#jform_access', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(27, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TAGS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TAGS_DESCRIPTION', 27, 'top', 'joomla-field-fancy-select .choices[data-type=select-multiple]', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(28, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NOTE_DESCRIPTION', 28, 'top', '#jform_note', 2, 2, 'administrator/index.php?option=com_content&view=article&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(29, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_VERSIONNOTE_DESCRIPTION', 29, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_content&view=article&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(30, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_SAVECLOSE_DESCRIPTION', 30, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_content&view=article&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(31, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONGRATULATIONS_DESCRIPTION', 31, 'bottom', '', 0, 1, 'administrator/index.php?option=com_content&view=article&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(32, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NEW_DESCRIPTION', 32, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_categories&view=categories&extension=com_content', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(33, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TITLE_DESCRIPTION', 33, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(34, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ALIAS_DESCRIPTION', 34, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(35, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONTENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONTENT_DESCRIPTION', 35, 'bottom', '#jform_description,#jform_description_ifr', 2, 3, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(36, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_PARENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_PARENT_DESCRIPTION', 36, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(37, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_STATUS_DESCRIPTION', 37, 'bottom', '#jform_published', 2, 3, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(38, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ACCESS_DESCRIPTION', 38, 'bottom', '#jform_access', 2, 3, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(39, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TAGS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TAGS_DESCRIPTION', 39, 'top', 'joomla-field-fancy-select .choices[data-type=select-multiple]', 2, 3, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(40, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NOTE_DESCRIPTION', 40, 'top', '#jform_note', 2, 2, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(41, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_VERSIONNOTE_DESCRIPTION', 41, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(42, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_SAVECLOSE_DESCRIPTION', 42, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(43, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONGRATULATIONS_DESCRIPTION', 43, 'bottom', '', 0, 1, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(44, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_NEW_DESCRIPTION', 44, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_menus&view=menus', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(45, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_TITLE_DESCRIPTION', 45, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_menus&view=menu&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(46, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_UNIQUENAME_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_UNIQUENAME_DESCRIPTION', 46, 'top', '#jform_menutype', 2, 2, 'administrator/index.php?option=com_menus&view=menu&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(47, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_DESCRIPTION_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_DESCRIPTION_DESCRIPTION', 47, 'top', '#jform_menudescription', 2, 2, 'administrator/index.php?option=com_menus&view=menu&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(48, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_SAVECLOSE_DESCRIPTION', 48, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_menus&view=menu&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(49, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_CONGRATULATIONS_DESCRIPTION', 49, 'bottom', '', 0, 1, 'administrator/index.php?option=com_menus&view=menu&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(50, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NEW_DESCRIPTION', 50, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_tags&view=tags', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(51, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_TITLE_DESCRIPTION', 51, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(52, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ALIAS_DESCRIPTION', 52, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(53, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONTENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONTENT_DESCRIPTION', 53, 'bottom', '#jform_description,#jform_description_ifr', 2, 3, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(54, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_PARENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_PARENT_DESCRIPTION', 54, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(55, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_STATUS_DESCRIPTION', 55, 'bottom', '#jform_published', 2, 3, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(56, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ACCESS_DESCRIPTION', 56, 'bottom', '#jform_access', 2, 3, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(57, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NOTE_DESCRIPTION', 57, 'top', '#jform_note', 2, 2, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(58, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_VERSIONNOTE_DESCRIPTION', 58, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(59, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_SAVECLOSE_DESCRIPTION', 59, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(60, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONGRATULATIONS_DESCRIPTION', 60, 'bottom', '', 0, 1, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(61, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_NEW_DESCRIPTION', 61, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_banners&view=banners', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(62, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_TITLE_DESCRIPTION', 62, 'bottom', '#jform_name', 2, 2, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(63, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_ALIAS_DESCRIPTION', 63, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(64, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_DETAILS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_DETAILS_DESCRIPTION', 64, 'bottom', '.col-lg-9', 2, 3, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(65, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_STATUS_DESCRIPTION', 65, 'bottom', '#jform_state', 2, 3, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(66, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CATEGORY_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CATEGORY_DESCRIPTION', 66, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(67, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_PINNED_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_PINNED_DESCRIPTION', 67, 'bottom', '#jform_sticky1', 2, 3, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(68, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_VERSIONNOTE_DESCRIPTION', 68, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(69, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_SAVECLOSE_DESCRIPTION', 69, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(70, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CONGRATULATIONS_DESCRIPTION', 70, 'bottom', '', 0, 1, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(71, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_NEW_DESCRIPTION', 71, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_contact&view=contacts', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(72, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TITLE_DESCRIPTION', 72, 'bottom', '#jform_name', 2, 2, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(73, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ALIAS_DESCRIPTION', 73, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(74, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_DETAILS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_DETAILS_DESCRIPTION', 74, 'bottom', '.col-lg-9', 0, 1, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(75, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_STATUS_DESCRIPTION', 75, 'bottom', '#jform_published', 2, 3, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(76, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CATEGORY_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CATEGORY_DESCRIPTION', 76, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(77, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_FEATURED_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_FEATURED_DESCRIPTION', 77, 'bottom', '#jform_featured0', 2, 3, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(78, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ACCESS_DESCRIPTION', 78, 'bottom', '#jform_access', 2, 3, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(79, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TAGS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TAGS_DESCRIPTION', 79, 'top', 'joomla-field-fancy-select .choices[data-type=select-multiple]', 2, 3, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(80, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_VERSIONNOTE_DESCRIPTION', 80, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(81, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_SAVECLOSE_DESCRIPTION', 81, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(82, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CONGRATULATIONS_DESCRIPTION', 82, 'bottom', '', 0, 1, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(83, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_NEW_DESCRIPTION', 83, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_newsfeeds&view=newsfeeds', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(84, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TITLE_DESCRIPTION', 84, 'bottom', '#jform_name', 2, 2, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(85, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ALIAS_DESCRIPTION', 85, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(86, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_LINK_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_LINK_DESCRIPTION', 86, 'bottom', '#jform_link', 2, 2, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(87, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_DESCRIPTION_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_DESCRIPTION_DESCRIPTION', 87, 'bottom', '#jform_description,#jform_description_ifr', 2, 3, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(88, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_STATUS_DESCRIPTION', 88, 'bottom', '#jform_published', 2, 3, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(89, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CATEGORY_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CATEGORY_DESCRIPTION', 89, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(90, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ACCESS_DESCRIPTION', 90, 'bottom', '#jform_access', 2, 3, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(91, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TAGS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TAGS_DESCRIPTION', 91, 'top', 'joomla-field-fancy-select .choices[data-type=select-multiple]', 2, 3, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(92, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_VERSIONNOTE_DESCRIPTION', 92, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(93, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_SAVECLOSE_DESCRIPTION', 93, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(94, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CONGRATULATIONS_DESCRIPTION', 94, 'bottom', '', 0, 1, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(95, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_NEW_DESCRIPTION', 95, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_finder&view=filters', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(96, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_TITLE_DESCRIPTION', 96, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(97, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_ALIAS_DESCRIPTION', 97, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(98, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONTENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONTENT_DESCRIPTION', 98, 'bottom', '.col-lg-9', 0, 1, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(99, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_STATUS_DESCRIPTION', 99, 'bottom', '#jform_state', 2, 3, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(100, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_SAVECLOSE_DESCRIPTION', 100, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(101, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONGRATULATIONS_DESCRIPTION', 101, 'bottom', '', 0, 1, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(102, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_NEW_DESCRIPTION', 102, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_users&view=user&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(103, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_NAME_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_NAME_DESCRIPTION', 103, 'bottom', '#jform_name', 2, 2, 'administrator/index.php?option=com_users&view=user&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(104, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_LOGINNAME_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_LOGINNAME_DESCRIPTION', 104, 'bottom', '#jform_username', 2, 2, 'administrator/index.php?option=com_users&view=user&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(105, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD_DESCRIPTION', 105, 'bottom', '#jform_password', 2, 2, 'administrator/index.php?option=com_users&view=user&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(106, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD2_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD2_DESCRIPTION', 106, 'bottom', '#jform_password2', 2, 2, 'administrator/index.php?option=com_users&view=user&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(107, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_EMAIL_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_EMAIL_DESCRIPTION', 107, 'bottom', '#jform_email', 2, 2, 'administrator/index.php?option=com_users&view=user&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(108, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_SYSTEMEMAIL_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_SYSTEMEMAIL_DESCRIPTION', 108, 'top', '#jform_sendEmail0', 2, 3, 'administrator/index.php?option=com_users&view=user&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(109, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_STATUS_DESCRIPTION', 109, 'top', '#jform_block0', 2, 3, 'administrator/index.php?option=com_users&view=user&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(110, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORDRESET_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORDRESET_DESCRIPTION', 110, 'top', '#jform_requireReset0', 2, 3, 'administrator/index.php?option=com_users&view=user&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(111, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_SAVECLOSE_DESCRIPTION', 111, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_users&view=user&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(112, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_CONGRATULATIONS_DESCRIPTION', 112, 'bottom', '', 0, 1, 'administrator/index.php?option=com_users&view=user&layout=edit', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(113, 12, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_MENUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_MENUS_DESCRIPTION', 113, 'right', '#sidebarmenu', 0, 1, '', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(114, 12, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_QUICKACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_QUICKACCESS_DESCRIPTION', 114, 'center', '', 0, 1, '', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(115, 12, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_NOTIFICATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_NOTIFICATIONS_DESCRIPTION', 115, 'left', '.quickicons-for-update_quickicon .card', 0, 1, '', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(116, 12, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_TOPBAR_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_TOPBAR_DESCRIPTION', 116, 'bottom', '#header', 0, 1, '', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL),
(117, 12, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_FINALWORDS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_FINALWORDS_DESCRIPTION', 117, 'right', '#sidebarmenu nav > ul:first-of-type > li:last-child', 0, 1, '', '2025-01-28 19:24:03', 974, '2025-01-28 19:24:03', 974, NULL, NULL, '*', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_history`
--

CREATE TABLE `oh67l_history` (
  `version_id` int UNSIGNED NOT NULL,
  `item_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL,
  `editor_user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_history`
--

INSERT INTO `oh67l_history` (`version_id`, `item_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 'com_content.article.1', '', '2025-01-28 19:52:41', 974, 12796, '59a0ab4f6ac27e06c814426083dc8ca305d93d82', '{\"id\":\"1\",\"asset_id\":100,\"title\":\"Home\",\"alias\":\"home\",\"introtext\":\"<p>\\u00a0<\\/p>\\r\\n<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-12 col-lg-2 fonsBlauFosc justify-content-center flex-column px-0\\\">\\r\\n<div class=\\\"d-flex align-items-center justify-content-between\\\">\\r\\n<div class=\\\"foto align-items-center justify-content-center\\\"><img class=\\\"img-fluid logo-footer py-4\\\" src=\\\"img\\/logo_footer2.png\\\"><\\/div>\\r\\n<!-- hamburguesita --> <button class=\\\"btn text-white d-lg-none text-end fs-1 shadow davant\\\" type=\\\"button\\\" data-bs-toggle=\\\"collapse\\\" data-bs-target=\\\"#menuNav\\\" aria-expanded=\\\"false\\\" aria-controls=\\\"menuNav\\\"> <\\/button><\\/div>\\r\\n<div id=\\\"menuNav\\\" class=\\\"collapse d-lg-block position-relative davant\\\"><nav class=\\\"nav flex-column\\\"><a class=\\\"nav-link text-white py-3 border-top px-1 noPointer\\\" href=\\\"#\\\"> Administraci\\u00f3 <\\/a> <a class=\\\"nav-link text-white py-2 fonsBlauClar border-top border-bottom hvb\\\" href=\\\"#\\\">Usuaris<\\/a> <a class=\\\"nav-link text-white py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Rols<\\/a> <a class=\\\"nav-link text-white py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Dades geogr\\u00e0fiques<\\/a> <a class=\\\"nav-link text-white py-2 fonsGrisDif border-bottom actiu px-0\\\" href=\\\"#\\\"> Transportistes<\\/a> <a class=\\\"nav-link text-white py-3 border-top border-bottom px-1 noPointer\\\" href=\\\"#\\\"> Env\\u00edament <\\/a> <a class=\\\"nav-link text-white py-2 fonsBlauClar border-top border-bottom hvb\\\" href=\\\"#\\\">Clients<\\/a> <a class=\\\"nav-link text-white py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Ordres d\'enviament <span class=\\\"bg-danger rounded-5 px-3 text-white num\\\">9<\\/span><\\/a> <a class=\\\"nav-link text-white py-3 border-top border-bottom px-1 noPointer\\\" href=\\\"#\\\"> Recepci\\u00f3 <\\/a> <a class=\\\"nav-link text-white py-2 fonsBlauClar border-top border-bottom hvb\\\" href=\\\"#\\\">Prove\\u00efdors<\\/a> <a class=\\\"nav-link text-white py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Estats Ordres<\\/a> <a class=\\\"nav-link text-white py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Estats L\\u00ednia<\\/a> <a class=\\\"nav-link text-white py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Productes<\\/a> <a class=\\\"nav-link text-white py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Lots<\\/a> <a class=\\\"nav-link text-white py-3 border-top border-bottom px-1 noPointer\\\" href=\\\"#\\\"> Magatzem <\\/a> <a class=\\\"nav-link text-white py-1 fonsBlauClar border-top border-bottom hvb\\\" href=\\\"#\\\">Gesti\\u00f3 de magatzem<\\/a> <a class=\\\"nav-link text-white py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Invertaris<\\/a> <a class=\\\"nav-link text-white py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Incid\\u00e8ncies<\\/a> <a class=\\\"nav-link text-white py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Moviments<\\/a> <a class=\\\"nav-link text-white py-2 bg-danger border-bottom hvb\\\" href=\\\"#\\\"> Tancar <\\/a><\\/nav><\\/div>\\r\\n<\\/div>\\r\\n<!--t\\u00edtol-->\\r\\n<div class=\\\"col-12 col-lg-10 p-0\\\">\\r\\n<div class=\\\"fonsTaronja\\\">\\r\\n<h1 class=\\\"text-center text-white py-4 m-0 fs-4 fw-bolder\\\">Llistat de Transportistes<\\/h1>\\r\\n<\\/div>\\r\\n<!--filtres-->\\r\\n<div class=\\\"container-fluid fonsGris\\\">\\r\\n<div class=\\\"row p-2\\\">\\r\\n<div class=\\\"col-12 col-md-6 col-xl-4 p-2\\\"><label class=\\\"form-label\\\">Nom<\\/label> <input class=\\\"form-control\\\" type=\\\"text\\\"><\\/div>\\r\\n<div class=\\\"col-12 col-md-6 col-xl-4 p-2\\\"><label class=\\\"form-label\\\">DNI\\/NIF<\\/label> <input class=\\\"form-control\\\" type=\\\"text\\\"><\\/div>\\r\\n<div class=\\\"col-12 col-md-6 col-xl-4 p-2\\\"><label class=\\\"form-label\\\">Tel\\u00e8fon<\\/label> <input class=\\\"form-control\\\" type=\\\"text\\\"><\\/div>\\r\\n<div class=\\\"col-12 col-md-6 col-xl-4 p-2\\\"><label class=\\\"form-label\\\">Correu<\\/label> <input class=\\\"form-control\\\" type=\\\"text\\\"><\\/div>\\r\\n<!--boto-->\\r\\n<div class=\\\"container-button-filter py-2 text-end\\\"><button class=\\\"text-white btn btn-secondary\\\"> Netejar<\\/button> <button class=\\\"text-white btn aplicar\\\"> Filtrar <\\/button><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row rounded-4\\\">\\r\\n<div class=\\\"col-12 pt-3\\\">\\r\\n<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row fonsGrisDif rounded-2\\\">\\r\\n<div class=\\\"col-6 py-2\\\">\\r\\n<div class=\\\"input-group border rounded-2 select\\\">\\r\\n<div class=\\\"form-floating rounded-2\\\"><select class=\\\"form-select\\\">\\r\\n<option selected=\\\"selected\\\">Tria una opci\\u00f3<\\/option>\\r\\n<option>Esborrar<\\/option>\\r\\n<\\/select><label class=\\\"text-muted\\\">Accions en lot<\\/label><\\/div>\\r\\n<button class=\\\"btn text-white aplicar\\\" type=\\\"button\\\"> Aplicar <\\/button><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-6 py-2 text-end\\\"><button class=\\\"btn text-white bg-black py-3 border\\\" type=\\\"button\\\"> Crear <\\/button><\\/div>\\r\\n<\\/div>\\r\\n<!--taula-->\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-12 p-0\\\">\\r\\n<div class=\\\"table-responsive blau\\\">\\r\\n<table class=\\\"table table-striped align-middle text-center taulaGestio\\\">\\r\\n<thead>\\r\\n<tr>\\r\\n<th class=\\\"text-center\\\"><input type=\\\"checkbox\\\"><\\/th>\\r\\n<th>ID<\\/th>\\r\\n<th>Nom<\\/th>\\r\\n<th>DNI\\/NIF<\\/th>\\r\\n<th>Tel\\u00e8fon<\\/th>\\r\\n<th>Correu<\\/th>\\r\\n<th>Accions<\\/th>\\r\\n<\\/tr>\\r\\n<\\/thead>\\r\\n<tbody id=\\\"files\\\">\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1001<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1002<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1003<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1004<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1005<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1007<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1008<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1009<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1010<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1011<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1012<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1013<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1014<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1015<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<!--paginetes--><nav>\\r\\n<ul class=\\\"pagination justify-content-center\\\">\\r\\n<li class=\\\"page-item\\\"><a class=\\\"page-link\\\" href=\\\"#\\\"> <span aria-hidden=\\\"true\\\">\\u00ab<\\/span> <\\/a><\\/li>\\r\\n<li class=\\\"page-item active\\\" aria-current=\\\"page\\\"><a class=\\\"page-link\\\" href=\\\"#\\\">1<\\/a><\\/li>\\r\\n<li class=\\\"page-item\\\"><a class=\\\"page-link\\\" href=\\\"#\\\">2<\\/a><\\/li>\\r\\n<li class=\\\"page-item\\\"><a class=\\\"page-link\\\" href=\\\"#\\\">3<\\/a><\\/li>\\r\\n<li class=\\\"page-item\\\"><a class=\\\"page-link\\\" href=\\\"#\\\"> <span aria-hidden=\\\"true\\\">\\u00bb<\\/span> <\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<\\/nav><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--no tocar-->\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-01-28 19:52:41\",\"created_by\":974,\"created_by_alias\":\"\",\"modified\":\"2025-01-28 19:52:41\",\"modified_by\":974,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2025-01-28 19:52:41\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/logo_footer2.png#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/logo_footer2.png?width=200&height=110\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}', 0),
(4, 'com_content.article.1', '', '2025-01-28 20:03:33', 974, 12881, 'bf1af82cbe3b6b6d8edab630fc2f96fb35285ee9', '{\"id\":\"1\",\"asset_id\":100,\"title\":\"Home\",\"alias\":\"home\",\"introtext\":\"<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-12 col-lg-2 fonsBlauFosc justify-content-center flex-column px-0\\\">\\r\\n<div class=\\\"d-flex align-items-center justify-content-between\\\">\\r\\n<div class=\\\"foto align-items-center justify-content-center\\\"><img class=\\\"float-none\\\" src=\\\"images\\/logo_footer2.png#joomlaImage:\\/\\/local-images\\/logo_footer2.png?width=200&amp;height=110\\\" width=\\\"200\\\" height=\\\"110\\\"><\\/div>\\r\\n<!-- hamburguesita --> <button class=\\\"btn text-white d-lg-none text-end fs-1 shadow davant\\\" type=\\\"button\\\" data-bs-toggle=\\\"collapse\\\" data-bs-target=\\\"#menuNav\\\" aria-expanded=\\\"false\\\" aria-controls=\\\"menuNav\\\"> <\\/button><\\/div>\\r\\n<div id=\\\"menuNav\\\" class=\\\"collapse d-lg-block position-relative davant\\\"><nav class=\\\"nav flex-column\\\"><a class=\\\"nav-link text-white py-3 border-top px-1 noPointer\\\" href=\\\"#\\\"> Administraci\\u00f3 <\\/a> <a class=\\\"nav-link text-white py-2 fonsBlauClar border-top border-bottom hvb\\\" href=\\\"#\\\">Usuaris<\\/a> <a class=\\\"nav-link text-white py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Rols<\\/a> <a class=\\\"nav-link text-white py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Dades geogr\\u00e0fiques<\\/a> <a class=\\\"nav-link text-white py-2 fonsGrisDif border-bottom actiu px-0\\\" href=\\\"#\\\"> Transportistes<\\/a> <a class=\\\"nav-link text-white py-3 border-top border-bottom px-1 noPointer\\\" href=\\\"#\\\"> Env\\u00edament <\\/a> <a class=\\\"nav-link text-white py-2 fonsBlauClar border-top border-bottom hvb\\\" href=\\\"#\\\">Clients<\\/a> <a class=\\\"nav-link text-white py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Ordres d\'enviament <span class=\\\"bg-danger rounded-5 px-3 text-white num\\\">9<\\/span><\\/a> <a class=\\\"nav-link text-white py-3 border-top border-bottom px-1 noPointer\\\" href=\\\"#\\\"> Recepci\\u00f3 <\\/a> <a class=\\\"nav-link text-white py-2 fonsBlauClar border-top border-bottom hvb\\\" href=\\\"#\\\">Prove\\u00efdors<\\/a> <a class=\\\"nav-link text-white py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Estats Ordres<\\/a> <a class=\\\"nav-link text-white py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Estats L\\u00ednia<\\/a> <a class=\\\"nav-link text-white py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Productes<\\/a> <a class=\\\"nav-link text-white py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Lots<\\/a> <a class=\\\"nav-link text-white py-3 border-top border-bottom px-1 noPointer\\\" href=\\\"#\\\"> Magatzem <\\/a> <a class=\\\"nav-link text-white py-1 fonsBlauClar border-top border-bottom hvb\\\" href=\\\"#\\\">Gesti\\u00f3 de magatzem<\\/a> <a class=\\\"nav-link text-white py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Invertaris<\\/a> <a class=\\\"nav-link text-white py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Incid\\u00e8ncies<\\/a> <a class=\\\"nav-link text-white py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Moviments<\\/a> <a class=\\\"nav-link text-white py-2 bg-danger border-bottom hvb\\\" href=\\\"#\\\"> Tancar <\\/a><\\/nav><\\/div>\\r\\n<\\/div>\\r\\n<!--t\\u00edtol-->\\r\\n<div class=\\\"col-12 col-lg-10 p-0\\\">\\r\\n<div class=\\\"fonsTaronja\\\">\\r\\n<h1 class=\\\"text-center text-white py-4 m-0 fs-4 fw-bolder\\\">Llistat de Transportistes<\\/h1>\\r\\n<\\/div>\\r\\n<!--filtres-->\\r\\n<div class=\\\"container-fluid fonsGris\\\">\\r\\n<div class=\\\"row p-2\\\">\\r\\n<div class=\\\"col-12 col-md-6 col-xl-4 p-2\\\"><label class=\\\"form-label\\\">Nom<\\/label> <input class=\\\"form-control\\\" type=\\\"text\\\"><\\/div>\\r\\n<div class=\\\"col-12 col-md-6 col-xl-4 p-2\\\"><label class=\\\"form-label\\\">DNI\\/NIF<\\/label> <input class=\\\"form-control\\\" type=\\\"text\\\"><\\/div>\\r\\n<div class=\\\"col-12 col-md-6 col-xl-4 p-2\\\"><label class=\\\"form-label\\\">Tel\\u00e8fon<\\/label> <input class=\\\"form-control\\\" type=\\\"text\\\"><\\/div>\\r\\n<div class=\\\"col-12 col-md-6 col-xl-4 p-2\\\"><label class=\\\"form-label\\\">Correu<\\/label> <input class=\\\"form-control\\\" type=\\\"text\\\"><\\/div>\\r\\n<!--boto-->\\r\\n<div class=\\\"container-button-filter py-2 text-end\\\"><button class=\\\"text-white btn btn-secondary\\\"> Netejar<\\/button> <button class=\\\"text-white btn aplicar\\\"> Filtrar <\\/button><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row rounded-4\\\">\\r\\n<div class=\\\"col-12 pt-3\\\">\\r\\n<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row fonsGrisDif rounded-2\\\">\\r\\n<div class=\\\"col-6 py-2\\\">\\r\\n<div class=\\\"input-group border rounded-2 select\\\">\\r\\n<div class=\\\"form-floating rounded-2\\\"><select class=\\\"form-select\\\">\\r\\n<option selected=\\\"selected\\\">Tria una opci\\u00f3<\\/option>\\r\\n<option>Esborrar<\\/option>\\r\\n<\\/select><label class=\\\"text-muted\\\">Accions en lot<\\/label><\\/div>\\r\\n<button class=\\\"btn text-white aplicar\\\" type=\\\"button\\\"> Aplicar <\\/button><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-6 py-2 text-end\\\"><button class=\\\"btn text-white bg-black py-3 border\\\" type=\\\"button\\\"> Crear <\\/button><\\/div>\\r\\n<\\/div>\\r\\n<!--taula-->\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-12 p-0\\\">\\r\\n<div class=\\\"table-responsive blau\\\">\\r\\n<table class=\\\"table table-striped align-middle text-center taulaGestio\\\">\\r\\n<thead>\\r\\n<tr>\\r\\n<th class=\\\"text-center\\\"><input type=\\\"checkbox\\\"><\\/th>\\r\\n<th>ID<\\/th>\\r\\n<th>Nom<\\/th>\\r\\n<th>DNI\\/NIF<\\/th>\\r\\n<th>Tel\\u00e8fon<\\/th>\\r\\n<th>Correu<\\/th>\\r\\n<th>Accions<\\/th>\\r\\n<\\/tr>\\r\\n<\\/thead>\\r\\n<tbody id=\\\"files\\\">\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1001<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1002<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1003<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1004<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1005<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1007<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1008<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1009<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1010<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1011<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1012<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1013<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1014<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1015<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<!--paginetes--><nav>\\r\\n<ul class=\\\"pagination justify-content-center\\\">\\r\\n<li class=\\\"page-item\\\"><a class=\\\"page-link\\\" href=\\\"#\\\"> <span aria-hidden=\\\"true\\\">\\u00ab<\\/span> <\\/a><\\/li>\\r\\n<li class=\\\"page-item active\\\" aria-current=\\\"page\\\"><a class=\\\"page-link\\\" href=\\\"#\\\">1<\\/a><\\/li>\\r\\n<li class=\\\"page-item\\\"><a class=\\\"page-link\\\" href=\\\"#\\\">2<\\/a><\\/li>\\r\\n<li class=\\\"page-item\\\"><a class=\\\"page-link\\\" href=\\\"#\\\">3<\\/a><\\/li>\\r\\n<li class=\\\"page-item\\\"><a class=\\\"page-link\\\" href=\\\"#\\\"> <span aria-hidden=\\\"true\\\">\\u00bb<\\/span> <\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<\\/nav><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--no tocar-->\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-01-28 19:52:41\",\"created_by\":\"974\",\"created_by_alias\":\"\",\"modified\":\"2025-01-28 20:03:33\",\"modified_by\":974,\"checked_out\":974,\"checked_out_time\":\"2025-01-28 20:01:09\",\"publish_up\":\"2025-01-28 19:52:41\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/logo_footer2.png#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/logo_footer2.png?width=200&height=110\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":3,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}', 0),
(5, 'com_content.article.1', '', '2025-01-28 20:04:37', 974, 12611, '66252de4220eda2867c2fa15d49f55b49264d071', '{\"id\":\"1\",\"asset_id\":100,\"title\":\"Home\",\"alias\":\"home\",\"introtext\":\"<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-12 col-lg-2 fonsBlauFosc justify-content-center flex-column px-0\\\">\\r\\n<div class=\\\"d-flex align-items-center justify-content-between\\\">\\r\\n<div class=\\\"foto align-items-center justify-content-center\\\"><img class=\\\"float-none\\\" src=\\\"images\\/logo_footer2.png#joomlaImage:\\/\\/local-images\\/logo_footer2.png?width=200&amp;height=110\\\" width=\\\"200\\\" height=\\\"110\\\"><\\/div>\\r\\n<!-- hamburguesita --> <button class=\\\"btn  d-lg-none text-end fs-1 shadow davant\\\" type=\\\"button\\\" data-bs-toggle=\\\"collapse\\\" data-bs-target=\\\"#menuNav\\\" aria-expanded=\\\"false\\\" aria-controls=\\\"menuNav\\\"> <\\/button><\\/div>\\r\\n<div id=\\\"menuNav\\\" class=\\\"collapse d-lg-block position-relative davant\\\"><nav class=\\\"nav flex-column\\\"><a class=\\\"nav-link  py-3 border-top px-1 noPointer\\\" href=\\\"#\\\"> Administraci\\u00f3 <\\/a> <a class=\\\"nav-link  py-2 fonsBlauClar border-top border-bottom hvb\\\" href=\\\"#\\\">Usuaris<\\/a> <a class=\\\"nav-link  py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Rols<\\/a> <a class=\\\"nav-link  py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Dades geogr\\u00e0fiques<\\/a> <a class=\\\"nav-link  py-2 fonsGrisDif border-bottom actiu px-0\\\" href=\\\"#\\\"> Transportistes<\\/a> <a class=\\\"nav-link  py-3 border-top border-bottom px-1 noPointer\\\" href=\\\"#\\\"> Env\\u00edament <\\/a> <a class=\\\"nav-link  py-2 fonsBlauClar border-top border-bottom hvb\\\" href=\\\"#\\\">Clients<\\/a> <a class=\\\"nav-link  py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Ordres d\'enviament <span class=\\\"bg-danger rounded-5 px-3  num\\\">9<\\/span><\\/a> <a class=\\\"nav-link  py-3 border-top border-bottom px-1 noPointer\\\" href=\\\"#\\\"> Recepci\\u00f3 <\\/a> <a class=\\\"nav-link  py-2 fonsBlauClar border-top border-bottom hvb\\\" href=\\\"#\\\">Prove\\u00efdors<\\/a> <a class=\\\"nav-link  py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Estats Ordres<\\/a> <a class=\\\"nav-link  py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Estats L\\u00ednia<\\/a> <a class=\\\"nav-link  py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Productes<\\/a> <a class=\\\"nav-link  py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Lots<\\/a> <a class=\\\"nav-link  py-3 border-top border-bottom px-1 noPointer\\\" href=\\\"#\\\"> Magatzem <\\/a> <a class=\\\"nav-link  py-1 fonsBlauClar border-top border-bottom hvb\\\" href=\\\"#\\\">Gesti\\u00f3 de magatzem<\\/a> <a class=\\\"nav-link  py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Invertaris<\\/a> <a class=\\\"nav-link  py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Incid\\u00e8ncies<\\/a> <a class=\\\"nav-link  py-2 fonsBlauClar border-bottom hvb\\\" href=\\\"#\\\">Moviments<\\/a> <a class=\\\"nav-link  py-2 bg-danger border-bottom hvb\\\" href=\\\"#\\\"> Tancar <\\/a><\\/nav><\\/div>\\r\\n<\\/div>\\r\\n<!--t\\u00edtol-->\\r\\n<div class=\\\"col-12 col-lg-10 p-0\\\">\\r\\n<div class=\\\"fonsTaronja\\\">\\r\\n<h1 class=\\\"text-center  py-4 m-0 fs-4 fw-bolder\\\">Llistat de Transportistes<\\/h1>\\r\\n<\\/div>\\r\\n<!--filtres-->\\r\\n<div class=\\\"container-fluid fonsGris\\\">\\r\\n<div class=\\\"row p-2\\\">\\r\\n<div class=\\\"col-12 col-md-6 col-xl-4 p-2\\\"><label class=\\\"form-label\\\">Nom<\\/label> <input class=\\\"form-control\\\" type=\\\"text\\\"><\\/div>\\r\\n<div class=\\\"col-12 col-md-6 col-xl-4 p-2\\\"><label class=\\\"form-label\\\">DNI\\/NIF<\\/label> <input class=\\\"form-control\\\" type=\\\"text\\\"><\\/div>\\r\\n<div class=\\\"col-12 col-md-6 col-xl-4 p-2\\\"><label class=\\\"form-label\\\">Tel\\u00e8fon<\\/label> <input class=\\\"form-control\\\" type=\\\"text\\\"><\\/div>\\r\\n<div class=\\\"col-12 col-md-6 col-xl-4 p-2\\\"><label class=\\\"form-label\\\">Correu<\\/label> <input class=\\\"form-control\\\" type=\\\"text\\\"><\\/div>\\r\\n<!--boto-->\\r\\n<div class=\\\"container-button-filter py-2 text-end\\\"><button class=\\\" btn btn-secondary\\\"> Netejar<\\/button> <button class=\\\" btn aplicar\\\"> Filtrar <\\/button><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row rounded-4\\\">\\r\\n<div class=\\\"col-12 pt-3\\\">\\r\\n<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row fonsGrisDif rounded-2\\\">\\r\\n<div class=\\\"col-6 py-2\\\">\\r\\n<div class=\\\"input-group border rounded-2 select\\\">\\r\\n<div class=\\\"form-floating rounded-2\\\"><select class=\\\"form-select\\\">\\r\\n<option selected=\\\"selected\\\">Tria una opci\\u00f3<\\/option>\\r\\n<option>Esborrar<\\/option>\\r\\n<\\/select><label class=\\\"text-muted\\\">Accions en lot<\\/label><\\/div>\\r\\n<button class=\\\"btn  aplicar\\\" type=\\\"button\\\"> Aplicar <\\/button><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-6 py-2 text-end\\\"><button class=\\\"btn  bg-black py-3 border\\\" type=\\\"button\\\"> Crear <\\/button><\\/div>\\r\\n<\\/div>\\r\\n<!--taula-->\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-12 p-0\\\">\\r\\n<div class=\\\"table-responsive blau\\\">\\r\\n<table class=\\\"table table-striped align-middle text-center taulaGestio\\\">\\r\\n<thead>\\r\\n<tr>\\r\\n<th class=\\\"text-center\\\"><input type=\\\"checkbox\\\"><\\/th>\\r\\n<th>ID<\\/th>\\r\\n<th>Nom<\\/th>\\r\\n<th>DNI\\/NIF<\\/th>\\r\\n<th>Tel\\u00e8fon<\\/th>\\r\\n<th>Correu<\\/th>\\r\\n<th>Accions<\\/th>\\r\\n<\\/tr>\\r\\n<\\/thead>\\r\\n<tbody id=\\\"files\\\">\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1001<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1002<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1003<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1004<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1005<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1007<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1008<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1009<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1010<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1011<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1012<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1013<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1014<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<tr class=\\\"blau\\\">\\r\\n<td class=\\\"text-center\\\" data-no-colon=\\\"true\\\"><input type=\\\"checkbox\\\"><\\/td>\\r\\n<td data-cell=\\\"ID\\\">1015<\\/td>\\r\\n<td data-cell=\\\"Nom\\\">DHL<\\/td>\\r\\n<td data-cell=\\\"DNI\\/NIF\\\">68458699G<\\/td>\\r\\n<td data-cell=\\\"Tel\\u00e8fon\\\">639639639<\\/td>\\r\\n<td data-cell=\\\"Correu\\\">carlos2@dhl.com<\\/td>\\r\\n<td data-no-colon=\\\"true\\\">\\u00a0<\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<!--paginetes--><nav>\\r\\n<ul class=\\\"pagination justify-content-center\\\">\\r\\n<li class=\\\"page-item\\\"><a class=\\\"page-link\\\" href=\\\"#\\\"> <span aria-hidden=\\\"true\\\">\\u00ab<\\/span> <\\/a><\\/li>\\r\\n<li class=\\\"page-item active\\\" aria-current=\\\"page\\\"><a class=\\\"page-link\\\" href=\\\"#\\\">1<\\/a><\\/li>\\r\\n<li class=\\\"page-item\\\"><a class=\\\"page-link\\\" href=\\\"#\\\">2<\\/a><\\/li>\\r\\n<li class=\\\"page-item\\\"><a class=\\\"page-link\\\" href=\\\"#\\\">3<\\/a><\\/li>\\r\\n<li class=\\\"page-item\\\"><a class=\\\"page-link\\\" href=\\\"#\\\"> <span aria-hidden=\\\"true\\\">\\u00bb<\\/span> <\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<\\/nav><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--no tocar-->\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-01-28 19:52:41\",\"created_by\":\"974\",\"created_by_alias\":\"\",\"modified\":\"2025-01-28 20:04:37\",\"modified_by\":974,\"checked_out\":974,\"checked_out_time\":\"2025-01-28 20:03:33\",\"publish_up\":\"2025-01-28 19:52:41\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/logo_footer2.png#joomlaImage:\\\\\\/\\\\\\/local-images\\\\\\/logo_footer2.png?width=200&height=110\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":5,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}', 0),
(6, 'com_content.category.2', '', '2025-01-28 20:11:35', 974, 560, 'c8a724424749647743cad614dde8aea4f9e8d6ea', '{\"id\":\"2\",\"asset_id\":27,\"parent_id\":1,\"lft\":1,\"rgt\":2,\"level\":1,\"path\":\"uncategorised\",\"extension\":\"com_content\",\"title\":\"Home\",\"alias\":\"home\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":974,\"checked_out_time\":\"2025-01-28 20:11:09\",\"access\":1,\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"974\",\"created_time\":\"2025-01-28 19:24:01\",\"modified_user_id\":974,\"modified_time\":\"2025-01-28 20:11:35\",\"hits\":0,\"language\":\"*\",\"version\":1}', 0);
INSERT INTO `oh67l_history` (`version_id`, `item_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(7, 'com_content.article.2', '', '2025-01-29 22:31:06', 974, 14826, '51510050d58baad329b4be5778c9509a755f3006', '{\"id\":\"2\",\"asset_id\":101,\"title\":\"Home-StockFlow\",\"alias\":\"home-stockflow\",\"introtext\":\"<p>\\u00a0<\\/p>\\r\\n<!--menu |\\\\\\\\|-->\\r\\n<div class=\\\"container-fluid fonsGris position-fixed\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-12 align-items-center\\\"><nav class=\\\"navbar navbar-expand-lg\\\">\\r\\n<div class=\\\"container-fluid py-1\\\">\\r\\n<div class=\\\"ps-2\\\"><img class=\\\"logo-header\\\" src=\\\"img\\/logo_header.png\\\"><\\/div>\\r\\n<div class=\\\"p-3 d-flex align-items-center\\\">\\u00a0<\\/div>\\r\\n<button class=\\\"navbar-toggler\\\" type=\\\"button\\\" data-bs-toggle=\\\"collapse\\\" data-bs-target=\\\"#navbarSupportedContent\\\" aria-controls=\\\"navbarSupportedContent\\\" aria-expanded=\\\"false\\\" aria-label=\\\"Toggle navigation\\\"> <\\/button>\\r\\n<div id=\\\"navbarSupportedContent\\\" class=\\\"collapse navbar-collapse\\\">\\r\\n<ul class=\\\"navbar-nav ms-lg-auto mb-2 mb-lg-0\\\">\\r\\n<li class=\\\"nav-item dropdown\\\"><a class=\\\"nav-link dropdown-toggle btn-header\\\" role=\\\"button\\\" href=\\\"#\\\" data-bs-toggle=\\\"dropdown\\\" aria-expanded=\\\"false\\\"> PRODUCTO <\\/a>\\r\\n<ul class=\\\"dropdown-menu bg-white\\\">\\r\\n<li><a class=\\\"dropdown-item btn-header\\\" href=\\\"#\\\">DESCARGA DE PRODUCTO<\\/a><\\/li>\\r\\n<li><a class=\\\"dropdown-item btn-header\\\" href=\\\"#\\\">PLANES Y PRECIOS<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<\\/li>\\r\\n<li class=\\\"nav-item\\\"><a class=\\\"nav-link btn-header\\\" href=\\\"#\\\">CASOS DE \\u00c9XITO<\\/a><\\/li>\\r\\n<li class=\\\"nav-item\\\"><a class=\\\"nav-link btn-header border-end border-black\\\" href=\\\"#\\\">RESE\\u00d1AS<\\/a><\\/li>\\r\\n<li class=\\\"nav-item\\\"><a class=\\\"nav-link btn-header\\\">QUI\\u00c9NES SOMOS<\\/a><\\/li>\\r\\n<li class=\\\"nav-item\\\"><a class=\\\"nav-link btn-header\\\">BLOG<\\/a><\\/li>\\r\\n<li class=\\\"nav-item\\\"><a class=\\\"nav-link btn-header\\\">CONTACTO<\\/a><\\/li>\\r\\n<li class=\\\"nav-item ps-2\\\"><button class=\\\"btn btn-taronja border-black text-white rounded-2\\\" type=\\\"submit\\\">DEMO<\\/button><\\/li>\\r\\n<\\/ul>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/nav><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--software de gesti\\u00f3n |\\\\\\\\|-->\\r\\n<div class=\\\"container-lg-fluid container-xl pt-5 justify-content-center\\\">\\r\\n<div class=\\\"row rounded-3\\\">\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<div class=\\\"col-lg-10\\\">\\r\\n<div class=\\\"container-fluid marginMenu\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-12 col-md-6 fonsGris rounded-start-4 p-4 pe-3\\\">\\r\\n<h1 class=\\\"w-75 titul fw-bolder ps-3 pt-1\\\">Software de Gesti\\u00f3n de Almacenes<\\/h1>\\r\\n<h3 class=\\\"fw-bolder ps-3 pt-1 m-0\\\">(SGA \\/ WMS)<\\/h3>\\r\\n<p class=\\\"lh-lg ps-3\\\">Nuestra aplicaci\\u00f3n est\\u00e1 dise\\u00f1ada para simplificar la recepci\\u00f3n, almacenamiento y env\\u00edo de productos, eliminando el caos y permitiendo un control total de tu inventario desde cualquier lugar. Aumenta la productividad de tu equipo con una soluci\\u00f3n moderna, intuitiva y accesible desde cualquier dispositivo.<\\/p>\\r\\n<div class=\\\"d-grid d-lg-block gap-2 mx-auto\\\"><button class=\\\"btn btn-taronja text-white border-black px-5\\\">Solicitar DEMO<\\/button> <button class=\\\"btn btn-blau text-white border-white py-2 px-4\\\">Precios y planes &gt;<\\/button><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-12 col-md-6 fonsGris rounded-end-3 pt-5 pe-1\\\"><img class=\\\"img-fluid\\\" src=\\\"img\\/1_inicio.png\\\" alt=\\\"Gesti\\u00f3n de Almacenes\\\"><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-1 p-0\\\">\\u00a0<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--caixes |\\\\\\\\|-->\\r\\n<div class=\\\"container-lg-fluid container-xl py-4\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<div class=\\\"col-lg-10 col-xs-12\\\">\\r\\n<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-lg-3 col-sm-6 p-3 text-center\\\">\\r\\n<div class=\\\"border fonsGris rounded-4 pt-4 h-100\\\">\\r\\n<h4 class=\\\"fs-6 fw-bolder m-0\\\">GESTI\\u00d3N INTERGRAL DE INVENTARIOS<\\/h4>\\r\\n<p class=\\\"m-0 pb-2\\\">-----------------------------------<\\/p>\\r\\n<p class=\\\"lh-sm px-3\\\">Controla cada detalle de tus productos: desde la recepci\\u00f3n hasta el env\\u00edo, con un seguimiento en tiempo real y alertas de stock bajo.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-3 col-sm-6 p-3 text-center\\\">\\r\\n<div class=\\\"border fonsGris rounded-4 pt-4 px-2 h-100\\\">\\r\\n<h4 class=\\\"fs-6 fw-bolder m-0\\\">INTERFAZ ADAPTABLE Y F\\u00c1CIL DE USAR<\\/h4>\\r\\n<p class=\\\"m-0 pb-2\\\">-----------------------------------<\\/p>\\r\\n<p class=\\\"lh-sm\\\">Accede a toda la informaci\\u00f3n que necesitas con una interfaz moderna, intuitiva y optimizada para dispositivos m\\u00f3viles y laptops.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-3 col-sm-6 p-3 text-center\\\">\\r\\n<div class=\\\"border fonsGris rounded-4 pt-4 px-2 h-100\\\">\\r\\n<h4 class=\\\"fs-6 fw-bolder m-0 px-2\\\">AUTOMATIZACI\\u00d3N DE PROCESOS<\\/h4>\\r\\n<p class=\\\"m-0 pb-2\\\">-----------------------------------<\\/p>\\r\\n<p class=\\\"lh-sm\\\">Simplifica las tareas diarias con flujos de trabajo automatizados que reducen el tiempo de administraci\\u00f3n y minimizan errores humanos.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-3 col-sm-6 p-3 text-center\\\">\\r\\n<div class=\\\"border fonsGris rounded-4 pt-4 px-2  h-100\\\">\\r\\n<h4 class=\\\"fs-6 fw-bolder m-0\\\">AN\\u00c1LISIS Y REPORTES AVANZADOS<\\/h4>\\r\\n<p class=\\\"m-0 pb-2\\\">-----------------------------------<\\/p>\\r\\n<p class=\\\"lh-sm\\\">Obt\\u00e9n informes detallados sobre la rotaci\\u00f3n de productos, el rendimiento del almac\\u00e9n y el cumplimiento de pedidos, facilitando la toma de decisiones estrat\\u00e9gicas.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--beneficios |\\\\\\\\|-->\\r\\n<div class=\\\"container-lg-fluid container-xl pt-2 pb-5\\\">\\r\\n<div class=\\\"row align-items-center\\\">\\r\\n<h1 class=\\\"text-center pb-5 fs-3 fw-bolder mb-0\\\">BENEFICIOS PARA TU EMPRESA<\\/h1>\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<div class=\\\"col-lg-10\\\">\\r\\n<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-lg-6 px-1\\\"><img class=\\\"img-fluid d-md-none d-lg-block\\\" src=\\\"img\\/2_beneficios.png\\\" alt=\\\"Beneficios\\\"><\\/div>\\r\\n<div class=\\\"col-lg-6 fonsGris rounded-4 pt-3\\\">\\r\\n<ul class=\\\"ps-5\\\">\\r\\n<li>\\r\\n<h6 class=\\\"fw-bolder\\\">Ahorro de Tiempo y Costos<\\/h6>\\r\\n<p>Al automatizar tareas y centralizar la gesti\\u00f3n, se reducen tiempos de b\\u00fasqueda de productos y se minimizan los errores costosos.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<h6 class=\\\"fw-bolder\\\">Mejora en la Productividad<\\/h6>\\r\\n<p class=\\\"mb-2\\\">Los operarios y encargados trabajan de manera m\\u00e1s organizada, optimizando rutas de picking y reduciendo tiempos de preparaci\\u00f3n de pedidos.<\\/p>\\r\\n<\\/li>\\r\\n<li class=\\\"pt-1\\\">\\r\\n<h6 class=\\\"fw-bolder\\\">Mayor Control y Visibilidad<\\/h6>\\r\\n<p class=\\\"mb-2\\\">Monitorea el estado de tu inventario en tiempo real y realiza un seguimiento preciso de todos los movimientos dentro del almac\\u00e9n.<\\/p>\\r\\n<\\/li>\\r\\n<li class=\\\"pt-1\\\">\\r\\n<h6 class=\\\"fw-bolder\\\">Escalabilidad y Adaptaci\\u00f3n<\\/h6>\\r\\n<p>Crece con tu negocio: el sistema se adapta f\\u00e1cilmente a nuevas ubicaciones y almacenes, manteniendo siempre el control centralizado.<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--casos \\u00e9xito |\\\\\\\\|-->\\r\\n<div class=\\\"container-lg-fluid container-xl\\\">\\r\\n<h1 class=\\\"text-center pb-5 fs-3 fw-bolder\\\">CASOS DE \\u00c9XITO DE NUESTROS CLIENTES<\\/h1>\\r\\n<div class=\\\"row align-items-center\\\">\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<div class=\\\"col-lg-10\\\">\\r\\n<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-sm-6 pt-lg-0 pt-sm-4 col-12 ps-lg-0\\\"><img class=\\\"img-fluid\\\" src=\\\"img\\/3_casoDeExito.png\\\" alt=\\\"imagen-caso-Exito-1\\\"><\\/div>\\r\\n<div class=\\\"col-sm-6 pt-lg-0 pt-4 col-12 pe-lg-0\\\"><img class=\\\"img-fluid w-100\\\" src=\\\"img\\/4_casoDeExito.png\\\" alt=\\\"imagen-caso-Exito-2\\\"><\\/div>\\r\\n<div class=\\\"col-sm-6 pt-4 col-12 ps-lg-0\\\"><img class=\\\"img-fluid w-100\\\" src=\\\"img\\/5_casoDeExito.png\\\" alt=\\\"imagen-caso-Exito-3\\\"><\\/div>\\r\\n<div class=\\\"col-sm-6 pt-4 col-12 pe-lg-0\\\"><img class=\\\"img-fluid w-100\\\" src=\\\"img\\/6_casoDeExito.png\\\" alt=\\\"imagen-caso-Exito-4\\\"><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--rese\\u00f1as |\\\\\\\\|-->\\r\\n<div class=\\\"container-lg-fluid container-xl pt-5 pb-5\\\">\\r\\n<h1 class=\\\"text-center fs-3 fw-bolder pb-4\\\">RESE\\u00d1AS<\\/h1>\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<div class=\\\"col-lg-10 col-xs-12 pt-4 px-0\\\">\\r\\n<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-md-3 col-sm-6\\\">\\r\\n<div class=\\\"border fonsGris rounded-3 h-100 pb-3\\\"><img class=\\\"img-fluid\\\" src=\\\"img\\/7_rese\\u00f1a.png\\\">\\r\\n<p class=\\\"text-center py-2 justify-content-evenly d-flex px-3 mb-2\\\">\\u00a0<\\/p>\\r\\n<div class=\\\"px-3\\\">\\r\\n<p><strong>\\\"Este software ha revolucionado nuestra manera de trabajar en el almac\\u00e9n. Antes era un caos encontrar productos, pero ahora todo est\\u00e1 organizado y accesible desde cualquier dispositivo.\\\"<\\/strong><\\/p>\\r\\n<p><em>- Carlos M., Gerente de Log\\u00edstica.<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-md-3 col-sm-6\\\">\\r\\n<div class=\\\"border fonsGris rounded-3 h-100\\\"><img class=\\\"img-fluid\\\" src=\\\"img\\/8_rese\\u00f1a.png\\\">\\r\\n<p class=\\\"text-center py-2 justify-content-evenly d-flex px-3 mb-2\\\">\\u00a0<\\/p>\\r\\n<div class=\\\"px-3\\\">\\r\\n<p><strong>\\\"Nos encanta la facilidad de uso y c\\u00f3mo ha mejorado la productividad del equipo. Ahora completamos las \\u00f3rdenes de env\\u00edo en la mitad del tiempo.\\\"<\\/strong><\\/p>\\r\\n<p><em>- Marta G., Supervisora de Almac\\u00e9n.<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-md-3 col-sm-6\\\">\\r\\n<div class=\\\"border fonsGris rounded-3 h-100\\\"><img class=\\\"img-fluid\\\" src=\\\"img\\/9_rese\\u00f1a.png\\\">\\r\\n<p class=\\\"text-center py-2 justify-content-evenly d-flex px-3 mb-2\\\">\\u00a0<\\/p>\\r\\n<div class=\\\"px-3\\\">\\r\\n<p><strong>\\\"La automatizaci\\u00f3n de procesos nos ha permitido reducir los errores en un 90%. No puedo imaginar volver a trabajar sin esta herramienta.\\\"<\\/strong><\\/p>\\r\\n<p><em>- Juan M., Adjunto log\\u00edstica.<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-md-3 col-sm-6\\\">\\r\\n<div class=\\\"border fonsGris rounded-3 h-100\\\"><img class=\\\"img-fluid\\\" src=\\\"img\\/10_rese\\u00f1a.png\\\">\\r\\n<p class=\\\"text-center py-2 justify-content-evenly d-flex px-3 mb-2\\\">\\u00a0<\\/p>\\r\\n<div class=\\\"px-3\\\">\\r\\n<p><strong>\\\"El sistema de reportes es incre\\u00edble. Nos da toda la informaci\\u00f3n que necesitamos para tomar decisiones m\\u00e1s r\\u00e1pidas y acertadas sobre nuestro stock.\\\"<\\/strong><\\/p>\\r\\n<p><em>- Ana S., Responsable de Inventario.<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--footer |\\\\\\\\|-->\\r\\n<div class=\\\"container-fluid pt-1 fonsBlau text-white\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-sm-6 col-lg-4 pt-2 d-flex flex-column align-items-center pe-0 ps-4\\\"><img class=\\\"fotoFooter ps-2 pt-2 pb-5\\\" src=\\\"img\\/logo_footer.png\\\">\\r\\n<div class=\\\"text-start pt-4 ps-5\\\">\\r\\n<p class=\\\"pt-3 d-flex align-items-center mb-2\\\">C\\/Duanes, 17 - Pego<\\/p>\\r\\n<p class=\\\"d-flex align-items-center mb-2\\\">+34 966 409 960<\\/p>\\r\\n<p class=\\\"d-flex align-items-center\\\">03007613@edu.gva.es<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-sm-6 col-lg-4 text-center pt-4\\\">\\r\\n<p class=\\\"pt-1 fw-bolder\\\">Legal<\\/p>\\r\\n<div class=\\\"pt-5 text-center pb-4\\\">\\r\\n<p class=\\\"pt-4 mb-0\\\"><a class=\\\"text-decoration-underline text-white\\\" href=\\\"#\\\">Aviso legal<\\/a><\\/p>\\r\\n<p class=\\\"mb-0\\\"><a class=\\\"text-decoration-underline text-white\\\" href=\\\"#\\\">Pol\\u00edtica de cookies<\\/a><\\/p>\\r\\n<p class=\\\"mb-0\\\"><a class=\\\"text-decoration-underline text-white\\\" href=\\\"#\\\">Pol\\u00edtica de privacidad<\\/a><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"text-center pt-5 mt-1\\\"><a class=\\\"text-decoration-none text-white\\\" href=\\\"https:\\/\\/x.com\\/Gag0val\\/status\\/1658048420920139776\\\"> <\\/a> <a class=\\\"text-decoration-none text-white px-4\\\" href=\\\"https:\\/\\/www.linkedin.com\\/company\\/aichatgpt\\/\\\"> <\\/a> <a class=\\\"text-decoration-none text-white\\\" href=\\\"https:\\/\\/youtu.be\\/xvFZjo5PgG0\\\"> <\\/a><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-md-12 col-lg-4 pt-lg-2 pe-lg-5 mt-4\\\">\\r\\n<div class=\\\"text-center pt-lg-1 pe-lg-5\\\">\\r\\n<h6 class=\\\"pe-lg-4 fw-bolder\\\">NEWSLETTERS<\\/h6>\\r\\n<p class=\\\"pe-lg-4 mb-lg-2\\\">* Nombre<\\/p>\\r\\n<input class=\\\"rounded-2 py-lg-1 me-lg-4 px-lg-2\\\" type=\\\"text\\\">\\r\\n<p class=\\\"pe-lg-4 pt-lg-3\\\">* Email<\\/p>\\r\\n<input class=\\\"rounded-2 py-lg-1 me-lg-4 px-lg-2 mb-lg-0\\\" type=\\\"text\\\">\\r\\n<p class=\\\"pt-lg-3 pe-lg-5 d-flex justify-content-center mb-lg-2\\\"><input class=\\\"pt-2\\\" type=\\\"checkbox\\\"><\\/p>\\r\\n<p class=\\\"text-center px-lg-5\\\">Acepto <a class=\\\"text-decoration-underline text-white\\\" href=\\\"#\\\">t\\u00e9rminos<\\/a> y <a class=\\\"text-decoration-underline text-white\\\" href=\\\"#\\\">condiciones<\\/a><\\/p>\\r\\n<button class=\\\"btn-taronja rounded-3 text-white mx-lg-5\\\">Suscr\\u00edbete<\\/button><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--copy |\\\\\\\\|-->\\r\\n<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-12\\\">\\r\\n<p class=\\\"text-end align-items-center m-0 py-3\\\">\\u00a9 Copyright 2024. Todos los derechos reservados<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--script-->\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-01-29 22:31:06\",\"created_by\":974,\"created_by_alias\":\"\",\"modified\":\"2025-01-29 22:31:06\",\"modified_by\":974,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2025-01-29 22:31:06\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}', 0),
(8, 'com_content.category.2', '', '2025-01-29 22:34:41', 974, 564, '43f486497f89663bfeda417eaff2013583ad10c3', '{\"id\":\"2\",\"asset_id\":27,\"parent_id\":1,\"lft\":1,\"rgt\":2,\"level\":1,\"path\":\"home\",\"extension\":\"com_content\",\"title\":\"Home\",\"alias\":\"home\",\"note\":\"\",\"description\":\"<p>hello<\\/p>\",\"published\":\"1\",\"checked_out\":974,\"checked_out_time\":\"2025-01-29 22:34:26\",\"access\":1,\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"974\",\"created_time\":\"2025-01-28 19:24:01\",\"modified_user_id\":974,\"modified_time\":\"2025-01-29 22:34:41\",\"hits\":0,\"language\":\"*\",\"version\":1}', 0),
(9, 'com_content.article.3', '', '2025-01-29 22:38:03', 974, 14816, '23a5e4ab558a6d29209a483686fdc225ffb17d45', '{\"id\":\"3\",\"asset_id\":102,\"title\":\"Stockflow\",\"alias\":\"stockflow\",\"introtext\":\"<p>\\u00a0<\\/p>\\r\\n<!--menu |\\\\\\\\|-->\\r\\n<div class=\\\"container-fluid fonsGris position-fixed\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-12 align-items-center\\\"><nav class=\\\"navbar navbar-expand-lg\\\">\\r\\n<div class=\\\"container-fluid py-1\\\">\\r\\n<div class=\\\"ps-2\\\"><img class=\\\"logo-header\\\" src=\\\"img\\/logo_header.png\\\"><\\/div>\\r\\n<div class=\\\"p-3 d-flex align-items-center\\\">\\u00a0<\\/div>\\r\\n<button class=\\\"navbar-toggler\\\" type=\\\"button\\\" data-bs-toggle=\\\"collapse\\\" data-bs-target=\\\"#navbarSupportedContent\\\" aria-controls=\\\"navbarSupportedContent\\\" aria-expanded=\\\"false\\\" aria-label=\\\"Toggle navigation\\\"> <\\/button>\\r\\n<div id=\\\"navbarSupportedContent\\\" class=\\\"collapse navbar-collapse\\\">\\r\\n<ul class=\\\"navbar-nav ms-lg-auto mb-2 mb-lg-0\\\">\\r\\n<li class=\\\"nav-item dropdown\\\"><a class=\\\"nav-link dropdown-toggle btn-header\\\" role=\\\"button\\\" href=\\\"#\\\" data-bs-toggle=\\\"dropdown\\\" aria-expanded=\\\"false\\\"> PRODUCTO <\\/a>\\r\\n<ul class=\\\"dropdown-menu bg-white\\\">\\r\\n<li><a class=\\\"dropdown-item btn-header\\\" href=\\\"#\\\">DESCARGA DE PRODUCTO<\\/a><\\/li>\\r\\n<li><a class=\\\"dropdown-item btn-header\\\" href=\\\"#\\\">PLANES Y PRECIOS<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<\\/li>\\r\\n<li class=\\\"nav-item\\\"><a class=\\\"nav-link btn-header\\\" href=\\\"#\\\">CASOS DE \\u00c9XITO<\\/a><\\/li>\\r\\n<li class=\\\"nav-item\\\"><a class=\\\"nav-link btn-header border-end border-black\\\" href=\\\"#\\\">RESE\\u00d1AS<\\/a><\\/li>\\r\\n<li class=\\\"nav-item\\\"><a class=\\\"nav-link btn-header\\\">QUI\\u00c9NES SOMOS<\\/a><\\/li>\\r\\n<li class=\\\"nav-item\\\"><a class=\\\"nav-link btn-header\\\">BLOG<\\/a><\\/li>\\r\\n<li class=\\\"nav-item\\\"><a class=\\\"nav-link btn-header\\\">CONTACTO<\\/a><\\/li>\\r\\n<li class=\\\"nav-item ps-2\\\"><button class=\\\"btn btn-taronja border-black text-white rounded-2\\\" type=\\\"submit\\\">DEMO<\\/button><\\/li>\\r\\n<\\/ul>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/nav><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--software de gesti\\u00f3n |\\\\\\\\|-->\\r\\n<div class=\\\"container-lg-fluid container-xl pt-5 justify-content-center\\\">\\r\\n<div class=\\\"row rounded-3\\\">\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<div class=\\\"col-lg-10\\\">\\r\\n<div class=\\\"container-fluid marginMenu\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-12 col-md-6 fonsGris rounded-start-4 p-4 pe-3\\\">\\r\\n<h1 class=\\\"w-75 titul fw-bolder ps-3 pt-1\\\">Software de Gesti\\u00f3n de Almacenes<\\/h1>\\r\\n<h3 class=\\\"fw-bolder ps-3 pt-1 m-0\\\">(SGA \\/ WMS)<\\/h3>\\r\\n<p class=\\\"lh-lg ps-3\\\">Nuestra aplicaci\\u00f3n est\\u00e1 dise\\u00f1ada para simplificar la recepci\\u00f3n, almacenamiento y env\\u00edo de productos, eliminando el caos y permitiendo un control total de tu inventario desde cualquier lugar. Aumenta la productividad de tu equipo con una soluci\\u00f3n moderna, intuitiva y accesible desde cualquier dispositivo.<\\/p>\\r\\n<div class=\\\"d-grid d-lg-block gap-2 mx-auto\\\"><button class=\\\"btn btn-taronja text-white border-black px-5\\\">Solicitar DEMO<\\/button> <button class=\\\"btn btn-blau text-white border-white py-2 px-4\\\">Precios y planes &gt;<\\/button><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-12 col-md-6 fonsGris rounded-end-3 pt-5 pe-1\\\"><img class=\\\"img-fluid\\\" src=\\\"img\\/1_inicio.png\\\" alt=\\\"Gesti\\u00f3n de Almacenes\\\"><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-1 p-0\\\">\\u00a0<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--caixes |\\\\\\\\|-->\\r\\n<div class=\\\"container-lg-fluid container-xl py-4\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<div class=\\\"col-lg-10 col-xs-12\\\">\\r\\n<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-lg-3 col-sm-6 p-3 text-center\\\">\\r\\n<div class=\\\"border fonsGris rounded-4 pt-4 h-100\\\">\\r\\n<h4 class=\\\"fs-6 fw-bolder m-0\\\">GESTI\\u00d3N INTERGRAL DE INVENTARIOS<\\/h4>\\r\\n<p class=\\\"m-0 pb-2\\\">-----------------------------------<\\/p>\\r\\n<p class=\\\"lh-sm px-3\\\">Controla cada detalle de tus productos: desde la recepci\\u00f3n hasta el env\\u00edo, con un seguimiento en tiempo real y alertas de stock bajo.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-3 col-sm-6 p-3 text-center\\\">\\r\\n<div class=\\\"border fonsGris rounded-4 pt-4 px-2 h-100\\\">\\r\\n<h4 class=\\\"fs-6 fw-bolder m-0\\\">INTERFAZ ADAPTABLE Y F\\u00c1CIL DE USAR<\\/h4>\\r\\n<p class=\\\"m-0 pb-2\\\">-----------------------------------<\\/p>\\r\\n<p class=\\\"lh-sm\\\">Accede a toda la informaci\\u00f3n que necesitas con una interfaz moderna, intuitiva y optimizada para dispositivos m\\u00f3viles y laptops.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-3 col-sm-6 p-3 text-center\\\">\\r\\n<div class=\\\"border fonsGris rounded-4 pt-4 px-2 h-100\\\">\\r\\n<h4 class=\\\"fs-6 fw-bolder m-0 px-2\\\">AUTOMATIZACI\\u00d3N DE PROCESOS<\\/h4>\\r\\n<p class=\\\"m-0 pb-2\\\">-----------------------------------<\\/p>\\r\\n<p class=\\\"lh-sm\\\">Simplifica las tareas diarias con flujos de trabajo automatizados que reducen el tiempo de administraci\\u00f3n y minimizan errores humanos.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-3 col-sm-6 p-3 text-center\\\">\\r\\n<div class=\\\"border fonsGris rounded-4 pt-4 px-2  h-100\\\">\\r\\n<h4 class=\\\"fs-6 fw-bolder m-0\\\">AN\\u00c1LISIS Y REPORTES AVANZADOS<\\/h4>\\r\\n<p class=\\\"m-0 pb-2\\\">-----------------------------------<\\/p>\\r\\n<p class=\\\"lh-sm\\\">Obt\\u00e9n informes detallados sobre la rotaci\\u00f3n de productos, el rendimiento del almac\\u00e9n y el cumplimiento de pedidos, facilitando la toma de decisiones estrat\\u00e9gicas.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--beneficios |\\\\\\\\|-->\\r\\n<div class=\\\"container-lg-fluid container-xl pt-2 pb-5\\\">\\r\\n<div class=\\\"row align-items-center\\\">\\r\\n<h1 class=\\\"text-center pb-5 fs-3 fw-bolder mb-0\\\">BENEFICIOS PARA TU EMPRESA<\\/h1>\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<div class=\\\"col-lg-10\\\">\\r\\n<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-lg-6 px-1\\\"><img class=\\\"img-fluid d-md-none d-lg-block\\\" src=\\\"img\\/2_beneficios.png\\\" alt=\\\"Beneficios\\\"><\\/div>\\r\\n<div class=\\\"col-lg-6 fonsGris rounded-4 pt-3\\\">\\r\\n<ul class=\\\"ps-5\\\">\\r\\n<li>\\r\\n<h6 class=\\\"fw-bolder\\\">Ahorro de Tiempo y Costos<\\/h6>\\r\\n<p>Al automatizar tareas y centralizar la gesti\\u00f3n, se reducen tiempos de b\\u00fasqueda de productos y se minimizan los errores costosos.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<h6 class=\\\"fw-bolder\\\">Mejora en la Productividad<\\/h6>\\r\\n<p class=\\\"mb-2\\\">Los operarios y encargados trabajan de manera m\\u00e1s organizada, optimizando rutas de picking y reduciendo tiempos de preparaci\\u00f3n de pedidos.<\\/p>\\r\\n<\\/li>\\r\\n<li class=\\\"pt-1\\\">\\r\\n<h6 class=\\\"fw-bolder\\\">Mayor Control y Visibilidad<\\/h6>\\r\\n<p class=\\\"mb-2\\\">Monitorea el estado de tu inventario en tiempo real y realiza un seguimiento preciso de todos los movimientos dentro del almac\\u00e9n.<\\/p>\\r\\n<\\/li>\\r\\n<li class=\\\"pt-1\\\">\\r\\n<h6 class=\\\"fw-bolder\\\">Escalabilidad y Adaptaci\\u00f3n<\\/h6>\\r\\n<p>Crece con tu negocio: el sistema se adapta f\\u00e1cilmente a nuevas ubicaciones y almacenes, manteniendo siempre el control centralizado.<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--casos \\u00e9xito |\\\\\\\\|-->\\r\\n<div class=\\\"container-lg-fluid container-xl\\\">\\r\\n<h1 class=\\\"text-center pb-5 fs-3 fw-bolder\\\">CASOS DE \\u00c9XITO DE NUESTROS CLIENTES<\\/h1>\\r\\n<div class=\\\"row align-items-center\\\">\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<div class=\\\"col-lg-10\\\">\\r\\n<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-sm-6 pt-lg-0 pt-sm-4 col-12 ps-lg-0\\\"><img class=\\\"img-fluid\\\" src=\\\"img\\/3_casoDeExito.png\\\" alt=\\\"imagen-caso-Exito-1\\\"><\\/div>\\r\\n<div class=\\\"col-sm-6 pt-lg-0 pt-4 col-12 pe-lg-0\\\"><img class=\\\"img-fluid w-100\\\" src=\\\"img\\/4_casoDeExito.png\\\" alt=\\\"imagen-caso-Exito-2\\\"><\\/div>\\r\\n<div class=\\\"col-sm-6 pt-4 col-12 ps-lg-0\\\"><img class=\\\"img-fluid w-100\\\" src=\\\"img\\/5_casoDeExito.png\\\" alt=\\\"imagen-caso-Exito-3\\\"><\\/div>\\r\\n<div class=\\\"col-sm-6 pt-4 col-12 pe-lg-0\\\"><img class=\\\"img-fluid w-100\\\" src=\\\"img\\/6_casoDeExito.png\\\" alt=\\\"imagen-caso-Exito-4\\\"><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--rese\\u00f1as |\\\\\\\\|-->\\r\\n<div class=\\\"container-lg-fluid container-xl pt-5 pb-5\\\">\\r\\n<h1 class=\\\"text-center fs-3 fw-bolder pb-4\\\">RESE\\u00d1AS<\\/h1>\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<div class=\\\"col-lg-10 col-xs-12 pt-4 px-0\\\">\\r\\n<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-md-3 col-sm-6\\\">\\r\\n<div class=\\\"border fonsGris rounded-3 h-100 pb-3\\\"><img class=\\\"img-fluid\\\" src=\\\"img\\/7_rese\\u00f1a.png\\\">\\r\\n<p class=\\\"text-center py-2 justify-content-evenly d-flex px-3 mb-2\\\">\\u00a0<\\/p>\\r\\n<div class=\\\"px-3\\\">\\r\\n<p><strong>\\\"Este software ha revolucionado nuestra manera de trabajar en el almac\\u00e9n. Antes era un caos encontrar productos, pero ahora todo est\\u00e1 organizado y accesible desde cualquier dispositivo.\\\"<\\/strong><\\/p>\\r\\n<p><em>- Carlos M., Gerente de Log\\u00edstica.<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-md-3 col-sm-6\\\">\\r\\n<div class=\\\"border fonsGris rounded-3 h-100\\\"><img class=\\\"img-fluid\\\" src=\\\"img\\/8_rese\\u00f1a.png\\\">\\r\\n<p class=\\\"text-center py-2 justify-content-evenly d-flex px-3 mb-2\\\">\\u00a0<\\/p>\\r\\n<div class=\\\"px-3\\\">\\r\\n<p><strong>\\\"Nos encanta la facilidad de uso y c\\u00f3mo ha mejorado la productividad del equipo. Ahora completamos las \\u00f3rdenes de env\\u00edo en la mitad del tiempo.\\\"<\\/strong><\\/p>\\r\\n<p><em>- Marta G., Supervisora de Almac\\u00e9n.<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-md-3 col-sm-6\\\">\\r\\n<div class=\\\"border fonsGris rounded-3 h-100\\\"><img class=\\\"img-fluid\\\" src=\\\"img\\/9_rese\\u00f1a.png\\\">\\r\\n<p class=\\\"text-center py-2 justify-content-evenly d-flex px-3 mb-2\\\">\\u00a0<\\/p>\\r\\n<div class=\\\"px-3\\\">\\r\\n<p><strong>\\\"La automatizaci\\u00f3n de procesos nos ha permitido reducir los errores en un 90%. No puedo imaginar volver a trabajar sin esta herramienta.\\\"<\\/strong><\\/p>\\r\\n<p><em>- Juan M., Adjunto log\\u00edstica.<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-md-3 col-sm-6\\\">\\r\\n<div class=\\\"border fonsGris rounded-3 h-100\\\"><img class=\\\"img-fluid\\\" src=\\\"img\\/10_rese\\u00f1a.png\\\">\\r\\n<p class=\\\"text-center py-2 justify-content-evenly d-flex px-3 mb-2\\\">\\u00a0<\\/p>\\r\\n<div class=\\\"px-3\\\">\\r\\n<p><strong>\\\"El sistema de reportes es incre\\u00edble. Nos da toda la informaci\\u00f3n que necesitamos para tomar decisiones m\\u00e1s r\\u00e1pidas y acertadas sobre nuestro stock.\\\"<\\/strong><\\/p>\\r\\n<p><em>- Ana S., Responsable de Inventario.<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--footer |\\\\\\\\|-->\\r\\n<div class=\\\"container-fluid pt-1 fonsBlau text-white\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-sm-6 col-lg-4 pt-2 d-flex flex-column align-items-center pe-0 ps-4\\\"><img class=\\\"fotoFooter ps-2 pt-2 pb-5\\\" src=\\\"img\\/logo_footer.png\\\">\\r\\n<div class=\\\"text-start pt-4 ps-5\\\">\\r\\n<p class=\\\"pt-3 d-flex align-items-center mb-2\\\">C\\/Duanes, 17 - Pego<\\/p>\\r\\n<p class=\\\"d-flex align-items-center mb-2\\\">+34 966 409 960<\\/p>\\r\\n<p class=\\\"d-flex align-items-center\\\">03007613@edu.gva.es<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-sm-6 col-lg-4 text-center pt-4\\\">\\r\\n<p class=\\\"pt-1 fw-bolder\\\">Legal<\\/p>\\r\\n<div class=\\\"pt-5 text-center pb-4\\\">\\r\\n<p class=\\\"pt-4 mb-0\\\"><a class=\\\"text-decoration-underline text-white\\\" href=\\\"#\\\">Aviso legal<\\/a><\\/p>\\r\\n<p class=\\\"mb-0\\\"><a class=\\\"text-decoration-underline text-white\\\" href=\\\"#\\\">Pol\\u00edtica de cookies<\\/a><\\/p>\\r\\n<p class=\\\"mb-0\\\"><a class=\\\"text-decoration-underline text-white\\\" href=\\\"#\\\">Pol\\u00edtica de privacidad<\\/a><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"text-center pt-5 mt-1\\\"><a class=\\\"text-decoration-none text-white\\\" href=\\\"https:\\/\\/x.com\\/Gag0val\\/status\\/1658048420920139776\\\"> <\\/a> <a class=\\\"text-decoration-none text-white px-4\\\" href=\\\"https:\\/\\/www.linkedin.com\\/company\\/aichatgpt\\/\\\"> <\\/a> <a class=\\\"text-decoration-none text-white\\\" href=\\\"https:\\/\\/youtu.be\\/xvFZjo5PgG0\\\"> <\\/a><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-md-12 col-lg-4 pt-lg-2 pe-lg-5 mt-4\\\">\\r\\n<div class=\\\"text-center pt-lg-1 pe-lg-5\\\">\\r\\n<h6 class=\\\"pe-lg-4 fw-bolder\\\">NEWSLETTERS<\\/h6>\\r\\n<p class=\\\"pe-lg-4 mb-lg-2\\\">* Nombre<\\/p>\\r\\n<input class=\\\"rounded-2 py-lg-1 me-lg-4 px-lg-2\\\" type=\\\"text\\\">\\r\\n<p class=\\\"pe-lg-4 pt-lg-3\\\">* Email<\\/p>\\r\\n<input class=\\\"rounded-2 py-lg-1 me-lg-4 px-lg-2 mb-lg-0\\\" type=\\\"text\\\">\\r\\n<p class=\\\"pt-lg-3 pe-lg-5 d-flex justify-content-center mb-lg-2\\\"><input class=\\\"pt-2\\\" type=\\\"checkbox\\\"><\\/p>\\r\\n<p class=\\\"text-center px-lg-5\\\">Acepto <a class=\\\"text-decoration-underline text-white\\\" href=\\\"#\\\">t\\u00e9rminos<\\/a> y <a class=\\\"text-decoration-underline text-white\\\" href=\\\"#\\\">condiciones<\\/a><\\/p>\\r\\n<button class=\\\"btn-taronja rounded-3 text-white mx-lg-5\\\">Suscr\\u00edbete<\\/button><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--copy |\\\\\\\\|-->\\r\\n<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-12\\\">\\r\\n<p class=\\\"text-end align-items-center m-0 py-3\\\">\\u00a9 Copyright 2024. Todos los derechos reservados<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--script-->\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-01-29 22:38:03\",\"created_by\":974,\"created_by_alias\":\"\",\"modified\":\"2025-01-29 22:38:03\",\"modified_by\":974,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2025-01-29 22:38:03\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}', 0);
INSERT INTO `oh67l_history` (`version_id`, `item_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(10, 'com_content.article.3', '', '2025-01-29 22:54:27', 974, 14663, '35486beaee04dc0e370b0aa7f96ea20c8690ed3a', '{\"id\":\"3\",\"asset_id\":102,\"title\":\"Stockflow\",\"alias\":\"stockflow\",\"introtext\":\"<!--menu |\\\\\\\\|-->\\r\\n<div class=\\\"container-fluid fonsGris position-fixed\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-12 align-items-center\\\"><nav class=\\\"navbar navbar-expand-lg\\\">\\r\\n<div class=\\\"container-fluid py-1\\\"><button class=\\\"navbar-toggler\\\" type=\\\"button\\\" data-bs-toggle=\\\"collapse\\\" data-bs-target=\\\"#navbarSupportedContent\\\" aria-controls=\\\"navbarSupportedContent\\\" aria-expanded=\\\"false\\\" aria-label=\\\"Toggle navigation\\\">\\u00a0<\\/button>\\r\\n<div id=\\\"navbarSupportedContent\\\" class=\\\"collapse navbar-collapse\\\">\\r\\n<ul class=\\\"navbar-nav ms-lg-auto mb-2 mb-lg-0\\\">\\r\\n<li class=\\\"nav-item dropdown\\\"><a class=\\\"nav-link dropdown-toggle btn-header\\\" role=\\\"button\\\" href=\\\"#\\\" data-bs-toggle=\\\"dropdown\\\" aria-expanded=\\\"false\\\"> PRODUCTO <\\/a>\\r\\n<ul class=\\\"dropdown-menu bg-white\\\">\\r\\n<li><a class=\\\"dropdown-item btn-header\\\" href=\\\"#\\\">DESCARGA DE PRODUCTO<\\/a><\\/li>\\r\\n<li><a class=\\\"dropdown-item btn-header\\\" href=\\\"#\\\">PLANES Y PRECIOS<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<\\/li>\\r\\n<li class=\\\"nav-item\\\"><a class=\\\"nav-link btn-header\\\" href=\\\"#\\\">CASOS DE \\u00c9XITO<\\/a><\\/li>\\r\\n<li class=\\\"nav-item\\\"><a class=\\\"nav-link btn-header border-end border-black\\\" href=\\\"#\\\">RESE\\u00d1AS<\\/a><\\/li>\\r\\n<li class=\\\"nav-item\\\"><a class=\\\"nav-link btn-header\\\">QUI\\u00c9NES SOMOS<\\/a><\\/li>\\r\\n<li class=\\\"nav-item\\\"><a class=\\\"nav-link btn-header\\\">BLOG<\\/a><\\/li>\\r\\n<li class=\\\"nav-item\\\"><a class=\\\"nav-link btn-header\\\">CONTACTO<\\/a><\\/li>\\r\\n<li class=\\\"nav-item ps-2\\\"><button class=\\\"btn btn-taronja border-black text-white rounded-2\\\" type=\\\"submit\\\">DEMO<\\/button><\\/li>\\r\\n<\\/ul>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/nav><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--software de gesti\\u00f3n |\\\\\\\\|-->\\r\\n<div class=\\\"container-lg-fluid container-xl pt-5 justify-content-center\\\">\\r\\n<div class=\\\"row rounded-3\\\">\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<div class=\\\"col-lg-10\\\">\\r\\n<div class=\\\"container-fluid marginMenu\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-12 col-md-6 fonsGris rounded-start-4 p-4 pe-3\\\">\\r\\n<h1 class=\\\"w-75 titul fw-bolder ps-3 pt-1\\\">Software de Gesti\\u00f3n de Almacenes<\\/h1>\\r\\n<h3 class=\\\"fw-bolder ps-3 pt-1 m-0\\\">(SGA \\/ WMS)<\\/h3>\\r\\n<p class=\\\"lh-lg ps-3\\\">Nuestra aplicaci\\u00f3n est\\u00e1 dise\\u00f1ada para simplificar la recepci\\u00f3n, almacenamiento y env\\u00edo de productos, eliminando el caos y permitiendo un control total de tu inventario desde cualquier lugar. Aumenta la productividad de tu equipo con una soluci\\u00f3n moderna, intuitiva y accesible desde cualquier dispositivo.<\\/p>\\r\\n<div class=\\\"d-grid d-lg-block gap-2 mx-auto\\\"><button class=\\\"btn btn-taronja text-white border-black px-5\\\">Solicitar DEMO<\\/button> <button class=\\\"btn btn-blau text-white border-white py-2 px-4\\\">Precios y planes &gt;<\\/button><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-12 col-md-6 fonsGris rounded-end-3 pt-5 pe-1\\\"><img class=\\\"img-fluid\\\" src=\\\"img\\/1_inicio.png\\\" alt=\\\"Gesti\\u00f3n de Almacenes\\\"><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-1 p-0\\\">\\u00a0<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--caixes |\\\\\\\\|-->\\r\\n<div class=\\\"container-lg-fluid container-xl py-4\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<div class=\\\"col-lg-10 col-xs-12\\\">\\r\\n<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-lg-3 col-sm-6 p-3 text-center\\\">\\r\\n<div class=\\\"border fonsGris rounded-4 pt-4 h-100\\\">\\r\\n<h4 class=\\\"fs-6 fw-bolder m-0\\\">GESTI\\u00d3N INTERGRAL DE INVENTARIOS<\\/h4>\\r\\n<p class=\\\"m-0 pb-2\\\">-----------------------------------<\\/p>\\r\\n<p class=\\\"lh-sm px-3\\\">Controla cada detalle de tus productos: desde la recepci\\u00f3n hasta el env\\u00edo, con un seguimiento en tiempo real y alertas de stock bajo.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-3 col-sm-6 p-3 text-center\\\">\\r\\n<div class=\\\"border fonsGris rounded-4 pt-4 px-2 h-100\\\">\\r\\n<h4 class=\\\"fs-6 fw-bolder m-0\\\">INTERFAZ ADAPTABLE Y F\\u00c1CIL DE USAR<\\/h4>\\r\\n<p class=\\\"m-0 pb-2\\\">-----------------------------------<\\/p>\\r\\n<p class=\\\"lh-sm\\\">Accede a toda la informaci\\u00f3n que necesitas con una interfaz moderna, intuitiva y optimizada para dispositivos m\\u00f3viles y laptops.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-3 col-sm-6 p-3 text-center\\\">\\r\\n<div class=\\\"border fonsGris rounded-4 pt-4 px-2 h-100\\\">\\r\\n<h4 class=\\\"fs-6 fw-bolder m-0 px-2\\\">AUTOMATIZACI\\u00d3N DE PROCESOS<\\/h4>\\r\\n<p class=\\\"m-0 pb-2\\\">-----------------------------------<\\/p>\\r\\n<p class=\\\"lh-sm\\\">Simplifica las tareas diarias con flujos de trabajo automatizados que reducen el tiempo de administraci\\u00f3n y minimizan errores humanos.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-3 col-sm-6 p-3 text-center\\\">\\r\\n<div class=\\\"border fonsGris rounded-4 pt-4 px-2  h-100\\\">\\r\\n<h4 class=\\\"fs-6 fw-bolder m-0\\\">AN\\u00c1LISIS Y REPORTES AVANZADOS<\\/h4>\\r\\n<p class=\\\"m-0 pb-2\\\">-----------------------------------<\\/p>\\r\\n<p class=\\\"lh-sm\\\">Obt\\u00e9n informes detallados sobre la rotaci\\u00f3n de productos, el rendimiento del almac\\u00e9n y el cumplimiento de pedidos, facilitando la toma de decisiones estrat\\u00e9gicas.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--beneficios |\\\\\\\\|-->\\r\\n<div class=\\\"container-lg-fluid container-xl pt-2 pb-5\\\">\\r\\n<div class=\\\"row align-items-center\\\">\\r\\n<h1 class=\\\"text-center pb-5 fs-3 fw-bolder mb-0\\\">BENEFICIOS PARA TU EMPRESA<\\/h1>\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<div class=\\\"col-lg-10\\\">\\r\\n<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-lg-6 px-1\\\"><img class=\\\"img-fluid d-md-none d-lg-block\\\" src=\\\"img\\/2_beneficios.png\\\" alt=\\\"Beneficios\\\"><\\/div>\\r\\n<div class=\\\"col-lg-6 fonsGris rounded-4 pt-3\\\">\\r\\n<ul class=\\\"ps-5\\\">\\r\\n<li>\\r\\n<h6 class=\\\"fw-bolder\\\">Ahorro de Tiempo y Costos<\\/h6>\\r\\n<p>Al automatizar tareas y centralizar la gesti\\u00f3n, se reducen tiempos de b\\u00fasqueda de productos y se minimizan los errores costosos.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<h6 class=\\\"fw-bolder\\\">Mejora en la Productividad<\\/h6>\\r\\n<p class=\\\"mb-2\\\">Los operarios y encargados trabajan de manera m\\u00e1s organizada, optimizando rutas de picking y reduciendo tiempos de preparaci\\u00f3n de pedidos.<\\/p>\\r\\n<\\/li>\\r\\n<li class=\\\"pt-1\\\">\\r\\n<h6 class=\\\"fw-bolder\\\">Mayor Control y Visibilidad<\\/h6>\\r\\n<p class=\\\"mb-2\\\">Monitorea el estado de tu inventario en tiempo real y realiza un seguimiento preciso de todos los movimientos dentro del almac\\u00e9n.<\\/p>\\r\\n<\\/li>\\r\\n<li class=\\\"pt-1\\\">\\r\\n<h6 class=\\\"fw-bolder\\\">Escalabilidad y Adaptaci\\u00f3n<\\/h6>\\r\\n<p>Crece con tu negocio: el sistema se adapta f\\u00e1cilmente a nuevas ubicaciones y almacenes, manteniendo siempre el control centralizado.<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--casos \\u00e9xito |\\\\\\\\|-->\\r\\n<div class=\\\"container-lg-fluid container-xl\\\">\\r\\n<h1 class=\\\"text-center pb-5 fs-3 fw-bolder\\\">CASOS DE \\u00c9XITO DE NUESTROS CLIENTES<\\/h1>\\r\\n<div class=\\\"row align-items-center\\\">\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<div class=\\\"col-lg-10\\\">\\r\\n<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-sm-6 pt-lg-0 pt-sm-4 col-12 ps-lg-0\\\"><img class=\\\"img-fluid\\\" src=\\\"img\\/3_casoDeExito.png\\\" alt=\\\"imagen-caso-Exito-1\\\"><\\/div>\\r\\n<div class=\\\"col-sm-6 pt-lg-0 pt-4 col-12 pe-lg-0\\\"><img class=\\\"img-fluid w-100\\\" src=\\\"img\\/4_casoDeExito.png\\\" alt=\\\"imagen-caso-Exito-2\\\"><\\/div>\\r\\n<div class=\\\"col-sm-6 pt-4 col-12 ps-lg-0\\\"><img class=\\\"img-fluid w-100\\\" src=\\\"img\\/5_casoDeExito.png\\\" alt=\\\"imagen-caso-Exito-3\\\"><\\/div>\\r\\n<div class=\\\"col-sm-6 pt-4 col-12 pe-lg-0\\\"><img class=\\\"img-fluid w-100\\\" src=\\\"img\\/6_casoDeExito.png\\\" alt=\\\"imagen-caso-Exito-4\\\"><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--rese\\u00f1as |\\\\\\\\|-->\\r\\n<div class=\\\"container-lg-fluid container-xl pt-5 pb-5\\\">\\r\\n<h1 class=\\\"text-center fs-3 fw-bolder pb-4\\\">RESE\\u00d1AS<\\/h1>\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<div class=\\\"col-lg-10 col-xs-12 pt-4 px-0\\\">\\r\\n<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-md-3 col-sm-6\\\">\\r\\n<div class=\\\"border fonsGris rounded-3 h-100 pb-3\\\"><img class=\\\"img-fluid\\\" src=\\\"img\\/7_rese\\u00f1a.png\\\">\\r\\n<p class=\\\"text-center py-2 justify-content-evenly d-flex px-3 mb-2\\\">\\u00a0<\\/p>\\r\\n<div class=\\\"px-3\\\">\\r\\n<p><strong>\\\"Este software ha revolucionado nuestra manera de trabajar en el almac\\u00e9n. Antes era un caos encontrar productos, pero ahora todo est\\u00e1 organizado y accesible desde cualquier dispositivo.\\\"<\\/strong><\\/p>\\r\\n<p><em>- Carlos M., Gerente de Log\\u00edstica.<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-md-3 col-sm-6\\\">\\r\\n<div class=\\\"border fonsGris rounded-3 h-100\\\"><img class=\\\"img-fluid\\\" src=\\\"img\\/8_rese\\u00f1a.png\\\">\\r\\n<p class=\\\"text-center py-2 justify-content-evenly d-flex px-3 mb-2\\\">\\u00a0<\\/p>\\r\\n<div class=\\\"px-3\\\">\\r\\n<p><strong>\\\"Nos encanta la facilidad de uso y c\\u00f3mo ha mejorado la productividad del equipo. Ahora completamos las \\u00f3rdenes de env\\u00edo en la mitad del tiempo.\\\"<\\/strong><\\/p>\\r\\n<p><em>- Marta G., Supervisora de Almac\\u00e9n.<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-md-3 col-sm-6\\\">\\r\\n<div class=\\\"border fonsGris rounded-3 h-100\\\"><img class=\\\"img-fluid\\\" src=\\\"img\\/9_rese\\u00f1a.png\\\">\\r\\n<p class=\\\"text-center py-2 justify-content-evenly d-flex px-3 mb-2\\\">\\u00a0<\\/p>\\r\\n<div class=\\\"px-3\\\">\\r\\n<p><strong>\\\"La automatizaci\\u00f3n de procesos nos ha permitido reducir los errores en un 90%. No puedo imaginar volver a trabajar sin esta herramienta.\\\"<\\/strong><\\/p>\\r\\n<p><em>- Juan M., Adjunto log\\u00edstica.<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-md-3 col-sm-6\\\">\\r\\n<div class=\\\"border fonsGris rounded-3 h-100\\\"><img class=\\\"img-fluid\\\" src=\\\"img\\/10_rese\\u00f1a.png\\\">\\r\\n<p class=\\\"text-center py-2 justify-content-evenly d-flex px-3 mb-2\\\">\\u00a0<\\/p>\\r\\n<div class=\\\"px-3\\\">\\r\\n<p><strong>\\\"El sistema de reportes es incre\\u00edble. Nos da toda la informaci\\u00f3n que necesitamos para tomar decisiones m\\u00e1s r\\u00e1pidas y acertadas sobre nuestro stock.\\\"<\\/strong><\\/p>\\r\\n<p><em>- Ana S., Responsable de Inventario.<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--footer |\\\\\\\\|-->\\r\\n<div class=\\\"container-fluid pt-1 fonsBlau text-white\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-sm-6 col-lg-4 pt-2 d-flex flex-column align-items-center pe-0 ps-4\\\"><img class=\\\"fotoFooter ps-2 pt-2 pb-5\\\" src=\\\"img\\/logo_footer.png\\\">\\r\\n<div class=\\\"text-start pt-4 ps-5\\\">\\r\\n<p class=\\\"pt-3 d-flex align-items-center mb-2\\\">C\\/Duanes, 17 - Pego<\\/p>\\r\\n<p class=\\\"d-flex align-items-center mb-2\\\">+34 966 409 960<\\/p>\\r\\n<p class=\\\"d-flex align-items-center\\\">03007613@edu.gva.es<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-sm-6 col-lg-4 text-center pt-4\\\">\\r\\n<p class=\\\"pt-1 fw-bolder\\\">Legal<\\/p>\\r\\n<div class=\\\"pt-5 text-center pb-4\\\">\\r\\n<p class=\\\"pt-4 mb-0\\\"><a class=\\\"text-decoration-underline text-white\\\" href=\\\"#\\\">Aviso legal<\\/a><\\/p>\\r\\n<p class=\\\"mb-0\\\"><a class=\\\"text-decoration-underline text-white\\\" href=\\\"#\\\">Pol\\u00edtica de cookies<\\/a><\\/p>\\r\\n<p class=\\\"mb-0\\\"><a class=\\\"text-decoration-underline text-white\\\" href=\\\"#\\\">Pol\\u00edtica de privacidad<\\/a><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"text-center pt-5 mt-1\\\"><a class=\\\"text-decoration-none text-white\\\" href=\\\"https:\\/\\/x.com\\/Gag0val\\/status\\/1658048420920139776\\\"> <\\/a> <a class=\\\"text-decoration-none text-white px-4\\\" href=\\\"https:\\/\\/www.linkedin.com\\/company\\/aichatgpt\\/\\\"> <\\/a> <a class=\\\"text-decoration-none text-white\\\" href=\\\"https:\\/\\/youtu.be\\/xvFZjo5PgG0\\\"> <\\/a><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-md-12 col-lg-4 pt-lg-2 pe-lg-5 mt-4\\\">\\r\\n<div class=\\\"text-center pt-lg-1 pe-lg-5\\\">\\r\\n<h6 class=\\\"pe-lg-4 fw-bolder\\\">NEWSLETTERS<\\/h6>\\r\\n<p class=\\\"pe-lg-4 mb-lg-2\\\">* Nombre<\\/p>\\r\\n<input class=\\\"rounded-2 py-lg-1 me-lg-4 px-lg-2\\\" type=\\\"text\\\">\\r\\n<p class=\\\"pe-lg-4 pt-lg-3\\\">* Email<\\/p>\\r\\n<input class=\\\"rounded-2 py-lg-1 me-lg-4 px-lg-2 mb-lg-0\\\" type=\\\"text\\\">\\r\\n<p class=\\\"pt-lg-3 pe-lg-5 d-flex justify-content-center mb-lg-2\\\"><input class=\\\"pt-2\\\" type=\\\"checkbox\\\"><\\/p>\\r\\n<p class=\\\"text-center px-lg-5\\\">Acepto <a class=\\\"text-decoration-underline text-white\\\" href=\\\"#\\\">t\\u00e9rminos<\\/a> y <a class=\\\"text-decoration-underline text-white\\\" href=\\\"#\\\">condiciones<\\/a><\\/p>\\r\\n<button class=\\\"btn-taronja rounded-3 text-white mx-lg-5\\\">Suscr\\u00edbete<\\/button><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--copy |\\\\\\\\|-->\\r\\n<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-12\\\">\\r\\n<p class=\\\"text-end align-items-center m-0 py-3\\\">\\u00a9 Copyright 2024. Todos los derechos reservados<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--script-->\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-01-29 22:38:03\",\"created_by\":974,\"created_by_alias\":\"\",\"modified\":\"2025-01-29 22:54:27\",\"modified_by\":974,\"checked_out\":974,\"checked_out_time\":\"2025-01-29 22:53:34\",\"publish_up\":\"2025-01-29 22:38:03\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":4,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}', 0),
(11, 'com_content.article.3', '', '2025-01-29 22:55:19', 974, 14648, '830872653d1bc600521ae8c394302b2513f26331', '{\"id\":\"3\",\"asset_id\":102,\"title\":\"Stockflow\",\"alias\":\"stockflow\",\"introtext\":\"<!--menu |\\\\\\\\|-->\\r\\n<div class=\\\"container-fluid fonsGris\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-12 align-items-center\\\"><nav class=\\\"navbar navbar-expand-lg\\\">\\r\\n<div class=\\\"container-fluid py-1\\\"><button class=\\\"navbar-toggler\\\" type=\\\"button\\\" data-bs-toggle=\\\"collapse\\\" data-bs-target=\\\"#navbarSupportedContent\\\" aria-controls=\\\"navbarSupportedContent\\\" aria-expanded=\\\"false\\\" aria-label=\\\"Toggle navigation\\\">\\u00a0<\\/button>\\r\\n<div id=\\\"navbarSupportedContent\\\" class=\\\"collapse navbar-collapse\\\">\\r\\n<ul class=\\\"navbar-nav ms-lg-auto mb-2 mb-lg-0\\\">\\r\\n<li class=\\\"nav-item dropdown\\\"><a class=\\\"nav-link dropdown-toggle btn-header\\\" role=\\\"button\\\" href=\\\"#\\\" data-bs-toggle=\\\"dropdown\\\" aria-expanded=\\\"false\\\"> PRODUCTO <\\/a>\\r\\n<ul class=\\\"dropdown-menu bg-white\\\">\\r\\n<li><a class=\\\"dropdown-item btn-header\\\" href=\\\"#\\\">DESCARGA DE PRODUCTO<\\/a><\\/li>\\r\\n<li><a class=\\\"dropdown-item btn-header\\\" href=\\\"#\\\">PLANES Y PRECIOS<\\/a><\\/li>\\r\\n<\\/ul>\\r\\n<\\/li>\\r\\n<li class=\\\"nav-item\\\"><a class=\\\"nav-link btn-header\\\" href=\\\"#\\\">CASOS DE \\u00c9XITO<\\/a><\\/li>\\r\\n<li class=\\\"nav-item\\\"><a class=\\\"nav-link btn-header border-end border-black\\\" href=\\\"#\\\">RESE\\u00d1AS<\\/a><\\/li>\\r\\n<li class=\\\"nav-item\\\"><a class=\\\"nav-link btn-header\\\">QUI\\u00c9NES SOMOS<\\/a><\\/li>\\r\\n<li class=\\\"nav-item\\\"><a class=\\\"nav-link btn-header\\\">BLOG<\\/a><\\/li>\\r\\n<li class=\\\"nav-item\\\"><a class=\\\"nav-link btn-header\\\">CONTACTO<\\/a><\\/li>\\r\\n<li class=\\\"nav-item ps-2\\\"><button class=\\\"btn btn-taronja border-black text-white rounded-2\\\" type=\\\"submit\\\">DEMO<\\/button><\\/li>\\r\\n<\\/ul>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/nav><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--software de gesti\\u00f3n |\\\\\\\\|-->\\r\\n<div class=\\\"container-lg-fluid container-xl pt-5 justify-content-center\\\">\\r\\n<div class=\\\"row rounded-3\\\">\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<div class=\\\"col-lg-10\\\">\\r\\n<div class=\\\"container-fluid marginMenu\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-12 col-md-6 fonsGris rounded-start-4 p-4 pe-3\\\">\\r\\n<h1 class=\\\"w-75 titul fw-bolder ps-3 pt-1\\\">Software de Gesti\\u00f3n de Almacenes<\\/h1>\\r\\n<h3 class=\\\"fw-bolder ps-3 pt-1 m-0\\\">(SGA \\/ WMS)<\\/h3>\\r\\n<p class=\\\"lh-lg ps-3\\\">Nuestra aplicaci\\u00f3n est\\u00e1 dise\\u00f1ada para simplificar la recepci\\u00f3n, almacenamiento y env\\u00edo de productos, eliminando el caos y permitiendo un control total de tu inventario desde cualquier lugar. Aumenta la productividad de tu equipo con una soluci\\u00f3n moderna, intuitiva y accesible desde cualquier dispositivo.<\\/p>\\r\\n<div class=\\\"d-grid d-lg-block gap-2 mx-auto\\\"><button class=\\\"btn btn-taronja text-white border-black px-5\\\">Solicitar DEMO<\\/button> <button class=\\\"btn btn-blau text-white border-white py-2 px-4\\\">Precios y planes &gt;<\\/button><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-12 col-md-6 fonsGris rounded-end-3 pt-5 pe-1\\\"><img class=\\\"img-fluid\\\" src=\\\"img\\/1_inicio.png\\\" alt=\\\"Gesti\\u00f3n de Almacenes\\\"><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-1 p-0\\\">\\u00a0<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--caixes |\\\\\\\\|-->\\r\\n<div class=\\\"container-lg-fluid container-xl py-4\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<div class=\\\"col-lg-10 col-xs-12\\\">\\r\\n<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-lg-3 col-sm-6 p-3 text-center\\\">\\r\\n<div class=\\\"border fonsGris rounded-4 pt-4 h-100\\\">\\r\\n<h4 class=\\\"fs-6 fw-bolder m-0\\\">GESTI\\u00d3N INTERGRAL DE INVENTARIOS<\\/h4>\\r\\n<p class=\\\"m-0 pb-2\\\">-----------------------------------<\\/p>\\r\\n<p class=\\\"lh-sm px-3\\\">Controla cada detalle de tus productos: desde la recepci\\u00f3n hasta el env\\u00edo, con un seguimiento en tiempo real y alertas de stock bajo.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-3 col-sm-6 p-3 text-center\\\">\\r\\n<div class=\\\"border fonsGris rounded-4 pt-4 px-2 h-100\\\">\\r\\n<h4 class=\\\"fs-6 fw-bolder m-0\\\">INTERFAZ ADAPTABLE Y F\\u00c1CIL DE USAR<\\/h4>\\r\\n<p class=\\\"m-0 pb-2\\\">-----------------------------------<\\/p>\\r\\n<p class=\\\"lh-sm\\\">Accede a toda la informaci\\u00f3n que necesitas con una interfaz moderna, intuitiva y optimizada para dispositivos m\\u00f3viles y laptops.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-3 col-sm-6 p-3 text-center\\\">\\r\\n<div class=\\\"border fonsGris rounded-4 pt-4 px-2 h-100\\\">\\r\\n<h4 class=\\\"fs-6 fw-bolder m-0 px-2\\\">AUTOMATIZACI\\u00d3N DE PROCESOS<\\/h4>\\r\\n<p class=\\\"m-0 pb-2\\\">-----------------------------------<\\/p>\\r\\n<p class=\\\"lh-sm\\\">Simplifica las tareas diarias con flujos de trabajo automatizados que reducen el tiempo de administraci\\u00f3n y minimizan errores humanos.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-3 col-sm-6 p-3 text-center\\\">\\r\\n<div class=\\\"border fonsGris rounded-4 pt-4 px-2  h-100\\\">\\r\\n<h4 class=\\\"fs-6 fw-bolder m-0\\\">AN\\u00c1LISIS Y REPORTES AVANZADOS<\\/h4>\\r\\n<p class=\\\"m-0 pb-2\\\">-----------------------------------<\\/p>\\r\\n<p class=\\\"lh-sm\\\">Obt\\u00e9n informes detallados sobre la rotaci\\u00f3n de productos, el rendimiento del almac\\u00e9n y el cumplimiento de pedidos, facilitando la toma de decisiones estrat\\u00e9gicas.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--beneficios |\\\\\\\\|-->\\r\\n<div class=\\\"container-lg-fluid container-xl pt-2 pb-5\\\">\\r\\n<div class=\\\"row align-items-center\\\">\\r\\n<h1 class=\\\"text-center pb-5 fs-3 fw-bolder mb-0\\\">BENEFICIOS PARA TU EMPRESA<\\/h1>\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<div class=\\\"col-lg-10\\\">\\r\\n<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-lg-6 px-1\\\"><img class=\\\"img-fluid d-md-none d-lg-block\\\" src=\\\"img\\/2_beneficios.png\\\" alt=\\\"Beneficios\\\"><\\/div>\\r\\n<div class=\\\"col-lg-6 fonsGris rounded-4 pt-3\\\">\\r\\n<ul class=\\\"ps-5\\\">\\r\\n<li>\\r\\n<h6 class=\\\"fw-bolder\\\">Ahorro de Tiempo y Costos<\\/h6>\\r\\n<p>Al automatizar tareas y centralizar la gesti\\u00f3n, se reducen tiempos de b\\u00fasqueda de productos y se minimizan los errores costosos.<\\/p>\\r\\n<\\/li>\\r\\n<li>\\r\\n<h6 class=\\\"fw-bolder\\\">Mejora en la Productividad<\\/h6>\\r\\n<p class=\\\"mb-2\\\">Los operarios y encargados trabajan de manera m\\u00e1s organizada, optimizando rutas de picking y reduciendo tiempos de preparaci\\u00f3n de pedidos.<\\/p>\\r\\n<\\/li>\\r\\n<li class=\\\"pt-1\\\">\\r\\n<h6 class=\\\"fw-bolder\\\">Mayor Control y Visibilidad<\\/h6>\\r\\n<p class=\\\"mb-2\\\">Monitorea el estado de tu inventario en tiempo real y realiza un seguimiento preciso de todos los movimientos dentro del almac\\u00e9n.<\\/p>\\r\\n<\\/li>\\r\\n<li class=\\\"pt-1\\\">\\r\\n<h6 class=\\\"fw-bolder\\\">Escalabilidad y Adaptaci\\u00f3n<\\/h6>\\r\\n<p>Crece con tu negocio: el sistema se adapta f\\u00e1cilmente a nuevas ubicaciones y almacenes, manteniendo siempre el control centralizado.<\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--casos \\u00e9xito |\\\\\\\\|-->\\r\\n<div class=\\\"container-lg-fluid container-xl\\\">\\r\\n<h1 class=\\\"text-center pb-5 fs-3 fw-bolder\\\">CASOS DE \\u00c9XITO DE NUESTROS CLIENTES<\\/h1>\\r\\n<div class=\\\"row align-items-center\\\">\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<div class=\\\"col-lg-10\\\">\\r\\n<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-sm-6 pt-lg-0 pt-sm-4 col-12 ps-lg-0\\\"><img class=\\\"img-fluid\\\" src=\\\"img\\/3_casoDeExito.png\\\" alt=\\\"imagen-caso-Exito-1\\\"><\\/div>\\r\\n<div class=\\\"col-sm-6 pt-lg-0 pt-4 col-12 pe-lg-0\\\"><img class=\\\"img-fluid w-100\\\" src=\\\"img\\/4_casoDeExito.png\\\" alt=\\\"imagen-caso-Exito-2\\\"><\\/div>\\r\\n<div class=\\\"col-sm-6 pt-4 col-12 ps-lg-0\\\"><img class=\\\"img-fluid w-100\\\" src=\\\"img\\/5_casoDeExito.png\\\" alt=\\\"imagen-caso-Exito-3\\\"><\\/div>\\r\\n<div class=\\\"col-sm-6 pt-4 col-12 pe-lg-0\\\"><img class=\\\"img-fluid w-100\\\" src=\\\"img\\/6_casoDeExito.png\\\" alt=\\\"imagen-caso-Exito-4\\\"><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--rese\\u00f1as |\\\\\\\\|-->\\r\\n<div class=\\\"container-lg-fluid container-xl pt-5 pb-5\\\">\\r\\n<h1 class=\\\"text-center fs-3 fw-bolder pb-4\\\">RESE\\u00d1AS<\\/h1>\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<div class=\\\"col-lg-10 col-xs-12 pt-4 px-0\\\">\\r\\n<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-md-3 col-sm-6\\\">\\r\\n<div class=\\\"border fonsGris rounded-3 h-100 pb-3\\\"><img class=\\\"img-fluid\\\" src=\\\"img\\/7_rese\\u00f1a.png\\\">\\r\\n<p class=\\\"text-center py-2 justify-content-evenly d-flex px-3 mb-2\\\">\\u00a0<\\/p>\\r\\n<div class=\\\"px-3\\\">\\r\\n<p><strong>\\\"Este software ha revolucionado nuestra manera de trabajar en el almac\\u00e9n. Antes era un caos encontrar productos, pero ahora todo est\\u00e1 organizado y accesible desde cualquier dispositivo.\\\"<\\/strong><\\/p>\\r\\n<p><em>- Carlos M., Gerente de Log\\u00edstica.<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-md-3 col-sm-6\\\">\\r\\n<div class=\\\"border fonsGris rounded-3 h-100\\\"><img class=\\\"img-fluid\\\" src=\\\"img\\/8_rese\\u00f1a.png\\\">\\r\\n<p class=\\\"text-center py-2 justify-content-evenly d-flex px-3 mb-2\\\">\\u00a0<\\/p>\\r\\n<div class=\\\"px-3\\\">\\r\\n<p><strong>\\\"Nos encanta la facilidad de uso y c\\u00f3mo ha mejorado la productividad del equipo. Ahora completamos las \\u00f3rdenes de env\\u00edo en la mitad del tiempo.\\\"<\\/strong><\\/p>\\r\\n<p><em>- Marta G., Supervisora de Almac\\u00e9n.<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-md-3 col-sm-6\\\">\\r\\n<div class=\\\"border fonsGris rounded-3 h-100\\\"><img class=\\\"img-fluid\\\" src=\\\"img\\/9_rese\\u00f1a.png\\\">\\r\\n<p class=\\\"text-center py-2 justify-content-evenly d-flex px-3 mb-2\\\">\\u00a0<\\/p>\\r\\n<div class=\\\"px-3\\\">\\r\\n<p><strong>\\\"La automatizaci\\u00f3n de procesos nos ha permitido reducir los errores en un 90%. No puedo imaginar volver a trabajar sin esta herramienta.\\\"<\\/strong><\\/p>\\r\\n<p><em>- Juan M., Adjunto log\\u00edstica.<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-md-3 col-sm-6\\\">\\r\\n<div class=\\\"border fonsGris rounded-3 h-100\\\"><img class=\\\"img-fluid\\\" src=\\\"img\\/10_rese\\u00f1a.png\\\">\\r\\n<p class=\\\"text-center py-2 justify-content-evenly d-flex px-3 mb-2\\\">\\u00a0<\\/p>\\r\\n<div class=\\\"px-3\\\">\\r\\n<p><strong>\\\"El sistema de reportes es incre\\u00edble. Nos da toda la informaci\\u00f3n que necesitamos para tomar decisiones m\\u00e1s r\\u00e1pidas y acertadas sobre nuestro stock.\\\"<\\/strong><\\/p>\\r\\n<p><em>- Ana S., Responsable de Inventario.<\\/em><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-lg-1\\\">\\u00a0<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--footer |\\\\\\\\|-->\\r\\n<div class=\\\"container-fluid pt-1 fonsBlau text-white\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-sm-6 col-lg-4 pt-2 d-flex flex-column align-items-center pe-0 ps-4\\\"><img class=\\\"fotoFooter ps-2 pt-2 pb-5\\\" src=\\\"img\\/logo_footer.png\\\">\\r\\n<div class=\\\"text-start pt-4 ps-5\\\">\\r\\n<p class=\\\"pt-3 d-flex align-items-center mb-2\\\">C\\/Duanes, 17 - Pego<\\/p>\\r\\n<p class=\\\"d-flex align-items-center mb-2\\\">+34 966 409 960<\\/p>\\r\\n<p class=\\\"d-flex align-items-center\\\">03007613@edu.gva.es<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-sm-6 col-lg-4 text-center pt-4\\\">\\r\\n<p class=\\\"pt-1 fw-bolder\\\">Legal<\\/p>\\r\\n<div class=\\\"pt-5 text-center pb-4\\\">\\r\\n<p class=\\\"pt-4 mb-0\\\"><a class=\\\"text-decoration-underline text-white\\\" href=\\\"#\\\">Aviso legal<\\/a><\\/p>\\r\\n<p class=\\\"mb-0\\\"><a class=\\\"text-decoration-underline text-white\\\" href=\\\"#\\\">Pol\\u00edtica de cookies<\\/a><\\/p>\\r\\n<p class=\\\"mb-0\\\"><a class=\\\"text-decoration-underline text-white\\\" href=\\\"#\\\">Pol\\u00edtica de privacidad<\\/a><\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"text-center pt-5 mt-1\\\"><a class=\\\"text-decoration-none text-white\\\" href=\\\"https:\\/\\/x.com\\/Gag0val\\/status\\/1658048420920139776\\\"> <\\/a> <a class=\\\"text-decoration-none text-white px-4\\\" href=\\\"https:\\/\\/www.linkedin.com\\/company\\/aichatgpt\\/\\\"> <\\/a> <a class=\\\"text-decoration-none text-white\\\" href=\\\"https:\\/\\/youtu.be\\/xvFZjo5PgG0\\\"> <\\/a><\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"col-md-12 col-lg-4 pt-lg-2 pe-lg-5 mt-4\\\">\\r\\n<div class=\\\"text-center pt-lg-1 pe-lg-5\\\">\\r\\n<h6 class=\\\"pe-lg-4 fw-bolder\\\">NEWSLETTERS<\\/h6>\\r\\n<p class=\\\"pe-lg-4 mb-lg-2\\\">* Nombre<\\/p>\\r\\n<input class=\\\"rounded-2 py-lg-1 me-lg-4 px-lg-2\\\" type=\\\"text\\\">\\r\\n<p class=\\\"pe-lg-4 pt-lg-3\\\">* Email<\\/p>\\r\\n<input class=\\\"rounded-2 py-lg-1 me-lg-4 px-lg-2 mb-lg-0\\\" type=\\\"text\\\">\\r\\n<p class=\\\"pt-lg-3 pe-lg-5 d-flex justify-content-center mb-lg-2\\\"><input class=\\\"pt-2\\\" type=\\\"checkbox\\\"><\\/p>\\r\\n<p class=\\\"text-center px-lg-5\\\">Acepto <a class=\\\"text-decoration-underline text-white\\\" href=\\\"#\\\">t\\u00e9rminos<\\/a> y <a class=\\\"text-decoration-underline text-white\\\" href=\\\"#\\\">condiciones<\\/a><\\/p>\\r\\n<button class=\\\"btn-taronja rounded-3 text-white mx-lg-5\\\">Suscr\\u00edbete<\\/button><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--copy |\\\\\\\\|-->\\r\\n<div class=\\\"container-fluid\\\">\\r\\n<div class=\\\"row\\\">\\r\\n<div class=\\\"col-12\\\">\\r\\n<p class=\\\"text-end align-items-center m-0 py-3\\\">\\u00a9 Copyright 2024. Todos los derechos reservados<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<!--script-->\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2025-01-29 22:38:03\",\"created_by\":974,\"created_by_alias\":\"\",\"modified\":\"2025-01-29 22:55:19\",\"modified_by\":974,\"checked_out\":974,\"checked_out_time\":\"2025-01-29 22:54:45\",\"publish_up\":\"2025-01-29 22:38:03\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":5,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_languages`
--

CREATE TABLE `oh67l_languages` (
  `lang_id` int UNSIGNED NOT NULL,
  `asset_id` int UNSIGNED NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int NOT NULL DEFAULT '0',
  `access` int UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_languages`
--

INSERT INTO `oh67l_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_mail_templates`
--

CREATE TABLE `oh67l_mail_templates` (
  `template_id` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `htmlbody` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_mail_templates`
--

INSERT INTO `oh67l_mail_templates` (`template_id`, `extension`, `language`, `subject`, `body`, `htmlbody`, `attachments`, `params`) VALUES
('com_actionlogs.notification', 'com_actionlogs', '', 'COM_ACTIONLOGS_EMAIL_SUBJECT', 'COM_ACTIONLOGS_EMAIL_BODY', 'COM_ACTIONLOGS_EMAIL_HTMLBODY', '', '{\"tags\":[\"message\",\"date\",\"extension\",\"username\"]}'),
('com_config.test_mail', 'com_config', '', 'COM_CONFIG_SENDMAIL_SUBJECT', 'COM_CONFIG_SENDMAIL_BODY', '', '', '{\"tags\":[\"sitename\",\"method\"]}'),
('com_contact.mail', 'com_contact', '', 'COM_CONTACT_ENQUIRY_SUBJECT', 'COM_CONTACT_ENQUIRY_TEXT', '', '', '{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\"]}'),
('com_contact.mail.copy', 'com_contact', '', 'COM_CONTACT_COPYSUBJECT_OF', 'COM_CONTACT_COPYTEXT_OF', '', '', '{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\",\"contactname\"]}'),
('com_messages.new_message', 'com_messages', '', 'COM_MESSAGES_NEW_MESSAGE', 'COM_MESSAGES_NEW_MESSAGE_BODY', '', '', '{\"tags\":[\"subject\",\"message\",\"fromname\",\"sitename\",\"siteurl\",\"fromemail\",\"toname\",\"toemail\"]}'),
('com_privacy.notification.admin.export', 'com_privacy', '', 'COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_EXPORT_REQUEST', 'COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_EXPORT_REQUEST', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.admin.remove', 'com_privacy', '', 'COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_REMOVE_REQUEST', 'COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_REMOVE_REQUEST', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.export', 'com_privacy', '', 'COM_PRIVACY_EMAIL_REQUEST_SUBJECT_EXPORT_REQUEST', 'COM_PRIVACY_EMAIL_REQUEST_BODY_EXPORT_REQUEST', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.remove', 'com_privacy', '', 'COM_PRIVACY_EMAIL_REQUEST_SUBJECT_REMOVE_REQUEST', 'COM_PRIVACY_EMAIL_REQUEST_BODY_REMOVE_REQUEST', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.userdataexport', 'com_privacy', '', 'COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_SUBJECT', 'COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_BODY', '', '', '{\"tags\":[\"sitename\",\"url\"]}'),
('com_users.massmail.mail', 'com_users', '', 'COM_USERS_MASSMAIL_MAIL_SUBJECT', 'COM_USERS_MASSMAIL_MAIL_BODY', '', '', '{\"tags\":[\"subject\",\"body\",\"subjectprefix\",\"bodysuffix\"]}'),
('com_users.password_reset', 'com_users', '', 'COM_USERS_EMAIL_PASSWORD_RESET_SUBJECT', 'COM_USERS_EMAIL_PASSWORD_RESET_BODY', '', '', '{\"tags\":[\"name\",\"email\",\"sitename\",\"link_text\",\"link_html\",\"token\"]}'),
('com_users.registration.admin.new_notification', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_NOTIFICATION_TO_ADMIN_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.admin.verification_request', 'com_users', '', 'COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_SUBJECT', 'COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"email\",\"username\",\"activate\"]}'),
('com_users.registration.user.admin_activated', 'com_users', '', 'COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_SUBJECT', 'COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.admin_activation', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY_NOPW', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.admin_activation_w_pw', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.registration.user.registration_mail', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_BODY_NOPW', '', '', '{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.registration_mail_w_pw', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.registration.user.self_activation', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY_NOPW', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.self_activation_w_pw', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.reminder', 'com_users', '', 'COM_USERS_EMAIL_USERNAME_REMINDER_SUBJECT', 'COM_USERS_EMAIL_USERNAME_REMINDER_BODY', '', '', '{\"tags\":[\"name\",\"username\",\"sitename\",\"email\",\"link_text\",\"link_html\"]}'),
('plg_multifactorauth_email.mail', 'plg_multifactorauth_email', '', 'PLG_MULTIFACTORAUTH_EMAIL_EMAIL_SUBJECT', 'PLG_MULTIFACTORAUTH_EMAIL_EMAIL_BODY', '', '', '{\"tags\":[\"code\",\"sitename\",\"siteurl\",\"username\",\"email\",\"fullname\"]}'),
('plg_system_tasknotification.failure_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_BODY', '', '', '{\"tags\": [\"task_id\", \"task_title\", \"exit_code\", \"exec_data_time\", \"task_output\"]}'),
('plg_system_tasknotification.fatal_recovery_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_BODY', '', '', '{\"tags\": [\"task_id\", \"task_title\"]}'),
('plg_system_tasknotification.orphan_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_BODY', '', '', '{\"tags\": [\"task_id\", \"task_title\"]}'),
('plg_system_tasknotification.success_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_BODY', '', '', '{\"tags\":[\"task_id\", \"task_title\", \"exec_data_time\", \"task_output\"]}'),
('plg_task_privacyconsent.request.reminder', 'plg_task_privacyconsent', '', 'PLG_TASK_PRIVACYCONSENT_EMAIL_REMIND_SUBJECT', 'PLG_TASK_PRIVACYCONSENT_EMAIL_REMIND_BODY', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('plg_task_updatenotification.mail', 'plg_task_updatenotification', '', 'PLG_TASK_UPDATENOTIFICATION_EMAIL_SUBJECT', 'PLG_TASK_UPDATENOTIFICATION_EMAIL_BODY', '', '', '{\"tags\":[\"newversion\",\"curversion\",\"sitename\",\"url\",\"link\",\"releasenews\"]}'),
('plg_user_joomla.mail', 'plg_user_joomla', '', 'PLG_USER_JOOMLA_NEW_USER_EMAIL_SUBJECT', 'PLG_USER_JOOMLA_NEW_USER_EMAIL_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"url\",\"username\",\"password\",\"email\"]}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_menu`
--

CREATE TABLE `oh67l_menu` (
  `id` int NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int UNSIGNED DEFAULT NULL COMMENT 'FK to #__users.id',
  `checked_out_time` datetime DEFAULT NULL COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint NOT NULL DEFAULT '0',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_menu`
--

INSERT INTO `oh67l_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`, `publish_up`, `publish_down`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, NULL, NULL, 0, 0, '', 0, '', 0, 45, 0, '*', 0, NULL, NULL),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 3, NULL, NULL, 0, 0, 'class:bookmark', 0, '', 1, 10, 0, '*', 1, NULL, NULL),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners&view=banners', 'component', 1, 2, 2, 3, NULL, NULL, 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1, NULL, NULL),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&view=categories&extension=com_banners', 'component', 1, 2, 2, 5, NULL, NULL, 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1, NULL, NULL),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 3, NULL, NULL, 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1, NULL, NULL),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 3, NULL, NULL, 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1, NULL, NULL),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 7, NULL, NULL, 0, 0, 'class:address-book', 0, '', 15, 24, 0, '*', 1, NULL, NULL),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact&view=contacts', 'component', 1, 7, 2, 7, NULL, NULL, 0, 0, 'class:contact', 0, '', 16, 17, 0, '*', 1, NULL, NULL),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&view=categories&extension=com_contact', 'component', 1, 7, 2, 5, NULL, NULL, 0, 0, 'class:contact-cat', 0, '', 18, 19, 0, '*', 1, NULL, NULL),
(10, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 16, NULL, NULL, 0, 0, 'class:rss', 0, '', 27, 32, 0, '*', 1, NULL, NULL),
(11, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds&view=newsfeeds', 'component', 1, 10, 2, 16, NULL, NULL, 0, 0, 'class:newsfeeds', 0, '', 28, 29, 0, '*', 1, NULL, NULL),
(12, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&view=categories&extension=com_newsfeeds', 'component', 1, 10, 2, 5, NULL, NULL, 0, 0, 'class:newsfeeds-cat', 0, '', 30, 31, 0, '*', 1, NULL, NULL),
(13, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 23, NULL, NULL, 0, 0, 'class:search-plus', 0, '', 33, 42, 0, '*', 1, NULL, NULL),
(14, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags&view=tags', 'component', 1, 1, 1, 25, NULL, NULL, 0, 1, 'class:tags', 0, '', 43, 44, 0, '', 1, NULL, NULL),
(15, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations&view=associations', 'component', 1, 1, 1, 30, NULL, NULL, 0, 0, 'class:language', 0, '', 25, 26, 0, '*', 1, NULL, NULL),
(16, 'main', 'mod_menu_fields', 'Contact Custom Fields', '', 'Contacts/Contact Custom Fields', 'index.php?option=com_fields&context=com_contact.contact', 'component', 1, 7, 2, 29, NULL, NULL, 0, 0, 'class:messages-add', 0, '', 20, 21, 0, '*', 1, NULL, NULL),
(17, 'main', 'mod_menu_fields_group', 'Contact Custom Fields Group', '', 'Contacts/Contact Custom Fields Group', 'index.php?option=com_fields&view=groups&context=com_contact.contact', 'component', 1, 7, 2, 29, NULL, NULL, 0, 0, 'class:messages-add', 0, '', 22, 23, 0, '*', 1, NULL, NULL),
(18, 'main', 'com_finder_index', 'Smart-Search-Index', '', 'Smart Search/Smart-Search-Index', 'index.php?option=com_finder&view=index', 'component', 1, 13, 2, 23, NULL, NULL, 0, 0, 'class:finder', 0, '', 34, 35, 0, '*', 1, NULL, NULL),
(19, 'main', 'com_finder_maps', 'Smart-Search-Maps', '', 'Smart Search/Smart-Search-Maps', 'index.php?option=com_finder&view=maps', 'component', 1, 13, 2, 23, NULL, NULL, 0, 0, 'class:finder-maps', 0, '', 36, 37, 0, '*', 1, NULL, NULL),
(20, 'main', 'com_finder_filters', 'Smart-Search-Filters', '', 'Smart Search/Smart-Search-Filters', 'index.php?option=com_finder&view=filters', 'component', 1, 13, 2, 23, NULL, NULL, 0, 0, 'class:finder-filters', 0, '', 38, 39, 0, '*', 1, NULL, NULL),
(21, 'main', 'com_finder_searches', 'Smart-Search-Searches', '', 'Smart Search/Smart-Search-Searches', 'index.php?option=com_finder&view=searches', 'component', 1, 13, 2, 23, NULL, NULL, 0, 0, 'class:finder-searches', 0, '', 40, 41, 0, '*', 1, NULL, NULL),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', -2, 1, 1, 19, NULL, NULL, 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"num_leading_articles\":1,\"blog_class_leading\":\"\",\"num_intro_articles\":3,\"blog_class\":\"\",\"num_columns\":\"\",\"multi_column_order\":\"\",\"num_links\":0,\"link_intro_image\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}', 13, 14, 0, '*', 0, NULL, NULL),
(102, 'mainmenu', 'Stockflow', 'stockflow', '', 'stockflow', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 19, NULL, NULL, 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}', 11, 12, 1, '*', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_menu_types`
--

CREATE TABLE `oh67l_menu_types` (
  `id` int UNSIGNED NOT NULL,
  `asset_id` int UNSIGNED NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_menu_types`
--

INSERT INTO `oh67l_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`, `ordering`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_messages`
--

CREATE TABLE `oh67l_messages` (
  `message_id` int UNSIGNED NOT NULL,
  `user_id_from` int UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `priority` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_messages_cfg`
--

CREATE TABLE `oh67l_messages_cfg` (
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_modules`
--

CREATE TABLE `oh67l_modules` (
  `id` int NOT NULL,
  `asset_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci,
  `ordering` int NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_modules`
--

INSERT INTO `oh67l_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Stockflow', '', '', 1, 'sidebar-right', NULL, NULL, NULL, NULL, 1, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":1,\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', NULL, NULL, NULL, NULL, 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 6, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', NULL, NULL, NULL, NULL, 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Notifications', '', '', 3, 'icon', NULL, NULL, NULL, NULL, 1, 'mod_quickicon', 3, 1, '{\"context\":\"update_quickicon\",\"header_icon\":\"icon-sync\",\"show_jupdate\":\"1\",\"show_eupdate\":\"1\",\"show_oupdate\":\"1\",\"show_privacy\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', NULL, NULL, NULL, NULL, 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', NULL, NULL, NULL, NULL, 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'sidebar-right', NULL, NULL, NULL, NULL, 1, 'mod_login', 1, 1, '{\"greeting\":\"1\",\"name\":\"0\"}', 0, '*'),
(17, 51, 'Stockflow', '', '', 1, 'breadcrumbs', NULL, NULL, '2025-01-29 22:33:39', NULL, -2, 'mod_breadcrumbs', 1, 1, '{\"showHere\":1,\"showHome\":1,\"homeText\":\"\",\"showLast\":1,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":0,\"cache_time\":0,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 2, 'status', NULL, NULL, NULL, NULL, 1, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'status', NULL, NULL, NULL, NULL, 1, 'mod_version', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(87, 55, 'Sample Data', '', '', 1, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_sampledata', 6, 1, '{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(88, 67, 'Latest Actions', '', '', 3, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_latestactions', 6, 1, '{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(89, 68, 'Privacy Dashboard', '', '', 5, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_privacy_dashboard', 6, 1, '{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(90, 89, 'Login Support', '', '', 1, 'sidebar', NULL, NULL, NULL, NULL, 1, 'mod_loginsupport', 1, 1, '{\"forum_url\":\"https://forum.joomla.org/\",\"documentation_url\":\"https://docs.joomla.org/\",\"news_url\":\"https://www.joomla.org/announcements.html\",\"automatic_title\":1,\"prepare_content\":1,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(91, 72, 'System Dashboard', '', '', 1, 'cpanel-system', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"system\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(92, 73, 'Content Dashboard', '', '', 1, 'cpanel-content', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"content\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(93, 74, 'Menus Dashboard', '', '', 1, 'cpanel-menus', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"menus\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(94, 75, 'Components Dashboard', '', '', 1, 'cpanel-components', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"components\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(95, 76, 'Users Dashboard', '', '', 1, 'cpanel-users', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"users\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(96, 86, 'Popular Articles', '', '', 3, 'cpanel-content', NULL, NULL, NULL, NULL, 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(97, 87, 'Recently Added Articles', '', '', 4, 'cpanel-content', NULL, NULL, NULL, NULL, 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(98, 88, 'Logged-in Users', '', '', 2, 'cpanel-users', NULL, NULL, NULL, NULL, 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(99, 77, 'Frontend Link', '', '', 5, 'status', NULL, NULL, NULL, NULL, 1, 'mod_frontend', 1, 1, '', 1, '*'),
(100, 78, 'Messages', '', '', 4, 'status', NULL, NULL, NULL, NULL, 1, 'mod_messages', 3, 1, '', 1, '*'),
(101, 79, 'Post Install Messages', '', '', 3, 'status', NULL, NULL, NULL, NULL, 1, 'mod_post_installation_messages', 3, 1, '', 1, '*'),
(102, 80, 'User Status', '', '', 6, 'status', NULL, NULL, NULL, NULL, 1, 'mod_user', 3, 1, '', 1, '*'),
(103, 70, 'Site', '', '', 1, 'icon', NULL, NULL, NULL, NULL, 1, 'mod_quickicon', 1, 1, '{\"context\":\"site_quickicon\",\"header_icon\":\"icon-desktop\",\"show_users\":\"1\",\"show_articles\":\"1\",\"show_categories\":\"1\",\"show_media\":\"1\",\"show_menuItems\":\"1\",\"show_modules\":\"1\",\"show_plugins\":\"1\",\"show_templates\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(104, 71, 'System', '', '', 2, 'icon', NULL, NULL, NULL, NULL, 1, 'mod_quickicon', 1, 1, '{\"context\":\"system_quickicon\",\"header_icon\":\"icon-wrench\",\"show_global\":\"1\",\"show_checkin\":\"1\",\"show_cache\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(105, 82, '3rd Party', '', '', 4, 'icon', NULL, NULL, NULL, NULL, 1, 'mod_quickicon', 1, 1, '{\"context\":\"mod_quickicon\",\"header_icon\":\"icon-boxes\",\"load_plugins\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(106, 83, 'Help Dashboard', '', '', 1, 'cpanel-help', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"help\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"style\":\"System-none\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(107, 84, 'Privacy Requests', '', '', 1, 'cpanel-privacy', NULL, NULL, NULL, NULL, 1, 'mod_privacy_dashboard', 1, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(108, 85, 'Privacy Status', '', '', 1, 'cpanel-privacy', NULL, NULL, NULL, NULL, 1, 'mod_privacy_status', 1, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(109, 96, 'Guided Tours', '', '', 1, 'status', NULL, NULL, NULL, NULL, 1, 'mod_guidedtours', 1, 1, '', 1, '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_modules_menu`
--

CREATE TABLE `oh67l_modules_menu` (
  `moduleid` int NOT NULL DEFAULT '0',
  `menuid` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_modules_menu`
--

INSERT INTO `oh67l_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 0),
(102, 0),
(103, 0),
(104, 0),
(105, 0),
(106, 0),
(107, 0),
(108, 0),
(109, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_newsfeeds`
--

CREATE TABLE `oh67l_newsfeeds` (
  `catid` int NOT NULL DEFAULT '0',
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint NOT NULL DEFAULT '0',
  `numarticles` int UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT '0',
  `rtl` tinyint NOT NULL DEFAULT '0',
  `access` int UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int UNSIGNED NOT NULL DEFAULT '1',
  `hits` int UNSIGNED NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_overrider`
--

CREATE TABLE `oh67l_overrider` (
  `id` int NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_postinstall_messages`
--

CREATE TABLE `oh67l_postinstall_messages` (
  `postinstall_message_id` bigint UNSIGNED NOT NULL,
  `extension_id` bigint NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_postinstall_messages`
--

INSERT INTO `oh67l_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 240, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(2, 240, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(3, 240, 'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_TITLE', 'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_BODY', 'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_ACTION', 'plg_system_httpheaders', 1, 'action', 'site://plugins/system/httpheaders/postinstall/introduction.php', 'httpheaders_postinstall_action', 'site://plugins/system/httpheaders/postinstall/introduction.php', 'httpheaders_postinstall_condition', '4.0.0', 1),
(4, 240, 'COM_USERS_POSTINSTALL_MULTIFACTORAUTH_TITLE', 'COM_USERS_POSTINSTALL_MULTIFACTORAUTH_BODY', 'COM_USERS_POSTINSTALL_MULTIFACTORAUTH_ACTION', 'com_users', 1, 'action', 'admin://components/com_users/postinstall/multifactorauth.php', 'com_users_postinstall_mfa_action', 'admin://components/com_users/postinstall/multifactorauth.php', 'com_users_postinstall_mfa_condition', '4.2.0', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_privacy_consents`
--

CREATE TABLE `oh67l_privacy_consents` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `state` int NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remind` tinyint NOT NULL DEFAULT '0',
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_privacy_requests`
--

CREATE TABLE `oh67l_privacy_requests` (
  `id` int UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `request_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_redirect_links`
--

CREATE TABLE `oh67l_redirect_links` (
  `id` int UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `header` smallint NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_scheduler_tasks`
--

CREATE TABLE `oh67l_scheduler_tasks` (
  `id` int UNSIGNED NOT NULL,
  `asset_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'unique identifier for job defined by plugin',
  `execution_rules` text COLLATE utf8mb4_unicode_ci COMMENT 'Execution Rules, Unprocessed',
  `cron_rules` text COLLATE utf8mb4_unicode_ci COMMENT 'Processed execution rules, crontab-like JSON form',
  `state` tinyint NOT NULL DEFAULT '0',
  `last_exit_code` int NOT NULL DEFAULT '0' COMMENT 'Exit code when job was last run',
  `last_execution` datetime DEFAULT NULL COMMENT 'Timestamp of last run',
  `next_execution` datetime DEFAULT NULL COMMENT 'Timestamp of next (planned) run, referred for execution on trigger',
  `times_executed` int DEFAULT '0' COMMENT 'Count of successful triggers',
  `times_failed` int DEFAULT '0' COMMENT 'Count of failures',
  `locked` datetime DEFAULT NULL,
  `priority` smallint NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0' COMMENT 'Configurable list ordering',
  `cli_exclusive` smallint NOT NULL DEFAULT '0' COMMENT 'If 1, the task is only accessible via CLI',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created` datetime NOT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_scheduler_tasks`
--

INSERT INTO `oh67l_scheduler_tasks` (`id`, `asset_id`, `title`, `type`, `execution_rules`, `cron_rules`, `state`, `last_exit_code`, `last_execution`, `next_execution`, `times_executed`, `times_failed`, `locked`, `priority`, `ordering`, `cli_exclusive`, `params`, `note`, `created`, `created_by`, `checked_out`, `checked_out_time`) VALUES
(1, 97, 'Rotate Logs', 'rotation.logs', '{\"rule-type\":\"interval-days\",\"interval-days\":\"30\",\"exec-day\":\"28\",\"exec-time\":\"19:00\"}', '{\"type\":\"interval\",\"exp\":\"P30D\"}', 1, 0, NULL, '2025-02-27 19:00:00', 0, 0, NULL, 0, 0, 0, '{\"individual_log\":false,\"log_file\":\"\",\"notifications\":{\"success_mail\":\"0\",\"failure_mail\":\"1\",\"fatal_failure_mail\":\"1\",\"orphan_mail\":\"1\"},\"logstokeep\":1}', NULL, '2025-01-28 19:24:03', 974, NULL, NULL),
(2, 98, 'Session GC', 'session.gc', '{\"rule-type\":\"interval-hours\",\"interval-hours\":\"24\",\"exec-day\":\"01\",\"exec-time\":\"19:00\"}', '{\"type\":\"interval\",\"exp\":\"PT24H\"}', 1, 0, '2025-01-29 22:24:37', '2025-01-30 22:24:37', 1, 0, NULL, 0, 0, 0, '{\"individual_log\":false,\"log_file\":\"\",\"notifications\":{\"success_mail\":\"0\",\"failure_mail\":\"1\",\"fatal_failure_mail\":\"1\",\"orphan_mail\":\"1\"},\"enable_session_gc\":1,\"enable_session_metadata_gc\":1}', NULL, '2025-01-28 19:24:03', 974, NULL, NULL),
(3, 99, 'Update Notification', 'update.notification', '{\"rule-type\":\"interval-hours\",\"interval-hours\":\"24\",\"exec-day\":\"01\",\"exec-time\":\"19:00\"}', '{\"type\":\"interval\",\"exp\":\"PT24H\"}', 1, 0, '2025-01-29 22:28:02', '2025-01-30 22:28:03', 1, 0, NULL, 0, 0, 0, '{\"individual_log\":false,\"log_file\":\"\",\"notifications\":{\"success_mail\":\"0\",\"failure_mail\":\"1\",\"fatal_failure_mail\":\"1\",\"orphan_mail\":\"1\"},\"email\":\"\",\"language_override\":\"\"}', NULL, '2025-01-28 19:24:03', 974, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_schemaorg`
--

CREATE TABLE `oh67l_schemaorg` (
  `id` int UNSIGNED NOT NULL,
  `itemId` int UNSIGNED DEFAULT NULL,
  `context` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schemaType` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schema` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_schemas`
--

CREATE TABLE `oh67l_schemas` (
  `extension_id` int NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_schemas`
--

INSERT INTO `oh67l_schemas` (`extension_id`, `version_id`) VALUES
(240, '5.2.2-2024-09-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_session`
--

CREATE TABLE `oh67l_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint UNSIGNED DEFAULT NULL,
  `guest` tinyint UNSIGNED DEFAULT '1',
  `time` int NOT NULL DEFAULT '0',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_session`
--

INSERT INTO `oh67l_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
(0x3733373462343761316166363532313035626163376164396263323064343636, 1, 0, 1738192306, 'joomla|s:3752:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjU6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjE1ODtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE3MzgxODk3MDk7czo0OiJsYXN0IjtpOjE3MzgxOTIzMDY7czozOiJub3ciO2k6MTczODE5MjMwNjt9czo1OiJ0b2tlbiI7czozMjoiNzgxMTZmOGJhMmM3MmU3Njk1OTQwYjE5ZWU2NTM5ZTQiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Nzp7czoxMToiY29tX2NvbnRlbnQiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo3OiJhcnRpY2xlIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImRhdGEiO047czoyOiJpZCI7YToxOntpOjA7aToyO319fX1zOjE0OiJjb21fY2F0ZWdvcmllcyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjg6ImNhdGVnb3J5IjtPOjg6InN0ZENsYXNzIjozOntzOjI6ImlkIjthOjA6e31zOjQ6ImRhdGEiO047czo3OiJjb250ZW50IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImRhdGEiO047fX19czoxMDoiY2F0ZWdvcmllcyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo3OiJjb250ZW50IjtPOjg6InN0ZENsYXNzIjoyOntzOjY6ImZpbHRlciI7Tzo4OiJzdGRDbGFzcyI6MTp7czo5OiJleHRlbnNpb24iO3M6MTE6ImNvbV9jb250ZW50Ijt9czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7aToyMDtzOjg6Im9yZGVyaW5nIjtzOjU6ImEubGZ0IjtzOjU6InN0YXJ0IjtkOjA7fX19fXM6OToiY29tX21lbnVzIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoibWVudSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoyOiJpZCI7YToxOntpOjA7aToxO31zOjQ6ImRhdGEiO047fXM6NDoiaXRlbSI7Tzo4OiJzdGRDbGFzcyI6NDp7czoyOiJpZCI7YTowOnt9czo0OiJkYXRhIjtOO3M6NDoidHlwZSI7TjtzOjQ6ImxpbmsiO047fX1zOjU6Iml0ZW1zIjtPOjg6InN0ZENsYXNzIjo0OntzOjg6Im1lbnV0eXBlIjtzOjg6Im1haW5tZW51IjtzOjk6ImNsaWVudF9pZCI7aTowO3M6MTA6ImxpbWl0c3RhcnQiO2k6MDtzOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtpOjIwO3M6ODoib3JkZXJpbmciO3M6NToiYS5sZnQiO3M6NToic3RhcnQiO2Q6MDt9fX1zOjExOiJjb21fbW9kdWxlcyI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJtb2R1bGVzIjtPOjg6InN0ZENsYXNzIjoyOntzOjE6IjAiO086ODoic3RkQ2xhc3MiOjI6e3M6OToiY2xpZW50X2lkIjtpOjA7czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7aToyMDtzOjg6Im9yZGVyaW5nIjtzOjEwOiJhLnBvc2l0aW9uIjtzOjU6InN0YXJ0IjtkOjA7fX1zOjE6IjEiO086ODoic3RkQ2xhc3MiOjM6e3M6OToiY2xpZW50X2lkIjtpOjE7czoxMDoibGltaXRzdGFydCI7aTowO3M6NDoibGlzdCI7YTo0OntzOjk6ImRpcmVjdGlvbiI7czozOiJhc2MiO3M6NToibGltaXQiO2k6MjA7czo4OiJvcmRlcmluZyI7czoxMDoiYS5wb3NpdGlvbiI7czo1OiJzdGFydCI7ZDowO319fXM6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJtb2R1bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7Tjt9fXM6MzoiYWRkIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Im1vZHVsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxMjoiZXh0ZW5zaW9uX2lkIjtOO3M6NjoicGFyYW1zIjtOO319fXM6MTA6ImNvbV9maWVsZHMiO086ODoic3RkQ2xhc3MiOjI6e3M6NjoiZmllbGRzIjtPOjg6InN0ZENsYXNzIjoyOntzOjc6ImNvbnRleHQiO3M6MTk6ImNvbV9jb250ZW50LmFydGljbGUiO3M6NDoibGlzdCI7YTo0OntzOjk6ImRpcmVjdGlvbiI7czozOiJhc2MiO3M6NToibGltaXQiO2k6MjA7czo4OiJvcmRlcmluZyI7czoxMDoiYS5vcmRlcmluZyI7czo1OiJzdGFydCI7ZDowO319czo2OiJncm91cHMiO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY29udGV4dCI7czoxOToiY29tX2NvbnRlbnQuYXJ0aWNsZSI7czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7aToyMDtzOjg6Im9yZGVyaW5nIjtzOjEwOiJhLm9yZGVyaW5nIjtzOjU6InN0YXJ0IjtkOjA7fX19czo5OiJjb21fdXNlcnMiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJ1c2VyIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImRhdGEiO047fX19czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjt9fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjk3NDt9czo5OiJjb21fdXNlcnMiO086ODoic3RkQ2xhc3MiOjE6e3M6MTE6Im1mYV9jaGVja2VkIjtpOjE7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjthOjA6e319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 974, 'gabi'),
(0x6330636138626361356635623738323663333366356566323565343631643637, 0, 0, 1738193572, 'joomla|s:1308:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjU6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzM4MTg5NDc1O3M6NDoibGFzdCI7aToxNzM4MTkzMDMwO3M6Mzoibm93IjtpOjE3MzgxOTM1NzI7fXM6NToidG9rZW4iO3M6MzI6IjkxYWM5N2NkZGU3YzE3YWVkMjQ5NzVjM2UxMTQ1NDA2IjtzOjc6ImNvdW50ZXIiO2k6NDQ7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6OTc0O31zOjk6ImNvbV91c2VycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czoxMToibWZhX2NoZWNrZWQiO2k6MTt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjI6e3M6MTE6ImNvbV9tb2R1bGVzIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoibW9kdWxlIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImRhdGEiO047fX1zOjM6ImFkZCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJtb2R1bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MTI6ImV4dGVuc2lvbl9pZCI7TjtzOjY6InBhcmFtcyI7Tjt9fX1zOjExOiJjb21fY29udGVudCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjc6ImFydGljbGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7Tjt9fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjthOjA6e319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 974, 'gabi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_tags`
--

CREATE TABLE `oh67l_tags` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0',
  `lft` int NOT NULL DEFAULT '0',
  `rgt` int NOT NULL DEFAULT '0',
  `level` int UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL,
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_tags`
--

INSERT INTO `oh67l_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, NULL, NULL, 1, '', '', '', '', 974, '2025-01-28 19:24:00', '', 974, '2025-01-28 19:24:00', '', '', 0, '*', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_template_overrides`
--

CREATE TABLE `oh67l_template_overrides` (
  `id` int UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hash_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension_id` int DEFAULT '0',
  `state` tinyint NOT NULL DEFAULT '0',
  `action` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_template_styles`
--

CREATE TABLE `oh67l_template_styles` (
  `id` int UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inheritable` tinyint NOT NULL DEFAULT '0',
  `parent` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_template_styles`
--

INSERT INTO `oh67l_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `inheritable`, `parent`, `params`) VALUES
(10, 'atum', 1, '1', 'Atum - Default', 1, '', '{\"hue\":\"hsl(214, 63%, 20%)\",\"bg-light\":\"#f0f4fb\",\"text-dark\":\"#495057\",\"text-light\":\"#ffffff\",\"link-color\":\"#2a69b8\",\"special-color\":\"#001b4c\",\"colorScheme\":\"os\",\"monochrome\":\"0\",\"loginLogo\":\"\",\"loginLogoAlt\":\"\",\"logoBrandLarge\":\"\",\"logoBrandLargeAlt\":\"\",\"logoBrandSmall\":\"\",\"logoBrandSmallAlt\":\"\"}'),
(11, 'cassiopeia', 0, '1', 'Cassiopeia - Default', 1, '', '{\"brand\":\"1\",\"logoFile\":\"images\\/Home\\/logo_footer2.png#joomlaImage:\\/\\/local-images\\/Home\\/logo_footer2.png?width=200&height=110\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"systemFontBody\":\"\",\"systemFontHeading\":\"\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":0,\"backTop\":0}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_tuf_metadata`
--

CREATE TABLE `oh67l_tuf_metadata` (
  `id` int NOT NULL,
  `update_site_id` int DEFAULT '0',
  `root` text COLLATE utf8mb4_unicode_ci,
  `targets` text COLLATE utf8mb4_unicode_ci,
  `snapshot` text COLLATE utf8mb4_unicode_ci,
  `timestamp` text COLLATE utf8mb4_unicode_ci,
  `mirrors` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Secure TUF Updates';

--
-- Volcado de datos para la tabla `oh67l_tuf_metadata`
--

INSERT INTO `oh67l_tuf_metadata` (`id`, `update_site_id`, `root`, `targets`, `snapshot`, `timestamp`, `mirrors`) VALUES
(1, 1, '{\"signed\":{\"_type\":\"root\",\"spec_version\":\"1.0\",\"version\":6,\"expires\":\"2026-01-04T10:59:13Z\",\"keys\":{\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"9b2af2d9b9727227735253d795bd27ea8f0e294a5f3603e822dc5052b44802b9\"}},\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"a18e5ebabc19d5d5984b601a292ece61ba3662ab2d071dc520da5bd4f8948799\"}},\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"cb0a7a131961a20edea051d6dc2b091fb650bd399bd8514adb67b3c60db9f8f9\"}},\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"589d029a68b470deff1ca16dbf3eea6b5b3fcba0ae7bb52c468abc7fb058b2a2\"}},\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"6043c8bacc76ac5c9750f45454dd865c6ca1fc57d69e14cc192cfd420f6a66a9\"}},\"9eabc37383b243cd236375c66693db385911914b52556e1ec05fc70ed45e1bfe\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"a4b8509488f1c29ab0b1f610e7452fbec78b4f33f1fba5a418d6ff087c567429\"}},\"bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"6eb44460e5914e8e0df726ddb90bd1f3771b8ce5af19b40fb01ac5a85b023a6f\"}},\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"ad1950e117b29ebe7a38635a2e574123e07571e4f9a011783e053b5f15d2562a\"}},\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"5d451915bc2b93a0e4e4745bc6a8b292d58996d50e0fb66c78c7827152a65879\"}}},\"roles\":{\"root\":{\"keyids\":[\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\",\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\"],\"threshold\":1},\"snapshot\":{\"keyids\":[\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\",\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\",\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\",\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\",\"bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9\",\"9eabc37383b243cd236375c66693db385911914b52556e1ec05fc70ed45e1bfe\"],\"threshold\":1},\"targets\":{\"keyids\":[\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\",\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\",\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\",\"bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9\",\"9eabc37383b243cd236375c66693db385911914b52556e1ec05fc70ed45e1bfe\"],\"threshold\":1},\"timestamp\":{\"keyids\":[\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\"],\"threshold\":1}},\"consistent_snapshot\":true},\"signatures\":[{\"keyid\":\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\",\"sig\":\"ba9fc6e7ff7a8b85d8c60eb0319e6be7a501aba26898ed1ad64db6726b5315f3f426fcf29e632f2cbdb83a888324a1a0963d3145e0a0b34803be4c6e20732d0d\"}]}', '{\"signed\":{\"_type\":\"targets\",\"spec_version\":\"1.0\",\"version\":34,\"expires\":\"2025-04-22T08:35:09Z\",\"targets\":{\"Joomla_5.1.2-Stable-Upgrade_Package.zip\":{\"length\":28134889,\"hashes\":{\"sha512\":\"d6b46cdedb9b31d01a607fe4c2f3a830a3265ed6ae5c0cb7b0f836b1b016ee7c639bd8948df00baf1b61a87f2fc71368a80b39e67ef9ec2b8842ee0ab09a620f\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.1.2 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-1-2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.1.2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.1.2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5909-joomla-5-1-2-and-joomla-4-4-6-security-and-bug-fix-release.html\",\"title\":\"Joomla! 5.1.2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.1.2\",\"php_minimum\":\"8.1.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.1.2\"}},\"Joomla_5.2.3-Stable-Update_Package.zip\":{\"length\":28324435,\"hashes\":{\"sha512\":\"db43965d63a6cf688f0ca8206fa31753e9e789ae029a6d3be95fb38c803bc1ad45dc528c38542faf9f1663659e646d87cf18cab9d848edbd49b05f897e2fb893\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.2.3 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-2-3/Joomla_5.2.3-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.2.3/Joomla_5.2.3-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.2.3/Joomla_5.2.3-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5919-joomla-5-2-3-security-bugfix-release.html\",\"title\":\"Joomla! 5.2.3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.2.3\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.2.3\"}},\"Joomla_5.3.0-alpha3-Alpha-Update_Package.zip\":{\"length\":28536645,\"hashes\":{\"sha512\":\"d673f39ca0d6833a710b2a63d7cb526d667360e9bf6b924735a1d1ec061738ed4cf763990981b407004bbbb1e0ef1abfe5b150044d17e7ca3e5dcc13080ef02d\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.3.0-alpha3 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.3.0-alpha3/Joomla_5.3.0-alpha3-Alpha-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/5.3.0-alpha3\",\"title\":\"Joomla! 5.3.0-alpha3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.3.0-alpha3\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Alpha\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.3.0-alpha3\"}}}},\"signatures\":[{\"keyid\":\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\",\"sig\":\"ecc97cb3b3bb93e0867a700331d10107278f82eb64e379200622843991e77a3410183c5bacb6c39ff68de24547c6727e985e25f18f6de8c1e57829f60fe98a05\"}]}', '{\"signed\":{\"_type\":\"snapshot\",\"spec_version\":\"1.0\",\"version\":39,\"expires\":\"2025-08-20T08:36:08Z\",\"meta\":{\"targets.json\":{\"length\":3693,\"hashes\":{\"sha512\":\"03d3d3020724cde5691ff6b82a565774b5ff9410db42a659a4455bb0ac6e3ad4e4b94d0d83ac6532f56eb1d1f9a1d70c1ea5649d2c2d1939a7fe5053134bf9b3\"},\"version\":34}}},\"signatures\":[{\"keyid\":\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\",\"sig\":\"e3f56a6fe678030f2aa1ba92b098fc6231e09d280e21afbd9c7c209b328406a046689aa3e042148f788b24be2bd34a7a74b5f509ab66a78b480f95600efb090f\"}]}', '{\"signed\":{\"_type\":\"timestamp\",\"spec_version\":\"1.0\",\"version\":444,\"expires\":\"2025-01-31T01:08:33Z\",\"meta\":{\"snapshot.json\":{\"length\":531,\"hashes\":{\"sha512\":\"6efc085de0274fd22dc707b5691dc3b967d76260deee1b517b8e36237f9834a0e1b107185256cb4d61c9054bdb7b48657029a335dd6a6011e51fe047cb71a8b0\"},\"version\":39}}},\"signatures\":[{\"keyid\":\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\",\"sig\":\"e2a32c3666ad63af23afcf8a704c5ef3d313a12d0fd7d15ca8a368e64368853feaf39769df96ff202b11d8d4fdd7028c8ea2bc2210d2195bd16ea408bf8a3c05\"}]}', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_ucm_base`
--

CREATE TABLE `oh67l_ucm_base` (
  `ucm_id` int UNSIGNED NOT NULL,
  `ucm_item_id` int NOT NULL,
  `ucm_type_id` int NOT NULL,
  `ucm_language_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_ucm_content`
--

CREATE TABLE `oh67l_ucm_content` (
  `core_content_id` int UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci,
  `core_state` tinyint NOT NULL DEFAULT '0',
  `core_checked_out_time` datetime DEFAULT NULL,
  `core_checked_out_user_id` int UNSIGNED DEFAULT NULL,
  `core_access` int UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci,
  `core_featured` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL,
  `core_modified_user_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL,
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime DEFAULT NULL,
  `core_publish_down` datetime DEFAULT NULL,
  `core_content_item_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci,
  `core_urls` text COLLATE utf8mb4_unicode_ci,
  `core_hits` int UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci,
  `core_catid` int UNSIGNED NOT NULL DEFAULT '0',
  `core_type_id` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_updates`
--

CREATE TABLE `oh67l_updates` (
  `update_id` int NOT NULL,
  `update_site_id` int DEFAULT '0',
  `extension_id` int DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `changelogurl` text COLLATE utf8mb4_unicode_ci,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Volcado de datos para la tabla `oh67l_updates`
--

INSERT INTO `oh67l_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `changelogurl`, `extra_query`) VALUES
(107, 2, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '5.0.2.1', '', 'https://update.joomla.org/language/details5/af-ZA_details.xml', '', '', ''),
(108, 2, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '5.2.3.2', '', 'https://update.joomla.org/language/details5/be-BY_details.xml', '', '', ''),
(109, 2, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '5.2.4.1', '', 'https://update.joomla.org/language/details5/bg-BG_details.xml', '', '', ''),
(110, 2, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '5.2.3.1', '', 'https://update.joomla.org/language/details5/ca-ES_details.xml', '', '', ''),
(111, 2, 0, 'Chinese, Simplified', '', 'pkg_zh-CN', 'package', '', 0, '5.1.2.1', '', 'https://update.joomla.org/language/details5/zh-CN_details.xml', '', '', ''),
(112, 2, 0, 'Chinese, Traditional', '', 'pkg_zh-TW', 'package', '', 0, '5.0.3.1', '', 'https://update.joomla.org/language/details5/zh-TW_details.xml', '', '', ''),
(113, 2, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '5.2.1.1', '', 'https://update.joomla.org/language/details5/hr-HR_details.xml', '', '', ''),
(114, 2, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '5.2.0.1', '', 'https://update.joomla.org/language/details5/cs-CZ_details.xml', '', '', ''),
(115, 2, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '5.2.3.1', '', 'https://update.joomla.org/language/details5/da-DK_details.xml', '', '', ''),
(116, 2, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '5.2.3.1', '', 'https://update.joomla.org/language/details5/nl-NL_details.xml', '', '', ''),
(117, 2, 0, 'English, Australia', '', 'pkg_en-AU', 'package', '', 0, '5.0.3.1', '', 'https://update.joomla.org/language/details5/en-AU_details.xml', '', '', ''),
(118, 2, 0, 'English, Canada', '', 'pkg_en-CA', 'package', '', 0, '5.0.3.1', '', 'https://update.joomla.org/language/details5/en-CA_details.xml', '', '', ''),
(119, 2, 0, 'English, New Zealand', '', 'pkg_en-NZ', 'package', '', 0, '5.0.3.2', '', 'https://update.joomla.org/language/details5/en-NZ_details.xml', '', '', ''),
(120, 2, 0, 'English, USA', '', 'pkg_en-US', 'package', '', 0, '5.0.3.1', '', 'https://update.joomla.org/language/details5/en-US_details.xml', '', '', ''),
(121, 2, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/et-EE_details.xml', '', '', ''),
(122, 2, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '5.2.3.1', '', 'https://update.joomla.org/language/details5/fi-FI_details.xml', '', '', ''),
(123, 2, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/nl-BE_details.xml', '', '', ''),
(124, 2, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '5.2.3.1', '', 'https://update.joomla.org/language/details5/fr-FR_details.xml', '', '', ''),
(125, 2, 0, 'French, Canada', '', 'pkg_fr-CA', 'package', '', 0, '5.2.3.1', '', 'https://update.joomla.org/language/details5/fr-CA_details.xml', '', '', ''),
(126, 2, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '5.2.3.1', '', 'https://update.joomla.org/language/details5/ka-GE_details.xml', '', '', ''),
(127, 2, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '5.2.3.1', '', 'https://update.joomla.org/language/details5/de-DE_details.xml', '', '', ''),
(128, 2, 0, 'German, Austria', '', 'pkg_de-AT', 'package', '', 0, '5.2.3.1', '', 'https://update.joomla.org/language/details5/de-AT_details.xml', '', '', ''),
(129, 2, 0, 'German, Liechtenstein', '', 'pkg_de-LI', 'package', '', 0, '5.2.3.1', '', 'https://update.joomla.org/language/details5/de-LI_details.xml', '', '', ''),
(130, 2, 0, 'German, Luxembourg', '', 'pkg_de-LU', 'package', '', 0, '5.2.3.1', '', 'https://update.joomla.org/language/details5/de-LU_details.xml', '', '', ''),
(131, 2, 0, 'German, Switzerland', '', 'pkg_de-CH', 'package', '', 0, '5.2.3.1', '', 'https://update.joomla.org/language/details5/de-CH_details.xml', '', '', ''),
(132, 2, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '5.2.3.1', '', 'https://update.joomla.org/language/details5/el-GR_details.xml', '', '', ''),
(133, 2, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '5.2.0.1', '', 'https://update.joomla.org/language/details5/hu-HU_details.xml', '', '', ''),
(134, 2, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '5.2.3.1', '', 'https://update.joomla.org/language/details5/it-IT_details.xml', '', '', ''),
(135, 2, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '5.2.3.1', '', 'https://update.joomla.org/language/details5/ja-JP_details.xml', '', '', ''),
(136, 2, 0, 'Kazakh', '', 'pkg_kk-KZ', 'package', '', 0, '5.0.0.4', '', 'https://update.joomla.org/language/details5/kk-KZ_details.xml', '', '', ''),
(137, 2, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '5.0.2.1', '', 'https://update.joomla.org/language/details5/ko-KR_details.xml', '', '', ''),
(138, 2, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '5.2.4.1', '', 'https://update.joomla.org/language/details5/lv-LV_details.xml', '', '', ''),
(139, 2, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '5.2.4.1', '', 'https://update.joomla.org/language/details5/lt-LT_details.xml', '', '', ''),
(140, 2, 0, 'Norwegian Bokmål', '', 'pkg_nb-NO', 'package', '', 0, '5.2.3.1', '', 'https://update.joomla.org/language/details5/nb-NO_details.xml', '', '', ''),
(141, 2, 0, 'Pashto Afghanistan', '', 'pkg_ps-AF', 'package', '', 0, '5.0.1.1', '', 'https://update.joomla.org/language/details5/ps-AF_details.xml', '', '', ''),
(142, 2, 0, 'Persian Farsi', '', 'pkg_fa-IR', 'package', '', 0, '5.2.3.1', '', 'https://update.joomla.org/language/details5/fa-IR_details.xml', '', '', ''),
(143, 2, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '5.1.2.1', '', 'https://update.joomla.org/language/details5/pl-PL_details.xml', '', '', ''),
(144, 2, 0, 'Portuguese, Brazil', '', 'pkg_pt-BR', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/pt-BR_details.xml', '', '', ''),
(145, 2, 0, 'Portuguese, Portugal', '', 'pkg_pt-PT', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/pt-PT_details.xml', '', '', ''),
(146, 2, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '5.2.0.2', '', 'https://update.joomla.org/language/details5/ro-RO_details.xml', '', '', ''),
(147, 2, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/ru-RU_details.xml', '', '', ''),
(148, 2, 0, 'Serbian, Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '5.2.1.1', '', 'https://update.joomla.org/language/details5/sr-RS_details.xml', '', '', ''),
(149, 2, 0, 'Serbian, Latin', '', 'pkg_sr-YU', 'package', '', 0, '5.2.3.1', '', 'https://update.joomla.org/language/details5/sr-YU_details.xml', '', '', ''),
(150, 2, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '5.2.3.1', '', 'https://update.joomla.org/language/details5/sk-SK_details.xml', '', '', ''),
(151, 2, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '5.2.3.1', '', 'https://update.joomla.org/language/details5/sl-SI_details.xml', '', '', ''),
(152, 2, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '5.2.3.1', '', 'https://update.joomla.org/language/details5/es-ES_details.xml', '', '', ''),
(153, 2, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '5.2.3.1', '', 'https://update.joomla.org/language/details5/sv-SE_details.xml', '', '', ''),
(154, 2, 0, 'Tamil, India', '', 'pkg_ta-IN', 'package', '', 0, '5.2.3.2', '', 'https://update.joomla.org/language/details5/ta-IN_details.xml', '', '', ''),
(155, 2, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '5.2.3.1', '', 'https://update.joomla.org/language/details5/th-TH_details.xml', '', '', ''),
(156, 2, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/tr-TR_details.xml', '', '', ''),
(157, 2, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '5.1.3.1', '', 'https://update.joomla.org/language/details5/uk-UA_details.xml', '', '', ''),
(158, 2, 0, 'Urdu, Pakistan', '', 'pkg_ur-PK', 'package', '', 0, '5.1.2.1', '', 'https://update.joomla.org/language/details5/ur-PK_details.xml', '', '', ''),
(159, 2, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '5.2.3.2', '', 'https://update.joomla.org/language/details5/cy-GB_details.xml', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_update_sites`
--

CREATE TABLE `oh67l_update_sites` (
  `update_site_id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int DEFAULT '0',
  `last_check_timestamp` bigint DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Volcado de datos para la tabla `oh67l_update_sites`
--

INSERT INTO `oh67l_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`, `checked_out`, `checked_out_time`) VALUES
(1, 'Joomla! Core', 'tuf', 'https://update.joomla.org/cms/', 1, 1738189683, '', NULL, NULL),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_5.xml', 1, 1738189917, '', NULL, NULL),
(3, 'Joomla! Update Component', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1738189917, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_update_sites_extensions`
--

CREATE TABLE `oh67l_update_sites_extensions` (
  `update_site_id` int NOT NULL DEFAULT '0',
  `extension_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Volcado de datos para la tabla `oh67l_update_sites_extensions`
--

INSERT INTO `oh67l_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 240),
(2, 241),
(3, 24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_usergroups`
--

CREATE TABLE `oh67l_usergroups` (
  `id` int UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_usergroups`
--

INSERT INTO `oh67l_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_users`
--

CREATE TABLE `oh67l_users` (
  `id` int NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint NOT NULL DEFAULT '0',
  `sendEmail` tinyint DEFAULT '0',
  `registerDate` datetime NOT NULL,
  `lastvisitDate` datetime DEFAULT NULL,
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime DEFAULT NULL COMMENT 'Date of last password reset',
  `resetCount` int NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Backup Codes',
  `requireReset` tinyint NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  `authProvider` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Name of used authentication plugin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_users`
--

INSERT INTO `oh67l_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`, `authProvider`) VALUES
(974, 'gabriel', 'gabi', 'gongoragabrielvalle@gmail.com', '$2y$10$fpngKIX9HM.V3Q2qn8xEruptb3N9Gm2eXV/G8KWXZUYzHT8W7jegS', 0, 1, '2025-01-28 19:24:05', '2025-01-29 22:28:41', '0', '', NULL, 0, '', '', 0, ''),
(976, 'Vicent Jordà', 'vJorda', 'vicentjorda@gmail.com', '$2y$10$m7EBWi.DKNXRGENh844/8eQfkn5pUPyV6qO7xMt/Ud/Wf6k8keIyW', 0, 0, '2025-01-28 19:45:45', NULL, '', '{\"admin_style\":\"\",\"colorScheme\":\"\",\"allowTourAutoStart\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\",\"a11y_mono\":\"0\",\"a11y_contrast\":\"0\",\"a11y_highlight\":\"0\",\"a11y_font\":\"0\"}', NULL, 0, '', '', 0, ''),
(977, 'David Crespo', 'dCrespo', 'davidcrespo@gmail.com', '$2y$10$yhSvpyuBYCrJOD7ToabPwuovYOVW1jCWTlHZSYjUbUO8Fy264tsZi', 0, 0, '2025-01-28 19:46:25', NULL, '', '{\"admin_style\":\"\",\"colorScheme\":\"\",\"allowTourAutoStart\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\",\"a11y_mono\":\"0\",\"a11y_contrast\":\"0\",\"a11y_highlight\":\"0\",\"a11y_font\":\"0\"}', NULL, 0, '', '', 0, ''),
(978, 'Javier Signes', 'jSignes', 'javiersignes@gmail.com', '$2y$10$qEMQbjAU7bwIbNIq73muZ.B0y3O7acD8MifRHV/H68T0uQBMTl2mq', 0, 0, '2025-01-28 19:46:55', NULL, '', '{\"admin_style\":\"\",\"colorScheme\":\"\",\"allowTourAutoStart\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\",\"a11y_mono\":\"0\",\"a11y_contrast\":\"0\",\"a11y_highlight\":\"0\",\"a11y_font\":\"0\"}', NULL, 0, '', '', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_user_keys`
--

CREATE TABLE `oh67l_user_keys` (
  `id` int UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_user_keys`
--

INSERT INTO `oh67l_user_keys` (`id`, `user_id`, `token`, `series`, `time`, `uastring`) VALUES
(1, 'gabi', '$2y$10$s1ifcbNZ0udwKQkpE12jp.zUHFzM/Q58qnSieC7zOqR/Xc95kezJm', 'nwqBeXL6ccesCSXYC9Wl', '1743276298', 'joomla_remember_me_fd23ad257d3d868c633bd8d8a37e1235');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_user_mfa`
--

CREATE TABLE `oh67l_user_mfa` (
  `id` int NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint NOT NULL DEFAULT '0',
  `options` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `last_used` datetime DEFAULT NULL,
  `tries` int NOT NULL DEFAULT '0',
  `last_try` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Multi-factor Authentication settings';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_user_notes`
--

CREATE TABLE `oh67l_user_notes` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `catid` int UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint NOT NULL DEFAULT '0',
  `checked_out` int UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `created_user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL,
  `modified_user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL,
  `review_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_user_profiles`
--

CREATE TABLE `oh67l_user_profiles` (
  `user_id` int NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

--
-- Volcado de datos para la tabla `oh67l_user_profiles`
--

INSERT INTO `oh67l_user_profiles` (`user_id`, `profile_key`, `profile_value`, `ordering`) VALUES
(974, 'guidedtour.id.12', '{\"state\":\"completed\"}', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_user_usergroup_map`
--

CREATE TABLE `oh67l_user_usergroup_map` (
  `user_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_user_usergroup_map`
--

INSERT INTO `oh67l_user_usergroup_map` (`user_id`, `group_id`) VALUES
(974, 8),
(976, 2),
(976, 5),
(977, 2),
(977, 3),
(978, 2),
(978, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_viewlevels`
--

CREATE TABLE `oh67l_viewlevels` (
  `id` int UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_viewlevels`
--

INSERT INTO `oh67l_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_webauthn_credentials`
--

CREATE TABLE `oh67l_webauthn_credentials` (
  `id` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Credential ID',
  `user_id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'User handle',
  `label` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Human readable label',
  `credential` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Credential source data, JSON format'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_workflows`
--

CREATE TABLE `oh67l_workflows` (
  `id` int NOT NULL,
  `asset_id` int DEFAULT '0',
  `published` tinyint NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint NOT NULL DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `created_by` int NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL,
  `modified_by` int NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_workflows`
--

INSERT INTO `oh67l_workflows` (`id`, `asset_id`, `published`, `title`, `description`, `extension`, `default`, `ordering`, `created`, `created_by`, `modified`, `modified_by`, `checked_out_time`, `checked_out`) VALUES
(1, 56, 1, 'COM_WORKFLOW_BASIC_WORKFLOW', '', 'com_content.article', 1, 1, '2025-01-28 19:24:01', 974, '2025-01-28 19:24:01', 974, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_workflow_associations`
--

CREATE TABLE `oh67l_workflow_associations` (
  `item_id` int NOT NULL DEFAULT '0' COMMENT 'Extension table id value',
  `stage_id` int NOT NULL COMMENT 'Foreign Key to #__workflow_stages.id',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_workflow_associations`
--

INSERT INTO `oh67l_workflow_associations` (`item_id`, `stage_id`, `extension`) VALUES
(1, 1, 'com_content.article'),
(2, 1, 'com_content.article'),
(3, 1, 'com_content.article');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_workflow_stages`
--

CREATE TABLE `oh67l_workflow_stages` (
  `id` int NOT NULL,
  `asset_id` int DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `workflow_id` int NOT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint NOT NULL DEFAULT '0',
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_workflow_stages`
--

INSERT INTO `oh67l_workflow_stages` (`id`, `asset_id`, `ordering`, `workflow_id`, `published`, `title`, `description`, `default`, `checked_out_time`, `checked_out`) VALUES
(1, 57, 1, 1, 1, 'COM_WORKFLOW_BASIC_STAGE', '', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oh67l_workflow_transitions`
--

CREATE TABLE `oh67l_workflow_transitions` (
  `id` int NOT NULL,
  `asset_id` int DEFAULT '0',
  `ordering` int NOT NULL DEFAULT '0',
  `workflow_id` int NOT NULL,
  `published` tinyint NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_stage_id` int NOT NULL,
  `to_stage_id` int NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `oh67l_workflow_transitions`
--

INSERT INTO `oh67l_workflow_transitions` (`id`, `asset_id`, `ordering`, `workflow_id`, `published`, `title`, `description`, `from_stage_id`, `to_stage_id`, `options`, `checked_out_time`, `checked_out`) VALUES
(1, 58, 1, 1, 1, 'UNPUBLISH', '', -1, 1, '{\"publishing\":\"0\"}', NULL, NULL),
(2, 59, 2, 1, 1, 'PUBLISH', '', -1, 1, '{\"publishing\":\"1\"}', NULL, NULL),
(3, 60, 3, 1, 1, 'TRASH', '', -1, 1, '{\"publishing\":\"-2\"}', NULL, NULL),
(4, 61, 4, 1, 1, 'ARCHIVE', '', -1, 1, '{\"publishing\":\"2\"}', NULL, NULL),
(5, 62, 5, 1, 1, 'FEATURE', '', -1, 1, '{\"featuring\":\"1\"}', NULL, NULL),
(6, 63, 6, 1, 1, 'UNFEATURE', '', -1, 1, '{\"featuring\":\"0\"}', NULL, NULL),
(7, 64, 7, 1, 1, 'PUBLISH_AND_FEATURE', '', -1, 1, '{\"publishing\":\"1\",\"featuring\":\"1\"}', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `oh67l_action_logs`
--
ALTER TABLE `oh67l_action_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  ADD KEY `idx_user_id_extension` (`user_id`,`extension`),
  ADD KEY `idx_extension_item_id` (`extension`,`item_id`);

--
-- Indices de la tabla `oh67l_action_logs_extensions`
--
ALTER TABLE `oh67l_action_logs_extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oh67l_action_logs_users`
--
ALTER TABLE `oh67l_action_logs_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `idx_notify` (`notify`);

--
-- Indices de la tabla `oh67l_action_log_config`
--
ALTER TABLE `oh67l_action_log_config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oh67l_assets`
--
ALTER TABLE `oh67l_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indices de la tabla `oh67l_associations`
--
ALTER TABLE `oh67l_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indices de la tabla `oh67l_banners`
--
ALTER TABLE `oh67l_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `oh67l_banner_clients`
--
ALTER TABLE `oh67l_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indices de la tabla `oh67l_banner_tracks`
--
ALTER TABLE `oh67l_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indices de la tabla `oh67l_categories`
--
ALTER TABLE `oh67l_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `oh67l_contact_details`
--
ALTER TABLE `oh67l_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `oh67l_content`
--
ALTER TABLE `oh67l_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_alias` (`alias`(191));

--
-- Indices de la tabla `oh67l_contentitem_tag_map`
--
ALTER TABLE `oh67l_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indices de la tabla `oh67l_content_frontpage`
--
ALTER TABLE `oh67l_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indices de la tabla `oh67l_content_rating`
--
ALTER TABLE `oh67l_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indices de la tabla `oh67l_content_types`
--
ALTER TABLE `oh67l_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indices de la tabla `oh67l_extensions`
--
ALTER TABLE `oh67l_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indices de la tabla `oh67l_fields`
--
ALTER TABLE `oh67l_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `oh67l_fields_categories`
--
ALTER TABLE `oh67l_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Indices de la tabla `oh67l_fields_groups`
--
ALTER TABLE `oh67l_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `oh67l_fields_values`
--
ALTER TABLE `oh67l_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Indices de la tabla `oh67l_finder_filters`
--
ALTER TABLE `oh67l_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indices de la tabla `oh67l_finder_links`
--
ALTER TABLE `oh67l_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indices de la tabla `oh67l_finder_links_terms`
--
ALTER TABLE `oh67l_finder_links_terms`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `oh67l_finder_logging`
--
ALTER TABLE `oh67l_finder_logging`
  ADD PRIMARY KEY (`md5sum`),
  ADD KEY `searchterm` (`searchterm`(191));

--
-- Indices de la tabla `oh67l_finder_taxonomy`
--
ALTER TABLE `oh67l_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_level` (`level`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indices de la tabla `oh67l_finder_taxonomy_map`
--
ALTER TABLE `oh67l_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indices de la tabla `oh67l_finder_terms`
--
ALTER TABLE `oh67l_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term_language` (`term`,`language`),
  ADD KEY `idx_stem` (`stem`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `oh67l_finder_terms_common`
--
ALTER TABLE `oh67l_finder_terms_common`
  ADD UNIQUE KEY `idx_term_language` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indices de la tabla `oh67l_finder_tokens`
--
ALTER TABLE `oh67l_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_stem` (`stem`),
  ADD KEY `idx_context` (`context`),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `oh67l_finder_tokens_aggregate`
--
ALTER TABLE `oh67l_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indices de la tabla `oh67l_finder_types`
--
ALTER TABLE `oh67l_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indices de la tabla `oh67l_guidedtours`
--
ALTER TABLE `oh67l_guidedtours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_uid` (`uid`(191));

--
-- Indices de la tabla `oh67l_guidedtour_steps`
--
ALTER TABLE `oh67l_guidedtour_steps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tour` (`tour_id`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `oh67l_history`
--
ALTER TABLE `oh67l_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indices de la tabla `oh67l_languages`
--
ALTER TABLE `oh67l_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indices de la tabla `oh67l_mail_templates`
--
ALTER TABLE `oh67l_mail_templates`
  ADD PRIMARY KEY (`template_id`,`language`);

--
-- Indices de la tabla `oh67l_menu`
--
ALTER TABLE `oh67l_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `oh67l_menu_types`
--
ALTER TABLE `oh67l_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indices de la tabla `oh67l_messages`
--
ALTER TABLE `oh67l_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indices de la tabla `oh67l_messages_cfg`
--
ALTER TABLE `oh67l_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indices de la tabla `oh67l_modules`
--
ALTER TABLE `oh67l_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `oh67l_modules_menu`
--
ALTER TABLE `oh67l_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indices de la tabla `oh67l_newsfeeds`
--
ALTER TABLE `oh67l_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `oh67l_overrider`
--
ALTER TABLE `oh67l_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oh67l_postinstall_messages`
--
ALTER TABLE `oh67l_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indices de la tabla `oh67l_privacy_consents`
--
ALTER TABLE `oh67l_privacy_consents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indices de la tabla `oh67l_privacy_requests`
--
ALTER TABLE `oh67l_privacy_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oh67l_redirect_links`
--
ALTER TABLE `oh67l_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modified` (`modified_date`);

--
-- Indices de la tabla `oh67l_scheduler_tasks`
--
ALTER TABLE `oh67l_scheduler_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_last_exit` (`last_exit_code`),
  ADD KEY `idx_next_exec` (`next_execution`),
  ADD KEY `idx_locked` (`locked`),
  ADD KEY `idx_priority` (`priority`),
  ADD KEY `idx_cli_exclusive` (`cli_exclusive`),
  ADD KEY `idx_checked_out` (`checked_out`);

--
-- Indices de la tabla `oh67l_schemaorg`
--
ALTER TABLE `oh67l_schemaorg`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oh67l_schemas`
--
ALTER TABLE `oh67l_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indices de la tabla `oh67l_session`
--
ALTER TABLE `oh67l_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`),
  ADD KEY `client_id_guest` (`client_id`,`guest`);

--
-- Indices de la tabla `oh67l_tags`
--
ALTER TABLE `oh67l_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `oh67l_template_overrides`
--
ALTER TABLE `oh67l_template_overrides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_extension_id` (`extension_id`);

--
-- Indices de la tabla `oh67l_template_styles`
--
ALTER TABLE `oh67l_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_client_id` (`client_id`),
  ADD KEY `idx_client_id_home` (`client_id`,`home`);

--
-- Indices de la tabla `oh67l_tuf_metadata`
--
ALTER TABLE `oh67l_tuf_metadata`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `oh67l_ucm_base`
--
ALTER TABLE `oh67l_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indices de la tabla `oh67l_ucm_content`
--
ALTER TABLE `oh67l_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indices de la tabla `oh67l_updates`
--
ALTER TABLE `oh67l_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indices de la tabla `oh67l_update_sites`
--
ALTER TABLE `oh67l_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indices de la tabla `oh67l_update_sites_extensions`
--
ALTER TABLE `oh67l_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indices de la tabla `oh67l_usergroups`
--
ALTER TABLE `oh67l_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indices de la tabla `oh67l_users`
--
ALTER TABLE `oh67l_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_username` (`username`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `email` (`email`);

--
-- Indices de la tabla `oh67l_user_keys`
--
ALTER TABLE `oh67l_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `oh67l_user_mfa`
--
ALTER TABLE `oh67l_user_mfa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indices de la tabla `oh67l_user_notes`
--
ALTER TABLE `oh67l_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indices de la tabla `oh67l_user_profiles`
--
ALTER TABLE `oh67l_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indices de la tabla `oh67l_user_usergroup_map`
--
ALTER TABLE `oh67l_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indices de la tabla `oh67l_viewlevels`
--
ALTER TABLE `oh67l_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Indices de la tabla `oh67l_webauthn_credentials`
--
ALTER TABLE `oh67l_webauthn_credentials`
  ADD PRIMARY KEY (`id`(100)),
  ADD KEY `user_id` (`user_id`(100));

--
-- Indices de la tabla `oh67l_workflows`
--
ALTER TABLE `oh67l_workflows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_asset_id` (`asset_id`),
  ADD KEY `idx_title` (`title`(191)),
  ADD KEY `idx_extension` (`extension`),
  ADD KEY `idx_default` (`default`),
  ADD KEY `idx_created` (`created`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_modified` (`modified`),
  ADD KEY `idx_modified_by` (`modified_by`),
  ADD KEY `idx_checked_out` (`checked_out`);

--
-- Indices de la tabla `oh67l_workflow_associations`
--
ALTER TABLE `oh67l_workflow_associations`
  ADD PRIMARY KEY (`item_id`,`extension`),
  ADD KEY `idx_item_stage_extension` (`item_id`,`stage_id`,`extension`),
  ADD KEY `idx_item_id` (`item_id`),
  ADD KEY `idx_stage_id` (`stage_id`),
  ADD KEY `idx_extension` (`extension`);

--
-- Indices de la tabla `oh67l_workflow_stages`
--
ALTER TABLE `oh67l_workflow_stages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_workflow_id` (`workflow_id`),
  ADD KEY `idx_checked_out` (`checked_out`),
  ADD KEY `idx_title` (`title`(191)),
  ADD KEY `idx_asset_id` (`asset_id`),
  ADD KEY `idx_default` (`default`);

--
-- Indices de la tabla `oh67l_workflow_transitions`
--
ALTER TABLE `oh67l_workflow_transitions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_title` (`title`(191)),
  ADD KEY `idx_asset_id` (`asset_id`),
  ADD KEY `idx_checked_out` (`checked_out`),
  ADD KEY `idx_from_stage_id` (`from_stage_id`),
  ADD KEY `idx_to_stage_id` (`to_stage_id`),
  ADD KEY `idx_workflow_id` (`workflow_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `oh67l_action_logs`
--
ALTER TABLE `oh67l_action_logs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `oh67l_action_logs_extensions`
--
ALTER TABLE `oh67l_action_logs_extensions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `oh67l_action_log_config`
--
ALTER TABLE `oh67l_action_log_config`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `oh67l_assets`
--
ALTER TABLE `oh67l_assets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT de la tabla `oh67l_banners`
--
ALTER TABLE `oh67l_banners`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oh67l_banner_clients`
--
ALTER TABLE `oh67l_banner_clients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oh67l_categories`
--
ALTER TABLE `oh67l_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `oh67l_contact_details`
--
ALTER TABLE `oh67l_contact_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oh67l_content`
--
ALTER TABLE `oh67l_content`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `oh67l_content_types`
--
ALTER TABLE `oh67l_content_types`
  MODIFY `type_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- AUTO_INCREMENT de la tabla `oh67l_extensions`
--
ALTER TABLE `oh67l_extensions`
  MODIFY `extension_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT de la tabla `oh67l_fields`
--
ALTER TABLE `oh67l_fields`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oh67l_fields_groups`
--
ALTER TABLE `oh67l_fields_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oh67l_finder_filters`
--
ALTER TABLE `oh67l_finder_filters`
  MODIFY `filter_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oh67l_finder_links`
--
ALTER TABLE `oh67l_finder_links`
  MODIFY `link_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `oh67l_finder_taxonomy`
--
ALTER TABLE `oh67l_finder_taxonomy`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `oh67l_finder_terms`
--
ALTER TABLE `oh67l_finder_terms`
  MODIFY `term_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=465;

--
-- AUTO_INCREMENT de la tabla `oh67l_finder_types`
--
ALTER TABLE `oh67l_finder_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `oh67l_guidedtours`
--
ALTER TABLE `oh67l_guidedtours`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `oh67l_guidedtour_steps`
--
ALTER TABLE `oh67l_guidedtour_steps`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT de la tabla `oh67l_history`
--
ALTER TABLE `oh67l_history`
  MODIFY `version_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `oh67l_languages`
--
ALTER TABLE `oh67l_languages`
  MODIFY `lang_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `oh67l_menu`
--
ALTER TABLE `oh67l_menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT de la tabla `oh67l_menu_types`
--
ALTER TABLE `oh67l_menu_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `oh67l_messages`
--
ALTER TABLE `oh67l_messages`
  MODIFY `message_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oh67l_modules`
--
ALTER TABLE `oh67l_modules`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT de la tabla `oh67l_newsfeeds`
--
ALTER TABLE `oh67l_newsfeeds`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oh67l_overrider`
--
ALTER TABLE `oh67l_overrider`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT de la tabla `oh67l_postinstall_messages`
--
ALTER TABLE `oh67l_postinstall_messages`
  MODIFY `postinstall_message_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `oh67l_privacy_consents`
--
ALTER TABLE `oh67l_privacy_consents`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oh67l_privacy_requests`
--
ALTER TABLE `oh67l_privacy_requests`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oh67l_redirect_links`
--
ALTER TABLE `oh67l_redirect_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oh67l_scheduler_tasks`
--
ALTER TABLE `oh67l_scheduler_tasks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `oh67l_schemaorg`
--
ALTER TABLE `oh67l_schemaorg`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oh67l_tags`
--
ALTER TABLE `oh67l_tags`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `oh67l_template_overrides`
--
ALTER TABLE `oh67l_template_overrides`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oh67l_template_styles`
--
ALTER TABLE `oh67l_template_styles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `oh67l_tuf_metadata`
--
ALTER TABLE `oh67l_tuf_metadata`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `oh67l_ucm_content`
--
ALTER TABLE `oh67l_ucm_content`
  MODIFY `core_content_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oh67l_updates`
--
ALTER TABLE `oh67l_updates`
  MODIFY `update_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT de la tabla `oh67l_update_sites`
--
ALTER TABLE `oh67l_update_sites`
  MODIFY `update_site_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `oh67l_usergroups`
--
ALTER TABLE `oh67l_usergroups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `oh67l_users`
--
ALTER TABLE `oh67l_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=979;

--
-- AUTO_INCREMENT de la tabla `oh67l_user_keys`
--
ALTER TABLE `oh67l_user_keys`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `oh67l_user_mfa`
--
ALTER TABLE `oh67l_user_mfa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oh67l_user_notes`
--
ALTER TABLE `oh67l_user_notes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `oh67l_viewlevels`
--
ALTER TABLE `oh67l_viewlevels`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `oh67l_workflows`
--
ALTER TABLE `oh67l_workflows`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `oh67l_workflow_stages`
--
ALTER TABLE `oh67l_workflow_stages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `oh67l_workflow_transitions`
--
ALTER TABLE `oh67l_workflow_transitions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
