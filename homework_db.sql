-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 26, 2014 at 11:26 AM
-- Server version: 5.5.40-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `homework`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2014-10-25 12:10:24', '2014-10-25 12:10:24', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0),
(2, 19, 'alex alex', 'alex@gmail.com', '', '127.0.0.1', '2014-10-25 12:38:47', '2014-10-25 12:38:47', 'Hello', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/37.0.2062.120 Chrome/37.0.2062.120 Safari/537.36', '', 0, 3),
(3, 24, 'tom tom', 'tom@gmail.com', '', '127.0.0.1', '2014-10-25 12:40:14', '2014-10-25 12:40:14', ':)', 0, '0', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/37.0.2062.120 Chrome/37.0.2062.120 Safari/537.36', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=175 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/homework', 'yes'),
(2, 'home', 'http://localhost/homework', 'yes'),
(3, 'blogname', 'homework', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@gmail.com', 'yes'),
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
(28, 'permalink_structure', '', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'twentyfourteen', 'yes'),
(42, 'stylesheet', 'twentyfourteen', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '29630', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '29630', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:5:{i:1414325427;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1414326222;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1414326552;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1414351140;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(98, '_transient_random_seed', '834eca4a3b08c10c8f801297df639d58', 'yes'),
(99, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.0.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.0.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.0-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.0-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.0";s:7:"version";s:3:"4.0";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1414314795;s:15:"version_checked";s:3:"4.0";s:12:"translations";a:0:{}}', 'yes'),
(100, 'auth_key', 'GSSR`p,)oD$f+2n}3AUJ %d$ASLX9-*?@+A^()6j;L0NBNlY6wH9z )vytcWXEF%', 'yes'),
(101, 'auth_salt', 'z?%-L9LsbsTMP;R*<;K;g8L#=0A%Sk$(nCScgy3?Zsros`*m+%hdkqjun6?$f3`p', 'yes'),
(102, 'logged_in_key', 'SFi TQZXO,ey}Ww%G=Z@%*3yUM/jiCfio@ dsC_whsna7wDc,D5Iy4RjZlsj[Vfx', 'yes'),
(103, 'logged_in_salt', 'UZH_MM?al1(nd5gq@L6Tszq[j3P/yhfWt)`QT:ve[z}:g|<JP+,QZO4ruEpNPNSz', 'yes'),
(105, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1414314796;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.0.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.0.2.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'yes'),
(106, 'nonce_key', 'dB`RJ1*XW-KFxJ=M.KzVTjH_R.Kjyr#no`bRQ|_pN+=<f<)8MA_K6,y%-^~Kz;/D', 'yes'),
(107, 'nonce_salt', '=rpi0:O)+/F291h81`hN25j[2nP9l9vq]h75y]Q k+aQm*g7LG5@xR6$/*:-nwUi', 'yes'),
(110, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1414314796;s:7:"checked";a:3:{s:14:"twentyfourteen";s:3:"1.2";s:14:"twentythirteen";s:3:"1.3";s:12:"twentytwelve";s:3:"1.5";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(111, '_site_transient_timeout_browser_6003f8532392ea83e3e32a7fb0de2027', '1414843834', 'yes'),
(112, '_site_transient_browser_6003f8532392ea83e3e32a7fb0de2027', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"33.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(114, 'can_compress_scripts', '0', 'yes'),
(127, '_transient_timeout_plugin_slugs', '1414325440', 'no'),
(128, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(135, 'theme_mods_twentyfourteen', 'a:1:{s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(136, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:1:{i:0;i:2;}}', 'yes'),
(148, 'category_children', 'a:2:{i:3;a:2:{i:0;i:4;i:1;i:5;}i:6;a:2:{i:0;i:7;i:1;i:8;}}', 'yes'),
(153, '_site_transient_timeout_browser_3b1da8af44e5b19a38e3ff8c067ea72d', '1414845304', 'yes'),
(154, '_site_transient_browser_3b1da8af44e5b19a38e3ff8c067ea72d', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"37.0.2062.120";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(166, '_transient_featured_content_ids', 'a:0:{}', 'yes'),
(167, '_transient_is_multi_author', '1', 'yes'),
(168, '_transient_twentyfourteen_category_count', '7', 'yes'),
(171, '_site_transient_timeout_theme_roots', '1414316595', 'yes'),
(172, '_site_transient_theme_roots', 'a:3:{s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes'),
(173, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1414358112', 'no'),
(174, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: 0: php_network_getaddresses: getaddrinfo failed: Name or service not known</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: 0: php_network_getaddresses: getaddrinfo failed: Name or service not known</p></div><div class="rss-widget"><ul></ul></div>', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 5, '_edit_lock', '1414240029:1'),
(3, 5, '_edit_last', '1'),
(4, 5, '_wp_page_template', 'default'),
(5, 6, '_menu_item_type', 'post_type'),
(6, 6, '_menu_item_menu_item_parent', '0'),
(7, 6, '_menu_item_object_id', '5'),
(8, 6, '_menu_item_object', 'page'),
(9, 6, '_menu_item_target', ''),
(10, 6, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(11, 6, '_menu_item_xfn', ''),
(12, 6, '_menu_item_url', ''),
(13, 8, '_edit_last', '1'),
(14, 8, '_wp_page_template', 'default'),
(15, 9, '_menu_item_type', 'post_type'),
(16, 9, '_menu_item_menu_item_parent', '0'),
(17, 9, '_menu_item_object_id', '8'),
(18, 9, '_menu_item_object', 'page'),
(19, 9, '_menu_item_target', ''),
(20, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(21, 9, '_menu_item_xfn', ''),
(22, 9, '_menu_item_url', ''),
(23, 8, '_edit_lock', '1414240110:1'),
(24, 11, '_edit_lock', '1414240063:1'),
(25, 11, '_edit_last', '1'),
(26, 11, '_wp_page_template', 'default'),
(27, 12, '_menu_item_type', 'post_type'),
(28, 12, '_menu_item_menu_item_parent', '0'),
(29, 12, '_menu_item_object_id', '11'),
(30, 12, '_menu_item_object', 'page'),
(31, 12, '_menu_item_target', ''),
(32, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(33, 12, '_menu_item_xfn', ''),
(34, 12, '_menu_item_url', ''),
(35, 14, '_edit_lock', '1414240080:1'),
(36, 14, '_edit_last', '1'),
(37, 14, '_wp_page_template', 'default'),
(38, 16, '_edit_lock', '1414240093:1'),
(39, 16, '_edit_last', '1'),
(40, 16, '_wp_page_template', 'default'),
(41, 2, '_wp_trash_meta_status', 'publish'),
(42, 2, '_wp_trash_meta_time', '1414240241'),
(43, 19, '_edit_lock', '1414240675:1'),
(44, 19, '_edit_last', '1'),
(47, 22, '_edit_lock', '1414240460:2'),
(48, 22, '_edit_last', '2'),
(51, 24, '_edit_lock', '1414240742:1'),
(52, 24, '_edit_last', '1'),
(55, 27, '_edit_lock', '1414240571:3'),
(56, 27, '_edit_last', '3'),
(59, 30, '_edit_lock', '1414240645:4'),
(60, 30, '_edit_last', '4');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2014-10-25 12:10:24', '2014-10-25 12:10:24', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2014-10-25 12:10:24', '2014-10-25 12:10:24', '', 0, 'http://localhost/homework/?p=1', 0, 'post', '', 1),
(2, 1, '2014-10-25 12:10:24', '2014-10-25 12:10:24', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/homework/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'open', 'open', '', 'sample-page', '', '', '2014-10-25 12:30:41', '2014-10-25 12:30:41', '', 0, 'http://localhost/homework/?page_id=2', 0, 'page', '', 0),
(3, 1, '2014-10-25 12:10:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-10-25 12:10:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/homework/?p=3', 0, 'post', '', 0),
(4, 1, '2014-10-25 12:10:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-10-25 12:10:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/homework/?p=4', 0, 'post', '', 0),
(5, 1, '2014-10-25 12:29:31', '2014-10-25 12:29:31', '', 'О нас', '', 'publish', 'open', 'open', '', '%d0%be-%d0%bd%d0%b0%d1%81', '', '', '2014-10-25 12:29:31', '2014-10-25 12:29:31', '', 0, 'http://localhost/homework/?page_id=5', 0, 'page', '', 0),
(6, 1, '2014-10-25 12:29:31', '2014-10-25 12:29:31', ' ', '', '', 'publish', 'open', 'open', '', '6', '', '', '2014-10-25 12:29:31', '2014-10-25 12:29:31', '', 0, 'http://localhost/homework/?p=6', 0, 'nav_menu_item', '', 0),
(7, 1, '2014-10-25 12:29:31', '2014-10-25 12:29:31', '', 'О нас', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-10-25 12:29:31', '2014-10-25 12:29:31', '', 5, 'http://localhost/homework/?p=7', 0, 'revision', '', 0),
(8, 1, '2014-10-25 12:29:42', '2014-10-25 12:29:42', '', 'Контакты', '', 'publish', 'open', 'open', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b', '', '', '2014-10-25 12:30:52', '2014-10-25 12:30:52', '', 0, 'http://localhost/homework/?page_id=8', 1, 'page', '', 0),
(9, 1, '2014-10-25 12:29:42', '2014-10-25 12:29:42', ' ', '', '', 'publish', 'open', 'open', '', '9', '', '', '2014-10-25 12:29:42', '2014-10-25 12:29:42', '', 0, 'http://localhost/homework/?p=9', 2, 'nav_menu_item', '', 0),
(10, 1, '2014-10-25 12:29:42', '2014-10-25 12:29:42', '', 'Контакты', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2014-10-25 12:29:42', '2014-10-25 12:29:42', '', 8, 'http://localhost/homework/?p=10', 0, 'revision', '', 0),
(11, 1, '2014-10-25 12:30:05', '2014-10-25 12:30:05', '', 'Животные', '', 'publish', 'open', 'open', '', '%d0%b6%d0%b8%d0%b2%d0%be%d1%82%d0%bd%d1%8b%d0%b5', '', '', '2014-10-25 12:30:05', '2014-10-25 12:30:05', '', 0, 'http://localhost/homework/?page_id=11', 2, 'page', '', 0),
(12, 1, '2014-10-25 12:30:06', '2014-10-25 12:30:06', ' ', '', '', 'publish', 'open', 'open', '', '12', '', '', '2014-10-25 12:30:06', '2014-10-25 12:30:06', '', 0, 'http://localhost/homework/?p=12', 3, 'nav_menu_item', '', 0),
(13, 1, '2014-10-25 12:30:05', '2014-10-25 12:30:05', '', 'Животные', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2014-10-25 12:30:05', '2014-10-25 12:30:05', '', 11, 'http://localhost/homework/?p=13', 0, 'revision', '', 0),
(14, 1, '2014-10-25 12:30:22', '2014-10-25 12:30:22', '', 'Собачки', '', 'publish', 'open', 'open', '', '%d1%81%d0%be%d0%b1%d0%b0%d1%87%d0%ba%d0%b8', '', '', '2014-10-25 12:30:22', '2014-10-25 12:30:22', '', 11, 'http://localhost/homework/?page_id=14', 0, 'page', '', 0),
(15, 1, '2014-10-25 12:30:22', '2014-10-25 12:30:22', '', 'Собачки', '', 'inherit', 'open', 'open', '', '14-revision-v1', '', '', '2014-10-25 12:30:22', '2014-10-25 12:30:22', '', 14, 'http://localhost/homework/?p=15', 0, 'revision', '', 0),
(16, 1, '2014-10-25 12:30:33', '2014-10-25 12:30:33', '', 'Котики', '', 'publish', 'open', 'open', '', '%d0%ba%d0%be%d1%82%d0%b8%d0%ba%d0%b8', '', '', '2014-10-25 12:30:33', '2014-10-25 12:30:33', '', 11, 'http://localhost/homework/?page_id=16', 0, 'page', '', 0),
(17, 1, '2014-10-25 12:30:33', '2014-10-25 12:30:33', '', 'Котики', '', 'inherit', 'open', 'open', '', '16-revision-v1', '', '', '2014-10-25 12:30:33', '2014-10-25 12:30:33', '', 16, 'http://localhost/homework/?p=17', 0, 'revision', '', 0),
(18, 1, '2014-10-25 12:30:41', '2014-10-25 12:30:41', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/homework/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2014-10-25 12:30:41', '2014-10-25 12:30:41', '', 2, 'http://localhost/homework/?p=18', 0, 'revision', '', 0),
(19, 1, '2014-10-25 12:34:11', '2014-10-25 12:34:11', 'Hello! This is my first post', 'HI!', '', 'publish', 'open', 'open', '', 'hi', '', '', '2014-10-25 12:34:11', '2014-10-25 12:34:11', '', 0, 'http://localhost/homework/?p=19', 0, 'post', '', 1),
(20, 1, '2014-10-25 12:34:11', '2014-10-25 12:34:11', 'Hello! This is my first post', 'HI!', '', 'inherit', 'open', 'open', '', '19-revision-v1', '', '', '2014-10-25 12:34:11', '2014-10-25 12:34:11', '', 19, 'http://localhost/homework/?p=20', 0, 'revision', '', 0),
(21, 2, '2014-10-25 12:35:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-10-25 12:35:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/homework/?p=21', 0, 'post', '', 0),
(22, 2, '2014-10-25 12:36:40', '2014-10-25 12:36:40', 'text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text', 'Cats', '', 'publish', 'open', 'open', '', 'cats', '', '', '2014-10-25 12:36:40', '2014-10-25 12:36:40', '', 0, 'http://localhost/homework/?p=22', 0, 'post', '', 0),
(23, 2, '2014-10-25 12:36:40', '2014-10-25 12:36:40', 'text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text', 'Cats', '', 'inherit', 'open', 'open', '', '22-revision-v1', '', '', '2014-10-25 12:36:40', '2014-10-25 12:36:40', '', 22, 'http://localhost/homework/?p=23', 0, 'revision', '', 0),
(24, 2, '2014-10-25 12:37:19', '2014-10-25 12:37:19', 'text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text', 'Dog', '', 'publish', 'open', 'open', '', 'dod', '', '', '2014-10-25 12:41:15', '2014-10-25 12:41:15', '', 0, 'http://localhost/homework/?p=24', 0, 'post', '', 0),
(25, 2, '2014-10-25 12:37:19', '2014-10-25 12:37:19', 'text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text', 'Dod', '', 'inherit', 'open', 'open', '', '24-revision-v1', '', '', '2014-10-25 12:37:19', '2014-10-25 12:37:19', '', 24, 'http://localhost/homework/?p=25', 0, 'revision', '', 0),
(26, 3, '2014-10-25 12:37:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-10-25 12:37:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/homework/?p=26', 0, 'post', '', 0),
(27, 3, '2014-10-25 12:38:26', '2014-10-25 12:38:26', 'text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text', 'Cars', '', 'publish', 'open', 'open', '', 'cars', '', '', '2014-10-25 12:38:26', '2014-10-25 12:38:26', '', 0, 'http://localhost/homework/?p=27', 0, 'post', '', 0),
(28, 3, '2014-10-25 12:38:26', '2014-10-25 12:38:26', 'text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text', 'Cars', '', 'inherit', 'open', 'open', '', '27-revision-v1', '', '', '2014-10-25 12:38:26', '2014-10-25 12:38:26', '', 27, 'http://localhost/homework/?p=28', 0, 'revision', '', 0),
(29, 4, '2014-10-25 12:39:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-10-25 12:39:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/homework/?p=29', 0, 'post', '', 0),
(30, 4, '2014-10-25 12:39:44', '2014-10-25 12:39:44', 'text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text', 'Cats and dogs', '', 'publish', 'open', 'open', '', 'cats-and-dogs', '', '', '2014-10-25 12:39:44', '2014-10-25 12:39:44', '', 0, 'http://localhost/homework/?p=30', 0, 'post', '', 0),
(31, 4, '2014-10-25 12:39:44', '2014-10-25 12:39:44', 'text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text', 'Cats and dogs', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2014-10-25 12:39:44', '2014-10-25 12:39:44', '', 30, 'http://localhost/homework/?p=31', 0, 'revision', '', 0),
(32, 1, '2014-10-25 12:41:15', '2014-10-25 12:41:15', 'text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text  text', 'Dog', '', 'inherit', 'open', 'open', '', '24-revision-v1', '', '', '2014-10-25 12:41:15', '2014-10-25 12:41:15', '', 24, 'http://localhost/homework/?p=32', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'my menu', 'my-menu', 0),
(3, 'Animals', 'animals', 0),
(4, 'Cats', 'cats', 0),
(5, 'Dogs', 'dogs', 0),
(6, 'Cars', 'cars', 0),
(7, 'New cars', 'new-cars', 0),
(8, 'Retro cars', 'retro-cars', 0),
(9, 'Other', 'other', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 2, 0),
(9, 2, 0),
(12, 2, 0),
(19, 9, 0),
(22, 4, 0),
(24, 3, 0),
(24, 5, 0),
(27, 6, 0),
(27, 7, 0),
(30, 4, 0),
(30, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 3, 2),
(5, 5, 'category', '', 3, 2),
(6, 6, 'category', '', 0, 1),
(7, 7, 'category', '', 6, 1),
(8, 8, 'category', '', 6, 0),
(9, 9, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=74 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:3:{s:64:"fd40683c7db3c8788ea8be9b869bc138cebecf7892eafcdc800d9a85468d50bf";i:1414411831;s:64:"6c4cc3da1d291f55f3d3b55c43b560be59054524afc867361fe13371ed3592a5";i:1414411833;s:64:"509cfae0a0263fdd79b16e898e7bf886d31b332897acc41f8b974907d619c7cf";i:1415524536;}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(16, 2, 'nickname', 'anka'),
(17, 2, 'first_name', 'anka'),
(18, 2, 'last_name', 'anka'),
(19, 2, 'description', ''),
(20, 2, 'rich_editing', 'true'),
(21, 2, 'comment_shortcuts', 'false'),
(22, 2, 'admin_color', 'fresh'),
(23, 2, 'use_ssl', '0'),
(24, 2, 'show_admin_bar_front', 'true'),
(25, 2, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(26, 2, 'wp_user_level', '10'),
(27, 2, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),
(28, 3, 'nickname', 'Alex'),
(29, 3, 'first_name', 'alex'),
(30, 3, 'last_name', 'alex'),
(31, 3, 'description', ''),
(32, 3, 'rich_editing', 'true'),
(33, 3, 'comment_shortcuts', 'false'),
(34, 3, 'admin_color', 'fresh'),
(35, 3, 'use_ssl', '0'),
(36, 3, 'show_admin_bar_front', 'true'),
(37, 3, 'wp_capabilities', 'a:1:{s:6:"editor";b:1;}'),
(38, 3, 'wp_user_level', '7'),
(39, 3, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),
(40, 4, 'nickname', 'tom'),
(41, 4, 'first_name', 'tom'),
(42, 4, 'last_name', 'tom'),
(43, 4, 'description', ''),
(44, 4, 'rich_editing', 'true'),
(45, 4, 'comment_shortcuts', 'false'),
(46, 4, 'admin_color', 'fresh'),
(47, 4, 'use_ssl', '0'),
(48, 4, 'show_admin_bar_front', 'true'),
(49, 4, 'wp_capabilities', 'a:1:{s:6:"author";b:1;}'),
(50, 4, 'wp_user_level', '2'),
(51, 4, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),
(52, 5, 'nickname', 'ivan'),
(53, 5, 'first_name', 'ivan'),
(54, 5, 'last_name', 'ivan'),
(55, 5, 'description', ''),
(56, 5, 'rich_editing', 'true'),
(57, 5, 'comment_shortcuts', 'false'),
(58, 5, 'admin_color', 'fresh'),
(59, 5, 'use_ssl', '0'),
(60, 5, 'show_admin_bar_front', 'true'),
(61, 5, 'wp_capabilities', 'a:1:{s:11:"contributor";b:1;}'),
(62, 5, 'wp_user_level', '1'),
(63, 5, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),
(64, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(65, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}'),
(67, 2, 'wp_dashboard_quick_press_last_post_id', '21'),
(68, 2, 'wp_user-settings', 'libraryContent=browse'),
(69, 2, 'wp_user-settings-time', '1414240595'),
(71, 3, 'wp_dashboard_quick_press_last_post_id', '26'),
(72, 4, 'session_tokens', 'a:1:{s:64:"b8235925bb628909338dc7180d21e14602a5f6609c8c3af367ed278c2fe1152b";i:1414413546;}'),
(73, 4, 'wp_dashboard_quick_press_last_post_id', '29');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BjBdmbolvD11etxa1h5s.R9LQqJFMj1', 'admin', 'admin@gmail.com', '', '2014-10-25 12:10:23', '', 0, 'admin'),
(2, 'anka', '$P$BYHsRU0PTthlx8fW0ABUQ8UOEcKze40', 'anka', 'ankaO@gmail.com', '', '2014-10-25 12:26:05', '', 0, 'anka anka'),
(3, 'Alex', '$P$BXBAFzYDhWzG.fwaPgve4eGc.xFT3T0', 'alex', 'alex@gmail.com', '', '2014-10-25 12:26:41', '', 0, 'alex alex'),
(4, 'tom', '$P$BhBg2r6KrElb1MYRqIBfS62.5uzkcM0', 'tom', 'tom@gmail.com', '', '2014-10-25 12:27:34', '', 0, 'tom tom'),
(5, 'ivan', '$P$BQ/I6yV.knWUOPb.436h24SXRXpJid0', 'ivan', 'ivan@gmail.com', '', '2014-10-25 12:28:28', '', 0, 'ivan ivan');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
