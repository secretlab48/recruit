-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 02 2022 г., 20:25
-- Версия сервера: 10.3.13-MariaDB
-- Версия PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `recruit`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-08-12 08:51:45', '2019-08-12 08:51:45', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_duplicator_packages`
--

CREATE TABLE `wp_duplicator_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_duplicator_packages`
--

INSERT INTO `wp_duplicator_packages` (`id`, `name`, `hash`, `status`, `created`, `owner`, `package`) VALUES
(4, '20190815_test', '495ceb7badf5b1199861_20191204132409', 100, '2019-12-04 13:24:26', 'unknown', 'O:11:\"DUP_Package\":25:{s:7:\"Created\";s:19:\"2019-12-04 13:24:09\";s:7:\"Version\";s:6:\"1.3.24\";s:9:\"VersionWP\";s:5:\"5.2.4\";s:9:\"VersionDB\";s:7:\"10.3.13\";s:10:\"VersionPHP\";s:6:\"7.1.22\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";i:4;s:4:\"Name\";s:13:\"20190815_test\";s:4:\"Hash\";s:35:\"495ceb7badf5b1199861_20191204132409\";s:8:\"NameHash\";s:49:\"20190815_test_495ceb7badf5b1199861_20191204132409\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:38:\"D:/OS/domains/recruit/wp-snapshots/tmp\";s:8:\"StoreURL\";s:28:\"http://recruit/wp-snapshots/\";s:8:\"ScanFile\";s:59:\"20190815_test_495ceb7badf5b1199861_20191204132409_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";s:10:\"19.72 sec.\";s:7:\"ExeSize\";s:7:\"60.52KB\";s:7:\"ZipSize\";s:7:\"64.51MB\";s:6:\"Status\";s:5:\"100.0\";s:6:\"WPUser\";s:7:\"unknown\";s:7:\"Archive\";O:11:\"DUP_Archive\":23:{s:10:\"FilterDirs\";s:136:\"D:/OS/domains/recruit/archive;D:/OS/domains/recruit/archive/BG;D:/OS/domains/recruit/archive/PSD;D:/OS/domains/recruit/archive/pics/car;\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:1;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";s:61:\"20190815_test_495ceb7badf5b1199861_20191204132409_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:21:\"D:/OS/domains/recruit\";s:4:\"Size\";i:67639811;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":5:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":6:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:5684;s:10:\"\0*\0Package\";r:1;s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:30:\"D:/OS/domains/recruit/wp-admin\";i:1;s:40:\"D:/OS/domains/recruit/wp-content/uploads\";i:2;s:42:\"D:/OS/domains/recruit/wp-content/languages\";i:3;s:39:\"D:/OS/domains/recruit/wp-content/themes\";i:4;s:33:\"D:/OS/domains/recruit/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:21:\"D:/OS/domains/recruit\";i:1;s:32:\"D:/OS/domains/recruit/wp-content\";}s:19:\"isOuterWPContentDir\";b:0;s:25:\"wpContentDirNormalizePath\";s:33:\"D:/OS/domains/recruit/wp-content/\";}s:9:\"Installer\";O:13:\"DUP_Installer\":11:{s:4:\"File\";s:63:\"20190815_test_495ceb7badf5b1199861_20191204132409_installer.php\";s:4:\"Size\";i:61975;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:1;}s:8:\"Database\";O:12:\"DUP_Database\":15:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";i:972236;s:4:\"File\";s:62:\"20190815_test_495ceb7badf5b1199861_20191204132409_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:31:\"mariadb.org binary distribution\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":15:{s:9:\"buildMode\";s:3:\"PHP\";s:13:\"collationList\";a:3:{i:0;s:18:\"utf8mb4_unicode_ci\";i:1;s:15:\"utf8_general_ci\";i:2;s:11:\"utf8mb4_bin\";}s:17:\"isTablesUpperCase\";i:0;s:15:\"isNameUpperCase\";i:0;s:4:\"name\";s:7:\"recruit\";s:15:\"tablesBaseCount\";i:19;s:16:\"tablesFinalCount\";i:19;s:14:\"tablesRowCount\";s:5:\"1,997\";s:16:\"tablesSizeOnDisk\";s:6:\"1.34MB\";s:18:\"varLowerCaseTables\";s:1:\"1\";s:7:\"version\";s:7:\"10.3.13\";s:14:\"versionComment\";s:31:\"mariadb.org binary distribution\";s:18:\"tableWiseRowCounts\";a:19:{s:14:\"wp_commentmeta\";s:1:\"0\";s:11:\"wp_comments\";s:1:\"1\";s:22:\"wp_duplicator_packages\";s:1:\"1\";s:8:\"wp_links\";s:1:\"0\";s:10:\"wp_options\";s:3:\"170\";s:11:\"wp_postmeta\";s:3:\"523\";s:8:\"wp_posts\";s:3:\"139\";s:21:\"wp_term_relationships\";s:3:\"145\";s:16:\"wp_term_taxonomy\";s:2:\"38\";s:11:\"wp_termmeta\";s:1:\"0\";s:8:\"wp_terms\";s:2:\"38\";s:29:\"wp_trp_dictionary_en_us_de_de\";s:2:\"17\";s:29:\"wp_trp_dictionary_en_us_ru_ru\";s:3:\"107\";s:20:\"wp_trp_gettext_de_de\";s:3:\"155\";s:20:\"wp_trp_gettext_en_us\";s:3:\"297\";s:20:\"wp_trp_gettext_ru_ru\";s:3:\"273\";s:11:\"wp_usermeta\";s:2:\"80\";s:8:\"wp_users\";s:1:\"4\";s:9:\"wp_wistra\";s:2:\"13\";}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:1;s:25:\"\0DUP_Database\0dbStorePath\";s:101:\"D:/OS/domains/recruit/wp-snapshots/tmp/20190815_test_495ceb7badf5b1199861_20191204132409_database.sql\";s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;s:19:\"sameNameTableExists\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:1;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";O:11:\"DUP_Package\":25:{s:7:\"Created\";s:19:\"2019-12-04 13:24:09\";s:7:\"Version\";s:6:\"1.3.24\";s:9:\"VersionWP\";s:5:\"5.2.4\";s:9:\"VersionDB\";s:7:\"10.3.13\";s:10:\"VersionPHP\";s:6:\"7.1.22\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:13:\"20190815_test\";s:4:\"Hash\";s:35:\"495ceb7badf5b1199861_20191204132409\";s:8:\"NameHash\";s:49:\"20190815_test_495ceb7badf5b1199861_20191204132409\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:38:\"D:/OS/domains/recruit/wp-snapshots/tmp\";s:8:\"StoreURL\";s:28:\"http://recruit/wp-snapshots/\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:23;s:9:\"Installer\";r:76;s:8:\"Database\";r:88;s:13:\"BuildProgress\";r:141;}}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://recruit', 'yes'),
(2, 'home', 'http://recruit', 'yes'),
(3, 'blogname', 'test', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', '1@i.ua', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:192:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:10:\"resumes/?$\";s:26:\"index.php?post_type=resume\";s:27:\"resumes/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=resume&paged=$matches[1]\";s:12:\"vacancies/?$\";s:27:\"index.php?post_type=vacancy\";s:29:\"vacancies/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=vacancy&paged=$matches[1]\";s:12:\"employers/?$\";s:28:\"index.php?post_type=employer\";s:32:\"^resumes/([^/]+)/page/([0-9]+)/?\";s:81:\"index.php?post_type=resume&taxonomy=resume_cat&term=$matches[1]&paged=$matches[2]\";s:7:\"tips/?$\";s:23:\"index.php?post_type=tip\";s:14:\"^en/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:17:\"^en/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:24:\"^en/index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:27:\"^en/index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:49:\"city_cat/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?city_cat=$matches[1]&feed=$matches[2]\";s:44:\"city_cat/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?city_cat=$matches[1]&feed=$matches[2]\";s:25:\"city_cat/([^/]+)/embed/?$\";s:41:\"index.php?city_cat=$matches[1]&embed=true\";s:37:\"city_cat/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?city_cat=$matches[1]&paged=$matches[2]\";s:19:\"city_cat/([^/]+)/?$\";s:30:\"index.php?city_cat=$matches[1]\";s:40:\"resume_cats/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?resume_cat=$matches[1]&paged=$matches[2]\";s:22:\"resume_cats/([^/]+)/?$\";s:32:\"index.php?resume_cat=$matches[1]\";s:37:\"job_cats/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?job_cat=$matches[1]&paged=$matches[2]\";s:19:\"job_cats/([^/]+)/?$\";s:29:\"index.php?job_cat=$matches[1]\";s:42:\"language_cats/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?language_cat=$matches[1]&paged=$matches[2]\";s:24:\"language_cats/([^/]+)/?$\";s:34:\"index.php?language_cat=$matches[1]\";s:41:\"resumes/[^/]+/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"resumes/[^/]+/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"resumes/[^/]+/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"resumes/[^/]+/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"resumes/[^/]+/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"resumes/[^/]+/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"resumes/([^/]+)/([^/]+)/embed/?$\";s:62:\"index.php?resume_cat=$matches[1]&resume=$matches[2]&embed=true\";s:36:\"resumes/([^/]+)/([^/]+)/trackback/?$\";s:56:\"index.php?resume_cat=$matches[1]&resume=$matches[2]&tb=1\";s:44:\"resumes/([^/]+)/([^/]+)/page/?([0-9]{1,})/?$\";s:69:\"index.php?resume_cat=$matches[1]&resume=$matches[2]&paged=$matches[3]\";s:51:\"resumes/([^/]+)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:69:\"index.php?resume_cat=$matches[1]&resume=$matches[2]&cpage=$matches[3]\";s:40:\"resumes/([^/]+)/([^/]+)(?:/([0-9]+))?/?$\";s:68:\"index.php?resume_cat=$matches[1]&resume=$matches[2]&page=$matches[3]\";s:30:\"resumes/[^/]+/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"resumes/[^/]+/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"resumes/[^/]+/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"resumes/[^/]+/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"resumes/[^/]+/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"resumes/[^/]+/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"resumes/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?resume_cat=$matches[1]&paged=$matches[2]\";s:43:\"resumes/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?resume_cat=$matches[1]&cpage=$matches[2]\";s:18:\"resumes/([^/]+)/?$\";s:32:\"index.php?resume_cat=$matches[1]\";s:43:\"vacancies/[^/]+/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"vacancies/[^/]+/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"vacancies/[^/]+/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"vacancies/[^/]+/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"vacancies/[^/]+/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"vacancies/[^/]+/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"vacancies/([^/]+)/([^/]+)/embed/?$\";s:63:\"index.php?resume_cat=$matches[1]&vacancy=$matches[2]&embed=true\";s:38:\"vacancies/([^/]+)/([^/]+)/trackback/?$\";s:57:\"index.php?resume_cat=$matches[1]&vacancy=$matches[2]&tb=1\";s:46:\"vacancies/([^/]+)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?resume_cat=$matches[1]&vacancy=$matches[2]&paged=$matches[3]\";s:53:\"vacancies/([^/]+)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?resume_cat=$matches[1]&vacancy=$matches[2]&cpage=$matches[3]\";s:42:\"vacancies/([^/]+)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?resume_cat=$matches[1]&vacancy=$matches[2]&page=$matches[3]\";s:32:\"vacancies/[^/]+/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"vacancies/[^/]+/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"vacancies/[^/]+/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"vacancies/[^/]+/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"vacancies/[^/]+/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"vacancies/[^/]+/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"vacancies/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?resume_cat=$matches[1]&paged=$matches[2]\";s:45:\"vacancies/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?resume_cat=$matches[1]&cpage=$matches[2]\";s:20:\"vacancies/([^/]+)/?$\";s:32:\"index.php?resume_cat=$matches[1]\";s:43:\"employers/[^/]+/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"employers/[^/]+/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"employers/[^/]+/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"employers/[^/]+/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"employers/[^/]+/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"employers/[^/]+/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"employers/([^/]+)/([^/]+)/embed/?$\";s:64:\"index.php?resume_cat=$matches[1]&employer=$matches[2]&embed=true\";s:38:\"employers/([^/]+)/([^/]+)/trackback/?$\";s:58:\"index.php?resume_cat=$matches[1]&employer=$matches[2]&tb=1\";s:46:\"employers/([^/]+)/([^/]+)/page/?([0-9]{1,})/?$\";s:71:\"index.php?resume_cat=$matches[1]&employer=$matches[2]&paged=$matches[3]\";s:53:\"employers/([^/]+)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:71:\"index.php?resume_cat=$matches[1]&employer=$matches[2]&cpage=$matches[3]\";s:42:\"employers/([^/]+)/([^/]+)(?:/([0-9]+))?/?$\";s:70:\"index.php?resume_cat=$matches[1]&employer=$matches[2]&page=$matches[3]\";s:32:\"employers/[^/]+/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"employers/[^/]+/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"employers/[^/]+/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"employers/[^/]+/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"employers/[^/]+/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"employers/[^/]+/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"employers/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?resume_cat=$matches[1]&paged=$matches[2]\";s:45:\"employers/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?resume_cat=$matches[1]&cpage=$matches[2]\";s:20:\"employers/([^/]+)/?$\";s:32:\"index.php?resume_cat=$matches[1]\";s:38:\"tips_cats/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?tips_cat=$matches[1]&paged=$matches[2]\";s:20:\"tips_cats/([^/]+)/?$\";s:30:\"index.php?tips_cat=$matches[1]\";s:38:\"tips/[^/]+/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"tips/[^/]+/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"tips/[^/]+/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"tips/[^/]+/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"tips/[^/]+/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"tips/[^/]+/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"tips/([^/]+)/([^/]+)/embed/?$\";s:57:\"index.php?tips_cat=$matches[1]&tip=$matches[2]&embed=true\";s:33:\"tips/([^/]+)/([^/]+)/trackback/?$\";s:51:\"index.php?tips_cat=$matches[1]&tip=$matches[2]&tb=1\";s:41:\"tips/([^/]+)/([^/]+)/page/?([0-9]{1,})/?$\";s:64:\"index.php?tips_cat=$matches[1]&tip=$matches[2]&paged=$matches[3]\";s:48:\"tips/([^/]+)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:64:\"index.php?tips_cat=$matches[1]&tip=$matches[2]&cpage=$matches[3]\";s:37:\"tips/([^/]+)/([^/]+)(?:/([0-9]+))?/?$\";s:63:\"index.php?tips_cat=$matches[1]&tip=$matches[2]&page=$matches[3]\";s:27:\"tips/[^/]+/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"tips/[^/]+/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"tips/[^/]+/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"tips/[^/]+/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"tips/[^/]+/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"tips/[^/]+/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"tips/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?tips_cat=$matches[1]&paged=$matches[2]\";s:40:\"tips/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?tips_cat=$matches[1]&cpage=$matches[2]\";s:15:\"tips/([^/]+)/?$\";s:30:\"index.php?tips_cat=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=154&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:25:\"duplicator/duplicator.php\";i:2;s:19:\"members/members.php\";i:3;s:28:\"qtranslate-xt/qtranslate.php\";i:4;s:65:\"regenerate-thumbnails-advanced/regenerate-thumbnails-advanced.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'UDFT', 'yes'),
(41, 'stylesheet', 'UDFT', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '154', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:139:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:16:\"read_psp_project\";b:1;s:25:\"read_private_psp_projects\";b:1;s:16:\"edit_psp_project\";b:1;s:17:\"edit_psp_projects\";b:1;s:24:\"edit_others_psp_projects\";b:1;s:27:\"edit_published_psp_projects\";b:1;s:20:\"publish_psp_projects\";b:1;s:26:\"delete_others_psp_projects\";b:1;s:27:\"delete_private_psp_projects\";b:1;s:29:\"delete_published_psp_projects\";b:1;s:11:\"read_resume\";b:1;s:12:\"read_resumes\";b:1;s:11:\"edit_resume\";b:1;s:12:\"edit_resumes\";b:1;s:19:\"edit_others_resumes\";b:1;s:22:\"edit_published_resumes\";b:1;s:15:\"publish_resumes\";b:1;s:21:\"delete_others_resumes\";b:1;s:22:\"delete_private_resumes\";b:1;s:24:\"delete_published_resumes\";b:1;s:16:\"restrict_content\";b:1;s:10:\"list_roles\";b:1;s:12:\"create_roles\";b:1;s:12:\"delete_roles\";b:1;s:10:\"edit_roles\";b:1;s:16:\"delete_employers\";b:1;s:23:\"delete_others_employers\";b:1;s:22:\"delete_others_vacancys\";b:1;s:24:\"delete_private_employers\";b:1;s:23:\"delete_private_vacancys\";b:1;s:26:\"delete_published_employers\";b:1;s:25:\"delete_published_vacancys\";b:1;s:15:\"delete_vacancys\";b:1;s:14:\"edit_employers\";b:1;s:21:\"edit_others_employers\";b:1;s:20:\"edit_others_vacancys\";b:1;s:22:\"edit_private_employers\";b:1;s:21:\"edit_private_vacancys\";b:1;s:24:\"edit_published_employers\";b:1;s:23:\"edit_published_vacancys\";b:1;s:13:\"edit_vacancys\";b:1;s:17:\"publish_employers\";b:1;s:16:\"publish_vacancys\";b:1;s:22:\"read_private_employers\";b:1;s:21:\"read_private_vacancys\";b:1;s:14:\"delete_resumes\";b:1;s:20:\"edit_private_resumes\";b:1;s:20:\"read_private_resumes\";b:1;s:10:\"edit_tipss\";b:1;s:17:\"edit_others_tipss\";b:1;s:13:\"publish_tipss\";b:1;s:18:\"read_private_tipss\";b:1;s:12:\"delete_tipss\";b:1;s:20:\"delete_private_tipss\";b:1;s:22:\"delete_published_tipss\";b:1;s:19:\"delete_others_tipss\";b:1;s:18:\"edit_private_tipss\";b:1;s:20:\"edit_published_tipss\";b:1;s:12:\"edit_reviews\";b:1;s:19:\"edit_others_reviews\";b:1;s:15:\"publish_reviews\";b:1;s:20:\"read_private_reviews\";b:1;s:14:\"delete_reviews\";b:1;s:22:\"delete_private_reviews\";b:1;s:24:\"delete_published_reviews\";b:1;s:21:\"delete_others_reviews\";b:1;s:20:\"edit_private_reviews\";b:1;s:22:\"edit_published_reviews\";b:1;s:9:\"edit_tips\";b:1;s:16:\"edit_others_tips\";b:1;s:12:\"publish_tips\";b:1;s:17:\"read_private_tips\";b:1;s:11:\"delete_tips\";b:1;s:19:\"delete_private_tips\";b:1;s:21:\"delete_published_tips\";b:1;s:18:\"delete_others_tips\";b:1;s:17:\"edit_private_tips\";b:1;s:19:\"edit_published_tips\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:54:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:16:\"read_psp_project\";b:1;s:25:\"read_private_psp_projects\";b:1;s:16:\"edit_psp_project\";b:1;s:17:\"edit_psp_projects\";b:1;s:24:\"edit_others_psp_projects\";b:1;s:27:\"edit_published_psp_projects\";b:1;s:20:\"publish_psp_projects\";b:1;s:26:\"delete_others_psp_projects\";b:1;s:27:\"delete_private_psp_projects\";b:1;s:29:\"delete_published_psp_projects\";b:1;s:11:\"read_resume\";b:1;s:12:\"read_resumes\";b:1;s:11:\"edit_resume\";b:1;s:12:\"edit_resumes\";b:1;s:19:\"edit_others_resumes\";b:1;s:22:\"edit_published_resumes\";b:1;s:15:\"publish_resumes\";b:1;s:21:\"delete_others_resumes\";b:1;s:22:\"delete_private_resumes\";b:1;s:24:\"delete_published_resumes\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:9:\"applicant\";a:2:{s:4:\"name\";s:9:\"applicant\";s:12:\"capabilities\";a:88:{s:4:\"read\";b:0;s:11:\"edit_resume\";b:1;s:12:\"upload_files\";b:1;s:21:\"delete_others_resumes\";b:0;s:22:\"delete_private_resumes\";b:0;s:24:\"delete_published_resumes\";b:1;s:19:\"edit_others_resumes\";b:0;s:22:\"edit_published_resumes\";b:1;s:15:\"publish_resumes\";b:1;s:20:\"read_private_resumes\";b:0;s:14:\"delete_resumes\";b:1;s:20:\"edit_private_resumes\";b:0;s:16:\"activate_plugins\";b:0;s:12:\"create_roles\";b:0;s:12:\"create_users\";b:0;s:13:\"delete_blocks\";b:0;s:16:\"delete_employers\";b:0;s:19:\"delete_others_pages\";b:0;s:19:\"delete_others_posts\";b:0;s:12:\"delete_pages\";b:0;s:14:\"delete_plugins\";b:0;s:12:\"delete_posts\";b:0;s:21:\"delete_private_blocks\";b:0;s:24:\"delete_private_employers\";b:0;s:20:\"delete_private_pages\";b:0;s:20:\"delete_private_posts\";b:0;s:23:\"delete_private_vacancys\";b:0;s:26:\"delete_published_employers\";b:0;s:22:\"delete_published_pages\";b:0;s:22:\"delete_published_posts\";b:0;s:25:\"delete_published_vacancys\";b:0;s:12:\"delete_roles\";b:0;s:13:\"delete_themes\";b:0;s:12:\"delete_users\";b:0;s:15:\"delete_vacancys\";b:0;s:14:\"edit_dashboard\";b:0;s:14:\"edit_employers\";b:0;s:10:\"edit_files\";b:0;s:17:\"edit_others_pages\";b:0;s:17:\"edit_others_posts\";b:0;s:10:\"edit_pages\";b:0;s:12:\"edit_plugins\";b:0;s:10:\"edit_posts\";b:0;s:19:\"edit_private_blocks\";b:0;s:22:\"edit_private_employers\";b:0;s:18:\"edit_private_pages\";b:0;s:18:\"edit_private_posts\";b:0;s:21:\"edit_private_vacancys\";b:0;s:24:\"edit_published_employers\";b:0;s:20:\"edit_published_pages\";b:0;s:20:\"edit_published_posts\";b:0;s:23:\"edit_published_vacancys\";b:0;s:10:\"edit_roles\";b:0;s:18:\"edit_theme_options\";b:0;s:11:\"edit_themes\";b:0;s:10:\"edit_users\";b:0;s:13:\"edit_vacancys\";b:0;s:6:\"export\";b:0;s:6:\"import\";b:0;s:15:\"install_plugins\";b:0;s:14:\"install_themes\";b:0;s:10:\"list_roles\";b:0;s:10:\"list_users\";b:0;s:17:\"manage_categories\";b:0;s:12:\"manage_links\";b:0;s:14:\"manage_options\";b:0;s:17:\"moderate_comments\";b:0;s:13:\"promote_users\";b:0;s:14:\"publish_blocks\";b:0;s:17:\"publish_employers\";b:0;s:13:\"publish_pages\";b:0;s:13:\"publish_posts\";b:0;s:16:\"publish_vacancys\";b:0;s:19:\"read_private_blocks\";b:0;s:22:\"read_private_employers\";b:0;s:18:\"read_private_pages\";b:0;s:18:\"read_private_posts\";b:0;s:21:\"read_private_vacancys\";b:0;s:12:\"remove_users\";b:0;s:13:\"switch_themes\";b:0;s:15:\"unfiltered_html\";b:0;s:11:\"update_core\";b:0;s:14:\"update_plugins\";b:0;s:13:\"update_themes\";b:0;s:20:\"edit_others_vacancys\";b:0;s:22:\"delete_others_vacancys\";b:0;s:21:\"edit_others_employers\";b:0;s:23:\"delete_others_employers\";b:0;}}s:8:\"employer\";a:2:{s:4:\"name\";s:8:\"Employer\";s:12:\"capabilities\";a:89:{s:4:\"read\";b:1;s:12:\"edit_vacancy\";b:1;s:13:\"edit_vacancys\";b:1;s:16:\"activate_plugins\";b:0;s:12:\"create_roles\";b:0;s:12:\"create_users\";b:0;s:19:\"delete_others_pages\";b:0;s:19:\"delete_others_posts\";b:0;s:21:\"delete_others_resumes\";b:0;s:12:\"delete_pages\";b:0;s:14:\"delete_plugins\";b:0;s:12:\"delete_posts\";b:0;s:20:\"delete_private_pages\";b:0;s:20:\"delete_private_posts\";b:0;s:22:\"delete_private_resumes\";b:0;s:22:\"delete_published_pages\";b:0;s:22:\"delete_published_posts\";b:0;s:24:\"delete_published_resumes\";b:0;s:14:\"delete_resumes\";b:0;s:12:\"delete_roles\";b:0;s:13:\"delete_themes\";b:0;s:12:\"delete_users\";b:0;s:14:\"edit_dashboard\";b:0;s:10:\"edit_files\";b:0;s:17:\"edit_others_pages\";b:0;s:17:\"edit_others_posts\";b:0;s:19:\"edit_others_resumes\";b:0;s:10:\"edit_pages\";b:0;s:12:\"edit_plugins\";b:0;s:10:\"edit_posts\";b:0;s:18:\"edit_private_pages\";b:0;s:18:\"edit_private_posts\";b:0;s:20:\"edit_private_resumes\";b:0;s:20:\"edit_published_pages\";b:0;s:20:\"edit_published_posts\";b:0;s:22:\"edit_published_resumes\";b:0;s:12:\"edit_resumes\";b:0;s:10:\"edit_roles\";b:0;s:18:\"edit_theme_options\";b:0;s:11:\"edit_themes\";b:0;s:10:\"edit_users\";b:0;s:6:\"export\";b:0;s:6:\"import\";b:0;s:15:\"install_plugins\";b:0;s:14:\"install_themes\";b:0;s:10:\"list_roles\";b:0;s:10:\"list_users\";b:0;s:17:\"manage_categories\";b:0;s:12:\"manage_links\";b:0;s:14:\"manage_options\";b:0;s:17:\"moderate_comments\";b:0;s:13:\"promote_users\";b:0;s:13:\"publish_pages\";b:0;s:13:\"publish_posts\";b:0;s:15:\"publish_resumes\";b:0;s:18:\"read_private_pages\";b:0;s:18:\"read_private_posts\";b:0;s:20:\"read_private_resumes\";b:0;s:12:\"remove_users\";b:0;s:13:\"switch_themes\";b:0;s:15:\"unfiltered_html\";b:0;s:11:\"update_core\";b:0;s:14:\"update_plugins\";b:0;s:13:\"update_themes\";b:0;s:14:\"publish_blocks\";b:0;s:19:\"read_private_blocks\";b:0;s:13:\"delete_blocks\";b:0;s:21:\"delete_private_blocks\";b:0;s:19:\"edit_private_blocks\";b:0;s:16:\"publish_vacancys\";b:1;s:21:\"read_private_vacancys\";b:1;s:15:\"delete_vacancys\";b:1;s:23:\"delete_private_vacancys\";b:1;s:25:\"delete_published_vacancys\";b:1;s:21:\"edit_private_vacancys\";b:1;s:23:\"edit_published_vacancys\";b:1;s:14:\"edit_employers\";b:1;s:17:\"publish_employers\";b:1;s:22:\"read_private_employers\";b:1;s:16:\"delete_employers\";b:1;s:24:\"delete_private_employers\";b:1;s:26:\"delete_published_employers\";b:1;s:22:\"edit_private_employers\";b:1;s:24:\"edit_published_employers\";b:1;s:23:\"delete_others_employers\";b:0;s:22:\"delete_others_vacancys\";b:0;s:21:\"edit_others_employers\";b:0;s:20:\"edit_others_vacancys\";b:0;s:12:\"upload_files\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:6:{i:1652194306;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1652215906;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1652259105;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1652259120;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1652259122;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1565600006;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(128, 'can_compress_scripts', '1', 'no'),
(141, 'recently_activated', 'a:0:{}', 'yes'),
(142, 'current_theme', 'HTML5 Blank', 'yes'),
(143, 'theme_mods_UDFT', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:15:\"header-location\";i:0;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(144, 'theme_switched', '', 'yes'),
(145, 'recovery_mode_email_last_sent', '1570696647', 'yes'),
(151, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(229, 'duplicator_settings', 'a:15:{s:7:\"version\";s:6:\"1.3.24\";s:18:\"uninstall_settings\";b:1;s:15:\"uninstall_files\";b:1;s:16:\"uninstall_tables\";b:1;s:13:\"package_debug\";b:0;s:17:\"package_mysqldump\";b:1;s:22:\"package_mysqldump_path\";s:0:\"\";s:24:\"package_phpdump_qrylimit\";s:3:\"100\";s:17:\"package_zip_flush\";b:0;s:20:\"storage_htaccess_off\";b:0;s:18:\"archive_build_mode\";i:2;s:17:\"skip_archive_scan\";b:0;s:21:\"unhook_third_party_js\";b:0;s:22:\"unhook_third_party_css\";b:0;s:17:\"active_package_id\";i:4;}', 'yes'),
(230, 'duplicator_version_plugin', '1.3.24', 'yes'),
(231, 'duplicator_package_active', 'O:11:\"DUP_Package\":25:{s:7:\"Created\";s:19:\"2019-12-04 13:24:09\";s:7:\"Version\";s:6:\"1.3.24\";s:9:\"VersionWP\";s:5:\"5.2.4\";s:9:\"VersionDB\";s:7:\"10.3.13\";s:10:\"VersionPHP\";s:6:\"7.1.22\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:13:\"20190815_test\";s:4:\"Hash\";s:35:\"495ceb7badf5b1199861_20191204132409\";s:8:\"NameHash\";s:49:\"20190815_test_495ceb7badf5b1199861_20191204132409\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:38:\"D:/OS/domains/recruit/wp-snapshots/tmp\";s:8:\"StoreURL\";s:28:\"http://recruit/wp-snapshots/\";s:8:\"ScanFile\";s:59:\"20190815_test_495ceb7badf5b1199861_20191204132409_scan.json\";s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";O:11:\"DUP_Archive\":21:{s:10:\"FilterDirs\";s:136:\"D:/OS/domains/recruit/archive;D:/OS/domains/recruit/archive/BG;D:/OS/domains/recruit/archive/PSD;D:/OS/domains/recruit/archive/pics/car;\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:1;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";N;s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:21:\"D:/OS/domains/recruit\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":5:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":6:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":3:{s:4:\"Core\";a:0:{}s:6:\"Global\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"file_count\";i:-1;s:10:\"\0*\0Package\";O:11:\"DUP_Package\":25:{s:7:\"Created\";s:19:\"2019-12-04 13:24:09\";s:7:\"Version\";s:6:\"1.3.24\";s:9:\"VersionWP\";s:5:\"5.2.4\";s:9:\"VersionDB\";s:7:\"10.3.13\";s:10:\"VersionPHP\";s:6:\"7.1.22\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:13:\"20190815_test\";s:4:\"Hash\";s:35:\"495ceb7badf5b1199861_20191204132409\";s:8:\"NameHash\";s:49:\"20190815_test_495ceb7badf5b1199861_20191204132409\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:38:\"D:/OS/domains/recruit/wp-snapshots/tmp\";s:8:\"StoreURL\";s:28:\"http://recruit/wp-snapshots/\";s:8:\"ScanFile\";N;s:10:\"TimerStart\";i:-1;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";i:0;s:6:\"WPUser\";N;s:7:\"Archive\";r:23;s:9:\"Installer\";O:13:\"DUP_Installer\":11:{s:4:\"File\";N;s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:12:\"OptsSecureOn\";i:0;s:14:\"OptsSecurePass\";s:0:\"\";s:13:\"numFilesAdded\";i:0;s:12:\"numDirsAdded\";i:0;s:10:\"\0*\0Package\";r:63;}s:8:\"Database\";O:12:\"DUP_Database\":14:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";N;s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:31:\"mariadb.org binary distribution\";s:4:\"info\";O:16:\"DUP_DatabaseInfo\":15:{s:9:\"buildMode\";N;s:13:\"collationList\";a:0:{}s:17:\"isTablesUpperCase\";N;s:15:\"isNameUpperCase\";N;s:4:\"name\";N;s:15:\"tablesBaseCount\";N;s:16:\"tablesFinalCount\";N;s:14:\"tablesRowCount\";N;s:16:\"tablesSizeOnDisk\";N;s:18:\"varLowerCaseTables\";i:1;s:7:\"version\";N;s:14:\"versionComment\";N;s:18:\"tableWiseRowCounts\";a:0:{}s:33:\"\0DUP_DatabaseInfo\0intFieldsStruct\";a:0:{}s:42:\"\0DUP_DatabaseInfo\0indexProcessedSchemaSize\";a:0:{}}s:10:\"\0*\0Package\";r:63;s:25:\"\0DUP_Database\0dbStorePath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}s:13:\"BuildProgress\";O:18:\"DUP_Build_Progress\":12:{s:17:\"thread_start_time\";N;s:11:\"initialized\";b:0;s:15:\"installer_built\";b:0;s:15:\"archive_started\";b:0;s:20:\"archive_has_database\";b:0;s:13:\"archive_built\";b:0;s:21:\"database_script_built\";b:0;s:6:\"failed\";b:0;s:7:\"retries\";i:0;s:14:\"build_failures\";a:0:{}s:19:\"validation_failures\";a:0:{}s:27:\"\0DUP_Build_Progress\0package\";r:63;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:5:{i:0;s:30:\"D:/OS/domains/recruit/wp-admin\";i:1;s:40:\"D:/OS/domains/recruit/wp-content/uploads\";i:2;s:42:\"D:/OS/domains/recruit/wp-content/languages\";i:3;s:39:\"D:/OS/domains/recruit/wp-content/themes\";i:4;s:33:\"D:/OS/domains/recruit/wp-includes\";}s:29:\"\0DUP_Archive\0wpCoreExactPaths\";a:2:{i:0;s:21:\"D:/OS/domains/recruit\";i:1;s:32:\"D:/OS/domains/recruit/wp-content\";}}s:9:\"Installer\";r:86;s:8:\"Database\";r:98;s:13:\"BuildProgress\";r:128;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(275, 'GTranslate', 'a:21:{s:11:\"pro_version\";s:0:\"\";s:18:\"enterprise_version\";s:0:\"\";s:15:\"url_translation\";s:0:\"\";s:17:\"add_hreflang_tags\";s:0:\"\";s:10:\"new_window\";s:0:\"\";s:12:\"show_in_menu\";s:15:\"header-location\";s:26:\"floating_language_selector\";s:9:\"top_right\";s:21:\"native_language_names\";s:0:\"\";s:9:\"analytics\";s:0:\"\";s:23:\"detect_browser_language\";s:0:\"\";s:12:\"add_new_line\";i:1;s:16:\"default_language\";s:2:\"en\";s:18:\"translation_method\";s:5:\"onfly\";s:11:\"widget_look\";s:19:\"dropdown_with_flags\";s:9:\"flag_size\";i:24;s:11:\"widget_code\";s:6171:\"<!-- GTranslate: https://gtranslate.io/ -->\r\n<style type=\"text/css\">\r\n.switcher {font-family:Arial;font-size:10pt;text-align:left;cursor:pointer;overflow:hidden;width:163px;line-height:17px;}\r\n.switcher a {text-decoration:none;display:block;font-size:10pt;-webkit-box-sizing:content-box;-moz-box-sizing:content-box;box-sizing:content-box;}\r\n.switcher a img {vertical-align:middle;display:inline;border:0;padding:0;margin:0;opacity:0.8;}\r\n.switcher a:hover img {opacity:1;}\r\n.switcher .selected {background:#FFFFFF url(//recruit/wp-content/plugins/gtranslate/switcher.png) repeat-x;position:relative;z-index:9999;}\r\n.switcher .selected a {border:1px solid #CCCCCC;background:url(//recruit/wp-content/plugins/gtranslate/arrow_down.png) 146px center no-repeat;color:#666666;padding:3px 5px;width:151px;}\r\n.switcher .selected a.open {background-image:url(//recruit/wp-content/plugins/gtranslate/arrow_up.png)}\r\n.switcher .selected a:hover {background:#F0F0F0 url(//recruit/wp-content/plugins/gtranslate/arrow_down.png) 146px center no-repeat;}\r\n.switcher .option {position:relative;z-index:9998;border-left:1px solid #CCCCCC;border-right:1px solid #CCCCCC;border-bottom:1px solid #CCCCCC;background-color:#EEEEEE;display:none;width:161px;max-height:198px;-webkit-box-sizing:content-box;-moz-box-sizing:content-box;box-sizing:content-box;overflow-y:auto;overflow-x:hidden;}\r\n.switcher .option a {color:#000;padding:3px 5px;}\r\n.switcher .option a:hover {background:#FFC;}\r\n.switcher .option a.selected {background:#FFC;}\r\n#selected_lang_name {float: none;}\r\n.l_name {float: none !important;margin: 0;}\r\n.switcher .option::-webkit-scrollbar-track{-webkit-box-shadow:inset 0 0 3px rgba(0,0,0,0.3);border-radius:5px;background-color:#F5F5F5;}\r\n.switcher .option::-webkit-scrollbar {width:5px;}\r\n.switcher .option::-webkit-scrollbar-thumb {border-radius:5px;-webkit-box-shadow: inset 0 0 3px rgba(0,0,0,.3);background-color:#888;}\r\n</style>\r\n<div class=\"switcher notranslate\">\r\n<div class=\"selected\">\r\n<a href=\"#\" onclick=\"return false;\"><img src=\"//recruit/wp-content/plugins/gtranslate/flags/16/en.png\" height=\"16\" width=\"16\" alt=\"en\" /> English</a>\r\n</div>\r\n<div class=\"option\">\r\n<a href=\"#\" onclick=\"doGTranslate(\'en|en\');jQuery(\'div.switcher div.selected a\').html(jQuery(this).html());return false;\" title=\"English\" class=\"nturl selected\"><img data-gt-lazy-src=\"//recruit/wp-content/plugins/gtranslate/flags/16/en.png\" height=\"16\" width=\"16\" alt=\"en\" /> English</a><a href=\"#\" onclick=\"doGTranslate(\'en|de\');jQuery(\'div.switcher div.selected a\').html(jQuery(this).html());return false;\" title=\"German\" class=\"nturl\"><img data-gt-lazy-src=\"//recruit/wp-content/plugins/gtranslate/flags/16/de.png\" height=\"16\" width=\"16\" alt=\"de\" /> German</a><a href=\"#\" onclick=\"doGTranslate(\'en|ru\');jQuery(\'div.switcher div.selected a\').html(jQuery(this).html());return false;\" title=\"Russian\" class=\"nturl\"><img data-gt-lazy-src=\"//recruit/wp-content/plugins/gtranslate/flags/16/ru.png\" height=\"16\" width=\"16\" alt=\"ru\" /> Russian</a></div>\r\n</div>\r\n<script type=\"text/javascript\">\r\njQuery(\'.switcher .selected\').click(function() {jQuery(\'.switcher .option a img\').each(function() {if(!jQuery(this)[0].hasAttribute(\'src\'))jQuery(this).attr(\'src\', jQuery(this).attr(\'data-gt-lazy-src\'))});if(!(jQuery(\'.switcher .option\').is(\':visible\'))) {jQuery(\'.switcher .option\').stop(true,true).delay(100).slideDown(500);jQuery(\'.switcher .selected a\').toggleClass(\'open\')}});\r\njQuery(\'.switcher .option\').bind(\'mousewheel\', function(e) {var options = jQuery(\'.switcher .option\');if(options.is(\':visible\'))options.scrollTop(options.scrollTop() - e.originalEvent.wheelDelta);return false;});\r\njQuery(\'body\').not(\'.switcher\').click(function(e) {if(jQuery(\'.switcher .option\').is(\':visible\') && e.target != jQuery(\'.switcher .option\').get(0)) {jQuery(\'.switcher .option\').stop(true,true).delay(100).slideUp(500);jQuery(\'.switcher .selected a\').toggleClass(\'open\')}});\r\n</script>\r\n<style type=\"text/css\">\r\n#goog-gt-tt {display:none !important;}\r\n.goog-te-banner-frame {display:none !important;}\r\n.goog-te-menu-value:hover {text-decoration:none !important;}\r\n.goog-text-highlight {background-color:transparent !important;box-shadow:none !important;}\r\nbody {top:0 !important;}\r\n#google_translate_element2 {display:none!important;}\r\n</style>\r\n\r\n<div id=\"google_translate_element2\"></div>\r\n<script type=\"text/javascript\">\r\nfunction googleTranslateElementInit2() {new google.translate.TranslateElement({pageLanguage: \'en\',autoDisplay: false}, \'google_translate_element2\');}\r\n</script><script type=\"text/javascript\" src=\"//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit2\"></script>\r\n\r\n\r\n<script type=\"text/javascript\">\r\nfunction GTranslateGetCurrentLang() {var keyValue = document[\'cookie\'].match(\'(^|;) ?googtrans=([^;]*)(;|$)\');return keyValue ? keyValue[2].split(\'/\')[2] : null;}\r\nfunction GTranslateFireEvent(element,event){try{if(document.createEventObject){var evt=document.createEventObject();element.fireEvent(\'on\'+event,evt)}else{var evt=document.createEvent(\'HTMLEvents\');evt.initEvent(event,true,true);element.dispatchEvent(evt)}}catch(e){}}\r\nfunction doGTranslate(lang_pair){if(lang_pair.value)lang_pair=lang_pair.value;if(lang_pair==\'\')return;var lang=lang_pair.split(\'|\')[1];if(GTranslateGetCurrentLang() == null && lang == lang_pair.split(\'|\')[0])return;var teCombo;var sel=document.getElementsByTagName(\'select\');for(var i=0;i<sel.length;i++)if(/goog-te-combo/.test(sel[i].className)){teCombo=sel[i];break;}if(document.getElementById(\'google_translate_element2\')==null||document.getElementById(\'google_translate_element2\').innerHTML.length==0||teCombo.length==0||teCombo.innerHTML.length==0){setTimeout(function(){doGTranslate(lang_pair)},500)}else{teCombo.value=lang;GTranslateFireEvent(teCombo,\'change\');GTranslateFireEvent(teCombo,\'change\')}}\r\nif(GTranslateGetCurrentLang() != null)jQuery(document).ready(function() {var lang_html = jQuery(\'div.switcher div.option\').find(\'img[alt=\"\'+GTranslateGetCurrentLang()+\'\"]\').parent().html();if(typeof lang_html != \'undefined\')jQuery(\'div.switcher div.selected a\').html(lang_html.replace(\'data-gt-lazy-\', \'\'));});\r\n</script>\r\n\";s:10:\"incl_langs\";a:10:{i:0;s:2:\"ar\";i:1;s:5:\"zh-CN\";i:2;s:2:\"nl\";i:3;s:2:\"en\";i:4;s:2:\"fr\";i:5;s:2:\"de\";i:6;s:2:\"it\";i:7;s:2:\"pt\";i:8;s:2:\"ru\";i:9;s:2:\"es\";}s:11:\"fincl_langs\";a:3:{i:0;s:2:\"en\";i:1;s:2:\"de\";i:2;s:2:\"ru\";}s:9:\"alt_flags\";a:0:{}s:14:\"language_codes\";s:320:\"af,sq,am,ar,hy,az,eu,be,bn,bs,bg,ca,ceb,ny,zh-CN,zh-TW,co,hr,cs,da,nl,en,eo,et,tl,fi,fr,fy,gl,ka,de,el,gu,ht,ha,haw,iw,hi,hmn,hu,is,ig,id,ga,it,ja,jw,kn,kk,km,ko,ku,ky,lo,la,lv,lt,lb,mk,mg,ms,ml,mt,mi,mr,mn,my,ne,no,ps,fa,pl,pt,pa,ro,ru,sm,gd,sr,st,sn,sd,si,sk,sl,so,es,su,sw,sv,tg,ta,te,th,tr,uk,ur,uz,vi,cy,xh,yi,yo,zu\";s:15:\"language_codes2\";s:320:\"af,sq,am,ar,hy,az,eu,be,bn,bs,bg,ca,ceb,ny,zh-CN,zh-TW,co,hr,cs,da,nl,en,eo,et,tl,fi,fr,fy,gl,ka,de,el,gu,ht,ha,haw,iw,hi,hmn,hu,is,ig,id,ga,it,ja,jw,kn,kk,km,ko,ku,ky,lo,la,lv,lt,lb,mk,mg,ms,ml,mt,mi,mr,mn,my,ne,no,ps,fa,pl,pt,pa,ro,ru,sm,gd,sr,st,sn,sd,si,sk,sl,so,es,su,sw,sv,tg,ta,te,th,tr,uk,ur,uz,vi,cy,xh,yi,yo,zu\";}', 'yes'),
(276, 'widget_gtranslate', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(277, 'gtranslate_admin_notice', 'a:2:{s:15:\"two_week_review\";a:2:{s:5:\"start\";s:9:\"8/22/2019\";s:3:\"int\";i:5;}s:12:\"upgrade_tips\";a:2:{s:5:\"start\";s:9:\"8/19/2019\";s:3:\"int\";i:2;}}', 'yes'),
(278, 'trp_settings', 'a:14:{s:16:\"default-language\";s:5:\"en_US\";s:17:\"publish-languages\";a:2:{i:0;s:5:\"en_US\";i:1;s:5:\"ru_RU\";}s:21:\"translation-languages\";a:2:{i:0;s:5:\"en_US\";i:1;s:5:\"ru_RU\";}s:9:\"url-slugs\";a:2:{s:5:\"en_US\";s:2:\"en\";s:5:\"ru_RU\";s:2:\"ru\";}s:22:\"native_or_english_name\";s:11:\"native_name\";s:36:\"add-subdirectory-to-default-language\";s:2:\"no\";s:30:\"force-language-to-custom-links\";s:2:\"no\";s:11:\"g-translate\";s:2:\"no\";s:15:\"g-translate-key\";s:0:\"\";s:17:\"shortcode-options\";s:16:\"flags-full-names\";s:12:\"menu-options\";s:16:\"flags-full-names\";s:14:\"trp-ls-floater\";s:3:\"yes\";s:15:\"floater-options\";s:16:\"flags-full-names\";s:22:\"google-translate-codes\";a:2:{s:5:\"en_US\";s:2:\"en\";s:5:\"ru_RU\";s:2:\"ru\";}}', 'yes'),
(279, 'trp_plugin_version', '1.5.5', 'yes'),
(625, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:6:\"1@i.ua\";s:7:\"version\";s:5:\"5.2.4\";s:9:\"timestamp\";i:1571125378;}', 'no'),
(734, 'qtranslate_admin_notices', 'a:1:{s:15:\"initial-install\";i:1572955318;}', 'yes'),
(735, 'qtranslate_enabled_languages', 'a:2:{i:0;s:2:\"en\";i:2;s:2:\"ru\";}', 'yes'),
(736, 'qtranslate_default_language', 'en', 'yes'),
(737, 'qtranslate_modules', 'a:6:{s:3:\"acf\";i:2;s:19:\"all-in-one-seo-pack\";i:2;s:16:\"events-made-easy\";i:2;s:7:\"jetpack\";i:2;s:13:\"gravity-forms\";i:2;s:12:\"woo-commerce\";i:2;}', 'yes'),
(740, 'qtranslate_admin_config', 'a:7:{s:4:\"post\";a:4:{s:5:\"pages\";a:2:{s:8:\"post.php\";s:0:\"\";s:12:\"post-new.php\";s:0:\"\";}s:7:\"anchors\";a:1:{s:17:\"post-body-content\";a:1:{s:5:\"where\";s:10:\"first last\";}}s:5:\"forms\";a:2:{s:4:\"post\";a:1:{s:6:\"fields\";a:9:{s:5:\"title\";a:0:{}s:7:\"excerpt\";a:0:{}s:18:\"attachment_caption\";a:0:{}s:14:\"attachment_alt\";a:0:{}s:13:\"view-post-btn\";a:1:{s:6:\"encode\";s:7:\"display\";}s:14:\"wp-editor-area\";a:1:{s:6:\"jquery\";s:15:\".wp-editor-area\";}s:15:\"gallery-caption\";a:2:{s:6:\"jquery\";s:16:\".gallery-caption\";s:6:\"encode\";s:4:\"none\";}s:15:\"wp-caption-text\";a:2:{s:6:\"jquery\";s:16:\".wp-caption-text\";s:6:\"encode\";s:7:\"display\";}s:7:\"img-alt\";a:3:{s:6:\"jquery\";s:3:\"img\";s:5:\"attrs\";a:1:{i:0;s:3:\"alt\";}s:6:\"encode\";s:7:\"display\";}}}s:14:\"wpbody-content\";a:1:{s:6:\"fields\";a:2:{s:7:\"wrap-h1\";a:2:{s:6:\"jquery\";s:8:\".wrap h1\";s:6:\"encode\";s:7:\"display\";}s:7:\"wrap-h2\";a:2:{s:6:\"jquery\";s:8:\".wrap h2\";s:6:\"encode\";s:7:\"display\";}}}}s:7:\"js-exec\";a:1:{s:9:\"post-exec\";a:1:{s:3:\"src\";s:27:\"./admin/js/post-exec.min.js\";}}}s:15:\"options-general\";a:3:{s:14:\"preg_delimiter\";s:1:\"#\";s:5:\"pages\";a:1:{s:19:\"options-general.php\";s:21:\"^(?!.*page=[^=&]+).*$\";}s:5:\"forms\";a:1:{s:7:\"options\";a:1:{s:6:\"fields\";a:3:{s:8:\"blogname\";a:0:{}s:15:\"blogdescription\";a:0:{}s:10:\"head-title\";a:2:{s:6:\"jquery\";s:10:\"head title\";s:6:\"encode\";s:7:\"display\";}}}}}s:7:\"widgets\";a:4:{s:5:\"pages\";a:1:{s:11:\"widgets.php\";s:0:\"\";}s:7:\"anchors\";a:1:{s:13:\"widgets-right\";a:1:{s:5:\"where\";s:12:\"before after\";}}s:5:\"forms\";a:1:{s:13:\"widgets-right\";a:1:{s:6:\"fields\";a:3:{s:12:\"widget-title\";a:1:{s:6:\"jquery\";s:34:\"input[id^=\'widget-\'][id$=\'-title\']\";}s:16:\"widget-text-text\";a:1:{s:6:\"jquery\";s:41:\"textarea[id^=\'widget-text-\'][id$=\'-text\']\";}s:15:\"in-widget-title\";a:2:{s:6:\"jquery\";s:20:\"span.in-widget-title\";s:6:\"encode\";s:7:\"display\";}}}}s:7:\"js-exec\";a:1:{s:12:\"widgets-exec\";a:1:{s:3:\"src\";s:30:\"./admin/js/widgets-exec.min.js\";}}}s:9:\"edit-term\";a:2:{s:5:\"pages\";a:2:{s:8:\"term.php\";s:0:\"\";s:13:\"edit-tags.php\";s:11:\"action=edit\";}s:5:\"forms\";a:1:{s:7:\"edittag\";a:1:{s:6:\"fields\";a:3:{s:4:\"name\";a:0:{}s:11:\"description\";a:0:{}s:6:\"parent\";a:1:{s:6:\"encode\";s:7:\"display\";}}}}}s:9:\"edit-tags\";a:5:{s:14:\"preg_delimiter\";s:1:\"#\";s:5:\"pages\";a:1:{s:13:\"edit-tags.php\";s:21:\"^(?!.*action=edit).*$\";}s:7:\"anchors\";a:1:{s:12:\"posts-filter\";a:1:{s:5:\"where\";s:12:\"before after\";}}s:5:\"forms\";a:3:{s:6:\"addtag\";a:1:{s:6:\"fields\";a:3:{s:8:\"tag-name\";a:0:{}s:15:\"tag-description\";a:0:{}s:6:\"parent\";a:1:{s:6:\"encode\";s:7:\"display\";}}}s:8:\"col-left\";a:1:{s:6:\"fields\";a:1:{s:8:\"tagcloud\";a:2:{s:6:\"jquery\";s:13:\".tagcloud > a\";s:6:\"encode\";s:7:\"display\";}}}s:8:\"the-list\";a:1:{s:6:\"fields\";a:2:{s:9:\"row-title\";a:2:{s:6:\"jquery\";s:10:\".row-title\";s:6:\"encode\";s:7:\"display\";}s:11:\"description\";a:2:{s:6:\"jquery\";s:12:\".description\";s:6:\"encode\";s:7:\"display\";}}}}s:7:\"js-exec\";a:1:{s:14:\"edit-tags-exec\";a:1:{s:3:\"src\";s:32:\"./admin/js/edit-tags-exec.min.js\";}}}s:9:\"nav-menus\";a:4:{s:5:\"pages\";a:1:{s:13:\"nav-menus.php\";s:23:\"action=edit|menu=\\d+|^$\";}s:7:\"anchors\";a:1:{s:12:\"menu-to-edit\";a:1:{s:5:\"where\";s:12:\"before after\";}}s:5:\"forms\";a:2:{s:15:\"update-nav-menu\";a:1:{s:6:\"fields\";a:5:{s:5:\"title\";a:1:{s:6:\"jquery\";s:27:\"[id^=edit-menu-item-title-]\";}s:10:\"attr-title\";a:1:{s:6:\"jquery\";s:32:\"[id^=edit-menu-item-attr-title-]\";}s:11:\"description\";a:1:{s:6:\"jquery\";s:33:\"[id^=edit-menu-item-description-]\";}s:10:\"span.title\";a:2:{s:6:\"jquery\";s:20:\"span.menu-item-title\";s:6:\"encode\";s:7:\"display\";}s:16:\"link-to-original\";a:2:{s:6:\"jquery\";s:20:\".link-to-original >a\";s:6:\"encode\";s:7:\"display\";}}}s:14:\"side-sortables\";a:1:{s:6:\"fields\";a:2:{s:11:\"label.title\";a:2:{s:6:\"jquery\";s:21:\"label.menu-item-title\";s:6:\"encode\";s:7:\"display\";}s:23:\"accordion-section-title\";a:2:{s:6:\"jquery\";s:26:\"h3.accordion-section-title\";s:6:\"encode\";s:7:\"display\";}}}}s:7:\"js-exec\";a:1:{s:14:\"nav-menus-exec\";a:1:{s:3:\"src\";s:32:\"./admin/js/nav-menus-exec.min.js\";}}}s:9:\"all-pages\";a:1:{s:7:\"filters\";a:1:{s:4:\"text\";a:1:{s:11:\"admin_title\";s:2:\"20\";}}}}', 'yes'),
(741, 'qtranslate_front_config', 'a:1:{s:9:\"all-pages\";a:1:{s:7:\"filters\";a:3:{s:4:\"text\";a:11:{s:12:\"widget_title\";s:2:\"20\";s:11:\"widget_text\";s:2:\"20\";s:9:\"the_title\";s:2:\"20\";s:20:\"category_description\";s:2:\"20\";s:9:\"list_cats\";s:2:\"20\";s:16:\"wp_dropdown_cats\";s:2:\"20\";s:9:\"term_name\";s:2:\"20\";s:18:\"get_comment_author\";s:2:\"20\";s:10:\"the_author\";s:2:\"20\";s:9:\"tml_title\";s:2:\"20\";s:16:\"term_description\";s:2:\"20\";}s:4:\"term\";a:10:{s:7:\"cat_row\";s:1:\"0\";s:8:\"cat_rows\";s:1:\"0\";s:19:\"wp_get_object_terms\";s:1:\"0\";s:16:\"single_cat_title\";s:1:\"0\";s:16:\"single_tag_title\";s:1:\"0\";s:17:\"single_term_title\";s:1:\"0\";s:12:\"the_category\";s:1:\"0\";s:8:\"get_term\";s:1:\"0\";s:9:\"get_terms\";s:1:\"0\";s:12:\"get_category\";s:1:\"0\";}s:3:\"url\";a:16:{s:16:\"author_feed_link\";s:2:\"10\";s:11:\"author_link\";s:2:\"10\";s:27:\"get_comment_author_url_link\";s:2:\"10\";s:23:\"post_comments_feed_link\";s:2:\"10\";s:8:\"day_link\";s:2:\"10\";s:10:\"month_link\";s:2:\"10\";s:9:\"year_link\";s:2:\"10\";s:9:\"page_link\";s:2:\"10\";s:9:\"post_link\";s:2:\"10\";s:13:\"category_link\";s:2:\"10\";s:18:\"category_feed_link\";s:2:\"10\";s:8:\"tag_link\";s:2:\"10\";s:9:\"term_link\";s:2:\"10\";s:13:\"the_permalink\";s:2:\"10\";s:9:\"feed_link\";s:2:\"10\";s:13:\"tag_feed_link\";s:2:\"10\";}}}}', 'yes'),
(742, 'widget_qtranslate', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(743, 'qtranslate_next_thanks', '1636978781', 'yes'),
(744, 'qtranslate_next_update_mo', '1636392296', 'yes'),
(745, 'qtranslate_ignore_file_types', 'gif,jpg,jpeg,png,svg,pdf,swf,tif,rar,zip,7z,mpg,divx,mpeg,avi,css,js,mp3,mp4,apk', 'yes'),
(751, 'qtranslate_term_name', 'a:15:{s:6:\"Berlin\";a:2:{s:2:\"en\";s:6:\"Berlin\";s:2:\"ru\";s:12:\"Берлин\";}s:9:\"Frankfurt\";a:2:{s:2:\"en\";s:9:\"Frankfurt\";s:2:\"ru\";s:18:\"Франкфурт\";}s:8:\"Hannover\";a:2:{s:2:\"en\";s:8:\"Hannover\";s:2:\"ru\";s:16:\"Ганновер\";}s:6:\"Russia\";a:2:{s:2:\"en\";s:6:\"Russia\";s:2:\"ru\";s:12:\"Россия\";}s:6:\"Moscow\";a:2:{s:2:\"en\";s:6:\"Moscow\";s:2:\"ru\";s:12:\"Москва\";}s:7:\"Ukraine\";a:2:{s:2:\"en\";s:7:\"Ukraine\";s:2:\"ru\";s:14:\"Украина\";}s:4:\"Kiev\";a:2:{s:2:\"en\";s:4:\"Kiev\";s:2:\"ru\";s:8:\"Киев\";}s:7:\"Germany\";a:2:{s:2:\"en\";s:7:\"Germany\";s:2:\"ru\";s:16:\"Германия\";}s:7:\"english\";a:2:{s:2:\"en\";s:7:\"english\";s:2:\"ru\";s:20:\"английский\";}s:8:\"Part Day\";a:2:{s:2:\"en\";s:8:\"Part Day\";s:2:\"ru\";s:37:\"Частичная занятость\";}s:10:\"Remote Job\";a:2:{s:2:\"en\";s:10:\"Remote Job\";s:2:\"ru\";s:31:\"Удаленная работа\";}s:8:\"Full Day\";a:2:{s:2:\"en\";s:8:\"Full Day\";s:2:\"ru\";s:31:\"Полная занятость\";}s:6:\"german\";a:2:{s:2:\"en\";s:6:\"german\";s:2:\"ru\";s:16:\"немецкий\";}s:12:\"intermediate\";a:2:{s:2:\"en\";s:12:\"intermediate\";s:2:\"ru\";s:16:\"pre-intermediate\";}s:16:\"pre-intermediate\";a:2:{s:2:\"en\";s:16:\"pre-intermediate\";s:2:\"ru\";s:18:\"upper-intermediate\";}}', 'yes'),
(833, 'city_cat_children', 'a:3:{i:13;a:3:{i:0;i:5;i:1;i:6;i:2;i:7;}i:14;a:1:{i:0;i:16;}i:15;a:1:{i:0;i:17;}}', 'yes'),
(1079, 'language_cat_children', 'a:4:{i:22;a:3:{i:0;i:34;i:1;i:35;i:2;i:36;}i:33;a:3:{i:0;i:37;i:1;i:38;i:2;i:39;}i:20;a:3:{i:0;i:40;i:1;i:41;i:2;i:42;}i:21;a:3:{i:0;i:44;i:1;i:45;i:2;i:46;}}', 'yes'),
(1099, 'category_children', 'a:0:{}', 'yes'),
(1146, 'job_cat_children', 'a:0:{}', 'yes'),
(1160, 'resume_cat_children', 'a:0:{}', 'yes'),
(1361, 'tips_cat_children', 'a:0:{}', 'yes'),
(1448, 'duplicator_exe_safe_mode', '', 'yes'),
(1590, 'rta_image_sizes', 'a:4:{s:12:\"jpeg_quality\";s:2:\"90\";s:11:\"image_sizes\";a:0:{}s:19:\"process_image_sizes\";a:10:{i:0;s:9:\"thumbnail\";i:1;s:6:\"medium\";i:2;s:12:\"medium_large\";i:3;s:5:\"large\";i:4;s:15:\"vacancy-archive\";i:5;s:12:\"post-archive\";i:6;s:14:\"resume-archive\";i:7;s:13:\"resume-single\";i:8;s:14:\"employer-thumb\";i:9;s:14:\"review-archive\";}s:21:\"process_image_options\";a:10:{s:9:\"thumbnail\";a:1:{s:15:\"overwrite_files\";b:1;}s:6:\"medium\";a:1:{s:15:\"overwrite_files\";b:1;}s:12:\"medium_large\";a:1:{s:15:\"overwrite_files\";b:1;}s:5:\"large\";a:1:{s:15:\"overwrite_files\";b:1;}s:15:\"vacancy-archive\";a:1:{s:15:\"overwrite_files\";b:1;}s:12:\"post-archive\";a:1:{s:15:\"overwrite_files\";b:1;}s:14:\"resume-archive\";a:1:{s:15:\"overwrite_files\";b:1;}s:13:\"resume-single\";a:1:{s:15:\"overwrite_files\";b:1;}s:14:\"employer-thumb\";a:1:{s:15:\"overwrite_files\";b:1;}s:14:\"review-archive\";a:1:{s:15:\"overwrite_files\";b:1;}}}', 'yes'),
(2129, 'qtranslate_show_displayed_language_prefix', '0', 'yes'),
(2390, '_site_transient_timeout_theme_roots', '1652193625', 'no'),
(2391, '_site_transient_theme_roots', 'a:4:{s:4:\"UDFT\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(2394, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:10:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.9.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.9.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.9.3\";s:7:\"version\";s:5:\"5.9.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.9.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.9.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.9.3\";s:7:\"version\";s:5:\"5.9.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.9.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.9.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.9.2\";s:7:\"version\";s:5:\"5.9.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.8.4\";s:7:\"version\";s:5:\"5.8.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.7.6\";s:7:\"version\";s:5:\"5.7.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:5;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.6.8\";s:7:\"version\";s:5:\"5.6.8\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:6;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.9.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.9.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.9-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.9-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.5.9\";s:7:\"version\";s:5:\"5.5.9\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:7;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-5.4.10.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-5.4.10.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.10-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-5.4.10-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"5.4.10\";s:7:\"version\";s:6:\"5.4.10\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:8;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-5.3.12.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-5.3.12.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.12-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-5.3.12-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:6:\"5.3.12\";s:7:\"version\";s:6:\"5.3.12\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:9;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/wordpress-5.2.15.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/wordpress-5.2.15.zip\";s:10:\"no_content\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.15-no-content.zip\";s:11:\"new_bundled\";s:72:\"https://downloads.wordpress.org/release/wordpress-5.2.15-new-bundled.zip\";s:7:\"partial\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.15-partial-4.zip\";s:8:\"rollback\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.15-rollback-4.zip\";}s:7:\"current\";s:6:\"5.2.15\";s:7:\"version\";s:6:\"5.2.15\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:5:\"5.2.4\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1652191827;s:15:\"version_checked\";s:5:\"5.2.4\";s:12:\"translations\";a:0:{}}', 'no'),
(2395, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1652191828;s:7:\"checked\";a:4:{s:4:\"UDFT\";s:5:\"1.4.3\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.2.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.9\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.9.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.6\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.6.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(2396, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1652191829;s:7:\"checked\";a:5:{s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:25:\"duplicator/duplicator.php\";s:6:\"1.3.24\";s:19:\"members/members.php\";s:5:\"2.2.0\";s:28:\"qtranslate-xt/qtranslate.php\";s:5:\"3.6.1\";s:65:\"regenerate-thumbnails-advanced/regenerate-thumbnails-advanced.php\";s:5:\"2.1.0\";}s:8:\"response\";a:4:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:5:\"5.8.4\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:25:\"duplicator/duplicator.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:24:\"w.org/plugins/duplicator\";s:4:\"slug\";s:10:\"duplicator\";s:6:\"plugin\";s:25:\"duplicator/duplicator.php\";s:11:\"new_version\";s:5:\"1.4.5\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/duplicator/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/duplicator.1.4.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=2605836\";s:2:\"1x\";s:63:\"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=2605835\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=2085472\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";s:6:\"tested\";s:5:\"5.9.3\";s:12:\"requires_php\";s:5:\"5.3.8\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"members/members.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/members\";s:4:\"slug\";s:7:\"members\";s:6:\"plugin\";s:19:\"members/members.php\";s:11:\"new_version\";s:5:\"3.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/members/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/members.3.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/members/assets/icon-256x256.png?rev=2503334\";s:2:\"1x\";s:60:\"https://ps.w.org/members/assets/icon-128x128.png?rev=2503334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/members/assets/banner-1544x500.jpg?rev=2503334\";s:2:\"1x\";s:62:\"https://ps.w.org/members/assets/banner-772x250.jpg?rev=2503334\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";s:6:\"tested\";s:5:\"5.9.3\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:65:\"regenerate-thumbnails-advanced/regenerate-thumbnails-advanced.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:44:\"w.org/plugins/regenerate-thumbnails-advanced\";s:4:\"slug\";s:30:\"regenerate-thumbnails-advanced\";s:6:\"plugin\";s:65:\"regenerate-thumbnails-advanced/regenerate-thumbnails-advanced.php\";s:11:\"new_version\";s:5:\"2.4.0\";s:3:\"url\";s:61:\"https://wordpress.org/plugins/regenerate-thumbnails-advanced/\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails-advanced.2.4.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/regenerate-thumbnails-advanced/assets/icon-256x256.png?rev=1941417\";s:2:\"1x\";s:83:\"https://ps.w.org/regenerate-thumbnails-advanced/assets/icon-128x128.png?rev=1941417\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:86:\"https://ps.w.org/regenerate-thumbnails-advanced/assets/banner-1544x500.png?rev=1941417\";s:2:\"1x\";s:85:\"https://ps.w.org/regenerate-thumbnails-advanced/assets/banner-772x250.png?rev=1941417\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";s:6:\"tested\";s:5:\"5.9.3\";s:12:\"requires_php\";s:3:\"5.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"classic-editor\";s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2020-04-02 03:42:41\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/plugin/classic-editor/1.5/de_DE.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:10:\"duplicator\";s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:6:\"1.3.24\";s:7:\"updated\";s:19:\"2019-11-23 10:10:39\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/duplicator/1.3.24/de_DE.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'pt-applicant-account.php'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_last', '1'),
(4, 6, '_edit_lock', '1572956820:1'),
(8, 8, '_edit_last', '1'),
(9, 8, '_edit_lock', '1572957576:1'),
(58, 15, '_edit_last', '1'),
(59, 15, '_edit_lock', '1571139714:1'),
(63, 17, '_edit_last', '1'),
(64, 17, '_edit_lock', '1571337919:1'),
(118, 2, '_edit_lock', '1570102863:1'),
(119, 2, '_edit_last', '1'),
(120, 2, '_members_access_role', 'administrator'),
(121, 2, '_members_access_role', 'applicant'),
(173, 8, '_wp_old_slug', 'resume2__trashed'),
(212, 38, 'email', 'secretlab48@gmail.com'),
(213, 38, 'user_id', '2'),
(215, 38, 'fname', ''),
(216, 38, 'sname', ''),
(217, 38, 'phone', ''),
(218, 38, 'birthdate', '653011200'),
(220, 39, 'email', 'secretlab48@gmail.com'),
(221, 39, 'user_id', '2'),
(223, 39, 'fname', 'Elena'),
(224, 39, 'sname', 'Ovchinnikova'),
(225, 39, 'phone', '0504444455'),
(226, 39, 'birthdate', '480297600'),
(267, 45, '_wp_attached_file', '2019/08/5mlright.png'),
(268, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2019/08/5mlright.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"5mlright-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"5mlright-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"5mlright-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"5mlright-760x450.png\";s:5:\"width\";i:760;s:6:\"height\";i:450;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:20:\"5mlright-370x250.png\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:20:\"5mlright-390x258.png\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:19:\"5mlright-90x100.png\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:20:\"5mlright-260x285.png\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:19:\"5mlright-140x54.png\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:20:\"5mlright-215x315.png\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(270, 46, '_wp_attached_file', '2019/08/7_Seas_Gold_Blend_40g_1.jpg'),
(271, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:989;s:6:\"height\";i:989;s:4:\"file\";s:35:\"2019/08/7_Seas_Gold_Blend_40g_1.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"7_Seas_Gold_Blend_40g_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"7_Seas_Gold_Blend_40g_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"7_Seas_Gold_Blend_40g_1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"7_Seas_Gold_Blend_40g_1-760x450.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:35:\"7_Seas_Gold_Blend_40g_1-370x250.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:35:\"7_Seas_Gold_Blend_40g_1-390x258.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:34:\"7_Seas_Gold_Blend_40g_1-90x100.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:35:\"7_Seas_Gold_Blend_40g_1-260x285.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:34:\"7_Seas_Gold_Blend_40g_1-140x54.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:35:\"7_Seas_Gold_Blend_40g_1-215x315.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(273, 47, '_wp_attached_file', '2019/08/50ml_2_3.jpg'),
(274, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:20:\"2019/08/50ml_2_3.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"50ml_2_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"50ml_2_3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"50ml_2_3-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:20:\"50ml_2_3-370x250.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:20:\"50ml_2_3-390x258.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:19:\"50ml_2_3-90x100.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:20:\"50ml_2_3-260x285.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:19:\"50ml_2_3-140x54.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:20:\"50ml_2_3-215x315.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(275, 48, '_wp_attached_file', '2019/08/187_Dragon_Blood.jpg'),
(276, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:989;s:6:\"height\";i:989;s:4:\"file\";s:28:\"2019/08/187_Dragon_Blood.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"187_Dragon_Blood-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"187_Dragon_Blood-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"187_Dragon_Blood-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"187_Dragon_Blood-760x450.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:28:\"187_Dragon_Blood-370x250.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:28:\"187_Dragon_Blood-390x258.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:27:\"187_Dragon_Blood-90x100.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:28:\"187_Dragon_Blood-260x285.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:27:\"187_Dragon_Blood-140x54.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:28:\"187_Dragon_Blood-215x315.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(278, 49, '_wp_attached_file', '2019/08/187_Tobacco_Green_Grizzly.jpg'),
(279, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:989;s:6:\"height\";i:989;s:4:\"file\";s:37:\"2019/08/187_Tobacco_Green_Grizzly.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"187_Tobacco_Green_Grizzly-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"187_Tobacco_Green_Grizzly-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"187_Tobacco_Green_Grizzly-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"187_Tobacco_Green_Grizzly-760x450.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:37:\"187_Tobacco_Green_Grizzly-370x250.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:37:\"187_Tobacco_Green_Grizzly-390x258.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:36:\"187_Tobacco_Green_Grizzly-90x100.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:37:\"187_Tobacco_Green_Grizzly-260x285.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:36:\"187_Tobacco_Green_Grizzly-140x54.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:37:\"187_Tobacco_Green_Grizzly-215x315.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(280, 39, '_thumbnail_id', '194'),
(281, 50, '_wp_attached_file', '2019/08/187_Tobacco_Le_Moon.jpg'),
(282, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:989;s:6:\"height\";i:989;s:4:\"file\";s:31:\"2019/08/187_Tobacco_Le_Moon.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"187_Tobacco_Le_Moon-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"187_Tobacco_Le_Moon-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"187_Tobacco_Le_Moon-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"187_Tobacco_Le_Moon-760x450.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:31:\"187_Tobacco_Le_Moon-370x250.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:31:\"187_Tobacco_Le_Moon-390x258.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:30:\"187_Tobacco_Le_Moon-90x100.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:31:\"187_Tobacco_Le_Moon-260x285.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:30:\"187_Tobacco_Le_Moon-140x54.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:31:\"187_Tobacco_Le_Moon-215x315.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(283, 38, '_thumbnail_id', '193'),
(284, 51, '_wp_attached_file', '2019/08/187_Tobacco_Pink_Mellow.jpg'),
(285, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:989;s:6:\"height\";i:989;s:4:\"file\";s:35:\"2019/08/187_Tobacco_Pink_Mellow.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"187_Tobacco_Pink_Mellow-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"187_Tobacco_Pink_Mellow-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"187_Tobacco_Pink_Mellow-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"187_Tobacco_Pink_Mellow-760x450.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:35:\"187_Tobacco_Pink_Mellow-370x250.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:35:\"187_Tobacco_Pink_Mellow-390x258.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:34:\"187_Tobacco_Pink_Mellow-90x100.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:35:\"187_Tobacco_Pink_Mellow-260x285.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:34:\"187_Tobacco_Pink_Mellow-140x54.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:35:\"187_Tobacco_Pink_Mellow-215x315.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(287, 52, '_wp_attached_file', '2019/08/187-strassenbande-025-ello-raffa-50ml-shortfill.jpg'),
(288, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:59:\"2019/08/187-strassenbande-025-ello-raffa-50ml-shortfill.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:59:\"187-strassenbande-025-ello-raffa-50ml-shortfill-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:59:\"187-strassenbande-025-ello-raffa-50ml-shortfill-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:59:\"187-strassenbande-025-ello-raffa-50ml-shortfill-500x450.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:59:\"187-strassenbande-025-ello-raffa-50ml-shortfill-370x250.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:59:\"187-strassenbande-025-ello-raffa-50ml-shortfill-390x258.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:58:\"187-strassenbande-025-ello-raffa-50ml-shortfill-90x100.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:59:\"187-strassenbande-025-ello-raffa-50ml-shortfill-260x285.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:58:\"187-strassenbande-025-ello-raffa-50ml-shortfill-140x54.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:59:\"187-strassenbande-025-ello-raffa-50ml-shortfill-215x315.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(290, 53, '_wp_attached_file', '2019/08/187_Tobacco_Miami_Vice.jpg'),
(291, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:989;s:6:\"height\";i:989;s:4:\"file\";s:34:\"2019/08/187_Tobacco_Miami_Vice.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"187_Tobacco_Miami_Vice-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"187_Tobacco_Miami_Vice-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"187_Tobacco_Miami_Vice-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"187_Tobacco_Miami_Vice-760x450.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:34:\"187_Tobacco_Miami_Vice-370x250.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:34:\"187_Tobacco_Miami_Vice-390x258.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:33:\"187_Tobacco_Miami_Vice-90x100.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:34:\"187_Tobacco_Miami_Vice-260x285.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:33:\"187_Tobacco_Miami_Vice-140x54.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:34:\"187_Tobacco_Miami_Vice-215x315.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(292, 8, 'fname', ''),
(293, 8, 'sname', ''),
(294, 8, 'email', ''),
(295, 8, 'phone', ''),
(296, 8, 'birthdate', '0'),
(297, 8, '_thumbnail_id', '192'),
(298, 54, '_wp_attached_file', '2019/08/187_Tobacco_Wild_Beast.jpg'),
(299, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:989;s:6:\"height\";i:989;s:4:\"file\";s:34:\"2019/08/187_Tobacco_Wild_Beast.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"187_Tobacco_Wild_Beast-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"187_Tobacco_Wild_Beast-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"187_Tobacco_Wild_Beast-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"187_Tobacco_Wild_Beast-760x450.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:34:\"187_Tobacco_Wild_Beast-370x250.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:34:\"187_Tobacco_Wild_Beast-390x258.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:33:\"187_Tobacco_Wild_Beast-90x100.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:34:\"187_Tobacco_Wild_Beast-260x285.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:33:\"187_Tobacco_Wild_Beast-140x54.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:34:\"187_Tobacco_Wild_Beast-215x315.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(300, 6, 'fname', ''),
(301, 6, 'sname', ''),
(302, 6, 'email', ''),
(303, 6, 'phone', ''),
(304, 6, 'birthdate', '1569283200'),
(305, 6, '_thumbnail_id', '191'),
(306, 55, '_wp_attached_file', '2019/08/innocigs-ego-aio-d16-e-zigaretten-set-verpackung.jpg'),
(307, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:750;s:4:\"file\";s:60:\"2019/08/innocigs-ego-aio-d16-e-zigaretten-set-verpackung.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:60:\"innocigs-ego-aio-d16-e-zigaretten-set-verpackung-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:60:\"innocigs-ego-aio-d16-e-zigaretten-set-verpackung-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:60:\"innocigs-ego-aio-d16-e-zigaretten-set-verpackung-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:60:\"innocigs-ego-aio-d16-e-zigaretten-set-verpackung-760x450.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:60:\"innocigs-ego-aio-d16-e-zigaretten-set-verpackung-370x250.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:60:\"innocigs-ego-aio-d16-e-zigaretten-set-verpackung-390x258.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:59:\"innocigs-ego-aio-d16-e-zigaretten-set-verpackung-90x100.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:60:\"innocigs-ego-aio-d16-e-zigaretten-set-verpackung-260x285.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:59:\"innocigs-ego-aio-d16-e-zigaretten-set-verpackung-140x54.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:60:\"innocigs-ego-aio-d16-e-zigaretten-set-verpackung-215x315.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(313, 56, '_wp_attached_file', '2019/08/Old_Holborn_Blue_1.jpg'),
(314, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:30:\"2019/08/Old_Holborn_Blue_1.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Old_Holborn_Blue_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Old_Holborn_Blue_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"Old_Holborn_Blue_1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"Old_Holborn_Blue_1-760x450.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:30:\"Old_Holborn_Blue_1-370x250.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:30:\"Old_Holborn_Blue_1-390x258.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:29:\"Old_Holborn_Blue_1-90x100.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:30:\"Old_Holborn_Blue_1-260x285.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:29:\"Old_Holborn_Blue_1-140x54.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:30:\"Old_Holborn_Blue_1-215x315.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(316, 57, '_edit_lock', '1571316021:1'),
(317, 57, '_edit_last', '1'),
(318, 57, '_thumbnail_id', '167'),
(319, 58, '_edit_lock', '1571316011:1'),
(320, 58, '_edit_last', '1'),
(321, 58, '_thumbnail_id', '166'),
(322, 59, '_edit_lock', '1571316002:1'),
(323, 59, '_edit_last', '1'),
(324, 59, '_thumbnail_id', '164'),
(329, 39, '_edit_lock', '1586700902:1'),
(330, 38, '_edit_lock', '1572958050:1'),
(333, 39, '_edit_last', '1'),
(338, 38, '_edit_last', '1'),
(384, 17, 'employer_linked_to', '58'),
(464, 39, 'gender', 'men'),
(465, 38, 'gender', 'men'),
(472, 8, 'gender', 'men'),
(474, 6, 'gender', 'woman'),
(478, 15, 'employer_linked_to', '59'),
(479, 15, 'salary', '3000'),
(480, 17, 'salary', '3000'),
(499, 84, '_menu_item_type', 'custom'),
(500, 84, '_menu_item_menu_item_parent', '0'),
(501, 84, '_menu_item_object_id', '84'),
(502, 84, '_menu_item_object', 'custom'),
(503, 84, '_menu_item_target', ''),
(504, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(505, 84, '_menu_item_xfn', ''),
(506, 84, '_menu_item_url', 'http://recruit/'),
(508, 85, '_menu_item_type', 'post_type'),
(509, 85, '_menu_item_menu_item_parent', '0'),
(510, 85, '_menu_item_object_id', '2'),
(511, 85, '_menu_item_object', 'page'),
(512, 85, '_menu_item_target', ''),
(513, 85, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(514, 85, '_menu_item_xfn', ''),
(515, 85, '_menu_item_url', ''),
(517, 86, '_menu_item_type', 'post_type_archive'),
(518, 86, '_menu_item_menu_item_parent', '0'),
(519, 86, '_menu_item_object_id', '-21'),
(520, 86, '_menu_item_object', 'resume'),
(521, 86, '_menu_item_target', ''),
(522, 86, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(523, 86, '_menu_item_xfn', ''),
(524, 86, '_menu_item_url', ''),
(526, 87, '_menu_item_type', 'post_type_archive'),
(527, 87, '_menu_item_menu_item_parent', '0'),
(528, 87, '_menu_item_object_id', '-39'),
(529, 87, '_menu_item_object', 'vacancy'),
(530, 87, '_menu_item_target', ''),
(531, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(532, 87, '_menu_item_xfn', ''),
(533, 87, '_menu_item_url', ''),
(544, 89, '_edit_lock', '1614687982:1'),
(545, 89, '_edit_last', '1'),
(546, 89, 'employer_linked_to', '57'),
(547, 89, 'salary', '5000'),
(548, 90, '_edit_lock', '1586700921:1'),
(549, 90, '_edit_last', '1'),
(550, 90, 'employer_linked_to', '59'),
(551, 90, 'salary', '3000'),
(555, 39, 'price', '1500'),
(558, 38, 'price', '2500'),
(569, 92, '_edit_lock', '1570548881:1'),
(570, 92, '_edit_last', '1'),
(571, 92, '_wp_page_template', 'pt-boxed-template.php'),
(572, 94, '_edit_lock', '1568886422:1'),
(573, 94, '_edit_last', '1'),
(574, 94, '_wp_page_template', 'default'),
(575, 96, '_edit_lock', '1568886412:1'),
(576, 96, '_edit_last', '1'),
(577, 96, '_wp_page_template', 'default'),
(578, 98, '_edit_lock', '1570441920:1'),
(579, 98, '_edit_last', '1'),
(580, 98, '_wp_page_template', 'default'),
(581, 100, '_menu_item_type', 'post_type'),
(582, 100, '_menu_item_menu_item_parent', '0'),
(583, 100, '_menu_item_object_id', '98'),
(584, 100, '_menu_item_object', 'page'),
(585, 100, '_menu_item_target', ''),
(586, 100, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(587, 100, '_menu_item_xfn', ''),
(588, 100, '_menu_item_url', ''),
(590, 101, '_menu_item_type', 'post_type'),
(591, 101, '_menu_item_menu_item_parent', '0'),
(592, 101, '_menu_item_object_id', '96'),
(593, 101, '_menu_item_object', 'page'),
(594, 101, '_menu_item_target', ''),
(595, 101, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(596, 101, '_menu_item_xfn', ''),
(597, 101, '_menu_item_url', ''),
(599, 102, '_menu_item_type', 'post_type'),
(600, 102, '_menu_item_menu_item_parent', '0'),
(601, 102, '_menu_item_object_id', '94'),
(602, 102, '_menu_item_object', 'page'),
(603, 102, '_menu_item_target', ''),
(604, 102, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(605, 102, '_menu_item_xfn', ''),
(606, 102, '_menu_item_url', ''),
(608, 103, '_menu_item_type', 'post_type'),
(609, 103, '_menu_item_menu_item_parent', '0'),
(610, 103, '_menu_item_object_id', '92'),
(611, 103, '_menu_item_object', 'page'),
(612, 103, '_menu_item_target', ''),
(613, 103, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(614, 103, '_menu_item_xfn', ''),
(615, 103, '_menu_item_url', ''),
(621, 39, 'salary', '3300'),
(622, 38, 'salary', '3800'),
(625, 8, 'salary', '2500'),
(626, 6, 'salary', '3100'),
(628, 90, 'places', '3'),
(629, 90, 'status', '1'),
(630, 89, 'places', '2'),
(631, 89, 'status', '1'),
(632, 17, 'places', '1'),
(633, 17, 'status', '1'),
(634, 15, 'places', '3'),
(635, 15, 'status', '1'),
(636, 90, '_thumbnail_id', '170'),
(637, 89, '_thumbnail_id', '162'),
(638, 17, '_thumbnail_id', '169'),
(639, 15, '_thumbnail_id', '165'),
(644, 113, '_wp_attached_file', '2019/09/7Seas_Icon_1.jpg'),
(645, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:593;s:6:\"height\";i:593;s:4:\"file\";s:24:\"2019/09/7Seas_Icon_1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"7Seas_Icon_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"7Seas_Icon_1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"7Seas_Icon_1-593x450.jpg\";s:5:\"width\";i:593;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:24:\"7Seas_Icon_1-370x250.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:24:\"7Seas_Icon_1-390x258.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:23:\"7Seas_Icon_1-90x100.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:24:\"7Seas_Icon_1-260x285.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:23:\"7Seas_Icon_1-140x54.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:24:\"7Seas_Icon_1-215x315.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(646, 1, '_edit_lock', '1571307471:1'),
(650, 114, '_wp_attached_file', '2019/09/7Seas_Icon_1-1.jpg'),
(651, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:593;s:6:\"height\";i:593;s:4:\"file\";s:26:\"2019/09/7Seas_Icon_1-1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"7Seas_Icon_1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"7Seas_Icon_1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"7Seas_Icon_1-1-593x450.jpg\";s:5:\"width\";i:593;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:26:\"7Seas_Icon_1-1-370x250.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:26:\"7Seas_Icon_1-1-390x258.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:25:\"7Seas_Icon_1-1-90x100.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:26:\"7Seas_Icon_1-1-260x285.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:25:\"7Seas_Icon_1-1-140x54.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:26:\"7Seas_Icon_1-1-215x315.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(657, 116, '_wp_attached_file', '2019/09/5mlright.png'),
(658, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:20:\"2019/09/5mlright.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"5mlright-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"5mlright-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"5mlright-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"5mlright-760x450.png\";s:5:\"width\";i:760;s:6:\"height\";i:450;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:20:\"5mlright-370x250.png\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:20:\"5mlright-390x258.png\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:19:\"5mlright-90x100.png\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:20:\"5mlright-260x285.png\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:19:\"5mlright-140x54.png\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:20:\"5mlright-215x315.png\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(665, 117, '_wp_attached_file', '2019/09/5mlright-1.png'),
(666, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:22:\"2019/09/5mlright-1.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"5mlright-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"5mlright-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"5mlright-1-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"5mlright-1-760x450.png\";s:5:\"width\";i:760;s:6:\"height\";i:450;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:22:\"5mlright-1-370x250.png\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:22:\"5mlright-1-390x258.png\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:21:\"5mlright-1-90x100.png\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:22:\"5mlright-1-260x285.png\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:21:\"5mlright-1-140x54.png\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:22:\"5mlright-1-215x315.png\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(690, 39, 'expirience', '3'),
(691, 39, 'lastjobs', 'a:1:{i:0;a:7:{s:10:\"start_date\";i:1569888000;s:8:\"end_date\";i:1569888000;s:12:\"current_here\";i:0;s:12:\"company_name\";s:0:\"\";s:14:\"company_branch\";s:0:\"\";s:6:\"status\";s:0:\"\";s:7:\"content\";s:0:\"\";}}'),
(692, 38, 'expirience', ''),
(693, 38, 'lastjobs', 'a:1:{i:0;a:6:{s:10:\"start_date\";i:1569888000;s:8:\"end_date\";i:1569888000;s:12:\"company_name\";s:0:\"\";s:14:\"company_branch\";s:0:\"\";s:6:\"status\";s:0:\"\";s:12:\"current_here\";i:0;}}'),
(694, 90, 'email', 'secretlab48@gmail.com'),
(695, 89, 'email', 'secretlab48@gmail.com'),
(696, 17, 'email', 'secretlab48@gmail.com'),
(697, 15, 'email', 'secretlab48@gmail.com'),
(701, 123, '_wp_attached_file', '2019/10/6_-Edit-1.jpg'),
(702, 123, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:1500;s:4:\"file\";s:21:\"2019/10/6_-Edit-1.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"6_-Edit-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"6_-Edit-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"6_-Edit-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"6_-Edit-1-760x450.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:21:\"6_-Edit-1-370x250.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:21:\"6_-Edit-1-390x258.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:20:\"6_-Edit-1-90x100.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:21:\"6_-Edit-1-260x285.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:20:\"6_-Edit-1-140x54.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:21:\"6_-Edit-1-215x315.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(715, 90, 'hot_offer', '0'),
(716, 125, '_edit_lock', '1570441673:1'),
(717, 125, '_edit_last', '1'),
(718, 125, '_wp_page_template', 'default'),
(720, 128, '_edit_lock', '1570441701:1'),
(721, 128, '_edit_last', '1'),
(722, 128, '_wp_page_template', 'default'),
(723, 130, '_edit_lock', '1573489715:1'),
(724, 130, '_edit_last', '1'),
(725, 130, '_wp_page_template', 'pt-boxed-template.php'),
(726, 132, '_edit_lock', '1570540365:1'),
(727, 132, '_edit_last', '1'),
(728, 132, '_wp_page_template', 'pt-boxed-template.php'),
(729, 134, '_edit_lock', '1570540367:1'),
(730, 134, '_edit_last', '1'),
(731, 134, '_wp_page_template', 'pt-boxed-template.php'),
(732, 136, '_edit_lock', '1570442262:1'),
(733, 136, '_edit_last', '1'),
(734, 136, '_wp_page_template', 'default'),
(735, 138, '_edit_lock', '1570542287:1'),
(736, 138, '_edit_last', '1'),
(737, 139, '_edit_lock', '1570542241:1'),
(738, 139, '_edit_last', '1'),
(739, 140, '_edit_lock', '1570452015:1'),
(740, 140, '_edit_last', '1'),
(741, 141, '_edit_lock', '1570452822:1'),
(742, 141, '_edit_last', '1'),
(743, 142, '_edit_lock', '1574794696:1'),
(744, 143, '_wp_attached_file', '2019/10/p1.jpg'),
(745, 143, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1043;s:4:\"file\";s:14:\"2019/10/p1.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"p1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"p1-300x196.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:196;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"p1-768x501.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:501;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"p1-760x450.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:14:\"p1-370x250.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:14:\"p1-390x258.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:13:\"p1-90x100.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:14:\"p1-260x285.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:13:\"p1-140x54.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:14:\"p1-215x315.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(746, 142, '_edit_last', '1'),
(747, 142, '_thumbnail_id', '143'),
(748, 144, '_edit_lock', '1574794637:1'),
(749, 145, '_wp_attached_file', '2019/10/p2.jpg'),
(750, 145, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:957;s:4:\"file\";s:14:\"2019/10/p2.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"p2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"p2-300x221.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"p2-768x565.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:565;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"p2-760x450.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:14:\"p2-370x250.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:14:\"p2-390x258.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:13:\"p2-90x100.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:14:\"p2-260x285.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:13:\"p2-140x54.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:14:\"p2-215x315.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:33:\"(c) Vadymvdrobot | Dreamstime.com\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(751, 144, '_edit_last', '1'),
(752, 144, '_thumbnail_id', '145'),
(753, 146, '_edit_lock', '1574794615:1'),
(754, 147, '_wp_attached_file', '2019/10/p3.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(755, 147, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:957;s:6:\"height\";i:1300;s:4:\"file\";s:14:\"2019/10/p3.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"p3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"p3-221x300.jpg\";s:5:\"width\";i:221;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"p3-768x1043.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1043;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"p3-760x450.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:14:\"p3-370x250.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:14:\"p3-390x258.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:13:\"p3-90x100.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:14:\"p3-260x285.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:13:\"p3-140x54.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:14:\"p3-215x315.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:33:\"(c) Smmartynenko | Dreamstime.com\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(756, 146, '_edit_last', '1'),
(757, 146, '_thumbnail_id', '147'),
(758, 148, '_edit_lock', '1574794586:1'),
(759, 149, '_wp_attached_file', '2019/10/p4.jpg'),
(760, 149, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:957;s:4:\"file\";s:14:\"2019/10/p4.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"p4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"p4-300x221.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:221;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"p4-768x565.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:565;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"p4-760x450.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:14:\"p4-370x250.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:14:\"p4-390x258.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:13:\"p4-90x100.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:14:\"p4-260x285.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:13:\"p4-140x54.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:14:\"p4-215x315.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:33:\"(c) Ponomarencko | Dreamstime.com\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(761, 148, '_edit_last', '1'),
(762, 148, '_thumbnail_id', '149'),
(763, 150, '_edit_lock', '1574794552:1'),
(764, 151, '_wp_attached_file', '2019/10/p5.jpg'),
(765, 151, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:953;s:6:\"height\";i:1300;s:4:\"file\";s:14:\"2019/10/p5.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"p5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"p5-220x300.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"p5-768x1048.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"p5-760x450.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:14:\"p5-370x250.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:14:\"p5-390x258.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:13:\"p5-90x100.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:14:\"p5-260x285.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:13:\"p5-140x54.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:14:\"p5-215x315.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:31:\"(c) Parrisblue | Dreamstime.com\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(766, 150, '_edit_last', '1'),
(767, 150, '_thumbnail_id', '151'),
(768, 152, '_edit_lock', '1586700961:1'),
(769, 153, '_wp_attached_file', '2019/10/p6.jpg'),
(770, 153, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1155;s:4:\"file\";s:14:\"2019/10/p6.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"p6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"p6-300x217.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:217;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"p6-768x554.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:554;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"p6-760x450.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:14:\"p6-370x250.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:14:\"p6-390x258.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:13:\"p6-90x100.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:14:\"p6-260x285.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:13:\"p6-140x54.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:14:\"p6-215x315.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(771, 152, '_edit_last', '1'),
(772, 152, '_thumbnail_id', '153'),
(773, 154, '_edit_lock', '1573408413:1'),
(774, 154, '_edit_last', '1'),
(775, 154, '_wp_page_template', 'pt-home-page.php'),
(776, 156, '_edit_lock', '1570807203:1'),
(777, 156, '_edit_last', '1'),
(778, 157, '_edit_lock', '1586700953:1'),
(779, 157, '_edit_last', '1'),
(780, 17, 'hot_offer', '1'),
(781, 89, 'hot_offer', '0'),
(782, 90, 'expirience', '3'),
(783, 89, 'expirience', '1'),
(784, 17, 'expirience', '3-5'),
(785, 15, 'hot_offer', '0'),
(786, 15, 'expirience', '5'),
(787, 59, 'activities', 'Media Company'),
(790, 58, 'activities', ''),
(791, 57, 'activities', ''),
(792, 162, '_wp_attached_file', '2019/09/vac_groninger_01.png'),
(793, 162, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:626;s:6:\"height\";i:416;s:4:\"file\";s:28:\"2019/09/vac_groninger_01.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"vac_groninger_01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"vac_groninger_01-300x199.png\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:28:\"vac_groninger_01-370x250.png\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:28:\"vac_groninger_01-390x258.png\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:27:\"vac_groninger_01-90x100.png\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:28:\"vac_groninger_01-260x285.png\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:27:\"vac_groninger_01-140x54.png\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:28:\"vac_groninger_01-215x315.png\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(794, 163, '_wp_attached_file', '2019/08/JOB_acc_vacancycard-copy.jpg'),
(795, 163, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:3480;s:4:\"file\";s:36:\"2019/08/JOB_acc_vacancycard-copy.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"JOB_acc_vacancycard-copy-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"JOB_acc_vacancycard-copy-166x300.jpg\";s:5:\"width\";i:166;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"JOB_acc_vacancycard-copy-768x1392.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1392;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"JOB_acc_vacancycard-copy-760x450.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:36:\"JOB_acc_vacancycard-copy-370x250.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:36:\"JOB_acc_vacancycard-copy-390x258.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:35:\"JOB_acc_vacancycard-copy-90x100.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:36:\"JOB_acc_vacancycard-copy-260x285.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:35:\"JOB_acc_vacancycard-copy-140x54.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:36:\"JOB_acc_vacancycard-copy-215x315.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(796, 164, '_wp_attached_file', '2019/08/logo_bosch.png'),
(797, 164, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:100;s:4:\"file\";s:22:\"2019/08/logo_bosch.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"logo_bosch-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"logo_bosch-300x100.png\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:21:\"logo_bosch-90x100.png\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:22:\"logo_bosch-260x100.png\";s:5:\"width\";i:260;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:21:\"logo_bosch-140x54.png\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:22:\"logo_bosch-215x100.png\";s:5:\"width\";i:215;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(798, 165, '_wp_attached_file', '2019/08/vac_basf_01.png'),
(799, 165, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:626;s:6:\"height\";i:416;s:4:\"file\";s:23:\"2019/08/vac_basf_01.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"vac_basf_01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"vac_basf_01-300x199.png\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:23:\"vac_basf_01-370x250.png\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:23:\"vac_basf_01-390x258.png\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:22:\"vac_basf_01-90x100.png\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:23:\"vac_basf_01-260x285.png\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:22:\"vac_basf_01-140x54.png\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:23:\"vac_basf_01-215x315.png\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(800, 166, '_wp_attached_file', '2019/08/logo_basf.png'),
(801, 166, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:100;s:4:\"file\";s:21:\"2019/08/logo_basf.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"logo_basf-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"logo_basf-300x100.png\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:20:\"logo_basf-90x100.png\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:21:\"logo_basf-260x100.png\";s:5:\"width\";i:260;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:20:\"logo_basf-140x54.png\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:21:\"logo_basf-215x100.png\";s:5:\"width\";i:215;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(802, 167, '_wp_attached_file', '2019/08/logo_groninger.png'),
(803, 167, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:100;s:4:\"file\";s:26:\"2019/08/logo_groninger.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"logo_groninger-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"logo_groninger-300x100.png\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:25:\"logo_groninger-90x100.png\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:26:\"logo_groninger-260x100.png\";s:5:\"width\";i:260;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:25:\"logo_groninger-140x54.png\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:26:\"logo_groninger-215x100.png\";s:5:\"width\";i:215;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(804, 165, '_edit_lock', '1571129085:1'),
(805, 166, '_edit_lock', '1570909760:1'),
(806, 164, '_edit_lock', '1571151151:1'),
(807, 167, '_edit_lock', '1571160498:1'),
(808, 162, '_edit_lock', '1571129103:1'),
(809, 168, '_wp_attached_file', '2019/10/no-man.jpg'),
(810, 168, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:260;s:6:\"height\";i:289;s:4:\"file\";s:18:\"2019/10/no-man.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"no-man-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:18:\"no-man-260x250.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:18:\"no-man-260x258.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:17:\"no-man-90x100.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:18:\"no-man-260x285.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:17:\"no-man-140x54.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:18:\"no-man-215x289.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:289;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(811, 169, '_wp_attached_file', '2019/08/vac_bosh_01.png'),
(812, 169, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:626;s:6:\"height\";i:416;s:4:\"file\";s:23:\"2019/08/vac_bosh_01.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"vac_bosh_01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"vac_bosh_01-300x199.png\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:23:\"vac_bosh_01-370x250.png\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:23:\"vac_bosh_01-390x258.png\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:22:\"vac_bosh_01-90x100.png\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:23:\"vac_bosh_01-260x285.png\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:22:\"vac_bosh_01-140x54.png\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:23:\"vac_bosh_01-215x315.png\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(813, 170, '_wp_attached_file', '2019/09/vac_wp.png'),
(814, 170, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:626;s:6:\"height\";i:416;s:4:\"file\";s:18:\"2019/09/vac_wp.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"vac_wp-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"vac_wp-300x199.png\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:18:\"vac_wp-370x250.png\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:18:\"vac_wp-390x258.png\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:17:\"vac_wp-90x100.png\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:18:\"vac_wp-260x285.png\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:17:\"vac_wp-140x54.png\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:18:\"vac_wp-215x315.png\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(815, 1, '_edit_last', '1'),
(816, 1, '_thumbnail_id', '151'),
(821, 1, '_wp_old_slug', 'hello-world'),
(822, 173, '_edit_lock', '1571307600:1'),
(823, 173, '_edit_last', '1'),
(824, 173, '_thumbnail_id', '149'),
(827, 175, '_edit_lock', '1571315312:1'),
(828, 175, '_edit_last', '1'),
(829, 175, '_thumbnail_id', '153'),
(834, 178, '_edit_lock', '1571307565:1'),
(835, 178, '_edit_last', '1'),
(836, 178, '_thumbnail_id', '145'),
(839, 180, '_edit_lock', '1571307731:1'),
(840, 180, '_edit_last', '1'),
(841, 180, '_thumbnail_id', '143'),
(848, 184, '_edit_lock', '1571324902:1'),
(849, 185, '_wp_attached_file', '2019/10/logo_1.png'),
(850, 185, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:100;s:4:\"file\";s:18:\"2019/10/logo_1.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"logo_1-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"logo_1-300x100.png\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:17:\"logo_1-90x100.png\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:18:\"logo_1-260x100.png\";s:5:\"width\";i:260;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:17:\"logo_1-140x54.png\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:18:\"logo_1-215x100.png\";s:5:\"width\";i:215;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(851, 184, '_edit_last', '1'),
(852, 184, '_thumbnail_id', '185'),
(853, 184, 'activities', ''),
(854, 186, '_edit_lock', '1571324947:1'),
(855, 187, '_wp_attached_file', '2019/10/logo_2.png'),
(856, 187, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:100;s:4:\"file\";s:18:\"2019/10/logo_2.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"logo_2-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"logo_2-300x100.png\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:17:\"logo_2-90x100.png\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:18:\"logo_2-260x100.png\";s:5:\"width\";i:260;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:17:\"logo_2-140x54.png\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:18:\"logo_2-215x100.png\";s:5:\"width\";i:215;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(857, 186, '_edit_last', '1'),
(858, 186, '_thumbnail_id', '187'),
(859, 186, 'activities', ''),
(860, 188, '_edit_lock', '1614687486:1'),
(861, 189, '_wp_attached_file', '2019/10/logo_bmw.png'),
(862, 189, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:100;s:4:\"file\";s:20:\"2019/10/logo_bmw.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"logo_bmw-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"logo_bmw-300x100.png\";s:5:\"width\";i:300;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:19:\"logo_bmw-90x100.png\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:20:\"logo_bmw-260x100.png\";s:5:\"width\";i:260;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:19:\"logo_bmw-140x54.png\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:20:\"logo_bmw-215x100.png\";s:5:\"width\";i:215;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(863, 188, '_edit_last', '1'),
(864, 188, '_thumbnail_id', '189'),
(865, 188, 'activities', ''),
(898, 191, '_wp_attached_file', '2019/08/резюме.jpg'),
(899, 191, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:183;s:6:\"height\";i:275;s:4:\"file\";s:24:\"2019/08/резюме.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"резюме-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:24:\"резюме-183x250.jpg\";s:5:\"width\";i:183;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:24:\"резюме-183x258.jpg\";s:5:\"width\";i:183;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:23:\"резюме-90x100.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:23:\"резюме-140x54.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(906, 192, '_wp_attached_file', '2019/08/резюме-2.jpg'),
(907, 192, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:640;s:4:\"file\";s:26:\"2019/08/резюме-2.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"резюме-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"резюме-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"резюме-2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"резюме-2-760x450.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:26:\"резюме-2-370x250.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:26:\"резюме-2-390x258.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:25:\"резюме-2-90x100.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:26:\"резюме-2-260x285.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:25:\"резюме-2-140x54.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:26:\"резюме-2-215x315.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"9\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D800\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"85\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(908, 8, '_oembed_bcd244e965ea025957754d16ca2e98d6', '{{unknown}}'),
(909, 8, '_oembed_e29e9b8c681f72e61532bb7734568f23', '{{unknown}}'),
(910, 8, '_oembed_24992aa10cc8ff45555bba50092df982', '{{unknown}}'),
(911, 8, '_oembed_716d732bd8a1b12a4030eadb39f8d342', '{{unknown}}'),
(912, 8, '_oembed_d2a5b98f76a38a56e6c773eaa7e7de79', '{{unknown}}'),
(913, 8, '_oembed_a7104e2a3920de01951880a605c2ad1c', '{{unknown}}'),
(914, 8, '_oembed_ee6e1202cac06433d4f48e03a48962dc', '{{unknown}}'),
(915, 8, '_oembed_2e67e418cecf8186920416f3bc19f0d9', '{{unknown}}'),
(916, 8, '_oembed_79a68131e02b571b809a92ed0a39d1f5', '{{unknown}}'),
(917, 8, '_oembed_8e759b1d8f5c6839b30fdf69353e1da4', '{{unknown}}'),
(918, 193, '_wp_attached_file', '2019/08/резюме-3.jpg'),
(919, 193, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:638;s:4:\"file\";s:26:\"2019/08/резюме-3.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"резюме-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"резюме-3-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"резюме-3-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"резюме-3-760x450.jpg\";s:5:\"width\";i:760;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"vacancy-archive\";a:4:{s:4:\"file\";s:26:\"резюме-3-370x250.jpg\";s:5:\"width\";i:370;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"post-archive\";a:4:{s:4:\"file\";s:26:\"резюме-3-390x258.jpg\";s:5:\"width\";i:390;s:6:\"height\";i:258;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:25:\"резюме-3-90x100.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:26:\"резюме-3-260x285.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:25:\"резюме-3-140x54.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:26:\"резюме-3-215x315.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D700\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"640\";s:13:\"shutter_speed\";s:6:\"0.0005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(920, 194, '_wp_attached_file', '2019/08/резюме-4.jpg'),
(921, 194, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:26:\"2019/08/резюме-4.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"резюме-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"резюме-4-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"resume-archive\";a:4:{s:4:\"file\";s:25:\"резюме-4-90x100.jpg\";s:5:\"width\";i:90;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"resume-single\";a:4:{s:4:\"file\";s:26:\"резюме-4-260x168.jpg\";s:5:\"width\";i:260;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"employer-thumb\";a:4:{s:4:\"file\";s:25:\"резюме-4-140x54.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:54;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"review-archive\";a:4:{s:4:\"file\";s:26:\"резюме-4-215x168.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(922, 39, 'education', ''),
(923, 39, 'add_info', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-08-12 08:51:45', '2019-08-12 08:51:45', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<!-- /wp:paragraph -->', '[:en]p1[:ru]Hello world![:]', '[:en]New information points for foreigners[:]', 'publish', 'open', 'open', '', 'p1', '', '', '2019-10-17 10:20:07', '2019-10-17 10:20:07', '', 0, 'http://recruit/?p=1', 0, 'post', '', 1),
(2, 1, '2019-08-12 08:51:45', '2019-08-12 08:51:45', '', 'Applicant Account', '', 'publish', 'closed', 'open', '', 'applicant-account', '', '', '2019-08-14 07:45:41', '2019-08-14 07:45:41', '', 0, 'http://recruit/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-08-12 08:51:45', '2019-08-12 08:51:45', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://recruit.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-08-12 08:51:45', '2019-08-12 08:51:45', '', 0, 'http://recruit/?page_id=3', 0, 'page', '', 0),
(6, 1, '2019-08-12 10:34:24', '2019-08-12 10:34:24', '[:en]Started working at the university, worked as a programmer for more than a year in the positions of front-end (CSS, html, js) and back-and developer (PHP, SQL and various CMS, for example: WordPress, Joomla, Opencart ...). Have a technical background. Then transferred to the post of PM.\r\n\r\nNow I run from 4 projects at the same time, keep in touch with the customer, QA and programmers, sometimes with CEOs and designers, set tasks in jail and monitor their implementation on the test subdomain, together with the QA engineer I test and control the stages of tasks. Once a week I give a detailed report on completed tasks to customers. I also make account statements. That is, there is experience in maintaining documentation. I use SCRUM project management methodology. The projects I worked with were different. From the development of CRM to the creation of a cryptobot that connected to the Binance API and could trade itself, it was also integrated with a telegram and sent notifications to the specified trading pairs there. There are also cases of working with a B2B platform (integration with CRM, developing a training center, creating multilingualism ...), online stores and websites on various CMS.[:ru]resume the content the content[:]', '[:en]OLeg Petrov[:ru]resume1[:]', '[:en]IT project manager [:ru]resume[:]', 'publish', 'closed', 'closed', '', 'resume1', '', '', '2019-11-05 12:20:40', '2019-11-05 12:20:40', '', 0, 'http://recruit/?post_type=resume&#038;p=6', 0, 'resume', '', 0),
(8, 1, '2019-08-12 10:35:04', '2019-08-12 10:35:04', '[:en]Head of IT Department, Project Manager\r\nс 06.2016 по 05.2017 (11 месяцев)\r\nWeb-Studio «ArtWeb», Киев (Web development)\r\n\r\nManaged IT team to release new projects and support current projects, communication with clients to detection customer’s requirements:\r\n•Organised the work of the team (5 back-end and 3 front-end developers, 1 designer) and adhered to the deadlines.\r\n•Managed the life cycle of projects, from conception to the issuance completed project.\r\n•Gathered stakeholders’ requirements, developed technical tasks, prototypes (Balsamiq), assigned tasks to teams (Worksection).\r\n•Planned and managed the team workload, assigned priorities, motivated the team and participated in the team’s development:\r\n\r\n* Managed simultaneously 3 new projects and 7 projects on support.\r\n* Done projects:\r\nhttp://www.kbenergy.kiev.ua/\r\nhttp://arktika.semena.in.ua/\r\nhttp://ubcp.com.ua/\r\nhttp://e3.com.ua/\r\nhttp://www.leaf-ukraine.com.ua/\r\nhttp://www.tesla-ukraine.com.ua/\r\nhttp://www.baccara.com.ua/\r\nhttps://extremstyle.ua/ru\r\nhttp://www.cloud.net.ua/1C_online.html\r\nhttp://www.cloud.net.ua/disk.html\r\n\r\nHead of the Technical Department, Project Manager\r\nс 07.2014 по 02.2016 (1 год 7 месяцев)\r\nLLC \"Jobmax\", Киев (Employment Portal)\r\n\r\nManaged an IT team to ensure the smooth and reliable functioning of the projects and timely issuance of releases with new functions:\r\n• Organised the work of the team (back-end developers, mobile app developers (Android, IOS), front-end HTML, QA and designers).\r\n•Managed the life cycle of projects starting from conception to the issuance and further development.\r\n•Developed technical requirements, assigned tasks, coordinated information flows.\r\n•Developed project budget, adhered to the deadlines.\r\n•Interacted with other departments of the company.\r\n•Planned and managed the team workload, assigned priorities, motivated the team and participated in the team’s development.\r\n•Prepared reports and development plans:\r\n\r\n* Developed technical requirements, assigned tasks to teams, worked with critical paths, project risks and prioritised tasks.\r\n* Worked with Agile Methodologies – developed a pool of tasks for a sprint, planned the sprint with the team, carried out daily stand-ups.\r\n* Controlled the timing for issuance of a sprint.\r\n* Oversaw the functional development of the website www.careerist.ru using PHP, MySQL, Apache.\r\n* Oversaw the development of a product for Android platform using Android Studio, Git, and publication of the product in GooglePlay\r\n(https://play.google.com/store/apps/details?id=com.job.careeristapp&hl=ru).\r\n* Oversaw the development of a product for IOS and WindowsPhone platforms using Cordova and HTML5 technologies and publication of the product in AppStore\r\n* (https://itunes.apple.com/ru/app/kar-erist.ru-poisk-raboty/id1081779267?mt=8).\r\n* Oversaw the development of plug-ins for Chrome, Opera and FireFox browsers and publication in relevant stores\r\n(Chrome: http://goo.gl/kdaQhG ,Opera: http://goo.gl/k77JwQ , FireFox: http://goo.gl/FHS9tk).\r\n* Communicated with hosts to choose the optimal server configuration.\r\n* Organised the transfer of servers for a project from the Netherlands to the Russian Federation.\r\n* Monitored and analysed competitors, developed a plan for project development.\r\n* Presented releases to top-management and supervisors.\r\n\r\nProject Manager\r\nс 09.2009 по 06.2014 (4 года 9 месяцев)\r\nGroup of companie LIGA, Киев (Information-legal system Liga:ZAKON (IT-product))\r\n\r\nManaged the production cycle for creation and development of Liga:ZAKON offline-products (www.ligazakon.ua):\r\n•Developed technical requirements, assigned tasks to the teams and coordinated between all project stakeholders;\r\n•Coordinated project resources, assessed risks and identified critical paths;\r\n•In relation to audit of the quality system ISO 9001:2009:\r\n\r\n* Organised the full cycle of project work with internal requestors and development teams, as well as project work in relation to testing and acceptance with designers and content department – using Confluence and Jira.\r\n* Worked with external sub-contractors on developing design and on usability.\r\n* Presented the process of development, testing and issuance of Liga:ZAKON systems to external auditors, as well as carried out internal audits in the company in the role of a head auditor of the quality system ISO 9001:2009. Developed and produced necessary documentation.\r\n* Gathered, systematised and analysed information on competitor products, technologies, modern developments in the field, new production opportunities etc. in order to develop concepts for creation of new or improvement of existing products, business processes and technological chains.\r\n* Developed technical and user documentation.\r\n* Trained the colleagues working with these types of products.\r\n\r\nBusiness Analyst\r\nс 06.2008 по 08.2009 (1 год 2 месяца)\r\nGroup of companies LIGA, Киев (Information-legal system Liga:ZAKON)\r\n\r\nManaged the production cycle for creation, issuance to the market, maintenance and development of Liga:ZAKON online-products (www.ligazakon.ua):\r\n• Formalised and described technical requirements of the customers.\r\n• Solved technical and technological on-line tasks in line with business objectives:\r\n\r\n* Analysed business requirements for Liga:ZAKON on-line products and formulated the technical, technological and functional requirements optimal for the business on the basis of these requirements; planned and controlled the fulfilment of these requirements.\r\n* Assigned tasks and coordinated the work of related departments on design, usability, content, layout, promotion and support.\r\n* Assessed regularly the attractiveness of the website from the customers’ point of view (technological and functional aspects such as: usability, SMO etc.), researched competitors, developed suggestions and strategies for further development.[:ru]resume[:]', '[:en]Yana Ivanova[:ru]resume2[:]', '[:en]Head of IT department[:ru]resume[:]', 'publish', 'closed', 'closed', '', 'resume2', '', '', '2019-11-05 12:41:03', '2019-11-05 12:41:03', '', 0, 'http://recruit/?post_type=resume&#038;p=8', 0, 'resume', '', 0),
(15, 1, '2019-08-12 10:52:37', '2019-08-12 10:52:37', '[:en]Full employment\r\n\r\nminimum 5 years experience\r\n\r\nGerman B2 knowledge (Goethe certificate, TestDaF, ÖSD) + technical German.\r\n\r\nBASF Company\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nRequires engineers in the following areas:\r\n<ul>\r\n 	<li>Vehicle technology</li>\r\n 	<li>Automated systems in production</li>\r\n 	<li>Electronics of air transport, ships and automobile transport</li>\r\n 	<li>Design and instrumentation</li>\r\n</ul>\r\n&nbsp;\r\n\r\nRequirements for a candidate:\r\n\r\nGender: For men\r\n\r\n➢ higher education in the above area\r\n\r\n➢ age of candidates up to 45 years\r\n\r\nThe candidate will be required:\r\n\r\n✓ scan copy of the diploma (from the original), without extracting subjects;\r\n\r\n✓ characteristics and letters of recommendation from the last two places of work (in Russian or German);\r\n\r\nVacancy price 350 € (there is an opportunity to calculate from the salary)\r\n\r\n&nbsp;\r\n\r\nAccommodation: Paid\r\n\r\nIf we receive an application from you for this vacancy and if your candidacy meets the requirements, we will send you more detailed information by e-mail and call for a preliminary conversation. Successful candidates will be invited for a personal interview in Kiev, Dnipro or Lviv.[:ru]vacancy[:]', '[:en]AN ENGINEER[:ru]строитель[:]', '[:en]vacancy excerpt4[:ru]vaqcancy[:]', 'publish', 'closed', 'closed', '', 'vacancy1', '', '', '2019-10-12 12:48:47', '2019-10-12 12:48:47', '', 0, 'http://recruit/?post_type=vacancy&#038;p=15', 0, 'vacancy', '', 0),
(17, 1, '2019-08-12 10:53:05', '2019-08-12 10:53:05', '[:en]Full employment\r\n\r\n3-5 years of experience\r\n\r\nGerman В2\r\n\r\nBosch Company\r\n\r\n&nbsp;\r\n\r\n- independent installation and commissioning of amplification systems;\r\n\r\n- localization for network troubleshooting.\r\n\r\n&nbsp;\r\n\r\nRequirements:\r\n\r\nKnowledge of German at B2 level.\r\n\r\nTechnical education or advanced training courses.\r\n\r\nCategory B driving license\r\n\r\nThe advantage will be experience as a technical specialist\r\n\r\n&nbsp;\r\n\r\nWorking conditions:\r\n\r\nOfficial employment on a working German visa\r\n\r\nTraining and advanced training\r\n\r\nModern work equipment (laptop, mobile phone) is provided\r\n\r\n&nbsp;\r\n\r\nHousing:\r\n\r\n2 people in a room in a new type of cottage, where there is a bathroom, washing machine, kitchen, stove, microwave, electric kettle, internet, TV.\r\n\r\n&nbsp;\r\n\r\nPlace of work: Essen\r\n\r\n&nbsp;\r\n\r\nVacancy price 150 € (there is an opportunity to calculate from the salary)\r\n\r\n&nbsp;\r\n\r\nIf we receive an application from you for this vacancy and if your candidacy meets the requirements, we will send you more detailed information by e-mail and call for a preliminary conversation. Successful candidates will be invited for a personal interview in Kiev, Dnipro or Lviv.[:ru]vacancy[:]', '[:en]AN ELECTRICIAN[:ru]электрик[:]', '[:en]AN ELECTRICIAN, 3000 EUR, Bosch Company, Berlin. Independent installation and commissioning of amplification systems;[:ru]vacancy excerpt[:]', 'publish', 'closed', 'closed', '', 'vacancy2', '', '', '2019-10-17 17:36:41', '2019-10-17 17:36:41', '', 0, 'http://recruit/?post_type=vacancy&#038;p=17', 0, 'vacancy', '', 0),
(28, 1, '2019-08-14 07:42:11', '2019-08-14 07:42:11', '', 'Applicant Account', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2019-08-14 07:42:11', '2019-08-14 07:42:11', '', 2, 'http://recruit/2-autosave-v1/', 0, 'revision', '', 0),
(29, 1, '2019-08-14 07:42:26', '2019-08-14 07:42:26', '', 'Applicant Account', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-08-14 07:42:26', '2019-08-14 07:42:26', '', 2, 'http://recruit/2-revision-v1/', 0, 'revision', '', 0),
(38, 2, '2019-08-15 11:20:42', '2019-08-15 11:20:42', '[:en]Implementation Consultant Business Analyst\r\nfrom 08.2013 to the present time (6 years 3 months)\r\nLLC Areon Consulting, (IT consulting)\r\n\r\nCollection and analysis of customer business requirements\r\nDesign and simulation of the sales process in a telecom company\r\nMonitoring the work of developers, setting goals\r\nImplementation on the customer side of the telecom product catalog of services based on Oracle Siebel CRM\r\n\r\nProject and Program Manager\r\nfrom 04.2011 to 05.2013 (2 years 1 month)\r\nMegapolis Ukraine LLC, (Tobacco distribution)\r\n\r\nDevelopment of design, technical documentation and internal regulations\r\nDevelopment and implementation of the company\'s IT strategy to the ITIL standard\r\nProject planning, resource allocation, timing control\r\nSAP Replication Team Training\r\nManagement and coordination of the replication team for the implementation of ERP SAP in the branches of the company\r\n\r\nEducation\r\nInternational University of Science and Technology\r\nComputer science and petroleum engineering. Specialty: \"Information control systems and technologies.\" Qualification \"software engineer\", Kiev\r\nHigher, from 09.2004 to 07.2006 (1 year 10 months)\r\n[:ru]Your new resume content[:]', '[:en]Alex Cooper[:ru]title9[:]', '[:en]Business Analyst[:]', 'publish', 'closed', 'closed', '', 'your-new-resume-3', '', '', '2019-11-05 12:49:05', '2019-11-05 12:49:05', '', 0, 'http://recruit/resumes/no-resume_cat/your-new-resume-3/', 0, 'resume', '', 0),
(39, 2, '2019-08-15 11:25:41', '2019-08-15 11:25:41', 'Head of online store\r\nfrom 03.2017 to 03.2018 (1 year)\r\nHead of Dukan Online Store, Kiev (Online Grocery)\r\n\r\nHead of Dukan.com.ua online store, Kiev (food)\r\nComplete control cycle\r\n1) Recruitment\r\n2) Formation of rules for warehouse accounting of goods\r\n3) Develop customer service rules\r\n4) Keeping cashflow\r\n5) Negotiating with suppliers, finding new suppliers\r\n6) Setting tasks and controlling their execution Seo-company, freelancers, managers.\r\n7) Purchase and delivery of goods from Europe\r\n8) Website redesign, moving to new CMS with store traffic retention.\r\n\r\nHead of Giperon Online Store\r\nfrom 12.2007 to 11.2016 (8 years 11 months)\r\nGiperon.ua, Kiev (Wholesale and retail online store of water treatment and air-conditioning systems)\r\n\r\nGiperon.ua, Kiev (Wholesale and retail online store of water treatment and air-conditioning systems)\r\n– Complete management and control of the online store.\r\n– Experience working with online stores of various topics from scratch. Main directions: water treatment systems, air-conditioning and heating equipment.\r\nHe worked on the following projects: toy rental service, gift shop, designer clothing store.\r\n-Developed a business plan. He oversaw all the processes from creating a web designer TK to creating categories and filling in goods as required.\r\n– Recruitment, training, motivation for online store staff.\r\n– Formation of product strategy, introduction of new product categories\r\n-Working with suppliers. Experience working with more than 80 suppliers of various topics from consumer electronics to air conditioning systems.\r\n– Work with suppliers from China.\r\n– Work with clients. Development of a complete cycle and algorithm (scripts) of communication.\r\n\r\nEducation\r\nKyiv International University\r\nFaculty of International Relations, Kyiv\r\nHigher, from 09.2002 to 07.2009 (6 years 10 months)', 'Elena Ovchinnikova', '[:en]\r\nHead of Online Store[:]', 'publish', 'closed', 'closed', '', 'your-new-resume-4', '', '', '2019-11-11 09:59:10', '2019-11-11 09:59:10', '', 0, 'http://recruit/resumes/no-resume_cat/your-new-resume-4/', 0, 'resume', '', 0),
(45, 1, '2019-08-15 11:44:58', '2019-08-15 11:44:58', '', '5mlright', '', 'inherit', 'open', 'closed', '', '5mlright', '', '', '2019-08-15 11:44:58', '2019-08-15 11:44:58', '', 0, 'http://recruit/wp-content/uploads/2019/08/5mlright.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2019-08-15 11:45:23', '2019-08-15 11:45:23', '', '7_Seas_Gold_Blend_40g_1', '', 'inherit', 'open', 'closed', '', '7_seas_gold_blend_40g_1', '', '', '2019-08-15 11:45:23', '2019-08-15 11:45:23', '', 0, 'http://recruit/wp-content/uploads/2019/08/7_Seas_Gold_Blend_40g_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2019-08-15 11:45:50', '2019-08-15 11:45:50', '', '50ml_2_3', '', 'inherit', 'open', 'closed', '', '50ml_2_3', '', '', '2019-08-15 11:45:50', '2019-08-15 11:45:50', '', 0, 'http://recruit/wp-content/uploads/2019/08/50ml_2_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2019-08-15 11:46:06', '2019-08-15 11:46:06', '', '187_Dragon_Blood', '', 'inherit', 'open', 'closed', '', '187_dragon_blood', '', '', '2019-08-15 11:46:06', '2019-08-15 11:46:06', '', 0, 'http://recruit/wp-content/uploads/2019/08/187_Dragon_Blood.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2019-08-15 11:46:23', '2019-08-15 11:46:23', '', '187_Tobacco_Green_Grizzly', '', 'inherit', 'open', 'closed', '', '187_tobacco_green_grizzly', '', '', '2019-08-15 11:46:23', '2019-08-15 11:46:23', '', 0, 'http://recruit/wp-content/uploads/2019/08/187_Tobacco_Green_Grizzly.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2019-08-15 11:46:42', '2019-08-15 11:46:42', '', '187_Tobacco_Le_Moon', '', 'inherit', 'open', 'closed', '', '187_tobacco_le_moon', '', '', '2019-08-15 11:46:42', '2019-08-15 11:46:42', '', 0, 'http://recruit/wp-content/uploads/2019/08/187_Tobacco_Le_Moon.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2019-08-15 11:47:08', '2019-08-15 11:47:08', '', '187_Tobacco_Pink_Mellow', '', 'inherit', 'open', 'closed', '', '187_tobacco_pink_mellow', '', '', '2019-08-15 11:47:08', '2019-08-15 11:47:08', '', 0, 'http://recruit/wp-content/uploads/2019/08/187_Tobacco_Pink_Mellow.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2019-08-15 11:47:29', '2019-08-15 11:47:29', '', '187-strassenbande-025-ello-raffa-50ml-shortfill', '', 'inherit', 'open', 'closed', '', '187-strassenbande-025-ello-raffa-50ml-shortfill', '', '', '2019-08-15 11:47:29', '2019-08-15 11:47:29', '', 0, 'http://recruit/wp-content/uploads/2019/08/187-strassenbande-025-ello-raffa-50ml-shortfill.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2019-08-15 11:47:55', '2019-08-15 11:47:55', '', '187_Tobacco_Miami_Vice', '', 'inherit', 'open', 'closed', '', '187_tobacco_miami_vice', '', '', '2019-08-15 11:47:55', '2019-08-15 11:47:55', '', 0, 'http://recruit/wp-content/uploads/2019/08/187_Tobacco_Miami_Vice.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2019-08-15 11:48:13', '2019-08-15 11:48:13', '', '187_Tobacco_Wild_Beast', '', 'inherit', 'open', 'closed', '', '187_tobacco_wild_beast', '', '', '2019-08-15 11:48:13', '2019-08-15 11:48:13', '', 0, 'http://recruit/wp-content/uploads/2019/08/187_Tobacco_Wild_Beast.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2019-08-15 11:48:56', '2019-08-15 11:48:56', '', 'innocigs-ego-aio-d16-e-zigaretten-set-verpackung', '', 'inherit', 'open', 'closed', '', 'innocigs-ego-aio-d16-e-zigaretten-set-verpackung', '', '', '2019-08-15 11:48:56', '2019-08-15 11:48:56', '', 0, 'http://recruit/wp-content/uploads/2019/08/innocigs-ego-aio-d16-e-zigaretten-set-verpackung.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2019-08-15 11:49:20', '2019-08-15 11:49:20', '', 'Old_Holborn_Blue_1', '', 'inherit', 'open', 'closed', '', 'old_holborn_blue_1', '', '', '2019-08-15 11:49:20', '2019-08-15 11:49:20', '', 0, 'http://recruit/wp-content/uploads/2019/08/Old_Holborn_Blue_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2019-08-17 10:00:58', '2019-08-17 10:00:58', '[:en]groninger - that means innovation, quality and service in special machine construction for the pharmaceutical, cosmetic and consumer healthcare industries. We prove that to our customers for almost 40 years.\r\n\r\nCustomer orientation does not mean that groninger alone has to meet the needs of our customers. Rather, it is our aspiration to proactively meet future challenges through research and development and to offer innovative solutions. 1,300 employees work on product solutions and optimize processes - in line with our corporate philosophy \"We fill Visions with Life\".\r\n\r\nFor example, in its history, groninger has become one of the hidden champions and technology leaders in special machine construction for the pharmaceutical, cosmetics and consumer healthcare industries. To be so successful, you do not just have to know your customers and their industries, but understand them. Trust in one\'s own abilities and a trusting cooperation, both in-house and with customers, are the basis for bringing visions to life, creating unique solutions and inspiring customers.\r\n\r\nThe experience of almost 40 years guarantees our customers safe production processes and excellent results. The competence and commitment of our employees are the basis for our successful corporate development.[:]', 'groninger & co. gmbh', '', 'publish', 'closed', 'closed', '', 'employer1', '', '', '2019-10-17 12:34:18', '2019-10-17 12:34:18', '', 0, 'http://recruit/?post_type=employer&#038;p=57', 0, 'employer', '', 0),
(58, 1, '2019-08-17 10:01:25', '2019-08-17 10:01:25', '[:en]We form the best team by attracting talented individuals, retaining them, and helping them to develop further. With this aim in mind, we create a work environment which inspires and where everyone interconnects. We promote a wide range of personal skills and technical expertise and encourage our employees to contribute their creativity and potential. This approach is based on an open management culture which is founded on mutual trust, respect, and motivation.\r\n\r\nOver 52,000 employees form our team in Germany, where an extensive range of entry level and career opportunities await your discovery. Our main site in Ludwigshafen primarily focuses on research and development. There are other BASF research locations in Lemförde, Münster und Trostberg. Plant biotechnology research is based in Berlin and Gatersleben, catalytic converters in Nienburg and Hanover while the agricultural center is situated in Limburgerhof, near Ludwigshafen.[:]', 'BASF', '', 'publish', 'closed', 'closed', '', 'employer2', '', '', '2019-10-17 12:34:07', '2019-10-17 12:34:07', '', 0, 'http://recruit/?post_type=employer&#038;p=58', 0, 'employer', '', 0),
(59, 1, '2019-08-17 10:01:50', '2019-08-17 10:01:50', '[:en]<h3 class=\"M-Stage__mainHeadline\">Welcome to a place where your ideas lead to something big. Welcome to Bosch.</h3>\r\nBosch is a global brand. Our products and solutions are in use on every continent. We are thus able to adapt to local needs — without losing sight of the big picture.\r\nBe a part of our international network and profit from the diverse opportunities of a global employer.\r\n\r\nWe don’t know what kind of career you have in mind. But we know you can find the right entry opportunity with us. To discover your individual job possibilities, please visit the local career website of your country.\r\n\r\n<b>Where your experience has a future.</b> Whether in the field of the Internet of Things, e-mobility, or sustainable buildings — at Bosch, you are part of innovative solutions that promote the quality of human life. We offer you a great variety of working fields worldwide, attractive work time models and provide all the support you need to develop your knowledge further.[:]', 'Robert Bosch GmbH', '', 'publish', 'closed', 'closed', '', 'employer3', '', '', '2019-10-17 12:33:58', '2019-10-17 12:33:58', '', 0, 'http://recruit/?post_type=employer&#038;p=59', 0, 'employer', '', 0),
(60, 1, '2019-08-17 10:38:51', '2019-08-17 10:38:51', '', 'employer3', '', 'inherit', 'closed', 'closed', '', '59-autosave-v1', '', '', '2019-08-17 10:38:51', '2019-08-17 10:38:51', '', 59, 'http://recruit/59-autosave-v1/', 0, 'revision', '', 0),
(61, 1, '2019-08-17 11:28:52', '2019-08-17 11:28:52', 'en_US', 'English', '', 'publish', 'closed', 'closed', '', 'english', '', '', '2019-08-17 11:35:24', '2019-08-17 11:35:24', '', 0, 'http://recruit/language_switcher/english/', 0, 'language_switcher', '', 0),
(63, 1, '2019-08-17 11:28:52', '2019-08-17 11:28:52', 'current_language', 'Current Language', '', 'publish', 'closed', 'closed', '', 'current-language', '', '', '2019-08-17 11:35:24', '2019-08-17 11:35:24', '', 0, 'http://recruit/language_switcher/current-language/', 0, 'language_switcher', '', 0),
(64, 1, '2019-08-17 11:35:24', '2019-08-17 11:35:24', 'ru_RU', 'Russian', '', 'publish', 'closed', 'closed', '', 'russian', '', '', '2019-08-17 11:35:24', '2019-08-17 11:35:24', '', 0, 'http://recruit/language_switcher/russian/', 0, 'language_switcher', '', 0),
(84, 1, '2019-09-09 14:23:29', '2019-09-09 14:23:29', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-09-17 10:34:36', '2019-09-17 10:34:36', '', 0, 'http://recruit/?p=84', 1, 'nav_menu_item', '', 0),
(85, 1, '2019-09-09 14:23:29', '2019-09-09 14:23:29', ' ', '', '', 'publish', 'closed', 'closed', '', '85', '', '', '2019-09-17 10:34:36', '2019-09-17 10:34:36', '', 0, 'http://recruit/?p=85', 4, 'nav_menu_item', '', 0),
(86, 1, '2019-09-09 14:34:51', '2019-09-09 14:34:51', ' ', '', '', 'publish', 'closed', 'closed', '', '86', '', '', '2019-09-17 10:34:36', '2019-09-17 10:34:36', '', 0, 'http://recruit/?p=86', 3, 'nav_menu_item', '', 0),
(87, 1, '2019-09-09 14:34:51', '2019-09-09 14:34:51', ' ', '', '', 'publish', 'closed', 'closed', '', '87', '', '', '2019-09-17 10:34:36', '2019-09-17 10:34:36', '', 0, 'http://recruit/?p=87', 2, 'nav_menu_item', '', 0),
(89, 1, '2019-09-09 15:01:50', '2019-09-09 15:01:50', '[:en]Full employment\r\n\r\n3-5 years of experience\r\n\r\nEnglish B1\r\n\r\nGroninger  Company\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nWith approximately 1300 employees, we develop and manufacture machines and systems for the pharmaceutical, cosmetic and medical industries. Values ​​such as justice, respect, trust and intimacy characterize the corporate culture of our family business, and we are one of the champions in our industry.\r\n\r\n&nbsp;\r\n\r\nYour tasks:\r\n\r\nParticipation in the development and programming of appropriate software solutions\r\n\r\nInterface optimization and error correction software solutions.\r\n\r\nRecord and evaluate system requirements in collaboration with specialized departments and technology requirements\r\n\r\nSoftware Testing\r\n\r\nClose cooperation with customers and, if necessary, control of external service providers\r\n\r\nDocumentation Creation\r\n\r\nSupport for colleagues in solving IT problems\r\n\r\n&nbsp;\r\n\r\nRequirements for a candidate:\r\n\r\nSuccessfully trained as an application development specialist or comparable knowledge and skills\r\n\r\nRelevant work experience\r\n\r\nSystem-technical knowledge about MS Windows operating systems, as well as working with databases (MS SQL and Oracle)\r\n\r\nC #, ASP.NET, and PHP programming skills in both Power Shell and JavaScript scripting languages\r\n\r\nIdeally, experience with GIT\r\n\r\nTeamwork and initiative, as well as good self-organization\r\n\r\n&nbsp;\r\n\r\nWe offer:\r\n\r\nsecure jobs and a flat hierarchy\r\n\r\nperformance-based annual awards\r\n\r\nprofessional pensions and contributions to fixed assets travel allowances and childcare\r\n\r\nflexible working time models.\r\n\r\n&nbsp;\r\n\r\nHave we sparked your interest?\r\n\r\nPlease send us your complete and meaningful application documents indicating your earliest possible start date, preferably in PDF format at <a href=\"mailto:bewerbung@groninger.de\">bewerbung@groninger.de</a>\r\n\r\nFurther information can be found at <a href=\"http://www.groninger-begeistert.de\">www.groninger-begeistert.de</a>.\r\n\r\n&nbsp;\r\n\r\nVacancy price 500 € (there is an opportunity to calculate from the salary)\r\n\r\nAccommodation: Paid[:]', '[:en]DEVELOPER[:ru]Программист YII[:]', '[:en]vacancy excerpt2[:]', 'publish', 'closed', 'closed', '', 'programmer-yii', '', '', '2019-10-12 12:46:02', '2019-10-12 12:46:02', '', 0, 'http://recruit/?post_type=vacancy&#038;p=89', 0, 'vacancy', '', 0),
(90, 1, '2019-09-09 15:02:51', '2019-09-09 15:02:51', '[:en]<span class=\"tlid-translation translation\" lang=\"en\"><span class=\"\" title=\"\">Requirements: </span></span>\r\n\r\n<span class=\"tlid-translation translation\" lang=\"en\"><span class=\"\" title=\"\">Experience working on smart home / smart house projects, Programming experience in the field of automated building management systems (ACMS), collection, processing of measurement and data results, control and management.</span> <span class=\"\" title=\"\">Programming languages: C / C ++, Python, Protokolle: DALI, RS485, BACnet-MS / TP, Modbus-RTU, M-Bus, Bacnet-PTP (IP), KNX (KNXnet IP), M-Bus, CAN-Bus,</span> <span title=\"\">TCP / IP</span> <span class=\"\" title=\"\">Knowledge of HTML5, JavaScript, PHP is desirable.</span></span>\r\n\r\nAccomodation:\r\n\r\nPaid\r\n\r\n&nbsp;[:]', '[:en]Programmer WordPress[:ru]Программист WordPress[:]', 'vacancy excerpt1', 'publish', 'closed', 'closed', '', 'programmer-wordpress', '', '', '2019-10-17 17:37:09', '2019-10-17 17:37:09', '', 0, 'http://recruit/?post_type=vacancy&#038;p=90', 0, 'vacancy', '', 0),
(92, 1, '2019-09-17 09:14:41', '2019-09-17 09:14:41', '[:en][get_tips category=\"general\"][:]', '[:en]faq[:ru]вопросы[:]', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2019-10-08 13:14:42', '2019-10-08 13:14:42', '', 0, 'http://recruit/?page_id=92', 0, 'page', '', 0),
(93, 1, '2019-09-17 09:14:41', '2019-09-17 09:14:41', '', '[:en]faq[:]', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2019-09-17 09:14:41', '2019-09-17 09:14:41', '', 92, 'http://recruit/92-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2019-09-17 09:15:17', '2019-09-17 09:15:17', '', '[:en]guarantees & sertifications[:ru]гарантии и сертификаты[:]', '', 'publish', 'closed', 'closed', '', 'guarantees-sertifications', '', '', '2019-09-19 09:49:14', '2019-09-19 09:49:14', '', 0, 'http://recruit/?page_id=94', 0, 'page', '', 0),
(95, 1, '2019-09-17 09:15:17', '2019-09-17 09:15:17', '', '[:en]guarantees & sertifications[:]', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2019-09-17 09:15:17', '2019-09-17 09:15:17', '', 94, 'http://recruit/94-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2019-09-17 09:15:35', '2019-09-17 09:15:35', '', '[:en]contacts[:ru]контакты[:]', '', 'publish', 'closed', 'closed', '', 'contacts', '', '', '2019-09-19 09:48:30', '2019-09-19 09:48:30', '', 0, 'http://recruit/?page_id=96', 0, 'page', '', 0),
(97, 1, '2019-09-17 09:15:35', '2019-09-17 09:15:35', '', '[:en]contacts[:]', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2019-09-17 09:15:35', '2019-09-17 09:15:35', '', 96, 'http://recruit/96-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2019-09-17 09:15:56', '2019-09-17 09:15:56', '', '[:en]for employers[:ru]работодателям[:]', '', 'publish', 'closed', 'closed', '', 'for-employers', '', '', '2019-09-19 09:48:55', '2019-09-19 09:48:55', '', 0, 'http://recruit/?page_id=98', 0, 'page', '', 0),
(99, 1, '2019-09-17 09:15:56', '2019-09-17 09:15:56', '', '[:en]for employers[:]', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2019-09-17 09:15:56', '2019-09-17 09:15:56', '', 98, 'http://recruit/98-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2019-09-17 09:17:31', '2019-09-17 09:17:31', ' ', '', '', 'publish', 'closed', 'closed', '', '100', '', '', '2019-09-17 09:17:31', '2019-09-17 09:17:31', '', 0, 'http://recruit/?p=100', 4, 'nav_menu_item', '', 0),
(101, 1, '2019-09-17 09:17:31', '2019-09-17 09:17:31', ' ', '', '', 'publish', 'closed', 'closed', '', '101', '', '', '2019-09-17 09:17:31', '2019-09-17 09:17:31', '', 0, 'http://recruit/?p=101', 3, 'nav_menu_item', '', 0),
(102, 1, '2019-09-17 09:17:31', '2019-09-17 09:17:31', ' ', '', '', 'publish', 'closed', 'closed', '', '102', '', '', '2019-09-17 09:17:31', '2019-09-17 09:17:31', '', 0, 'http://recruit/?p=102', 1, 'nav_menu_item', '', 0),
(103, 1, '2019-09-17 09:17:31', '2019-09-17 09:17:31', ' ', '', '', 'publish', 'closed', 'closed', '', '103', '', '', '2019-09-17 09:17:31', '2019-09-17 09:17:31', '', 0, 'http://recruit/?p=103', 2, 'nav_menu_item', '', 0),
(104, 1, '2019-09-19 09:48:30', '2019-09-19 09:48:30', '', '[:en]contacts[:ru]контакты[:]', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2019-09-19 09:48:30', '2019-09-19 09:48:30', '', 96, 'http://recruit/96-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2019-09-19 09:48:40', '2019-09-19 09:48:40', '', '[:en]faq[:ru]вопросы[:]', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2019-09-19 09:48:40', '2019-09-19 09:48:40', '', 92, 'http://recruit/92-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2019-09-19 09:48:55', '2019-09-19 09:48:55', '', '[:en]for employers[:ru]работодателям[:]', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2019-09-19 09:48:55', '2019-09-19 09:48:55', '', 98, 'http://recruit/98-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2019-09-19 09:49:14', '2019-09-19 09:49:14', '', '[:en]guarantees & sertifications[:ru]гарантии и сертификаты[:]', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2019-09-19 09:49:14', '2019-09-19 09:49:14', '', 94, 'http://recruit/94-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2019-09-27 15:05:11', '2019-09-27 15:05:11', '', '7Seas_Icon_1', '', 'inherit', 'open', 'closed', '', '7seas_icon_1', '', '', '2019-09-27 15:05:11', '2019-09-27 15:05:11', '', 0, 'http://recruit/wp-content/uploads/2019/09/7Seas_Icon_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2019-09-28 13:47:41', '2019-09-28 13:47:41', '', '7Seas_Icon_1', '', 'inherit', 'open', 'closed', '', '7seas_icon_1-2', '', '', '2019-09-28 13:47:41', '2019-09-28 13:47:41', '', 0, 'http://recruit/wp-content/uploads/2019/09/7Seas_Icon_1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2019-09-29 15:47:28', '2019-09-29 15:47:28', '', '5mlright', '', 'inherit', 'open', 'closed', '', '5mlright-2', '', '', '2019-09-29 15:47:28', '2019-09-29 15:47:28', '', 0, 'http://recruit/wp-content/uploads/2019/09/5mlright.png', 0, 'attachment', 'image/png', 0),
(117, 1, '2019-09-29 15:52:06', '2019-09-29 15:52:06', '', '5mlright', '', 'inherit', 'open', 'closed', '', '5mlright-3', '', '', '2019-09-29 15:52:06', '2019-09-29 15:52:06', '', 0, 'http://recruit/wp-content/uploads/2019/09/5mlright-1.png', 0, 'attachment', 'image/png', 0),
(123, 6, '2019-10-07 07:45:46', '2019-10-07 07:45:46', '', '6_-Edit-1', '', 'inherit', 'open', 'closed', '', '6_-edit-1', '', '', '2019-10-07 07:45:46', '2019-10-07 07:45:46', '', 0, 'http://recruit/wp-content/uploads/2019/10/6_-Edit-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2019-10-07 09:49:36', '2019-10-07 09:49:36', '', '[:en]About Us[:]', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2019-10-07 09:49:36', '2019-10-07 09:49:36', '', 0, 'http://recruit/?page_id=125', 0, 'page', '', 0),
(126, 1, '2019-10-07 09:49:36', '2019-10-07 09:49:36', '', '[:en]About Us[:]', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2019-10-07 09:49:36', '2019-10-07 09:49:36', '', 125, 'http://recruit/125-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2019-10-07 09:50:40', '2019-10-07 09:50:40', '', '[:en]Partnership[:]', '', 'publish', 'closed', 'closed', '', 'partnership', '', '', '2019-10-07 09:50:40', '2019-10-07 09:50:40', '', 0, 'http://recruit/?page_id=128', 0, 'page', '', 0),
(129, 1, '2019-10-07 09:50:40', '2019-10-07 09:50:40', '', '[:en]Partnership[:]', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2019-10-07 09:50:40', '2019-10-07 09:50:40', '', 128, 'http://recruit/128-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2019-10-07 09:50:52', '2019-10-07 09:50:52', '<p class=\"line bold\">Verband zur Bekämpfung der Kriminalität (VBK) e.V.</p>\r\n<p class=\"line bold\">Ehrenbreitsteiner Str. 20</p>\r\n<p class=\"line bold\">80993 München</p>\r\n<p class=\"line bold\">E-Mail: <a class=\"light-green\" href=\"mailto:service@vbk.de\">service@vbk.de</a></p>\r\n<p class=\"line bold\">FB: Verband zur Bekämpfung der Kriminalität VBK e.V</p>\r\n<p class=\"line bold bottom-margin\">Home: <a  class=\"light-green\" href=\"https://vbk.de\">vbk.de</a></p>\r\n\r\n<p class=\"line\">Amtsgericht München VR 12742</p>\r\n<p class=\"line\">Finanzamt München Steuer-Nummer: 143 223 30791</p>\r\n<p class=\"line\">Vorstand:</p>\r\n<p class=\"line\">Hans Gießer</p>\r\n<p class=\"line\">Claudia Sieber</p>\r\n<p class=\"line\">Gründung:   28.05.1988</p>\r\n\r\n<h2 class=\"bold\">Haftungsausschluss</h2>\r\n<p class=\"text-block\">Mit  Urteil  vom  12.05.1998  hat  das  Landgericht  Hamburg  entschieden,  dass  man  durch  die  Anbringung eines  Links  die  Inhalte  der  gelinkten  URL  gegebenenfalls  mit  zu  verantworten  hat.  Dies  kann,  so  das Landgericht,  nur  dadurch  verhindert  werden,  dass  man  sich  ausdrücklich  von  den  gelinkten  Inhalten der  Seite  distanziert,  was  wir  hiermit  ausdrücklich  tun.  Wir  betonen  ausdrücklich,  dass  wir  keinerlei Einfluss auf die Gestaltung und die Inhalte der gelinkten Seiten haben.</p>', '[:en]Impressum[:]', '', 'publish', 'closed', 'closed', '', 'impressum', '', '', '2019-11-11 10:33:58', '2019-11-11 10:33:58', '', 0, 'http://recruit/?page_id=130', 0, 'page', '', 0),
(131, 1, '2019-10-07 09:50:52', '2019-10-07 09:50:52', '', '[:en]Impressum[:]', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2019-10-07 09:50:52', '2019-10-07 09:50:52', '', 130, 'http://recruit/130-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2019-10-07 09:51:39', '2019-10-07 09:51:39', '[:en][get_tips category=\"applicant_tips\"][:]', '[:en]Tips for applicants[:]', '', 'publish', 'closed', 'closed', '', 'faq-applicant', '', '', '2019-10-08 13:15:03', '2019-10-08 13:15:03', '', 0, 'http://recruit/?page_id=132', 0, 'page', '', 0),
(133, 1, '2019-10-07 09:51:39', '2019-10-07 09:51:39', '', '[:en]Tips[:]', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2019-10-07 09:51:39', '2019-10-07 09:51:39', '', 132, 'http://recruit/132-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2019-10-07 09:52:35', '2019-10-07 09:52:35', '[:en][get_tips category=\"employer_tips\"][:]', '[:en]Tips for employers [:]', '', 'publish', 'closed', 'closed', '', 'faq-employer', '', '', '2019-10-08 13:15:08', '2019-10-08 13:15:08', '', 0, 'http://recruit/?page_id=134', 0, 'page', '', 0),
(135, 1, '2019-10-07 09:52:35', '2019-10-07 09:52:35', '', '[:en]Tips[:]', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2019-10-07 09:52:35', '2019-10-07 09:52:35', '', 134, 'http://recruit/134-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2019-10-07 09:54:39', '2019-10-07 09:54:39', '', '[:en]Terms of Use[:]', '', 'publish', 'closed', 'closed', '', 'terms-of-use', '', '', '2019-10-07 09:54:39', '2019-10-07 09:54:39', '', 0, 'http://recruit/?page_id=136', 0, 'page', '', 0),
(137, 1, '2019-10-07 09:54:39', '2019-10-07 09:54:39', '', '[:en]Terms of Use[:]', '', 'inherit', 'closed', 'closed', '', '136-revision-v1', '', '', '2019-10-07 09:54:39', '2019-10-07 09:54:39', '', 136, 'http://recruit/136-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2019-10-07 12:41:35', '2019-10-07 12:41:35', '[:en]<span class=\"ui_qtext_rendered_qtext\">M(motorsport) versions are known for biblical power(a bit less than mercedes AMG) but awesome track handling.\r\nThe rest of the BMWs(all) are first built as perfectly balanced driving machines that makes them a bit uncomfortable because of the high transmission tunnel and the hard suspension.</span>[:]', '[:en]Why BMW is the best[:]', '', 'publish', 'closed', 'closed', '', 'tip1', '', '', '2019-10-08 13:47:05', '2019-10-08 13:47:05', '', 0, 'http://recruit/?post_type=tip&#038;p=138', 0, 'tip', '', 0),
(139, 1, '2019-10-07 12:42:15', '2019-10-07 12:42:15', '[:en]<span class=\"ui_qtext_rendered_qtext\">There are some specific things too that some brands are known for like\r\nI\'ll tell you the story about the top three Germans\r\nMercedes AMG version cars are known for giving way too much power and then not the greatest body for track day racing.(they used the 6.3lt V8 in different states of tuning in most of their AMG cars)\r\nThen Mercedes S class is known as the best premium sedan in the world\r\nThe lower classes like the c-class or the e-class are known for their comfort.</span>[:]', '[:en]why mersedes is the best[:]', '', 'publish', 'closed', 'closed', '', 'tip2', '', '', '2019-10-08 13:46:21', '2019-10-08 13:46:21', '', 0, 'http://recruit/?post_type=tip&#038;p=139', 0, 'tip', '', 0),
(140, 1, '2019-10-07 12:42:33', '2019-10-07 12:42:33', '[:en]content tip[:]', '[:en]Tip3[:]', '', 'publish', 'closed', 'closed', '', 'tip3', '', '', '2019-10-07 12:42:33', '2019-10-07 12:42:33', '', 0, 'http://recruit/?post_type=tip&#038;p=140', 0, 'tip', '', 0),
(141, 1, '2019-10-07 12:42:50', '2019-10-07 12:42:50', '[:en]content tip[:]', '[:en]Tip4[:]', '', 'publish', 'closed', 'closed', '', 'tip4', '', '', '2019-10-07 12:42:50', '2019-10-07 12:42:50', '', 0, 'http://recruit/?post_type=tip&#038;p=141', 0, 'tip', '', 0),
(142, 1, '2019-10-07 13:20:08', '2019-10-07 13:20:08', 'As a Partner you have multiple revenue streams available to suit your skills and experience.\r\n<ul>\r\n 	<li>Full access to the Smart PA Hub</li>\r\n 	<li>Excellent ongoing support</li>\r\n 	<li>Full access to the Smart PA Hub</li>\r\n 	<li>Full access to the Smart PA Hub</li>\r\n</ul>', '[:en]review1[:]', '[:en]review excerpt[:]', 'publish', 'closed', 'closed', '', 'review1', '', '', '2019-11-26 19:00:09', '2019-11-26 19:00:09', '', 0, 'http://recruit/?post_type=review&#038;p=142', 0, 'review', '', 0),
(143, 1, '2019-10-07 13:20:04', '2019-10-07 13:20:04', '', 'p1', '', 'inherit', 'open', 'closed', '', 'p1', '', '', '2019-10-07 13:20:04', '2019-10-07 13:20:04', '', 142, 'http://recruit/wp-content/uploads/2019/10/p1.jpg', 0, 'attachment', 'image/jpeg', 0),
(144, 1, '2019-10-07 13:20:41', '2019-10-07 13:20:41', 'As a Partner you have multiple revenue streams available to suit your skills and experience.\r\n<ul>\r\n 	<li>Full access to the Smart PA Hub</li>\r\n 	<li>Excellent ongoing support</li>\r\n 	<li>Full access to the Smart PA Hub</li>\r\n 	<li>Full access to the Smart PA Hub</li>\r\n</ul>', 'review2', '[:en]review excerpt[:]', 'publish', 'closed', 'closed', '', '%d1%80%d1%83%d1%81%d1%81%d0%ba%d0%b8%d0%b9-review2', '', '', '2019-11-26 18:59:38', '2019-11-26 18:59:38', '', 0, 'http://recruit/?post_type=review&#038;p=144', 0, 'review', '', 0),
(145, 1, '2019-10-07 13:20:37', '2019-10-07 13:20:37', '', 'p2', '', 'inherit', 'open', 'closed', '', 'p2', '', '', '2019-10-07 13:20:37', '2019-10-07 13:20:37', '', 144, 'http://recruit/wp-content/uploads/2019/10/p2.jpg', 0, 'attachment', 'image/jpeg', 0),
(146, 1, '2019-10-07 13:21:06', '2019-10-07 13:21:06', 'As a Partner you have multiple revenue streams available to suit your skills and experience.\r\n<ul>\r\n 	<li>Full access to the Smart PA Hub</li>\r\n 	<li>Excellent ongoing support</li>\r\n 	<li>Full access to the Smart PA Hub</li>\r\n 	<li>Full access to the Smart PA Hub</li>\r\n</ul>', 'review3', '[:en]review excerpt[:]', 'publish', 'closed', 'closed', '', '%d1%80%d1%83%d1%81%d1%81%d0%ba%d0%b8%d0%b9-review3', '', '', '2019-11-26 18:59:10', '2019-11-26 18:59:10', '', 0, 'http://recruit/?post_type=review&#038;p=146', 0, 'review', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(147, 1, '2019-10-07 13:21:03', '2019-10-07 13:21:03', '', 'p3', '', 'inherit', 'open', 'closed', '', 'p3', '', '', '2019-10-07 13:21:03', '2019-10-07 13:21:03', '', 146, 'http://recruit/wp-content/uploads/2019/10/p3.jpg', 0, 'attachment', 'image/jpeg', 0),
(148, 1, '2019-10-07 13:21:35', '2019-10-07 13:21:35', 'As a Partner you have multiple revenue streams available to suit your skills and experience.\r\n<ul>\r\n 	<li>Full access to the Smart PA Hub</li>\r\n 	<li>Excellent ongoing support</li>\r\n 	<li>Full access to the Smart PA Hub</li>\r\n 	<li>Full access to the Smart PA Hub</li>\r\n</ul>', 'review4', '[:en]review excerpt[:]', 'publish', 'closed', 'closed', '', '%d1%80%d1%83%d1%81%d1%81%d0%ba%d0%b8%d0%b9-review4', '', '', '2019-11-26 18:58:47', '2019-11-26 18:58:47', '', 0, 'http://recruit/?post_type=review&#038;p=148', 0, 'review', '', 0),
(149, 1, '2019-10-07 13:21:31', '2019-10-07 13:21:31', '', 'p4', '', 'inherit', 'open', 'closed', '', 'p4', '', '', '2019-10-07 13:21:31', '2019-10-07 13:21:31', '', 148, 'http://recruit/wp-content/uploads/2019/10/p4.jpg', 0, 'attachment', 'image/jpeg', 0),
(150, 1, '2019-10-07 13:22:00', '2019-10-07 13:22:00', 'As a Partner you have multiple revenue streams available to suit your skills and experience.\r\n<ul>\r\n 	<li>Full access to the Smart PA Hub</li>\r\n 	<li>Excellent ongoing support</li>\r\n 	<li>Full access to the Smart PA Hub</li>\r\n 	<li>Full access to the Smart PA Hub</li>\r\n</ul>', 'review5', '[:en]review excerpt[:]', 'publish', 'closed', 'closed', '', '%d1%80%d1%83%d1%81%d1%81%d0%ba%d0%b8%d0%b9-review5', '', '', '2019-11-26 18:58:12', '2019-11-26 18:58:12', '', 0, 'http://recruit/?post_type=review&#038;p=150', 0, 'review', '', 0),
(151, 1, '2019-10-07 13:21:57', '2019-10-07 13:21:57', '', 'p5', '', 'inherit', 'open', 'closed', '', 'p5', '', '', '2019-10-07 13:21:57', '2019-10-07 13:21:57', '', 150, 'http://recruit/wp-content/uploads/2019/10/p5.jpg', 0, 'attachment', 'image/jpeg', 0),
(152, 1, '2019-10-07 13:22:27', '2019-10-07 13:22:27', 'As a Partner you have multiple revenue stream available to suit your skills and experience.\r\n<ul>\r\n 	<li>Full access to the Smart PA Hub</li>\r\n 	<li>Excellent ongoing support</li>\r\n 	<li>Full access to the Smart PA Hub</li>\r\n 	<li>Full access to the Smart PA Hub</li>\r\n</ul>', '[:en]review6[:]', '', 'publish', 'closed', 'closed', '', 'review6', '', '', '2019-11-26 18:54:34', '2019-11-26 18:54:34', '', 0, 'http://recruit/?post_type=review&#038;p=152', 0, 'review', '', 0),
(153, 1, '2019-10-07 13:22:24', '2019-10-07 13:22:24', '', 'p6', '', 'inherit', 'open', 'closed', '', 'p6', '', '', '2019-10-07 13:22:24', '2019-10-07 13:22:24', '', 152, 'http://recruit/wp-content/uploads/2019/10/p6.jpg', 0, 'attachment', 'image/jpeg', 0),
(154, 1, '2019-10-07 14:59:24', '2019-10-07 14:59:24', '', '[:en]Home[:]', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-10-07 14:59:24', '2019-10-07 14:59:24', '', 0, 'http://recruit/?page_id=154', 0, 'page', '', 0),
(155, 1, '2019-10-07 14:59:24', '2019-10-07 14:59:24', '', '[:en]Home[:]', '', 'inherit', 'closed', 'closed', '', '154-revision-v1', '', '', '2019-10-07 14:59:24', '2019-10-07 14:59:24', '', 154, 'http://recruit/154-revision-v1/', 0, 'revision', '', 0),
(156, 1, '2019-10-08 13:04:12', '2019-10-08 13:04:12', '[:en]tip content[:]', '[:en]Tip5[:]', '', 'publish', 'closed', 'closed', '', 'tip5', '', '', '2019-10-08 13:04:25', '2019-10-08 13:04:25', '', 0, 'http://recruit/?post_type=tip&#038;p=156', 0, 'tip', '', 0),
(157, 1, '2019-10-08 13:04:46', '2019-10-08 13:04:46', '[:ru]tip content[:]', '[:ru]Tip6[:]', '', 'publish', 'closed', 'closed', '', '%d1%80%d1%83%d1%81%d1%81%d0%ba%d0%b8%d0%b9-tip6', '', '', '2019-10-08 13:04:46', '2019-10-08 13:04:46', '', 0, 'http://recruit/?post_type=tip&#038;p=157', 0, 'tip', '', 0),
(158, 1, '2019-10-08 13:06:42', '2019-10-08 13:06:42', '[:en][get_tips category=\"applicant_tips\"][:]', '[:en]Tips for applicants[:]', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2019-10-08 13:06:42', '2019-10-08 13:06:42', '', 132, 'http://recruit/132-revision-v1/', 0, 'revision', '', 0),
(159, 1, '2019-10-08 13:07:29', '2019-10-08 13:07:29', '[:en][get_tips category=\"employer_tips\"][:]', '[:en]Tips for employers [:]', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2019-10-08 13:07:29', '2019-10-08 13:07:29', '', 134, 'http://recruit/134-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2019-10-08 13:07:56', '2019-10-08 13:07:56', '[:en][get_tips category=\"general\"][:]', '[:en]faq[:ru]вопросы[:]', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2019-10-08 13:07:56', '2019-10-08 13:07:56', '', 92, 'http://recruit/92-revision-v1/', 0, 'revision', '', 0),
(162, 1, '2019-10-12 12:45:48', '2019-10-12 12:45:48', '', 'vac_groninger_01', '', 'inherit', 'open', 'closed', '', 'vac_groninger_01', '', '', '2019-10-12 12:45:48', '2019-10-12 12:45:48', '', 89, 'http://recruit/wp-content/uploads/2019/09/vac_groninger_01.png', 0, 'attachment', 'image/png', 0),
(163, 1, '2019-10-12 12:47:01', '2019-10-12 12:47:01', '', 'JOB_acc_vacancycard copy', '', 'inherit', 'open', 'closed', '', 'job_acc_vacancycard-copy', '', '', '2019-10-12 12:47:01', '2019-10-12 12:47:01', '', 17, 'http://recruit/wp-content/uploads/2019/08/JOB_acc_vacancycard-copy.jpg', 0, 'attachment', 'image/jpeg', 0),
(164, 1, '2019-10-12 12:47:39', '2019-10-12 12:47:39', '', 'logo_bosch', '', 'inherit', 'open', 'closed', '', 'logo_bosch', '', '', '2019-10-12 12:47:39', '2019-10-12 12:47:39', '', 17, 'http://recruit/wp-content/uploads/2019/08/logo_bosch.png', 0, 'attachment', 'image/png', 0),
(165, 1, '2019-10-12 12:48:40', '2019-10-12 12:48:40', '', 'vac_basf_01', '', 'inherit', 'open', 'closed', '', 'vac_basf_01', '', '', '2019-10-12 12:48:40', '2019-10-12 12:48:40', '', 15, 'http://recruit/wp-content/uploads/2019/08/vac_basf_01.png', 0, 'attachment', 'image/png', 0),
(166, 1, '2019-10-12 12:50:37', '2019-10-12 12:50:37', '', 'logo_basf', '', 'inherit', 'open', 'closed', '', 'logo_basf', '', '', '2019-10-12 12:50:37', '2019-10-12 12:50:37', '', 58, 'http://recruit/wp-content/uploads/2019/08/logo_basf.png', 0, 'attachment', 'image/png', 0),
(167, 1, '2019-10-12 12:51:27', '2019-10-12 12:51:27', '', 'logo_groninger', '', 'inherit', 'open', 'closed', '', 'logo_groninger', '', '', '2019-10-12 12:51:27', '2019-10-12 12:51:27', '', 57, 'http://recruit/wp-content/uploads/2019/08/logo_groninger.png', 0, 'attachment', 'image/png', 0),
(168, 1, '2019-10-15 12:10:06', '2019-10-15 12:10:06', '', 'no-man', '', 'inherit', 'open', 'closed', '', 'no-man', '', '', '2019-10-15 12:10:06', '2019-10-15 12:10:06', '', 0, 'http://recruit/wp-content/uploads/2019/10/no-man.jpg', 0, 'attachment', 'image/jpeg', 0),
(169, 1, '2019-10-15 12:10:41', '2019-10-15 12:10:41', '', 'vac_bosh_01', '', 'inherit', 'open', 'closed', '', 'vac_bosh_01', '', '', '2019-10-15 12:10:41', '2019-10-15 12:10:41', '', 17, 'http://recruit/wp-content/uploads/2019/08/vac_bosh_01.png', 0, 'attachment', 'image/png', 0),
(170, 1, '2019-10-15 14:46:05', '2019-10-15 14:46:05', '', 'vac_wp', '', 'inherit', 'open', 'closed', '', 'vac_wp', '', '', '2019-10-15 14:46:05', '2019-10-15 14:46:05', '', 90, 'http://recruit/wp-content/uploads/2019/09/vac_wp.png', 0, 'attachment', 'image/png', 0),
(172, 1, '2019-10-17 10:19:53', '2019-10-17 10:19:53', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<!-- /wp:paragraph -->', '[:en]p1[:ru]Hello world![:]', '[:en]New information points for foreigners[:]', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-10-17 10:19:53', '2019-10-17 10:19:53', '', 1, 'http://recruit/1-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2019-10-17 10:20:34', '2019-10-17 10:20:34', '', '[:en]p2[:]', '[:en]New information points for foreigners[:]', 'publish', 'open', 'open', '', 'p2', '', '', '2019-10-17 10:20:34', '2019-10-17 10:20:34', '', 0, 'http://recruit/?p=173', 0, 'post', '', 0),
(174, 1, '2019-10-17 10:20:34', '2019-10-17 10:20:34', '', '[:en]p2[:]', '[:en]New information points for foreigners[:]', 'inherit', 'closed', 'closed', '', '173-revision-v1', '', '', '2019-10-17 10:20:34', '2019-10-17 10:20:34', '', 173, 'http://recruit/173-revision-v1/', 0, 'revision', '', 0),
(175, 1, '2019-10-17 10:21:01', '2019-10-17 10:21:01', '', 'p3', 'New information points for foreigners', 'publish', 'open', 'open', '', '%d1%80%d1%83%d1%81%d1%81%d0%ba%d0%b8%d0%b9-p3', '', '', '2019-10-17 11:11:15', '2019-10-17 11:11:15', '', 0, 'http://recruit/?p=175', 0, 'post', '', 0),
(176, 1, '2019-10-17 10:21:01', '2019-10-17 10:21:01', '', '[:ru]p3[:]', '[:ru]New information points for foreigners[:]', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2019-10-17 10:21:01', '2019-10-17 10:21:01', '', 175, 'http://recruit/175-revision-v1/', 0, 'revision', '', 0),
(177, 1, '2019-10-17 10:21:10', '2019-10-17 10:21:10', '', 'p3', '[:ru]New information points for foreigners[:]', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2019-10-17 10:21:10', '2019-10-17 10:21:10', '', 175, 'http://recruit/175-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2019-10-17 10:21:39', '2019-10-17 10:21:39', '', '[:en]p4[:]', '[:en]New information points for foreigners[:]', 'publish', 'open', 'open', '', 'p4', '', '', '2019-10-17 10:21:39', '2019-10-17 10:21:39', '', 0, 'http://recruit/?p=178', 0, 'post', '', 0),
(179, 1, '2019-10-17 10:21:39', '2019-10-17 10:21:39', '', '[:en]p4[:]', '[:en]New information points for foreigners[:]', 'inherit', 'closed', 'closed', '', '178-revision-v1', '', '', '2019-10-17 10:21:39', '2019-10-17 10:21:39', '', 178, 'http://recruit/178-revision-v1/', 0, 'revision', '', 0),
(180, 1, '2019-10-17 10:22:07', '2019-10-17 10:22:07', '', '[:en]p5[:]', '[:en]New information points for foreigners[:]', 'publish', 'open', 'open', '', 'p5', '', '', '2019-10-17 10:22:07', '2019-10-17 10:22:07', '', 0, 'http://recruit/?p=180', 0, 'post', '', 0),
(181, 1, '2019-10-17 10:22:07', '2019-10-17 10:22:07', '', '[:en]p5[:]', '[:en]New information points for foreigners[:]', 'inherit', 'closed', 'closed', '', '180-revision-v1', '', '', '2019-10-17 10:22:07', '2019-10-17 10:22:07', '', 180, 'http://recruit/180-revision-v1/', 0, 'revision', '', 0),
(182, 1, '2019-10-17 11:11:15', '2019-10-17 11:11:15', '', 'p3', 'New information points for foreigners', 'inherit', 'closed', 'closed', '', '175-revision-v1', '', '', '2019-10-17 11:11:15', '2019-10-17 11:11:15', '', 175, 'http://recruit/175-revision-v1/', 0, 'revision', '', 0),
(184, 1, '2019-10-17 15:10:39', '2019-10-17 15:10:39', '', '[:en]Delux[:]', '', 'publish', 'closed', 'closed', '', 'delux', '', '', '2019-10-17 15:10:39', '2019-10-17 15:10:39', '', 0, 'http://recruit/?post_type=employer&#038;p=184', 0, 'employer', '', 0),
(185, 1, '2019-10-17 15:10:33', '2019-10-17 15:10:33', '', 'logo_1', '', 'inherit', 'open', 'closed', '', 'logo_1', '', '', '2019-10-17 15:10:33', '2019-10-17 15:10:33', '', 184, 'http://recruit/wp-content/uploads/2019/10/logo_1.png', 0, 'attachment', 'image/png', 0),
(186, 1, '2019-10-17 15:11:24', '2019-10-17 15:11:24', '', '[:en]bahenbad[:]', '', 'publish', 'closed', 'closed', '', 'bahenbad', '', '', '2019-10-17 15:11:24', '2019-10-17 15:11:24', '', 0, 'http://recruit/?post_type=employer&#038;p=186', 0, 'employer', '', 0),
(187, 1, '2019-10-17 15:11:19', '2019-10-17 15:11:19', '', 'logo_2', '', 'inherit', 'open', 'closed', '', 'logo_2', '', '', '2019-10-17 15:11:19', '2019-10-17 15:11:19', '', 186, 'http://recruit/wp-content/uploads/2019/10/logo_2.png', 0, 'attachment', 'image/png', 0),
(188, 1, '2019-10-17 15:11:57', '2019-10-17 15:11:57', '', '[:en]bmw[:ru]бмв[:]', '', 'publish', 'closed', 'closed', '', 'bmw', '', '', '2019-10-17 15:17:46', '2019-10-17 15:17:46', '', 0, 'http://recruit/?post_type=employer&#038;p=188', 0, 'employer', '', 0),
(189, 1, '2019-10-17 15:11:52', '2019-10-17 15:11:52', '', 'logo_bmw', '', 'inherit', 'open', 'closed', '', 'logo_bmw', '', '', '2019-10-17 15:11:52', '2019-10-17 15:11:52', '', 188, 'http://recruit/wp-content/uploads/2019/10/logo_bmw.png', 0, 'attachment', 'image/png', 0),
(191, 1, '2019-11-05 12:20:12', '2019-11-05 12:20:12', '', 'резюме', '', 'inherit', 'open', 'closed', '', '%d1%80%d0%b5%d0%b7%d1%8e%d0%bc%d0%b5', '', '', '2019-11-05 12:20:12', '2019-11-05 12:20:12', '', 6, 'http://recruit/wp-content/uploads/2019/08/резюме.jpg', 0, 'attachment', 'image/jpeg', 0),
(192, 1, '2019-11-05 12:40:50', '2019-11-05 12:40:50', '', 'резюме 2', '', 'inherit', 'open', 'closed', '', '%d1%80%d0%b5%d0%b7%d1%8e%d0%bc%d0%b5-2', '', '', '2019-11-05 12:40:50', '2019-11-05 12:40:50', '', 8, 'http://recruit/wp-content/uploads/2019/08/резюме-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(193, 1, '2019-11-05 12:48:40', '2019-11-05 12:48:40', '', 'резюме 3', '', 'inherit', 'open', 'closed', '', '%d1%80%d0%b5%d0%b7%d1%8e%d0%bc%d0%b5-3', '', '', '2019-11-05 12:48:40', '2019-11-05 12:48:40', '', 38, 'http://recruit/wp-content/uploads/2019/08/резюме-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(194, 1, '2019-11-05 12:55:39', '2019-11-05 12:55:39', '', 'резюме 4', '', 'inherit', 'open', 'closed', '', '%d1%80%d0%b5%d0%b7%d1%8e%d0%bc%d0%b5-4', '', '', '2019-11-05 12:55:39', '2019-11-05 12:55:39', '', 39, 'http://recruit/wp-content/uploads/2019/08/резюме-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(195, 1, '2019-11-11 10:21:09', '2019-11-11 10:21:09', '[:en]<p class=\"line bold\">Verband zur Bekämpfung der Kriminalität (VBK) e.V.</p>\r\n<p class=\"line bold\">Ehrenbreitsteiner Str. 20</p>\r\n<p class=\"line bold\">80993 München</p>\r\n<p class=\"line bold\">E-Mail: <a class=\"light-green\" href=\"mailto:service@vbk.de\">service@vbk.de</a></p>\r\n<p class=\"line bold\">FB: Verband zur Bekämpfung der Kriminalität VBK e.V</p>\r\n<p class=\"line bold bottom-margin\">Home: <a  class=\"light-green\" href=\"https://vbk.de\">vbk.de</a></p>\r\n\r\n<p class=\"line\">Amtsgericht München VR 12742</p>\r\n<p class=\"line\">Finanzamt München Steuer-Nummer: 143 223 30791</p>\r\n<p class=\"line\">Vorstand:</p>\r\n<p class=\"line\">Hans Gießer</p>\r\n<p class=\"line\">Claudia Sieber</p>\r\n<p class=\"line\">Gründung:   28.05.1988</p>\r\n\r\n<h2 class=\"bold\">Haftungsausschluss</h2>\r\n<p class=\"text-block\">Mit  Urteil  vom  12.05.1998  hat  das  Landgericht  Hamburg  entschieden,  dass  man  durch  die  Anbringung eines  Links  die  Inhalte  der  gelinkten  URL  gegebenenfalls  mit  zu  verantworten  hat.  Dies  kann,  so  das Landgericht,  nur  dadurch  verhindert  werden,  dass  man  sich  ausdrücklich  von  den  gelinkten  Inhalten der  Seite  distanziert,  was  wir  hiermit  ausdrücklich  tun.  Wir  betonen  ausdrücklich,  dass  wir  keinerlei Einfluss auf die Gestaltung und die Inhalte der gelinkten Seiten haben.</p>\r\n[:]', '[:en]Impressum[:]', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2019-11-11 10:21:09', '2019-11-11 10:21:09', '', 130, 'http://recruit/130-revision-v1/', 0, 'revision', '', 0),
(196, 1, '2019-11-11 10:21:56', '2019-11-11 10:21:56', '[:en]<div class=container\">\r\n<p class=\"line bold\">Verband zur Bekämpfung der Kriminalität (VBK) e.V.</p>\r\n<p class=\"line bold\">Ehrenbreitsteiner Str. 20</p>\r\n<p class=\"line bold\">80993 München</p>\r\n<p class=\"line bold\">E-Mail: <a class=\"light-green\" href=\"mailto:service@vbk.de\">service@vbk.de</a></p>\r\n<p class=\"line bold\">FB: Verband zur Bekämpfung der Kriminalität VBK e.V</p>\r\n<p class=\"line bold bottom-margin\">Home: <a  class=\"light-green\" href=\"https://vbk.de\">vbk.de</a></p>\r\n\r\n<p class=\"line\">Amtsgericht München VR 12742</p>\r\n<p class=\"line\">Finanzamt München Steuer-Nummer: 143 223 30791</p>\r\n<p class=\"line\">Vorstand:</p>\r\n<p class=\"line\">Hans Gießer</p>\r\n<p class=\"line\">Claudia Sieber</p>\r\n<p class=\"line\">Gründung:   28.05.1988</p>\r\n\r\n<h2 class=\"bold\">Haftungsausschluss</h2>\r\n<p class=\"text-block\">Mit  Urteil  vom  12.05.1998  hat  das  Landgericht  Hamburg  entschieden,  dass  man  durch  die  Anbringung eines  Links  die  Inhalte  der  gelinkten  URL  gegebenenfalls  mit  zu  verantworten  hat.  Dies  kann,  so  das Landgericht,  nur  dadurch  verhindert  werden,  dass  man  sich  ausdrücklich  von  den  gelinkten  Inhalten der  Seite  distanziert,  was  wir  hiermit  ausdrücklich  tun.  Wir  betonen  ausdrücklich,  dass  wir  keinerlei Einfluss auf die Gestaltung und die Inhalte der gelinkten Seiten haben.</p>\r\n</div>\r\n[:]', '[:en]Impressum[:]', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2019-11-11 10:21:56', '2019-11-11 10:21:56', '', 130, 'http://recruit/130-revision-v1/', 0, 'revision', '', 0),
(197, 1, '2019-11-11 10:33:35', '2019-11-11 10:33:35', '[:en]<p class=\"line bold\">Verband zur Bekämpfung der Kriminalität (VBK) e.V.</p>\r\n<p class=\"line bold\">Ehrenbreitsteiner Str. 20</p>\r\n<p class=\"line bold\">80993 München</p>\r\n<p class=\"line bold\">E-Mail: <a class=\"light-green\" href=\"mailto:service@vbk.de\">service@vbk.de</a></p>\r\n<p class=\"line bold\">FB: Verband zur Bekämpfung der Kriminalität VBK e.V</p>\r\n<p class=\"line bold bottom-margin\">Home: <a  class=\"light-green\" href=\"https://vbk.de\">vbk.de</a></p>\r\n\r\n<p class=\"line\">Amtsgericht München VR 12742</p>\r\n<p class=\"line\">Finanzamt München Steuer-Nummer: 143 223 30791</p>\r\n<p class=\"line\">Vorstand:</p>\r\n<p class=\"line\">Hans Gießer</p>\r\n<p class=\"line\">Claudia Sieber</p>\r\n<p class=\"line\">Gründung:   28.05.1988</p>\r\n\r\n<h2 class=\"bold\">Haftungsausschluss</h2>\r\n<p class=\"text-block\">Mit  Urteil  vom  12.05.1998  hat  das  Landgericht  Hamburg  entschieden,  dass  man  durch  die  Anbringung eines  Links  die  Inhalte  der  gelinkten  URL  gegebenenfalls  mit  zu  verantworten  hat.  Dies  kann,  so  das Landgericht,  nur  dadurch  verhindert  werden,  dass  man  sich  ausdrücklich  von  den  gelinkten  Inhalten der  Seite  distanziert,  was  wir  hiermit  ausdrücklich  tun.  Wir  betonen  ausdrücklich,  dass  wir  keinerlei Einfluss auf die Gestaltung und die Inhalte der gelinkten Seiten haben.</p>\r\n[:]', '[:en]Impressum[:]', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2019-11-11 10:33:35', '2019-11-11 10:33:35', '', 130, 'http://recruit/130-revision-v1/', 0, 'revision', '', 0),
(198, 1, '2019-11-11 10:33:58', '2019-11-11 10:33:58', '<p class=\"line bold\">Verband zur Bekämpfung der Kriminalität (VBK) e.V.</p>\r\n<p class=\"line bold\">Ehrenbreitsteiner Str. 20</p>\r\n<p class=\"line bold\">80993 München</p>\r\n<p class=\"line bold\">E-Mail: <a class=\"light-green\" href=\"mailto:service@vbk.de\">service@vbk.de</a></p>\r\n<p class=\"line bold\">FB: Verband zur Bekämpfung der Kriminalität VBK e.V</p>\r\n<p class=\"line bold bottom-margin\">Home: <a  class=\"light-green\" href=\"https://vbk.de\">vbk.de</a></p>\r\n\r\n<p class=\"line\">Amtsgericht München VR 12742</p>\r\n<p class=\"line\">Finanzamt München Steuer-Nummer: 143 223 30791</p>\r\n<p class=\"line\">Vorstand:</p>\r\n<p class=\"line\">Hans Gießer</p>\r\n<p class=\"line\">Claudia Sieber</p>\r\n<p class=\"line\">Gründung:   28.05.1988</p>\r\n\r\n<h2 class=\"bold\">Haftungsausschluss</h2>\r\n<p class=\"text-block\">Mit  Urteil  vom  12.05.1998  hat  das  Landgericht  Hamburg  entschieden,  dass  man  durch  die  Anbringung eines  Links  die  Inhalte  der  gelinkten  URL  gegebenenfalls  mit  zu  verantworten  hat.  Dies  kann,  so  das Landgericht,  nur  dadurch  verhindert  werden,  dass  man  sich  ausdrücklich  von  den  gelinkten  Inhalten der  Seite  distanziert,  was  wir  hiermit  ausdrücklich  tun.  Wir  betonen  ausdrücklich,  dass  wir  keinerlei Einfluss auf die Gestaltung und die Inhalte der gelinkten Seiten haben.</p>', '[:en]Impressum[:]', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2019-11-11 10:33:58', '2019-11-11 10:33:58', '', 130, 'http://recruit/130-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'building', 'building', 0),
(3, 'service', 'service', 0),
(5, 'Berlin', 'berlin', 0),
(6, 'Frankfurt', 'frankfurt', 0),
(7, 'Hannover', 'hannover', 0),
(8, 'top-menu', 'top-menu', 0),
(9, 'IT', 'it', 0),
(10, 'Full Day', 'full_day', 0),
(11, 'Part Day', 'part_day', 0),
(12, 'Remote Job', 'remote_job', 0),
(13, 'Germany', 'germany', 0),
(14, 'Ukraine', 'ukraine', 0),
(15, 'Russia', 'russia', 0),
(16, 'Kiev', 'kiev', 0),
(17, 'Moscow', 'moscow', 0),
(18, 'russian', 'russian', 0),
(19, 'ukrainian', 'ukrainian', 0),
(20, 'russian', 'russian', 0),
(21, 'ukrainian', 'ukrainian', 0),
(22, 'english', 'english', 0),
(32, 'high-menu', 'high-menu', 0),
(33, 'german', 'german', 0),
(34, 'pre-intermediate', 'pi-en', 0),
(35, 'intermediate', 'i-en', 0),
(36, 'upper-intermediate', 'up-en', 0),
(37, 'pre-intermediate', 'pi-de', 0),
(38, 'intermediate', 'i-de', 0),
(39, 'upper-intermediate', 'up-de', 0),
(40, 'pre-intermediate', 'pi-ru', 0),
(41, 'intermediate', 'i-ru', 0),
(42, 'upper-intermediate', 'up-ru', 0),
(44, 'pre-intermediate', 'pi-ua', 0),
(45, 'intermediate', 'i-ua', 0),
(46, 'upper-intermediate', 'up-ua', 0),
(55, 'employer tips', 'employer_tips', 0),
(56, 'applicant tips', 'applicant_tips', 0),
(57, 'general', 'general', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(0, 10, 0),
(0, 11, 0),
(0, 12, 0),
(0, 13, 0),
(0, 15, 0),
(1, 1, 0),
(6, 9, 0),
(6, 10, 0),
(6, 12, 0),
(6, 14, 0),
(6, 20, 0),
(6, 21, 0),
(6, 22, 0),
(8, 3, 0),
(8, 10, 0),
(8, 12, 0),
(8, 15, 0),
(8, 20, 0),
(8, 22, 0),
(15, 2, 0),
(15, 6, 0),
(15, 10, 0),
(15, 13, 0),
(15, 33, 0),
(15, 38, 0),
(17, 2, 0),
(17, 5, 0),
(17, 10, 0),
(17, 13, 0),
(17, 22, 0),
(17, 35, 0),
(38, 3, 0),
(38, 10, 0),
(38, 14, 0),
(38, 20, 0),
(38, 21, 0),
(39, 3, 0),
(39, 10, 0),
(39, 14, 0),
(39, 22, 0),
(39, 36, 0),
(57, 2, 0),
(57, 7, 0),
(57, 13, 0),
(58, 3, 0),
(58, 5, 0),
(58, 6, 0),
(58, 7, 0),
(58, 13, 0),
(59, 3, 0),
(59, 6, 0),
(59, 13, 0),
(81, 18, 0),
(81, 19, 0),
(84, 8, 0),
(85, 8, 0),
(86, 8, 0),
(87, 8, 0),
(89, 5, 0),
(89, 7, 0),
(89, 9, 0),
(89, 10, 0),
(89, 22, 0),
(89, 33, 0),
(89, 35, 0),
(89, 38, 0),
(90, 5, 0),
(90, 9, 0),
(90, 12, 0),
(90, 13, 0),
(90, 22, 0),
(90, 33, 0),
(100, 32, 0),
(101, 32, 0),
(102, 32, 0),
(103, 32, 0),
(138, 56, 0),
(139, 56, 0),
(140, 55, 0),
(141, 55, 0),
(156, 57, 0),
(157, 57, 0),
(173, 1, 0),
(175, 1, 0),
(178, 1, 0),
(180, 1, 0),
(184, 2, 0),
(184, 13, 0),
(186, 2, 0),
(186, 13, 0),
(188, 3, 0),
(188, 13, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(2, 2, 'resume_cat', '', 0, 5),
(3, 3, 'resume_cat', '', 0, 6),
(5, 5, 'city_cat', '', 13, 4),
(6, 6, 'city_cat', '', 13, 3),
(7, 7, 'city_cat', '', 13, 3),
(8, 8, 'nav_menu', '', 0, 4),
(9, 9, 'resume_cat', '', 0, 3),
(10, 10, 'job_cat', '', 0, 7),
(11, 11, 'job_cat', '', 0, 0),
(12, 12, 'job_cat', '', 0, 3),
(13, 13, 'city_cat', '', 0, 9),
(14, 14, 'city_cat', '', 0, 3),
(15, 15, 'city_cat', '', 0, 1),
(16, 16, 'city_cat', '', 14, 0),
(17, 17, 'city_cat', '', 15, 0),
(18, 18, 'languqage_cat', '', 0, 1),
(19, 19, 'languqage_cat', '', 0, 1),
(20, 20, 'language_cat', '', 0, 3),
(21, 21, 'language_cat', '', 0, 2),
(22, 22, 'language_cat', '', 0, 6),
(32, 32, 'nav_menu', '', 0, 4),
(33, 33, 'language_cat', '', 0, 3),
(34, 34, 'language_cat', '', 22, 0),
(35, 35, 'language_cat', '', 22, 2),
(36, 36, 'language_cat', '', 22, 1),
(37, 37, 'language_cat', '', 33, 0),
(38, 38, 'language_cat', '', 33, 2),
(39, 39, 'language_cat', '', 33, 0),
(40, 40, 'language_cat', '', 20, 0),
(41, 41, 'language_cat', '', 20, 0),
(42, 42, 'language_cat', '', 20, 0),
(44, 44, 'language_cat', '', 21, 0),
(45, 45, 'language_cat', '', 21, 0),
(46, 46, 'language_cat', '', 21, 0),
(55, 55, 'tips_cat', '', 0, 2),
(56, 56, 'tips_cat', '', 0, 2),
(57, 57, 'tips_cat', '', 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_trp_dictionary_en_us_de_de`
--

CREATE TABLE `wp_trp_dictionary_en_us_de_de` (
  `id` bigint(20) NOT NULL,
  `original` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `translated` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(20) DEFAULT 0,
  `block_type` int(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_trp_dictionary_en_us_de_de`
--

INSERT INTO `wp_trp_dictionary_en_us_de_de` (`id`, `original`, `translated`, `status`, `block_type`) VALUES
(1, 'All Resumes', '', 0, 1),
(2, 'resume1', '', 0, 0),
(3, 'resume2', '', 0, 0),
(4, 'All Vacancies', '', 0, 0),
(5, 'vacancy1', '', 0, 0),
(6, 'vacancy2', '', 0, 0),
(7, 'Applicant Account', '', 0, 0),
(8, 'Hello world!', '', 0, 0),
(9, 'August 12, 2019 8:51 am', '', 0, 0),
(10, 'Published by', '', 0, 0),
(11, 'root', '', 0, 0),
(12, 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', '', 0, 0),
(13, 'Veröffentlicht von', '', 0, 0),
(14, 'August 12, 2019 10:53 am', '', 0, 0),
(15, 'vacancy', '', 0, 0),
(16, 'August 12, 2019 10:52 am', '', 0, 0),
(17, 'vaqcancy', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_trp_dictionary_en_us_ru_ru`
--

CREATE TABLE `wp_trp_dictionary_en_us_ru_ru` (
  `id` bigint(20) NOT NULL,
  `original` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `translated` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(20) DEFAULT 0,
  `block_type` int(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_trp_dictionary_en_us_ru_ru`
--

INSERT INTO `wp_trp_dictionary_en_us_ru_ru` (`id`, `original`, `translated`, `status`, `block_type`) VALUES
(1, 'Applicant Account', '', 0, 0),
(2, 'Your new resume', '', 0, 0),
(3, 'Август 15, 2019 11:44 дп', '', 0, 0),
(4, 'Published by', '', 0, 0),
(5, 'test test', '', 0, 0),
(6, 'Your new resume content', '', 0, 0),
(7, 'Август 15, 2019 11:33 дп', '', 0, 0),
(8, 'Август 15, 2019 11:31 дп', '', 0, 0),
(9, 'Август 15, 2019 11:29 дп', '', 0, 0),
(10, 'Август 15, 2019 11:28 дп', '', 0, 0),
(11, 'Август 15, 2019 11:25 дп', '', 0, 0),
(12, 'Август 15, 2019 11:20 дп', '', 0, 0),
(13, 'Август 15, 2019 11:14 дп', '', 0, 0),
(14, 'resume2', '', 0, 0),
(15, 'Август 12, 2019 10:35 дп', '', 0, 0),
(16, 'root', '', 0, 0),
(17, 'resume', '', 0, 0),
(18, 'http://recruit/wp-content/uploads/2019/08/innocigs-ego-aio-d16-e-zigaretten-set-verpackung-150x150.jpg', '', 0, 0),
(19, 'http://recruit/wp-content/uploads/2019/08/5mlright-150x150.png', '', 0, 0),
(20, 'http://recruit/wp-content/uploads/2019/08/7_Seas_Gold_Blend_40g_1-150x150.jpg', '', 0, 0),
(21, 'http://recruit/wp-content/uploads/2019/08/Old_Holborn_Blue_1-150x150.jpg', '', 0, 0),
(22, 'http://recruit/wp-content/uploads/2019/08/187_Dragon_Blood-150x150.jpg', '', 0, 0),
(23, 'http://recruit/wp-content/uploads/2019/08/187_Tobacco_Green_Grizzly-150x150.jpg', '', 0, 0),
(24, 'http://recruit/wp-content/uploads/2019/08/187_Tobacco_Le_Moon-150x150.jpg', '', 0, 0),
(25, 'http://recruit/wp-content/uploads/2019/08/187_Tobacco_Pink_Mellow-150x150.jpg', '', 0, 0),
(26, 'http://recruit/wp-content/uploads/2019/08/187-strassenbande-025-ello-raffa-50ml-shortfill-150x150.jpg', '', 0, 0),
(27, 'http://recruit/wp-content/uploads/2019/08/187_Tobacco_Miami_Vice-150x150.jpg', '', 0, 0),
(28, 'All Resumes', 'Все резюме', 2, 0),
(29, 'resume1', '', 0, 0),
(30, 'All Vacancies', '', 0, 0),
(31, 'vacancy1', '', 0, 0),
(32, 'vacancy2', '', 0, 0),
(33, 'Hello world!', '', 0, 0),
(34, 'Август 12, 2019 8:51 дп', '', 0, 0),
(35, 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', '', 0, 0),
(36, 'August 12, 2019 8:51 am', '', 0, 0),
(37, 'Август 12, 2019 10:34 дп', '', 0, 0),
(38, 'This post was written by', '', 0, 0),
(39, 'http://recruit/wp-content/uploads/2019/08/187_Tobacco_Wild_Beast.jpg', '', 0, 0),
(40, 'http://recruit/wp-content/uploads/2019/08/187_Tobacco_Miami_Vice.jpg', '', 0, 0),
(41, 'resume the content the content', 'резюме контент контент', 2, 0),
(42, 'http://recruit/wp-content/uploads/2019/08/187-strassenbande-025-ello-raffa-50ml-shortfill.jpg', '', 0, 0),
(43, 'Resumes', '', 0, 0),
(44, 'New Resume', '', 0, 0),
(45, 'Name', '', 0, 0),
(46, 'Second Name', '', 0, 0),
(47, 'Category', '', 0, 0),
(48, 'building', '', 0, 0),
(49, 'service', '', 0, 0),
(50, 'Change Image', '', 0, 0),
(51, 'Email', '', 0, 0),
(52, 'Phone', '', 0, 0),
(53, 'BirthDate', '', 0, 0),
(54, 'Country', '', 0, 0),
(55, 'russia', '', 0, 0),
(56, 'ukraine', '', 0, 0),
(57, 'update', '', 0, 0),
(58, 'Notice: Undefined index: resume_id in /home/recruit/recruit.hosting1.tn-rechenzentrum1.de\\wp-content\\themes\\UDFT\\inc\\recruit.php on line', '', 0, 0),
(59, 'Call Stack', '', 0, 0),
(60, 'Time', '', 0, 0),
(61, 'Memory', '', 0, 0),
(62, 'Function', '', 0, 0),
(63, 'Location', '', 0, 0),
(64, '{main}(  )', '', 0, 0),
(65, '...\\admin-ajax.php', '', 0, 0),
(66, 'do_action( ???, ??? )', '', 0, 0),
(67, 'WP_Hook->do_action( ??? )', '', 0, 0),
(68, '...\\plugin.php', '', 0, 0),
(69, 'WP_Hook->apply_filters( ???, ??? )', '', 0, 0),
(70, '...\\class-wp-hook.php', '', 0, 0),
(71, 'get_user_resume( ??? )', '', 0, 0),
(72, 'Dump', '', 0, 0),
(73, '$_SERVER', '', 0, 0),
(74, '$_SERVER[\'REMOTE_ADDR\']&nbsp;=', '', 0, 0),
(75, 'string', '', 0, 0),
(76, '(length=9)', '', 0, 0),
(77, '$_SERVER[\'REQUEST_METHOD\']&nbsp;=', '', 0, 0),
(78, '\'POST\'', '', 0, 0),
(79, '(length=4)', '', 0, 0),
(80, '$_SESSION', '', 0, 0),
(81, '$_SESSION[\'*\']&nbsp;=', '', 0, 0),
(82, 'undefined', '', 0, 0),
(83, '$_REQUEST', '', 0, 0),
(84, '$_REQUEST[\'action\']&nbsp;=', '', 0, 0),
(85, '\'get_user_resume\'', '', 0, 0),
(86, '(length=15)', '', 0, 0),
(87, '$_REQUEST[\'user_id\']&nbsp;=', '', 0, 0),
(88, '(length=1)', '', 0, 0),
(89, '$_REQUEST[\'trp-edit-translation\']&nbsp;=', '', 0, 0),
(90, '\'preview\'', '', 0, 0),
(91, '(length=7)', '', 0, 0),
(92, '{\"result\":1,\"content\":\"', '', 0, 0),
(93, '\\r\\n', '', 0, 0),
(94, '/home/recruit/recruit.hosting1.tn-rechenzentrum1.de\\wp-admin\\admin-ajax.php', '', 0, 0),
(95, '/home/recruit/recruit.hosting1.tn-rechenzentrum1.de\\wp-includes\\plugin.php', '', 0, 0),
(96, '/home/recruit/recruit.hosting1.tn-rechenzentrum1.de\\wp-includes\\class-wp-hook.php', '', 0, 0),
(97, 'title7', '', 0, 0),
(98, 'title6', '', 0, 0),
(99, 'title5', '', 0, 0),
(100, 'title4', '', 0, 0),
(101, 'title8', '', 0, 0),
(102, 'title9', '', 0, 0),
(103, 'title2', '', 0, 0),
(104, 'title1', '', 0, 0),
(105, 'August 12, 2019 10:53 am', '', 0, 0),
(106, 'vacancy', '', 0, 0),
(107, 'Gender', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_trp_gettext_de_de`
--

CREATE TABLE `wp_trp_gettext_de_de` (
  `id` bigint(20) NOT NULL,
  `original` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `translated` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_trp_gettext_de_de`
--

INSERT INTO `wp_trp_gettext_de_de` (`id`, `original`, `translated`, `domain`, `status`) VALUES
(1, 'Latest Posts', 'Letzte Artikel', 'tpl', 2),
(2, 'Published by', 'Veröffentlicht von', 'tpl', 2),
(3, 'Posts by %s', 'Beiträge von %s', 'default', 2),
(4, '1 Comment', '1 Kommentar', 'tpl', 2),
(5, 'Edit This', 'Bearbeiten', 'default', 2),
(6, 'Post Type Archive', 'Inhaltstyp-Archiv', 'default', 2),
(7, 'words', '', 'default', 0),
(8, 'off', '', 'default', 0),
(9, 'Leave your thoughts', 'Schreibe einen Kommentar', 'tpl', 2),
(10, '% Comments', '% Kommentare', 'tpl', 2),
(11, 'Comments Off<span class=\"screen-reader-text\"> on %s</span>', 'Kommentare deaktiviert<span class=\"screen-reader-text\"> für %s</span>', 'default', 2),
(12, 'Sorry, but you do not have permission to view this content.', '', 'members', 0),
(13, 'You must be logged into the site to view this content.', '', 'members', 0),
(14, '&laquo; Previous', '&laquo; Zurück', 'default', 2),
(15, 'Next &raquo;', 'Weiter &raquo;', 'default', 2),
(16, '<a href=\"%1$s\" %2$s>Describe the purpose of the image%3$s</a>. Leave empty if the image is purely decorative.', '<a href=\"%1$s\" %2$s>Beschreibe den Zweck des Bildes%3$s</a>. Leer lassen, wenn das Bild nur als dekoratives Element dient.', 'default', 2),
(17, '(opens in a new tab)', '(öffnet in neuem Tab)', 'default', 2),
(18, 'Close media panel', 'Medien-Bedienfeld schließen', 'default', 2),
(19, 'Drop files to upload', 'Dateien für den Upload bereitstellen', 'default', 2),
(20, 'Close uploader', 'Bedienfeld zum Hochladen schließen', 'default', 2),
(21, 'Drop files anywhere to upload', 'Zum Hochladen Dateien per Drag-and-drop hier ablegen.', 'default', 2),
(22, 'or', 'oder', 'default', 2),
(23, 'Select Files', 'Dateien auswählen', 'default', 2),
(24, 'Maximum upload file size: %s.', 'Maximale Dateigröße für Uploads: %s.', 'default', 2),
(25, 'Suggested image dimensions: %1$s by %2$s pixels.', 'Vorgeschlagene Bildmaße: %1$s auf %2$s Pixel.', 'default', 2),
(26, 'List View', 'Listenansicht', 'default', 2),
(27, 'Grid View', 'Rasteransicht', 'default', 2),
(28, 'Uploading', 'Hochladen', 'default', 2),
(29, 'Dismiss Errors', 'Fehler ausblenden', 'default', 2),
(30, 'Edit previous media item', 'Vorheriges Medienelement bearbeiten', 'default', 2),
(31, 'Edit next media item', 'Nächstes Medienelement bearbeiten', 'default', 2),
(32, 'Edit Image', 'Bild bearbeiten', 'default', 2),
(33, 'Document Preview', 'Dokument-Vorschau', 'default', 2),
(34, 'Saved.', 'Gespeichert.', 'default', 2),
(35, 'File name:', 'Dateiname:', 'default', 2),
(36, 'File type:', 'Dateityp:', 'default', 2),
(37, 'Uploaded on:', 'Hochgeladen am:', 'default', 2),
(38, 'File size:', 'Dateigröße:', 'default', 2),
(39, 'Dimensions:', 'Abmessungen:', 'default', 2),
(40, '%1$s by %2$s pixels', '%1$s auf %2$s Pixel', 'default', 2),
(41, 'Length:', 'Länge:', 'default', 2),
(42, 'Bitrate:', '', 'default', 0),
(43, 'Alternative Text', 'Alternativer Text', 'default', 2),
(44, 'Title', 'Titel', 'default', 2),
(45, 'Artist', 'Künstler', 'default', 2),
(46, 'Album', '', 'default', 0),
(47, 'Caption', 'Beschriftung', 'default', 2),
(48, 'Description', 'Beschreibung', 'default', 2),
(49, 'Uploaded By', 'Hochgeladen von', 'default', 2),
(50, 'Uploaded To', 'Hochgeladen zu', 'default', 2),
(51, 'Copy Link', 'Link kopieren', 'default', 2),
(52, 'View attachment page', 'Anhang-Seite anschauen', 'default', 2),
(53, 'Edit more details', 'Weitere Details bearbeiten', 'default', 2),
(54, 'Delete Permanently', 'Endgültig löschen', 'default', 2),
(55, 'Remove', 'Entfernen', 'default', 2),
(56, 'Deselect', 'Abwählen', 'default', 2),
(57, 'Caption this image&hellip;', 'Beschrifte dieses Bild&#160;&hellip;', 'default', 2),
(58, 'Describe this video&hellip;', 'Beschreibe dieses Video&#160;&hellip;', 'default', 2),
(59, 'Describe this audio file&hellip;', 'Beschreibe diese Audio-Datei&#160;&hellip;', 'default', 2),
(60, 'Describe this media file&hellip;', 'Beschreibe diese Medien-Datei&#160;&hellip;', 'default', 2),
(61, 'Attachment Details', 'Anhang-Details', 'default', 2),
(62, 'Alt Text', 'Alternativtext', 'default', 2),
(63, 'Edit Selection', 'Auswahl bearbeiten', 'default', 2),
(64, 'Clear', 'Leeren', 'default', 2),
(65, 'Attachment Display Settings', 'Anzeige-Einstellungen für Anhänge', 'default', 2),
(66, 'Alignment', 'Ausrichtung', 'default', 2),
(67, 'Left', 'Links', 'default', 2),
(68, 'Center', 'Zentriert', 'default', 2),
(69, 'Right', 'Rechts', 'default', 2),
(70, 'None', 'Keine', 'default', 2),
(71, 'Embed or Link', 'Einbetten oder verlinken', 'default', 2),
(72, 'Link To', 'Link zur', 'default', 2),
(73, 'Embed Media Player', 'Eingebundener Medien-Player', 'default', 2),
(74, 'Link to Media File', 'Medien-Datei verlinken', 'default', 2),
(75, 'Media File', 'Medien-Datei', 'default', 2),
(76, 'Link to Attachment Page', 'Anhang-Seite verlinken', 'default', 2),
(77, 'Attachment Page', 'Anhang-Seite', 'default', 2),
(78, 'Custom URL', 'Individuelle URL', 'default', 2),
(79, 'Size', 'Größe', 'default', 2),
(80, 'Thumbnail', 'Vorschaubild', 'default', 2),
(81, 'Medium', 'Mittel', 'default', 2),
(82, 'Large', 'Groß', 'default', 2),
(83, 'Full Size', 'Vollständige Größe', 'default', 2),
(84, 'Gallery Settings', 'Galerie-Einstellungen', 'default', 2),
(85, 'Columns', 'Spalten', 'default', 2),
(86, 'Random Order', 'Zufällige Sortierung', 'default', 2),
(87, 'Playlist Settings', 'Einstellungen Wiedergabeliste', 'default', 2),
(88, 'Show Video List', 'Videoliste anzeigen', 'default', 2),
(89, 'Show Tracklist', 'Titelliste anzeigen', 'default', 2),
(90, 'Show Artist Name in Tracklist', 'Name des Künstlers in der Titelliste anzeigen', 'default', 2),
(91, 'Show Images', 'Bilder anzeigen', 'default', 2),
(92, 'Link Text', 'Link-Text', 'default', 2),
(93, 'Align', 'Ausrichtung', 'default', 2),
(94, 'Image URL', 'Bild-URL', 'default', 2),
(95, 'Edit Original', 'Original bearbeiten', 'default', 2),
(96, 'Replace', 'Ersetzen', 'default', 2),
(97, 'Display Settings', 'Einstellungen anzeigen', 'default', 2),
(98, 'Custom Size', 'Individuelle Größe', 'default', 2),
(99, 'Width', 'Breite', 'default', 2),
(100, 'Height', 'Höhe', 'default', 2),
(101, 'Advanced Options', 'Erweiterte Optionen', 'default', 2),
(102, 'Image Title Attribute', 'Bild title-Attribut', 'default', 2),
(103, 'Image CSS Class', 'Bild-CSS-Klasse', 'default', 2),
(104, 'Open link in a new tab', 'Link in einem neuen Tab öffnen', 'default', 2),
(105, 'Link Rel', 'Link-Beziehung', 'default', 2),
(106, 'Link CSS Class', 'CSS-Klasse des Links', 'default', 2),
(107, 'URL', '', 'default', 0),
(108, 'Remove audio source', 'Audio-Quelle entfernen', 'default', 2),
(109, 'Add alternate sources for maximum HTML5 playback:', 'Füge alternative Quellen für maximale HTML5-Wiedergabe hinzu:', 'default', 2),
(110, 'Preload', 'Vorladen', 'default', 2),
(111, 'Auto', 'Automatisch', 'default', 2),
(112, 'Metadata', 'Meta-Daten', 'default', 2),
(113, 'Autoplay', '', 'default', 0),
(114, 'Loop', 'Schleife', 'default', 2),
(115, 'Remove video source', 'Video-Quelle entfernen', 'default', 2),
(116, 'Poster Image', 'Vorschaubild', 'default', 2),
(117, 'Remove poster image', 'Vorschaubild entfernen', 'default', 2),
(118, 'Tracks (subtitles, captions, descriptions, chapters, or metadata)', 'Titel (Untertitel, Beschriftungen, Beschreibungen, Kapitel oder Meta-Daten)', 'default', 2),
(119, 'Remove video track', 'Video-Track entfernen', 'default', 2),
(120, 'There are no associated subtitles.', 'Es gibt keine zugehörigen Untertitel.', 'default', 2),
(121, 'No items found.', 'Keine Elemente gefunden.', 'default', 2),
(122, 'Image crop area preview. Requires mouse interaction.', 'Vorschau des Bereichs &#8222;Bilder zuschneiden&#8220;. Erfordert Maus-Interaktion.', 'default', 2),
(123, 'Preview', 'Vorschau', 'default', 2),
(124, 'As a browser icon', 'Als Browser-Icon', 'default', 2),
(125, 'Preview as a browser icon', 'Vorschau als Browser-Icon', 'default', 2),
(126, 'As an app icon', 'Als App-Icon', 'default', 2),
(127, 'Preview as an app icon', 'Vorschau als App-Icon', 'default', 2),
(128, 'Edit My Profile', 'Profil bearbeiten', 'default', 2),
(129, 'Log Out', 'Abmelden', 'default', 2),
(130, 'Search', 'Suchen', 'default', 2),
(131, 'Howdy, %s', 'Willkommen, %s', 'default', 2),
(132, 'About WordPress', 'Über WordPress', 'default', 2),
(133, 'WordPress.org', '', 'default', 0),
(134, 'https://wordpress.org/', 'https://de.wordpress.org/', 'default', 2),
(135, 'Documentation', 'Dokumentation', 'default', 2),
(136, 'https://codex.wordpress.org/', '', 'default', 0),
(137, 'Support', '', 'default', 0),
(138, 'https://wordpress.org/support/', 'https://de.wordpress.org/hilfe/', 'default', 2),
(139, 'Feedback', '', 'default', 0),
(140, 'https://wordpress.org/support/forum/requests-and-feedback', '', 'default', 0),
(141, 'Dashboard', '', 'default', 0),
(142, 'Themes', '', 'default', 0),
(143, 'Widgets', '', 'default', 0),
(144, 'Menus', 'Menüs', 'default', 2),
(145, 'Customize', 'Customizer', 'default', 2),
(146, '%s Comments in moderation', '%s Kommentare in Moderation', 'default', 2),
(147, 'User', 'Benutzer', 'default', 2),
(148, 'New', 'Neu', 'default', 2),
(149, 'Role', '', 'members', 0),
(150, 'Skip to toolbar', 'Zur Werkzeugleiste springen', 'default', 2),
(151, 'Toolbar', 'Werkzeugleiste', 'default', 2),
(152, 'In %1$s, use the %2$s method, not the %3$s function. See %4$s.', 'Verwende in %1$s die Methode %2$s, nicht die Funktion %3$s. Siehe %4$s.', 'default', 2),
(153, 'https://codex.wordpress.org/Function_Reference/is_main_query', '', 'default', 0),
(154, 'Pages', 'Seiten', 'default', 2),
(155, 'Archives', 'Archive', 'tpl', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_trp_gettext_en_us`
--

CREATE TABLE `wp_trp_gettext_en_us` (
  `id` bigint(20) NOT NULL,
  `original` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `translated` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_trp_gettext_en_us`
--

INSERT INTO `wp_trp_gettext_en_us` (`id`, `original`, `translated`, `domain`, `status`) VALUES
(1, 'Post Type Archive', '', 'default', 0),
(2, 'words', '', 'default', 0),
(3, 'Latest Posts', '', 'tpl', 0),
(4, 'off', '', 'default', 0),
(5, 'Published by', '', 'tpl', 0),
(6, 'Posts by %s', '', 'default', 0),
(7, 'Leave your thoughts', '', 'tpl', 0),
(8, '1 Comment', '', 'tpl', 0),
(9, '% Comments', '', 'tpl', 0),
(10, 'Comments Off<span class=\"screen-reader-text\"> on %s</span>', '', 'default', 0),
(11, 'Sorry, but you do not have permission to view this content.', '', 'members', 0),
(12, 'You must be logged into the site to view this content.', '', 'members', 0),
(13, 'Edit This', '', 'default', 0),
(14, '&laquo; Previous', '', 'default', 0),
(15, 'Next &raquo;', '', 'default', 0),
(16, '<a href=\"%1$s\" %2$s>Describe the purpose of the image%3$s</a>. Leave empty if the image is purely decorative.', '', 'default', 0),
(17, '(opens in a new tab)', '', 'default', 0),
(18, 'Close media panel', '', 'default', 0),
(19, 'Drop files to upload', '', 'default', 0),
(20, 'Close uploader', '', 'default', 0),
(21, 'Drop files anywhere to upload', '', 'default', 0),
(22, 'or', '', 'default', 0),
(23, 'Select Files', '', 'default', 0),
(24, 'Maximum upload file size: %s.', '', 'default', 0),
(25, 'Suggested image dimensions: %1$s by %2$s pixels.', '', 'default', 0),
(26, 'List View', '', 'default', 0),
(27, 'Grid View', '', 'default', 0),
(28, 'Uploading', '', 'default', 0),
(29, 'Dismiss Errors', '', 'default', 0),
(30, 'Edit previous media item', '', 'default', 0),
(31, 'Edit next media item', '', 'default', 0),
(32, 'Edit Image', '', 'default', 0),
(33, 'Document Preview', '', 'default', 0),
(34, 'Saved.', '', 'default', 0),
(35, 'File name:', '', 'default', 0),
(36, 'File type:', '', 'default', 0),
(37, 'Uploaded on:', '', 'default', 0),
(38, 'File size:', '', 'default', 0),
(39, 'Dimensions:', '', 'default', 0),
(40, '%1$s by %2$s pixels', '', 'default', 0),
(41, 'Length:', '', 'default', 0),
(42, 'Bitrate:', '', 'default', 0),
(43, 'Alternative Text', '', 'default', 0),
(44, 'Title', '', 'default', 0),
(45, 'Artist', '', 'default', 0),
(46, 'Album', '', 'default', 0),
(47, 'Caption', '', 'default', 0),
(48, 'Description', '', 'default', 0),
(49, 'Uploaded By', '', 'default', 0),
(50, 'Uploaded To', '', 'default', 0),
(51, 'Copy Link', '', 'default', 0),
(52, 'View attachment page', '', 'default', 0),
(53, 'Edit more details', '', 'default', 0),
(54, 'Delete Permanently', '', 'default', 0),
(55, 'Remove', '', 'default', 0),
(56, 'Deselect', '', 'default', 0),
(57, 'Caption this image&hellip;', '', 'default', 0),
(58, 'Describe this video&hellip;', '', 'default', 0),
(59, 'Describe this audio file&hellip;', '', 'default', 0),
(60, 'Describe this media file&hellip;', '', 'default', 0),
(61, 'Attachment Details', '', 'default', 0),
(62, 'Alt Text', '', 'default', 0),
(63, 'Edit Selection', '', 'default', 0),
(64, 'Clear', '', 'default', 0),
(65, 'Attachment Display Settings', '', 'default', 0),
(66, 'Alignment', '', 'default', 0),
(67, 'Left', '', 'default', 0),
(68, 'Center', '', 'default', 0),
(69, 'Right', '', 'default', 0),
(70, 'None', '', 'default', 0),
(71, 'Embed or Link', '', 'default', 0),
(72, 'Link To', '', 'default', 0),
(73, 'Embed Media Player', '', 'default', 0),
(74, 'Link to Media File', '', 'default', 0),
(75, 'Media File', '', 'default', 0),
(76, 'Link to Attachment Page', '', 'default', 0),
(77, 'Attachment Page', '', 'default', 0),
(78, 'Custom URL', '', 'default', 0),
(79, 'Size', '', 'default', 0),
(80, 'Thumbnail', '', 'default', 0),
(81, 'Medium', '', 'default', 0),
(82, 'Large', '', 'default', 0),
(83, 'Full Size', '', 'default', 0),
(84, 'Gallery Settings', '', 'default', 0),
(85, 'Columns', '', 'default', 0),
(86, 'Random Order', '', 'default', 0),
(87, 'Playlist Settings', '', 'default', 0),
(88, 'Show Video List', '', 'default', 0),
(89, 'Show Tracklist', '', 'default', 0),
(90, 'Show Artist Name in Tracklist', '', 'default', 0),
(91, 'Show Images', '', 'default', 0),
(92, 'Link Text', '', 'default', 0),
(93, 'Align', '', 'default', 0),
(94, 'Image URL', '', 'default', 0),
(95, 'Edit Original', '', 'default', 0),
(96, 'Replace', '', 'default', 0),
(97, 'Display Settings', '', 'default', 0),
(98, 'Custom Size', '', 'default', 0),
(99, 'Width', '', 'default', 0),
(100, 'Height', '', 'default', 0),
(101, 'Advanced Options', '', 'default', 0),
(102, 'Image Title Attribute', '', 'default', 0),
(103, 'Image CSS Class', '', 'default', 0),
(104, 'Open link in a new tab', '', 'default', 0),
(105, 'Link Rel', '', 'default', 0),
(106, 'Link CSS Class', '', 'default', 0),
(107, 'URL', '', 'default', 0),
(108, 'Remove audio source', '', 'default', 0),
(109, 'Add alternate sources for maximum HTML5 playback:', '', 'default', 0),
(110, 'Preload', '', 'default', 0),
(111, 'Auto', '', 'default', 0),
(112, 'Metadata', '', 'default', 0),
(113, 'Autoplay', '', 'default', 0),
(114, 'Loop', '', 'default', 0),
(115, 'Remove video source', '', 'default', 0),
(116, 'Poster Image', '', 'default', 0),
(117, 'Remove poster image', '', 'default', 0),
(118, 'Tracks (subtitles, captions, descriptions, chapters, or metadata)', '', 'default', 0),
(119, 'Remove video track', '', 'default', 0),
(120, 'There are no associated subtitles.', '', 'default', 0),
(121, 'No items found.', '', 'default', 0),
(122, 'Image crop area preview. Requires mouse interaction.', '', 'default', 0),
(123, 'Preview', '', 'default', 0),
(124, 'As a browser icon', '', 'default', 0),
(125, 'Preview as a browser icon', '', 'default', 0),
(126, 'As an app icon', '', 'default', 0),
(127, 'Preview as an app icon', '', 'default', 0),
(128, 'Edit My Profile', '', 'default', 0),
(129, 'Log Out', '', 'default', 0),
(130, 'Search', '', 'default', 0),
(131, 'Howdy, %s', '', 'default', 0),
(132, 'About WordPress', '', 'default', 0),
(133, 'WordPress.org', '', 'default', 0),
(134, 'https://wordpress.org/', '', 'default', 0),
(135, 'Documentation', '', 'default', 0),
(136, 'https://codex.wordpress.org/', '', 'default', 0),
(137, 'Support', '', 'default', 0),
(138, 'https://wordpress.org/support/', '', 'default', 0),
(139, 'Feedback', '', 'default', 0),
(140, 'https://wordpress.org/support/forum/requests-and-feedback', '', 'default', 0),
(141, 'Dashboard', '', 'default', 0),
(142, 'Themes', '', 'default', 0),
(143, 'Widgets', '', 'default', 0),
(144, 'Menus', '', 'default', 0),
(145, 'Customize', '', 'default', 0),
(146, '%s Comments in moderation', '', 'default', 0),
(147, 'User', '', 'default', 0),
(148, 'New', '', 'default', 0),
(149, 'Role', '', 'members', 0),
(150, 'Skip to toolbar', '', 'default', 0),
(151, 'Toolbar', '', 'default', 0),
(152, 'In %1$s, use the %2$s method, not the %3$s function. See %4$s.', '', 'default', 0),
(153, 'https://codex.wordpress.org/Function_Reference/is_main_query', '', 'default', 0),
(154, 'Pages', '', 'default', 0),
(155, 'Archives', '', 'tpl', 0),
(156, 'Page not found', '', 'tpl', 0),
(157, 'Return home?', '', 'tpl', 0),
(158, 'Categorised in: ', '', 'tpl', 0),
(159, 'This post was written by ', '', 'tpl', 0),
(160, 'Continue reading %s', '', 'default', 0),
(161, '(more&hellip;)', '', 'default', 0),
(162, 'Tags: ', '', 'tpl', 0),
(163, 'Resumes', '', 'recruit', 0),
(164, 'Theme Functions', '', 'default', 0),
(165, 'Theme Header', '', 'default', 0),
(166, 'Theme Footer', '', 'default', 0),
(167, 'Sidebar', '', 'default', 0),
(168, 'Comments', '', 'default', 0),
(169, 'Search Form', '', 'default', 0),
(170, '404 Template', '', 'default', 0),
(171, 'Links Template', '', 'default', 0),
(172, 'Main Index Template', '', 'default', 0),
(173, 'Archives', '', 'default', 0),
(174, 'Author Template', '', 'default', 0),
(175, 'Taxonomy Template', '', 'default', 0),
(176, 'Category Template', '', 'default', 0),
(177, 'Tag Template', '', 'default', 0),
(178, 'Posts Page', '', 'default', 0),
(179, 'Search Results', '', 'default', 0),
(180, 'Date Template', '', 'default', 0),
(181, 'Singular Template', '', 'default', 0),
(182, 'Single Post', '', 'default', 0),
(183, 'Single Page', '', 'default', 0),
(184, 'Homepage', '', 'default', 0),
(185, 'Privacy Policy Page', '', 'default', 0),
(186, 'Attachment Template', '', 'default', 0),
(187, 'Image Attachment Template', '', 'default', 0),
(188, 'Video Attachment Template', '', 'default', 0),
(189, 'Audio Attachment Template', '', 'default', 0),
(190, 'Application Attachment Template', '', 'default', 0),
(191, 'Embed Template', '', 'default', 0),
(192, 'Embed 404 Template', '', 'default', 0),
(193, 'Embed Content Template', '', 'default', 0),
(194, 'Embed Header Template', '', 'default', 0),
(195, 'Embed Footer Template', '', 'default', 0),
(196, 'Stylesheet', '', 'default', 0),
(197, 'Visual Editor Stylesheet', '', 'default', 0),
(198, 'Visual Editor RTL Stylesheet', '', 'default', 0),
(199, 'RTL Stylesheet', '', 'default', 0),
(200, 'my-hacks.php (legacy hacks support)', '', 'default', 0),
(201, '.htaccess (for rewrite rules )', '', 'default', 0),
(202, 'Comments Template', '', 'default', 0),
(203, 'Popup Comments Template', '', 'default', 0),
(204, 'Popup Comments', '', 'default', 0),
(205, 'Default', '', 'default', 0),
(206, 'Light', '', 'default', 0),
(207, 'Blue', '', 'default', 0),
(208, 'Midnight', '', 'default', 0),
(209, 'Sunrise', '', 'default', 0),
(210, 'Ectoplasm', '', 'default', 0),
(211, 'Ocean', '', 'default', 0),
(212, 'Coffee', '', 'default', 0),
(213, 'Suggested text:', '', 'default', 0),
(214, 'Who we are', '', 'default', 0),
(215, 'In this section you should note your site URL, as well as the name of the company, organization, or individual behind it, and some accurate contact information.', '', 'default', 0),
(216, 'The amount of information you may be required to show will vary depending on your local or national business regulations. You may, for example, be required to display a physical address, a registered address, or your company registration number.', '', 'default', 0),
(217, 'Our website address is: %s.', '', 'default', 0),
(218, 'What personal data we collect and why we collect it', '', 'default', 0),
(219, 'In this section you should note what personal data you collect from users and site visitors. This may include personal data, such as name, email address, personal account preferences; transactional data, such as purchase information; and technical data, such as information about cookies.', '', 'default', 0),
(220, 'You should also note any collection and retention of sensitive personal data, such as data concerning health.', '', 'default', 0),
(221, 'In addition to listing what personal data you collect, you need to note why you collect it. These explanations must note either the legal basis for your data collection and retention or the active consent the user has given.', '', 'default', 0),
(222, 'Personal data is not just created by a user&#8217;s interactions with your site. Personal data is also generated from technical processes such as contact forms, comments, cookies, analytics, and third party embeds.', '', 'default', 0),
(223, 'By default WordPress does not collect any personal data about visitors, and only collects the data shown on the User Profile screen from registered users. However some of your plugins may collect personal data. You should add the relevant information below.', '', 'default', 0),
(224, 'In this subsection you should note what information is captured through comments. We have noted the data which WordPress collects by default.', '', 'default', 0),
(225, 'When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.', '', 'default', 0),
(226, 'An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.', '', 'default', 0),
(227, 'Media', '', 'default', 0),
(228, 'In this subsection you should note what information may be disclosed by users who can upload media files. All uploaded files are usually publicly accessible.', '', 'default', 0),
(229, 'If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.', '', 'default', 0),
(230, 'Contact forms', '', 'default', 0),
(231, 'By default, WordPress does not include a contact form. If you use a contact form plugin, use this subsection to note what personal data is captured when someone submits a contact form, and how long you keep it. For example, you may note that you keep contact form submissions for a certain period for customer service purposes, but you do not use the information submitted through them for marketing purposes.', '', 'default', 0),
(232, 'Cookies', '', 'default', 0),
(233, 'In this subsection you should list the cookies your web site uses, including those set by your plugins, social media, and analytics. We have provided the cookies which WordPress installs by default.', '', 'default', 0),
(234, 'If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.', '', 'default', 0),
(235, 'If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.', '', 'default', 0),
(236, 'When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.', '', 'default', 0),
(237, 'If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.', '', 'default', 0),
(238, 'Embedded content from other websites', '', 'default', 0),
(239, 'Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.', '', 'default', 0),
(240, 'These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.', '', 'default', 0),
(241, 'Analytics', '', 'default', 0),
(242, 'In this subsection you should note what analytics package you use, how users can opt out of analytics tracking, and a link to your analytics provider&#8217;s privacy policy, if any.', '', 'default', 0),
(243, 'By default WordPress does not collect any analytics data. However, many web hosting accounts collect some anonymous analytics data. You may also have installed a WordPress plugin that provides analytics services. In that case, add information from that plugin here.', '', 'default', 0),
(244, 'Who we share your data with', '', 'default', 0),
(245, 'In this section you should name and list all third party providers with whom you share site data, including partners, cloud-based services, payment processors, and third party service providers, and note what data you share with them and why. Link to their own privacy policies if possible.', '', 'default', 0),
(246, 'By default WordPress does not share any personal data with anyone.', '', 'default', 0),
(247, 'How long we retain your data', '', 'default', 0),
(248, 'In this section you should explain how long you retain personal data collected or processed by the web site. While it is your responsibility to come up with the schedule of how long you keep each dataset for and why you keep it, that information does need to be listed here. For example, you may want to say that you keep contact form entries for six months, analytics records for a year, and customer purchase records for ten years.', '', 'default', 0),
(249, 'If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.', '', 'default', 0),
(250, 'For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.', '', 'default', 0),
(251, 'What rights you have over your data', '', 'default', 0),
(252, 'In this section you should explain what rights your users have over their data and how they can invoke those rights.', '', 'default', 0),
(253, 'If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.', '', 'default', 0),
(254, 'Where we send your data', '', 'default', 0),
(255, 'In this section you should list all transfers of your site data outside the European Union and describe the means by which that data is safeguarded to European data protection standards. This could include your web hosting, cloud storage, or other third party services.', '', 'default', 0),
(256, 'European data protection law requires data about European residents which is transferred outside the European Union to be safeguarded to the same standards as if the data was in Europe. So in addition to listing where data goes, you should describe how you ensure that these standards are met either by yourself or by your third party providers, whether that is through an agreement such as Privacy Shield, model clauses in your contracts, or binding corporate rules.', '', 'default', 0),
(257, 'Visitor comments may be checked through an automated spam detection service.', '', 'default', 0),
(258, 'Your contact information', '', 'default', 0),
(259, 'In this section you should provide a contact method for privacy-specific concerns. If you are required to have a Data Protection Officer, list their name and full contact details here as well.', '', 'default', 0),
(260, 'Additional information', '', 'default', 0),
(261, 'If you use your site for commercial purposes and you engage in more complex collection or processing of personal data, you should note the following information in your privacy policy in addition to the information we have already discussed.', '', 'default', 0),
(262, 'How we protect your data', '', 'default', 0),
(263, 'In this section you should explain what measures you have taken to protect your users&#8217; data. This could include technical measures such as encryption; security measures such as two factor authentication; and measures such as staff training in data protection. If you have carried out a Privacy Impact Assessment, you can mention it here too.', '', 'default', 0),
(264, 'What data breach procedures we have in place', '', 'default', 0),
(265, 'In this section you should explain what procedures you have in place to deal with data breaches, either potential or real, such as internal reporting systems, contact mechanisms, or bug bounties.', '', 'default', 0),
(266, 'What third parties we receive data from', '', 'default', 0),
(267, 'If your web site receives data about users from third parties, including advertisers, this information must be included within the section of your privacy policy dealing with third party data.', '', 'default', 0),
(268, 'What automated decision making and/or profiling we do with user data', '', 'default', 0),
(269, 'If your web site provides a service which includes automated decision making - for example, allowing customers to apply for credit, or aggregating their data into an advertising profile - you must note that this is taking place, and include information about how that information is used, what decisions are made with that aggregated data, and what rights users have over decisions made without human intervention.', '', 'default', 0),
(270, 'Industry regulatory disclosure requirements', '', 'default', 0),
(271, 'If you are a member of a regulated industry, or if you are subject to additional privacy laws, you may be required to disclose that information here.', '', 'default', 0),
(272, 'WordPress', '', 'default', 0),
(273, 'Default editor for all users', '', 'classic-editor', 0),
(274, 'Allow users to switch editors', '', 'classic-editor', 0),
(275, 'WordPress &rsaquo; Error', '', 'default', 0),
(276, 'F j, Y', '', 'default', 0),
(277, 'ukraine', '', 'recrui', 0),
(278, 'man', '', 'recruit', 0),
(279, 'woman', '', 'recruit', 0),
(280, 'russia', '', 'recruit', 0),
(281, 'Sorry, nothing to display.', '', 'tpl', 0),
(282, '%d Plugin Update', '', 'default', 0),
(283, 'Close dialog', '', 'default', 0),
(284, '%d Plugin Updates', '', 'default', 0),
(285, 'Error occurred on a non-protected endpoint.', '', 'default', 0),
(286, 'Invalid taxonomy.', '', 'default', 0),
(287, 'The site is experiencing technical difficulties.', '', 'default', 0),
(288, '\'tain\'t,\'twere,\'twas,\'tis,\'twill,\'til,\'bout,\'nuff,\'round,\'cause,\'em', '', 'default', 0),
(289, '&#8217;tain&#8217;t,&#8217;twere,&#8217;twas,&#8217;tis,&#8217;twill,&#8217;til,&#8217;bout,&#8217;nuff,&#8217;round,&#8217;cause,&#8217;em', '', 'default', 0),
(290, 'Edit resume', '', 'tpl', 0),
(291, 'Edit This', '', 'tpl', 0),
(292, 'man', '', 'tpl', 0),
(293, 'woman', '', 'tpl', 0),
(294, 'men', '', 'recruit', 0),
(295, 'To search, type and hit enter.', '', 'tpl', 0),
(296, 'Search', '', 'tpl', 0),
(297, '%s Search Results for ', '', 'tpl', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_trp_gettext_ru_ru`
--

CREATE TABLE `wp_trp_gettext_ru_ru` (
  `id` bigint(20) NOT NULL,
  `original` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `translated` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_trp_gettext_ru_ru`
--

INSERT INTO `wp_trp_gettext_ru_ru` (`id`, `original`, `translated`, `domain`, `status`) VALUES
(1, 'In %1$s, use the %2$s method, not the %3$s function. See %4$s.', 'В %1$s используйте метод %2$s вместо функции %3$s. См. %4$s.', 'default', 2),
(2, 'https://codex.wordpress.org/Function_Reference/is_main_query', '', 'default', 0),
(3, 'Pages', 'Страницы', 'default', 2),
(4, 'Archives', '', 'tpl', 0),
(5, 'off', 'on', 'default', 2),
(6, 'Published by', '', 'tpl', 0),
(7, 'Posts by %s', 'Записи %s', 'default', 2),
(8, 'Sorry, but you do not have permission to view this content.', '', 'members', 0),
(9, 'You must be logged into the site to view this content.', '', 'members', 0),
(10, 'words', '', 'default', 0),
(11, 'Edit This', 'Редактировать', 'default', 2),
(12, '&laquo; Previous', '&larr; Ранее', 'default', 2),
(13, 'Next &raquo;', 'Далее &rarr;', 'default', 2),
(14, '<a href=\"%1$s\" %2$s>Describe the purpose of the image%3$s</a>. Leave empty if the image is purely decorative.', '<a href=\"%1$s\" %2$s>Опишите назначение изображения%3$s</a>. Оставьте пустым, если изображение является только элементом декора.', 'default', 2),
(15, '(opens in a new tab)', '(откроется в новой вкладке)', 'default', 2),
(16, 'Close media panel', 'Закрыть окно параметров файла', 'default', 2),
(17, 'Drop files to upload', 'Перетащите файлы сюда', 'default', 2),
(18, 'Close uploader', 'Закрыть окно загрузчика', 'default', 2),
(19, 'Drop files anywhere to upload', 'Перетащите файлы сюда', 'default', 2),
(20, 'or', 'или', 'default', 2),
(21, 'Select Files', 'Выберите файлы', 'default', 2),
(22, 'Maximum upload file size: %s.', 'Максимальный размер файла: %s.', 'default', 2),
(23, 'Suggested image dimensions: %1$s by %2$s pixels.', 'Предлагаемый размер изображения: %1$s на %2$s пикселов.', 'default', 2),
(24, 'List View', 'В виде списка', 'default', 2),
(25, 'Grid View', 'В виде сетки', 'default', 2),
(26, 'Uploading', 'Загрузка', 'default', 2),
(27, 'Dismiss Errors', 'Скрыть ошибки', 'default', 2),
(28, 'Edit previous media item', 'Редактировать предыдущий файл', 'default', 2),
(29, 'Edit next media item', 'Редактировать следующий файл', 'default', 2),
(30, 'Edit Image', 'Редактировать', 'default', 2),
(31, 'Document Preview', 'Предпросмотр документа', 'default', 2),
(32, 'Saved.', 'Сохранено.', 'default', 2),
(33, 'File name:', 'Имя файла:', 'default', 2),
(34, 'File type:', 'Тип файла:', 'default', 2),
(35, 'Uploaded on:', 'Загружен:', 'default', 2),
(36, 'File size:', 'Размер файла:', 'default', 2),
(37, 'Dimensions:', 'Размеры:', 'default', 2),
(38, '%1$s by %2$s pixels', '%1$s на %2$s пикселей', 'default', 2),
(39, 'Length:', 'Продолжительность:', 'default', 2),
(40, 'Bitrate:', 'Битрейт:', 'default', 2),
(41, 'Alternative Text', 'Атрибут alt', 'default', 2),
(42, 'Title', 'Заголовок', 'default', 2),
(43, 'Artist', 'Исполнитель', 'default', 2),
(44, 'Album', 'Альбом', 'default', 2),
(45, 'Caption', 'Подпись', 'default', 2),
(46, 'Description', 'Описание', 'default', 2),
(47, 'Uploaded By', 'Пользователь', 'default', 2),
(48, 'Uploaded To', 'Загружен для', 'default', 2),
(49, 'Copy Link', 'Копировать ссылку', 'default', 2),
(50, 'View attachment page', 'Просмотреть страницу вложения', 'default', 2),
(51, 'Edit more details', 'Изменить другие детали', 'default', 2),
(52, 'Delete Permanently', 'Удалить навсегда', 'default', 2),
(53, 'Remove', 'Удалить', 'default', 2),
(54, 'Deselect', 'Снять выделение', 'default', 2),
(55, 'Caption this image&hellip;', 'Подпишите это изображение&hellip;', 'default', 2),
(56, 'Describe this video&hellip;', 'Опишите этот видеофайл&hellip;', 'default', 2),
(57, 'Describe this audio file&hellip;', 'Опишите этот аудиофайл&hellip;', 'default', 2),
(58, 'Describe this media file&hellip;', 'Опишите этот медиафайл&hellip;', 'default', 2),
(59, 'Attachment Details', 'Параметры файла', 'default', 2),
(60, 'Alt Text', 'Атрибут alt', 'default', 2),
(61, 'Edit Selection', 'Изменить выбор', 'default', 2),
(62, 'Clear', 'Сброс', 'default', 2),
(63, 'Attachment Display Settings', 'Настройки отображения файла', 'default', 2),
(64, 'Alignment', 'Выравнивание', 'default', 2),
(65, 'Left', 'Слева', 'default', 2),
(66, 'Center', 'По центру', 'default', 2),
(67, 'Right', 'Справа', 'default', 2),
(68, 'None', 'Нет', 'default', 2),
(69, 'Embed or Link', 'Вставить объект или ссылку', 'default', 2),
(70, 'Link To', 'Ссылка', 'default', 2),
(71, 'Embed Media Player', 'Вставить медиаплеер', 'default', 2),
(72, 'Link to Media File', 'Ссылка на медиафайл', 'default', 2),
(73, 'Media File', 'Медиафайл', 'default', 2),
(74, 'Link to Attachment Page', 'Ссылка на страницу вложения', 'default', 2),
(75, 'Attachment Page', 'Страница вложения', 'default', 2),
(76, 'Custom URL', 'Произвольный URL', 'default', 2),
(77, 'Size', 'Размер', 'default', 2),
(78, 'Thumbnail', 'Миниатюра', 'default', 2),
(79, 'Medium', 'Средний', 'default', 2),
(80, 'Large', 'Большой', 'default', 2),
(81, 'Full Size', 'Полный', 'default', 2),
(82, 'Gallery Settings', 'Настройки галереи', 'default', 2),
(83, 'Columns', 'Колонки', 'default', 2),
(84, 'Random Order', 'Случайный порядок', 'default', 2),
(85, 'Playlist Settings', 'Настройки плей-листа', 'default', 2),
(86, 'Show Video List', 'Показывать список видеофайлов', 'default', 2),
(87, 'Show Tracklist', 'Показывать список треков', 'default', 2),
(88, 'Show Artist Name in Tracklist', 'Показывать имя исполнителя', 'default', 2),
(89, 'Show Images', 'Показывать изображения', 'default', 2),
(90, 'Link Text', 'Текст ссылки', 'default', 2),
(91, 'Align', 'Расположение', 'default', 2),
(92, 'Image URL', 'Адрес (URL)', 'default', 2),
(93, 'Edit Original', 'Редактировать оригинал', 'default', 2),
(94, 'Replace', 'Заменить', 'default', 2),
(95, 'Display Settings', 'Настройки отображения', 'default', 2),
(96, 'Custom Size', 'Произвольный', 'default', 2),
(97, 'Width', 'Ширина', 'default', 2),
(98, 'Height', 'Высота', 'default', 2),
(99, 'Advanced Options', 'Дополнительные настройки', 'default', 2),
(100, 'Image Title Attribute', 'Атрибут title', 'default', 2),
(101, 'Image CSS Class', 'CSS-класс изображения', 'default', 2),
(102, 'Open link in a new tab', 'Открывать в новой вкладке', 'default', 2),
(103, 'Link Rel', 'Отношение', 'default', 2),
(104, 'Link CSS Class', 'CSS-класс ссылки', 'default', 2),
(105, 'URL', '', 'default', 0),
(106, 'Remove audio source', 'Удалить источник аудио', 'default', 2),
(107, 'Add alternate sources for maximum HTML5 playback:', 'Добавьте дополнительные источники для максимальной совместимости с HTML5:', 'default', 2),
(108, 'Preload', 'Предварительная загрузка', 'default', 2),
(109, 'Auto', 'Авто', 'default', 2),
(110, 'Metadata', 'Метаданные', 'default', 2),
(111, 'Autoplay', 'Автозапуск', 'default', 2),
(112, 'Loop', 'Зациклить', 'default', 2),
(113, 'Remove video source', 'Удалить источник видео', 'default', 2),
(114, 'Poster Image', 'Постер', 'default', 2),
(115, 'Remove poster image', 'Удалить постер', 'default', 2),
(116, 'Tracks (subtitles, captions, descriptions, chapters, or metadata)', 'Треки (субтитры, подписи, описания, главы или метаданные)', 'default', 2),
(117, 'Remove video track', 'Удалить дорожку видео', 'default', 2),
(118, 'There are no associated subtitles.', 'Субтитры не указаны.', 'default', 2),
(119, 'No items found.', 'Элементов не найдено.', 'default', 2),
(120, 'Image crop area preview. Requires mouse interaction.', 'Область просмотра и обрезки изображения. Требует управления мышью.', 'default', 2),
(121, 'Preview', 'Просмотреть', 'default', 2),
(122, 'As a browser icon', 'Как иконка в браузере', 'default', 2),
(123, 'Preview as a browser icon', 'Просмотреть как иконку в браузере', 'default', 2),
(124, 'As an app icon', 'Как иконка приложения', 'default', 2),
(125, 'Preview as an app icon', 'Просмотреть как иконку приложения', 'default', 2),
(126, 'Edit My Profile', 'Изменить профиль', 'default', 2),
(127, 'Log Out', 'Выйти', 'default', 2),
(128, 'Search', 'Поиск', 'default', 2),
(129, 'Howdy, %s', 'Привет, %s', 'default', 2),
(130, 'About WordPress', 'О WordPress', 'default', 2),
(131, 'WordPress.org', '', 'default', 0),
(132, 'https://wordpress.org/', 'https://ru.wordpress.org/', 'default', 2),
(133, 'Documentation', 'Документация', 'default', 2),
(134, 'https://codex.wordpress.org/', 'https://codex.wordpress.org/Заглавная_страница', 'default', 2),
(135, 'Support', 'Поддержка', 'default', 2),
(136, 'https://wordpress.org/support/', 'https://ru.wordpress.org/support/', 'default', 2),
(137, 'Feedback', 'Обратная связь', 'default', 2),
(138, 'https://wordpress.org/support/forum/requests-and-feedback', 'https://ru.wordpress.org/support/forum/requests-and-feedback/', 'default', 2),
(139, 'Dashboard', 'Консоль', 'default', 2),
(140, 'Themes', 'Темы', 'default', 2),
(141, 'Widgets', 'Виджеты', 'default', 2),
(142, 'Menus', 'Меню', 'default', 2),
(143, 'Customize', 'Настроить', 'default', 2),
(144, '%s Comments in moderation', '%s комментариев ждут одобрения', 'default', 2),
(145, 'User', 'Пользователя', 'default', 2),
(146, 'New', 'Добавить', 'default', 2),
(147, 'Role', '', 'members', 0),
(148, 'Skip to toolbar', 'Перейти к верхней панели', 'default', 2),
(149, 'Toolbar', 'Верхняя панель', 'default', 2),
(150, 'Post Type Archive', 'Архив типа записей', 'default', 2),
(151, 'Latest Posts', '', 'tpl', 0),
(152, 'Leave your thoughts', '', 'tpl', 0),
(153, '1 Comment', '', 'tpl', 0),
(154, '% Comments', '', 'tpl', 0),
(155, 'Comments Off<span class=\"screen-reader-text\"> on %s</span>', 'Комментарии<span class=\"screen-reader-text\"> к записи %s</span> отключены', 'default', 2),
(156, 'Continue reading %s', 'Читать далее %s', 'default', 2),
(157, '(more&hellip;)', '(далее&hellip;)', 'default', 2),
(158, 'Tags: ', '', 'tpl', 0),
(159, 'Categorised in: ', '', 'tpl', 0),
(160, 'This post was written by ', '', 'tpl', 0),
(161, 'Resumes', '', 'recruit', 0),
(162, 'Theme Functions', '', 'default', 0),
(163, 'Theme Header', '', 'default', 0),
(164, 'Theme Footer', '', 'default', 0),
(165, 'Sidebar', '', 'default', 0),
(166, 'Comments', '', 'default', 0),
(167, 'Search Form', '', 'default', 0),
(168, '404 Template', '', 'default', 0),
(169, 'Links Template', '', 'default', 0),
(170, 'Main Index Template', '', 'default', 0),
(171, 'Archives', '', 'default', 0),
(172, 'Author Template', '', 'default', 0),
(173, 'Taxonomy Template', '', 'default', 0),
(174, 'Category Template', '', 'default', 0),
(175, 'Tag Template', '', 'default', 0),
(176, 'Posts Page', '', 'default', 0),
(177, 'Search Results', '', 'default', 0),
(178, 'Date Template', '', 'default', 0),
(179, 'Singular Template', '', 'default', 0),
(180, 'Single Post', '', 'default', 0),
(181, 'Single Page', '', 'default', 0),
(182, 'Homepage', '', 'default', 0),
(183, 'Privacy Policy Page', '', 'default', 0),
(184, 'Attachment Template', '', 'default', 0),
(185, 'Image Attachment Template', '', 'default', 0),
(186, 'Video Attachment Template', '', 'default', 0),
(187, 'Audio Attachment Template', '', 'default', 0),
(188, 'Application Attachment Template', '', 'default', 0),
(189, 'Embed Template', '', 'default', 0),
(190, 'Embed 404 Template', '', 'default', 0),
(191, 'Embed Content Template', '', 'default', 0),
(192, 'Embed Header Template', '', 'default', 0),
(193, 'Embed Footer Template', '', 'default', 0),
(194, 'Stylesheet', '', 'default', 0),
(195, 'Visual Editor Stylesheet', '', 'default', 0),
(196, 'Visual Editor RTL Stylesheet', '', 'default', 0),
(197, 'RTL Stylesheet', '', 'default', 0),
(198, 'my-hacks.php (legacy hacks support)', '', 'default', 0),
(199, '.htaccess (for rewrite rules )', '', 'default', 0),
(200, 'Comments Template', '', 'default', 0),
(201, 'Popup Comments Template', '', 'default', 0),
(202, 'Popup Comments', '', 'default', 0),
(203, 'Default', '', 'default', 0),
(204, 'Light', '', 'default', 0),
(205, 'Blue', '', 'default', 0),
(206, 'Midnight', '', 'default', 0),
(207, 'Sunrise', '', 'default', 0),
(208, 'Ectoplasm', '', 'default', 0),
(209, 'Ocean', '', 'default', 0),
(210, 'Coffee', '', 'default', 0),
(211, 'Suggested text:', '', 'default', 0),
(212, 'Who we are', '', 'default', 0),
(213, 'In this section you should note your site URL, as well as the name of the company, organization, or individual behind it, and some accurate contact information.', '', 'default', 0),
(214, 'The amount of information you may be required to show will vary depending on your local or national business regulations. You may, for example, be required to display a physical address, a registered address, or your company registration number.', '', 'default', 0),
(215, 'Our website address is: %s.', '', 'default', 0),
(216, 'What personal data we collect and why we collect it', '', 'default', 0),
(217, 'In this section you should note what personal data you collect from users and site visitors. This may include personal data, such as name, email address, personal account preferences; transactional data, such as purchase information; and technical data, such as information about cookies.', '', 'default', 0),
(218, 'You should also note any collection and retention of sensitive personal data, such as data concerning health.', '', 'default', 0),
(219, 'In addition to listing what personal data you collect, you need to note why you collect it. These explanations must note either the legal basis for your data collection and retention or the active consent the user has given.', '', 'default', 0),
(220, 'Personal data is not just created by a user&#8217;s interactions with your site. Personal data is also generated from technical processes such as contact forms, comments, cookies, analytics, and third party embeds.', '', 'default', 0),
(221, 'By default WordPress does not collect any personal data about visitors, and only collects the data shown on the User Profile screen from registered users. However some of your plugins may collect personal data. You should add the relevant information below.', '', 'default', 0),
(222, 'In this subsection you should note what information is captured through comments. We have noted the data which WordPress collects by default.', '', 'default', 0),
(223, 'When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.', '', 'default', 0),
(224, 'An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.', '', 'default', 0),
(225, 'Media', '', 'default', 0),
(226, 'In this subsection you should note what information may be disclosed by users who can upload media files. All uploaded files are usually publicly accessible.', '', 'default', 0),
(227, 'If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.', '', 'default', 0),
(228, 'Contact forms', '', 'default', 0),
(229, 'By default, WordPress does not include a contact form. If you use a contact form plugin, use this subsection to note what personal data is captured when someone submits a contact form, and how long you keep it. For example, you may note that you keep contact form submissions for a certain period for customer service purposes, but you do not use the information submitted through them for marketing purposes.', '', 'default', 0),
(230, 'Cookies', '', 'default', 0),
(231, 'In this subsection you should list the cookies your web site uses, including those set by your plugins, social media, and analytics. We have provided the cookies which WordPress installs by default.', '', 'default', 0),
(232, 'If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.', '', 'default', 0),
(233, 'If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.', '', 'default', 0),
(234, 'When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.', '', 'default', 0),
(235, 'If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.', '', 'default', 0),
(236, 'Embedded content from other websites', '', 'default', 0),
(237, 'Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.', '', 'default', 0),
(238, 'These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.', '', 'default', 0),
(239, 'Analytics', '', 'default', 0),
(240, 'In this subsection you should note what analytics package you use, how users can opt out of analytics tracking, and a link to your analytics provider&#8217;s privacy policy, if any.', '', 'default', 0),
(241, 'By default WordPress does not collect any analytics data. However, many web hosting accounts collect some anonymous analytics data. You may also have installed a WordPress plugin that provides analytics services. In that case, add information from that plugin here.', '', 'default', 0),
(242, 'Who we share your data with', '', 'default', 0),
(243, 'In this section you should name and list all third party providers with whom you share site data, including partners, cloud-based services, payment processors, and third party service providers, and note what data you share with them and why. Link to their own privacy policies if possible.', '', 'default', 0),
(244, 'By default WordPress does not share any personal data with anyone.', '', 'default', 0),
(245, 'How long we retain your data', '', 'default', 0),
(246, 'In this section you should explain how long you retain personal data collected or processed by the web site. While it is your responsibility to come up with the schedule of how long you keep each dataset for and why you keep it, that information does need to be listed here. For example, you may want to say that you keep contact form entries for six months, analytics records for a year, and customer purchase records for ten years.', '', 'default', 0),
(247, 'If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.', '', 'default', 0),
(248, 'For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.', '', 'default', 0),
(249, 'What rights you have over your data', '', 'default', 0),
(250, 'In this section you should explain what rights your users have over their data and how they can invoke those rights.', '', 'default', 0),
(251, 'If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.', '', 'default', 0),
(252, 'Where we send your data', '', 'default', 0),
(253, 'In this section you should list all transfers of your site data outside the European Union and describe the means by which that data is safeguarded to European data protection standards. This could include your web hosting, cloud storage, or other third party services.', '', 'default', 0),
(254, 'European data protection law requires data about European residents which is transferred outside the European Union to be safeguarded to the same standards as if the data was in Europe. So in addition to listing where data goes, you should describe how you ensure that these standards are met either by yourself or by your third party providers, whether that is through an agreement such as Privacy Shield, model clauses in your contracts, or binding corporate rules.', '', 'default', 0),
(255, 'Visitor comments may be checked through an automated spam detection service.', '', 'default', 0),
(256, 'Your contact information', '', 'default', 0),
(257, 'In this section you should provide a contact method for privacy-specific concerns. If you are required to have a Data Protection Officer, list their name and full contact details here as well.', '', 'default', 0),
(258, 'Additional information', '', 'default', 0),
(259, 'If you use your site for commercial purposes and you engage in more complex collection or processing of personal data, you should note the following information in your privacy policy in addition to the information we have already discussed.', '', 'default', 0),
(260, 'How we protect your data', '', 'default', 0),
(261, 'In this section you should explain what measures you have taken to protect your users&#8217; data. This could include technical measures such as encryption; security measures such as two factor authentication; and measures such as staff training in data protection. If you have carried out a Privacy Impact Assessment, you can mention it here too.', '', 'default', 0),
(262, 'What data breach procedures we have in place', '', 'default', 0),
(263, 'In this section you should explain what procedures you have in place to deal with data breaches, either potential or real, such as internal reporting systems, contact mechanisms, or bug bounties.', '', 'default', 0),
(264, 'What third parties we receive data from', '', 'default', 0),
(265, 'If your web site receives data about users from third parties, including advertisers, this information must be included within the section of your privacy policy dealing with third party data.', '', 'default', 0),
(266, 'What automated decision making and/or profiling we do with user data', '', 'default', 0),
(267, 'If your web site provides a service which includes automated decision making - for example, allowing customers to apply for credit, or aggregating their data into an advertising profile - you must note that this is taking place, and include information about how that information is used, what decisions are made with that aggregated data, and what rights users have over decisions made without human intervention.', '', 'default', 0),
(268, 'Industry regulatory disclosure requirements', '', 'default', 0),
(269, 'If you are a member of a regulated industry, or if you are subject to additional privacy laws, you may be required to disclose that information here.', '', 'default', 0),
(270, 'WordPress', '', 'default', 0),
(271, 'Default editor for all users', '', 'classic-editor', 0),
(272, 'Allow users to switch editors', '', 'classic-editor', 0),
(273, 'WordPress &rsaquo; Error', '', 'default', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '203'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(20, 1, 'wp_user-settings-time', '1574794470'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(24, 1, 'nav_menu_recently_edited', '8'),
(25, 2, 'nickname', 'applicant1'),
(26, 2, 'first_name', 'test'),
(27, 2, 'last_name', 'test'),
(28, 2, 'description', ''),
(29, 2, 'rich_editing', 'true'),
(30, 2, 'syntax_highlighting', 'true'),
(31, 2, 'comment_shortcuts', 'false'),
(32, 2, 'admin_color', 'fresh'),
(33, 2, 'use_ssl', '0'),
(34, 2, 'show_admin_bar_front', 'true'),
(35, 2, 'locale', ''),
(36, 2, 'wp_capabilities', 'a:1:{s:9:\"applicant\";b:1;}'),
(37, 2, 'wp_user_level', '0'),
(38, 2, 'dismissed_wp_pointers', ''),
(40, 2, 'wp_dashboard_quick_press_last_post_id', '22'),
(41, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(42, 2, 'wp_user-settings', 'libraryContent=browse'),
(43, 2, 'wp_user-settings-time', '1565611109'),
(44, 2, 'wp_media_library_mode', 'list'),
(53, 1, 'wp_media_library_mode', 'list'),
(55, 3, 'nickname', 'employer1'),
(56, 3, 'first_name', 'test_employer'),
(57, 3, 'last_name', ''),
(58, 3, 'description', ''),
(59, 3, 'rich_editing', 'true'),
(60, 3, 'syntax_highlighting', 'true'),
(61, 3, 'comment_shortcuts', 'false'),
(62, 3, 'admin_color', 'fresh'),
(63, 3, 'use_ssl', '0'),
(64, 3, 'show_admin_bar_front', 'true'),
(65, 3, 'locale', ''),
(66, 3, 'wp_capabilities', 'a:1:{s:8:\"employer\";b:1;}'),
(67, 3, 'wp_user_level', '0'),
(68, 3, 'dismissed_wp_pointers', ''),
(71, 3, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(109, 6, 'nickname', 'applicant2'),
(110, 6, 'first_name', 'applicant2'),
(111, 6, 'last_name', ''),
(112, 6, 'description', ''),
(113, 6, 'rich_editing', 'true'),
(114, 6, 'syntax_highlighting', 'true'),
(115, 6, 'comment_shortcuts', 'false'),
(116, 6, 'admin_color', 'fresh'),
(117, 6, 'use_ssl', '0'),
(118, 6, 'show_admin_bar_front', 'true'),
(119, 6, 'locale', ''),
(120, 6, 'wp_capabilities', 'a:1:{s:9:\"applicant\";b:1;}'),
(121, 6, 'wp_user_level', '0'),
(122, 6, 'dismissed_wp_pointers', ''),
(134, 2, 'user_info', 'a:3:{s:9:\"last_seen\";i:1573466350;s:14:\"linked_resumes\";a:9:{i:0;s:2:\"41\";i:1;s:3:\"115\";i:2;s:2:\"81\";i:3;s:2:\"77\";i:4;s:2:\"43\";i:5;s:2:\"42\";i:6;s:2:\"40\";i:7;s:2:\"39\";i:8;s:2:\"38\";}s:12:\"subscription\";a:3:{s:11:\"resume_cats\";a:0:{}s:8:\"job_cats\";a:0:{}s:6:\"salary\";s:4:\"2500\";}}'),
(135, 1, 'user_info', 'a:2:{s:9:\"last_seen\";i:1580904136;s:14:\"linked_resumes\";a:0:{}}'),
(137, 6, 'user_info', 'a:2:{s:9:\"last_seen\";i:1570434302;s:14:\"linked_resumes\";a:1:{i:0;i:122;}}'),
(139, 1, 'closedpostboxes_post', 'a:1:{i:0;s:20:\"qtranxs-meta-box-lsb\";}'),
(140, 1, 'metaboxhidden_post', 'a:6:{i:0;s:13:\"trackbacksdiv\";i:1;s:10:\"postcustom\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(141, 1, 'closedpostboxes_resume', 'a:1:{i:0;s:20:\"qtranxs-meta-box-lsb\";}'),
(142, 1, 'metaboxhidden_resume', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(144, 1, 'session_tokens', 'a:1:{s:64:\"b9602bf044c23f7a72bca1648e88c194ef0c2772994f8a056e194422d5c27726\";a:4:{s:10:\"expiration\";i:1635960295;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:93.0) Gecko/20100101 Firefox/93.0\";s:5:\"login\";i:1635787495;}}'),
(145, 1, 'closedpostboxes_employer', 'a:1:{i:0;s:20:\"qtranxs-meta-box-lsb\";}'),
(146, 1, 'metaboxhidden_employer', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$Bs4EhyxX6my6LbUshw8EkcsU8la1TM.', 'root', '1@i.ua', '', '2019-08-12 08:51:45', '', 0, 'root'),
(2, 'applicant1', '$P$B.a22dmGMAfSJGxfFFXrGM8UfFb5xr/', 'applicant1', 'secretlab48@gmail.com', '', '2019-08-12 11:40:04', '1565610004:$P$Bz.EV61chicVlI/N7dZ0o.Vfz9d.b01', 0, 'test test'),
(3, 'employer1', '$P$BUQvYunH6Rp6Ap3kZPYqT5G.CN2PvY/', 'employer1', 'smarty.t62a.8@gmail.com', '', '2019-09-25 18:40:48', '1569436848:$P$BLi/mnqrl7eRrGEBjYwqfkaRhmuFaK.', 0, 'test_employer'),
(6, 'applicant2', '$P$BbaogbdOEmpcLRCsiQgE8VUUjjvN6L1', 'applicant2', 'smart.t62a.1@gmail.com', '', '2019-09-26 15:02:59', '', 0, 'applicant2');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wistra`
--

CREATE TABLE `wp_wistra` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vacancy_id` int(11) NOT NULL,
  `resume_id` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Дамп данных таблицы `wp_wistra`
--

INSERT INTO `wp_wistra` (`id`, `user_id`, `vacancy_id`, `resume_id`, `date`) VALUES
(1, 2, 90, 41, '2019-10-04 18:03:33'),
(2, 2, 90, 41, '2019-10-04 19:08:09'),
(3, 2, 89, 41, '2019-10-04 19:08:33'),
(4, 2, 89, 41, '2019-10-04 19:09:51'),
(5, 2, 90, 115, '2019-10-04 19:10:23'),
(6, 2, 90, 77, '2019-10-06 18:36:53'),
(7, 6, 90, 122, '2019-10-07 07:49:10'),
(8, 6, 89, 122, '2019-10-07 07:49:22'),
(9, 6, 17, 122, '2019-10-07 07:53:11'),
(10, 2, 17, 41, '2019-10-07 07:56:29'),
(11, 2, 89, 41, '2019-10-11 14:50:47'),
(12, 2, 90, 41, '2019-10-11 15:38:36'),
(13, 2, 17, 41, '2019-11-01 11:48:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_duplicator_packages`
--
ALTER TABLE `wp_duplicator_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`);

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_trp_dictionary_en_us_de_de`
--
ALTER TABLE `wp_trp_dictionary_en_us_de_de`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `index_name` (`original`(100));
ALTER TABLE `wp_trp_dictionary_en_us_de_de` ADD FULLTEXT KEY `original_fulltext` (`original`);

--
-- Индексы таблицы `wp_trp_dictionary_en_us_ru_ru`
--
ALTER TABLE `wp_trp_dictionary_en_us_ru_ru`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `index_name` (`original`(100));
ALTER TABLE `wp_trp_dictionary_en_us_ru_ru` ADD FULLTEXT KEY `original_fulltext` (`original`);

--
-- Индексы таблицы `wp_trp_gettext_de_de`
--
ALTER TABLE `wp_trp_gettext_de_de`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `index_name` (`original`(100));
ALTER TABLE `wp_trp_gettext_de_de` ADD FULLTEXT KEY `original_fulltext` (`original`);

--
-- Индексы таблицы `wp_trp_gettext_en_us`
--
ALTER TABLE `wp_trp_gettext_en_us`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `index_name` (`original`(100));
ALTER TABLE `wp_trp_gettext_en_us` ADD FULLTEXT KEY `original_fulltext` (`original`);

--
-- Индексы таблицы `wp_trp_gettext_ru_ru`
--
ALTER TABLE `wp_trp_gettext_ru_ru`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `index_name` (`original`(100));
ALTER TABLE `wp_trp_gettext_ru_ru` ADD FULLTEXT KEY `original_fulltext` (`original`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wp_wistra`
--
ALTER TABLE `wp_wistra`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_duplicator_packages`
--
ALTER TABLE `wp_duplicator_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2397;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=924;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT для таблицы `wp_trp_dictionary_en_us_de_de`
--
ALTER TABLE `wp_trp_dictionary_en_us_de_de`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `wp_trp_dictionary_en_us_ru_ru`
--
ALTER TABLE `wp_trp_dictionary_en_us_ru_ru`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT для таблицы `wp_trp_gettext_de_de`
--
ALTER TABLE `wp_trp_gettext_de_de`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT для таблицы `wp_trp_gettext_en_us`
--
ALTER TABLE `wp_trp_gettext_en_us`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT для таблицы `wp_trp_gettext_ru_ru`
--
ALTER TABLE `wp_trp_gettext_ru_ru`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `wp_wistra`
--
ALTER TABLE `wp_wistra`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
