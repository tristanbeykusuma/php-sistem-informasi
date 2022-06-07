-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2022 at 05:19 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `a7mom_finder_taxonomy`
--

CREATE TABLE `a7mom_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `access` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a7mom_finder_taxonomy`
--

INSERT INTO `a7mom_finder_taxonomy` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `state`, `access`, `language`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', 1, 1, '*');

-- --------------------------------------------------------

--
-- Table structure for table `a7mom_finder_types`
--

CREATE TABLE `a7mom_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a7mom_finder_types`
--

INSERT INTO `a7mom_finder_types` (`id`, `title`, `mime`) VALUES
(1, 'Category', ''),
(2, 'Contact', ''),
(3, 'Article', ''),
(4, 'News Feed', ''),
(5, 'Tag', '');

-- --------------------------------------------------------

--
-- Table structure for table `a7mom_languages`
--

CREATE TABLE `a7mom_languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a7mom_languages`
--

INSERT INTO `a7mom_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `a7mom_mail_templates`
--

CREATE TABLE `a7mom_mail_templates` (
  `template_id` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `htmlbody` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a7mom_mail_templates`
--

INSERT INTO `a7mom_mail_templates` (`template_id`, `extension`, `language`, `subject`, `body`, `htmlbody`, `attachments`, `params`) VALUES
('com_actionlogs.notification', 'com_actionlogs', '', 'COM_ACTIONLOGS_EMAIL_SUBJECT', 'COM_ACTIONLOGS_EMAIL_BODY', 'COM_ACTIONLOGS_EMAIL_HTMLBODY', '', '{\"tags\":[\"message\",\"date\",\"extension\"]}'),
('com_config.test_mail', 'com_config', '', 'COM_CONFIG_SENDMAIL_SUBJECT', 'COM_CONFIG_SENDMAIL_BODY', '', '', '{\"tags\":[\"sitename\",\"method\"]}'),
('com_contact.mail', 'com_contact', '', 'COM_CONTACT_ENQUIRY_SUBJECT', 'COM_CONTACT_ENQUIRY_TEXT', '', '', '{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\"]}'),
('com_contact.mail.copy', 'com_contact', '', 'COM_CONTACT_COPYSUBJECT_OF', 'COM_CONTACT_COPYTEXT_OF', '', '', '{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\"]}'),
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
('com_users.registration.user.registration_mail', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_BODY_NOPW', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.registration_mail_w_pw', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.registration.user.self_activation', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY_NOPW', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.self_activation_w_pw', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.reminder', 'com_users', '', 'COM_USERS_EMAIL_USERNAME_REMINDER_SUBJECT', 'COM_USERS_EMAIL_USERNAME_REMINDER_BODY', '', '', '{\"tags\":[\"name\",\"username\",\"sitename\",\"email\",\"link_text\",\"link_html\"]}'),
('plg_system_privacyconsent.request.reminder', 'plg_system_privacyconsent', '', 'PLG_SYSTEM_PRIVACYCONSENT_EMAIL_REMIND_SUBJECT', 'PLG_SYSTEM_PRIVACYCONSENT_EMAIL_REMIND_BODY', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('plg_system_tasknotification.failure_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_BODY', '', '', '{\"tags\": [\"task_id\", \"task_title\", \"exit_code\", \"exec_data_time\", \"task_output\"]}'),
('plg_system_tasknotification.fatal_recovery_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_BODY', '', '', '{\"tags\": [\"task_id\", \"task_title\"]}'),
('plg_system_tasknotification.orphan_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_BODY', '', '', '{\"tags\": [\"task_id\", \"task_title\"]}'),
('plg_system_tasknotification.success_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_BODY', '', '', '{\"tags\":[\"task_id\", \"task_title\", \"exec_data_time\", \"task_output\"]}'),
('plg_system_updatenotification.mail', 'plg_system_updatenotification', '', 'PLG_SYSTEM_UPDATENOTIFICATION_EMAIL_SUBJECT', 'PLG_SYSTEM_UPDATENOTIFICATION_EMAIL_BODY', '', '', '{\"tags\":[\"newversion\",\"curversion\",\"sitename\",\"url\",\"link\",\"releasenews\"]}'),
('plg_user_joomla.mail', 'plg_user_joomla', '', 'PLG_USER_JOOMLA_NEW_USER_EMAIL_SUBJECT', 'PLG_USER_JOOMLA_NEW_USER_EMAIL_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"url\",\"username\",\"password\",\"email\"]}');

-- --------------------------------------------------------

--
-- Table structure for table `a7mom_menu`
--

CREATE TABLE `a7mom_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED DEFAULT NULL COMMENT 'FK to #__users.id',
  `checked_out_time` datetime DEFAULT NULL COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT 0,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a7mom_menu`
--

INSERT INTO `a7mom_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`, `publish_up`, `publish_down`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, NULL, NULL, 0, 0, '', 0, '', 0, 83, 0, '*', 0, NULL, NULL),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 3, NULL, NULL, 0, 0, 'class:bookmark', 0, '', 1, 10, 0, '*', 1, NULL, NULL),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners&view=banners', 'component', 1, 2, 2, 3, NULL, NULL, 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1, NULL, NULL),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&view=categories&extension=com_banners', 'component', 1, 2, 2, 5, NULL, NULL, 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1, NULL, NULL),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 3, NULL, NULL, 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1, NULL, NULL),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 3, NULL, NULL, 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1, NULL, NULL),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 7, NULL, NULL, 0, 0, 'class:address-book', 0, '', 11, 20, 0, '*', 1, NULL, NULL),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact&view=contacts', 'component', 1, 7, 2, 7, NULL, NULL, 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1, NULL, NULL),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&view=categories&extension=com_contact', 'component', 1, 7, 2, 5, NULL, NULL, 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1, NULL, NULL),
(10, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 16, NULL, NULL, 0, 0, 'class:rss', 0, '', 23, 28, 0, '*', 1, NULL, NULL),
(11, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds&view=newsfeeds', 'component', 1, 10, 2, 16, NULL, NULL, 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1, NULL, NULL),
(12, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&view=categories&extension=com_newsfeeds', 'component', 1, 10, 2, 5, NULL, NULL, 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1, NULL, NULL),
(13, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 23, NULL, NULL, 0, 0, 'class:search-plus', 0, '', 29, 38, 0, '*', 1, NULL, NULL),
(14, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags&view=tags', 'component', 1, 1, 1, 25, NULL, NULL, 0, 1, 'class:tags', 0, '', 39, 40, 0, '', 1, NULL, NULL),
(15, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations&view=associations', 'component', 1, 1, 1, 30, NULL, NULL, 0, 0, 'class:language', 0, '', 21, 22, 0, '*', 1, NULL, NULL),
(16, 'main', 'mod_menu_fields', 'Contact Custom Fields', '', 'Contacts/Contact Custom Fields', 'index.php?option=com_fields&context=com_contact.contact', 'component', 1, 7, 2, 29, NULL, NULL, 0, 0, 'class:messages-add', 0, '', 16, 17, 0, '*', 1, NULL, NULL),
(17, 'main', 'mod_menu_fields_group', 'Contact Custom Fields Group', '', 'Contacts/Contact Custom Fields Group', 'index.php?option=com_fields&view=groups&context=com_contact.contact', 'component', 1, 7, 2, 29, NULL, NULL, 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1, NULL, NULL),
(18, 'main', 'com_finder_index', 'Smart-Search-Index', '', 'Smart Search/Smart-Search-Index', 'index.php?option=com_finder&view=index', 'component', 1, 13, 2, 23, NULL, NULL, 0, 0, 'class:finder', 0, '', 30, 31, 0, '*', 1, NULL, NULL),
(19, 'main', 'com_finder_maps', 'Smart-Search-Maps', '', 'Smart Search/Smart-Search-Maps', 'index.php?option=com_finder&view=maps', 'component', 1, 13, 2, 23, NULL, NULL, 0, 0, 'class:finder-maps', 0, '', 32, 33, 0, '*', 1, NULL, NULL),
(20, 'main', 'com_finder_filters', 'Smart-Search-Filters', '', 'Smart Search/Smart-Search-Filters', 'index.php?option=com_finder&view=filters', 'component', 1, 13, 2, 23, NULL, NULL, 0, 0, 'class:finder-filters', 0, '', 34, 35, 0, '*', 1, NULL, NULL),
(21, 'main', 'com_finder_searches', 'Smart-Search-Searches', '', 'Smart Search/Smart-Search-Searches', 'index.php?option=com_finder&view=searches', 'component', 1, 13, 2, 23, NULL, NULL, 0, 0, 'class:finder-searches', 0, '', 36, 37, 0, '*', 1, NULL, NULL),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 19, NULL, NULL, 0, 2, ' ', 14, '{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":1,\"blog_class_leading\":\"\",\"num_intro_articles\":3,\"blog_class\":\"\",\"num_columns\":\"\",\"multi_column_order\":\"\",\"num_links\":0,\"link_intro_image\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"helixultimatemenulayout\":\"\",\"helixultimate_enable_page_title\":\"0\",\"helixultimate_page_title_alt\":\"\",\"helixultimate_page_subtitle\":\"\",\"helixultimate_page_title_heading\":\"h2\",\"helixultimate_page_title_bg_color\":\"\",\"helixultimate_page_title_bg_image\":\"\"}', 41, 42, 0, '*', 0, NULL, NULL),
(102, 'main', 'COM_JCDASHBOARDS', 'com-jcdashboards', '', 'com-jcdashboards', 'index.php?option=com_jcdashboards', 'component', 1, 1, 1, 231, NULL, NULL, 0, 1, '../administrator/components/com_jcdashboards/assets/jcdashboards-16.png', 0, '{}', 43, 54, 0, '', 1, NULL, NULL),
(103, 'main', 'COM_JCDASHBOARDS_DASHBOARDS', 'com-jcdashboards-dashboards', '', 'com-jcdashboards/com-jcdashboards-dashboards', 'index.php?option=com_jcdashboards&task=display&controller=dashboard', 'component', 1, 102, 2, 231, NULL, NULL, 0, 1, 'class:component', 0, '{}', 44, 45, 0, '', 1, NULL, NULL),
(104, 'main', 'COM_JCLAYOUTS', 'com-jclayouts', '', 'com-jcdashboards/com-jclayouts', 'index.php?option=com_jcdashboards&task=display&controller=layout', 'component', 1, 102, 2, 231, NULL, NULL, 0, 1, 'class:component', 0, '{}', 46, 47, 0, '', 1, NULL, NULL),
(105, 'main', 'COM_JCDASHBOARDS_DATACONNECTOR', 'com-jcdashboards-dataconnector', '', 'com-jcdashboards/com-jcdashboards-dataconnector', 'index.php?option=com_jcdashboards&task=display&controller=dataconnector', 'component', 1, 102, 2, 231, NULL, NULL, 0, 1, 'class:component', 0, '{}', 48, 49, 0, '', 1, NULL, NULL),
(106, 'main', 'COM_JCDASHBOARDS_DATABASES', 'com-jcdashboards-databases', '', 'com-jcdashboards/com-jcdashboards-databases', 'index.php?option=com_jcdashboards&task=display&controller=database', 'component', 1, 102, 2, 231, NULL, NULL, 0, 1, 'class:component', 0, '{}', 50, 51, 0, '', 1, NULL, NULL),
(107, 'main', 'About\n			<html>\n        		<a class=\"wikidoc-link\" target=\"_blank\" href=\"https://mywikidocs.com/api/wiki/wiki.php?aid=112&sk=7829006dhs9784\">Wiki Docs</a>\n        	</html>', 'about-html-a-class-wikidoc-link-target-blank-href-https-mywikidocs-com-api-wiki-wiki-php-aid-112-sk-7829006dhs9784-wiki-docs-a-html', '', 'com-jcdashboards/about-html-a-class-wikidoc-link-target-blank-href-https-mywikidocs-com-api-wiki-wiki-php-aid-112-sk-7829006dhs9784-wiki-docs-a-html', 'index.php?option=com_jcdashboards&task=display&controller=about', 'component', 1, 102, 2, 231, NULL, NULL, 0, 1, 'class:component', 0, '{}', 52, 53, 0, '', 1, NULL, NULL),
(108, 'main', 'COM_JSTATS', 'com-jstats', '', 'com-jstats', 'index.php?option=com_jstats', 'component', 1, 1, 1, 232, NULL, NULL, 0, 1, 'class:component', 0, '{}', 55, 60, 0, '', 1, NULL, NULL),
(109, 'main', 'COM_JSTATS_TITLE_DASHBOARDS', 'com-jstats-title-dashboards', '', 'com-jstats/com-jstats-title-dashboards', 'index.php?option=com_jstats&view=dashboards', 'component', 1, 108, 2, 232, NULL, NULL, 0, 1, 'class:component', 0, '{}', 56, 57, 0, '', 1, NULL, NULL),
(110, 'main', 'COM_JSTATS_TITLE_APPSCENTER', 'com-jstats-title-appscenter', '', 'com-jstats/com-jstats-title-appscenter', 'index.php?option=com_jstats&view=appscenter', 'component', 1, 108, 2, 232, NULL, NULL, 0, 1, 'class:component', 0, '{}', 58, 59, 0, '', 1, NULL, NULL),
(111, 'login', 'Login Type', 'login-type', '', 'login-type', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 19, NULL, NULL, 0, 1, ' ', 0, '{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"\",\"blog_class_leading\":\"\",\"num_intro_articles\":\"\",\"blog_class\":\"\",\"num_columns\":\"\",\"multi_column_order\":\"\",\"num_links\":\"\",\"link_intro_image\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"helixultimatemenulayout\":\"\",\"helixultimate_enable_page_title\":\"0\",\"helixultimate_page_title_alt\":\"\",\"helixultimate_page_subtitle\":\"\",\"helixultimate_page_title_heading\":\"h2\",\"helixultimate_page_title_bg_color\":\"\",\"helixultimate_page_title_bg_image\":\"\"}', 61, 62, 1, '*', 0, NULL, NULL),
(112, 'mainmenu', 'Dashboard', 'dashboard', '', 'dashboard', 'index.php?option=com_jcdashboards&view=dashboard', 'component', -2, 1, 1, 231, NULL, NULL, 1, 2, ' ', 14, '{\"page_hdr\":\"Dashboard\",\"dashboard_id\":\"1\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"helixultimatemenulayout\":\"\",\"helixultimate_enable_page_title\":\"0\",\"helixultimate_page_title_alt\":\"\",\"helixultimate_page_subtitle\":\"\",\"helixultimate_page_title_heading\":\"h2\",\"helixultimate_page_title_bg_color\":\"\",\"helixultimate_page_title_bg_image\":\"\"}', 63, 64, 0, '*', 0, NULL, NULL),
(114, 'main', 'COM_JCTABLES', 'com-jctables', '', 'com-jctables', 'index.php?option=com_jctables', 'component', 1, 1, 1, 244, NULL, NULL, 0, 1, '../administrator/components/com_jctables/assets/jctables-16.png', 0, '{}', 67, 80, 0, '', 1, NULL, NULL),
(115, 'main', 'COM_JCTABLES_JCTABLES', 'com-jctables-jctables', '', 'com-jctables/com-jctables-jctables', 'index.php?option=com_jctables&task=display&controller=jctable', 'component', 1, 114, 2, 244, NULL, NULL, 0, 1, 'class:component', 0, '{}', 68, 69, 0, '', 1, NULL, NULL),
(116, 'main', 'COM_JCTABLES_TEMPLATES', 'com-jctables-templates', '', 'com-jctables/com-jctables-templates', 'index.php?option=com_jctables&task=display&controller=template', 'component', 1, 114, 2, 244, NULL, NULL, 0, 1, 'class:component', 0, '{}', 70, 71, 0, '', 1, NULL, NULL),
(117, 'main', 'JCATEGORIES', 'jcategories', '', 'com-jctables/jcategories', 'index.php?option=com_jctables&task=display&controller=category', 'component', 1, 114, 2, 244, NULL, NULL, 0, 1, 'class:component', 0, '{}', 72, 73, 0, '', 1, NULL, NULL),
(118, 'main', 'COM_JCTABLES_DATABASES', 'com-jctables-databases', '', 'com-jctables/com-jctables-databases', 'index.php?option=com_jctables&task=display&controller=database', 'component', 1, 114, 2, 244, NULL, NULL, 0, 1, 'class:component', 0, '{}', 74, 75, 0, '', 1, NULL, NULL),
(119, 'main', 'COM_JCTABLES_ABOUT', 'com-jctables-about', '', 'com-jctables/com-jctables-about', 'index.php?option=com_jctables&task=display&controller=about', 'component', 1, 114, 2, 244, NULL, NULL, 0, 1, 'class:component', 0, '{}', 76, 77, 0, '', 1, NULL, NULL),
(120, 'main', 'COM_JCTABLES_DB_MANAGER', 'com-jctables-db-manager', '', 'com-jctables/com-jctables-db-manager', 'index.php?option=com_jctables&task=display&controller=dbadmin', 'component', 1, 114, 2, 244, NULL, NULL, 0, 1, 'class:component', 0, '{}', 78, 79, 0, '', 1, NULL, NULL),
(121, 'database', 'Db', 'db', '', 'db', 'index.php?option=com_jctables&view=simple', 'component', 1, 1, 1, 244, NULL, NULL, 0, 2, ' ', 0, '{\"page_hdr\":\"Database\",\"table_ids\":\"1\",\"menu_prefilter\":\"\",\"tree_prefilter\":\"\",\"top_text\":\"\",\"bottom_text\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\",\"helixultimatemenulayout\":\"\",\"helixultimate_enable_page_title\":\"0\",\"helixultimate_page_title_alt\":\"\",\"helixultimate_page_subtitle\":\"\",\"helixultimate_page_title_heading\":\"h2\",\"helixultimate_page_title_bg_color\":\"\",\"helixultimate_page_title_bg_image\":\"\"}', 81, 82, 0, '*', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `a7mom_menu_types`
--

CREATE TABLE `a7mom_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a7mom_menu_types`
--

INSERT INTO `a7mom_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 54, 'mainmenu', 'Main Menu', 'The main menu for the site', 0),
(2, 97, 'login', 'Login Form', '', 0),
(4, 103, 'database', 'Data', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `a7mom_redirect_links`
--

CREATE TABLE `a7mom_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `header` smallint(6) NOT NULL DEFAULT 301
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `a7mom_schemas`
--

CREATE TABLE `a7mom_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a7mom_schemas`
--

INSERT INTO `a7mom_schemas` (`extension_id`, `version_id`) VALUES
(220, '4.1.1-2022-02-20');

-- --------------------------------------------------------

--
-- Table structure for table `a7mom_session`
--

CREATE TABLE `a7mom_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(3) UNSIGNED DEFAULT 1,
  `time` int(11) NOT NULL DEFAULT 0,
  `data` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` int(11) DEFAULT 0,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a7mom_session`
--

INSERT INTO `a7mom_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
(0x396564366462723536306a6d6a6b766132693672696f36343762, 1, 0, 1654048484, 'joomla|s:3696:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjg6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNjU0MDQzOTAwO3M6NDoibGFzdCI7aToxNjU0MDQ4NDg0O3M6Mzoibm93IjtpOjE2NTQwNDg0ODQ7fXM6NToidG9rZW4iO3M6MzI6IjM0NTkxYTFjZDU5YWM0MGQxNDVkNGY4YWE4MDE1ZTg5IjtzOjc6ImNvdW50ZXIiO2k6NDIxO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6NTp7czo5OiJjb21fbWVudXMiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJpdGVtIjtPOjg6InN0ZENsYXNzIjo0OntzOjI6ImlkIjthOjE6e2k6MDtpOjEwMTt9czo0OiJkYXRhIjtOO3M6NDoidHlwZSI7TjtzOjQ6ImxpbmsiO047fXM6NDoibWVudSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJkYXRhIjtOO3M6MjoiaWQiO2E6MDp7fX19czo1OiJpdGVtcyI7Tzo4OiJzdGRDbGFzcyI6NDp7czo4OiJtZW51dHlwZSI7czo4OiJtYWlubWVudSI7czo5OiJjbGllbnRfaWQiO2k6MDtzOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtpOjIwO3M6ODoib3JkZXJpbmciO3M6NToiYS5sZnQiO3M6NToic3RhcnQiO2Q6MDt9czoxMDoibGltaXRzdGFydCI7aTowO319czoxMToiY29tX21vZHVsZXMiO086ODoic3RkQ2xhc3MiOjM6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJtb2R1bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7Tjt9fXM6MzoiYWRkIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Im1vZHVsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxMjoiZXh0ZW5zaW9uX2lkIjtOO3M6NjoicGFyYW1zIjtOO319czo3OiJtb2R1bGVzIjtPOjg6InN0ZENsYXNzIjozOntzOjE6IjAiO086ODoic3RkQ2xhc3MiOjI6e3M6OToiY2xpZW50X2lkIjtpOjA7czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7aToyMDtzOjg6Im9yZGVyaW5nIjtzOjEwOiJhLnBvc2l0aW9uIjtzOjU6InN0YXJ0IjtkOjA7fX1zOjk6ImNsaWVudF9pZCI7czoxOiIwIjtzOjE6IjEiO086ODoic3RkQ2xhc3MiOjM6e3M6OToiY2xpZW50X2lkIjtpOjE7czoxMDoibGltaXRzdGFydCI7aTowO3M6NDoibGlzdCI7YTo0OntzOjk6ImRpcmVjdGlvbiI7czozOiJhc2MiO3M6NToibGltaXQiO2k6MjA7czo4OiJvcmRlcmluZyI7czoxMDoiYS5wb3NpdGlvbiI7czo1OiJzdGFydCI7ZDowO319fX1zOjEwOiJjb21fY29uZmlnIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiY29tcG9uZW50IjtPOjg6InN0ZENsYXNzIjozOntzOjExOiJjb21fbW9kdWxlcyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJkYXRhIjtOO31zOjE2OiJjb21famNkYXNoYm9hcmRzIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImRhdGEiO2E6MDp7fX1zOjEyOiJjb21famN0YWJsZXMiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZGF0YSI7Tjt9fX19czoxMDoiY29tX2ZpZWxkcyI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo2OiJmaWVsZHMiO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY29udGV4dCI7czoxOToiY29tX2NvbnRlbnQuYXJ0aWNsZSI7czo0OiJsaXN0IjthOjI6e3M6MTI6ImZ1bGxvcmRlcmluZyI7czoxNDoiYS5vcmRlcmluZyBBU0MiO3M6NToibGltaXQiO3M6MjoiMjAiO31zOjY6ImZpbHRlciI7YTo2OntzOjY6InNlYXJjaCI7czowOiIiO3M6NToic3RhdGUiO3M6MDoiIjtzOjg6Imdyb3VwX2lkIjtzOjA6IiI7czoxNjoiYXNzaWduZWRfY2F0X2lkcyI7czowOiIiO3M6NjoiYWNjZXNzIjtzOjA6IiI7czoxOToib25seV91c2VfaW5fc3ViZm9ybSI7czowOiIiO319czo2OiJncm91cHMiO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY29udGV4dCI7czoxOToiY29tX2NvbnRlbnQuYXJ0aWNsZSI7czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7aToyMDtzOjg6Im9yZGVyaW5nIjtzOjEwOiJhLm9yZGVyaW5nIjtzOjU6InN0YXJ0IjtkOjA7fX1zOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NToiZmllbGQiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZGF0YSI7Tjt9fX1zOjEzOiJjb21faW5zdGFsbGVyIjtPOjg6InN0ZENsYXNzIjozOntzOjc6Im1lc3NhZ2UiO3M6MDoiIjtzOjE3OiJleHRlbnNpb25fbWVzc2FnZSI7czowOiIiO3M6MTI6InJlZGlyZWN0X3VybCI7Tjt9fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6NDY0O31zOjExOiJhcHBsaWNhdGlvbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJxdWV1ZSI7YTowOnt9fXM6MTg6ImpzdGF0cy1kYXRlLXNlbGVjdCI7czoxMzoiTW9udGggdG8gRGF0ZSI7czoxNzoianN0YXRzLWRhdGUtc3RhcnQiO3M6MTA6IjIwMjItMDYtMDEiO3M6MTU6ImpzdGF0cy1kYXRlLWVuZCI7czoxMDoiMjAyMi0wNi0wMiI7czo4OiJvdmVycmlkZSI7Tzo4OiJzdGRDbGFzcyI6MDp7fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 464, 'user'),
(0x683130303761706172697563617265763762726170656a686263, 0, 0, 1654068396, 'joomla|s:924:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjM6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNjU0MDQ1NTk1O3M6NDoibGFzdCI7aToxNjU0MDY4MDYyO3M6Mzoibm93IjtpOjE2NTQwNjgzOTY7fXM6NzoiY291bnRlciI7aTo2NDtzOjU6InRva2VuIjtzOjMyOiIxYjFjZmJlZmQ1ZTQyNzI1OTc3OTMyOTZiYjFiYWI4ZSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoyOntzOjU6InVzZXJzIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6ImxvZ2luIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImZvcm0iO086ODoic3RkQ2xhc3MiOjI6e3M6NjoicmV0dXJuIjtzOjIwOiJpbmRleC5waHA/SXRlbWlkPTEwMSI7czo0OiJkYXRhIjthOjA6e319fX1zOjEzOiJyZW1lbWJlckxvZ2luIjtiOjE7fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6NDY0O319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 464, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `a7mom_tags`
--

CREATE TABLE `a7mom_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a7mom_tags`
--

INSERT INTO `a7mom_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, NULL, NULL, 1, '', '', '', '', 464, '2022-03-31 01:26:01', '', 464, '2022-03-31 01:26:01', '', '', 0, '*', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `a7mom_template_overrides`
--

CREATE TABLE `a7mom_template_overrides` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hash_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension_id` int(11) DEFAULT 0,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `action` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `a7mom_template_styles`
--

CREATE TABLE `a7mom_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inheritable` tinyint(4) NOT NULL DEFAULT 0,
  `parent` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a7mom_template_styles`
--

INSERT INTO `a7mom_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `inheritable`, `parent`, `params`) VALUES
(10, 'atum', 1, '1', 'Atum - Default', 1, '', '{\"hue\":\"hsl(214, 63%, 20%)\",\"bg-light\":\"#f0f4fb\",\"text-dark\":\"#495057\",\"text-light\":\"#ffffff\",\"link-color\":\"#2a69b8\",\"special-color\":\"#001b4c\",\"monochrome\":\"0\",\"loginLogo\":\"\",\"loginLogoAlt\":\"\",\"logoBrandLarge\":\"\",\"logoBrandLargeAlt\":\"\",\"logoBrandSmall\":\"\",\"logoBrandSmallAlt\":\"\"}'),
(11, 'cassiopeia', 0, '0', 'Cassiopeia - Default', 1, '', '{\"brand\":false,\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":0,\"backTop\":0}'),
(12, 'dentalcare', 0, '0', 'Dental Care - Default', 0, '', '{\"logo\":\"images\\/Screenshot_4.jpg#joomlaImage:\\/\\/local-images\\/Screenshot_4.jpg?width=306&height=52\"}'),
(13, 'et_metrix', 0, '0', 'et_metrix - Default', 0, '', '{\"logo_type\":\"text\",\"logo_image\":\"images\\/logo03.png\",\"retina_logo\":\"\",\"mobile_logo\":\"\",\"logo_alt\":\"\",\"logo_height\":\"48px\",\"logo_height_sm\":\"\",\"logo_height_xs\":\"\",\"logo_text\":\"ET METRIX\",\"logo_slogan\":\"\",\"favicon\":\"images\\/favicon.ico\",\"predefined_header\":\"1\",\"header_style\":\"3-MinimalLayout\",\"header_height\":\"80px\",\"header_height_sm\":\"50px\",\"header_height_xs\":\"40px\",\"sticky_header\":\"1\",\"sticky_offset\":\"\",\"loader_type\":\"circle\",\"body_bg_image\":\"\",\"body_bg_repeat\":\"inherit\",\"body_bg_position\":\"0 0\",\"body_bg_size\":\"inherit\",\"body_bg_attachment\":\"inherit\",\"enabled_copyright\":\"1\",\"copyright_position\":\"footer1\",\"copyright_load_pos\":\"default\",\"copyright\":\"<div align=\\\"center\\\">Copyright \\u00a9 2021 <a target=\\\"_blank\\\" title=\\\"Free Joomla! 4 templates\\\" href=\\\"https:\\/\\/enginetemplates.com\\/free-joomla-templates\\/\\\" rel=\\\"author nofollow\\\">Free Joomla! 4 templates<\\/a> \\/ Design by <a target=\\\"_blank\\\" href=\\\"https:\\/\\/enginetemplates.com\\/\\\" title=\\\"Joomla template provider\\\" rel=\\\"author nofollow\\\">Engine Templates<\\/a><\\/div>\",\"goto_top\":\"1\",\"show_social_icons\":\"1\",\"social_position\":\"top1\",\"social_load_pos\":\"after\",\"facebook\":\"#\",\"twitter\":\"#\",\"pinterest\":\"#\",\"linkedin\":\"#\",\"dribbble\":\"\",\"instagram\":\"#\",\"behance\":\"\",\"youtube\":\"#\",\"flickr\":\"#\",\"skype\":\"\",\"whatsapp\":\"\",\"vk\":\"\",\"custom\":\"\",\"contactinfo\":\"1\",\"contact_position\":\"top2\",\"contact_load_pos\":\"default\",\"contact_phone\":\"+228 872 4444\",\"contact_mobile\":\"+88 00 111 222 33\",\"contact_email\":\"info@joomshaper.com\",\"contact_time\":\"\",\"comingsoon_title\":\"Coming Soon Title\",\"comingsoon_content\":\"Coming soon content\",\"comingsoon_date\":\"10-10-2021\",\"comingsoon_logo\":\"\",\"comingsoon_bg_image\":\"\",\"error_logo\":\"\",\"error_bg\":\"\",\"presets-data\":\"{\\\"preset1\\\":{\\\"label\\\":\\\"Preset 1\\\",\\\"default\\\":\\\"#0345BF\\\",\\\"description\\\":\\\"\\\",\\\"data\\\":{\\\"text_color\\\":\\\"#252525\\\",\\\"preset\\\":\\\"preset1\\\",\\\"bg_color\\\":\\\"#FFFFFF\\\",\\\"link_color\\\":\\\"#0345BF\\\",\\\"link_hover_color\\\":\\\"#044CD0\\\",\\\"header_bg_color\\\":\\\"#FFFFFF\\\",\\\"topbar_bg_color\\\":\\\"#333333\\\",\\\"topbar_text_color\\\":\\\"#AAAAAA\\\",\\\"logo_text_color\\\":\\\"#0345BF\\\",\\\"menu_text_color\\\":\\\"#252525\\\",\\\"menu_text_hover_color\\\":\\\"#0345BF\\\",\\\"menu_text_active_color\\\":\\\"#0345BF\\\",\\\"menu_dropdown_bg_color\\\":\\\"#FFFFFF\\\",\\\"menu_dropdown_text_color\\\":\\\"#252525\\\",\\\"menu_dropdown_text_hover_color\\\":\\\"#0345BF\\\",\\\"menu_dropdown_text_active_color\\\":\\\"#0345BF\\\",\\\"footer_bg_color\\\":\\\"#171717\\\",\\\"footer_text_color\\\":\\\"#FFFFFF\\\",\\\"footer_link_color\\\":\\\"#A2A2A2\\\",\\\"footer_link_hover_color\\\":\\\"#FFFFFF\\\"}},\\\"preset2\\\":{\\\"label\\\":\\\"Preset 2\\\",\\\"default\\\":\\\"#ec430f\\\",\\\"description\\\":\\\"\\\",\\\"data\\\":{\\\"text_color\\\":\\\"#252525\\\",\\\"preset\\\":\\\"preset2\\\",\\\"bg_color\\\":\\\"#FFFFFF\\\",\\\"link_color\\\":\\\"#ec430f\\\",\\\"link_hover_color\\\":\\\"#044CD0\\\",\\\"header_bg_color\\\":\\\"#FFFFFF\\\",\\\"topbar_bg_color\\\":\\\"#333333\\\",\\\"topbar_text_color\\\":\\\"#AAAAAA\\\",\\\"logo_text_color\\\":\\\"#ec430f\\\",\\\"menu_text_color\\\":\\\"#252525\\\",\\\"menu_text_hover_color\\\":\\\"#ec430f\\\",\\\"menu_text_active_color\\\":\\\"#ec430f\\\",\\\"menu_dropdown_bg_color\\\":\\\"#FFFFFF\\\",\\\"menu_dropdown_text_color\\\":\\\"#252525\\\",\\\"menu_dropdown_text_hover_color\\\":\\\"#ec430f\\\",\\\"menu_dropdown_text_active_color\\\":\\\"#ec430f\\\",\\\"footer_bg_color\\\":\\\"#171717\\\",\\\"footer_text_color\\\":\\\"#FFFFFF\\\",\\\"footer_link_color\\\":\\\"#A2A2A2\\\",\\\"footer_link_hover_color\\\":\\\"#FFFFFF\\\"}},\\\"preset3\\\":{\\\"label\\\":\\\"Preset 3\\\",\\\"default\\\":\\\"#0fa89d\\\",\\\"description\\\":\\\"\\\",\\\"data\\\":{\\\"text_color\\\":\\\"#252525\\\",\\\"preset\\\":\\\"preset3\\\",\\\"bg_color\\\":\\\"#FFFFFF\\\",\\\"link_color\\\":\\\"#0fa89d\\\",\\\"link_hover_color\\\":\\\"#044CD0\\\",\\\"header_bg_color\\\":\\\"#FFFFFF\\\",\\\"topbar_bg_color\\\":\\\"#333333\\\",\\\"topbar_text_color\\\":\\\"#AAAAAA\\\",\\\"logo_text_color\\\":\\\"#0fa89d\\\",\\\"menu_text_color\\\":\\\"#252525\\\",\\\"menu_text_hover_color\\\":\\\"#0fa89d\\\",\\\"menu_text_active_color\\\":\\\"#0fa89d\\\",\\\"menu_dropdown_bg_color\\\":\\\"#FFFFFF\\\",\\\"menu_dropdown_text_color\\\":\\\"#252525\\\",\\\"menu_dropdown_text_hover_color\\\":\\\"#0fa89d\\\",\\\"menu_dropdown_text_active_color\\\":\\\"#0fa89d\\\",\\\"footer_bg_color\\\":\\\"#171717\\\",\\\"footer_text_color\\\":\\\"#FFFFFF\\\",\\\"footer_link_color\\\":\\\"#A2A2A2\\\",\\\"footer_link_hover_color\\\":\\\"#FFFFFF\\\"}},\\\"preset4\\\":{\\\"label\\\":\\\"Preset 4\\\",\\\"default\\\":\\\"#4943ac\\\",\\\"description\\\":\\\"\\\",\\\"data\\\":{\\\"text_color\\\":\\\"#252525\\\",\\\"preset\\\":\\\"preset4\\\",\\\"bg_color\\\":\\\"#FFFFFF\\\",\\\"link_color\\\":\\\"#4943ac\\\",\\\"link_hover_color\\\":\\\"#044CD0\\\",\\\"header_bg_color\\\":\\\"#FFFFFF\\\",\\\"topbar_bg_color\\\":\\\"#333333\\\",\\\"topbar_text_color\\\":\\\"#AAAAAA\\\",\\\"logo_text_color\\\":\\\"#4943ac\\\",\\\"menu_text_color\\\":\\\"#252525\\\",\\\"menu_text_hover_color\\\":\\\"#4943ac\\\",\\\"menu_text_active_color\\\":\\\"#4943ac\\\",\\\"menu_dropdown_bg_color\\\":\\\"#FFFFFF\\\",\\\"menu_dropdown_text_color\\\":\\\"#252525\\\",\\\"menu_dropdown_text_hover_color\\\":\\\"#4943ac\\\",\\\"menu_dropdown_text_active_color\\\":\\\"#4943ac\\\",\\\"footer_bg_color\\\":\\\"#171717\\\",\\\"footer_text_color\\\":\\\"#FFFFFF\\\",\\\"footer_link_color\\\":\\\"#A2A2A2\\\",\\\"footer_link_hover_color\\\":\\\"#FFFFFF\\\"}},\\\"preset5\\\":{\\\"label\\\":\\\"Preset 5\\\",\\\"default\\\":\\\"#00aeef\\\",\\\"description\\\":\\\"\\\",\\\"data\\\":{\\\"text_color\\\":\\\"#252525\\\",\\\"preset\\\":\\\"preset5\\\",\\\"bg_color\\\":\\\"#FFFFFF\\\",\\\"link_color\\\":\\\"#00aeef\\\",\\\"link_hover_color\\\":\\\"#044CD0\\\",\\\"header_bg_color\\\":\\\"#FFFFFF\\\",\\\"topbar_bg_color\\\":\\\"#333333\\\",\\\"topbar_text_color\\\":\\\"#AAAAAA\\\",\\\"logo_text_color\\\":\\\"#00aeef\\\",\\\"menu_text_color\\\":\\\"#252525\\\",\\\"menu_text_hover_color\\\":\\\"#00aeef\\\",\\\"menu_text_active_color\\\":\\\"#00aeef\\\",\\\"menu_dropdown_bg_color\\\":\\\"#FFFFFF\\\",\\\"menu_dropdown_text_color\\\":\\\"#252525\\\",\\\"menu_dropdown_text_hover_color\\\":\\\"#00aeef\\\",\\\"menu_dropdown_text_active_color\\\":\\\"#00aeef\\\",\\\"footer_bg_color\\\":\\\"#171717\\\",\\\"footer_text_color\\\":\\\"#FFFFFF\\\",\\\"footer_link_color\\\":\\\"#A2A2A2\\\",\\\"footer_link_hover_color\\\":\\\"#FFFFFF\\\"}},\\\"preset6\\\":{\\\"label\\\":\\\"Preset 6\\\",\\\"default\\\":\\\"#f68e13\\\",\\\"description\\\":\\\"\\\",\\\"data\\\":{\\\"text_color\\\":\\\"#252525\\\",\\\"preset\\\":\\\"preset6\\\",\\\"bg_color\\\":\\\"#FFFFFF\\\",\\\"link_color\\\":\\\"#f68e13\\\",\\\"link_hover_color\\\":\\\"#044CD0\\\",\\\"header_bg_color\\\":\\\"#FFFFFF\\\",\\\"topbar_bg_color\\\":\\\"#333333\\\",\\\"topbar_text_color\\\":\\\"#AAAAAA\\\",\\\"logo_text_color\\\":\\\"#f68e13\\\",\\\"menu_text_color\\\":\\\"#252525\\\",\\\"menu_text_hover_color\\\":\\\"#f68e13\\\",\\\"menu_text_active_color\\\":\\\"#f68e13\\\",\\\"menu_dropdown_bg_color\\\":\\\"#FFFFFF\\\",\\\"menu_dropdown_text_color\\\":\\\"#252525\\\",\\\"menu_dropdown_text_hover_color\\\":\\\"#f68e13\\\",\\\"menu_dropdown_text_active_color\\\":\\\"#f68e13\\\",\\\"footer_bg_color\\\":\\\"#171717\\\",\\\"footer_text_color\\\":\\\"#FFFFFF\\\",\\\"footer_link_color\\\":\\\"#A2A2A2\\\",\\\"footer_link_hover_color\\\":\\\"#FFFFFF\\\"}},\\\"preset7\\\":{\\\"label\\\":\\\"Preset 7\\\",\\\"default\\\":\\\"#2ba84a\\\",\\\"description\\\":\\\"\\\",\\\"data\\\":{\\\"text_color\\\":\\\"#252525\\\",\\\"preset\\\":\\\"preset7\\\",\\\"bg_color\\\":\\\"#FFFFFF\\\",\\\"link_color\\\":\\\"#2ba84a\\\",\\\"link_hover_color\\\":\\\"#044CD0\\\",\\\"header_bg_color\\\":\\\"#FFFFFF\\\",\\\"topbar_bg_color\\\":\\\"#333333\\\",\\\"topbar_text_color\\\":\\\"#AAAAAA\\\",\\\"logo_text_color\\\":\\\"#2ba84a\\\",\\\"menu_text_color\\\":\\\"#252525\\\",\\\"menu_text_hover_color\\\":\\\"#2ba84a\\\",\\\"menu_text_active_color\\\":\\\"#2ba84a\\\",\\\"menu_dropdown_bg_color\\\":\\\"#FFFFFF\\\",\\\"menu_dropdown_text_color\\\":\\\"#252525\\\",\\\"menu_dropdown_text_hover_color\\\":\\\"#2ba84a\\\",\\\"menu_dropdown_text_active_color\\\":\\\"#2ba84a\\\",\\\"footer_bg_color\\\":\\\"#171717\\\",\\\"footer_text_color\\\":\\\"#FFFFFF\\\",\\\"footer_link_color\\\":\\\"#A2A2A2\\\",\\\"footer_link_hover_color\\\":\\\"#FFFFFF\\\"}},\\\"preset8\\\":{\\\"label\\\":\\\"Preset 8\\\",\\\"default\\\":\\\"#ed145b\\\",\\\"description\\\":\\\"\\\",\\\"data\\\":{\\\"text_color\\\":\\\"#252525\\\",\\\"preset\\\":\\\"preset8\\\",\\\"bg_color\\\":\\\"#FFFFFF\\\",\\\"link_color\\\":\\\"#ed145b\\\",\\\"link_hover_color\\\":\\\"#044CD0\\\",\\\"header_bg_color\\\":\\\"#FFFFFF\\\",\\\"topbar_bg_color\\\":\\\"#333333\\\",\\\"topbar_text_color\\\":\\\"#AAAAAA\\\",\\\"logo_text_color\\\":\\\"#ed145b\\\",\\\"menu_text_color\\\":\\\"#252525\\\",\\\"menu_text_hover_color\\\":\\\"#ed145b\\\",\\\"menu_text_active_color\\\":\\\"#ed145b\\\",\\\"menu_dropdown_bg_color\\\":\\\"#FFFFFF\\\",\\\"menu_dropdown_text_color\\\":\\\"#252525\\\",\\\"menu_dropdown_text_hover_color\\\":\\\"#ed145b\\\",\\\"menu_dropdown_text_active_color\\\":\\\"#ed145b\\\",\\\"footer_bg_color\\\":\\\"#171717\\\",\\\"footer_text_color\\\":\\\"#FFFFFF\\\",\\\"footer_link_color\\\":\\\"#A2A2A2\\\",\\\"footer_link_hover_color\\\":\\\"#FFFFFF\\\"}}}\",\"preset\":\"{\\\"footer_link_hover_color\\\":\\\"#FFFFFF\\\",\\\"footer_link_color\\\":\\\"#A2A2A2\\\",\\\"footer_text_color\\\":\\\"#FFFFFF\\\",\\\"footer_bg_color\\\":\\\"#171717\\\",\\\"menu_dropdown_text_active_color\\\":\\\"#0345BF\\\",\\\"menu_dropdown_text_hover_color\\\":\\\"#0345BF\\\",\\\"menu_dropdown_text_color\\\":\\\"#252525\\\",\\\"menu_dropdown_bg_color\\\":\\\"#FFFFFF\\\",\\\"menu_text_active_color\\\":\\\"#0345BF\\\",\\\"menu_text_hover_color\\\":\\\"#0345BF\\\",\\\"menu_text_color\\\":\\\"#252525\\\",\\\"logo_text_color\\\":\\\"#0345BF\\\",\\\"topbar_text_color\\\":\\\"#AAAAAA\\\",\\\"topbar_bg_color\\\":\\\"#333333\\\",\\\"header_bg_color\\\":\\\"#FFFFFF\\\",\\\"link_hover_color\\\":\\\"#044CD0\\\",\\\"link_color\\\":\\\"#0345BF\\\",\\\"bg_color\\\":\\\"#FFFFFF\\\",\\\"text_color\\\":\\\"#252525\\\",\\\"preset\\\":\\\"preset1\\\"}\",\"topbar_bg_color\":\"#333333\",\"topbar_text_color\":\"#aaaaaa\",\"header_bg_color\":\"#ffffff\",\"logo_text_color\":\"#0345bf\",\"menu_text_color\":\"#252525\",\"menu_text_hover_color\":\"#0345bf\",\"menu_text_active_color\":\"#0345bf\",\"menu_dropdown_bg_color\":\"#ffffff\",\"menu_dropdown_text_color\":\"#252525\",\"menu_dropdown_text_hover_color\":\"#0345bf\",\"menu_dropdown_text_active_color\":\"#0345bf\",\"text_color\":\"#252525\",\"bg_color\":\"#ffffff\",\"link_color\":\"#0345bf\",\"link_hover_color\":\"#044cd0\",\"footer_bg_color\":\"#171717\",\"footer_text_color\":\"#ffffff\",\"footer_link_color\":\"#a2a2a2\",\"footer_link_hover_color\":\"#ffffff\",\"name\":\"\",\"custom_class\":\"\",\"padding\":\"\",\"margin\":\"\",\"layout\":\"[{\\\"type\\\":\\\"row\\\",\\\"layout\\\":12,\\\"settings\\\":{\\\"name\\\":\\\"Page Title\\\",\\\"fluidrow\\\":1,\\\"custom_class\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"color\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"link_hover_color\\\":\\\"\\\",\\\"background_color\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"background_repeat\\\":\\\"\\\",\\\"background_size\\\":\\\"\\\",\\\"background_attachment\\\":\\\"\\\",\\\"background_position\\\":\\\"\\\",\\\"hide_on_phone\\\":0,\\\"hide_on_large_phone\\\":0,\\\"hide_on_tablet\\\":0,\\\"hide_on_small_desktop\\\":0,\\\"hide_on_desktop\\\":0},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"grid_size\\\":12,\\\"column_type\\\":0,\\\"name\\\":\\\"title\\\",\\\"custom_class\\\":\\\"\\\",\\\"xl_col\\\":\\\"\\\",\\\"lg_col\\\":\\\"\\\",\\\"md_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"hide_on_phone\\\":0,\\\"hide_on_large_phone\\\":0,\\\"hide_on_tablet\\\":0,\\\"hide_on_small_desktop\\\":0,\\\"hide_on_desktop\\\":0}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":\\\"4+4+4\\\",\\\"settings\\\":{\\\"custom_class\\\":\\\"\\\",\\\"fluidrow\\\":0,\\\"margin\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"link_hover_color\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"color\\\":\\\"\\\",\\\"background_color\\\":\\\"\\\",\\\"name\\\":\\\"Main Body\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"name\\\":\\\"left\\\",\\\"custom_class\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"grid_size\\\":4,\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0}},{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"column_type\\\":1,\\\"custom_class\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"sortableitem\\\":\\\"[object Object]\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"grid_size\\\":4}},{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"name\\\":\\\"right\\\",\\\"custom_class\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"grid_size\\\":4,\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":\\\"3+3+3+3\\\",\\\"settings\\\":{\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"name\\\":\\\"Bottom\\\",\\\"fluidrow\\\":0,\\\"custom_class\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"color\\\":\\\"#FFFFFF\\\",\\\"link_color\\\":\\\"#929CBF\\\",\\\"link_hover_color\\\":\\\"#FFFFFF\\\",\\\"background_color\\\":\\\"#0A1C3A\\\",\\\"background_image\\\":\\\"\\\",\\\"background_repeat\\\":\\\"\\\",\\\"background_size\\\":\\\"\\\",\\\"background_attachment\\\":\\\"\\\",\\\"background_position\\\":\\\"\\\",\\\"hide_on_phone\\\":0,\\\"hide_on_large_phone\\\":0,\\\"hide_on_tablet\\\":0,\\\"hide_on_small_desktop\\\":0,\\\"hide_on_desktop\\\":0},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"sortableitem\\\":\\\"[object Object]\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"grid_size\\\":3,\\\"column_type\\\":0,\\\"name\\\":\\\"debug\\\",\\\"custom_class\\\":\\\"\\\",\\\"xl_col\\\":\\\"\\\",\\\"lg_col\\\":\\\"\\\",\\\"md_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"hide_on_phone\\\":0,\\\"hide_on_large_phone\\\":0,\\\"hide_on_tablet\\\":0,\\\"hide_on_small_desktop\\\":0,\\\"hide_on_desktop\\\":0}},{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"sortableitem\\\":\\\"[object Object]\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"grid_size\\\":3,\\\"column_type\\\":0,\\\"name\\\":\\\"debug\\\",\\\"custom_class\\\":\\\"\\\",\\\"xl_col\\\":\\\"\\\",\\\"lg_col\\\":\\\"\\\",\\\"md_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"hide_on_phone\\\":0,\\\"hide_on_large_phone\\\":0,\\\"hide_on_tablet\\\":0,\\\"hide_on_small_desktop\\\":0,\\\"hide_on_desktop\\\":0}},{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"grid_size\\\":3,\\\"column_type\\\":0,\\\"name\\\":\\\"debug\\\",\\\"custom_class\\\":\\\"\\\",\\\"xl_col\\\":\\\"\\\",\\\"lg_col\\\":\\\"\\\",\\\"md_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"hide_on_phone\\\":0,\\\"hide_on_large_phone\\\":0,\\\"hide_on_tablet\\\":0,\\\"hide_on_small_desktop\\\":0,\\\"hide_on_desktop\\\":0}},{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"grid_size\\\":3,\\\"column_type\\\":0,\\\"name\\\":\\\"debug\\\",\\\"custom_class\\\":\\\"\\\",\\\"xl_col\\\":\\\"\\\",\\\"lg_col\\\":\\\"\\\",\\\"md_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"hide_on_phone\\\":0,\\\"hide_on_large_phone\\\":0,\\\"hide_on_tablet\\\":0,\\\"hide_on_small_desktop\\\":0,\\\"hide_on_desktop\\\":0}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":\\\"6+6\\\",\\\"settings\\\":{\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"name\\\":\\\"Footer\\\",\\\"fluidrow\\\":0,\\\"custom_class\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"color\\\":\\\"#FFFFFF\\\",\\\"link_color\\\":\\\"#929CBF\\\",\\\"link_hover_color\\\":\\\"#FFFFFF\\\",\\\"background_color\\\":\\\"#01578C\\\",\\\"background_image\\\":\\\"\\\",\\\"background_repeat\\\":\\\"\\\",\\\"background_size\\\":\\\"\\\",\\\"background_attachment\\\":\\\"\\\",\\\"background_position\\\":\\\"\\\",\\\"hide_on_phone\\\":0,\\\"hide_on_large_phone\\\":0,\\\"hide_on_tablet\\\":0,\\\"hide_on_small_desktop\\\":0,\\\"hide_on_desktop\\\":0},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"sortableitem\\\":\\\"[object Object]\\\",\\\"grid_size\\\":6,\\\"column_type\\\":0,\\\"name\\\":\\\"footer1\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\"}},{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"grid_size\\\":6,\\\"column_type\\\":0,\\\"name\\\":\\\"footer2\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\"}}]}]\",\"menu\":\"mainmenu\",\"menu_type\":\"mega_offcanvas\",\"dropdown_width\":\"180px\",\"menu_animation\":\"menu-animation-fade-up\",\"offcanvas_position\":\"right\",\"offcanvas_style\":\"1-LeftAlign\",\"offcanvas_menu\":\"mainmenu\",\"offcanvas_max_level\":\"0\",\"offcanvas_enable_search\":\"1\",\"enable_body_font\":\"1\",\"hu-webfont-size-field\":\"\",\"hu-webfont-size-field-sm\":\"\",\"hu-webfont-size-field-xs\":\"\",\"hu-font-letter-spacing-input\":\"\",\"body_font\":\"{\\\"fontFamily\\\":\\\"Montserrat\\\",\\\"fontSize\\\":\\\"16px\\\",\\\"fontSize_sm\\\":\\\"14px\\\",\\\"fontSize_xs\\\":\\\"13px\\\",\\\"fontWeight\\\":\\\"\\\",\\\"fontSubset\\\":\\\"cyrillic\\\",\\\"fontColor\\\":\\\"\\\",\\\"fontLineHeight\\\":\\\"1.56\\\",\\\"fontLetterSpacing\\\":\\\"\\\",\\\"textDecoration\\\":\\\"none\\\",\\\"textAlign\\\":\\\"\\\"}\",\"h1_font\":\"{\\\"fontFamily\\\":\\\"Montserrat\\\",\\\"fontSize\\\":\\\"\\\",\\\"fontSize_sm\\\":\\\"\\\",\\\"fontSize_xs\\\":\\\"\\\",\\\"fontWeight\\\":\\\"\\\",\\\"fontSubset\\\":\\\"cyrillic\\\",\\\"fontColor\\\":\\\"\\\",\\\"fontLineHeight\\\":\\\"\\\",\\\"fontLetterSpacing\\\":\\\"\\\",\\\"textDecoration\\\":\\\"none\\\",\\\"textAlign\\\":\\\"\\\"}\",\"h2_font\":\"{\\\"fontFamily\\\":\\\"Montserrat\\\",\\\"fontSize\\\":\\\"\\\",\\\"fontSize_sm\\\":\\\"\\\",\\\"fontSize_xs\\\":\\\"\\\",\\\"fontWeight\\\":\\\"\\\",\\\"fontSubset\\\":\\\"cyrillic\\\",\\\"fontColor\\\":\\\"\\\",\\\"fontLineHeight\\\":\\\"\\\",\\\"fontLetterSpacing\\\":\\\"\\\",\\\"textDecoration\\\":\\\"none\\\",\\\"textAlign\\\":\\\"\\\"}\",\"enable_h3_font\":\"1\",\"h3_font\":\"{\\\"fontFamily\\\":\\\"Montserrat\\\",\\\"fontSize\\\":\\\"\\\",\\\"fontSize_sm\\\":\\\"\\\",\\\"fontSize_xs\\\":\\\"\\\",\\\"fontWeight\\\":\\\"800\\\",\\\"fontSubset\\\":\\\"cyrillic\\\",\\\"fontColor\\\":\\\"\\\",\\\"fontLineHeight\\\":\\\"\\\",\\\"fontLetterSpacing\\\":\\\"\\\",\\\"textDecoration\\\":\\\"none\\\",\\\"textAlign\\\":\\\"\\\"}\",\"h4_font\":\"{\\\"fontFamily\\\":\\\"Montserrat\\\",\\\"fontSize\\\":\\\"\\\",\\\"fontSize_sm\\\":\\\"\\\",\\\"fontSize_xs\\\":\\\"\\\",\\\"fontWeight\\\":\\\"\\\",\\\"fontSubset\\\":\\\"cyrillic\\\",\\\"fontColor\\\":\\\"\\\",\\\"fontLineHeight\\\":\\\"\\\",\\\"fontLetterSpacing\\\":\\\"\\\",\\\"textDecoration\\\":\\\"none\\\",\\\"textAlign\\\":\\\"\\\"}\",\"h5_font\":\"{\\\"fontFamily\\\":\\\"Montserrat\\\",\\\"fontSize\\\":\\\"\\\",\\\"fontSize_sm\\\":\\\"\\\",\\\"fontSize_xs\\\":\\\"\\\",\\\"fontWeight\\\":\\\"\\\",\\\"fontSubset\\\":\\\"cyrillic\\\",\\\"fontColor\\\":\\\"\\\",\\\"fontLineHeight\\\":\\\"\\\",\\\"fontLetterSpacing\\\":\\\"\\\",\\\"textDecoration\\\":\\\"none\\\",\\\"textAlign\\\":\\\"\\\"}\",\"h6_font\":\"{\\\"fontFamily\\\":\\\"Montserrat\\\",\\\"fontSize\\\":\\\"\\\",\\\"fontSize_sm\\\":\\\"\\\",\\\"fontSize_xs\\\":\\\"\\\",\\\"fontWeight\\\":\\\"\\\",\\\"fontSubset\\\":\\\"cyrillic\\\",\\\"fontColor\\\":\\\"\\\",\\\"fontLineHeight\\\":\\\"\\\",\\\"fontLetterSpacing\\\":\\\"\\\",\\\"textDecoration\\\":\\\"none\\\",\\\"textAlign\\\":\\\"\\\"}\",\"enable_navigation_font\":\"1\",\"navigation_font\":\"{\\\"fontFamily\\\":\\\"Montserrat\\\",\\\"fontSize\\\":\\\"16px\\\",\\\"fontSize_sm\\\":\\\"\\\",\\\"fontSize_xs\\\":\\\"\\\",\\\"fontWeight\\\":\\\"700\\\",\\\"fontSubset\\\":\\\"cyrillic\\\",\\\"fontColor\\\":\\\"\\\",\\\"fontLineHeight\\\":\\\"\\\",\\\"fontLetterSpacing\\\":\\\"\\\",\\\"textDecoration\\\":\\\"none\\\",\\\"textAlign\\\":\\\"\\\"}\",\"custom_font\":\"{\\\"fontFamily\\\":\\\"Montserrat\\\",\\\"fontSize\\\":\\\"\\\",\\\"fontSize_sm\\\":\\\"\\\",\\\"fontSize_xs\\\":\\\"\\\",\\\"fontWeight\\\":\\\"\\\",\\\"fontSubset\\\":\\\"cyrillic\\\",\\\"fontColor\\\":\\\"\\\",\\\"fontLineHeight\\\":\\\"\\\",\\\"fontLetterSpacing\\\":\\\"\\\",\\\"textDecoration\\\":\\\"none\\\",\\\"textAlign\\\":\\\"\\\"}\",\"custom_font_selectors\":\"\",\"image_thumbnail_size\":\"180x200\",\"image_small_size\":\"180x200\",\"image_medium_size\":\"180x200\",\"image_large_size\":\"180x200\",\"image_crop_quality\":\"100\",\"blog_list_image\":\"large\",\"leading_blog_list_image\":\"large\",\"blog_details_image\":\"large\",\"social_share\":\"1\",\"social_share_lists\":[\"facebook\",\"twitter\",\"linkedin\"],\"og_fb_id\":\"\",\"og_twitter_site\":\"\",\"reading_time_progress\":\"1\",\"reading_timeline_bg\":\"#0345bf\",\"reading_timeline_height\":\"5px\",\"reading_timeline_position\":\"top\",\"related_article\":\"1\",\"related_article_title\":\"Related Articles\",\"related_article_limit\":\"3\",\"related_article_view_type\":\"thumb\",\"comment\":\"disabled\",\"comment_disqus_subdomain\":\"\",\"comment_intensedebate_acc\":\"\",\"comment_facebook_app_id\":\"\",\"comment_facebook_width\":\"100\",\"comment_facebook_number\":\"10\",\"before_head\":\"\",\"after_body\":\"\",\"before_body\":\"\",\"custom_css\":\"\",\"custom_js\":\"\",\"exclude_js\":\"\",\"enable_fontawesome\":\"1\",\"gfont_api\":\"\",\"ga_code\":\"\",\"ga_tracking_method\":\"gst\",\"id\":\"13\",\"template\":\"et_metrix\",\"client_id\":\"0\",\"home\":\"1\",\"title\":\"et_metrix - Default\"}'),
(14, 'lt_dentist', 0, '1', 'lt_dentist - Default', 0, '', '{\"logo_type\":\"text\",\"logo_image\":\"\",\"retina_logo\":\"\",\"mobile_logo\":\"\",\"logo_alt\":\"Welcome\",\"logo_height\":\"45px\",\"logo_height_sm\":\"\",\"logo_height_xs\":\"\",\"logo_text\":\"Welcome\",\"logo_slogan\":\"\",\"favicon\":\"images\\/favicon.ico\",\"predefined_header\":\"1\",\"header_style\":\"style-1\",\"header_height\":\"80px\",\"header_height_sm\":\"50px\",\"header_height_xs\":\"40px\",\"sticky_header\":\"1\",\"sticky_offset\":\"\",\"loader_type\":\"circle\",\"body_bg_image\":\"\",\"body_bg_repeat\":\"inherit\",\"body_bg_position\":\"0 0\",\"body_bg_size\":\"inherit\",\"body_bg_attachment\":\"inherit\",\"enabled_copyright\":\"1\",\"copyright_position\":\"footer1\",\"copyright_load_pos\":\"default\",\"copyright\":\"<div align=\\\"center\\\">Copyright \\u00a9 2021 <a target=\\\"_blank\\\" title=\\\"Free Joomla! 4 templates\\\" href=\\\"https:\\/\\/ltheme.com\\/joomla-templates\\/\\\" rel=\\\"author nofollow\\\">Free Joomla! 4 templates<\\/a> \\/ Design by <a target=\\\"_blank\\\" href=\\\"https:\\/\\/ltheme.com\\\" title=\\\"Joomla template provider\\\" rel=\\\"author nofollow\\\">LTheme<\\/a><\\/div>\",\"goto_top\":\"1\",\"show_social_icons\":\"1\",\"social_position\":\"top1\",\"social_load_pos\":\"after\",\"facebook\":\"#\",\"twitter\":\"#\",\"pinterest\":\"\",\"linkedin\":\"#\",\"dribbble\":\"\",\"instagram\":\"\",\"behance\":\"\",\"youtube\":\"#\",\"flickr\":\"\",\"skype\":\"\",\"whatsapp\":\"\",\"vk\":\"\",\"custom\":\"\",\"contactinfo\":\"1\",\"contact_position\":\"top2\",\"contact_load_pos\":\"default\",\"contact_phone\":\"(+555) 959-595-959\",\"contact_mobile\":\"\",\"contact_email\":\"\",\"contact_time\":\"\",\"comingsoon_title\":\"Coming Soon Title\",\"comingsoon_content\":\"Coming soon content\",\"comingsoon_date\":\"10-10-2021\",\"comingsoon_logo\":\"\",\"comingsoon_bg_image\":\"\",\"error_logo\":\"\",\"error_bg\":\"\",\"presets-data\":\"{\\\"preset1\\\":{\\\"label\\\":\\\"Preset 1\\\",\\\"default\\\":\\\"#0345BF\\\",\\\"description\\\":\\\"\\\",\\\"data\\\":{\\\"text_color\\\":\\\"#252525\\\",\\\"preset\\\":\\\"preset1\\\",\\\"bg_color\\\":\\\"#FFFFFF\\\",\\\"link_color\\\":\\\"#0345BF\\\",\\\"link_hover_color\\\":\\\"#044CD0\\\",\\\"header_bg_color\\\":\\\"#FFFFFF\\\",\\\"topbar_bg_color\\\":\\\"#333333\\\",\\\"topbar_text_color\\\":\\\"#AAAAAA\\\",\\\"logo_text_color\\\":\\\"#0345BF\\\",\\\"menu_text_color\\\":\\\"#252525\\\",\\\"menu_text_hover_color\\\":\\\"#0345BF\\\",\\\"menu_text_active_color\\\":\\\"#0345BF\\\",\\\"menu_dropdown_bg_color\\\":\\\"#FFFFFF\\\",\\\"menu_dropdown_text_color\\\":\\\"#252525\\\",\\\"menu_dropdown_text_hover_color\\\":\\\"#0345BF\\\",\\\"menu_dropdown_text_active_color\\\":\\\"#0345BF\\\",\\\"footer_bg_color\\\":\\\"#171717\\\",\\\"footer_text_color\\\":\\\"#FFFFFF\\\",\\\"footer_link_color\\\":\\\"#A2A2A2\\\",\\\"footer_link_hover_color\\\":\\\"#FFFFFF\\\"}},\\\"preset2\\\":{\\\"label\\\":\\\"Preset 2\\\",\\\"default\\\":\\\"#ec430f\\\",\\\"description\\\":\\\"\\\",\\\"data\\\":{\\\"text_color\\\":\\\"#252525\\\",\\\"preset\\\":\\\"preset2\\\",\\\"bg_color\\\":\\\"#FFFFFF\\\",\\\"link_color\\\":\\\"#ec430f\\\",\\\"link_hover_color\\\":\\\"#044CD0\\\",\\\"header_bg_color\\\":\\\"#FFFFFF\\\",\\\"topbar_bg_color\\\":\\\"#333333\\\",\\\"topbar_text_color\\\":\\\"#AAAAAA\\\",\\\"logo_text_color\\\":\\\"#ec430f\\\",\\\"menu_text_color\\\":\\\"#252525\\\",\\\"menu_text_hover_color\\\":\\\"#ec430f\\\",\\\"menu_text_active_color\\\":\\\"#ec430f\\\",\\\"menu_dropdown_bg_color\\\":\\\"#FFFFFF\\\",\\\"menu_dropdown_text_color\\\":\\\"#252525\\\",\\\"menu_dropdown_text_hover_color\\\":\\\"#ec430f\\\",\\\"menu_dropdown_text_active_color\\\":\\\"#ec430f\\\",\\\"footer_bg_color\\\":\\\"#171717\\\",\\\"footer_text_color\\\":\\\"#FFFFFF\\\",\\\"footer_link_color\\\":\\\"#A2A2A2\\\",\\\"footer_link_hover_color\\\":\\\"#FFFFFF\\\"}},\\\"preset3\\\":{\\\"label\\\":\\\"Preset 3\\\",\\\"default\\\":\\\"#0fa89d\\\",\\\"description\\\":\\\"\\\",\\\"data\\\":{\\\"text_color\\\":\\\"#252525\\\",\\\"preset\\\":\\\"preset3\\\",\\\"bg_color\\\":\\\"#FFFFFF\\\",\\\"link_color\\\":\\\"#0fa89d\\\",\\\"link_hover_color\\\":\\\"#044CD0\\\",\\\"header_bg_color\\\":\\\"#FFFFFF\\\",\\\"topbar_bg_color\\\":\\\"#333333\\\",\\\"topbar_text_color\\\":\\\"#AAAAAA\\\",\\\"logo_text_color\\\":\\\"#0fa89d\\\",\\\"menu_text_color\\\":\\\"#252525\\\",\\\"menu_text_hover_color\\\":\\\"#0fa89d\\\",\\\"menu_text_active_color\\\":\\\"#0fa89d\\\",\\\"menu_dropdown_bg_color\\\":\\\"#FFFFFF\\\",\\\"menu_dropdown_text_color\\\":\\\"#252525\\\",\\\"menu_dropdown_text_hover_color\\\":\\\"#0fa89d\\\",\\\"menu_dropdown_text_active_color\\\":\\\"#0fa89d\\\",\\\"footer_bg_color\\\":\\\"#171717\\\",\\\"footer_text_color\\\":\\\"#FFFFFF\\\",\\\"footer_link_color\\\":\\\"#A2A2A2\\\",\\\"footer_link_hover_color\\\":\\\"#FFFFFF\\\"}},\\\"preset4\\\":{\\\"label\\\":\\\"Preset 4\\\",\\\"default\\\":\\\"#4943ac\\\",\\\"description\\\":\\\"\\\",\\\"data\\\":{\\\"text_color\\\":\\\"#252525\\\",\\\"preset\\\":\\\"preset4\\\",\\\"bg_color\\\":\\\"#FFFFFF\\\",\\\"link_color\\\":\\\"#4943ac\\\",\\\"link_hover_color\\\":\\\"#044CD0\\\",\\\"header_bg_color\\\":\\\"#FFFFFF\\\",\\\"topbar_bg_color\\\":\\\"#333333\\\",\\\"topbar_text_color\\\":\\\"#AAAAAA\\\",\\\"logo_text_color\\\":\\\"#4943ac\\\",\\\"menu_text_color\\\":\\\"#252525\\\",\\\"menu_text_hover_color\\\":\\\"#4943ac\\\",\\\"menu_text_active_color\\\":\\\"#4943ac\\\",\\\"menu_dropdown_bg_color\\\":\\\"#FFFFFF\\\",\\\"menu_dropdown_text_color\\\":\\\"#252525\\\",\\\"menu_dropdown_text_hover_color\\\":\\\"#4943ac\\\",\\\"menu_dropdown_text_active_color\\\":\\\"#4943ac\\\",\\\"footer_bg_color\\\":\\\"#171717\\\",\\\"footer_text_color\\\":\\\"#FFFFFF\\\",\\\"footer_link_color\\\":\\\"#A2A2A2\\\",\\\"footer_link_hover_color\\\":\\\"#FFFFFF\\\"}},\\\"preset5\\\":{\\\"label\\\":\\\"Preset 5\\\",\\\"default\\\":\\\"#00aeef\\\",\\\"description\\\":\\\"\\\",\\\"data\\\":{\\\"text_color\\\":\\\"#252525\\\",\\\"preset\\\":\\\"preset5\\\",\\\"bg_color\\\":\\\"#FFFFFF\\\",\\\"link_color\\\":\\\"#00aeef\\\",\\\"link_hover_color\\\":\\\"#044CD0\\\",\\\"header_bg_color\\\":\\\"#FFFFFF\\\",\\\"topbar_bg_color\\\":\\\"#333333\\\",\\\"topbar_text_color\\\":\\\"#AAAAAA\\\",\\\"logo_text_color\\\":\\\"#00aeef\\\",\\\"menu_text_color\\\":\\\"#252525\\\",\\\"menu_text_hover_color\\\":\\\"#00aeef\\\",\\\"menu_text_active_color\\\":\\\"#00aeef\\\",\\\"menu_dropdown_bg_color\\\":\\\"#FFFFFF\\\",\\\"menu_dropdown_text_color\\\":\\\"#252525\\\",\\\"menu_dropdown_text_hover_color\\\":\\\"#00aeef\\\",\\\"menu_dropdown_text_active_color\\\":\\\"#00aeef\\\",\\\"footer_bg_color\\\":\\\"#171717\\\",\\\"footer_text_color\\\":\\\"#FFFFFF\\\",\\\"footer_link_color\\\":\\\"#A2A2A2\\\",\\\"footer_link_hover_color\\\":\\\"#FFFFFF\\\"}},\\\"preset6\\\":{\\\"label\\\":\\\"Preset 6\\\",\\\"default\\\":\\\"#f68e13\\\",\\\"description\\\":\\\"\\\",\\\"data\\\":{\\\"text_color\\\":\\\"#252525\\\",\\\"preset\\\":\\\"preset6\\\",\\\"bg_color\\\":\\\"#FFFFFF\\\",\\\"link_color\\\":\\\"#f68e13\\\",\\\"link_hover_color\\\":\\\"#044CD0\\\",\\\"header_bg_color\\\":\\\"#FFFFFF\\\",\\\"topbar_bg_color\\\":\\\"#333333\\\",\\\"topbar_text_color\\\":\\\"#AAAAAA\\\",\\\"logo_text_color\\\":\\\"#f68e13\\\",\\\"menu_text_color\\\":\\\"#252525\\\",\\\"menu_text_hover_color\\\":\\\"#f68e13\\\",\\\"menu_text_active_color\\\":\\\"#f68e13\\\",\\\"menu_dropdown_bg_color\\\":\\\"#FFFFFF\\\",\\\"menu_dropdown_text_color\\\":\\\"#252525\\\",\\\"menu_dropdown_text_hover_color\\\":\\\"#f68e13\\\",\\\"menu_dropdown_text_active_color\\\":\\\"#f68e13\\\",\\\"footer_bg_color\\\":\\\"#171717\\\",\\\"footer_text_color\\\":\\\"#FFFFFF\\\",\\\"footer_link_color\\\":\\\"#A2A2A2\\\",\\\"footer_link_hover_color\\\":\\\"#FFFFFF\\\"}},\\\"preset7\\\":{\\\"label\\\":\\\"Preset 7\\\",\\\"default\\\":\\\"#2ba84a\\\",\\\"description\\\":\\\"\\\",\\\"data\\\":{\\\"text_color\\\":\\\"#252525\\\",\\\"preset\\\":\\\"preset7\\\",\\\"bg_color\\\":\\\"#FFFFFF\\\",\\\"link_color\\\":\\\"#2ba84a\\\",\\\"link_hover_color\\\":\\\"#044CD0\\\",\\\"header_bg_color\\\":\\\"#FFFFFF\\\",\\\"topbar_bg_color\\\":\\\"#333333\\\",\\\"topbar_text_color\\\":\\\"#AAAAAA\\\",\\\"logo_text_color\\\":\\\"#2ba84a\\\",\\\"menu_text_color\\\":\\\"#252525\\\",\\\"menu_text_hover_color\\\":\\\"#2ba84a\\\",\\\"menu_text_active_color\\\":\\\"#2ba84a\\\",\\\"menu_dropdown_bg_color\\\":\\\"#FFFFFF\\\",\\\"menu_dropdown_text_color\\\":\\\"#252525\\\",\\\"menu_dropdown_text_hover_color\\\":\\\"#2ba84a\\\",\\\"menu_dropdown_text_active_color\\\":\\\"#2ba84a\\\",\\\"footer_bg_color\\\":\\\"#171717\\\",\\\"footer_text_color\\\":\\\"#FFFFFF\\\",\\\"footer_link_color\\\":\\\"#A2A2A2\\\",\\\"footer_link_hover_color\\\":\\\"#FFFFFF\\\"}},\\\"preset8\\\":{\\\"label\\\":\\\"Preset 8\\\",\\\"default\\\":\\\"#ed145b\\\",\\\"description\\\":\\\"\\\",\\\"data\\\":{\\\"text_color\\\":\\\"#252525\\\",\\\"preset\\\":\\\"preset8\\\",\\\"bg_color\\\":\\\"#FFFFFF\\\",\\\"link_color\\\":\\\"#ed145b\\\",\\\"link_hover_color\\\":\\\"#044CD0\\\",\\\"header_bg_color\\\":\\\"#FFFFFF\\\",\\\"topbar_bg_color\\\":\\\"#333333\\\",\\\"topbar_text_color\\\":\\\"#AAAAAA\\\",\\\"logo_text_color\\\":\\\"#ed145b\\\",\\\"menu_text_color\\\":\\\"#252525\\\",\\\"menu_text_hover_color\\\":\\\"#ed145b\\\",\\\"menu_text_active_color\\\":\\\"#ed145b\\\",\\\"menu_dropdown_bg_color\\\":\\\"#FFFFFF\\\",\\\"menu_dropdown_text_color\\\":\\\"#252525\\\",\\\"menu_dropdown_text_hover_color\\\":\\\"#ed145b\\\",\\\"menu_dropdown_text_active_color\\\":\\\"#ed145b\\\",\\\"footer_bg_color\\\":\\\"#171717\\\",\\\"footer_text_color\\\":\\\"#FFFFFF\\\",\\\"footer_link_color\\\":\\\"#A2A2A2\\\",\\\"footer_link_hover_color\\\":\\\"#FFFFFF\\\"}}}\",\"preset\":\"{\\\"footer_link_hover_color\\\":\\\"#FFFFFF\\\",\\\"footer_link_color\\\":\\\"#A2A2A2\\\",\\\"footer_text_color\\\":\\\"#FFFFFF\\\",\\\"footer_bg_color\\\":\\\"#171717\\\",\\\"menu_dropdown_text_active_color\\\":\\\"#f68e13\\\",\\\"menu_dropdown_text_hover_color\\\":\\\"#f68e13\\\",\\\"menu_dropdown_text_color\\\":\\\"#252525\\\",\\\"menu_dropdown_bg_color\\\":\\\"#FFFFFF\\\",\\\"menu_text_active_color\\\":\\\"#f68e13\\\",\\\"menu_text_hover_color\\\":\\\"#f68e13\\\",\\\"menu_text_color\\\":\\\"#252525\\\",\\\"logo_text_color\\\":\\\"#f68e13\\\",\\\"topbar_text_color\\\":\\\"#AAAAAA\\\",\\\"topbar_bg_color\\\":\\\"#333333\\\",\\\"header_bg_color\\\":\\\"#FFFFFF\\\",\\\"link_hover_color\\\":\\\"#044CD0\\\",\\\"link_color\\\":\\\"#f68e13\\\",\\\"bg_color\\\":\\\"#FFFFFF\\\",\\\"text_color\\\":\\\"#252525\\\",\\\"preset\\\":\\\"preset6\\\"}\",\"topbar_bg_color\":\"#333333\",\"topbar_text_color\":\"#aaaaaa\",\"header_bg_color\":\"#ffffff\",\"logo_text_color\":\"#0345bf\",\"menu_text_color\":\"#252525\",\"menu_text_hover_color\":\"#0345bf\",\"menu_text_active_color\":\"#0345bf\",\"menu_dropdown_bg_color\":\"#ffffff\",\"menu_dropdown_text_color\":\"#252525\",\"menu_dropdown_text_hover_color\":\"#0345bf\",\"menu_dropdown_text_active_color\":\"#0345bf\",\"text_color\":\"#252525\",\"bg_color\":\"#ffffff\",\"link_color\":\"#0345bf\",\"link_hover_color\":\"#044cd0\",\"footer_bg_color\":\"#171717\",\"footer_text_color\":\"#ffffff\",\"footer_link_color\":\"#a2a2a2\",\"footer_link_hover_color\":\"#ffffff\",\"name\":\"\",\"custom_class\":\"\",\"padding\":\"\",\"margin\":\"\",\"layout\":\"[{\\\"type\\\":\\\"row\\\",\\\"layout\\\":12,\\\"settings\\\":{\\\"hide_on_desktop\\\":0,\\\"hide_on_small_desktop\\\":0,\\\"hide_on_tablet\\\":0,\\\"hide_on_large_phone\\\":0,\\\"hide_on_phone\\\":0,\\\"background_position\\\":\\\"\\\",\\\"background_attachment\\\":\\\"\\\",\\\"background_size\\\":\\\"\\\",\\\"background_repeat\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"background_color\\\":\\\"\\\",\\\"link_hover_color\\\":\\\"\\\",\\\"link_color\\\":\\\"\\\",\\\"color\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\",\\\"fluidrow\\\":1,\\\"name\\\":\\\"Page Title\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"hide_on_desktop\\\":0,\\\"hide_on_small_desktop\\\":0,\\\"hide_on_tablet\\\":0,\\\"hide_on_large_phone\\\":0,\\\"hide_on_phone\\\":0,\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"md_col\\\":\\\"\\\",\\\"lg_col\\\":\\\"\\\",\\\"xl_col\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\",\\\"name\\\":\\\"title\\\",\\\"column_type\\\":0,\\\"grid_size\\\":12}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":\\\"4+4+4\\\",\\\"settings\\\":{\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"name\\\":\\\"Main Body\\\",\\\"fluidrow\\\":\\\"0\\\",\\\"custom_class\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"color\\\":\\\"#000000\\\",\\\"link_color\\\":\\\"\\\",\\\"link_hover_color\\\":\\\"\\\",\\\"background_color\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"background_repeat\\\":null,\\\"background_size\\\":null,\\\"background_attachment\\\":null,\\\"background_position\\\":null,\\\"hide_on_phone\\\":\\\"0\\\",\\\"hide_on_large_phone\\\":\\\"0\\\",\\\"hide_on_tablet\\\":\\\"0\\\",\\\"hide_on_small_desktop\\\":\\\"0\\\",\\\"hide_on_desktop\\\":\\\"0\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"grid_size\\\":4,\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\",\\\"name\\\":\\\"left\\\",\\\"column_type\\\":0}},{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"grid_size\\\":4,\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"sortableitem\\\":\\\"[object Object]\\\",\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\",\\\"column_type\\\":1}},{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"grid_size\\\":4,\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\",\\\"name\\\":\\\"right\\\",\\\"column_type\\\":0}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":\\\"4+4+4\\\",\\\"settings\\\":{\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"name\\\":\\\"Bottom\\\",\\\"fluidrow\\\":\\\"0\\\",\\\"custom_class\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"margin\\\":\\\"\\\",\\\"color\\\":\\\"#1F1F1F\\\",\\\"link_color\\\":\\\"#929CBF\\\",\\\"link_hover_color\\\":\\\"#FFFFFF\\\",\\\"background_color\\\":\\\"#13455E\\\",\\\"background_image\\\":\\\"\\\",\\\"background_repeat\\\":null,\\\"background_size\\\":null,\\\"background_attachment\\\":null,\\\"background_position\\\":null,\\\"hide_on_phone\\\":\\\"0\\\",\\\"hide_on_large_phone\\\":\\\"0\\\",\\\"hide_on_tablet\\\":\\\"0\\\",\\\"hide_on_small_desktop\\\":\\\"0\\\",\\\"hide_on_desktop\\\":\\\"0\\\"},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"column_type\\\":0,\\\"name\\\":\\\"bottom1\\\",\\\"hidden_xs\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_md\\\":0,\\\"sm_col\\\":\\\"col-sm-6\\\",\\\"xs_col\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\",\\\"grid_size\\\":4,\\\"sortableitem\\\":\\\"[object Object]\\\"}},{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"custom_class\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"col-sm-6\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"name\\\":\\\"bottom2\\\",\\\"column_type\\\":0,\\\"grid_size\\\":4,\\\"sortableitem\\\":\\\"[object Object]\\\"}},{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"grid_size\\\":4,\\\"hide_on_desktop\\\":0,\\\"hide_on_small_desktop\\\":0,\\\"hide_on_tablet\\\":0,\\\"hide_on_large_phone\\\":0,\\\"hide_on_phone\\\":0,\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"md_col\\\":\\\"\\\",\\\"xl_col\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\",\\\"name\\\":\\\"bottom3\\\",\\\"column_type\\\":0,\\\"sortableitem\\\":\\\"[object Object]\\\"}}]},{\\\"type\\\":\\\"row\\\",\\\"layout\\\":\\\"6+6\\\",\\\"settings\\\":{\\\"hide_on_desktop\\\":0,\\\"hide_on_small_desktop\\\":0,\\\"hide_on_tablet\\\":0,\\\"hide_on_large_phone\\\":0,\\\"hide_on_phone\\\":0,\\\"background_position\\\":\\\"\\\",\\\"background_attachment\\\":\\\"\\\",\\\"background_size\\\":\\\"\\\",\\\"background_repeat\\\":\\\"\\\",\\\"background_image\\\":\\\"\\\",\\\"background_color\\\":\\\"#0D374C\\\",\\\"link_hover_color\\\":\\\"#FFFFFF\\\",\\\"link_color\\\":\\\"#F68E13\\\",\\\"color\\\":\\\"#FFFFFF\\\",\\\"margin\\\":\\\"\\\",\\\"padding\\\":\\\"\\\",\\\"custom_class\\\":\\\"\\\",\\\"fluidrow\\\":0,\\\"name\\\":\\\"Footer\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0},\\\"attr\\\":[{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"custom_class\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"name\\\":\\\"footer1\\\",\\\"column_type\\\":0,\\\"grid_size\\\":6,\\\"sortableitem\\\":\\\"[object Object]\\\"}},{\\\"type\\\":\\\"sp_col\\\",\\\"settings\\\":{\\\"custom_class\\\":\\\"\\\",\\\"xs_col\\\":\\\"\\\",\\\"sm_col\\\":\\\"\\\",\\\"hidden_md\\\":0,\\\"hidden_sm\\\":0,\\\"hidden_xs\\\":0,\\\"name\\\":\\\"footer2\\\",\\\"column_type\\\":0,\\\"grid_size\\\":6}}]}]\",\"menu\":\"mainmenu\",\"menu_type\":\"mega\",\"dropdown_width\":\"180px\",\"menu_animation\":\"menu-animation-fade-up\",\"offcanvas_position\":\"right\",\"offcanvas_style\":\"1-LeftAlign\",\"offcanvas_menu\":\"mainmenu\",\"offcanvas_max_level\":\"0\",\"offcanvas_enable_search\":\"1\",\"enable_body_font\":\"1\",\"hu-webfont-size-field\":\"\",\"hu-webfont-size-field-sm\":\"\",\"hu-webfont-size-field-xs\":\"\",\"hu-font-letter-spacing-input\":\"\",\"body_font\":\"{\\\"fontFamily\\\":\\\"Amaranth\\\",\\\"fontSize\\\":\\\"14px\\\",\\\"fontSize_sm\\\":\\\"14px\\\",\\\"fontSize_xs\\\":\\\"13px\\\",\\\"fontWeight\\\":\\\"\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontColor\\\":\\\"\\\",\\\"fontLineHeight\\\":\\\"1.56\\\",\\\"fontLetterSpacing\\\":\\\"\\\",\\\"textDecoration\\\":\\\"none\\\",\\\"textAlign\\\":\\\"\\\"}\",\"h1_font\":\"{\\\"fontFamily\\\":\\\"Overlock SC\\\",\\\"fontSize\\\":\\\"\\\",\\\"fontSize_sm\\\":\\\"\\\",\\\"fontSize_xs\\\":\\\"\\\",\\\"fontWeight\\\":\\\"\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontColor\\\":\\\"\\\",\\\"fontLineHeight\\\":\\\"\\\",\\\"fontLetterSpacing\\\":\\\"\\\",\\\"textDecoration\\\":\\\"none\\\",\\\"textAlign\\\":\\\"\\\"}\",\"h2_font\":\"{\\\"fontFamily\\\":\\\"Noto Sans\\\",\\\"fontSize\\\":\\\"\\\",\\\"fontSize_sm\\\":\\\"\\\",\\\"fontSize_xs\\\":\\\"\\\",\\\"fontWeight\\\":\\\"\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontColor\\\":\\\"\\\",\\\"fontLineHeight\\\":\\\"\\\",\\\"fontLetterSpacing\\\":\\\"\\\",\\\"textDecoration\\\":\\\"none\\\",\\\"textAlign\\\":\\\"\\\"}\",\"h3_font\":\"{\\\"fontFamily\\\":\\\"Noto Sans\\\",\\\"fontSize\\\":\\\"\\\",\\\"fontSize_sm\\\":\\\"\\\",\\\"fontSize_xs\\\":\\\"\\\",\\\"fontWeight\\\":\\\"\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontColor\\\":\\\"\\\",\\\"fontLineHeight\\\":\\\"\\\",\\\"fontLetterSpacing\\\":\\\"\\\",\\\"textDecoration\\\":\\\"none\\\",\\\"textAlign\\\":\\\"\\\"}\",\"h4_font\":\"{\\\"fontFamily\\\":\\\"Noto Sans\\\",\\\"fontSize\\\":\\\"\\\",\\\"fontSize_sm\\\":\\\"\\\",\\\"fontSize_xs\\\":\\\"\\\",\\\"fontWeight\\\":\\\"\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontColor\\\":\\\"\\\",\\\"fontLineHeight\\\":\\\"\\\",\\\"fontLetterSpacing\\\":\\\"\\\",\\\"textDecoration\\\":\\\"none\\\",\\\"textAlign\\\":\\\"\\\"}\",\"h5_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontSize\\\":\\\"\\\",\\\"fontSize_sm\\\":\\\"\\\",\\\"fontSize_xs\\\":\\\"\\\",\\\"fontWeight\\\":\\\"\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontColor\\\":\\\"\\\",\\\"fontLineHeight\\\":\\\"\\\",\\\"fontLetterSpacing\\\":\\\"\\\",\\\"textDecoration\\\":\\\"none\\\",\\\"textAlign\\\":\\\"\\\"}\",\"h6_font\":\"{\\\"fontFamily\\\":\\\"Open Sans\\\",\\\"fontSize\\\":\\\"\\\",\\\"fontSize_sm\\\":\\\"\\\",\\\"fontSize_xs\\\":\\\"\\\",\\\"fontWeight\\\":\\\"\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontColor\\\":\\\"\\\",\\\"fontLineHeight\\\":\\\"\\\",\\\"fontLetterSpacing\\\":\\\"\\\",\\\"textDecoration\\\":\\\"none\\\",\\\"textAlign\\\":\\\"\\\"}\",\"enable_navigation_font\":\"1\",\"navigation_font\":\"{\\\"fontFamily\\\":\\\"Amaranth\\\",\\\"fontSize\\\":\\\"16px\\\",\\\"fontSize_sm\\\":\\\"\\\",\\\"fontSize_xs\\\":\\\"\\\",\\\"fontWeight\\\":\\\"\\\",\\\"fontSubset\\\":\\\"latin\\\",\\\"fontColor\\\":\\\"\\\",\\\"fontLineHeight\\\":\\\"\\\",\\\"fontLetterSpacing\\\":\\\"\\\",\\\"textDecoration\\\":\\\"none\\\",\\\"textAlign\\\":\\\"\\\"}\",\"enable_custom_font\":\"1\",\"custom_font\":\"{\\\"fontFamily\\\":\\\"Arial\\\",\\\"fontSize\\\":\\\"\\\",\\\"fontSize_sm\\\":\\\"\\\",\\\"fontSize_xs\\\":\\\"\\\",\\\"fontWeight\\\":\\\"\\\",\\\"fontSubset\\\":\\\"\\\",\\\"fontColor\\\":\\\"\\\",\\\"fontLineHeight\\\":\\\"\\\",\\\"fontLetterSpacing\\\":\\\"\\\",\\\"textDecoration\\\":\\\"none\\\",\\\"textAlign\\\":\\\"\\\"}\",\"custom_font_selectors\":\"\",\"image_thumbnail_size\":\"180x200\",\"image_small_size\":\"180x200\",\"image_medium_size\":\"180x200\",\"image_large_size\":\"180x200\",\"image_crop_quality\":\"100\",\"blog_list_image\":\"large\",\"leading_blog_list_image\":\"large\",\"blog_details_image\":\"large\",\"social_share\":\"1\",\"social_share_lists\":[\"facebook\",\"twitter\",\"linkedin\"],\"og_fb_id\":\"\",\"og_twitter_site\":\"\",\"reading_time_progress\":\"1\",\"reading_timeline_bg\":\"#0345bf\",\"reading_timeline_height\":\"5px\",\"reading_timeline_position\":\"top\",\"related_article\":\"1\",\"related_article_title\":\"Related Articles\",\"related_article_limit\":\"3\",\"related_article_view_type\":\"thumb\",\"comment\":\"disabled\",\"comment_disqus_subdomain\":\"\",\"comment_intensedebate_acc\":\"\",\"comment_facebook_app_id\":\"\",\"comment_facebook_width\":\"100\",\"comment_facebook_number\":\"10\",\"before_head\":\"\",\"after_body\":\"\",\"before_body\":\"\",\"custom_css\":\"\",\"custom_js\":\"\",\"exclude_js\":\"\",\"enable_fontawesome\":\"1\",\"gfont_api\":\"\",\"ga_code\":\"\",\"ga_tracking_method\":\"gst\",\"id\":\"14\",\"template\":\"lt_dentist\",\"client_id\":\"0\",\"home\":\"1\",\"title\":\"lt_dentist - Default\"}');

-- --------------------------------------------------------

--
-- Table structure for table `a7mom_ucm_base`
--

CREATE TABLE `a7mom_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(11) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `a7mom_ucm_content`
--

CREATE TABLE `a7mom_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `core_state` tinyint(4) NOT NULL DEFAULT 0,
  `core_checked_out_time` datetime DEFAULT NULL,
  `core_checked_out_user_id` int(10) UNSIGNED DEFAULT NULL,
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_params` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `core_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL,
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL,
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime DEFAULT NULL,
  `core_publish_down` datetime DEFAULT NULL,
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `core_ordering` int(11) NOT NULL DEFAULT 0,
  `core_metakey` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Table structure for table `a7mom_update_sites`
--

CREATE TABLE `a7mom_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT 0,
  `last_check_timestamp` bigint(20) DEFAULT 0,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Dumping data for table `a7mom_update_sites`
--

INSERT INTO `a7mom_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`, `checked_out`, `checked_out_time`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1654044968, '', NULL, NULL),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_4.xml', 1, 1654044974, '', NULL, NULL),
(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1654044974, '', NULL, NULL),
(4, 'System - Helix Ultimate Framework', 'extension', 'http://www.joomshaper.com/updates/plg-system-helixultimate.xml', 1, 1654044977, '', NULL, NULL),
(5, 'shaper_helixultimate', 'extension', 'https://www.joomshaper.com/updates/shaper-helixultimate.xml', 1, 1654044979, '', NULL, NULL),
(6, 'JcDashboards Component Updates', 'extension', 'https://www.joomcode.com/jcmedia/com_jcdashboards/update.xml', 1, 1654044981, '', NULL, NULL),
(7, 'JStats Updates', 'extension', 'https://www.joomlagears.com/index.php?option=com_ars&view=update&task=stream&format=xml&id=3', 1, 1654044983, '', NULL, NULL),
(8, 'JF Side Buttons', 'extension', 'https://updates.joomforest.net/extensions/jf_sidebuttons.xml', 1, 1654044985, '', NULL, NULL),
(9, 'JCTables Updates', 'extension', 'https://www.joomcode.com/jcmedia/com_jctables/update.xml', 1, 1654047984, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `a7mom_update_sites_extensions`
--

CREATE TABLE `a7mom_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT 0,
  `extension_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `a7mom_update_sites_extensions`
--

INSERT INTO `a7mom_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 220),
(2, 221),
(3, 24),
(4, 227),
(5, 228),
(5, 230),
(6, 231),
(7, 242),
(8, 243),
(9, 244);

-- --------------------------------------------------------

--
-- Table structure for table `a7mom_usergroups`
--

CREATE TABLE `a7mom_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a7mom_usergroups`
--

INSERT INTO `a7mom_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
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
-- Table structure for table `a7mom_users`
--

CREATE TABLE `a7mom_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT 0,
  `sendEmail` tinyint(4) DEFAULT 0,
  `registerDate` datetime NOT NULL,
  `lastvisitDate` datetime DEFAULT NULL,
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime DEFAULT NULL COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT 0 COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Require user to reset password on next login',
  `authProvider` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Name of used authentication plugin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a7mom_users`
--

INSERT INTO `a7mom_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`, `authProvider`) VALUES
(464, 'username', 'user', 'tristanbeykusuma@gmail.com', '$2y$10$Iq5BIVn9XSoA.r75xvGuJOtTSklooe9/YbPZ7d2dB9IC/J4x5tbvi', 0, 1, '2022-03-31 01:26:50', '2022-06-01 01:06:38', '0', '', NULL, 0, '', '', 0, ''),
(465, 'User', 'tester', 'tristanbeykusuma.tbk@gmail.com', '$2y$10$L7K3sMMbM2X76bVRTKxtjODBmLRr4c4WuDxZUtDlE4PGP2ztBQuBW', 0, 0, '2022-05-31 22:57:52', '2022-06-01 00:50:09', '', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"timezone\":\"\",\"a11y_mono\":\"0\",\"a11y_contrast\":\"0\",\"a11y_highlight\":\"0\",\"a11y_font\":\"0\"}', NULL, 0, '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `a7mom_user_keys`
--

CREATE TABLE `a7mom_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a7mom_user_keys`
--

INSERT INTO `a7mom_user_keys` (`id`, `user_id`, `token`, `series`, `time`, `uastring`) VALUES
(21, 'user', '$2y$10$c3vlDig84sx8.lstTCICo.jh6gKEYY.Y2gEZyXKp8aGWqMS3pK4Je', 'Fw6ud9lMFG5ySPPaEyLm', '1659229599', 'joomla_remember_me_bfb54df9901e0193e45a394eb3cafd2a');

-- --------------------------------------------------------

--
-- Table structure for table `a7mom_user_notes`
--

CREATE TABLE `a7mom_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `review_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `a7mom_user_profiles`
--

CREATE TABLE `a7mom_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `a7mom_user_usergroup_map`
--

CREATE TABLE `a7mom_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a7mom_user_usergroup_map`
--

INSERT INTO `a7mom_user_usergroup_map` (`user_id`, `group_id`) VALUES
(464, 8),
(465, 2);

-- --------------------------------------------------------

--
-- Table structure for table `a7mom_viewlevels`
--

CREATE TABLE `a7mom_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a7mom_viewlevels`
--

INSERT INTO `a7mom_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

-- --------------------------------------------------------

--
-- Table structure for table `a7mom_webauthn_credentials`
--

CREATE TABLE `a7mom_webauthn_credentials` (
  `id` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Credential ID',
  `user_id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'User handle',
  `label` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Human readable label',
  `credential` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Credential source data, JSON format'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `a7mom_workflows`
--

CREATE TABLE `a7mom_workflows` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) DEFAULT 0,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a7mom_workflows`
--

INSERT INTO `a7mom_workflows` (`id`, `asset_id`, `published`, `title`, `description`, `extension`, `default`, `ordering`, `created`, `created_by`, `modified`, `modified_by`, `checked_out_time`, `checked_out`) VALUES
(1, 56, 1, 'COM_WORKFLOW_BASIC_WORKFLOW', '', 'com_content.article', 1, 1, '2022-03-31 01:26:05', 464, '2022-03-31 01:26:05', 464, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `a7mom_workflow_associations`
--

CREATE TABLE `a7mom_workflow_associations` (
  `item_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Extension table id value',
  `stage_id` int(11) NOT NULL COMMENT 'Foreign Key to #__workflow_stages.id',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `a7mom_workflow_stages`
--

CREATE TABLE `a7mom_workflow_stages` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `workflow_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a7mom_workflow_stages`
--

INSERT INTO `a7mom_workflow_stages` (`id`, `asset_id`, `ordering`, `workflow_id`, `published`, `title`, `description`, `default`, `checked_out_time`, `checked_out`) VALUES
(1, 57, 1, 1, 1, 'COM_WORKFLOW_BASIC_STAGE', '', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `a7mom_workflow_transitions`
--

CREATE TABLE `a7mom_workflow_transitions` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `workflow_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_stage_id` int(11) NOT NULL,
  `to_stage_id` int(11) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a7mom_workflow_transitions`
--

INSERT INTO `a7mom_workflow_transitions` (`id`, `asset_id`, `ordering`, `workflow_id`, `published`, `title`, `description`, `from_stage_id`, `to_stage_id`, `options`, `checked_out_time`, `checked_out`) VALUES
(1, 58, 1, 1, 1, 'UNPUBLISH', '', -1, 1, '{\"publishing\":\"0\"}', NULL, NULL),
(2, 59, 2, 1, 1, 'PUBLISH', '', -1, 1, '{\"publishing\":\"1\"}', NULL, NULL),
(3, 60, 3, 1, 1, 'TRASH', '', -1, 1, '{\"publishing\":\"-2\"}', NULL, NULL),
(4, 61, 4, 1, 1, 'ARCHIVE', '', -1, 1, '{\"publishing\":\"2\"}', NULL, NULL),
(5, 62, 5, 1, 1, 'FEATURE', '', -1, 1, '{\"featuring\":\"1\"}', NULL, NULL),
(6, 63, 6, 1, 1, 'UNFEATURE', '', -1, 1, '{\"featuring\":\"0\"}', NULL, NULL),
(7, 64, 7, 1, 1, 'PUBLISH_AND_FEATURE', '', -1, 1, '{\"publishing\":\"1\",\"featuring\":\"1\"}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `daftar`
--

CREATE TABLE `daftar` (
  `name` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_admin`
--

CREATE TABLE `tabel_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_admin`
--

INSERT INTO `tabel_admin` (`id`, `username`, `password`) VALUES
(1, 'sistem', '1111');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_stok`
--

CREATE TABLE `tabel_stok` (
  `kode_handphone` varchar(12) NOT NULL,
  `nama_handphone` varchar(30) NOT NULL,
  `brand_name` varchar(30) NOT NULL,
  `stok_awal` int(20) NOT NULL,
  `barang_masuk` int(20) NOT NULL,
  `barang_keluar` int(20) NOT NULL,
  `stok_akhir` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_stok`
--

INSERT INTO `tabel_stok` (`kode_handphone`, `nama_handphone`, `brand_name`, `stok_awal`, `barang_masuk`, `barang_keluar`, `stok_akhir`) VALUES
('A001', 'Galaxy Zflip 3', 'Samsung', 50, 40, 0, 90),
('A002', 'Redmi 10C', 'Xiaomi', 180, 10, 20, 170),
('A003', 'Xperia Pro-I', 'Sony', 0, 77, 0, 77);

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `todo_item` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `notelp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`todo_item`, `id`, `notelp`) VALUES
('Test', 18, '11111111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `a7mom_finder_taxonomy`
--
ALTER TABLE `a7mom_finder_taxonomy`
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
-- Indexes for table `a7mom_finder_types`
--
ALTER TABLE `a7mom_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `a7mom_languages`
--
ALTER TABLE `a7mom_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `a7mom_mail_templates`
--
ALTER TABLE `a7mom_mail_templates`
  ADD PRIMARY KEY (`template_id`,`language`);

--
-- Indexes for table `a7mom_menu`
--
ALTER TABLE `a7mom_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `a7mom_menu_types`
--
ALTER TABLE `a7mom_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `a7mom_redirect_links`
--
ALTER TABLE `a7mom_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modified` (`modified_date`);

--
-- Indexes for table `a7mom_schemas`
--
ALTER TABLE `a7mom_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `a7mom_session`
--
ALTER TABLE `a7mom_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`),
  ADD KEY `client_id_guest` (`client_id`,`guest`);

--
-- Indexes for table `a7mom_tags`
--
ALTER TABLE `a7mom_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `a7mom_template_overrides`
--
ALTER TABLE `a7mom_template_overrides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_extension_id` (`extension_id`);

--
-- Indexes for table `a7mom_template_styles`
--
ALTER TABLE `a7mom_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_client_id` (`client_id`),
  ADD KEY `idx_client_id_home` (`client_id`,`home`);

--
-- Indexes for table `a7mom_ucm_base`
--
ALTER TABLE `a7mom_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `a7mom_ucm_content`
--
ALTER TABLE `a7mom_ucm_content`
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
-- Indexes for table `a7mom_update_sites`
--
ALTER TABLE `a7mom_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `a7mom_update_sites_extensions`
--
ALTER TABLE `a7mom_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `a7mom_usergroups`
--
ALTER TABLE `a7mom_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `a7mom_users`
--
ALTER TABLE `a7mom_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_username` (`username`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `a7mom_user_keys`
--
ALTER TABLE `a7mom_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `a7mom_user_notes`
--
ALTER TABLE `a7mom_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `a7mom_user_profiles`
--
ALTER TABLE `a7mom_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `a7mom_user_usergroup_map`
--
ALTER TABLE `a7mom_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `a7mom_viewlevels`
--
ALTER TABLE `a7mom_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Indexes for table `a7mom_webauthn_credentials`
--
ALTER TABLE `a7mom_webauthn_credentials`
  ADD PRIMARY KEY (`id`(100)),
  ADD KEY `user_id` (`user_id`(100));

--
-- Indexes for table `a7mom_workflows`
--
ALTER TABLE `a7mom_workflows`
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
-- Indexes for table `a7mom_workflow_associations`
--
ALTER TABLE `a7mom_workflow_associations`
  ADD PRIMARY KEY (`item_id`,`extension`),
  ADD KEY `idx_item_stage_extension` (`item_id`,`stage_id`,`extension`),
  ADD KEY `idx_item_id` (`item_id`),
  ADD KEY `idx_stage_id` (`stage_id`),
  ADD KEY `idx_extension` (`extension`);

--
-- Indexes for table `a7mom_workflow_stages`
--
ALTER TABLE `a7mom_workflow_stages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_workflow_id` (`workflow_id`),
  ADD KEY `idx_checked_out` (`checked_out`),
  ADD KEY `idx_title` (`title`(191)),
  ADD KEY `idx_asset_id` (`asset_id`),
  ADD KEY `idx_default` (`default`);

--
-- Indexes for table `a7mom_workflow_transitions`
--
ALTER TABLE `a7mom_workflow_transitions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_title` (`title`(191)),
  ADD KEY `idx_asset_id` (`asset_id`),
  ADD KEY `idx_checked_out` (`checked_out`),
  ADD KEY `idx_from_stage_id` (`from_stage_id`),
  ADD KEY `idx_to_stage_id` (`to_stage_id`),
  ADD KEY `idx_workflow_id` (`workflow_id`);

--
-- Indexes for table `tabel_admin`
--
ALTER TABLE `tabel_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_stok`
--
ALTER TABLE `tabel_stok`
  ADD PRIMARY KEY (`kode_handphone`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `a7mom_finder_taxonomy`
--
ALTER TABLE `a7mom_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `a7mom_finder_types`
--
ALTER TABLE `a7mom_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `a7mom_languages`
--
ALTER TABLE `a7mom_languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `a7mom_menu`
--
ALTER TABLE `a7mom_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `a7mom_menu_types`
--
ALTER TABLE `a7mom_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `a7mom_redirect_links`
--
ALTER TABLE `a7mom_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `a7mom_tags`
--
ALTER TABLE `a7mom_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `a7mom_template_overrides`
--
ALTER TABLE `a7mom_template_overrides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `a7mom_template_styles`
--
ALTER TABLE `a7mom_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `a7mom_ucm_content`
--
ALTER TABLE `a7mom_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `a7mom_update_sites`
--
ALTER TABLE `a7mom_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `a7mom_usergroups`
--
ALTER TABLE `a7mom_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `a7mom_users`
--
ALTER TABLE `a7mom_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=466;

--
-- AUTO_INCREMENT for table `a7mom_user_keys`
--
ALTER TABLE `a7mom_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `a7mom_user_notes`
--
ALTER TABLE `a7mom_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `a7mom_viewlevels`
--
ALTER TABLE `a7mom_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `a7mom_workflows`
--
ALTER TABLE `a7mom_workflows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `a7mom_workflow_stages`
--
ALTER TABLE `a7mom_workflow_stages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `a7mom_workflow_transitions`
--
ALTER TABLE `a7mom_workflow_transitions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tabel_admin`
--
ALTER TABLE `tabel_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
