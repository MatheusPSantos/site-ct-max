/* DUPLICATOR-LITE (PHP BUILD MODE) MYSQL SCRIPT CREATED ON : 2018-07-22 18:23:06 */

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_duplicator_packages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` mediumblob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=920 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


/* INSERT TABLE DATA: wp_comments */
INSERT INTO `wp_comments` VALUES("1", "1", "Um comentarista do WordPress", "wapuu@wordpress.example", "https://wordpress.org/", "", "2018-07-15 15:39:09", "2018-07-15 18:39:09", "Olá, isso é um comentário.\nPara começar a moderar, editar e deletar comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.", "0", "1", "", "", "0", "0");

/* INSERT TABLE DATA: wp_duplicator_packages */
INSERT INTO `wp_duplicator_packages` VALUES("1", "20180722_ctmaxtraining", "dd3fa31936ec90584524180722182241", "20", "2018-07-22 18:23:06", "ctmaxtrainig", "O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2018-07-22 18:22:41\";s:7:\"Version\";s:6:\"1.2.40\";s:9:\"VersionWP\";s:5:\"4.9.7\";s:9:\"VersionDB\";s:6:\"5.7.21\";s:10:\"VersionPHP\";s:5:\"7.1.9\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";i:1;s:4:\"Name\";s:22:\"20180722_ctmaxtraining\";s:4:\"Hash\";s:32:\"dd3fa31936ec90584524180722182241\";s:8:\"NameHash\";s:55:\"20180722_ctmaxtraining_dd3fa31936ec90584524180722182241\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:42:\"C:/wamp64/www/maxtraining/wp-snapshots/tmp\";s:8:\"StoreURL\";s:42:\"http://localhost/maxtraining/wp-snapshots/\";s:8:\"ScanFile\";s:65:\"20180722_ctmaxtraining_dd3fa31936ec90584524180722182241_scan.json\";s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";N;s:6:\"WPUser\";s:12:\"ctmaxtrainig\";s:7:\"Archive\";O:11:\"DUP_Archive\":19:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";s:67:\"20180722_ctmaxtraining_dd3fa31936ec90584524180722182241_archive.zip\";s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:25:\"C:/wamp64/www/maxtraining\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":4:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":5:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":2:{s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2018-07-22 18:22:41\";s:7:\"Version\";s:6:\"1.2.40\";s:9:\"VersionWP\";s:5:\"4.9.7\";s:9:\"VersionDB\";s:6:\"5.7.21\";s:10:\"VersionPHP\";s:5:\"7.1.9\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:22:\"20180722_ctmaxtraining\";s:4:\"Hash\";s:32:\"dd3fa31936ec90584524180722182241\";s:8:\"NameHash\";s:55:\"20180722_ctmaxtraining_dd3fa31936ec90584524180722182241\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:42:\"C:/wamp64/www/maxtraining/wp-snapshots/tmp\";s:8:\"StoreURL\";s:42:\"http://localhost/maxtraining/wp-snapshots/\";s:8:\"ScanFile\";N;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";N;s:6:\"WPUser\";N;s:7:\"Archive\";r:22;s:9:\"Installer\";O:13:\"DUP_Installer\":7:{s:4:\"File\";s:69:\"20180722_ctmaxtraining_dd3fa31936ec90584524180722182241_installer.php\";s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:10:\"\0*\0Package\";r:58;}s:8:\"Database\";O:12:\"DUP_Database\":13:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";s:68:\"20180722_ctmaxtraining_dd3fa31936ec90584524180722182241_database.sql\";s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server (GPL)\";s:10:\"\0*\0Package\";r:1;s:25:\"\0DUP_Database\0dbStorePath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:6:{i:0;s:34:\"C:/wamp64/www/maxtraining/wp-admin\";i:1;s:44:\"C:/wamp64/www/maxtraining/wp-content/uploads\";i:2;s:46:\"C:/wamp64/www/maxtraining/wp-content/languages\";i:3;s:44:\"C:/wamp64/www/maxtraining/wp-content/plugins\";i:4;s:43:\"C:/wamp64/www/maxtraining/wp-content/themes\";i:5;s:37:\"C:/wamp64/www/maxtraining/wp-includes\";}}s:9:\"Installer\";r:80;s:8:\"Database\";r:88;}");

/* INSERT TABLE DATA: wp_options */
INSERT INTO `wp_options` VALUES("1", "siteurl", "http://localhost/maxtraining", "yes");
INSERT INTO `wp_options` VALUES("2", "home", "http://localhost/maxtraining", "yes");
INSERT INTO `wp_options` VALUES("3", "blogname", "CT Maxtraining", "yes");
INSERT INTO `wp_options` VALUES("4", "blogdescription", "Só mais um site WordPress", "yes");
INSERT INTO `wp_options` VALUES("5", "users_can_register", "0", "yes");
INSERT INTO `wp_options` VALUES("6", "admin_email", "ctmaxtraining@gmail.com", "yes");
INSERT INTO `wp_options` VALUES("7", "start_of_week", "0", "yes");
INSERT INTO `wp_options` VALUES("8", "use_balanceTags", "0", "yes");
INSERT INTO `wp_options` VALUES("9", "use_smilies", "1", "yes");
INSERT INTO `wp_options` VALUES("10", "require_name_email", "1", "yes");
INSERT INTO `wp_options` VALUES("11", "comments_notify", "1", "yes");
INSERT INTO `wp_options` VALUES("12", "posts_per_rss", "10", "yes");
INSERT INTO `wp_options` VALUES("13", "rss_use_excerpt", "0", "yes");
INSERT INTO `wp_options` VALUES("14", "mailserver_url", "mail.example.com", "yes");
INSERT INTO `wp_options` VALUES("15", "mailserver_login", "login@example.com", "yes");
INSERT INTO `wp_options` VALUES("16", "mailserver_pass", "password", "yes");
INSERT INTO `wp_options` VALUES("17", "mailserver_port", "110", "yes");
INSERT INTO `wp_options` VALUES("18", "default_category", "1", "yes");
INSERT INTO `wp_options` VALUES("19", "default_comment_status", "open", "yes");
INSERT INTO `wp_options` VALUES("20", "default_ping_status", "open", "yes");
INSERT INTO `wp_options` VALUES("21", "default_pingback_flag", "0", "yes");
INSERT INTO `wp_options` VALUES("22", "posts_per_page", "10", "yes");
INSERT INTO `wp_options` VALUES("23", "date_format", "j \\d\\e F \\d\\e Y", "yes");
INSERT INTO `wp_options` VALUES("24", "time_format", "H:i", "yes");
INSERT INTO `wp_options` VALUES("25", "links_updated_date_format", "j \\d\\e F \\d\\e Y, H:i", "yes");
INSERT INTO `wp_options` VALUES("26", "comment_moderation", "0", "yes");
INSERT INTO `wp_options` VALUES("27", "moderation_notify", "1", "yes");
INSERT INTO `wp_options` VALUES("28", "permalink_structure", "/%postname%/", "yes");
INSERT INTO `wp_options` VALUES("29", "rewrite_rules", "a:87:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=4&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}", "yes");
INSERT INTO `wp_options` VALUES("30", "hack_file", "0", "yes");
INSERT INTO `wp_options` VALUES("31", "blog_charset", "UTF-8", "yes");
INSERT INTO `wp_options` VALUES("32", "moderation_keys", "", "no");
INSERT INTO `wp_options` VALUES("33", "active_plugins", "a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:25:\"duplicator/duplicator.php\";}", "yes");
INSERT INTO `wp_options` VALUES("34", "category_base", "", "yes");
INSERT INTO `wp_options` VALUES("35", "ping_sites", "http://rpc.pingomatic.com/", "yes");
INSERT INTO `wp_options` VALUES("36", "comment_max_links", "2", "yes");
INSERT INTO `wp_options` VALUES("37", "gmt_offset", "0", "yes");
INSERT INTO `wp_options` VALUES("38", "default_email_category", "1", "yes");
INSERT INTO `wp_options` VALUES("39", "recently_edited", "", "no");
INSERT INTO `wp_options` VALUES("40", "template", "maxtraining", "yes");
INSERT INTO `wp_options` VALUES("41", "stylesheet", "maxtraining", "yes");
INSERT INTO `wp_options` VALUES("42", "comment_whitelist", "1", "yes");
INSERT INTO `wp_options` VALUES("43", "blacklist_keys", "", "no");
INSERT INTO `wp_options` VALUES("44", "comment_registration", "0", "yes");
INSERT INTO `wp_options` VALUES("45", "html_type", "text/html", "yes");
INSERT INTO `wp_options` VALUES("46", "use_trackback", "0", "yes");
INSERT INTO `wp_options` VALUES("47", "default_role", "subscriber", "yes");
INSERT INTO `wp_options` VALUES("48", "db_version", "38590", "yes");
INSERT INTO `wp_options` VALUES("49", "uploads_use_yearmonth_folders", "1", "yes");
INSERT INTO `wp_options` VALUES("50", "upload_path", "", "yes");
INSERT INTO `wp_options` VALUES("51", "blog_public", "0", "yes");
INSERT INTO `wp_options` VALUES("52", "default_link_category", "2", "yes");
INSERT INTO `wp_options` VALUES("53", "show_on_front", "page", "yes");
INSERT INTO `wp_options` VALUES("54", "tag_base", "", "yes");
INSERT INTO `wp_options` VALUES("55", "show_avatars", "1", "yes");
INSERT INTO `wp_options` VALUES("56", "avatar_rating", "G", "yes");
INSERT INTO `wp_options` VALUES("57", "upload_url_path", "", "yes");
INSERT INTO `wp_options` VALUES("58", "thumbnail_size_w", "150", "yes");
INSERT INTO `wp_options` VALUES("59", "thumbnail_size_h", "150", "yes");
INSERT INTO `wp_options` VALUES("60", "thumbnail_crop", "1", "yes");
INSERT INTO `wp_options` VALUES("61", "medium_size_w", "300", "yes");
INSERT INTO `wp_options` VALUES("62", "medium_size_h", "300", "yes");
INSERT INTO `wp_options` VALUES("63", "avatar_default", "mystery", "yes");
INSERT INTO `wp_options` VALUES("64", "large_size_w", "1024", "yes");
INSERT INTO `wp_options` VALUES("65", "large_size_h", "1024", "yes");
INSERT INTO `wp_options` VALUES("66", "image_default_link_type", "none", "yes");
INSERT INTO `wp_options` VALUES("67", "image_default_size", "", "yes");
INSERT INTO `wp_options` VALUES("68", "image_default_align", "", "yes");
INSERT INTO `wp_options` VALUES("69", "close_comments_for_old_posts", "0", "yes");
INSERT INTO `wp_options` VALUES("70", "close_comments_days_old", "14", "yes");
INSERT INTO `wp_options` VALUES("71", "thread_comments", "1", "yes");
INSERT INTO `wp_options` VALUES("72", "thread_comments_depth", "5", "yes");
INSERT INTO `wp_options` VALUES("73", "page_comments", "0", "yes");
INSERT INTO `wp_options` VALUES("74", "comments_per_page", "50", "yes");
INSERT INTO `wp_options` VALUES("75", "default_comments_page", "newest", "yes");
INSERT INTO `wp_options` VALUES("76", "comment_order", "asc", "yes");
INSERT INTO `wp_options` VALUES("77", "sticky_posts", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("78", "widget_categories", "a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("79", "widget_text", "a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("80", "widget_rss", "a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("81", "uninstall_plugins", "a:0:{}", "no");
INSERT INTO `wp_options` VALUES("82", "timezone_string", "America/Sao_Paulo", "yes");
INSERT INTO `wp_options` VALUES("83", "page_for_posts", "0", "yes");
INSERT INTO `wp_options` VALUES("84", "page_on_front", "4", "yes");
INSERT INTO `wp_options` VALUES("85", "default_post_format", "0", "yes");
INSERT INTO `wp_options` VALUES("86", "link_manager_enabled", "0", "yes");
INSERT INTO `wp_options` VALUES("87", "finished_splitting_shared_terms", "1", "yes");
INSERT INTO `wp_options` VALUES("88", "site_icon", "0", "yes");
INSERT INTO `wp_options` VALUES("89", "medium_large_size_w", "768", "yes");
INSERT INTO `wp_options` VALUES("90", "medium_large_size_h", "0", "yes");
INSERT INTO `wp_options` VALUES("91", "initial_db_version", "38590", "yes");
INSERT INTO `wp_options` VALUES("92", "wp_user_roles", "a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}", "yes");
INSERT INTO `wp_options` VALUES("93", "fresh_site", "0", "yes");
INSERT INTO `wp_options` VALUES("94", "WPLANG", "pt_BR", "yes");
INSERT INTO `wp_options` VALUES("95", "widget_search", "a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("96", "widget_recent-posts", "a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("97", "widget_recent-comments", "a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("98", "widget_archives", "a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("99", "widget_meta", "a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("100", "sidebars_widgets", "a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}", "yes");
INSERT INTO `wp_options` VALUES("101", "widget_pages", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("102", "widget_calendar", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("103", "widget_media_audio", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("104", "widget_media_image", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("105", "widget_media_gallery", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("106", "widget_media_video", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("107", "widget_tag_cloud", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("108", "widget_nav_menu", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("109", "widget_custom_html", "a:1:{s:12:\"_multiwidget\";i:1;}", "yes");
INSERT INTO `wp_options` VALUES("110", "cron", "a:6:{i:1532284753;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1532284754;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1532284866;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1532285003;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1532291454;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}", "yes");
INSERT INTO `wp_options` VALUES("111", "theme_mods_twentyseventeen", "a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1531684867;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}", "yes");
INSERT INTO `wp_options` VALUES("123", "_site_transient_update_themes", "O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1532283306;s:7:\"checked\";a:1:{s:11:\"maxtraining\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}", "no");
INSERT INTO `wp_options` VALUES("124", "_site_transient_timeout_browser_a54eb83090ed984332f4eca22d3ec5e4", "1532284868", "no");
INSERT INTO `wp_options` VALUES("125", "_site_transient_browser_a54eb83090ed984332f4eca22d3ec5e4", "a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"67.0.3396.99\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}", "no");
INSERT INTO `wp_options` VALUES("129", "can_compress_scripts", "1", "no");
INSERT INTO `wp_options` VALUES("140", "_site_transient_update_core", "O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-4.9.7.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-4.9.7.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.7\";s:7:\"version\";s:5:\"4.9.7\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1532283302;s:15:\"version_checked\";s:5:\"4.9.7\";s:12:\"translations\";a:0:{}}", "no");
INSERT INTO `wp_options` VALUES("141", "auto_core_update_notified", "a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:23:\"ctmaxtraining@gmail.com\";s:7:\"version\";s:5:\"4.9.7\";s:9:\"timestamp\";i:1531680194;}", "no");
INSERT INTO `wp_options` VALUES("148", "current_theme", "Maxtraining", "yes");
INSERT INTO `wp_options` VALUES("149", "theme_mods_maxtraining", "a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}", "yes");
INSERT INTO `wp_options` VALUES("150", "theme_switched", "", "yes");
INSERT INTO `wp_options` VALUES("174", "recently_activated", "a:0:{}", "yes");
INSERT INTO `wp_options` VALUES("181", "acf_version", "4.4.12", "yes");
INSERT INTO `wp_options` VALUES("201", "_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e", "1532326440", "no");
INSERT INTO `wp_options` VALUES("202", "_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e", "a:2:{s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:0:{}}", "no");
INSERT INTO `wp_options` VALUES("206", "_transient_timeout_plugin_slugs", "1532369722", "no");
INSERT INTO `wp_options` VALUES("207", "_transient_plugin_slugs", "a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:25:\"duplicator/duplicator.php\";i:3;s:9:\"hello.php\";}", "no");
INSERT INTO `wp_options` VALUES("208", "_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a", "1532294056", "no");
INSERT INTO `wp_options` VALUES("209", "_site_transient_poptags_40cd750bba9870f18aada2478b24840a", "O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4478;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2894;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2574;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2440;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1876;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1665;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1660;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1457;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1400;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1393;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1390;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1326;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1286;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1229;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1114;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1068;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1030;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1027;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:910;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:885;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:831;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:806;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:804;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:725;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:695;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:695;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:687;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:677;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:665;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:662;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:658;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:646;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:645;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:641;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:611;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:611;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:607;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:606;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:600;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:593;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:570;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:549;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:542;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:540;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:527;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:523;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:511;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:510;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:506;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:505;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:493;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:488;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:486;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:484;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:478;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:476;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:459;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:457;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:448;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:439;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:436;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:434;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:421;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:418;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:417;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:414;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:412;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:408;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:404;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:388;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:387;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:370;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:368;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:368;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:363;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:361;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:356;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:353;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:350;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:348;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:345;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:342;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:342;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:338;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:337;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:334;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:329;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:322;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:310;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:308;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:306;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:303;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:301;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:301;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:300;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:299;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:298;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:296;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:295;}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";i:288;}}", "no");
INSERT INTO `wp_options` VALUES("211", "_site_transient_timeout_theme_roots", "1532285105", "no");
INSERT INTO `wp_options` VALUES("212", "_site_transient_theme_roots", "a:1:{s:11:\"maxtraining\";s:7:\"/themes\";}", "no");
INSERT INTO `wp_options` VALUES("213", "_site_transient_update_plugins", "O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1532283317;s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:25:\"duplicator/duplicator.php\";s:6:\"1.2.40\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"duplicator/duplicator.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/duplicator\";s:4:\"slug\";s:10:\"duplicator\";s:6:\"plugin\";s:25:\"duplicator/duplicator.php\";s:11:\"new_version\";s:6:\"1.2.40\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/duplicator/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/duplicator.1.2.40.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=1298463\";s:2:\"1x\";s:63:\"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=1298463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=1645055\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}", "no");
INSERT INTO `wp_options` VALUES("214", "duplicator_settings", "a:10:{s:7:\"version\";s:6:\"1.2.40\";s:18:\"uninstall_settings\";b:1;s:15:\"uninstall_files\";b:1;s:16:\"uninstall_tables\";b:1;s:13:\"package_debug\";b:0;s:17:\"package_mysqldump\";b:1;s:22:\"package_mysqldump_path\";s:0:\"\";s:24:\"package_phpdump_qrylimit\";s:3:\"100\";s:17:\"package_zip_flush\";b:0;s:20:\"storage_htaccess_off\";b:0;}", "yes");
INSERT INTO `wp_options` VALUES("215", "duplicator_version_plugin", "1.2.40", "yes");
INSERT INTO `wp_options` VALUES("216", "duplicator_package_active", "O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2018-07-22 18:22:41\";s:7:\"Version\";s:6:\"1.2.40\";s:9:\"VersionWP\";s:5:\"4.9.7\";s:9:\"VersionDB\";s:6:\"5.7.21\";s:10:\"VersionPHP\";s:5:\"7.1.9\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:22:\"20180722_ctmaxtraining\";s:4:\"Hash\";s:32:\"dd3fa31936ec90584524180722182241\";s:8:\"NameHash\";s:55:\"20180722_ctmaxtraining_dd3fa31936ec90584524180722182241\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:42:\"C:/wamp64/www/maxtraining/wp-snapshots/tmp\";s:8:\"StoreURL\";s:42:\"http://localhost/maxtraining/wp-snapshots/\";s:8:\"ScanFile\";s:65:\"20180722_ctmaxtraining_dd3fa31936ec90584524180722182241_scan.json\";s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";N;s:6:\"WPUser\";N;s:7:\"Archive\";O:11:\"DUP_Archive\":19:{s:10:\"FilterDirs\";s:0:\"\";s:11:\"FilterFiles\";s:0:\"\";s:10:\"FilterExts\";s:0:\"\";s:13:\"FilterDirsAll\";a:0:{}s:14:\"FilterFilesAll\";a:0:{}s:13:\"FilterExtsAll\";a:0:{}s:8:\"FilterOn\";i:0;s:12:\"ExportOnlyDB\";i:0;s:4:\"File\";N;s:6:\"Format\";s:3:\"ZIP\";s:7:\"PackDir\";s:25:\"C:/wamp64/www/maxtraining\";s:4:\"Size\";i:0;s:4:\"Dirs\";a:0:{}s:5:\"Files\";a:0:{}s:10:\"FilterInfo\";O:23:\"DUP_Archive_Filter_Info\":8:{s:4:\"Dirs\";O:34:\"DUP_Archive_Filter_Scope_Directory\":4:{s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:5:\"Files\";O:29:\"DUP_Archive_Filter_Scope_File\":5:{s:4:\"Size\";a:0:{}s:7:\"Warning\";a:0:{}s:10:\"Unreadable\";a:0:{}s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:4:\"Exts\";O:29:\"DUP_Archive_Filter_Scope_Base\":2:{s:4:\"Core\";a:0:{}s:8:\"Instance\";a:0:{}}s:9:\"UDirCount\";i:0;s:10:\"UFileCount\";i:0;s:9:\"UExtCount\";i:0;s:8:\"TreeSize\";a:0:{}s:11:\"TreeWarning\";a:0:{}}s:14:\"RecursiveLinks\";a:0:{}s:10:\"\0*\0Package\";O:11:\"DUP_Package\":23:{s:7:\"Created\";s:19:\"2018-07-22 18:22:41\";s:7:\"Version\";s:6:\"1.2.40\";s:9:\"VersionWP\";s:5:\"4.9.7\";s:9:\"VersionDB\";s:6:\"5.7.21\";s:10:\"VersionPHP\";s:5:\"7.1.9\";s:9:\"VersionOS\";s:5:\"WINNT\";s:2:\"ID\";N;s:4:\"Name\";s:22:\"20180722_ctmaxtraining\";s:4:\"Hash\";s:32:\"dd3fa31936ec90584524180722182241\";s:8:\"NameHash\";s:55:\"20180722_ctmaxtraining_dd3fa31936ec90584524180722182241\";s:4:\"Type\";i:0;s:5:\"Notes\";s:0:\"\";s:9:\"StorePath\";s:42:\"C:/wamp64/www/maxtraining/wp-snapshots/tmp\";s:8:\"StoreURL\";s:42:\"http://localhost/maxtraining/wp-snapshots/\";s:8:\"ScanFile\";N;s:7:\"Runtime\";N;s:7:\"ExeSize\";N;s:7:\"ZipSize\";N;s:6:\"Status\";N;s:6:\"WPUser\";N;s:7:\"Archive\";r:22;s:9:\"Installer\";O:13:\"DUP_Installer\":7:{s:4:\"File\";N;s:4:\"Size\";i:0;s:10:\"OptsDBHost\";s:0:\"\";s:10:\"OptsDBPort\";s:0:\"\";s:10:\"OptsDBName\";s:0:\"\";s:10:\"OptsDBUser\";s:0:\"\";s:10:\"\0*\0Package\";r:58;}s:8:\"Database\";O:12:\"DUP_Database\":13:{s:4:\"Type\";s:5:\"MySQL\";s:4:\"Size\";N;s:4:\"File\";N;s:4:\"Path\";N;s:12:\"FilterTables\";s:0:\"\";s:8:\"FilterOn\";i:0;s:4:\"Name\";N;s:10:\"Compatible\";s:0:\"\";s:8:\"Comments\";s:28:\"MySQL Community Server (GPL)\";s:10:\"\0*\0Package\";r:58;s:25:\"\0DUP_Database\0dbStorePath\";N;s:23:\"\0DUP_Database\0EOFMarker\";s:0:\"\";s:26:\"\0DUP_Database\0networkFlush\";b:0;}}s:29:\"\0DUP_Archive\0tmpFilterDirsAll\";a:0:{}s:24:\"\0DUP_Archive\0wpCorePaths\";a:6:{i:0;s:34:\"C:/wamp64/www/maxtraining/wp-admin\";i:1;s:44:\"C:/wamp64/www/maxtraining/wp-content/uploads\";i:2;s:46:\"C:/wamp64/www/maxtraining/wp-content/languages\";i:3;s:44:\"C:/wamp64/www/maxtraining/wp-content/plugins\";i:4;s:43:\"C:/wamp64/www/maxtraining/wp-content/themes\";i:5;s:37:\"C:/wamp64/www/maxtraining/wp-includes\";}}s:9:\"Installer\";r:80;s:8:\"Database\";r:88;}", "yes");

/* INSERT TABLE DATA: wp_postmeta */
INSERT INTO `wp_postmeta` VALUES("1", "2", "_wp_page_template", "default");
INSERT INTO `wp_postmeta` VALUES("2", "4", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("3", "4", "_wp_page_template", "page-home.php");
INSERT INTO `wp_postmeta` VALUES("4", "4", "_edit_lock", "1532282780:1");
INSERT INTO `wp_postmeta` VALUES("5", "6", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("6", "6", "_wp_page_template", "page-sobre.php");
INSERT INTO `wp_postmeta` VALUES("7", "6", "_edit_lock", "1531790746:1");
INSERT INTO `wp_postmeta` VALUES("8", "8", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("9", "8", "_edit_lock", "1532011040:1");
INSERT INTO `wp_postmeta` VALUES("10", "8", "_wp_page_template", "page-servicos.php");
INSERT INTO `wp_postmeta` VALUES("11", "10", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("12", "10", "_wp_page_template", "page-contato.php");
INSERT INTO `wp_postmeta` VALUES("13", "10", "_edit_lock", "1531973589:1");
INSERT INTO `wp_postmeta` VALUES("14", "2", "_wp_trash_meta_status", "publish");
INSERT INTO `wp_postmeta` VALUES("15", "2", "_wp_trash_meta_time", "1531770406");
INSERT INTO `wp_postmeta` VALUES("16", "2", "_wp_desired_post_slug", "pagina-exemplo");
INSERT INTO `wp_postmeta` VALUES("17", "14", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("18", "14", "field_5b4cf744ac96e", "a:14:{s:3:\"key\";s:19:\"field_5b4cf744ac96e\";s:5:\"label\";s:23:\"Título Inicial da Home\";s:4:\"name\";s:19:\"titulo_inicial_home\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:80:\"Esse título será mostrado logo na primeira parte, quando o site for carregado.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:24:\"Bem-vindo ao nosso site!\";s:11:\"placeholder\";s:23:\"Título inicial do site\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:2:\"90\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}");
INSERT INTO `wp_postmeta` VALUES("20", "14", "position", "normal");
INSERT INTO `wp_postmeta` VALUES("21", "14", "layout", "no_box");
INSERT INTO `wp_postmeta` VALUES("22", "14", "hide_on_screen", "a:11:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:13:\"custom_fields\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:14:\"featured_image\";i:10;s:15:\"send-trackbacks\";}");
INSERT INTO `wp_postmeta` VALUES("23", "14", "_edit_lock", "1531974912:1");
INSERT INTO `wp_postmeta` VALUES("24", "4", "titulo_inicial_home", "SEMPRE É TEMPO DE TREINAR");
INSERT INTO `wp_postmeta` VALUES("25", "4", "_titulo_inicial_home", "field_5b4cf744ac96e");
INSERT INTO `wp_postmeta` VALUES("26", "15", "titulo_inicial_home", "SEMPRE É TEMPO DE TREINAR LARGUE AS DESCULPAS E ENCONTRE OS RESULTADOS");
INSERT INTO `wp_postmeta` VALUES("27", "15", "_titulo_inicial_home", "field_5b4cf744ac96e");
INSERT INTO `wp_postmeta` VALUES("28", "16", "titulo_inicial_home", "SEMPRE É TEMPO DE TREINAR");
INSERT INTO `wp_postmeta` VALUES("29", "16", "_titulo_inicial_home", "field_5b4cf744ac96e");
INSERT INTO `wp_postmeta` VALUES("31", "14", "field_5b4cf8ade0572", "a:9:{s:3:\"key\";s:19:\"field_5b4cf8ade0572\";s:5:\"label\";s:12:\"Diferenciais\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:7:\"message\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:7:\"message\";s:126:\"Área onde deve ser informado os diferenciais da Maxtraining, junto com um título curto e um texto informativo ou descritivo.\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}");
INSERT INTO `wp_postmeta` VALUES("37", "4", "diferencial_1", "");
INSERT INTO `wp_postmeta` VALUES("38", "4", "_diferencial_1", "field_5b4cf90fe0573");
INSERT INTO `wp_postmeta` VALUES("39", "14", "field_5b4cf9e738b1d", "a:8:{s:3:\"key\";s:19:\"field_5b4cf9e738b1d\";s:5:\"label\";s:14:\"Diferencial #1\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}");
INSERT INTO `wp_postmeta` VALUES("40", "14", "field_5b4cfa0738b1e", "a:8:{s:3:\"key\";s:19:\"field_5b4cfa0738b1e\";s:5:\"label\";s:14:\"Diferencial #2\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}");
INSERT INTO `wp_postmeta` VALUES("42", "14", "field_5b4cfa1017dce", "a:8:{s:3:\"key\";s:19:\"field_5b4cfa1017dce\";s:5:\"label\";s:14:\"Diferencial #3\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:9;}");
INSERT INTO `wp_postmeta` VALUES("45", "14", "field_5b4cfa84b065a", "a:14:{s:3:\"key\";s:19:\"field_5b4cfa84b065a\";s:5:\"label\";s:23:\"Titulo do diferencial 1\";s:4:\"name\";s:20:\"titulo_diferencial_1\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:32:\"Aqui você informa o diferencial\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:50:\"Ex: Equipe qualificada, Planos sob medida, etc ...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:2:\"20\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}");
INSERT INTO `wp_postmeta` VALUES("46", "14", "field_5b4cfb18b065b", "a:14:{s:3:\"key\";s:19:\"field_5b4cfb18b065b\";s:5:\"label\";s:22:\"Texto do diferencial 1\";s:4:\"name\";s:19:\"texto_diferencial_1\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:33:\"Aqui você descreve o diferencial\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:50:\"Ex: Nos temos os melhores planos para você, .....\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:3:\"250\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}");
INSERT INTO `wp_postmeta` VALUES("48", "14", "field_5b4cfb6535ccf", "a:14:{s:3:\"key\";s:19:\"field_5b4cfb6535ccf\";s:5:\"label\";s:23:\"Titulo do diferencial 2\";s:4:\"name\";s:20:\"titulo_diferencial_2\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:32:\"Aqui você informa o diferencial\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:50:\"Ex: Equipe qualificada, Planos sob medida, etc ...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:2:\"20\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:7;}");
INSERT INTO `wp_postmeta` VALUES("49", "14", "field_5b4cfb7a35cd0", "a:14:{s:3:\"key\";s:19:\"field_5b4cfb7a35cd0\";s:5:\"label\";s:22:\"Texto do diferencial 2\";s:4:\"name\";s:19:\"texto_diferencial_2\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:33:\"Aqui você descreve o diferencial\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:50:\"Ex: Nos temos os melhores planos para você, .....\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:3:\"250\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:8;}");
INSERT INTO `wp_postmeta` VALUES("50", "14", "field_5b4cfb8b35cd1", "a:14:{s:3:\"key\";s:19:\"field_5b4cfb8b35cd1\";s:5:\"label\";s:23:\"Titulo do diferencial 3\";s:4:\"name\";s:20:\"titulo_diferencial_3\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:32:\"Aqui você informa o diferencial\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:50:\"Ex: Equipe qualificada, Planos sob medida, etc ...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:2:\"20\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:10;}");
INSERT INTO `wp_postmeta` VALUES("51", "14", "field_5b4cfb9f35cd2", "a:14:{s:3:\"key\";s:19:\"field_5b4cfb9f35cd2\";s:5:\"label\";s:22:\"Texto do diferencial 3\";s:4:\"name\";s:19:\"texto_diferencial_3\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:33:\"Aqui você descreve o diferencial\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:50:\"Ex: Nos temos os melhores planos para você, .....\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:3:\"250\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:11;}");
INSERT INTO `wp_postmeta` VALUES("53", "17", "titulo_inicial_home", "SEMPRE É TEMPO DE TREINAR");
INSERT INTO `wp_postmeta` VALUES("54", "17", "_titulo_inicial_home", "field_5b4cf744ac96e");
INSERT INTO `wp_postmeta` VALUES("55", "17", "titulo_diferencial_1", "Avaliação Funcional");
INSERT INTO `wp_postmeta` VALUES("56", "17", "_titulo_diferencial_1", "field_5b4cfa84b065a");
INSERT INTO `wp_postmeta` VALUES("57", "17", "texto_diferencial_1", "Fazemos uma avaliação completa com o objetivo de encaminhar o melhor treinamento à você.");
INSERT INTO `wp_postmeta` VALUES("58", "17", "_texto_diferencial_1", "field_5b4cfb18b065b");
INSERT INTO `wp_postmeta` VALUES("59", "17", "titulo_do_diferencial_2", "");
INSERT INTO `wp_postmeta` VALUES("60", "17", "_titulo_do_diferencial_2", "field_5b4cfb6535ccf");
INSERT INTO `wp_postmeta` VALUES("61", "17", "texto_do_diferencial_2", "");
INSERT INTO `wp_postmeta` VALUES("62", "17", "_texto_do_diferencial_2", "field_5b4cfb7a35cd0");
INSERT INTO `wp_postmeta` VALUES("63", "17", "titulo_do_diferencial_3", "");
INSERT INTO `wp_postmeta` VALUES("64", "17", "_titulo_do_diferencial_3", "field_5b4cfb8b35cd1");
INSERT INTO `wp_postmeta` VALUES("65", "17", "texto_do_diferencial_3", "");
INSERT INTO `wp_postmeta` VALUES("66", "17", "_texto_do_diferencial_3", "field_5b4cfb9f35cd2");
INSERT INTO `wp_postmeta` VALUES("67", "4", "titulo_diferencial_1", "Avaliação Funcional");
INSERT INTO `wp_postmeta` VALUES("68", "4", "_titulo_diferencial_1", "field_5b4cfa84b065a");
INSERT INTO `wp_postmeta` VALUES("69", "4", "texto_diferencial_1", "Fazemos uma avaliação completa com o objetivo de encaminhar o melhor treinamento à você.");
INSERT INTO `wp_postmeta` VALUES("70", "4", "_texto_diferencial_1", "field_5b4cfb18b065b");
INSERT INTO `wp_postmeta` VALUES("71", "4", "titulo_do_diferencial_2", "Equipe qualificada");
INSERT INTO `wp_postmeta` VALUES("72", "4", "_titulo_do_diferencial_2", "field_5b4cfb6535ccf");
INSERT INTO `wp_postmeta` VALUES("73", "4", "texto_do_diferencial_2", "");
INSERT INTO `wp_postmeta` VALUES("74", "4", "_texto_do_diferencial_2", "field_5b4cfb7a35cd0");
INSERT INTO `wp_postmeta` VALUES("75", "4", "titulo_do_diferencial_3", "Planos sob medida");
INSERT INTO `wp_postmeta` VALUES("76", "4", "_titulo_do_diferencial_3", "field_5b4cfb8b35cd1");
INSERT INTO `wp_postmeta` VALUES("77", "4", "texto_do_diferencial_3", "");
INSERT INTO `wp_postmeta` VALUES("78", "4", "_texto_do_diferencial_3", "field_5b4cfb9f35cd2");
INSERT INTO `wp_postmeta` VALUES("80", "18", "titulo_inicial_home", "SEMPRE É TEMPO DE TREINAR");
INSERT INTO `wp_postmeta` VALUES("81", "18", "_titulo_inicial_home", "field_5b4cf744ac96e");
INSERT INTO `wp_postmeta` VALUES("82", "18", "titulo_diferencial_1", "Avaliação Funcional");
INSERT INTO `wp_postmeta` VALUES("83", "18", "_titulo_diferencial_1", "field_5b4cfa84b065a");
INSERT INTO `wp_postmeta` VALUES("84", "18", "texto_diferencial_1", "Fazemos uma avaliação completa com o objetivo de encaminhar o melhor treinamento à você.");
INSERT INTO `wp_postmeta` VALUES("85", "18", "_texto_diferencial_1", "field_5b4cfb18b065b");
INSERT INTO `wp_postmeta` VALUES("86", "18", "titulo_do_diferencial_2", "Equipe qualificada");
INSERT INTO `wp_postmeta` VALUES("87", "18", "_titulo_do_diferencial_2", "field_5b4cfb6535ccf");
INSERT INTO `wp_postmeta` VALUES("88", "18", "texto_diferencial_2", "Profissionais qualificados, dedicados e capacitados para prestar o melhor serviço.");
INSERT INTO `wp_postmeta` VALUES("89", "18", "_texto_diferencial_2", "field_5b4cfb7a35cd0");
INSERT INTO `wp_postmeta` VALUES("90", "18", "titulo_do_diferencial_3", "Planos sob medida");
INSERT INTO `wp_postmeta` VALUES("91", "18", "_titulo_do_diferencial_3", "field_5b4cfb8b35cd1");
INSERT INTO `wp_postmeta` VALUES("92", "18", "texto_diferencial_3", "A MaxTraining possui os melhores Planos. O custo-benefício do nosso serviço vai lhe surpreender!");
INSERT INTO `wp_postmeta` VALUES("93", "18", "_texto_diferencial_3", "field_5b4cfb9f35cd2");
INSERT INTO `wp_postmeta` VALUES("94", "4", "texto_diferencial_2", "Profissionais qualificados, dedicados e capacitados para prestar o melhor serviço.");
INSERT INTO `wp_postmeta` VALUES("95", "4", "_texto_diferencial_2", "field_5b4cfb7a35cd0");
INSERT INTO `wp_postmeta` VALUES("96", "4", "texto_diferencial_3", "A MaxTraining possui os melhores Planos. O custo-benefício do nosso serviço vai lhe surpreender!");
INSERT INTO `wp_postmeta` VALUES("97", "4", "_texto_diferencial_3", "field_5b4cfb9f35cd2");
INSERT INTO `wp_postmeta` VALUES("99", "4", "titulo_diferencial_2", "Equipe qualificada");
INSERT INTO `wp_postmeta` VALUES("100", "4", "_titulo_diferencial_2", "field_5b4cfb6535ccf");
INSERT INTO `wp_postmeta` VALUES("101", "4", "titulo_diferencial_3", "Planos sob medida");
INSERT INTO `wp_postmeta` VALUES("102", "4", "_titulo_diferencial_3", "field_5b4cfb8b35cd1");
INSERT INTO `wp_postmeta` VALUES("103", "19", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("104", "19", "field_5b4cfe7253ed3", "a:14:{s:3:\"key\";s:19:\"field_5b4cfe7253ed3\";s:5:\"label\";s:24:\"Título da Página Sobre\";s:4:\"name\";s:12:\"titulo_sobre\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:48:\"Título para identificar a seção de Sobre Nós\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:10:\"Sobre Nós\";s:11:\"placeholder\";s:42:\"Informe um título curto para essa seção\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:2:\"15\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}");
INSERT INTO `wp_postmeta` VALUES("106", "19", "position", "normal");
INSERT INTO `wp_postmeta` VALUES("107", "19", "layout", "no_box");
INSERT INTO `wp_postmeta` VALUES("108", "19", "hide_on_screen", "");
INSERT INTO `wp_postmeta` VALUES("109", "19", "_edit_lock", "1531787438:1");
INSERT INTO `wp_postmeta` VALUES("110", "6", "titulo_sobre", "Sobre Nós");
INSERT INTO `wp_postmeta` VALUES("111", "6", "_titulo_sobre", "field_5b4cfe7253ed3");
INSERT INTO `wp_postmeta` VALUES("113", "19", "field_5b4d00ded5704", "a:14:{s:3:\"key\";s:19:\"field_5b4d00ded5704\";s:5:\"label\";s:17:\"Descrição Sobre\";s:4:\"name\";s:15:\"descricao_sobre\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:59:\"Descreva aqui a sua empresa, o seu produto, evento, etc ...\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:35:\"Texto com limite de 250 caracteres.\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:3:\"250\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}");
INSERT INTO `wp_postmeta` VALUES("115", "19", "field_5b4d015d7b5db", "a:9:{s:3:\"key\";s:19:\"field_5b4d015d7b5db\";s:5:\"label\";s:11:\"Subtítulos\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:7:\"message\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:7:\"message\";s:154:\"A seguir, informe os subtítulos, os textos para cada subtítulo e uma imagem com um tamanho e formato padrão que será informado no campo de inserção.\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}");
INSERT INTO `wp_postmeta` VALUES("117", "19", "field_5b4d01e631676", "a:8:{s:3:\"key\";s:19:\"field_5b4d01e631676\";s:5:\"label\";s:13:\"Subtítulo #1\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}");
INSERT INTO `wp_postmeta` VALUES("118", "19", "field_5b4d01ff31677", "a:8:{s:3:\"key\";s:19:\"field_5b4d01ff31677\";s:5:\"label\";s:13:\"Subtítulo #2\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:7;}");
INSERT INTO `wp_postmeta` VALUES("119", "19", "field_5b4d020631678", "a:8:{s:3:\"key\";s:19:\"field_5b4d020631678\";s:5:\"label\";s:13:\"Subtítulo #3\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:11;}");
INSERT INTO `wp_postmeta` VALUES("122", "6", "descricao_sobre", "");
INSERT INTO `wp_postmeta` VALUES("123", "6", "_descricao_sobre", "field_5b4d00ded5704");
INSERT INTO `wp_postmeta` VALUES("124", "19", "field_5b4d02818851d", "a:14:{s:3:\"key\";s:19:\"field_5b4d02818851d\";s:5:\"label\";s:10:\"Subtítulo\";s:4:\"name\";s:11:\"subtitulo_1\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:21:\"Informe um subtítulo\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:42:\"Ex: Nossa Missão, Nossos Valores, etc ...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:2:\"20\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}");
INSERT INTO `wp_postmeta` VALUES("125", "19", "field_5b4d03ba88522", "a:14:{s:3:\"key\";s:19:\"field_5b4d03ba88522\";s:5:\"label\";s:15:\"Texto Subtitulo\";s:4:\"name\";s:17:\"texto_subtitulo_1\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:71:\"Insira um texto com no máximo 250 caracteres, descrevendo o subtitulo.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:36:\"Texto com no máximo 250 caracteres.\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:3:\"250\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}");
INSERT INTO `wp_postmeta` VALUES("126", "19", "field_5b4d02cf8851e", "a:14:{s:3:\"key\";s:19:\"field_5b4d02cf8851e\";s:5:\"label\";s:10:\"Subtítulo\";s:4:\"name\";s:11:\"subtitulo_2\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:21:\"Informe um subtítulo\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:42:\"Ex: Nossa Missão, Nossos Valores, etc ...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:2:\"20\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:8;}");
INSERT INTO `wp_postmeta` VALUES("127", "19", "field_5b4d03b188521", "a:14:{s:3:\"key\";s:19:\"field_5b4d03b188521\";s:5:\"label\";s:15:\"Texto Subtitulo\";s:4:\"name\";s:17:\"texto_subtitulo_2\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:71:\"Insira um texto com no máximo 250 caracteres, descrevendo o subtitulo.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:36:\"Texto com no máximo 250 caracteres.\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:3:\"250\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:9;}");
INSERT INTO `wp_postmeta` VALUES("128", "19", "field_5b4d02e18851f", "a:14:{s:3:\"key\";s:19:\"field_5b4d02e18851f\";s:5:\"label\";s:10:\"Subtítulo\";s:4:\"name\";s:11:\"subtitulo_3\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:21:\"Informe um subtítulo\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:42:\"Ex: Nossa Missão, Nossos Valores, etc ...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:2:\"20\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:12;}");
INSERT INTO `wp_postmeta` VALUES("129", "19", "field_5b4d036b88520", "a:14:{s:3:\"key\";s:19:\"field_5b4d036b88520\";s:5:\"label\";s:15:\"Texto Subtitulo\";s:4:\"name\";s:17:\"texto_subtitulo_3\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:71:\"Insira um texto com no máximo 250 caracteres, descrevendo o subtitulo.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:36:\"Texto com no máximo 250 caracteres.\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:3:\"250\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:13;}");
INSERT INTO `wp_postmeta` VALUES("131", "20", "titulo_sobre", "Sobre Nós");
INSERT INTO `wp_postmeta` VALUES("132", "20", "_titulo_sobre", "field_5b4cfe7253ed3");
INSERT INTO `wp_postmeta` VALUES("133", "20", "descricao_sobre", "");
INSERT INTO `wp_postmeta` VALUES("134", "20", "_descricao_sobre", "field_5b4d00ded5704");
INSERT INTO `wp_postmeta` VALUES("135", "20", "subtitulo_1", "Nossa Visão");
INSERT INTO `wp_postmeta` VALUES("136", "20", "_subtitulo_1", "field_5b4d02818851d");
INSERT INTO `wp_postmeta` VALUES("137", "20", "texto_subtitulo_3", "PREZAR POR TRABALHAR COM PESSOAS DEDICADAS E RESPONSÁVEIS");
INSERT INTO `wp_postmeta` VALUES("138", "20", "_texto_subtitulo_3", "field_5b4d036b88520");
INSERT INTO `wp_postmeta` VALUES("139", "20", "subtitulo_2", "Nossa Missão");
INSERT INTO `wp_postmeta` VALUES("140", "20", "_subtitulo_2", "field_5b4d02cf8851e");
INSERT INTO `wp_postmeta` VALUES("141", "20", "texto_subtitulo_2", "SER RECONHECIDO COMO REFERÊNCIA EM CENTRO DE TREINAMENTO PERSONALIZADO");
INSERT INTO `wp_postmeta` VALUES("142", "20", "_texto_subtitulo_2", "field_5b4d03b188521");
INSERT INTO `wp_postmeta` VALUES("143", "20", "subtitulo_3", "Nossos Valores");
INSERT INTO `wp_postmeta` VALUES("144", "20", "_subtitulo_3", "field_5b4d02e18851f");
INSERT INTO `wp_postmeta` VALUES("145", "6", "subtitulo_1", "Nossa Visão");
INSERT INTO `wp_postmeta` VALUES("146", "6", "_subtitulo_1", "field_5b4d02818851d");
INSERT INTO `wp_postmeta` VALUES("147", "6", "texto_subtitulo_3", "Prezar por trabalhar com pessoas dedicadas e responsáveis.");
INSERT INTO `wp_postmeta` VALUES("148", "6", "_texto_subtitulo_3", "field_5b4d036b88520");
INSERT INTO `wp_postmeta` VALUES("149", "6", "subtitulo_2", "Nossa Missão");
INSERT INTO `wp_postmeta` VALUES("150", "6", "_subtitulo_2", "field_5b4d02cf8851e");
INSERT INTO `wp_postmeta` VALUES("151", "6", "texto_subtitulo_2", "Ser reconhecido como referência em centro de Treinamento Personalizado.");
INSERT INTO `wp_postmeta` VALUES("152", "6", "_texto_subtitulo_2", "field_5b4d03b188521");
INSERT INTO `wp_postmeta` VALUES("153", "6", "subtitulo_3", "Nossos Valores");
INSERT INTO `wp_postmeta` VALUES("154", "6", "_subtitulo_3", "field_5b4d02e18851f");
INSERT INTO `wp_postmeta` VALUES("156", "6", "texto_subtitulo_1", "Ser um centro esportivo especializado na formação de alunos preparados.");
INSERT INTO `wp_postmeta` VALUES("157", "6", "_texto_subtitulo_1", "field_5b4d03ba88522");
INSERT INTO `wp_postmeta` VALUES("158", "21", "titulo_sobre", "Sobre Nós");
INSERT INTO `wp_postmeta` VALUES("159", "21", "_titulo_sobre", "field_5b4cfe7253ed3");
INSERT INTO `wp_postmeta` VALUES("160", "21", "descricao_sobre", "");
INSERT INTO `wp_postmeta` VALUES("161", "21", "_descricao_sobre", "field_5b4d00ded5704");
INSERT INTO `wp_postmeta` VALUES("162", "21", "subtitulo_1", "Nossa Visão");
INSERT INTO `wp_postmeta` VALUES("163", "21", "_subtitulo_1", "field_5b4d02818851d");
INSERT INTO `wp_postmeta` VALUES("164", "21", "texto_subtitulo_1", "Ser um centro esportivo especializado na formação de alunos preparados.");
INSERT INTO `wp_postmeta` VALUES("165", "21", "_texto_subtitulo_1", "field_5b4d03ba88522");
INSERT INTO `wp_postmeta` VALUES("166", "21", "subtitulo_2", "Nossa Missão");
INSERT INTO `wp_postmeta` VALUES("167", "21", "_subtitulo_2", "field_5b4d02cf8851e");
INSERT INTO `wp_postmeta` VALUES("168", "21", "texto_subtitulo_2", "Ser reconhecido como referência em centro de Treinamento Personalizado.");
INSERT INTO `wp_postmeta` VALUES("169", "21", "_texto_subtitulo_2", "field_5b4d03b188521");
INSERT INTO `wp_postmeta` VALUES("170", "21", "subtitulo_3", "Nossos Valores");
INSERT INTO `wp_postmeta` VALUES("171", "21", "_subtitulo_3", "field_5b4d02e18851f");
INSERT INTO `wp_postmeta` VALUES("172", "21", "texto_subtitulo_3", "Prezar por trabalhar com pessoas dedicadas e responsáveis.");
INSERT INTO `wp_postmeta` VALUES("173", "21", "_texto_subtitulo_3", "field_5b4d036b88520");
INSERT INTO `wp_postmeta` VALUES("174", "19", "field_5b4d37e3c351f", "a:11:{s:3:\"key\";s:19:\"field_5b4d37e3c351f\";s:5:\"label\";s:6:\"Imagem\";s:4:\"name\";s:18:\"imagem_subtitulo_1\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:63:\"Insira uma imagem com as dimensões máximas 2000 X 1200 pixels\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}");
INSERT INTO `wp_postmeta` VALUES("175", "19", "field_5b4d385ac3520", "a:11:{s:3:\"key\";s:19:\"field_5b4d385ac3520\";s:5:\"label\";s:6:\"Imagem\";s:4:\"name\";s:18:\"imagem_subtitulo_2\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:63:\"Insira uma imagem com as dimensões máximas 2000 X 1200 pixels\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:10;}");
INSERT INTO `wp_postmeta` VALUES("176", "19", "field_5b4d3866c3521", "a:11:{s:3:\"key\";s:19:\"field_5b4d3866c3521\";s:5:\"label\";s:6:\"Imagem\";s:4:\"name\";s:18:\"imagem_subtitulo_3\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:63:\"Insira uma imagem com as dimensões máximas 2000 X 1200 pixels\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:14;}");
INSERT INTO `wp_postmeta` VALUES("177", "19", "rule", "a:5:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"page-sobre.php\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}");
INSERT INTO `wp_postmeta` VALUES("178", "6", "imagem_subtitulo_1", "22");
INSERT INTO `wp_postmeta` VALUES("179", "6", "_imagem_subtitulo_1", "field_5b4d37e3c351f");
INSERT INTO `wp_postmeta` VALUES("180", "6", "imagem_subtitulo_2", "25");
INSERT INTO `wp_postmeta` VALUES("181", "6", "_imagem_subtitulo_2", "field_5b4d385ac3520");
INSERT INTO `wp_postmeta` VALUES("182", "6", "imagem_subtitulo_3", "29");
INSERT INTO `wp_postmeta` VALUES("183", "6", "_imagem_subtitulo_3", "field_5b4d3866c3521");
INSERT INTO `wp_postmeta` VALUES("184", "22", "_wp_attached_file", "2018/07/nossa_visao.jpg");
INSERT INTO `wp_postmeta` VALUES("185", "22", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:629;s:4:\"file\";s:23:\"2018/07/nossa_visao.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"nossa_visao-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"nossa_visao-300x175.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"nossa_visao-768x447.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:447;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"nossa_visao-1024x596.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:596;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("186", "23", "titulo_sobre", "Sobre Nós");
INSERT INTO `wp_postmeta` VALUES("187", "23", "_titulo_sobre", "field_5b4cfe7253ed3");
INSERT INTO `wp_postmeta` VALUES("188", "23", "descricao_sobre", "");
INSERT INTO `wp_postmeta` VALUES("189", "23", "_descricao_sobre", "field_5b4d00ded5704");
INSERT INTO `wp_postmeta` VALUES("190", "23", "subtitulo_1", "Nossa Visão");
INSERT INTO `wp_postmeta` VALUES("191", "23", "_subtitulo_1", "field_5b4d02818851d");
INSERT INTO `wp_postmeta` VALUES("192", "23", "texto_subtitulo_1", "Ser um centro esportivo especializado na formação de alunos preparados.");
INSERT INTO `wp_postmeta` VALUES("193", "23", "_texto_subtitulo_1", "field_5b4d03ba88522");
INSERT INTO `wp_postmeta` VALUES("194", "23", "imagem_subtitulo_1", "22");
INSERT INTO `wp_postmeta` VALUES("195", "23", "_imagem_subtitulo_1", "field_5b4d37e3c351f");
INSERT INTO `wp_postmeta` VALUES("196", "23", "subtitulo_2", "Nossa Missão");
INSERT INTO `wp_postmeta` VALUES("197", "23", "_subtitulo_2", "field_5b4d02cf8851e");
INSERT INTO `wp_postmeta` VALUES("198", "23", "texto_subtitulo_2", "Ser reconhecido como referência em centro de Treinamento Personalizado.");
INSERT INTO `wp_postmeta` VALUES("199", "23", "_texto_subtitulo_2", "field_5b4d03b188521");
INSERT INTO `wp_postmeta` VALUES("200", "23", "imagem_subtitulo_2", "");
INSERT INTO `wp_postmeta` VALUES("201", "23", "_imagem_subtitulo_2", "field_5b4d385ac3520");
INSERT INTO `wp_postmeta` VALUES("202", "23", "subtitulo_3", "Nossos Valores");
INSERT INTO `wp_postmeta` VALUES("203", "23", "_subtitulo_3", "field_5b4d02e18851f");
INSERT INTO `wp_postmeta` VALUES("204", "23", "texto_subtitulo_3", "Prezar por trabalhar com pessoas dedicadas e responsáveis.");
INSERT INTO `wp_postmeta` VALUES("205", "23", "_texto_subtitulo_3", "field_5b4d036b88520");
INSERT INTO `wp_postmeta` VALUES("206", "23", "imagem_subtitulo_3", "");
INSERT INTO `wp_postmeta` VALUES("207", "23", "_imagem_subtitulo_3", "field_5b4d3866c3521");
INSERT INTO `wp_postmeta` VALUES("208", "24", "_wp_attached_file", "2018/07/nossa_visao-1.jpg");
INSERT INTO `wp_postmeta` VALUES("209", "24", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:629;s:4:\"file\";s:25:\"2018/07/nossa_visao-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"nossa_visao-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"nossa_visao-1-300x175.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"nossa_visao-1-768x447.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:447;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"nossa_visao-1-1024x596.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:596;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("210", "25", "_wp_attached_file", "2018/07/nossa_missao.jpeg");
INSERT INTO `wp_postmeta` VALUES("211", "25", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:25:\"2018/07/nossa_missao.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"nossa_missao-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"nossa_missao-300x169.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"nossa_missao-768x432.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"nossa_missao-1024x576.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("212", "26", "_wp_attached_file", "2018/07/nossos_valores.jpg");
INSERT INTO `wp_postmeta` VALUES("213", "26", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:602;s:6:\"height\";i:454;s:4:\"file\";s:26:\"2018/07/nossos_valores.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"nossos_valores-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"nossos_valores-300x226.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:226;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:7:\"matheus\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("214", "27", "titulo_sobre", "Sobre Nós");
INSERT INTO `wp_postmeta` VALUES("215", "27", "_titulo_sobre", "field_5b4cfe7253ed3");
INSERT INTO `wp_postmeta` VALUES("216", "27", "descricao_sobre", "");
INSERT INTO `wp_postmeta` VALUES("217", "27", "_descricao_sobre", "field_5b4d00ded5704");
INSERT INTO `wp_postmeta` VALUES("218", "27", "subtitulo_1", "Nossa Visão");
INSERT INTO `wp_postmeta` VALUES("219", "27", "_subtitulo_1", "field_5b4d02818851d");
INSERT INTO `wp_postmeta` VALUES("220", "27", "texto_subtitulo_1", "Ser um centro esportivo especializado na formação de alunos preparados.");
INSERT INTO `wp_postmeta` VALUES("221", "27", "_texto_subtitulo_1", "field_5b4d03ba88522");
INSERT INTO `wp_postmeta` VALUES("222", "27", "imagem_subtitulo_1", "22");
INSERT INTO `wp_postmeta` VALUES("223", "27", "_imagem_subtitulo_1", "field_5b4d37e3c351f");
INSERT INTO `wp_postmeta` VALUES("224", "27", "subtitulo_2", "Nossa Missão");
INSERT INTO `wp_postmeta` VALUES("225", "27", "_subtitulo_2", "field_5b4d02cf8851e");
INSERT INTO `wp_postmeta` VALUES("226", "27", "texto_subtitulo_2", "Ser reconhecido como referência em centro de Treinamento Personalizado.");
INSERT INTO `wp_postmeta` VALUES("227", "27", "_texto_subtitulo_2", "field_5b4d03b188521");
INSERT INTO `wp_postmeta` VALUES("228", "27", "imagem_subtitulo_2", "");
INSERT INTO `wp_postmeta` VALUES("229", "27", "_imagem_subtitulo_2", "field_5b4d385ac3520");
INSERT INTO `wp_postmeta` VALUES("230", "27", "subtitulo_3", "Nossos Valores");
INSERT INTO `wp_postmeta` VALUES("231", "27", "_subtitulo_3", "field_5b4d02e18851f");
INSERT INTO `wp_postmeta` VALUES("232", "27", "texto_subtitulo_3", "Prezar por trabalhar com pessoas dedicadas e responsáveis.");
INSERT INTO `wp_postmeta` VALUES("233", "27", "_texto_subtitulo_3", "field_5b4d036b88520");
INSERT INTO `wp_postmeta` VALUES("234", "27", "imagem_subtitulo_3", "26");
INSERT INTO `wp_postmeta` VALUES("235", "27", "_imagem_subtitulo_3", "field_5b4d3866c3521");
INSERT INTO `wp_postmeta` VALUES("236", "28", "titulo_sobre", "Sobre Nós");
INSERT INTO `wp_postmeta` VALUES("237", "28", "_titulo_sobre", "field_5b4cfe7253ed3");
INSERT INTO `wp_postmeta` VALUES("238", "28", "descricao_sobre", "");
INSERT INTO `wp_postmeta` VALUES("239", "28", "_descricao_sobre", "field_5b4d00ded5704");
INSERT INTO `wp_postmeta` VALUES("240", "28", "subtitulo_1", "Nossa Visão");
INSERT INTO `wp_postmeta` VALUES("241", "28", "_subtitulo_1", "field_5b4d02818851d");
INSERT INTO `wp_postmeta` VALUES("242", "28", "texto_subtitulo_1", "Ser um centro esportivo especializado na formação de alunos preparados.");
INSERT INTO `wp_postmeta` VALUES("243", "28", "_texto_subtitulo_1", "field_5b4d03ba88522");
INSERT INTO `wp_postmeta` VALUES("244", "28", "imagem_subtitulo_1", "22");
INSERT INTO `wp_postmeta` VALUES("245", "28", "_imagem_subtitulo_1", "field_5b4d37e3c351f");
INSERT INTO `wp_postmeta` VALUES("246", "28", "subtitulo_2", "Nossa Missão");
INSERT INTO `wp_postmeta` VALUES("247", "28", "_subtitulo_2", "field_5b4d02cf8851e");
INSERT INTO `wp_postmeta` VALUES("248", "28", "texto_subtitulo_2", "Ser reconhecido como referência em centro de Treinamento Personalizado.");
INSERT INTO `wp_postmeta` VALUES("249", "28", "_texto_subtitulo_2", "field_5b4d03b188521");
INSERT INTO `wp_postmeta` VALUES("250", "28", "imagem_subtitulo_2", "25");
INSERT INTO `wp_postmeta` VALUES("251", "28", "_imagem_subtitulo_2", "field_5b4d385ac3520");
INSERT INTO `wp_postmeta` VALUES("252", "28", "subtitulo_3", "Nossos Valores");
INSERT INTO `wp_postmeta` VALUES("253", "28", "_subtitulo_3", "field_5b4d02e18851f");
INSERT INTO `wp_postmeta` VALUES("254", "28", "texto_subtitulo_3", "Prezar por trabalhar com pessoas dedicadas e responsáveis.");
INSERT INTO `wp_postmeta` VALUES("255", "28", "_texto_subtitulo_3", "field_5b4d036b88520");
INSERT INTO `wp_postmeta` VALUES("256", "28", "imagem_subtitulo_3", "26");
INSERT INTO `wp_postmeta` VALUES("257", "28", "_imagem_subtitulo_3", "field_5b4d3866c3521");
INSERT INTO `wp_postmeta` VALUES("258", "29", "_wp_attached_file", "2018/07/nossos_valores-1.jpg");
INSERT INTO `wp_postmeta` VALUES("259", "29", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:1800;s:6:\"height\";i:912;s:4:\"file\";s:28:\"2018/07/nossos_valores-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"nossos_valores-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"nossos_valores-1-300x152.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"nossos_valores-1-768x389.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:389;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"nossos_valores-1-1024x519.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:519;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("260", "30", "titulo_sobre", "Sobre Nós");
INSERT INTO `wp_postmeta` VALUES("261", "30", "_titulo_sobre", "field_5b4cfe7253ed3");
INSERT INTO `wp_postmeta` VALUES("262", "30", "descricao_sobre", "");
INSERT INTO `wp_postmeta` VALUES("263", "30", "_descricao_sobre", "field_5b4d00ded5704");
INSERT INTO `wp_postmeta` VALUES("264", "30", "subtitulo_1", "Nossa Visão");
INSERT INTO `wp_postmeta` VALUES("265", "30", "_subtitulo_1", "field_5b4d02818851d");
INSERT INTO `wp_postmeta` VALUES("266", "30", "texto_subtitulo_1", "Ser um centro esportivo especializado na formação de alunos preparados.");
INSERT INTO `wp_postmeta` VALUES("267", "30", "_texto_subtitulo_1", "field_5b4d03ba88522");
INSERT INTO `wp_postmeta` VALUES("268", "30", "imagem_subtitulo_1", "22");
INSERT INTO `wp_postmeta` VALUES("269", "30", "_imagem_subtitulo_1", "field_5b4d37e3c351f");
INSERT INTO `wp_postmeta` VALUES("270", "30", "subtitulo_2", "Nossa Missão");
INSERT INTO `wp_postmeta` VALUES("271", "30", "_subtitulo_2", "field_5b4d02cf8851e");
INSERT INTO `wp_postmeta` VALUES("272", "30", "texto_subtitulo_2", "Ser reconhecido como referência em centro de Treinamento Personalizado.");
INSERT INTO `wp_postmeta` VALUES("273", "30", "_texto_subtitulo_2", "field_5b4d03b188521");
INSERT INTO `wp_postmeta` VALUES("274", "30", "imagem_subtitulo_2", "25");
INSERT INTO `wp_postmeta` VALUES("275", "30", "_imagem_subtitulo_2", "field_5b4d385ac3520");
INSERT INTO `wp_postmeta` VALUES("276", "30", "subtitulo_3", "Nossos Valores");
INSERT INTO `wp_postmeta` VALUES("277", "30", "_subtitulo_3", "field_5b4d02e18851f");
INSERT INTO `wp_postmeta` VALUES("278", "30", "texto_subtitulo_3", "Prezar por trabalhar com pessoas dedicadas e responsáveis.");
INSERT INTO `wp_postmeta` VALUES("279", "30", "_texto_subtitulo_3", "field_5b4d036b88520");
INSERT INTO `wp_postmeta` VALUES("280", "30", "imagem_subtitulo_3", "29");
INSERT INTO `wp_postmeta` VALUES("281", "30", "_imagem_subtitulo_3", "field_5b4d3866c3521");
INSERT INTO `wp_postmeta` VALUES("282", "31", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("284", "31", "position", "normal");
INSERT INTO `wp_postmeta` VALUES("285", "31", "layout", "no_box");
INSERT INTO `wp_postmeta` VALUES("286", "31", "hide_on_screen", "a:11:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:13:\"custom_fields\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:14:\"featured_image\";i:10;s:15:\"send-trackbacks\";}");
INSERT INTO `wp_postmeta` VALUES("287", "31", "_edit_lock", "1531971550:1");
INSERT INTO `wp_postmeta` VALUES("289", "31", "field_5b4ffe8994b58", "a:14:{s:3:\"key\";s:19:\"field_5b4ffe8994b58\";s:5:\"label\";s:28:\"Título da Página Serviços\";s:4:\"name\";s:15:\"titulo_servicos\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:88:\"Informar um título que irá aparecer como o título da seção de serviços da página.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:63:\"Nossas Serviços, Sobre os nossos serviços, Serviços, etc....\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:2:\"20\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}");
INSERT INTO `wp_postmeta` VALUES("290", "31", "field_5b5000c694b63", "a:14:{s:3:\"key\";s:19:\"field_5b5000c694b63\";s:5:\"label\";s:15:\"Valor do botão\";s:4:\"name\";s:11:\"valor_botao\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:57:\"Informar o texto que aparecerá escrito dentro do botão.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:70:\"EX: \"Obter serviço\", \"Comprar\", \"Saber Mais\", \"Inscrever-me\", etc ...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:2:\"20\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}");
INSERT INTO `wp_postmeta` VALUES("291", "31", "field_5b4ffedc94b59", "a:14:{s:3:\"key\";s:19:\"field_5b4ffedc94b59\";s:5:\"label\";s:16:\"Nome do Serviço\";s:4:\"name\";s:14:\"nome_servico_1\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:35:\"Nome do serviço que será prestado\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:2:\"50\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}");
INSERT INTO `wp_postmeta` VALUES("292", "31", "field_5b4fff1694b5a", "a:14:{s:3:\"key\";s:19:\"field_5b4fff1694b5a\";s:5:\"label\";s:16:\"Nome do Serviço\";s:4:\"name\";s:14:\"nome_servico_2\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:35:\"Nome do serviço que será prestado\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:2:\"50\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:11;}");
INSERT INTO `wp_postmeta` VALUES("293", "31", "field_5b4fff2594b5b", "a:14:{s:3:\"key\";s:19:\"field_5b4fff2594b5b\";s:5:\"label\";s:16:\"Nome do Serviço\";s:4:\"name\";s:14:\"nome_servico_3\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:35:\"Nome do serviço que será prestado\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:2:\"50\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:18;}");
INSERT INTO `wp_postmeta` VALUES("294", "31", "field_5b4fff3794b5c", "a:14:{s:3:\"key\";s:19:\"field_5b4fff3794b5c\";s:5:\"label\";s:17:\"Valor do Serviço\";s:4:\"name\";s:15:\"valor_servico_1\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:72:\"Informar o valor do serviço prestado, NÃO PRECISA POR O SÍMBOLO \"R$\".\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:4:\"0,00\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:2:\"10\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}");
INSERT INTO `wp_postmeta` VALUES("295", "31", "field_5b4fffc494b5f", "a:14:{s:3:\"key\";s:19:\"field_5b4fffc494b5f\";s:5:\"label\";s:17:\"Valor do Serviço\";s:4:\"name\";s:15:\"valor_servico_2\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:72:\"Informar o valor do serviço prestado, NÃO PRECISA POR O SÍMBOLO \"R$\".\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:4:\"0,00\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:2:\"10\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:12;}");
INSERT INTO `wp_postmeta` VALUES("296", "31", "field_5b4fffac94b5e", "a:14:{s:3:\"key\";s:19:\"field_5b4fffac94b5e\";s:5:\"label\";s:17:\"Valor do Serviço\";s:4:\"name\";s:15:\"valor_servico_3\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:72:\"Informar o valor do serviço prestado, NÃO PRECISA POR O SÍMBOLO \"R$\".\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:4:\"0,00\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:2:\"10\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:19;}");
INSERT INTO `wp_postmeta` VALUES("297", "31", "field_5b4fffef94b60", "a:14:{s:3:\"key\";s:19:\"field_5b4fffef94b60\";s:5:\"label\";s:21:\"Nota Sobre o Serviço\";s:4:\"name\";s:20:\"nota_sobre_servico_1\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:46:\"Informar alguma Nota em relação ao serviço.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:80:\"EX: Este serviço somente está disponível para alunos matriculados desde 2017.\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:3:\"100\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}");
INSERT INTO `wp_postmeta` VALUES("298", "31", "field_5b50005094b61", "a:14:{s:3:\"key\";s:19:\"field_5b50005094b61\";s:5:\"label\";s:21:\"Nota Sobre o Serviço\";s:4:\"name\";s:20:\"nota_sobre_servico_2\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:46:\"Informar alguma Nota em relação ao serviço.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:80:\"EX: Este serviço somente está disponível para alunos matriculados desde 2017.\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:3:\"100\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:13;}");
INSERT INTO `wp_postmeta` VALUES("299", "31", "field_5b50006194b62", "a:14:{s:3:\"key\";s:19:\"field_5b50006194b62\";s:5:\"label\";s:21:\"Nota Sobre o Serviço\";s:4:\"name\";s:20:\"nota_sobre_servico_3\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:46:\"Informar alguma Nota em relação ao serviço.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:80:\"EX: Este serviço somente está disponível para alunos matriculados desde 2017.\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:3:\"100\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:20;}");
INSERT INTO `wp_postmeta` VALUES("302", "31", "field_5b5001aa73622", "a:8:{s:3:\"key\";s:19:\"field_5b5001aa73622\";s:5:\"label\";s:24:\"Serviços da Maxtraining\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}");
INSERT INTO `wp_postmeta` VALUES("303", "31", "field_5b5001dd73623", "a:8:{s:3:\"key\";s:19:\"field_5b5001dd73623\";s:5:\"label\";s:24:\"Serviços da Maxtraining\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:10;}");
INSERT INTO `wp_postmeta` VALUES("304", "31", "field_5b5001ea73624", "a:8:{s:3:\"key\";s:19:\"field_5b5001ea73624\";s:5:\"label\";s:24:\"Serviços da Maxtraining\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:17;}");
INSERT INTO `wp_postmeta` VALUES("306", "32", "titulo_servicos", "Nossos Serviços");
INSERT INTO `wp_postmeta` VALUES("307", "32", "_titulo_servicos", "field_5b4ffe8994b58");
INSERT INTO `wp_postmeta` VALUES("308", "32", "valor_botao", "Inscrever-se");
INSERT INTO `wp_postmeta` VALUES("309", "32", "_valor_botao", "field_5b5000c694b63");
INSERT INTO `wp_postmeta` VALUES("310", "32", "nome_servico_1", "Cross-Max");
INSERT INTO `wp_postmeta` VALUES("311", "32", "_nome_servico_1", "field_5b4ffedc94b59");
INSERT INTO `wp_postmeta` VALUES("312", "32", "valor_servico_1", "0,00");
INSERT INTO `wp_postmeta` VALUES("313", "32", "_valor_servico_1", "field_5b4fff3794b5c");
INSERT INTO `wp_postmeta` VALUES("314", "32", "nota_sobre_servico_1", "5 Dias marcados/semana");
INSERT INTO `wp_postmeta` VALUES("315", "32", "_nota_sobre_servico_1", "field_5b4fffef94b60");
INSERT INTO `wp_postmeta` VALUES("316", "32", "nome_servico_2", "Personal Compartilhado");
INSERT INTO `wp_postmeta` VALUES("317", "32", "_nome_servico_2", "field_5b4fff1694b5a");
INSERT INTO `wp_postmeta` VALUES("318", "32", "valor_servico_2", "0,00");
INSERT INTO `wp_postmeta` VALUES("319", "32", "_valor_servico_2", "field_5b4fffc494b5f");
INSERT INTO `wp_postmeta` VALUES("320", "32", "nota_sobre_servico_2", "5 Dias marcados/semana");
INSERT INTO `wp_postmeta` VALUES("321", "32", "_nota_sobre_servico_2", "field_5b50005094b61");
INSERT INTO `wp_postmeta` VALUES("322", "32", "nome_servico_3", "Personal Premium");
INSERT INTO `wp_postmeta` VALUES("323", "32", "_nome_servico_3", "field_5b4fff2594b5b");
INSERT INTO `wp_postmeta` VALUES("324", "32", "valor_servico_3", "0,00");
INSERT INTO `wp_postmeta` VALUES("325", "32", "_valor_servico_3", "field_5b4fffac94b5e");
INSERT INTO `wp_postmeta` VALUES("326", "32", "nota_sobre_servico_3", "5 Dias marcados/semana");
INSERT INTO `wp_postmeta` VALUES("327", "32", "_nota_sobre_servico_3", "field_5b50006194b62");
INSERT INTO `wp_postmeta` VALUES("328", "8", "titulo_servicos", "Nossos Serviços");
INSERT INTO `wp_postmeta` VALUES("329", "8", "_titulo_servicos", "field_5b4ffe8994b58");
INSERT INTO `wp_postmeta` VALUES("330", "8", "valor_botao", "Inscrever-se");
INSERT INTO `wp_postmeta` VALUES("331", "8", "_valor_botao", "field_5b5000c694b63");
INSERT INTO `wp_postmeta` VALUES("332", "8", "nome_servico_1", "Cross-Max");
INSERT INTO `wp_postmeta` VALUES("333", "8", "_nome_servico_1", "field_5b4ffedc94b59");
INSERT INTO `wp_postmeta` VALUES("334", "8", "valor_servico_1", "0,00");
INSERT INTO `wp_postmeta` VALUES("335", "8", "_valor_servico_1", "field_5b4fff3794b5c");
INSERT INTO `wp_postmeta` VALUES("336", "8", "nota_sobre_servico_1", "5 Dias marcados/semana");
INSERT INTO `wp_postmeta` VALUES("337", "8", "_nota_sobre_servico_1", "field_5b4fffef94b60");
INSERT INTO `wp_postmeta` VALUES("338", "8", "nome_servico_2", "Personal Compartilhado");
INSERT INTO `wp_postmeta` VALUES("339", "8", "_nome_servico_2", "field_5b4fff1694b5a");
INSERT INTO `wp_postmeta` VALUES("340", "8", "valor_servico_2", "0,00");
INSERT INTO `wp_postmeta` VALUES("341", "8", "_valor_servico_2", "field_5b4fffc494b5f");
INSERT INTO `wp_postmeta` VALUES("342", "8", "nota_sobre_servico_2", "5 Dias marcados/semana");
INSERT INTO `wp_postmeta` VALUES("343", "8", "_nota_sobre_servico_2", "field_5b50005094b61");
INSERT INTO `wp_postmeta` VALUES("344", "8", "nome_servico_3", "Personal Premium");
INSERT INTO `wp_postmeta` VALUES("345", "8", "_nome_servico_3", "field_5b4fff2594b5b");
INSERT INTO `wp_postmeta` VALUES("346", "8", "valor_servico_3", "0,00");
INSERT INTO `wp_postmeta` VALUES("347", "8", "_valor_servico_3", "field_5b4fffac94b5e");
INSERT INTO `wp_postmeta` VALUES("348", "8", "nota_sobre_servico_3", "5 Dias marcados/semana");
INSERT INTO `wp_postmeta` VALUES("349", "8", "_nota_sobre_servico_3", "field_5b50006194b62");
INSERT INTO `wp_postmeta` VALUES("350", "31", "field_5b50031cc2747", "a:14:{s:3:\"key\";s:19:\"field_5b50031cc2747\";s:5:\"label\";s:34:\"Link do formulário de inscrição\";s:4:\"name\";s:23:\"link_inscricao_servicos\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:78:\"Informe o link (https:// ...) para o formulário de inscrição dos serviços.\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:87:\"EX: \"https://www.linkdoformulariodeinscricaoparaosservicosdamax.com.br/formulario ....\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}");
INSERT INTO `wp_postmeta` VALUES("352", "33", "titulo_servicos", "Nossos Serviços");
INSERT INTO `wp_postmeta` VALUES("353", "33", "_titulo_servicos", "field_5b4ffe8994b58");
INSERT INTO `wp_postmeta` VALUES("354", "33", "link_inscricao_servicos", "https://docs.google.com/forms/d/e/1FAIpQLSd0KEGyKrLHB7mexFdvC40RfdB4-Bxud8uSpc6SQTPsRopdTw/viewform");
INSERT INTO `wp_postmeta` VALUES("355", "33", "_link_inscricao_servicos", "field_5b50031cc2747");
INSERT INTO `wp_postmeta` VALUES("356", "33", "valor_botao", "Inscrever-se");
INSERT INTO `wp_postmeta` VALUES("357", "33", "_valor_botao", "field_5b5000c694b63");
INSERT INTO `wp_postmeta` VALUES("358", "33", "nome_servico_1", "Cross-Max");
INSERT INTO `wp_postmeta` VALUES("359", "33", "_nome_servico_1", "field_5b4ffedc94b59");
INSERT INTO `wp_postmeta` VALUES("360", "33", "valor_servico_1", "0,00");
INSERT INTO `wp_postmeta` VALUES("361", "33", "_valor_servico_1", "field_5b4fff3794b5c");
INSERT INTO `wp_postmeta` VALUES("362", "33", "nota_sobre_servico_1", "5 Dias marcados/semana");
INSERT INTO `wp_postmeta` VALUES("363", "33", "_nota_sobre_servico_1", "field_5b4fffef94b60");
INSERT INTO `wp_postmeta` VALUES("364", "33", "nome_servico_2", "Personal Compartilhado");
INSERT INTO `wp_postmeta` VALUES("365", "33", "_nome_servico_2", "field_5b4fff1694b5a");
INSERT INTO `wp_postmeta` VALUES("366", "33", "valor_servico_2", "0,00");
INSERT INTO `wp_postmeta` VALUES("367", "33", "_valor_servico_2", "field_5b4fffc494b5f");
INSERT INTO `wp_postmeta` VALUES("368", "33", "nota_sobre_servico_2", "5 Dias marcados/semana");
INSERT INTO `wp_postmeta` VALUES("369", "33", "_nota_sobre_servico_2", "field_5b50005094b61");
INSERT INTO `wp_postmeta` VALUES("370", "33", "nome_servico_3", "Personal Premium");
INSERT INTO `wp_postmeta` VALUES("371", "33", "_nome_servico_3", "field_5b4fff2594b5b");
INSERT INTO `wp_postmeta` VALUES("372", "33", "valor_servico_3", "0,00");
INSERT INTO `wp_postmeta` VALUES("373", "33", "_valor_servico_3", "field_5b4fffac94b5e");
INSERT INTO `wp_postmeta` VALUES("374", "33", "nota_sobre_servico_3", "5 Dias marcados/semana");
INSERT INTO `wp_postmeta` VALUES("375", "33", "_nota_sobre_servico_3", "field_5b50006194b62");
INSERT INTO `wp_postmeta` VALUES("376", "8", "link_inscricao_servicos", "https://docs.google.com/forms/d/e/1FAIpQLSd0KEGyKrLHB7mexFdvC40RfdB4-Bxud8uSpc6SQTPsRopdTw/viewform");
INSERT INTO `wp_postmeta` VALUES("377", "8", "_link_inscricao_servicos", "field_5b50031cc2747");
INSERT INTO `wp_postmeta` VALUES("378", "31", "field_5b50049038367", "a:8:{s:3:\"key\";s:19:\"field_5b50049038367\";s:5:\"label\";s:11:\"Modalidades\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:24;}");
INSERT INTO `wp_postmeta` VALUES("381", "31", "field_5b50067a3ec21", "a:14:{s:3:\"key\";s:19:\"field_5b50067a3ec21\";s:5:\"label\";s:26:\"Item da lista de serviços\";s:4:\"name\";s:33:\"item_lista_descricao_servicos_1_1\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:41:\"Informar um item que descreva o serviço.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:55:\"EX: \"Horários flexíveis\", \"Personal trainer\", etc ...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:3:\"100\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:7;}");
INSERT INTO `wp_postmeta` VALUES("382", "31", "field_5b5007203ec22", "a:14:{s:3:\"key\";s:19:\"field_5b5007203ec22\";s:5:\"label\";s:26:\"Item da lista de serviços\";s:4:\"name\";s:33:\"item_lista_descricao_servicos_1_2\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:41:\"Informar um item que descreva o serviço.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:55:\"EX: \"Horários flexíveis\", \"Personal trainer\", etc ...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:3:\"100\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:8;}");
INSERT INTO `wp_postmeta` VALUES("383", "31", "field_5b5007293ec23", "a:14:{s:3:\"key\";s:19:\"field_5b5007293ec23\";s:5:\"label\";s:26:\"Item da lista de serviços\";s:4:\"name\";s:33:\"item_lista_descricao_servicos_1_3\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:41:\"Informar um item que descreva o serviço.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:55:\"EX: \"Horários flexíveis\", \"Personal trainer\", etc ...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:3:\"100\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:9;}");
INSERT INTO `wp_postmeta` VALUES("384", "31", "field_5b50073d3ec24", "a:14:{s:3:\"key\";s:19:\"field_5b50073d3ec24\";s:5:\"label\";s:26:\"Item da lista de serviços\";s:4:\"name\";s:33:\"item_lista_descricao_servicos_2_1\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:41:\"Informar um item que descreva o serviço.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:55:\"EX: \"Horários flexíveis\", \"Personal trainer\", etc ...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:3:\"100\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:14;}");
INSERT INTO `wp_postmeta` VALUES("385", "31", "field_5b5007573ec25", "a:14:{s:3:\"key\";s:19:\"field_5b5007573ec25\";s:5:\"label\";s:26:\"Item da lista de serviços\";s:4:\"name\";s:33:\"item_lista_descricao_servicos_2_2\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:41:\"Informar um item que descreva o serviço.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:55:\"EX: \"Horários flexíveis\", \"Personal trainer\", etc ...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:3:\"100\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:15;}");
INSERT INTO `wp_postmeta` VALUES("386", "31", "field_5b50075f3ec26", "a:14:{s:3:\"key\";s:19:\"field_5b50075f3ec26\";s:5:\"label\";s:26:\"Item da lista de serviços\";s:4:\"name\";s:33:\"item_lista_descricao_servicos_2_3\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:41:\"Informar um item que descreva o serviço.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:55:\"EX: \"Horários flexíveis\", \"Personal trainer\", etc ...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:3:\"100\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:16;}");
INSERT INTO `wp_postmeta` VALUES("387", "31", "field_5b50076e3ec27", "a:14:{s:3:\"key\";s:19:\"field_5b50076e3ec27\";s:5:\"label\";s:26:\"Item da lista de serviços\";s:4:\"name\";s:33:\"item_lista_descricao_servicos_3_1\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:41:\"Informar um item que descreva o serviço.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:55:\"EX: \"Horários flexíveis\", \"Personal trainer\", etc ...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:3:\"100\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:21;}");
INSERT INTO `wp_postmeta` VALUES("388", "31", "field_5b5007803ec28", "a:14:{s:3:\"key\";s:19:\"field_5b5007803ec28\";s:5:\"label\";s:26:\"Item da lista de serviços\";s:4:\"name\";s:33:\"item_lista_descricao_servicos_3_2\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:41:\"Informar um item que descreva o serviço.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:55:\"EX: \"Horários flexíveis\", \"Personal trainer\", etc ...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:3:\"100\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:22;}");
INSERT INTO `wp_postmeta` VALUES("389", "31", "field_5b5007903ec29", "a:14:{s:3:\"key\";s:19:\"field_5b5007903ec29\";s:5:\"label\";s:26:\"Item da lista de serviços\";s:4:\"name\";s:33:\"item_lista_descricao_servicos_3_3\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:41:\"Informar um item que descreva o serviço.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:55:\"EX: \"Horários flexíveis\", \"Personal trainer\", etc ...\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:3:\"100\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:23;}");
INSERT INTO `wp_postmeta` VALUES("390", "31", "rule", "a:5:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"page-servicos.php\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}");
INSERT INTO `wp_postmeta` VALUES("391", "8", "item_lista_descricao_servicos_1_1", "AvaliaçãoFuncional");
INSERT INTO `wp_postmeta` VALUES("392", "8", "_item_lista_descricao_servicos_1_1", "field_5b50067a3ec21");
INSERT INTO `wp_postmeta` VALUES("393", "8", "item_lista_descricao_servicos_1_2", "Personal Trainer");
INSERT INTO `wp_postmeta` VALUES("394", "8", "_item_lista_descricao_servicos_1_2", "field_5b5007203ec22");
INSERT INTO `wp_postmeta` VALUES("395", "8", "item_lista_descricao_servicos_1_3", "Atendimento de excelente qualidade");
INSERT INTO `wp_postmeta` VALUES("396", "8", "_item_lista_descricao_servicos_1_3", "field_5b5007293ec23");
INSERT INTO `wp_postmeta` VALUES("397", "8", "item_lista_descricao_servicos_2_1", "Avaliação Funcional");
INSERT INTO `wp_postmeta` VALUES("398", "8", "_item_lista_descricao_servicos_2_1", "field_5b50073d3ec24");
INSERT INTO `wp_postmeta` VALUES("399", "8", "item_lista_descricao_servicos_2_2", "Personal Trainer");
INSERT INTO `wp_postmeta` VALUES("400", "8", "_item_lista_descricao_servicos_2_2", "field_5b5007573ec25");
INSERT INTO `wp_postmeta` VALUES("401", "8", "item_lista_descricao_servicos_2_3", "Atendimento de excelente qualidade");
INSERT INTO `wp_postmeta` VALUES("402", "8", "_item_lista_descricao_servicos_2_3", "field_5b50075f3ec26");
INSERT INTO `wp_postmeta` VALUES("403", "8", "item_lista_descricao_servicos_3_1", "Avaliação Funcional");
INSERT INTO `wp_postmeta` VALUES("404", "8", "_item_lista_descricao_servicos_3_1", "field_5b50076e3ec27");
INSERT INTO `wp_postmeta` VALUES("405", "8", "item_lista_descricao_servicos_3_2", "Personal Trainer");
INSERT INTO `wp_postmeta` VALUES("406", "8", "_item_lista_descricao_servicos_3_2", "field_5b5007803ec28");
INSERT INTO `wp_postmeta` VALUES("407", "8", "item_lista_descricao_servicos_3_3", "Atendimento de excelente qualidade");
INSERT INTO `wp_postmeta` VALUES("408", "8", "_item_lista_descricao_servicos_3_3", "field_5b5007903ec29");
INSERT INTO `wp_postmeta` VALUES("409", "34", "titulo_servicos", "Nossos Serviços");
INSERT INTO `wp_postmeta` VALUES("410", "34", "_titulo_servicos", "field_5b4ffe8994b58");
INSERT INTO `wp_postmeta` VALUES("411", "34", "link_inscricao_servicos", "https://docs.google.com/forms/d/e/1FAIpQLSd0KEGyKrLHB7mexFdvC40RfdB4-Bxud8uSpc6SQTPsRopdTw/viewform");
INSERT INTO `wp_postmeta` VALUES("412", "34", "_link_inscricao_servicos", "field_5b50031cc2747");
INSERT INTO `wp_postmeta` VALUES("413", "34", "valor_botao", "Inscrever-se");
INSERT INTO `wp_postmeta` VALUES("414", "34", "_valor_botao", "field_5b5000c694b63");
INSERT INTO `wp_postmeta` VALUES("415", "34", "nome_servico_1", "Cross-Max");
INSERT INTO `wp_postmeta` VALUES("416", "34", "_nome_servico_1", "field_5b4ffedc94b59");
INSERT INTO `wp_postmeta` VALUES("417", "34", "valor_servico_1", "0,00");
INSERT INTO `wp_postmeta` VALUES("418", "34", "_valor_servico_1", "field_5b4fff3794b5c");
INSERT INTO `wp_postmeta` VALUES("419", "34", "nota_sobre_servico_1", "5 Dias marcados/semana");
INSERT INTO `wp_postmeta` VALUES("420", "34", "_nota_sobre_servico_1", "field_5b4fffef94b60");
INSERT INTO `wp_postmeta` VALUES("421", "34", "item_lista_descricao_servicos_1_1", "AvaliaçãoFuncional");
INSERT INTO `wp_postmeta` VALUES("422", "34", "_item_lista_descricao_servicos_1_1", "field_5b50067a3ec21");
INSERT INTO `wp_postmeta` VALUES("423", "34", "item_lista_descricao_servicos_1_2", "Personal Trainer");
INSERT INTO `wp_postmeta` VALUES("424", "34", "_item_lista_descricao_servicos_1_2", "field_5b5007203ec22");
INSERT INTO `wp_postmeta` VALUES("425", "34", "item_lista_descricao_servicos_1_3", "Atendimento de excelente qualidade");
INSERT INTO `wp_postmeta` VALUES("426", "34", "_item_lista_descricao_servicos_1_3", "field_5b5007293ec23");
INSERT INTO `wp_postmeta` VALUES("427", "34", "nome_servico_2", "Personal Compartilhado");
INSERT INTO `wp_postmeta` VALUES("428", "34", "_nome_servico_2", "field_5b4fff1694b5a");
INSERT INTO `wp_postmeta` VALUES("429", "34", "valor_servico_2", "0,00");
INSERT INTO `wp_postmeta` VALUES("430", "34", "_valor_servico_2", "field_5b4fffc494b5f");
INSERT INTO `wp_postmeta` VALUES("431", "34", "nota_sobre_servico_2", "5 Dias marcados/semana");
INSERT INTO `wp_postmeta` VALUES("432", "34", "_nota_sobre_servico_2", "field_5b50005094b61");
INSERT INTO `wp_postmeta` VALUES("433", "34", "item_lista_descricao_servicos_2_1", "Avaliação Funcional");
INSERT INTO `wp_postmeta` VALUES("434", "34", "_item_lista_descricao_servicos_2_1", "field_5b50073d3ec24");
INSERT INTO `wp_postmeta` VALUES("435", "34", "item_lista_descricao_servicos_2_2", "Personal Trainer");
INSERT INTO `wp_postmeta` VALUES("436", "34", "_item_lista_descricao_servicos_2_2", "field_5b5007573ec25");
INSERT INTO `wp_postmeta` VALUES("437", "34", "item_lista_descricao_servicos_2_3", "Atendimento de excelente qualidade");
INSERT INTO `wp_postmeta` VALUES("438", "34", "_item_lista_descricao_servicos_2_3", "field_5b50075f3ec26");
INSERT INTO `wp_postmeta` VALUES("439", "34", "nome_servico_3", "Personal Premium");
INSERT INTO `wp_postmeta` VALUES("440", "34", "_nome_servico_3", "field_5b4fff2594b5b");
INSERT INTO `wp_postmeta` VALUES("441", "34", "valor_servico_3", "0,00");
INSERT INTO `wp_postmeta` VALUES("442", "34", "_valor_servico_3", "field_5b4fffac94b5e");
INSERT INTO `wp_postmeta` VALUES("443", "34", "nota_sobre_servico_3", "5 Dias marcados/semana");
INSERT INTO `wp_postmeta` VALUES("444", "34", "_nota_sobre_servico_3", "field_5b50006194b62");
INSERT INTO `wp_postmeta` VALUES("445", "34", "item_lista_descricao_servicos_3_1", "Avaliação Funcional");
INSERT INTO `wp_postmeta` VALUES("446", "34", "_item_lista_descricao_servicos_3_1", "field_5b50076e3ec27");
INSERT INTO `wp_postmeta` VALUES("447", "34", "item_lista_descricao_servicos_3_2", "Personal Trainer");
INSERT INTO `wp_postmeta` VALUES("448", "34", "_item_lista_descricao_servicos_3_2", "field_5b5007803ec28");
INSERT INTO `wp_postmeta` VALUES("449", "34", "item_lista_descricao_servicos_3_3", "Atendimento de excelente qualidade");
INSERT INTO `wp_postmeta` VALUES("450", "34", "_item_lista_descricao_servicos_3_3", "field_5b5007903ec29");
INSERT INTO `wp_postmeta` VALUES("451", "36", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("452", "36", "field_5b5008df9ef36", "a:14:{s:3:\"key\";s:19:\"field_5b5008df9ef36\";s:5:\"label\";s:16:\"Link do Facebook\";s:4:\"name\";s:16:\"link_do_facebook\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:28:\"Informar o link do facebook.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:1:\"#\";s:11:\"placeholder\";s:42:\"Ex: \"https://facebook.com/nome_de_usuario\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}");
INSERT INTO `wp_postmeta` VALUES("453", "36", "field_5b5009239ef37", "a:14:{s:3:\"key\";s:19:\"field_5b5009239ef37\";s:5:\"label\";s:17:\"Link do Instagram\";s:4:\"name\";s:17:\"link_do_instagram\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:29:\"Informar o link do instagram.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:1:\"#\";s:11:\"placeholder\";s:43:\"Ex: \"https://instagram.com/nome_de_usuario\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}");
INSERT INTO `wp_postmeta` VALUES("455", "36", "position", "normal");
INSERT INTO `wp_postmeta` VALUES("456", "36", "layout", "no_box");
INSERT INTO `wp_postmeta` VALUES("457", "36", "hide_on_screen", "a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:13:\"custom_fields\";i:4;s:10:\"discussion\";i:5;s:8:\"comments\";i:6;s:9:\"revisions\";i:7;s:4:\"slug\";i:8;s:6:\"author\";i:9;s:6:\"format\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}");
INSERT INTO `wp_postmeta` VALUES("458", "36", "_edit_lock", "1531971929:1");
INSERT INTO `wp_postmeta` VALUES("459", "36", "rule", "a:5:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"footer.php\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}");
INSERT INTO `wp_postmeta` VALUES("460", "37", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("461", "37", "_wp_page_template", "footer.php");
INSERT INTO `wp_postmeta` VALUES("462", "38", "link_do_facebook", "#");
INSERT INTO `wp_postmeta` VALUES("463", "38", "_link_do_facebook", "field_5b5008df9ef36");
INSERT INTO `wp_postmeta` VALUES("464", "38", "link_do_instagram", "#");
INSERT INTO `wp_postmeta` VALUES("465", "38", "_link_do_instagram", "field_5b5009239ef37");
INSERT INTO `wp_postmeta` VALUES("466", "37", "link_do_facebook", "https://www.facebook.com/MaxTraining-459912497707099/");
INSERT INTO `wp_postmeta` VALUES("467", "37", "_link_do_facebook", "field_5b5008df9ef36");
INSERT INTO `wp_postmeta` VALUES("468", "37", "link_do_instagram", "https://www.instagram.com/maxtrainingpicos/");
INSERT INTO `wp_postmeta` VALUES("469", "37", "_link_do_instagram", "field_5b5009239ef37");
INSERT INTO `wp_postmeta` VALUES("470", "37", "_edit_lock", "1531972546:1");
INSERT INTO `wp_postmeta` VALUES("471", "39", "link_do_facebook", "https://www.facebook.com/MaxTraining-459912497707099/");
INSERT INTO `wp_postmeta` VALUES("472", "39", "_link_do_facebook", "field_5b5008df9ef36");
INSERT INTO `wp_postmeta` VALUES("473", "39", "link_do_instagram", "https://www.instagram.com/maxtrainingpicos/");
INSERT INTO `wp_postmeta` VALUES("474", "39", "_link_do_instagram", "field_5b5009239ef37");
INSERT INTO `wp_postmeta` VALUES("475", "40", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("476", "40", "field_5b500c5e16108", "a:14:{s:3:\"key\";s:19:\"field_5b500c5e16108\";s:5:\"label\";s:5:\"Email\";s:4:\"name\";s:16:\"email_de_contato\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:29:\"Informar o e-mail de contato.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:15:\"email@email.com\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:2:\"80\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}");
INSERT INTO `wp_postmeta` VALUES("477", "40", "field_5b500c8c16109", "a:14:{s:3:\"key\";s:19:\"field_5b500c8c16109\";s:5:\"label\";s:20:\"Telefones de contato\";s:4:\"name\";s:20:\"telefones_de_contato\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:93:\"Informe os telefones de contato separados pelo código \"<br/>\" caso haja mais de um telefone.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:21:\"(DDD) Numero-Telefone\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}");
INSERT INTO `wp_postmeta` VALUES("478", "40", "field_5b500cc41610a", "a:14:{s:3:\"key\";s:19:\"field_5b500cc41610a\";s:5:\"label\";s:16:\"Cidade de Origem\";s:4:\"name\";s:16:\"cidade_de_origem\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:14:\"Nome da cidade\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:2:\"30\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}");
INSERT INTO `wp_postmeta` VALUES("479", "40", "field_5b500ce11610b", "a:14:{s:3:\"key\";s:19:\"field_5b500ce11610b\";s:5:\"label\";s:16:\"Estado de Origem\";s:4:\"name\";s:16:\"estado_de_origem\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:27:\"Estado escrito por extenso.\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:2:\"30\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}");
INSERT INTO `wp_postmeta` VALUES("480", "40", "field_5b500d141610c", "a:14:{s:3:\"key\";s:19:\"field_5b500d141610c\";s:5:\"label\";s:15:\"País de Origem\";s:4:\"name\";s:14:\"pais_de_origem\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:36:\"País de Origem escrito por extenso.\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:2:\"20\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}");
INSERT INTO `wp_postmeta` VALUES("481", "40", "field_5b500d3b1610d", "a:14:{s:3:\"key\";s:19:\"field_5b500d3b1610d\";s:5:\"label\";s:17:\"Endereço Físico\";s:4:\"name\";s:15:\"endereco_fisico\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:47:\"Informe a Rua e Número separados por vírgula.\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:3:\"100\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}");
INSERT INTO `wp_postmeta` VALUES("482", "40", "field_5b500d701610e", "a:14:{s:3:\"key\";s:19:\"field_5b500d701610e\";s:5:\"label\";s:6:\"Bairro\";s:4:\"name\";s:6:\"bairro\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:20:\"Informe o seu Bairro\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:2:\"50\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}");
INSERT INTO `wp_postmeta` VALUES("484", "40", "position", "normal");
INSERT INTO `wp_postmeta` VALUES("485", "40", "layout", "no_box");
INSERT INTO `wp_postmeta` VALUES("486", "40", "hide_on_screen", "a:11:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:13:\"custom_fields\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:14:\"featured_image\";i:10;s:15:\"send-trackbacks\";}");
INSERT INTO `wp_postmeta` VALUES("487", "40", "_edit_lock", "1531974087:1");
INSERT INTO `wp_postmeta` VALUES("488", "41", "email_de_contato", "ctmaxtraining@gmail.com");
INSERT INTO `wp_postmeta` VALUES("489", "41", "_email_de_contato", "field_5b500c5e16108");
INSERT INTO `wp_postmeta` VALUES("490", "41", "telefones_de_contato", "+55 (89) 99934-0404 <br/> +55 (89) 98804-9561");
INSERT INTO `wp_postmeta` VALUES("491", "41", "_telefones_de_contato", "field_5b500c8c16109");
INSERT INTO `wp_postmeta` VALUES("492", "41", "cidade_de_origem", "Picos");
INSERT INTO `wp_postmeta` VALUES("493", "41", "_cidade_de_origem", "field_5b500cc41610a");
INSERT INTO `wp_postmeta` VALUES("494", "41", "estado_de_origem", "Piauí");
INSERT INTO `wp_postmeta` VALUES("495", "41", "_estado_de_origem", "field_5b500ce11610b");
INSERT INTO `wp_postmeta` VALUES("496", "41", "pais_de_origem", "Brasil");
INSERT INTO `wp_postmeta` VALUES("497", "41", "_pais_de_origem", "field_5b500d141610c");
INSERT INTO `wp_postmeta` VALUES("498", "41", "endereco_fisico", "RUA BENEDITO PORTELA, 560. ");
INSERT INTO `wp_postmeta` VALUES("499", "41", "_endereco_fisico", "field_5b500d3b1610d");
INSERT INTO `wp_postmeta` VALUES("500", "41", "bairro", "Centro");
INSERT INTO `wp_postmeta` VALUES("501", "41", "_bairro", "field_5b500d701610e");
INSERT INTO `wp_postmeta` VALUES("502", "10", "email_de_contato", "ctmaxtraining@gmail.com");
INSERT INTO `wp_postmeta` VALUES("503", "10", "_email_de_contato", "field_5b500c5e16108");
INSERT INTO `wp_postmeta` VALUES("504", "10", "telefones_de_contato", "+55 (89) 99934-0404 <br/> +55 (89) 98804-9561");
INSERT INTO `wp_postmeta` VALUES("505", "10", "_telefones_de_contato", "field_5b500c8c16109");
INSERT INTO `wp_postmeta` VALUES("506", "10", "cidade_de_origem", "Picos");
INSERT INTO `wp_postmeta` VALUES("507", "10", "_cidade_de_origem", "field_5b500cc41610a");
INSERT INTO `wp_postmeta` VALUES("508", "10", "estado_de_origem", "Piauí");
INSERT INTO `wp_postmeta` VALUES("509", "10", "_estado_de_origem", "field_5b500ce11610b");
INSERT INTO `wp_postmeta` VALUES("510", "10", "pais_de_origem", "Brasil");
INSERT INTO `wp_postmeta` VALUES("511", "10", "_pais_de_origem", "field_5b500d141610c");
INSERT INTO `wp_postmeta` VALUES("512", "10", "endereco_fisico", "RUA BENEDITO PORTELA, 560. ");
INSERT INTO `wp_postmeta` VALUES("513", "10", "_endereco_fisico", "field_5b500d3b1610d");
INSERT INTO `wp_postmeta` VALUES("514", "10", "bairro", "Centro");
INSERT INTO `wp_postmeta` VALUES("515", "10", "_bairro", "field_5b500d701610e");
INSERT INTO `wp_postmeta` VALUES("517", "42", "email_de_contato", "ctmaxtraining@gmail.com");
INSERT INTO `wp_postmeta` VALUES("518", "42", "_email_de_contato", "field_5b500c5e16108");
INSERT INTO `wp_postmeta` VALUES("519", "42", "telefones_de_contato", "+55 (89) 99934-0404");
INSERT INTO `wp_postmeta` VALUES("520", "42", "_telefones_de_contato", "field_5b500c8c16109");
INSERT INTO `wp_postmeta` VALUES("521", "42", "cidade_de_origem", "Picos");
INSERT INTO `wp_postmeta` VALUES("522", "42", "_cidade_de_origem", "field_5b500cc41610a");
INSERT INTO `wp_postmeta` VALUES("523", "42", "estado_de_origem", "Piauí");
INSERT INTO `wp_postmeta` VALUES("524", "42", "_estado_de_origem", "field_5b500ce11610b");
INSERT INTO `wp_postmeta` VALUES("525", "42", "pais_de_origem", "Brasil");
INSERT INTO `wp_postmeta` VALUES("526", "42", "_pais_de_origem", "field_5b500d141610c");
INSERT INTO `wp_postmeta` VALUES("527", "42", "endereco_fisico", "RUA BENEDITO PORTELA, 560. ");
INSERT INTO `wp_postmeta` VALUES("528", "42", "_endereco_fisico", "field_5b500d3b1610d");
INSERT INTO `wp_postmeta` VALUES("529", "42", "bairro", "Centro");
INSERT INTO `wp_postmeta` VALUES("530", "42", "_bairro", "field_5b500d701610e");
INSERT INTO `wp_postmeta` VALUES("532", "43", "email_de_contato", "ctmaxtraining@gmail.com");
INSERT INTO `wp_postmeta` VALUES("533", "43", "_email_de_contato", "field_5b500c5e16108");
INSERT INTO `wp_postmeta` VALUES("534", "43", "telefones_de_contato", "+55 (89) 99934-0404 <br/> +55 (89) 98804-9561");
INSERT INTO `wp_postmeta` VALUES("535", "43", "_telefones_de_contato", "field_5b500c8c16109");
INSERT INTO `wp_postmeta` VALUES("536", "43", "cidade_de_origem", "Picos");
INSERT INTO `wp_postmeta` VALUES("537", "43", "_cidade_de_origem", "field_5b500cc41610a");
INSERT INTO `wp_postmeta` VALUES("538", "43", "estado_de_origem", "Piauí");
INSERT INTO `wp_postmeta` VALUES("539", "43", "_estado_de_origem", "field_5b500ce11610b");
INSERT INTO `wp_postmeta` VALUES("540", "43", "pais_de_origem", "Brasil");
INSERT INTO `wp_postmeta` VALUES("541", "43", "_pais_de_origem", "field_5b500d141610c");
INSERT INTO `wp_postmeta` VALUES("542", "43", "endereco_fisico", "RUA BENEDITO PORTELA, 560. ");
INSERT INTO `wp_postmeta` VALUES("543", "43", "_endereco_fisico", "field_5b500d3b1610d");
INSERT INTO `wp_postmeta` VALUES("544", "43", "bairro", "Centro");
INSERT INTO `wp_postmeta` VALUES("545", "43", "_bairro", "field_5b500d701610e");
INSERT INTO `wp_postmeta` VALUES("546", "40", "rule", "a:5:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"page-contato.php\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}");
INSERT INTO `wp_postmeta` VALUES("547", "14", "field_5b501262c3e0f", "a:11:{s:3:\"key\";s:19:\"field_5b501262c3e0f\";s:5:\"label\";s:20:\"Imagem de Background\";s:4:\"name\";s:20:\"imagem_de_background\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:21:\"Imagem de Background.\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}");
INSERT INTO `wp_postmeta` VALUES("548", "14", "rule", "a:5:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"page-home.php\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}");
INSERT INTO `wp_postmeta` VALUES("549", "44", "_wp_attached_file", "2018/07/nossa_missao-1.jpeg");
INSERT INTO `wp_postmeta` VALUES("550", "44", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:27:\"2018/07/nossa_missao-1.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"nossa_missao-1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"nossa_missao-1-300x169.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"nossa_missao-1-768x432.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"nossa_missao-1-1024x576.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("551", "45", "titulo_inicial_home", "SEMPRE É TEMPO DE TREINAR");
INSERT INTO `wp_postmeta` VALUES("552", "45", "_titulo_inicial_home", "field_5b4cf744ac96e");
INSERT INTO `wp_postmeta` VALUES("553", "45", "imagem_de_background", "44");
INSERT INTO `wp_postmeta` VALUES("554", "45", "_imagem_de_background", "field_5b501262c3e0f");
INSERT INTO `wp_postmeta` VALUES("555", "45", "titulo_diferencial_1", "Avaliação Funcional");
INSERT INTO `wp_postmeta` VALUES("556", "45", "_titulo_diferencial_1", "field_5b4cfa84b065a");
INSERT INTO `wp_postmeta` VALUES("557", "45", "texto_diferencial_1", "Fazemos uma avaliação completa com o objetivo de encaminhar o melhor treinamento à você.");
INSERT INTO `wp_postmeta` VALUES("558", "45", "_texto_diferencial_1", "field_5b4cfb18b065b");
INSERT INTO `wp_postmeta` VALUES("559", "45", "titulo_diferencial_2", "Equipe qualificada");
INSERT INTO `wp_postmeta` VALUES("560", "45", "_titulo_diferencial_2", "field_5b4cfb6535ccf");
INSERT INTO `wp_postmeta` VALUES("561", "45", "texto_diferencial_2", "Profissionais qualificados, dedicados e capacitados para prestar o melhor serviço.");
INSERT INTO `wp_postmeta` VALUES("562", "45", "_texto_diferencial_2", "field_5b4cfb7a35cd0");
INSERT INTO `wp_postmeta` VALUES("563", "45", "titulo_diferencial_3", "Planos sob medida");
INSERT INTO `wp_postmeta` VALUES("564", "45", "_titulo_diferencial_3", "field_5b4cfb8b35cd1");
INSERT INTO `wp_postmeta` VALUES("565", "45", "texto_diferencial_3", "A MaxTraining possui os melhores Planos. O custo-benefício do nosso serviço vai lhe surpreender!");
INSERT INTO `wp_postmeta` VALUES("566", "45", "_texto_diferencial_3", "field_5b4cfb9f35cd2");
INSERT INTO `wp_postmeta` VALUES("567", "4", "imagem_de_background", "47");
INSERT INTO `wp_postmeta` VALUES("568", "4", "_imagem_de_background", "field_5b501262c3e0f");
INSERT INTO `wp_postmeta` VALUES("569", "46", "titulo_inicial_home", "SEMPRE É TEMPO DE TREINAR");
INSERT INTO `wp_postmeta` VALUES("570", "46", "_titulo_inicial_home", "field_5b4cf744ac96e");
INSERT INTO `wp_postmeta` VALUES("571", "46", "imagem_de_background", "24");
INSERT INTO `wp_postmeta` VALUES("572", "46", "_imagem_de_background", "field_5b501262c3e0f");
INSERT INTO `wp_postmeta` VALUES("573", "46", "titulo_diferencial_1", "Avaliação Funcional");
INSERT INTO `wp_postmeta` VALUES("574", "46", "_titulo_diferencial_1", "field_5b4cfa84b065a");
INSERT INTO `wp_postmeta` VALUES("575", "46", "texto_diferencial_1", "Fazemos uma avaliação completa com o objetivo de encaminhar o melhor treinamento à você.");
INSERT INTO `wp_postmeta` VALUES("576", "46", "_texto_diferencial_1", "field_5b4cfb18b065b");
INSERT INTO `wp_postmeta` VALUES("577", "46", "titulo_diferencial_2", "Equipe qualificada");
INSERT INTO `wp_postmeta` VALUES("578", "46", "_titulo_diferencial_2", "field_5b4cfb6535ccf");
INSERT INTO `wp_postmeta` VALUES("579", "46", "texto_diferencial_2", "Profissionais qualificados, dedicados e capacitados para prestar o melhor serviço.");
INSERT INTO `wp_postmeta` VALUES("580", "46", "_texto_diferencial_2", "field_5b4cfb7a35cd0");
INSERT INTO `wp_postmeta` VALUES("581", "46", "titulo_diferencial_3", "Planos sob medida");
INSERT INTO `wp_postmeta` VALUES("582", "46", "_titulo_diferencial_3", "field_5b4cfb8b35cd1");
INSERT INTO `wp_postmeta` VALUES("583", "46", "texto_diferencial_3", "A MaxTraining possui os melhores Planos. O custo-benefício do nosso serviço vai lhe surpreender!");
INSERT INTO `wp_postmeta` VALUES("584", "46", "_texto_diferencial_3", "field_5b4cfb9f35cd2");
INSERT INTO `wp_postmeta` VALUES("585", "47", "_wp_attached_file", "2018/07/contato.jpeg");
INSERT INTO `wp_postmeta` VALUES("586", "47", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:20:\"2018/07/contato.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"contato-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"contato-300x169.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"contato-768x432.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"contato-1024x576.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("587", "48", "titulo_inicial_home", "SEMPRE É TEMPO DE TREINAR");
INSERT INTO `wp_postmeta` VALUES("588", "48", "_titulo_inicial_home", "field_5b4cf744ac96e");
INSERT INTO `wp_postmeta` VALUES("589", "48", "imagem_de_background", "47");
INSERT INTO `wp_postmeta` VALUES("590", "48", "_imagem_de_background", "field_5b501262c3e0f");
INSERT INTO `wp_postmeta` VALUES("591", "48", "titulo_diferencial_1", "Avaliação Funcional");
INSERT INTO `wp_postmeta` VALUES("592", "48", "_titulo_diferencial_1", "field_5b4cfa84b065a");
INSERT INTO `wp_postmeta` VALUES("593", "48", "texto_diferencial_1", "Fazemos uma avaliação completa com o objetivo de encaminhar o melhor treinamento à você.");
INSERT INTO `wp_postmeta` VALUES("594", "48", "_texto_diferencial_1", "field_5b4cfb18b065b");
INSERT INTO `wp_postmeta` VALUES("595", "48", "titulo_diferencial_2", "Equipe qualificada");
INSERT INTO `wp_postmeta` VALUES("596", "48", "_titulo_diferencial_2", "field_5b4cfb6535ccf");
INSERT INTO `wp_postmeta` VALUES("597", "48", "texto_diferencial_2", "Profissionais qualificados, dedicados e capacitados para prestar o melhor serviço.");
INSERT INTO `wp_postmeta` VALUES("598", "48", "_texto_diferencial_2", "field_5b4cfb7a35cd0");
INSERT INTO `wp_postmeta` VALUES("599", "48", "titulo_diferencial_3", "Planos sob medida");
INSERT INTO `wp_postmeta` VALUES("600", "48", "_titulo_diferencial_3", "field_5b4cfb8b35cd1");
INSERT INTO `wp_postmeta` VALUES("601", "48", "texto_diferencial_3", "A MaxTraining possui os melhores Planos. O custo-benefício do nosso serviço vai lhe surpreender!");
INSERT INTO `wp_postmeta` VALUES("602", "48", "_texto_diferencial_3", "field_5b4cfb9f35cd2");
INSERT INTO `wp_postmeta` VALUES("603", "49", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("604", "49", "_wp_page_template", "page-modalidades.php");
INSERT INTO `wp_postmeta` VALUES("605", "49", "_edit_lock", "1532005295:1");
INSERT INTO `wp_postmeta` VALUES("606", "51", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("608", "51", "position", "normal");
INSERT INTO `wp_postmeta` VALUES("609", "51", "layout", "no_box");
INSERT INTO `wp_postmeta` VALUES("610", "51", "hide_on_screen", "a:11:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:13:\"custom_fields\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:14:\"featured_image\";i:10;s:15:\"send-trackbacks\";}");
INSERT INTO `wp_postmeta` VALUES("611", "51", "_edit_lock", "1532004977:1");
INSERT INTO `wp_postmeta` VALUES("612", "51", "field_5b5087374ad3c", "a:14:{s:3:\"key\";s:19:\"field_5b5087374ad3c\";s:5:\"label\";s:33:\"Título da Seção de Modalidades\";s:4:\"name\";s:18:\"titulo_modalidades\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:63:\"Informar o título que irá aparecer na seção de modalidades.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:7:\"Título\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:2:\"50\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}");
INSERT INTO `wp_postmeta` VALUES("613", "51", "field_5b50876d4ad3d", "a:14:{s:3:\"key\";s:19:\"field_5b50876d4ad3d\";s:5:\"label\";s:35:\"Subtitulo da seção de Modalidades\";s:4:\"name\";s:21:\"subtitulo_modalidades\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:128:\"Informar um texto como subtitulo da seção de modalidades. Ele irá aparecer logo a baixo do título da seção de modalidades.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:3:\"250\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}");
INSERT INTO `wp_postmeta` VALUES("614", "51", "field_5b5087d14ad3e", "a:8:{s:3:\"key\";s:19:\"field_5b5087d14ad3e\";s:5:\"label\";s:19:\"Primeira Modalidade\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}");
INSERT INTO `wp_postmeta` VALUES("615", "51", "field_5b5087e24ad3f", "a:14:{s:3:\"key\";s:19:\"field_5b5087e24ad3f\";s:5:\"label\";s:10:\"Modalidade\";s:4:\"name\";s:19:\"titulo_modalidade_1\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:23:\"Informe uma modalidade.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:2:\"50\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}");
INSERT INTO `wp_postmeta` VALUES("616", "51", "field_5b5088164ad40", "a:14:{s:3:\"key\";s:19:\"field_5b5088164ad40\";s:5:\"label\";s:25:\"Descrição da Modalidade\";s:4:\"name\";s:18:\"texto_modalidade_1\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:68:\"Informe uma descrição da modalidade com no máximo 250 caracteres.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:3:\"250\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}");
INSERT INTO `wp_postmeta` VALUES("618", "51", "field_5b50885dd3436", "a:8:{s:3:\"key\";s:19:\"field_5b50885dd3436\";s:5:\"label\";s:18:\"Segunda Modalidade\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}");
INSERT INTO `wp_postmeta` VALUES("619", "51", "field_5b508869d3437", "a:8:{s:3:\"key\";s:19:\"field_5b508869d3437\";s:5:\"label\";s:19:\"Terceira Modalidade\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:8;}");
INSERT INTO `wp_postmeta` VALUES("620", "51", "field_5b508873d3438", "a:8:{s:3:\"key\";s:19:\"field_5b508873d3438\";s:5:\"label\";s:17:\"Quarta Modalidade\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:11;}");
INSERT INTO `wp_postmeta` VALUES("622", "51", "field_5b5088811f168", "a:14:{s:3:\"key\";s:19:\"field_5b5088811f168\";s:5:\"label\";s:10:\"Modalidade\";s:4:\"name\";s:19:\"titulo_modalidade_2\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:23:\"Informe uma modalidade.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:2:\"50\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}");
INSERT INTO `wp_postmeta` VALUES("623", "51", "field_5b50888f1f169", "a:14:{s:3:\"key\";s:19:\"field_5b50888f1f169\";s:5:\"label\";s:10:\"Modalidade\";s:4:\"name\";s:19:\"titulo_modalidade_3\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:23:\"Informe uma modalidade.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:2:\"50\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:9;}");
INSERT INTO `wp_postmeta` VALUES("624", "51", "field_5b5088981f16a", "a:14:{s:3:\"key\";s:19:\"field_5b5088981f16a\";s:5:\"label\";s:10:\"Modalidade\";s:4:\"name\";s:19:\"titulo_modalidade_4\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:23:\"Informe uma modalidade.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:2:\"50\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:12;}");
INSERT INTO `wp_postmeta` VALUES("626", "51", "field_5b5088b7ee57b", "a:14:{s:3:\"key\";s:19:\"field_5b5088b7ee57b\";s:5:\"label\";s:25:\"Descrição da Modalidade\";s:4:\"name\";s:18:\"texto_modalidade_2\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:68:\"Informe uma descrição da modalidade com no máximo 250 caracteres.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:3:\"250\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:7;}");
INSERT INTO `wp_postmeta` VALUES("627", "51", "field_5b5088c8ee57c", "a:14:{s:3:\"key\";s:19:\"field_5b5088c8ee57c\";s:5:\"label\";s:25:\"Descrição da Modalidade\";s:4:\"name\";s:18:\"texto_modalidade_3\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:68:\"Informe uma descrição da modalidade com no máximo 250 caracteres.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:3:\"250\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:10;}");
INSERT INTO `wp_postmeta` VALUES("628", "51", "field_5b5088d1ee57d", "a:14:{s:3:\"key\";s:19:\"field_5b5088d1ee57d\";s:5:\"label\";s:25:\"Descrição da Modalidade\";s:4:\"name\";s:18:\"texto_modalidade_4\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:68:\"Informe uma descrição da modalidade com no máximo 250 caracteres.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:3:\"250\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:13;}");
INSERT INTO `wp_postmeta` VALUES("633", "52", "titulo_modalidades", "Modalidades MaxTraining");
INSERT INTO `wp_postmeta` VALUES("634", "52", "_titulo_modalidades", "field_5b5087374ad3c");
INSERT INTO `wp_postmeta` VALUES("635", "52", "subtitulo_modalides", "");
INSERT INTO `wp_postmeta` VALUES("636", "52", "_subtitulo_modalides", "field_5b50876d4ad3d");
INSERT INTO `wp_postmeta` VALUES("637", "52", "titulo_modalidade_1", "");
INSERT INTO `wp_postmeta` VALUES("638", "52", "_titulo_modalidade_1", "field_5b5087e24ad3f");
INSERT INTO `wp_postmeta` VALUES("639", "52", "texto_modalidade_1", "");
INSERT INTO `wp_postmeta` VALUES("640", "52", "_texto_modalidade_1", "field_5b5088164ad40");
INSERT INTO `wp_postmeta` VALUES("641", "52", "titulo_modalidade_2", "");
INSERT INTO `wp_postmeta` VALUES("642", "52", "_titulo_modalidade_2", "field_5b5088811f168");
INSERT INTO `wp_postmeta` VALUES("643", "52", "texto_modalidade_2", "");
INSERT INTO `wp_postmeta` VALUES("644", "52", "_texto_modalidade_2", "field_5b5088b7ee57b");
INSERT INTO `wp_postmeta` VALUES("645", "52", "titulo_modalidade_3", "");
INSERT INTO `wp_postmeta` VALUES("646", "52", "_titulo_modalidade_3", "field_5b50888f1f169");
INSERT INTO `wp_postmeta` VALUES("647", "52", "texto_modalidade_3", "");
INSERT INTO `wp_postmeta` VALUES("648", "52", "_texto_modalidade_3", "field_5b5088c8ee57c");
INSERT INTO `wp_postmeta` VALUES("649", "52", "titulo_modalidade_4", "");
INSERT INTO `wp_postmeta` VALUES("650", "52", "_titulo_modalidade_4", "field_5b5088981f16a");
INSERT INTO `wp_postmeta` VALUES("651", "52", "texto_modalidade_4", "");
INSERT INTO `wp_postmeta` VALUES("652", "52", "_texto_modalidade_4", "field_5b5088d1ee57d");
INSERT INTO `wp_postmeta` VALUES("653", "49", "titulo_modalidades", "Modalidades MaxTraining");
INSERT INTO `wp_postmeta` VALUES("654", "49", "_titulo_modalidades", "field_5b5087374ad3c");
INSERT INTO `wp_postmeta` VALUES("655", "49", "subtitulo_modalides", "Na MaxTraining você encontra o que há de melhor em Treinamento Personalizado");
INSERT INTO `wp_postmeta` VALUES("656", "49", "_subtitulo_modalides", "field_5b50876d4ad3d");
INSERT INTO `wp_postmeta` VALUES("657", "49", "titulo_modalidade_1", "- MAX RUN - Escola de Corrida");
INSERT INTO `wp_postmeta` VALUES("658", "49", "_titulo_modalidade_1", "field_5b5087e24ad3f");
INSERT INTO `wp_postmeta` VALUES("659", "49", "texto_modalidade_1", "Preparação e treinamento para competidores de corridas de rua.");
INSERT INTO `wp_postmeta` VALUES("660", "49", "_texto_modalidade_1", "field_5b5088164ad40");
INSERT INTO `wp_postmeta` VALUES("661", "49", "titulo_modalidade_2", "- CROSS MAX - Treino Coletivo");
INSERT INTO `wp_postmeta` VALUES("662", "49", "_titulo_modalidade_2", "field_5b5088811f168");
INSERT INTO `wp_postmeta` VALUES("663", "49", "texto_modalidade_2", "Um conceito bem mais atrativo e dinâmico onde você vai adquirir Força, Equilíbrio, Agilidade e Resistência.");
INSERT INTO `wp_postmeta` VALUES("664", "49", "_texto_modalidade_2", "field_5b5088b7ee57b");
INSERT INTO `wp_postmeta` VALUES("665", "49", "titulo_modalidade_3", "Personal Premium");
INSERT INTO `wp_postmeta` VALUES("666", "49", "_titulo_modalidade_3", "field_5b50888f1f169");
INSERT INTO `wp_postmeta` VALUES("667", "49", "texto_modalidade_3", "Atenção exclusiva ao aluno e treino personalizado.");
INSERT INTO `wp_postmeta` VALUES("668", "49", "_texto_modalidade_3", "field_5b5088c8ee57c");
INSERT INTO `wp_postmeta` VALUES("669", "49", "titulo_modalidade_4", "Personal Compartilhado");
INSERT INTO `wp_postmeta` VALUES("670", "49", "_titulo_modalidade_4", "field_5b5088981f16a");
INSERT INTO `wp_postmeta` VALUES("671", "49", "texto_modalidade_4", "Treino direcionado para até quatro alunos por Personal.");
INSERT INTO `wp_postmeta` VALUES("672", "49", "_texto_modalidade_4", "field_5b5088d1ee57d");
INSERT INTO `wp_postmeta` VALUES("673", "53", "titulo_modalidades", "Modalidades MaxTraining");
INSERT INTO `wp_postmeta` VALUES("674", "53", "_titulo_modalidades", "field_5b5087374ad3c");
INSERT INTO `wp_postmeta` VALUES("675", "53", "subtitulo_modalides", "Na MaxTraining você encontra o que há de melhor em Treinamento Personalizado");
INSERT INTO `wp_postmeta` VALUES("676", "53", "_subtitulo_modalides", "field_5b50876d4ad3d");
INSERT INTO `wp_postmeta` VALUES("677", "53", "titulo_modalidade_1", "MAX Run - Escola de Corrida");
INSERT INTO `wp_postmeta` VALUES("678", "53", "_titulo_modalidade_1", "field_5b5087e24ad3f");
INSERT INTO `wp_postmeta` VALUES("679", "53", "texto_modalidade_1", "");
INSERT INTO `wp_postmeta` VALUES("680", "53", "_texto_modalidade_1", "field_5b5088164ad40");
INSERT INTO `wp_postmeta` VALUES("681", "53", "titulo_modalidade_2", "");
INSERT INTO `wp_postmeta` VALUES("682", "53", "_titulo_modalidade_2", "field_5b5088811f168");
INSERT INTO `wp_postmeta` VALUES("683", "53", "texto_modalidade_2", "");
INSERT INTO `wp_postmeta` VALUES("684", "53", "_texto_modalidade_2", "field_5b5088b7ee57b");
INSERT INTO `wp_postmeta` VALUES("685", "53", "titulo_modalidade_3", "");
INSERT INTO `wp_postmeta` VALUES("686", "53", "_titulo_modalidade_3", "field_5b50888f1f169");
INSERT INTO `wp_postmeta` VALUES("687", "53", "texto_modalidade_3", "");
INSERT INTO `wp_postmeta` VALUES("688", "53", "_texto_modalidade_3", "field_5b5088c8ee57c");
INSERT INTO `wp_postmeta` VALUES("689", "53", "titulo_modalidade_4", "");
INSERT INTO `wp_postmeta` VALUES("690", "53", "_titulo_modalidade_4", "field_5b5088981f16a");
INSERT INTO `wp_postmeta` VALUES("691", "53", "texto_modalidade_4", "");
INSERT INTO `wp_postmeta` VALUES("692", "53", "_texto_modalidade_4", "field_5b5088d1ee57d");
INSERT INTO `wp_postmeta` VALUES("693", "54", "titulo_modalidades", "Modalidades MaxTraining");
INSERT INTO `wp_postmeta` VALUES("694", "54", "_titulo_modalidades", "field_5b5087374ad3c");
INSERT INTO `wp_postmeta` VALUES("695", "54", "subtitulo_modalides", "Na MaxTraining você encontra o que há de melhor em Treinamento Personalizado");
INSERT INTO `wp_postmeta` VALUES("696", "54", "_subtitulo_modalides", "field_5b50876d4ad3d");
INSERT INTO `wp_postmeta` VALUES("697", "54", "titulo_modalidade_1", "MAX RUN - Escola de Corrida");
INSERT INTO `wp_postmeta` VALUES("698", "54", "_titulo_modalidade_1", "field_5b5087e24ad3f");
INSERT INTO `wp_postmeta` VALUES("699", "54", "texto_modalidade_1", "Preparação e treinamento para competidores de corridas de rua.");
INSERT INTO `wp_postmeta` VALUES("700", "54", "_texto_modalidade_1", "field_5b5088164ad40");
INSERT INTO `wp_postmeta` VALUES("701", "54", "titulo_modalidade_2", "CROSS MAX - Treino Coletivo");
INSERT INTO `wp_postmeta` VALUES("702", "54", "_titulo_modalidade_2", "field_5b5088811f168");
INSERT INTO `wp_postmeta` VALUES("703", "54", "texto_modalidade_2", "Um conceito bem mais atrativo e dinâmico onde você vai adquirir Força, Equilíbrio, Agilidade e Resistência.");
INSERT INTO `wp_postmeta` VALUES("704", "54", "_texto_modalidade_2", "field_5b5088b7ee57b");
INSERT INTO `wp_postmeta` VALUES("705", "54", "titulo_modalidade_3", "Personal Premium");
INSERT INTO `wp_postmeta` VALUES("706", "54", "_titulo_modalidade_3", "field_5b50888f1f169");
INSERT INTO `wp_postmeta` VALUES("707", "54", "texto_modalidade_3", "Atenção exclusiva ao aluno e treino personalizado.");
INSERT INTO `wp_postmeta` VALUES("708", "54", "_texto_modalidade_3", "field_5b5088c8ee57c");
INSERT INTO `wp_postmeta` VALUES("709", "54", "titulo_modalidade_4", "Personal Compartilhado");
INSERT INTO `wp_postmeta` VALUES("710", "54", "_titulo_modalidade_4", "field_5b5088981f16a");
INSERT INTO `wp_postmeta` VALUES("711", "54", "texto_modalidade_4", "Treino direcionado para até quatro alunos por Personal.");
INSERT INTO `wp_postmeta` VALUES("712", "54", "_texto_modalidade_4", "field_5b5088d1ee57d");
INSERT INTO `wp_postmeta` VALUES("713", "55", "titulo_modalidades", "Modalidades MaxTraining");
INSERT INTO `wp_postmeta` VALUES("714", "55", "_titulo_modalidades", "field_5b5087374ad3c");
INSERT INTO `wp_postmeta` VALUES("715", "55", "subtitulo_modalides", "Na MaxTraining você encontra o que há de melhor em Treinamento Personalizado");
INSERT INTO `wp_postmeta` VALUES("716", "55", "_subtitulo_modalides", "field_5b50876d4ad3d");
INSERT INTO `wp_postmeta` VALUES("717", "55", "titulo_modalidade_1", "- MAX RUN - Escola de Corrida");
INSERT INTO `wp_postmeta` VALUES("718", "55", "_titulo_modalidade_1", "field_5b5087e24ad3f");
INSERT INTO `wp_postmeta` VALUES("719", "55", "texto_modalidade_1", "Preparação e treinamento para competidores de corridas de rua.");
INSERT INTO `wp_postmeta` VALUES("720", "55", "_texto_modalidade_1", "field_5b5088164ad40");
INSERT INTO `wp_postmeta` VALUES("721", "55", "titulo_modalidade_2", "- CROSS MAX - Treino Coletivo");
INSERT INTO `wp_postmeta` VALUES("722", "55", "_titulo_modalidade_2", "field_5b5088811f168");
INSERT INTO `wp_postmeta` VALUES("723", "55", "texto_modalidade_2", "Um conceito bem mais atrativo e dinâmico onde você vai adquirir Força, Equilíbrio, Agilidade e Resistência.");
INSERT INTO `wp_postmeta` VALUES("724", "55", "_texto_modalidade_2", "field_5b5088b7ee57b");
INSERT INTO `wp_postmeta` VALUES("725", "55", "titulo_modalidade_3", "Personal Premium");
INSERT INTO `wp_postmeta` VALUES("726", "55", "_titulo_modalidade_3", "field_5b50888f1f169");
INSERT INTO `wp_postmeta` VALUES("727", "55", "texto_modalidade_3", "Atenção exclusiva ao aluno e treino personalizado.");
INSERT INTO `wp_postmeta` VALUES("728", "55", "_texto_modalidade_3", "field_5b5088c8ee57c");
INSERT INTO `wp_postmeta` VALUES("729", "55", "titulo_modalidade_4", "Personal Compartilhado");
INSERT INTO `wp_postmeta` VALUES("730", "55", "_titulo_modalidade_4", "field_5b5088981f16a");
INSERT INTO `wp_postmeta` VALUES("731", "55", "texto_modalidade_4", "Treino direcionado para até quatro alunos por Personal.");
INSERT INTO `wp_postmeta` VALUES("732", "55", "_texto_modalidade_4", "field_5b5088d1ee57d");
INSERT INTO `wp_postmeta` VALUES("733", "51", "rule", "a:5:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:20:\"page-modalidades.php\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}");
INSERT INTO `wp_postmeta` VALUES("734", "56", "titulo_modalidades", "Modalidades MaxTraining");
INSERT INTO `wp_postmeta` VALUES("735", "56", "_titulo_modalidades", "field_5b5087374ad3c");
INSERT INTO `wp_postmeta` VALUES("736", "56", "subtitulo_modalidades", "Na MaxTraining você encontra o que há de melhor em Treinamento Personalizado");
INSERT INTO `wp_postmeta` VALUES("737", "56", "_subtitulo_modalidades", "field_5b50876d4ad3d");
INSERT INTO `wp_postmeta` VALUES("738", "56", "titulo_modalidade_1", "- MAX RUN - Escola de Corrida");
INSERT INTO `wp_postmeta` VALUES("739", "56", "_titulo_modalidade_1", "field_5b5087e24ad3f");
INSERT INTO `wp_postmeta` VALUES("740", "56", "texto_modalidade_1", "Preparação e treinamento para competidores de corridas de rua.");
INSERT INTO `wp_postmeta` VALUES("741", "56", "_texto_modalidade_1", "field_5b5088164ad40");
INSERT INTO `wp_postmeta` VALUES("742", "56", "titulo_modalidade_2", "- CROSS MAX - Treino Coletivo");
INSERT INTO `wp_postmeta` VALUES("743", "56", "_titulo_modalidade_2", "field_5b5088811f168");
INSERT INTO `wp_postmeta` VALUES("744", "56", "texto_modalidade_2", "Um conceito bem mais atrativo e dinâmico onde você vai adquirir Força, Equilíbrio, Agilidade e Resistência.");
INSERT INTO `wp_postmeta` VALUES("745", "56", "_texto_modalidade_2", "field_5b5088b7ee57b");
INSERT INTO `wp_postmeta` VALUES("746", "56", "titulo_modalidade_3", "Personal Premium");
INSERT INTO `wp_postmeta` VALUES("747", "56", "_titulo_modalidade_3", "field_5b50888f1f169");
INSERT INTO `wp_postmeta` VALUES("748", "56", "texto_modalidade_3", "Atenção exclusiva ao aluno e treino personalizado.");
INSERT INTO `wp_postmeta` VALUES("749", "56", "_texto_modalidade_3", "field_5b5088c8ee57c");
INSERT INTO `wp_postmeta` VALUES("750", "56", "titulo_modalidade_4", "Personal Compartilhado");
INSERT INTO `wp_postmeta` VALUES("751", "56", "_titulo_modalidade_4", "field_5b5088981f16a");
INSERT INTO `wp_postmeta` VALUES("752", "56", "texto_modalidade_4", "Treino direcionado para até quatro alunos por Personal.");
INSERT INTO `wp_postmeta` VALUES("753", "56", "_texto_modalidade_4", "field_5b5088d1ee57d");
INSERT INTO `wp_postmeta` VALUES("754", "49", "subtitulo_modalidades", "Na MaxTraining você encontra o que há de melhor em Treinamento Personalizado");
INSERT INTO `wp_postmeta` VALUES("755", "49", "_subtitulo_modalidades", "field_5b50876d4ad3d");
INSERT INTO `wp_postmeta` VALUES("756", "57", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("757", "57", "_edit_lock", "1532010281:1");
INSERT INTO `wp_postmeta` VALUES("758", "57", "_wp_page_template", "page-alunos.php");
INSERT INTO `wp_postmeta` VALUES("759", "59", "_edit_last", "1");
INSERT INTO `wp_postmeta` VALUES("760", "59", "field_5b508c67c7bf0", "a:14:{s:3:\"key\";s:19:\"field_5b508c67c7bf0\";s:5:\"label\";s:29:\"Título da seção dos Alunos\";s:4:\"name\";s:13:\"titulo_alunos\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:37:\"Informe um título para esta seção.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:7:\"Título\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:2:\"50\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}");
INSERT INTO `wp_postmeta` VALUES("762", "59", "position", "normal");
INSERT INTO `wp_postmeta` VALUES("763", "59", "layout", "no_box");
INSERT INTO `wp_postmeta` VALUES("764", "59", "hide_on_screen", "a:11:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:13:\"custom_fields\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:14:\"featured_image\";i:10;s:15:\"send-trackbacks\";}");
INSERT INTO `wp_postmeta` VALUES("765", "59", "_edit_lock", "1532011040:1");
INSERT INTO `wp_postmeta` VALUES("766", "59", "field_5b508cb0a604a", "a:14:{s:3:\"key\";s:19:\"field_5b508cb0a604a\";s:5:\"label\";s:25:\"Texto para seção Alunos\";s:4:\"name\";s:12:\"texto_alunos\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:72:\"Texto que fica após o título da seção. Máximo de caracteres é 200.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:3:\"200\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}");
INSERT INTO `wp_postmeta` VALUES("768", "60", "titulo_alunos", "Área do Aluno");
INSERT INTO `wp_postmeta` VALUES("769", "60", "_titulo_alunos", "field_5b508c67c7bf0");
INSERT INTO `wp_postmeta` VALUES("770", "60", "texto_alunos", "");
INSERT INTO `wp_postmeta` VALUES("771", "60", "_texto_alunos", "field_5b508cb0a604a");
INSERT INTO `wp_postmeta` VALUES("772", "57", "titulo_alunos", "Área do Aluno");
INSERT INTO `wp_postmeta` VALUES("773", "57", "_titulo_alunos", "field_5b508c67c7bf0");
INSERT INTO `wp_postmeta` VALUES("774", "57", "texto_alunos", "Na MaxTraining, nossos alunos possuem as melhores ferramentas para monitoramento dos seus treinos e resultados.");
INSERT INTO `wp_postmeta` VALUES("775", "57", "_texto_alunos", "field_5b508cb0a604a");
INSERT INTO `wp_postmeta` VALUES("777", "61", "titulo_alunos", "Área do Aluno");
INSERT INTO `wp_postmeta` VALUES("778", "61", "_titulo_alunos", "field_5b508c67c7bf0");
INSERT INTO `wp_postmeta` VALUES("779", "61", "texto_alunos", "Aqui na MaxTraining nossos alunos possuem as melhores ferramentas para monitoramento dos seus treinos e resultados.");
INSERT INTO `wp_postmeta` VALUES("780", "61", "_texto_alunos", "field_5b508cb0a604a");
INSERT INTO `wp_postmeta` VALUES("781", "62", "titulo_alunos", "Área do Aluno");
INSERT INTO `wp_postmeta` VALUES("782", "62", "_titulo_alunos", "field_5b508c67c7bf0");
INSERT INTO `wp_postmeta` VALUES("783", "62", "texto_alunos", "Na MaxTraining nossos alunos possuem as melhores ferramentas para monitoramento dos seus treinos e resultados.");
INSERT INTO `wp_postmeta` VALUES("784", "62", "_texto_alunos", "field_5b508cb0a604a");
INSERT INTO `wp_postmeta` VALUES("785", "63", "titulo_alunos", "Área do Aluno");
INSERT INTO `wp_postmeta` VALUES("786", "63", "_titulo_alunos", "field_5b508c67c7bf0");
INSERT INTO `wp_postmeta` VALUES("787", "63", "texto_alunos", "Na MaxTraining, nossos alunos possuem as melhores ferramentas para monitoramento dos seus treinos e resultados.");
INSERT INTO `wp_postmeta` VALUES("788", "63", "_texto_alunos", "field_5b508cb0a604a");
INSERT INTO `wp_postmeta` VALUES("789", "59", "field_5b508ea122375", "a:14:{s:3:\"key\";s:19:\"field_5b508ea122375\";s:5:\"label\";s:13:\"Aula Gratuita\";s:4:\"name\";s:13:\"aula_gratuita\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:28:\"EX: \"Faça uma aula Grátis\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:2:\"50\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}");
INSERT INTO `wp_postmeta` VALUES("790", "59", "field_5b508ec122376", "a:14:{s:3:\"key\";s:19:\"field_5b508ec122376\";s:5:\"label\";s:24:\"Chamada da Aula Gratuita\";s:4:\"name\";s:21:\"chamada_aula_gratuita\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:51:\"Chamada da aula gratuita, texto rápido e objetivo.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:3:\"200\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}");
INSERT INTO `wp_postmeta` VALUES("792", "64", "titulo_alunos", "Área do Aluno");
INSERT INTO `wp_postmeta` VALUES("793", "64", "_titulo_alunos", "field_5b508c67c7bf0");
INSERT INTO `wp_postmeta` VALUES("794", "64", "texto_alunos", "Na MaxTraining, nossos alunos possuem as melhores ferramentas para monitoramento dos seus treinos e resultados.");
INSERT INTO `wp_postmeta` VALUES("795", "64", "_texto_alunos", "field_5b508cb0a604a");
INSERT INTO `wp_postmeta` VALUES("796", "64", "aula_gratuita", "Seja um Aluno MAX");
INSERT INTO `wp_postmeta` VALUES("797", "64", "_aula_gratuita", "field_5b508ea122375");
INSERT INTO `wp_postmeta` VALUES("798", "64", "chamada_aula_gratuita", "Seja um aluno da MaxTraining! Venha fazer uma aula gratuita, você não vai se arrepender.");
INSERT INTO `wp_postmeta` VALUES("799", "64", "_chamada_aula_gratuita", "field_5b508ec122376");
INSERT INTO `wp_postmeta` VALUES("800", "57", "aula_gratuita", "Seja um Aluno MAX");
INSERT INTO `wp_postmeta` VALUES("801", "57", "_aula_gratuita", "field_5b508ea122375");
INSERT INTO `wp_postmeta` VALUES("802", "57", "chamada_aula_gratuita", "Seja um aluno da MaxTraining! Venha fazer uma aula gratuita, você não vai se arrepender.");
INSERT INTO `wp_postmeta` VALUES("803", "57", "_chamada_aula_gratuita", "field_5b508ec122376");
INSERT INTO `wp_postmeta` VALUES("804", "59", "field_5b5091102e65e", "a:11:{s:3:\"key\";s:19:\"field_5b5091102e65e\";s:5:\"label\";s:30:\"Icone do Aplicativo dos Alunos\";s:4:\"name\";s:16:\"icone_aplicativo\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:63:\"Inserir a imagem em formato PNG do icone do logo do aplicativo.\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}");
INSERT INTO `wp_postmeta` VALUES("805", "59", "field_5b5091592e65f", "a:14:{s:3:\"key\";s:19:\"field_5b5091592e65f\";s:5:\"label\";s:18:\"Alunos Cadastrados\";s:4:\"name\";s:17:\"aplicativo_alunos\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:52:\"Informar um texto curto de no máximo 50 caracteres.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:2:\"50\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}");
INSERT INTO `wp_postmeta` VALUES("806", "59", "field_5b50918b2e660", "a:14:{s:3:\"key\";s:19:\"field_5b50918b2e660\";s:5:\"label\";s:22:\"Link da ÁREA DO ALUNO\";s:4:\"name\";s:15:\"link_area_aluno\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:38:\"Informar o link para a área do aluno.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:30:\"https://exemplo_de_link.com.br\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}");
INSERT INTO `wp_postmeta` VALUES("808", "65", "_wp_attached_file", "2018/07/tecnofit.png");
INSERT INTO `wp_postmeta` VALUES("809", "65", "_wp_attachment_metadata", "a:5:{s:5:\"width\";i:192;s:6:\"height\";i:65;s:4:\"file\";s:20:\"2018/07/tecnofit.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"tecnofit-150x65.png\";s:5:\"width\";i:150;s:6:\"height\";i:65;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}");
INSERT INTO `wp_postmeta` VALUES("810", "66", "titulo_alunos", "Área do Aluno");
INSERT INTO `wp_postmeta` VALUES("811", "66", "_titulo_alunos", "field_5b508c67c7bf0");
INSERT INTO `wp_postmeta` VALUES("812", "66", "texto_alunos", "Na MaxTraining, nossos alunos possuem as melhores ferramentas para monitoramento dos seus treinos e resultados.");
INSERT INTO `wp_postmeta` VALUES("813", "66", "_texto_alunos", "field_5b508cb0a604a");
INSERT INTO `wp_postmeta` VALUES("814", "66", "aula_gratuita", "Seja um Aluno MAX");
INSERT INTO `wp_postmeta` VALUES("815", "66", "_aula_gratuita", "field_5b508ea122375");
INSERT INTO `wp_postmeta` VALUES("816", "66", "chamada_aula_gratuita", "Seja um aluno da MaxTraining! Venha fazer uma aula gratuita, você não vai se arrepender.");
INSERT INTO `wp_postmeta` VALUES("817", "66", "_chamada_aula_gratuita", "field_5b508ec122376");
INSERT INTO `wp_postmeta` VALUES("818", "66", "icone_aplicativo", "65");
INSERT INTO `wp_postmeta` VALUES("819", "66", "_icone_aplicativo", "field_5b5091102e65e");
INSERT INTO `wp_postmeta` VALUES("820", "66", "aplicativo_alunos", "Já Sou um Aluno MAX");
INSERT INTO `wp_postmeta` VALUES("821", "66", "_aplicativo_alunos", "field_5b5091592e65f");
INSERT INTO `wp_postmeta` VALUES("822", "66", "link_area_aluno", "https://app.tecnofit.com.br/aluno/login/");
INSERT INTO `wp_postmeta` VALUES("823", "66", "_link_area_aluno", "field_5b50918b2e660");
INSERT INTO `wp_postmeta` VALUES("824", "57", "icone_aplicativo", "65");
INSERT INTO `wp_postmeta` VALUES("825", "57", "_icone_aplicativo", "field_5b5091102e65e");
INSERT INTO `wp_postmeta` VALUES("826", "57", "aplicativo_alunos", "Já Sou um Aluno MAX");
INSERT INTO `wp_postmeta` VALUES("827", "57", "_aplicativo_alunos", "field_5b5091592e65f");
INSERT INTO `wp_postmeta` VALUES("828", "57", "link_area_aluno", "https://app.tecnofit.com.br/aluno/login/");
INSERT INTO `wp_postmeta` VALUES("829", "57", "_link_area_aluno", "field_5b50918b2e660");
INSERT INTO `wp_postmeta` VALUES("830", "59", "field_5b50927495d36", "a:14:{s:3:\"key\";s:19:\"field_5b50927495d36\";s:5:\"label\";s:22:\"Download do aplicativo\";s:4:\"name\";s:20:\"chamada_download_app\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:50:\"Informe uma chamada para o Download do aplicativo.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:37:\"EX: \"Faça o download do seu app ...\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:3:\"200\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:7;}");
INSERT INTO `wp_postmeta` VALUES("833", "67", "titulo_alunos", "Área do Aluno");
INSERT INTO `wp_postmeta` VALUES("834", "67", "_titulo_alunos", "field_5b508c67c7bf0");
INSERT INTO `wp_postmeta` VALUES("835", "67", "texto_alunos", "Na MaxTraining, nossos alunos possuem as melhores ferramentas para monitoramento dos seus treinos e resultados.");
INSERT INTO `wp_postmeta` VALUES("836", "67", "_texto_alunos", "field_5b508cb0a604a");
INSERT INTO `wp_postmeta` VALUES("837", "67", "aula_gratuita", "Seja um Aluno MAX");
INSERT INTO `wp_postmeta` VALUES("838", "67", "_aula_gratuita", "field_5b508ea122375");
INSERT INTO `wp_postmeta` VALUES("839", "67", "chamada_aula_gratuita", "Seja um aluno da MaxTraining! Venha fazer uma aula gratuita, você não vai se arrepender.");
INSERT INTO `wp_postmeta` VALUES("840", "67", "_chamada_aula_gratuita", "field_5b508ec122376");
INSERT INTO `wp_postmeta` VALUES("841", "67", "icone_aplicativo", "65");
INSERT INTO `wp_postmeta` VALUES("842", "67", "_icone_aplicativo", "field_5b5091102e65e");
INSERT INTO `wp_postmeta` VALUES("843", "67", "aplicativo_alunos", "Já Sou um Aluno MAX");
INSERT INTO `wp_postmeta` VALUES("844", "67", "_aplicativo_alunos", "field_5b5091592e65f");
INSERT INTO `wp_postmeta` VALUES("845", "67", "link_area_aluno", "https://app.tecnofit.com.br/aluno/login/");
INSERT INTO `wp_postmeta` VALUES("846", "67", "_link_area_aluno", "field_5b50918b2e660");
INSERT INTO `wp_postmeta` VALUES("847", "67", "chamada_download_app", "Baixe o App e obtenha acesso a um ambiente exclusivo");
INSERT INTO `wp_postmeta` VALUES("848", "67", "_chamada_download_app", "field_5b50927495d36");
INSERT INTO `wp_postmeta` VALUES("849", "57", "chamada_download_app", "Baixe o App e obtenha acesso a um ambiente exclusivo");
INSERT INTO `wp_postmeta` VALUES("850", "57", "_chamada_download_app", "field_5b50927495d36");
INSERT INTO `wp_postmeta` VALUES("851", "59", "field_5b5095c41f84d", "a:14:{s:3:\"key\";s:19:\"field_5b5095c41f84d\";s:5:\"label\";s:31:\"Link do download na Google Play\";s:4:\"name\";s:30:\"link_download_crossfit_android\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:60:\"Informe o link para o download do aplicativo na Google Play.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:9;}");
INSERT INTO `wp_postmeta` VALUES("852", "59", "field_5b5095fb1f84e", "a:14:{s:3:\"key\";s:19:\"field_5b5095fb1f84e\";s:5:\"label\";s:28:\"Link do download para iPhone\";s:4:\"name\";s:26:\"link_download_crossfit_ios\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:58:\"Informe o link para o download do aplicativo na App Store.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:10;}");
INSERT INTO `wp_postmeta` VALUES("854", "59", "field_5b5099968e06b", "a:8:{s:3:\"key\";s:19:\"field_5b5099968e06b\";s:5:\"label\";s:33:\"Aplicativo da Modalidade CROSSFIT\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:8;}");
INSERT INTO `wp_postmeta` VALUES("855", "59", "field_5b5099ab8e06c", "a:8:{s:3:\"key\";s:19:\"field_5b5099ab8e06c\";s:5:\"label\";s:38:\"Aplicativo da Modalidade PERSONALIZADA\";s:4:\"name\";s:0:\"\";s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:11;}");
INSERT INTO `wp_postmeta` VALUES("857", "59", "field_5b509a3c5d70b", "a:14:{s:3:\"key\";s:19:\"field_5b509a3c5d70b\";s:5:\"label\";s:31:\"Link do download na Google Play\";s:4:\"name\";s:35:\"link_download_personalizada_android\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:60:\"Informe o link para o download do aplicativo na Google Play.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:12;}");
INSERT INTO `wp_postmeta` VALUES("858", "59", "field_5b509a635d70c", "a:14:{s:3:\"key\";s:19:\"field_5b509a635d70c\";s:5:\"label\";s:28:\"Link do download para iPhone\";s:4:\"name\";s:31:\"link_download_personalizada_ios\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:58:\"Informe o link para o download do aplicativo na App Store.\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"none\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:13;}");
INSERT INTO `wp_postmeta` VALUES("861", "68", "titulo_alunos", "Área do Aluno");
INSERT INTO `wp_postmeta` VALUES("862", "68", "_titulo_alunos", "field_5b508c67c7bf0");
INSERT INTO `wp_postmeta` VALUES("863", "68", "texto_alunos", "Na MaxTraining, nossos alunos possuem as melhores ferramentas para monitoramento dos seus treinos e resultados.");
INSERT INTO `wp_postmeta` VALUES("864", "68", "_texto_alunos", "field_5b508cb0a604a");
INSERT INTO `wp_postmeta` VALUES("865", "68", "aula_gratuita", "Seja um Aluno MAX");
INSERT INTO `wp_postmeta` VALUES("866", "68", "_aula_gratuita", "field_5b508ea122375");
INSERT INTO `wp_postmeta` VALUES("867", "68", "chamada_aula_gratuita", "Seja um aluno da MaxTraining! Venha fazer uma aula gratuita, você não vai se arrepender.");
INSERT INTO `wp_postmeta` VALUES("868", "68", "_chamada_aula_gratuita", "field_5b508ec122376");
INSERT INTO `wp_postmeta` VALUES("869", "68", "icone_aplicativo", "65");
INSERT INTO `wp_postmeta` VALUES("870", "68", "_icone_aplicativo", "field_5b5091102e65e");
INSERT INTO `wp_postmeta` VALUES("871", "68", "aplicativo_alunos", "Já Sou um Aluno MAX");
INSERT INTO `wp_postmeta` VALUES("872", "68", "_aplicativo_alunos", "field_5b5091592e65f");
INSERT INTO `wp_postmeta` VALUES("873", "68", "link_area_aluno", "https://app.tecnofit.com.br/aluno/login/");
INSERT INTO `wp_postmeta` VALUES("874", "68", "_link_area_aluno", "field_5b50918b2e660");
INSERT INTO `wp_postmeta` VALUES("875", "68", "chamada_download_app", "Baixe o App e obtenha acesso a um ambiente exclusivo");
INSERT INTO `wp_postmeta` VALUES("876", "68", "_chamada_download_app", "field_5b50927495d36");
INSERT INTO `wp_postmeta` VALUES("877", "68", "link_download_crossfit_android", "https://play.google.com/store/apps/details?id=br.com.tecnofit.tecnofitBox&hl=pt_BR");
INSERT INTO `wp_postmeta` VALUES("878", "68", "_link_download_crossfit_android", "field_5b5095c41f84d");
INSERT INTO `wp_postmeta` VALUES("879", "68", "link_download_crossfit_iphone", "https://itunes.apple.com/br/app/tecnofit-box/id1256624538?mt=8");
INSERT INTO `wp_postmeta` VALUES("880", "68", "_link_download_crossfit_iphone", "field_5b5095fb1f84e");
INSERT INTO `wp_postmeta` VALUES("881", "68", "link_download_personalizada_android", "https://play.google.com/store/apps/details?id=br.com.tecnofit.mobileapp&hl=pt_BR");
INSERT INTO `wp_postmeta` VALUES("882", "68", "_link_download_personalizada_android", "field_5b509a3c5d70b");
INSERT INTO `wp_postmeta` VALUES("883", "68", "link_download_personalizada_ios", "https://itunes.apple.com/br/app/tecnofit/id1109478634?mt=8");
INSERT INTO `wp_postmeta` VALUES("884", "68", "_link_download_personalizada_ios", "field_5b509a635d70c");
INSERT INTO `wp_postmeta` VALUES("885", "57", "link_download_crossfit_android", "https://play.google.com/store/apps/details?id=br.com.tecnofit.tecnofitBox&hl=pt_BR");
INSERT INTO `wp_postmeta` VALUES("886", "57", "_link_download_crossfit_android", "field_5b5095c41f84d");
INSERT INTO `wp_postmeta` VALUES("887", "57", "link_download_crossfit_iphone", "https://itunes.apple.com/br/app/tecnofit-box/id1256624538?mt=8");
INSERT INTO `wp_postmeta` VALUES("888", "57", "_link_download_crossfit_iphone", "field_5b5095fb1f84e");
INSERT INTO `wp_postmeta` VALUES("889", "57", "link_download_personalizada_android", "https://play.google.com/store/apps/details?id=br.com.tecnofit.mobileapp&hl=pt_BR");
INSERT INTO `wp_postmeta` VALUES("890", "57", "_link_download_personalizada_android", "field_5b509a3c5d70b");
INSERT INTO `wp_postmeta` VALUES("891", "57", "link_download_personalizada_ios", "https://itunes.apple.com/br/app/tecnofit/id1109478634?mt=8");
INSERT INTO `wp_postmeta` VALUES("892", "57", "_link_download_personalizada_ios", "field_5b509a635d70c");
INSERT INTO `wp_postmeta` VALUES("893", "59", "rule", "a:5:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"page-alunos.php\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}");
INSERT INTO `wp_postmeta` VALUES("894", "69", "titulo_alunos", "Área do Aluno");
INSERT INTO `wp_postmeta` VALUES("895", "69", "_titulo_alunos", "field_5b508c67c7bf0");
INSERT INTO `wp_postmeta` VALUES("896", "69", "texto_alunos", "Na MaxTraining, nossos alunos possuem as melhores ferramentas para monitoramento dos seus treinos e resultados.");
INSERT INTO `wp_postmeta` VALUES("897", "69", "_texto_alunos", "field_5b508cb0a604a");
INSERT INTO `wp_postmeta` VALUES("898", "69", "aula_gratuita", "Seja um Aluno MAX");
INSERT INTO `wp_postmeta` VALUES("899", "69", "_aula_gratuita", "field_5b508ea122375");
INSERT INTO `wp_postmeta` VALUES("900", "69", "chamada_aula_gratuita", "Seja um aluno da MaxTraining! Venha fazer uma aula gratuita, você não vai se arrepender.");
INSERT INTO `wp_postmeta` VALUES("901", "69", "_chamada_aula_gratuita", "field_5b508ec122376");
INSERT INTO `wp_postmeta` VALUES("902", "69", "icone_aplicativo", "65");
INSERT INTO `wp_postmeta` VALUES("903", "69", "_icone_aplicativo", "field_5b5091102e65e");
INSERT INTO `wp_postmeta` VALUES("904", "69", "aplicativo_alunos", "Já Sou um Aluno MAX");
INSERT INTO `wp_postmeta` VALUES("905", "69", "_aplicativo_alunos", "field_5b5091592e65f");
INSERT INTO `wp_postmeta` VALUES("906", "69", "link_area_aluno", "https://app.tecnofit.com.br/aluno/login/");
INSERT INTO `wp_postmeta` VALUES("907", "69", "_link_area_aluno", "field_5b50918b2e660");
INSERT INTO `wp_postmeta` VALUES("908", "69", "chamada_download_app", "Baixe o App e obtenha acesso a um ambiente exclusivo");
INSERT INTO `wp_postmeta` VALUES("909", "69", "_chamada_download_app", "field_5b50927495d36");
INSERT INTO `wp_postmeta` VALUES("910", "69", "link_download_crossfit_android", "https://play.google.com/store/apps/details?id=br.com.tecnofit.tecnofitBox&hl=pt_BR");
INSERT INTO `wp_postmeta` VALUES("911", "69", "_link_download_crossfit_android", "field_5b5095c41f84d");
INSERT INTO `wp_postmeta` VALUES("912", "69", "link_download_crossfit_ios", "https://itunes.apple.com/br/app/tecnofit-box/id1256624538?mt=8");
INSERT INTO `wp_postmeta` VALUES("913", "69", "_link_download_crossfit_ios", "field_5b5095fb1f84e");
INSERT INTO `wp_postmeta` VALUES("914", "69", "link_download_personalizada_android", "https://play.google.com/store/apps/details?id=br.com.tecnofit.mobileapp&hl=pt_BR");
INSERT INTO `wp_postmeta` VALUES("915", "69", "_link_download_personalizada_android", "field_5b509a3c5d70b");
INSERT INTO `wp_postmeta` VALUES("916", "69", "link_download_personalizada_ios", "https://itunes.apple.com/br/app/tecnofit/id1109478634?mt=8");
INSERT INTO `wp_postmeta` VALUES("917", "69", "_link_download_personalizada_ios", "field_5b509a635d70c");
INSERT INTO `wp_postmeta` VALUES("918", "57", "link_download_crossfit_ios", "https://itunes.apple.com/br/app/tecnofit-box/id1256624538?mt=8");
INSERT INTO `wp_postmeta` VALUES("919", "57", "_link_download_crossfit_ios", "field_5b5095fb1f84e");

/* INSERT TABLE DATA: wp_posts */
INSERT INTO `wp_posts` VALUES("1", "1", "2018-07-15 15:39:09", "2018-07-15 18:39:09", "Bem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!", "Olá, mundo!", "", "publish", "open", "open", "", "ola-mundo", "", "", "2018-07-15 15:39:09", "2018-07-15 18:39:09", "", "0", "http://localhost/maxtraining/?p=1", "0", "post", "", "1");
INSERT INTO `wp_posts` VALUES("2", "1", "2018-07-15 15:39:09", "2018-07-15 18:39:09", "Este é o exemplo de uma página. É diferente de um post de blog porque é estática e pode aparecer em menus de navegação (na maioria dos temas). A maioria das pessoas começam com uma página \'Sobre\' que as apresenta aos potenciais visitantes do site. Você pode usar algo como:\n\n<blockquote>Oi! Sou um estudante de Biologia e gosto de esportes e natureza. Nos fins de semana pratico futebol com meus amigos no clube local. Eu moro em Valinhos e fiz este site para falar sobre minha cidade.</blockquote>\n\n...ou algo como:\n\n<blockquote>A empresa Logos foi fundada em 1980, e tem provido o comércio local com o que há de melhor em informatização. Localizada em Recife, nossa empresa tem se destacado como um das que também contribuem para o descarte correto de equipamentos eletrônicos substituídos.</blockquote>\n\nComo um novo usuário WordPress, vá ao seu <a href=\"http://localhost/maxtraining/wp-admin/\">Painel</a> para excluir este conteúdo e criar o seu. Divirta-se!", "Página de exemplo", "", "trash", "closed", "open", "", "pagina-exemplo__trashed", "", "", "2018-07-16 16:46:46", "2018-07-16 19:46:46", "", "0", "http://localhost/maxtraining/?page_id=2", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("3", "1", "2018-07-15 15:41:12", "0000-00-00 00:00:00", "", "Rascunho automático", "", "auto-draft", "open", "open", "", "", "", "", "2018-07-15 15:41:12", "0000-00-00 00:00:00", "", "0", "http://localhost/maxtraining/?p=3", "0", "post", "", "0");
INSERT INTO `wp_posts` VALUES("4", "1", "2018-07-15 17:31:04", "2018-07-15 20:31:04", "", "Home", "", "publish", "closed", "closed", "", "home", "", "", "2018-07-19 01:27:03", "2018-07-19 04:27:03", "", "0", "http://localhost/maxtraining/?page_id=4", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("5", "1", "2018-07-15 17:31:04", "2018-07-15 20:31:04", "", "Home", "", "inherit", "closed", "closed", "", "4-revision-v1", "", "", "2018-07-15 17:31:04", "2018-07-15 20:31:04", "", "4", "http://localhost/maxtraining/2018/07/15/4-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("6", "1", "2018-07-16 16:46:00", "2018-07-16 19:46:00", "", "Sobre", "", "publish", "closed", "closed", "", "sobre", "", "", "2018-07-16 22:10:13", "2018-07-17 01:10:13", "", "0", "http://localhost/maxtraining/?page_id=6", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("7", "1", "2018-07-16 16:46:00", "2018-07-16 19:46:00", "", "Sobre", "", "inherit", "closed", "closed", "", "6-revision-v1", "", "", "2018-07-16 16:46:00", "2018-07-16 19:46:00", "", "6", "http://localhost/maxtraining/6-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("8", "1", "2018-07-16 16:46:23", "2018-07-16 19:46:23", "", "Servicos", "", "publish", "closed", "closed", "", "servicos", "", "", "2018-07-19 00:40:33", "2018-07-19 03:40:33", "", "0", "http://localhost/maxtraining/?page_id=8", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("9", "1", "2018-07-16 16:46:23", "2018-07-16 19:46:23", "", "Servicos", "", "inherit", "closed", "closed", "", "8-revision-v1", "", "", "2018-07-16 16:46:23", "2018-07-16 19:46:23", "", "8", "http://localhost/maxtraining/8-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("10", "1", "2018-07-16 16:55:24", "2018-07-16 19:55:24", "", "Contato", "", "publish", "closed", "closed", "", "contato", "", "", "2018-07-19 01:15:20", "2018-07-19 04:15:20", "", "0", "http://localhost/maxtraining/?page_id=10", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("11", "1", "2018-07-16 16:46:32", "2018-07-16 19:46:32", "", "Contato", "", "inherit", "closed", "closed", "", "10-revision-v1", "", "", "2018-07-16 16:46:32", "2018-07-16 19:46:32", "", "10", "http://localhost/maxtraining/10-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("12", "1", "2018-07-16 16:46:34", "0000-00-00 00:00:00", "", "Rascunho automático", "", "auto-draft", "closed", "closed", "", "", "", "", "2018-07-16 16:46:34", "0000-00-00 00:00:00", "", "0", "http://localhost/maxtraining/?page_id=12", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("13", "1", "2018-07-16 16:46:46", "2018-07-16 19:46:46", "Este é o exemplo de uma página. É diferente de um post de blog porque é estática e pode aparecer em menus de navegação (na maioria dos temas). A maioria das pessoas começam com uma página \'Sobre\' que as apresenta aos potenciais visitantes do site. Você pode usar algo como:\n\n<blockquote>Oi! Sou um estudante de Biologia e gosto de esportes e natureza. Nos fins de semana pratico futebol com meus amigos no clube local. Eu moro em Valinhos e fiz este site para falar sobre minha cidade.</blockquote>\n\n...ou algo como:\n\n<blockquote>A empresa Logos foi fundada em 1980, e tem provido o comércio local com o que há de melhor em informatização. Localizada em Recife, nossa empresa tem se destacado como um das que também contribuem para o descarte correto de equipamentos eletrônicos substituídos.</blockquote>\n\nComo um novo usuário WordPress, vá ao seu <a href=\"http://localhost/maxtraining/wp-admin/\">Painel</a> para excluir este conteúdo e criar o seu. Divirta-se!", "Página de exemplo", "", "inherit", "closed", "closed", "", "2-revision-v1", "", "", "2018-07-16 16:46:46", "2018-07-16 19:46:46", "", "2", "http://localhost/maxtraining/2-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("14", "1", "2018-07-16 16:54:39", "2018-07-16 19:54:39", "", "Página Home", "", "publish", "closed", "closed", "", "acf_pagina-home", "", "", "2018-07-19 01:25:06", "2018-07-19 04:25:06", "", "0", "http://localhost/maxtraining/?post_type=acf&#038;p=14", "0", "acf", "", "0");
INSERT INTO `wp_posts` VALUES("15", "1", "2018-07-16 16:56:07", "2018-07-16 19:56:07", "", "Home", "", "inherit", "closed", "closed", "", "4-revision-v1", "", "", "2018-07-16 16:56:07", "2018-07-16 19:56:07", "", "4", "http://localhost/maxtraining/4-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("16", "1", "2018-07-16 16:56:36", "2018-07-16 19:56:36", "", "Home", "", "inherit", "closed", "closed", "", "4-revision-v1", "", "", "2018-07-16 16:56:36", "2018-07-16 19:56:36", "", "4", "http://localhost/maxtraining/4-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("17", "1", "2018-07-16 17:18:00", "2018-07-16 20:18:00", "", "Home", "", "inherit", "closed", "closed", "", "4-revision-v1", "", "", "2018-07-16 17:18:00", "2018-07-16 20:18:00", "", "4", "http://localhost/maxtraining/4-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("18", "1", "2018-07-16 17:20:11", "2018-07-16 20:20:11", "", "Home", "", "inherit", "closed", "closed", "", "4-revision-v1", "", "", "2018-07-16 17:20:11", "2018-07-16 20:20:11", "", "4", "http://localhost/maxtraining/4-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("19", "1", "2018-07-16 17:23:12", "2018-07-16 20:23:12", "", "Página Sobre", "", "publish", "closed", "closed", "", "acf_pagina-sobre", "", "", "2018-07-16 21:30:18", "2018-07-17 00:30:18", "", "0", "http://localhost/maxtraining/?post_type=acf&#038;p=19", "0", "acf", "", "0");
INSERT INTO `wp_posts` VALUES("20", "1", "2018-07-16 17:46:10", "2018-07-16 20:46:10", "", "Sobre", "", "inherit", "closed", "closed", "", "6-revision-v1", "", "", "2018-07-16 17:46:10", "2018-07-16 20:46:10", "", "6", "http://localhost/maxtraining/6-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("21", "1", "2018-07-16 17:49:27", "2018-07-16 20:49:27", "", "Sobre", "", "inherit", "closed", "closed", "", "6-revision-v1", "", "", "2018-07-16 17:49:27", "2018-07-16 20:49:27", "", "6", "http://localhost/maxtraining/6-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("22", "1", "2018-07-16 21:54:38", "2018-07-17 00:54:38", "", "nossa_visao", "", "inherit", "open", "closed", "", "nossa_visao", "", "", "2018-07-16 21:54:38", "2018-07-17 00:54:38", "", "6", "http://localhost/maxtraining/wp-content/uploads/2018/07/nossa_visao.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("23", "1", "2018-07-16 21:54:46", "2018-07-17 00:54:46", "", "Sobre", "", "inherit", "closed", "closed", "", "6-revision-v1", "", "", "2018-07-16 21:54:46", "2018-07-17 00:54:46", "", "6", "http://localhost/maxtraining/6-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("24", "1", "2018-07-16 21:57:38", "2018-07-17 00:57:38", "", "nossa_visao", "", "inherit", "open", "closed", "", "nossa_visao-2", "", "", "2018-07-16 21:57:38", "2018-07-17 00:57:38", "", "6", "http://localhost/maxtraining/wp-content/uploads/2018/07/nossa_visao-1.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("25", "1", "2018-07-16 21:57:51", "2018-07-17 00:57:51", "", "nossa_missao", "", "inherit", "open", "closed", "", "nossa_missao", "", "", "2018-07-16 21:57:51", "2018-07-17 00:57:51", "", "6", "http://localhost/maxtraining/wp-content/uploads/2018/07/nossa_missao.jpeg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("26", "1", "2018-07-16 22:03:30", "2018-07-17 01:03:30", "", "nossos_valores", "", "inherit", "open", "closed", "", "nossos_valores", "", "", "2018-07-16 22:03:30", "2018-07-17 01:03:30", "", "6", "http://localhost/maxtraining/wp-content/uploads/2018/07/nossos_valores.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("27", "1", "2018-07-16 22:03:37", "2018-07-17 01:03:37", "", "Sobre", "", "inherit", "closed", "closed", "", "6-revision-v1", "", "", "2018-07-16 22:03:37", "2018-07-17 01:03:37", "", "6", "http://localhost/maxtraining/6-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("28", "1", "2018-07-16 22:04:20", "2018-07-17 01:04:20", "", "Sobre", "", "inherit", "closed", "closed", "", "6-revision-v1", "", "", "2018-07-16 22:04:20", "2018-07-17 01:04:20", "", "6", "http://localhost/maxtraining/6-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("29", "1", "2018-07-16 22:10:05", "2018-07-17 01:10:05", "", "nossos_valores", "", "inherit", "open", "closed", "", "nossos_valores-2", "", "", "2018-07-16 22:10:05", "2018-07-17 01:10:05", "", "6", "http://localhost/maxtraining/wp-content/uploads/2018/07/nossos_valores-1.jpg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("30", "1", "2018-07-16 22:10:13", "2018-07-17 01:10:13", "", "Sobre", "", "inherit", "closed", "closed", "", "6-revision-v1", "", "", "2018-07-16 22:10:13", "2018-07-17 01:10:13", "", "6", "http://localhost/maxtraining/6-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("31", "1", "2018-07-16 22:28:25", "2018-07-17 01:28:25", "", "Página de Serviços", "", "publish", "closed", "closed", "", "acf_pagina-de-servicos", "", "", "2018-07-19 00:38:04", "2018-07-19 03:38:04", "", "0", "http://localhost/maxtraining/?post_type=acf&#038;p=31", "0", "acf", "", "0");
INSERT INTO `wp_posts` VALUES("32", "1", "2018-07-19 00:16:48", "2018-07-19 03:16:48", "", "Servicos", "", "inherit", "closed", "closed", "", "8-revision-v1", "", "", "2018-07-19 00:16:48", "2018-07-19 03:16:48", "", "8", "http://localhost/maxtraining/8-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("33", "1", "2018-07-19 00:23:00", "2018-07-19 03:23:00", "", "Servicos", "", "inherit", "closed", "closed", "", "8-revision-v1", "", "", "2018-07-19 00:23:00", "2018-07-19 03:23:00", "", "8", "http://localhost/maxtraining/8-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("34", "1", "2018-07-19 00:40:33", "2018-07-19 03:40:33", "", "Servicos", "", "inherit", "closed", "closed", "", "8-revision-v1", "", "", "2018-07-19 00:40:33", "2018-07-19 03:40:33", "", "8", "http://localhost/maxtraining/8-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("35", "1", "2018-07-19 00:41:51", "0000-00-00 00:00:00", "", "Rascunho automático", "", "auto-draft", "closed", "closed", "", "", "", "", "2018-07-19 00:41:51", "0000-00-00 00:00:00", "", "0", "http://localhost/maxtraining/?post_type=acf&p=35", "0", "acf", "", "0");
INSERT INTO `wp_posts` VALUES("36", "1", "2018-07-19 00:47:44", "2018-07-19 03:47:44", "", "Redes Sociais", "", "publish", "closed", "closed", "", "acf_redes-sociais", "", "", "2018-07-19 00:47:52", "2018-07-19 03:47:52", "", "0", "http://localhost/maxtraining/?post_type=acf&#038;p=36", "0", "acf", "", "0");
INSERT INTO `wp_posts` VALUES("37", "1", "2018-07-19 00:48:12", "2018-07-19 03:48:12", "", "Rodapé", "", "publish", "closed", "closed", "", "rodape", "", "", "2018-07-19 00:50:58", "2018-07-19 03:50:58", "", "0", "http://localhost/maxtraining/?page_id=37", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("38", "1", "2018-07-19 00:48:12", "2018-07-19 03:48:12", "", "Rodapé", "", "inherit", "closed", "closed", "", "37-revision-v1", "", "", "2018-07-19 00:48:12", "2018-07-19 03:48:12", "", "37", "http://localhost/maxtraining/37-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("39", "1", "2018-07-19 00:49:35", "2018-07-19 03:49:35", "", "Rodapé", "", "inherit", "closed", "closed", "", "37-revision-v1", "", "", "2018-07-19 00:49:35", "2018-07-19 03:49:35", "", "37", "http://localhost/maxtraining/37-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("40", "1", "2018-07-19 01:03:39", "2018-07-19 04:03:39", "", "Página de Contato", "", "publish", "closed", "closed", "", "acf_pagina-de-contato", "", "", "2018-07-19 01:16:23", "2018-07-19 04:16:23", "", "0", "http://localhost/maxtraining/?post_type=acf&#038;p=40", "0", "acf", "", "0");
INSERT INTO `wp_posts` VALUES("41", "1", "2018-07-19 01:09:06", "2018-07-19 04:09:06", "", "Contato", "", "inherit", "closed", "closed", "", "10-revision-v1", "", "", "2018-07-19 01:09:06", "2018-07-19 04:09:06", "", "10", "http://localhost/maxtraining/10-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("42", "1", "2018-07-19 01:13:53", "2018-07-19 04:13:53", "", "Contato", "", "inherit", "closed", "closed", "", "10-revision-v1", "", "", "2018-07-19 01:13:53", "2018-07-19 04:13:53", "", "10", "http://localhost/maxtraining/10-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("43", "1", "2018-07-19 01:15:20", "2018-07-19 04:15:20", "", "Contato", "", "inherit", "closed", "closed", "", "10-revision-v1", "", "", "2018-07-19 01:15:20", "2018-07-19 04:15:20", "", "10", "http://localhost/maxtraining/10-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("44", "1", "2018-07-19 01:25:28", "2018-07-19 04:25:28", "", "nossa_missao", "", "inherit", "open", "closed", "", "nossa_missao-2", "", "", "2018-07-19 01:25:28", "2018-07-19 04:25:28", "", "4", "http://localhost/maxtraining/wp-content/uploads/2018/07/nossa_missao-1.jpeg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("45", "1", "2018-07-19 01:25:33", "2018-07-19 04:25:33", "", "Home", "", "inherit", "closed", "closed", "", "4-revision-v1", "", "", "2018-07-19 01:25:33", "2018-07-19 04:25:33", "", "4", "http://localhost/maxtraining/4-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("46", "1", "2018-07-19 01:26:19", "2018-07-19 04:26:19", "", "Home", "", "inherit", "closed", "closed", "", "4-revision-v1", "", "", "2018-07-19 01:26:19", "2018-07-19 04:26:19", "", "4", "http://localhost/maxtraining/4-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("47", "1", "2018-07-19 01:27:00", "2018-07-19 04:27:00", "", "contato", "", "inherit", "open", "closed", "", "contato-2", "", "", "2018-07-19 01:27:00", "2018-07-19 04:27:00", "", "4", "http://localhost/maxtraining/wp-content/uploads/2018/07/contato.jpeg", "0", "attachment", "image/jpeg", "0");
INSERT INTO `wp_posts` VALUES("48", "1", "2018-07-19 01:27:03", "2018-07-19 04:27:03", "", "Home", "", "inherit", "closed", "closed", "", "4-revision-v1", "", "", "2018-07-19 01:27:03", "2018-07-19 04:27:03", "", "4", "http://localhost/maxtraining/4-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("49", "1", "2018-07-19 09:27:44", "2018-07-19 12:27:44", "", "Modalidades", "", "publish", "closed", "closed", "", "modalidades", "", "", "2018-07-19 09:59:05", "2018-07-19 12:59:05", "", "0", "http://localhost/maxtraining/?page_id=49", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("50", "1", "2018-07-19 09:27:44", "2018-07-19 12:27:44", "", "Modalidades", "", "inherit", "closed", "closed", "", "49-revision-v1", "", "", "2018-07-19 09:27:44", "2018-07-19 12:27:44", "", "49", "http://localhost/maxtraining/49-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("51", "1", "2018-07-19 09:28:12", "2018-07-19 12:28:12", "", "Página de Modalidades", "", "publish", "closed", "closed", "", "acf_pagina-de-modalidades", "", "", "2018-07-19 09:58:39", "2018-07-19 12:58:39", "", "0", "http://localhost/maxtraining/?post_type=acf&#038;p=51", "0", "acf", "", "0");
INSERT INTO `wp_posts` VALUES("52", "1", "2018-07-19 09:51:47", "2018-07-19 12:51:47", "", "Modalidades", "", "inherit", "closed", "closed", "", "49-revision-v1", "", "", "2018-07-19 09:51:47", "2018-07-19 12:51:47", "", "49", "http://localhost/maxtraining/49-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("53", "1", "2018-07-19 09:53:29", "2018-07-19 12:53:29", "", "Modalidades", "", "inherit", "closed", "closed", "", "49-revision-v1", "", "", "2018-07-19 09:53:29", "2018-07-19 12:53:29", "", "49", "http://localhost/maxtraining/49-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("54", "1", "2018-07-19 09:56:16", "2018-07-19 12:56:16", "", "Modalidades", "", "inherit", "closed", "closed", "", "49-revision-v1", "", "", "2018-07-19 09:56:16", "2018-07-19 12:56:16", "", "49", "http://localhost/maxtraining/49-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("55", "1", "2018-07-19 09:56:43", "2018-07-19 12:56:43", "", "Modalidades", "", "inherit", "closed", "closed", "", "49-revision-v1", "", "", "2018-07-19 09:56:43", "2018-07-19 12:56:43", "", "49", "http://localhost/maxtraining/49-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("56", "1", "2018-07-19 09:59:05", "2018-07-19 12:59:05", "", "Modalidades", "", "inherit", "closed", "closed", "", "49-revision-v1", "", "", "2018-07-19 09:59:05", "2018-07-19 12:59:05", "", "49", "http://localhost/maxtraining/49-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("57", "1", "2018-07-19 10:04:08", "2018-07-19 13:04:08", "", "Alunos", "", "publish", "closed", "closed", "", "alunos", "", "", "2018-07-19 11:11:23", "2018-07-19 14:11:23", "", "0", "http://localhost/maxtraining/?page_id=57", "0", "page", "", "0");
INSERT INTO `wp_posts` VALUES("58", "1", "2018-07-19 10:04:08", "2018-07-19 13:04:08", "", "Alunos", "", "inherit", "closed", "closed", "", "57-revision-v1", "", "", "2018-07-19 10:04:08", "2018-07-19 13:04:08", "", "57", "http://localhost/maxtraining/57-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("59", "1", "2018-07-19 10:05:19", "2018-07-19 13:05:19", "", "Alunos", "", "publish", "closed", "closed", "", "acf_alunos", "", "", "2018-07-19 11:10:34", "2018-07-19 14:10:34", "", "0", "http://localhost/maxtraining/?post_type=acf&#038;p=59", "0", "acf", "", "0");
INSERT INTO `wp_posts` VALUES("60", "1", "2018-07-19 10:07:26", "2018-07-19 13:07:26", "", "Alunos", "", "inherit", "closed", "closed", "", "57-revision-v1", "", "", "2018-07-19 10:07:26", "2018-07-19 13:07:26", "", "57", "http://localhost/maxtraining/57-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("61", "1", "2018-07-19 10:09:33", "2018-07-19 13:09:33", "", "Alunos", "", "inherit", "closed", "closed", "", "57-revision-v1", "", "", "2018-07-19 10:09:33", "2018-07-19 13:09:33", "", "57", "http://localhost/maxtraining/57-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("62", "1", "2018-07-19 10:09:53", "2018-07-19 13:09:53", "", "Alunos", "", "inherit", "closed", "closed", "", "57-revision-v1", "", "", "2018-07-19 10:09:53", "2018-07-19 13:09:53", "", "57", "http://localhost/maxtraining/57-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("63", "1", "2018-07-19 10:10:02", "2018-07-19 13:10:02", "", "Alunos", "", "inherit", "closed", "closed", "", "57-revision-v1", "", "", "2018-07-19 10:10:02", "2018-07-19 13:10:02", "", "57", "http://localhost/maxtraining/57-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("64", "1", "2018-07-19 10:17:17", "2018-07-19 13:17:17", "", "Alunos", "", "inherit", "closed", "closed", "", "57-revision-v1", "", "", "2018-07-19 10:17:17", "2018-07-19 13:17:17", "", "57", "http://localhost/maxtraining/57-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("65", "1", "2018-07-19 10:29:24", "2018-07-19 13:29:24", "", "tecnofit", "", "inherit", "open", "closed", "", "tecnofit", "", "", "2018-07-19 10:29:24", "2018-07-19 13:29:24", "", "57", "http://localhost/maxtraining/wp-content/uploads/2018/07/tecnofit.png", "0", "attachment", "image/png", "0");
INSERT INTO `wp_posts` VALUES("66", "1", "2018-07-19 10:29:31", "2018-07-19 13:29:31", "", "Alunos", "", "inherit", "closed", "closed", "", "57-revision-v1", "", "", "2018-07-19 10:29:31", "2018-07-19 13:29:31", "", "57", "http://localhost/maxtraining/57-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("67", "1", "2018-07-19 10:39:06", "2018-07-19 13:39:06", "", "Alunos", "", "inherit", "closed", "closed", "", "57-revision-v1", "", "", "2018-07-19 10:39:06", "2018-07-19 13:39:06", "", "57", "http://localhost/maxtraining/57-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("68", "1", "2018-07-19 11:09:23", "2018-07-19 14:09:23", "", "Alunos", "", "inherit", "closed", "closed", "", "57-revision-v1", "", "", "2018-07-19 11:09:23", "2018-07-19 14:09:23", "", "57", "http://localhost/maxtraining/57-revision-v1/", "0", "revision", "", "0");
INSERT INTO `wp_posts` VALUES("69", "1", "2018-07-19 11:11:23", "2018-07-19 14:11:23", "", "Alunos", "", "inherit", "closed", "closed", "", "57-revision-v1", "", "", "2018-07-19 11:11:23", "2018-07-19 14:11:23", "", "57", "http://localhost/maxtraining/57-revision-v1/", "0", "revision", "", "0");

/* INSERT TABLE DATA: wp_term_relationships */
INSERT INTO `wp_term_relationships` VALUES("1", "1", "0");

/* INSERT TABLE DATA: wp_term_taxonomy */
INSERT INTO `wp_term_taxonomy` VALUES("1", "1", "category", "", "0", "1");

/* INSERT TABLE DATA: wp_terms */
INSERT INTO `wp_terms` VALUES("1", "Sem categoria", "sem-categoria", "0");

/* INSERT TABLE DATA: wp_usermeta */
INSERT INTO `wp_usermeta` VALUES("1", "1", "nickname", "ctmaxtrainig");
INSERT INTO `wp_usermeta` VALUES("2", "1", "first_name", "");
INSERT INTO `wp_usermeta` VALUES("3", "1", "last_name", "");
INSERT INTO `wp_usermeta` VALUES("4", "1", "description", "");
INSERT INTO `wp_usermeta` VALUES("5", "1", "rich_editing", "true");
INSERT INTO `wp_usermeta` VALUES("6", "1", "syntax_highlighting", "true");
INSERT INTO `wp_usermeta` VALUES("7", "1", "comment_shortcuts", "false");
INSERT INTO `wp_usermeta` VALUES("8", "1", "admin_color", "fresh");
INSERT INTO `wp_usermeta` VALUES("9", "1", "use_ssl", "0");
INSERT INTO `wp_usermeta` VALUES("10", "1", "show_admin_bar_front", "true");
INSERT INTO `wp_usermeta` VALUES("11", "1", "locale", "");
INSERT INTO `wp_usermeta` VALUES("12", "1", "wp_capabilities", "a:1:{s:13:\"administrator\";b:1;}");
INSERT INTO `wp_usermeta` VALUES("13", "1", "wp_user_level", "10");
INSERT INTO `wp_usermeta` VALUES("14", "1", "dismissed_wp_pointers", "wp496_privacy");
INSERT INTO `wp_usermeta` VALUES("15", "1", "show_welcome_panel", "0");
INSERT INTO `wp_usermeta` VALUES("16", "1", "session_tokens", "a:1:{s:64:\"c38cab13ad5da372d1ec1c13944c11084b0ef1edd3e191fb7bed1216dfe3f8fc\";a:4:{s:10:\"expiration\";i:1532889665;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1531680065;}}");
INSERT INTO `wp_usermeta` VALUES("17", "1", "wp_dashboard_quick_press_last_post_id", "3");
INSERT INTO `wp_usermeta` VALUES("18", "1", "community-events-location", "a:1:{s:2:\"ip\";s:2:\"::\";}");
INSERT INTO `wp_usermeta` VALUES("19", "1", "meta-box-order_dashboard", "a:4:{s:6:\"normal\";s:38:\"dashboard_right_now,dashboard_activity\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}");
INSERT INTO `wp_usermeta` VALUES("20", "1", "closedpostboxes_dashboard", "a:4:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}");
INSERT INTO `wp_usermeta` VALUES("21", "1", "metaboxhidden_dashboard", "a:0:{}");
INSERT INTO `wp_usermeta` VALUES("22", "1", "closedpostboxes_page", "a:0:{}");
INSERT INTO `wp_usermeta` VALUES("23", "1", "metaboxhidden_page", "a:6:{i:0;s:6:\"acf_14\";i:1;s:10:\"postcustom\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}");
INSERT INTO `wp_usermeta` VALUES("24", "1", "meta-box-order_page", "a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:23:\"submitdiv,pageparentdiv\";s:6:\"normal\";s:71:\"acf_14,acf_19,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}");
INSERT INTO `wp_usermeta` VALUES("25", "1", "screen_layout_page", "2");
INSERT INTO `wp_usermeta` VALUES("26", "1", "wp_user-settings", "editor_expand=off&ed_size=154&libraryContent=browse");
INSERT INTO `wp_usermeta` VALUES("27", "1", "wp_user-settings-time", "1531788886");

/* INSERT TABLE DATA: wp_users */
INSERT INTO `wp_users` VALUES("1", "ctmaxtrainig", "$P$BeZzKMs6/Rl4OgmXZIH6vBk9A2DGOr0", "ctmaxtrainig", "ctmaxtraining@gmail.com", "", "2018-07-15 18:39:07", "", "0", "ctmaxtrainig");

SET FOREIGN_KEY_CHECKS = 1; 

/* Duplicator WordPress Timestamp: 2018-07-22 18:23:06*/
/* DUPLICATOR_MYSQLDUMP_EOF */
