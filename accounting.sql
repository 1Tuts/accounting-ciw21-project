-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 01, 2012 at 10:21 �.�
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `accounting`
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

--
-- Dumping data for table `wp_commentmeta`
--


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
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'آقای وردپرس', '', 'http://wordpress.org/', '', '2012-10-21 20:56:42', '2012-10-21 20:56:42', 'سلام،‌ این نوشته یک «دیدگاه» است.<br />برای پاک کردن یا ویرایش یک دیدگاه، باید وارد بخش مدیریت شوید، سپس به بخش دیدگاه‌ها بروید٬ در آن‌جا می‌توانید دیدگاه‌ها را ویرایش و یا پاک کنید.', 0, 'post-trashed', '', '', 0, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `wp_links`
--

INSERT INTO `wp_links` (`link_id`, `link_url`, `link_name`, `link_image`, `link_target`, `link_description`, `link_visible`, `link_owner`, `link_rating`, `link_updated`, `link_rel`, `link_notes`, `link_rss`) VALUES
(1, 'http://codex.wp-persian.com', 'مستندات', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(2, 'http://wp-persian.com/blog/', 'وبلاگ وردپرس', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', 'http://wp-persian.com/feed/'),
(3, 'http://forum.wp-persian.com/', 'انجمن‌های انگلیسی پشتیبانی', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(4, 'http://wordpress.org/extend/plugins/', 'افزونه‌ها', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(5, 'http://wordpress.org/extend/themes/', 'پوسته‌ها', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(6, 'http://forum.wp-persian.com/forum/7', 'بازخورد', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(7, 'http://planet.wp-persian.com/', 'سیاره وردپرس', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=188 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress.fa', 'yes'),
(2, 'blogname', 'Accounting', 'yes'),
(3, 'blogdescription', 'یک سایت دیگر با وردپرس فارسی', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'a.jalali1991@gmail.com', 'yes'),
(6, 'start_of_week', '0', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '1', 'yes'),
(21, 'default_post_edit_rows', '20', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'links_recently_updated_prepend', '<em>', 'yes'),
(27, 'links_recently_updated_append', '</em>', 'yes'),
(28, 'links_recently_updated_time', '120', 'yes'),
(29, 'comment_moderation', '0', 'yes'),
(30, 'moderation_notify', '1', 'yes'),
(31, 'permalink_structure', '', 'yes'),
(32, 'gzipcompression', '0', 'yes'),
(33, 'hack_file', '0', 'yes'),
(34, 'blog_charset', 'UTF-8', 'yes'),
(35, 'moderation_keys', '', 'no'),
(36, 'active_plugins', 'a:0:{}', 'yes'),
(37, 'home', 'http://localhost/wordpress.fa', 'yes'),
(38, 'category_base', '', 'yes'),
(39, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(40, 'advanced_edit', '0', 'yes'),
(41, 'comment_max_links', '2', 'yes'),
(42, 'gmt_offset', '0', 'yes'),
(43, 'default_email_category', '1', 'yes'),
(44, 'recently_edited', '', 'no'),
(45, 'template', 'Accounting', 'yes'),
(46, 'stylesheet', 'Accounting', 'yes'),
(47, 'comment_whitelist', '1', 'yes'),
(48, 'blacklist_keys', '', 'no'),
(49, 'comment_registration', '0', 'yes'),
(50, 'html_type', 'text/html', 'yes'),
(51, 'use_trackback', '0', 'yes'),
(52, 'default_role', 'subscriber', 'yes'),
(53, 'db_version', '21115', 'yes'),
(54, 'uploads_use_yearmonth_folders', '1', 'yes'),
(55, 'upload_path', '', 'yes'),
(56, 'blog_public', '1', 'yes'),
(57, 'default_link_category', '2', 'yes'),
(58, 'show_on_front', 'posts', 'yes'),
(59, 'tag_base', '', 'yes'),
(60, 'show_avatars', '1', 'yes'),
(61, 'avatar_rating', 'G', 'yes'),
(62, 'upload_url_path', '', 'yes'),
(63, 'thumbnail_size_w', '150', 'yes'),
(64, 'thumbnail_size_h', '150', 'yes'),
(65, 'thumbnail_crop', '1', 'yes'),
(66, 'medium_size_w', '300', 'yes'),
(67, 'medium_size_h', '300', 'yes'),
(68, 'avatar_default', 'mystery', 'yes'),
(69, 'enable_app', '0', 'yes'),
(70, 'enable_xmlrpc', '0', 'yes'),
(71, 'large_size_w', '1024', 'yes'),
(72, 'large_size_h', '1024', 'yes'),
(73, 'image_default_link_type', 'file', 'yes'),
(74, 'image_default_size', '', 'yes'),
(75, 'image_default_align', '', 'yes'),
(76, 'close_comments_for_old_posts', '0', 'yes'),
(77, 'close_comments_days_old', '14', 'yes'),
(78, 'thread_comments', '1', 'yes'),
(79, 'thread_comments_depth', '5', 'yes'),
(80, 'page_comments', '0', 'yes'),
(81, 'comments_per_page', '50', 'yes'),
(82, 'default_comments_page', 'newest', 'yes'),
(83, 'comment_order', 'asc', 'yes'),
(84, 'sticky_posts', 'a:0:{}', 'yes'),
(85, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(86, 'widget_text', 'a:0:{}', 'yes'),
(87, 'widget_rss', 'a:0:{}', 'yes'),
(88, 'uninstall_plugins', 'a:0:{}', 'no'),
(89, 'timezone_string', '', 'yes'),
(90, 'embed_autourls', '1', 'yes'),
(91, 'embed_size_w', '', 'yes'),
(92, 'embed_size_h', '600', 'yes'),
(93, 'page_for_posts', '0', 'yes'),
(94, 'page_on_front', '0', 'yes'),
(95, 'default_post_format', '0', 'yes'),
(96, 'initial_db_version', '21115', 'yes'),
(97, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(98, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-l";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(104, 'cron', 'a:5:{i:1350853008;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1350853030;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1350856277;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1350856363;a:1:{s:8:"do_pings";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}s:7:"version";i:2;}', 'yes'),
(105, '_transient_doing_cron', '1351761544.3949580192565917968750', 'yes'),
(106, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:2:{i:0;O:8:"stdClass":9:{s:8:"response";s:7:"upgrade";s:8:"download";s:49:"http://fa.wordpress.org/wordpress-3.4.2-fa_IR.zip";s:6:"locale";s:5:"fa_IR";s:8:"packages";O:8:"stdClass":4:{s:4:"full";s:49:"http://fa.wordpress.org/wordpress-3.4.2-fa_IR.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;}s:7:"current";s:5:"3.4.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.2";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":9:{s:8:"response";s:7:"upgrade";s:8:"download";s:40:"http://wordpress.org/wordpress-3.4.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":4:{s:4:"full";s:40:"http://wordpress.org/wordpress-3.4.2.zip";s:10:"no_content";s:51:"http://wordpress.org/wordpress-3.4.2-no-content.zip";s:11:"new_bundled";s:52:"http://wordpress.org/wordpress-3.4.2-new-bundled.zip";s:7:"partial";s:50:"http://wordpress.org/wordpress-3.4.2-partial-1.zip";}s:7:"current";s:5:"3.4.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.2";s:15:"partial_version";s:5:"3.4.1";}}s:12:"last_checked";i:1351714016;s:15:"version_checked";s:5:"3.4.1";}', 'yes'),
(107, '_site_transient_update_plugins', 'O:8:"stdClass":3:{s:12:"last_checked";i:1351714267;s:7:"checked";a:3:{s:19:"akismet/akismet.php";s:5:"2.5.6";s:9:"hello.php";s:3:"1.6";s:23:"wp-jalali/wp-jalali.php";s:3:"4.3";}s:8:"response";a:0:{}}', 'yes'),
(110, '_site_transient_update_themes', 'O:8:"stdClass":3:{s:12:"last_checked";i:1351714713;s:7:"checked";a:4:{s:10:"Accounting";s:3:"1.1";s:15:"Test-Accounting";s:0:"";s:12:"twentyeleven";s:3:"1.4";s:9:"twentyten";s:3:"1.4";}s:8:"response";a:0:{}}', 'yes'),
(113, 'dashboard_widget_options', 'a:4:{s:25:"dashboard_recent_comments";a:1:{s:5:"items";i:5;}s:24:"dashboard_incoming_links";a:5:{s:4:"home";s:29:"http://localhost/wordpress.fa";s:4:"link";s:105:"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://localhost/wordpress.fa/";s:3:"url";s:138:"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://localhost/wordpress.fa/";s:5:"items";i:10;s:9:"show_date";b:0;}s:17:"dashboard_primary";a:7:{s:4:"link";s:27:"http://wp-persian.com/blog/";s:3:"url";s:27:"http://wp-persian.com/feed/";s:5:"title";s:23:"وبلاگ وردپرس";s:5:"items";i:2;s:12:"show_summary";i:1;s:11:"show_author";i:0;s:9:"show_date";i:1;}s:19:"dashboard_secondary";a:7:{s:4:"link";s:29:"http://planet.wp-persian.com/";s:3:"url";s:34:"http://planet.wp-persian.com/feed/";s:5:"title";s:32:"دیگر اخبار وردپرس";s:5:"items";i:5;s:12:"show_summary";i:0;s:11:"show_author";i:0;s:9:"show_date";i:0;}}', 'yes'),
(114, 'can_compress_scripts', '1', 'yes'),
(143, 'theme_mods_twentyeleven', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1350853222;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:9:"sidebar-4";a:0:{}s:9:"sidebar-5";a:0:{}}}}', 'yes'),
(144, 'current_theme', '', 'yes'),
(145, 'theme_mods_Test-Accounting', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1351714046;s:4:"data";a:3:{s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-l";a:0:{}}}}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(150, 'category_children', 'a:0:{}', 'yes'),
(151, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(152, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(153, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(158, '_site_transient_timeout_theme_roots', '1351715821', 'yes'),
(159, '_site_transient_theme_roots', 'a:4:{s:10:"Accounting";s:7:"/themes";s:15:"Test-Accounting";s:7:"/themes";s:12:"twentyeleven";s:7:"/themes";s:9:"twentyten";s:7:"/themes";}', 'yes'),
(160, '_site_transient_timeout_browser_d2e6e1f365d3dc697b1675d5eb83ee63', '1352318826', 'yes'),
(161, '_site_transient_browser_d2e6e1f365d3dc697b1675d5eb83ee63', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"22.0.1229.94";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(162, '_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0', '1351757238', 'no'),
(163, '_transient_dash_aa95765b5cc111c56d5993d476b1c2f0', '<div class="rss-widget"><p><strong>خطای RSS:</strong> A feed could not be found at http://planet.wp-persian.com/feed/. A feed with an invalid mime type may fall victim to this error, or SimplePie was unable to auto-discover it.. Use force_feed() if you are certain this URL is a real feed.</p></div>', 'no'),
(164, '_site_transient_timeout_wporg_theme_feature_list', '1351725514', 'yes'),
(165, '_transient_timeout_feed_1e2ffee29b94cfb5d3816e721235f11e', '1351757238', 'no'),
(166, '_site_transient_wporg_theme_feature_list', 'a:5:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:7:"Columns";a:6:{i:0;s:10:"one-column";i:1;s:11:"two-columns";i:2;s:13:"three-columns";i:3;s:12:"four-columns";i:4;s:12:"left-sidebar";i:5;s:13:"right-sidebar";}s:5:"Width";a:2:{i:0;s:11:"fixed-width";i:1;s:14:"flexible-width";}s:8:"Features";a:19:{i:0;s:8:"blavatar";i:1;s:10:"buddypress";i:2;s:17:"custom-background";i:3;s:13:"custom-colors";i:4;s:13:"custom-header";i:5;s:11:"custom-menu";i:6;s:12:"editor-style";i:7;s:21:"featured-image-header";i:8;s:15:"featured-images";i:9;s:15:"flexible-header";i:10;s:20:"front-page-post-form";i:11;s:19:"full-width-template";i:12;s:12:"microformats";i:13;s:12:"post-formats";i:14;s:20:"rtl-language-support";i:15;s:11:"sticky-post";i:16;s:13:"theme-options";i:17;s:17:"threaded-comments";i:18;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(167, '_transient_feed_1e2ffee29b94cfb5d3816e721235f11e', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:50:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:3:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:23:"وردپرس فارسی";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:21:"http://wp-persian.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:70:"وبگاه (وب سایت) رسمی پروژه وردپرس فارسی";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 08 Sep 2012 15:08:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"fa-IR";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:39:"http://wordpress.org/?v=3.5-beta2-22334";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:32:"وردپرس فارس ۳٫۴٫۲";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"http://wp-persian.com/1391/06/18/wp-persian-342/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:57:"http://wp-persian.com/1391/06/18/wp-persian-342/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 08 Sep 2012 14:44:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:23:"وردپرس فارسی";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wp-persian.com/?p=319";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:574:"وردپرس فارس ۳٫۴٫۲ برای دریافت آماده شد. در این نگارش عملکرد وردپرس در برخی قسمت‌ها بهبود یافته و چند مشکل امنیتی نیز برطرف شده است. پرونده‌های تغییریافته را می‌توانید در این نشانی مشاهده کنید. می‌توانید نگارش جدید وردپرس فارسی را از این بخش دریافت٬ یا به‌صورت خودکار از بخش مدیریت سایت خود٬ به‌روز نمایید. توجه [...]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"گناهکار";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:920:"<p>وردپرس فارس ۳٫۴٫۲ برای دریافت آماده شد. در این نگارش عملکرد وردپرس در برخی قسمت‌ها بهبود یافته و چند مشکل امنیتی نیز برطرف شده است.</p>\n<p>پرونده‌های تغییریافته را می‌توانید در <a href="http://core.trac.wordpress.org/changeset?old_path=tags/3.4.1&amp;new_path=tags/3.4.2">این نشانی</a> مشاهده کنید.</p>\n<p>می‌توانید نگارش جدید وردپرس فارسی را از <a href="http://wp-persian.com/download/">این بخش</a> دریافت٬ یا به‌صورت خودکار از بخش مدیریت سایت خود٬ به‌روز نمایید.<br />\n<em>توجه داشته باشید که پیغام به‌روزرسانی در بخش مدیریت سایت شما باید مربوط به وردپرس فارسی (fa_IR) باشد.</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:53:"http://wp-persian.com/1391/06/18/wp-persian-342/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:66:"تسلیت به بازماندگان زلزله آذربایجان";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:224:"http://wp-persian.com/1391/05/23/%d8%aa%d8%b3%d9%84%db%8c%d8%aa-%d8%a8%d9%87-%d8%a8%d8%a7%d8%b2%d9%85%d8%a7%d9%86%d8%af%da%af%d8%a7%d9%86-%d8%b2%d9%84%d8%b2%d9%84%d9%87-%d8%a2%d8%b0%d8%b1%d8%a8%d8%a7%db%8c%d8%ac%d8%a7%d9%86/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:233:"http://wp-persian.com/1391/05/23/%d8%aa%d8%b3%d9%84%db%8c%d8%aa-%d8%a8%d9%87-%d8%a8%d8%a7%d8%b2%d9%85%d8%a7%d9%86%d8%af%da%af%d8%a7%d9%86-%d8%b2%d9%84%d8%b2%d9%84%d9%87-%d8%a2%d8%b0%d8%b1%d8%a8%d8%a7%db%8c%d8%ac%d8%a7%d9%86/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 13 Aug 2012 13:54:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:10:"عمومی";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wp-persian.com/?p=317";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:548:"بنی آدم اعضای یکدیگرند که در آفرینش ز یک گوهرند چو عضوی به درد آورد روزگار دگر عضوها را نماند قرار دو روز پیش کشور ما شاهد حادثه‌ای غم‌انگیز بود، زلزله‌ای با بزرگی ۶ ریشتر نواحی شمال‌غرب ایران را لرزاند که متاسفانه باعث جان‌باختن تعداد زیادی از هم‌وطنان‌مان شد. وردپرس فارسی مصیبت وارده را تسلیت [...]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"گناهکار";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:950:"<p>بنی آدم اعضای یکدیگرند<br />\nکه در آفرینش ز یک گوهرند<br />\nچو عضوی به درد آورد روزگار<br />\nدگر عضوها را نماند قرار</p>\n<p>دو روز پیش کشور ما شاهد حادثه‌ای غم‌انگیز بود، زلزله‌ای با بزرگی ۶ ریشتر نواحی شمال‌غرب ایران را لرزاند که متاسفانه باعث جان‌باختن تعداد زیادی از هم‌وطنان‌مان شد.</p>\n<p>وردپرس فارسی مصیبت وارده را تسلیت می‌گوید و برای بازماندگان صبر، صبر، صبر و امید آرزومند است.</p>\n<p>همه‌ی انسان‌ها، بازماندگانِ این زلزله‌اند.</p>\n<p>برای اطلاعات بیشتر به سایت <a href="http://helptabriz.com/">کمک به زلزله زدگان آذربایجان</a> مراجعه کنید.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:229:"http://wp-persian.com/1391/05/23/%d8%aa%d8%b3%d9%84%db%8c%d8%aa-%d8%a8%d9%87-%d8%a8%d8%a7%d8%b2%d9%85%d8%a7%d9%86%d8%af%da%af%d8%a7%d9%86-%d8%b2%d9%84%d8%b2%d9%84%d9%87-%d8%a2%d8%b0%d8%b1%d8%a8%d8%a7%db%8c%d8%ac%d8%a7%d9%86/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"وردپرس فارسی ۳٫۴٫۱";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"http://wp-persian.com/1391/04/08/wp-persian-341/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:57:"http://wp-persian.com/1391/04/08/wp-persian-341/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2012 20:50:50 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:23:"وردپرس فارسی";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wp-persian.com/?p=313";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:549:"برخی از مشکلات موجود در نگارش ۳.۴ شامل چند ایراد امنیتی، در این نگارش برطرف شده‌اند. لازم به ذکر است که وردپرس فارسی ۳.۴ در هفته‌ای که گذشت ۲۵۰۰۰ بار دریافت شد. پرونده‌های تغییریافته را می‌توانید در این نشانی مشاهده کنید. می‌توانید نگارش جدید وردپرس فارسی را از این بخش دریافت٬ یا به‌صورت خودکار از [...]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"گناهکار";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:975:"<p>برخی از مشکلات موجود در نگارش ۳.۴ شامل چند ایراد امنیتی، در این نگارش برطرف شده‌اند.</p>\n<p>لازم به ذکر است که وردپرس فارسی ۳.۴ در هفته‌ای که گذشت ۲۵۰۰۰ بار دریافت شد.</p>\n<p>پرونده‌های تغییریافته را می‌توانید در <a href="http://core.trac.wordpress.org/changeset?old_path=tags/3.4&amp;new_path=tags/3.4.1">این نشانی</a> مشاهده کنید.</p>\n<p>می‌توانید نگارش جدید وردپرس فارسی را از <a href="http://wp-persian.com/download/">این بخش</a> دریافت٬ یا به‌صورت خودکار از بخش مدیریت سایت خود٬ به‌روز نمایید.<br />\n<em>توجه داشته باشید که پیغام به‌روزرسانی در بخش مدیریت سایت شما باید مربوط به وردپرس فارسی (fa_IR) باشد.</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:53:"http://wp-persian.com/1391/04/08/wp-persian-341/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:87:"وردپرس فارسی ۳٫۴ نگارش استاد «علی‌اکبر شکارچی»";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:73:"http://wp-persian.com/1391/03/27/wp-persian-3-4-ostad-aliakbar-shekarchi/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:82:"http://wp-persian.com/1391/03/27/wp-persian-3-4-ostad-aliakbar-shekarchi/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 16 Jun 2012 18:10:02 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:23:"وردپرس فارسی";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wp-persian.com/?p=304";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:574:"وردپرس فارسی ۳٫۴ با شعار «از دیروز بیاموزید، در امروز زندگی کنید و به فردا امیدوار باشید» منتشر شد. این نگارش از وردپرس فارسی با افتخار مزیّن به نام استاد گرانقدر موسیقی ایران، «علی‌اکبر شکارچی» است. از جمله تغییرات مهم اعمال شده در این نگارش می‌توان به موارد زیر اشاره کرد: مدیریت بهینه‌شده پوسته‌ها سربرگ‌های [...]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"گناهکار";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2107:"<p>وردپرس فارسی ۳٫۴ با شعار «از دیروز بیاموزید، در امروز زندگی کنید و به فردا امیدوار باشید» منتشر شد.</p>\n<p>این نگارش از وردپرس فارسی با افتخار مزیّن به نام استاد گرانقدر موسیقی ایران، «<a href="http://fa.wikipedia.org/wiki/%D8%B9%D9%84%DB%8C%E2%80%8C%D8%A7%DA%A9%D8%A8%D8%B1_%D8%B4%DA%A9%D8%A7%D8%B1%DA%86%DB%8C">علی‌اکبر شکارچی</a>» است.</p>\n<p>از جمله تغییرات مهم اعمال شده در این نگارش می‌توان به موارد زیر اشاره کرد:</p>\n<ul>\n<li>مدیریت بهینه‌شده پوسته‌ها</li>\n<li>سربرگ‌های سفارشی</li>\n<li>پشتیبانی از المان‌های HTML در بخش عنوان تصاویر</li>\n<li>تغییرات و بهینه‌سازی‌های اساسی در بخش ترجمه‌های وردپرس</li>\n<li>قرار گرفتن پرونده‌ی زبان در بسته وردپرس فارسی</li>\n</ul>\n<p>جزییات بیشتری درباره‌ی تغییرات و امکانات افزوده شده به این نگارش را می‌توانید در <a href="http://wp-persian.com/codex/%D9%86%DA%AF%D8%A7%D8%B1%D8%B4-%DB%B3%D9%AB%DB%B4/">صفحه‌ی نگارش ۳٫۴ در مستندات</a> مشاهده کنید. همچنین می‌توانید فهرست پرونده‌های تغییر یافته نسبت به نگارش ۳٫۳٫۲ را در <a href="http://core.trac.wordpress.org/changeset?old_path=tags/3.3.2&amp;new_path=tags/3.4">این نشانی</a> ببینید.</p>\n<p>می‌توانید نگارش جدید وردپرس فارسی را از <a href="http://wp-persian.com/download/">این بخش</a> دریافت٬ یا به‌صورت خودکار از بخش مدیریت سایت خود٬ به‌روز نمایید.<br />\n<em>توجه داشته باشید که پیغام به‌روزرسانی در بخش مدیریت سایت شما باید مربوط به وردپرس فارسی (fa_IR) باشد.</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:78:"http://wp-persian.com/1391/03/27/wp-persian-3-4-ostad-aliakbar-shekarchi/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"وردپرس فارسی ۳٫۳٫۲";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"http://wp-persian.com/1391/02/01/wp-persian-332/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:57:"http://wp-persian.com/1391/02/01/wp-persian-332/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 20 Apr 2012 15:52:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:23:"وردپرس فارسی";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wp-persian.com/?p=293";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:403:"در این نگارش چندین مشکل امنیتی برطرف شده است. پرونده‌های تغییریافته را می‌توانید در این نشانی مشاهده کنید. می‌توانید نگارش جدید وردپرس فارسی را از این بخش دریافت٬ یا به‌صورت خودکار از بخش مدیریت سایت خود٬ به‌روز نمایید.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"گناهکار";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:570:"<p>در این نگارش چندین مشکل امنیتی برطرف شده است.</p>\n<p>پرونده‌های تغییریافته را می‌توانید در <a href="http://core.trac.wordpress.org/changeset?old_path=tags/3.3.1&amp;new_path=tags/3.3.2">این نشانی</a> مشاهده کنید.</p>\n<p>می‌توانید نگارش جدید وردپرس فارسی را از <a href="http://wp-persian.com/download/">این بخش</a> دریافت٬ یا به‌صورت خودکار از بخش مدیریت سایت خود٬ به‌روز نمایید.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:53:"http://wp-persian.com/1391/02/01/wp-persian-332/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"سال نو مبارک ۱۳۹۱";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:121:"http://wp-persian.com/1391/01/01/%d8%b3%d8%a7%d9%84-%d9%86%d9%88-%d9%85%d8%a8%d8%a7%d8%b1%da%a9-%db%b1%db%b3%db%b9%db%b1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:130:"http://wp-persian.com/1391/01/01/%d8%b3%d8%a7%d9%84-%d9%86%d9%88-%d9%85%d8%a8%d8%a7%d8%b1%da%a9-%db%b1%db%b3%db%b9%db%b1/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 20 Mar 2012 05:15:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:10:"عمومی";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wp-persian.com/?p=284";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:192:"فرا رسیدن بهار ۱۳۹۱ بر فارسی‌زبانان خجسته باد. گروه وردپرس فارسی سالی سرشار از امید برای شما آرزو می‌کند.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"گناهکار";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:207:"<p>فرا رسیدن بهار ۱۳۹۱ بر فارسی‌زبانان خجسته باد.</p>\n<p>گروه وردپرس فارسی سالی سرشار از امید برای شما آرزو می‌کند.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:126:"http://wp-persian.com/1391/01/01/%d8%b3%d8%a7%d9%84-%d9%86%d9%88-%d9%85%d8%a8%d8%a7%d8%b1%da%a9-%db%b1%db%b3%db%b9%db%b1/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"وردپرس فارسی ۳٫۳٫۱";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"http://wp-persian.com/1390/10/16/wp-persian-331/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:57:"http://wp-persian.com/1390/10/16/wp-persian-331/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 05 Jan 2012 20:30:28 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:23:"وردپرس فارسی";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wp-persian.com/?p=277";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:578:"در این نگارش یک مسئله امنیتی و چندین ایراد جزیی برطرف شده است. از دیگر تغییرات این نگراش می‌توان به استفاده از قلم تاهما در ویرایشگر دیداری اشاره کرد. به همه‌ی کاربران وردپرس فارسی پیشنهاد می‌کنیم وردپرس خود را به این نگارش ارتقا دهند. پرونده‌های تغییریافته را می‌توانید در این نشانی مشاهده کنید. می‌توانید نگارش [...]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"گناهکار";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1122:"<p>در این نگارش یک مسئله امنیتی و چندین ایراد جزیی برطرف شده است.</p>\n<p>از دیگر تغییرات این نگراش می‌توان به استفاده از قلم تاهما در ویرایشگر دیداری اشاره کرد.</p>\n<p>به همه‌ی کاربران وردپرس فارسی پیشنهاد می‌کنیم وردپرس خود را به این نگارش ارتقا دهند.</p>\n<p>پرونده‌های تغییریافته را می‌توانید در <a href="http://core.trac.wordpress.org/changeset?old_path=tags/3.3&amp;new_path=tags/3.3.1">این نشانی</a> مشاهده کنید.</p>\n<p>می‌توانید نگارش جدید وردپرس فارسی را از <a href="http://wp-persian.com/download/">این بخش</a> دریافت٬ یا به‌صورت خودکار از بخش مدیریت سایت خود٬ به‌روز نمایید.<br />\n<em>توجه داشته باشید که پیغام به‌روزرسانی در بخش مدیریت سایت شما باید مربوط به وردپرس فارسی (fa_IR) باشد.</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:53:"http://wp-persian.com/1390/10/16/wp-persian-331/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:80:"وردپرس فارسی ۳٫۳ نگارش استاد «حسین علیزاده»";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"http://wp-persian.com/1390/09/22/wp-persian-3-3-ostad-hossein-alizadeh/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:80:"http://wp-persian.com/1390/09/22/wp-persian-3-3-ostad-hossein-alizadeh/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 13 Dec 2011 00:57:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:23:"وردپرس فارسی";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wp-persian.com/?p=265";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:597:"وردپرس فارسی ۳٫۳ با شعار «در پسِ ظلمت، دو صد خورشیدهاست» منتشر شد. این نگارش از وردپرس فارسی با افتخار مزیّن به نام استاد گرانقدر موسیقی ایران، «حسین علیزاده» است. از جمله تغییرات مهم اعمال شده در این نگارش می‌توان به موارد زیر اشاره کرد: بارگذاری آسان‌تر پرونده‌های چندرسانه‌ای شناسایی نوع پرونده‌های چندرسانه‌ای به صورت [...]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"گناهکار";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3439:"<p>وردپرس فارسی ۳٫۳ با شعار «در پسِ ظلمت، دو صد خورشیدهاست» منتشر شد.</p>\n<p>این نگارش از وردپرس فارسی با افتخار مزیّن به نام استاد گرانقدر موسیقی ایران، «<a href="http://fa.wikipedia.org/wiki/%D8%AD%D8%B3%DB%8C%D9%86_%D8%B9%D9%84%DB%8C%D8%B2%D8%A7%D8%AF%D9%87">حسین علیزاده</a>» است.</p>\n<p>از جمله تغییرات مهم اعمال شده در این نگارش می‌توان به موارد زیر اشاره کرد:</p>\n<ul>\n<li>بارگذاری آسان‌تر پرونده‌های چندرسانه‌ای</li>\n<ul>\n<li>شناسایی نوع پرونده‌های چندرسانه‌ای به صورت خودکار- استفاده از یک دکمه برای بارگذاری پرونده‌های چندرسانه‌ای</li>\n<li>بارگذاری پرونده‌ها با کشیدن و رها کردن</li>\n</ul>\n<li>طراحی جدید پیشخوان</li>\n<ul>\n<li>نوارابزار مدیریتی جدید در پیشخوان</li>\n<li>طراحی برخی از برگه‌ها برای نمایش در لوح‌رایانه‌ها از جمله iPad</li>\n<li>طراحی جدید فهرست‌های بخش مدیریت برای دسترسی سریع‌تر</li>\n</ul>\n<li>طراحی جدید رابط‌کاربری</li>\n<li>طراحی راهنمای سریع برای بخش‌های جدید اضافه شده به وردپرس</li>\n<ul>\n<li>بهبود حالت ویرایش محتوا به صورت همزمان برای چند نویسنده</li>\n<li>درون ریزی اطلاعات از تامبلر</li>\n<li>ذخیره‌ی ابزارک‌های استفاده شده برای هر پوسته بدون از دست رفتن اطلاعات در زمان تغییر پوسته‌ها</li>\n</ul>\n<li>بهینه‌سازی کارایی و سرعت بارگذاری</li>\n<li>استفاده از کتابخانه جی‌کوئری ۱٫۷٫۱</li>\n</ul>\n<p>&nbsp;</p>\n<p>جزییات بیشتری درباره‌ی تغییرات و امکانات افزوده شده به این نگارش را می‌توانید در <a href="http://codex.wp-persian.com/%D9%86%DA%AF%D8%A7%D8%B1%D8%B4-%DB%B3%D9%AB%DB%B3/">صفحه‌ی نگارش ۳٫۳ در مستندات</a> مشاهده کنید. همچنین می‌توانید فهرست پرونده‌های تغییر یافته نسبت به نگارش ۳٫۲٫۱ را در <a href="http://core.trac.wordpress.org/changeset?old_path=tags/3.2.1&amp;new_path=tags/3.3" target="_blank">این نشانی</a> ببینید.</p>\n<p><strong style="color: red;">هشدار:</strong> به دلیل اینکه این نگارش وردپرس برای اجرا حداقل نیاز به PHP 5.2.4 و MySQL 5.0 دارد، قبل از اقدام به نصب یا به‌روزرسانی به این نگارش حتما از پشتیبانی سرویس‌دهنده‌ی خود مطمئن شوید.</p>\n<p>می‌توانید نگارش جدید وردپرس فارسی را از <a href="http://wp-persian.com/download/">این بخش</a> دریافت٬ یا به‌صورت خودکار از بخش مدیریت سایت خود٬ به‌روز نمایید.</p>\n<p><em>توجه داشته باشید که پیغام به‌روزرسانی در بخش مدیریت سایت شما باید مربوط به وردپرس فارسی (fa_IR) باشد.</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:76:"http://wp-persian.com/1390/09/22/wp-persian-3-3-ostad-hossein-alizadeh/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"وردپرس فارسی ۳٫۲٫۱";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"http://wp-persian.com/1390/04/22/wp-persian-321/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:57:"http://wp-persian.com/1390/04/22/wp-persian-321/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 12 Jul 2011 20:47:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:23:"وردپرس فارسی";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wp-persian.com/?p=261";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:606:"پس از دریافت هزاران نسخه از نگارش ۳٫۲ وردپرس فارسی توسط کاربران؛ نگارش ۳٫۲٫۱ وردپرس فارسی به‌منظور رفع ایرادات موجود در نگارش پیشین منتشر شد. از جمله ایرادات رفع شده می‌توان به تصحیح جداساز اعداد و همچنین چپ‌به‌راست کردن ویرایشگر افزونه‌ها و پوسته‌ها اشاره داشت. پرونده‌های تغییریافته نسبت به نگارش پیشین را می‌توانید در این [...]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"گناهکار";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:1208:"<p>پس از دریافت هزاران نسخه از نگارش ۳٫۲ وردپرس فارسی توسط کاربران؛ نگارش ۳٫۲٫۱ وردپرس فارسی به‌منظور رفع ایرادات موجود در نگارش پیشین منتشر شد.</p>\n<p>از جمله ایرادات رفع شده می‌توان به تصحیح جداساز اعداد و همچنین چپ‌به‌راست کردن ویرایشگر افزونه‌ها و پوسته‌ها اشاره داشت.</p>\n<p>پرونده‌های تغییریافته نسبت به نگارش پیشین را می‌توانید در <a href="http://core.trac.wordpress.org/changeset?old_path=tags/3.2&amp;new_path=tags/3.2.1">این نشانی</a> مشاهده کنید.</p>\n<p>می‌توانید نگارش جدید وردپرس فارسی را از <a href="http://wp-persian.com/download/">این بخش</a> دریافت٬ یا به‌صورت خودکار از بخش مدیریت سایت خود٬ به‌روز نمایید.<br />\n<em>توجه داشته باشید که پیغام به‌روزرسانی در بخش مدیریت سایت شما باید مربوط به وردپرس فارسی (fa_IR) باشد.</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:53:"http://wp-persian.com/1390/04/22/wp-persian-321/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:42:"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:5:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:86:"وردپرس فارسی ۳٫۲ نگارش استاد «شیرمحمد اسپندار»";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:76:"http://wp-persian.com/1390/04/15/wp-persian-3-2-ostad-shirmohammad-espandar/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:85:"http://wp-persian.com/1390/04/15/wp-persian-3-2-ostad-shirmohammad-espandar/#comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 06 Jul 2011 02:23:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:23:"وردپرس فارسی";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"http://wp-persian.com/?p=244";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:558:"وردپرس فارسی ۳٫۲ با شعار «پایان شب سیه، سپید است» منتشر شد. این نگارش از وردپرس فارسی با افتخار مزیّن به نام نوازنده‌ی توانمند ساز «دونلی»، استاد بزرگ موسیقی ایران، «شیرمحمد اسپندار» است. از جمله تغییرات مهم اعمال شده در این نگارش می‌توان به موارد زیر اشاره کرد: طراحی مجدد قالب بخش مدیریت معرفی پوسته‌ی [...]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"گناهکار";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2727:"<p>وردپرس فارسی ۳٫۲ با شعار «پایان شب سیه، سپید است» منتشر شد.</p>\n<p>این نگارش از وردپرس فارسی با افتخار مزیّن به نام نوازنده‌ی توانمند ساز «<a href="http://fa.wikipedia.org/wiki/%D8%AF%D9%88%D9%86%D9%84%DB%8C">دونلی</a>»، استاد بزرگ موسیقی ایران، «<a href="http://fa.wikipedia.org/wiki/%D8%B4%DB%8C%D8%B1%D9%85%D8%AD%D9%85%D8%AF_%D8%A7%D8%B3%D9%BE%D9%86%D8%AF%D8%A7%D8%B1">شیرمحمد اسپندار</a>» است.</p>\n<p>از جمله تغییرات مهم اعمال شده در این نگارش می‌توان به موارد زیر اشاره کرد:</p>\n<ul>\n<li>طراحی مجدد قالب بخش مدیریت</li>\n<li>معرفی پوسته‌ی جدید ۲۰۱۱</li>\n<li>ویرایشگر تمام صفحه برای نوشته‌ها و برگه‌ها</li>\n<li>نوار ابزار مدیریتی توسعه یافته</li>\n<li>پیش‌نیازهای اجرا\n<ul>\n<li>PHP نگارش ۵٫۲٫۴ و بالاتر</li>\n<li>MySQL نگارش ۵٫۰ و بالاتر</li>\n</ul>\n</li>\n<li>حذف پشتیبانی از اینترنت اکسپلورر ۶</li>\n<li>افزایش سرعت اجرای وردپرس</li>\n<li>به‌روزرسانی‌های سریع‌تر</li>\n</ul>\n<p>جزییات بیشتری درباره‌ی تغییرات و امکانات افزوده شده به این نگارش را می‌توانید در <a href="http://codex.wp-persian.com/%D9%86%DA%AF%D8%A7%D8%B1%D8%B4-%DB%B3%D9%AB%DB%B2/">صفحه‌ی نگارش ۳٫۲ در مستندات</a> مشاهده کنید. همچنین می‌توانید فهرست پرونده‌های تغییر یافته نسبت به نگارش ۳٫۱٫۴ را در <a href="http://core.trac.wordpress.org/changeset?old_path=tags/3.1.4&amp;new_path=tags/3.2">این نشانی</a> ببینید.</p>\n<p><strong style="color: red;">هشدار:</strong> به دلیل اینکه این نگارش وردپرس برای اجرا حداقل نیاز به PHP 5.2.4 و MySQL 5.0 دارد، قبل از اقدام به نصب یا به‌روزرسانی به این نگارش حتما از پشتیبانی سرویس‌دهنده‌ی خود مطمئن شوید.</p>\n<p>می‌توانید نگارش جدید وردپرس فارسی را از <a href="http://wp-persian.com/download/">این بخش</a> دریافت٬ یا به‌صورت خودکار از بخش مدیریت سایت خود٬ به‌روز نمایید.<br />\n<em>توجه داشته باشید که پیغام به‌روزرسانی در بخش مدیریت سایت شما باید مربوط به وردپرس فارسی (fa_IR) باشد.</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:36:"http://wellformedweb.org/CommentAPI/";a:1:{s:10:"commentRss";a:1:{i:0;a:5:{s:4:"data";s:81:"http://wp-persian.com/1390/04/15/wp-persian-3-2-ostad-shirmohammad-espandar/feed/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:38:"http://purl.org/rss/1.0/modules/slash/";a:1:{s:8:"comments";a:1:{i:0;a:5:{s:4:"data";s:1:"0";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:27:"http://wp-persian.com/feed/";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:8:{s:4:"date";s:29:"Wed, 31 Oct 2012 20:07:15 GMT";s:6:"server";s:6:"Apache";s:10:"x-pingback";s:42:"http://wp-persian.com/wordpress/xmlrpc.php";s:13:"last-modified";s:29:"Sat, 08 Sep 2012 15:08:35 GMT";s:4:"etag";s:34:""b88aa55cf797987857f205d0b86caf74"";s:10:"set-cookie";s:50:"PHPSESSID=e5e72e9a1324a7e542887481f5f6ca2f; path=/";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";}s:5:"build";s:14:"20111015034325";}', 'no'),
(168, '_transient_timeout_feed_mod_1e2ffee29b94cfb5d3816e721235f11e', '1351757239', 'no'),
(169, '_transient_feed_mod_1e2ffee29b94cfb5d3816e721235f11e', '1351714039', 'no'),
(170, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1351757239', 'no'),
(171, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''http://wp-persian.com/1391/06/18/wp-persian-342/'' title=''وردپرس فارس ۳٫۴٫۲ برای دریافت آماده شد. در این نگارش عملکرد وردپرس در برخی قسمت‌ها بهبود یافته و چند مشکل امنیتی نیز برطرف شده است. پرونده‌های تغییریافته را می‌توانید در این نشانی مشاهده کنید. می‌توانید نگارش جدید وردپرس فارسی را از این بخش دریافت٬ یا به‌صورت خودکار از بخش مدیریت سایت خود٬ به‌روز نمایید. توجه [&hellip;]''>وردپرس فارس ۳٫۴٫۲</a> <span class="rss-date">سپتامبر 8, 2012</span><div class=''rssSummary''>وردپرس فارس ۳٫۴٫۲ برای دریافت آماده شد. در این نگارش عملکرد وردپرس در برخی قسمت‌ها بهبود یافته و چند مشکل امنیتی نیز برطرف شده است. پرونده‌های تغییریافته را می‌توانید در این نشانی مشاهده کنید. می‌توانید نگارش جدید وردپرس فارسی را از این بخش دریافت٬ یا به‌صورت خودکار از بخش مدیریت سایت خود٬ به‌روز نمایید. توجه [&hellip;]</div></li><li><a class=''rsswidget'' href=''http://wp-persian.com/1391/05/23/تسلیت-به-بازماندگان-زلزله-آذربایجان/'' title=''بنی آدم اعضای یکدیگرند که در آفرینش ز یک گوهرند چو عضوی به درد آورد روزگار دگر عضوها را نماند قرار دو روز پیش کشور ما شاهد حادثه‌ای غم‌انگیز بود، زلزله‌ای با بزرگی ۶ ریشتر نواحی شمال‌غرب ایران را لرزاند که متاسفانه باعث جان‌باختن تعداد زیادی از هم‌وطنان‌مان شد. وردپرس فارسی مصیبت وارده را تسلیت [&hellip;]''>تسلیت به بازماندگان زلزله آذربایجان</a> <span class="rss-date">آگوست 13, 2012</span><div class=''rssSummary''>بنی آدم اعضای یکدیگرند که در آفرینش ز یک گوهرند چو عضوی به درد آورد روزگار دگر عضوها را نماند قرار دو روز پیش کشور ما شاهد حادثه‌ای غم‌انگیز بود، زلزله‌ای با بزرگی ۶ ریشتر نواحی شمال‌غرب ایران را لرزاند که متاسفانه باعث جان‌باختن تعداد زیادی از هم‌وطنان‌مان شد. وردپرس فارسی مصیبت وارده را تسلیت [&hellip;]</div></li></ul></div>', 'no'),
(172, '_transient_timeout_feed_0322dd0f6dd8c977f13ccf878abfbf2f', '1351757241', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(173, '_transient_feed_0322dd0f6dd8c977f13ccf878abfbf2f', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:4:"\n  \n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:83:"\n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n    \n  ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:4:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:56:"link:http://localhost/wordpress.fa/ - Google Blog Search";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:93:"http://www.google.com/search?ie=utf-8&q=link:http://localhost/wordpress.fa/&tbm=blg&tbs=sbd:1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:19:"About 6,210 results";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:42:"THIS POINTLESS SPAT | Robinince&#39;s Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"http://robinince.wordpress.com/2012/10/19/this-pointless-spat/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:602:"Just another <em>WordPress</em>.com site. Skip to content. Home &middot; About &middot; ← Faith and Evolutionary Theory a guest blog <b>...</b> You can ignore the majority of <em>links</em> as they are not actually <em>links</em>, merely time (ie 12h) and “expand” of twitter and lead to nowhere. I post this in case he decides to write about the events. Here is what <b>....</b> Is it just me, or do all the <em>links</em> on this topic point to <em>http</em>://<em>localhost</em> which means I can&#39;t see them? Firefox 12.2 on Linux. (Also Opera and Konqueror) Cheers, Norm. Reply <b>...</b>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:16:"Robinince''s Blog";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"robinince";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Fri, 19 Oct 2012 09:02:01 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"20090621_2201.jpg - sA-Pix";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"http://www.sa-pix.com/iphotoblog/index.php?showimage=102";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:590:"<b>...</b> RsOhUt magento install sample data 2437 magento install WfRn 5444 magento install PQIE how to install magento on <em>localhost</em> VETSDD magento installation error xampp rqsqgvhg <em>http</em>://magentoinstallation1.<em>wordpress</em>.com install magento ssh dWbSdA <em>http</em>://magentoinstallation.blinkweb.com magento <b>.....</b> binary trading @ 2012-07-20 07:34:22; YS6qrv olkxcbzoupxt, [url=<em>http</em>://xhdnirjmhldt.com/]xhdnirjmhldt[/url], [<em>link</em>=<em>http</em>://erutktctojzk.com/]erutktctojzk[/<em>link</em>], <em>http</em>://sncjnizeutqf.com/ <b>...</b>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:6:"sa-Pix";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"unknown";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Tue, 09 Oct 2012 07:00:00 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:49:"*International News*: INFORMARMY.com Mailing List";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:77:"http://accadenelmondo.blogspot.com/2012/09/informarmycom-mailing-list_26.html";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:552:"Circa nove anni <em>fa</em> una biologa – Mary Leitao – notò che sua figlia presentava strani sintomi, assimilabili proprio alla descrizione fatta da Browne nel testo medico del XVII sec. e decise di denominare allo stesso modo questa malattia. Non reperendo <b>.....</b> Questa riga va ripetuta per ogni utente &quot;genitore&quot;;; La sesta blocca tutte le altre connessioni a privoxy;; La settima riga permette tutte le connessioni sul <em>localhost</em>;; L&#39;ultima è il commit che non deve essere rimosso. A questo punto basta <b>...</b>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:20:"*International News*";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Giacomo Aste";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Wed, 26 Sep 2012 21:05:00 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"User:Sky21766cb - House of Brains";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"http://be-consultancy.be/index.php?title=User:Sky21766cb";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:523:"You will see your home webpage of the browser through producing <em>http</em>: //<em>localhost</em> TM or even <em>http</em>: //COMPUTER_NAME TM (where by COMPUTER_NAME would be the specific label of the computer system) into your target clubhouse linked with <b>.....</b> chaussure tient bien los angeles courbe de los angeles <em>fa http</em>://www.photographicsociety.ru/node/20536? ade de l&#39;est idal place stimulate type de pieds <em>http</em>://gxzhuzhang.receitablog.com.br/84653/that-Ugg-Boots-Sale-will-people/.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:37:"House of Brains - Recent changes [en]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Sky21766cb";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Sun, 26 Aug 2012 07:00:00 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:54:"PEO – Personal Energy Orb « Sketching with Hardware";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:78:"http://sketchingwithhardware.wordpress.com/2012/08/19/peo-personal-energy-orb/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:278:"The standard pybottle server starts on port 8080 so this page is accessible on <em>http</em>://<em>localhost</em>:8080/. If your site contains images and other resources you should define a static_filepath: @bottle.route(&#39;/html/&#39;) def static(filepath): return <b>...</b>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:23:"Sketching with Hardware";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Janko Hofmann";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Sun, 19 Aug 2012 10:18:22 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"500k - RAO VẶT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:80:"http://raovat.yeuquangngai.net/2012/08/code-choxevietcom-hoac-choxenet-hoac.html";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:621:"+Verify phone (veri bằng phone của bạn càng tốt,ko thì bạn có thể dùng phone miễn phí của pinger cũng được:<em>http</em>://www.pinger.com/tfw,zipcode usa bạn có thể search trên mạng hoặc là dùng 1 số zipcode sau:50510,35010,35011,. <b>......</b> Tình hình là e dùng windows 2008 standar r2 , e cài sẵn IIS 7.0 , khi vào <em>localhost</em> kiểu web thì được (ý e là dùng iis để tạo host share file như là rar, zip ,exe ..etc để share <em>link</em> down trực tiếp), nhưng khi bỏ 1 file vào thư mục interpub ( ở đây là rar ) thì <b>...</b>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:23:"raovat.yeuquangngai.net";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"long vo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Thu, 16 Aug 2012 18:53:00 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:50:"MOTOWN ,RECORDS NEED YOUNG TALENTED ACTORS - music";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:78:"http://musicorsports.com/2012/07/28/motown-records-need-young-talented-actors/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:603:"July 29, 2012 at 12:21 am. I&#39;m a online accessibility advocate and expert in the Philippines. I head the Philippine Internet Accessibility Group. I am very much impressed by <em>WordPress</em> Accessibility features. Hooray for <em>WordPress</em>!! Reply &middot; nike running shoes. July 29, 2012 at 1:55 am. Heya i&#39;m for <b>....</b> iyohgpb. August 19, 2012 at 8:31 pm. jEH4pM , [url=<em>http</em>://dgtsxfbzjvms.com/]dgtsxfbzjvms[/url], [<em>link</em>=<em>http</em>://gmuwivwsrrzp.com/]gmuwivwsrrzp[/<em>link</em>], <em>http</em>://lyxhpdsmxmzx.com/ &middot; Reply &middot; kiglzyr <b>...</b>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:17:"musicorsports.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"BIG--TERRY";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Sat, 28 Jul 2012 02:40:00 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:73:"The Eisen Agency chief Rodger Roeser interviews Axiom Boss Bob <b>...</b>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:40:"http://www.theeisenagency.com/tms/?p=193";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:571:"thank you for the article. i just about passed your web site up in bing but now i&#39;m glad i clicked the <em>link</em> and got to go through it. i&#39;m definitely a lot more informed now.<em>http</em>://www.kitsucesso.com &middot; Reply ↓ &middot; Maxwell Moltz on August 5, 2012 at 5:25 am said: I&#39;m wondering the way a <b>.....</b> I&#39;ve been using <em>WordPress</em> on a number of websites for about a year and am anxious about switching to another platform. I have heard very good things about blogengine.net. Is there a way I can transfer all <b>...</b>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:75:"Cincinnati Public Relations Leader Hosts Top Cincinnati Business Executives";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"thatmarketingshow";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Fri, 29 Jun 2012 14:47:48 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:44:"Pisanie dla wszystkicht | Chongqing Currents";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:41:"http://www.chongqingcurrents.com/?p=86318";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:597:"The reason I asked about gerneic TCP socket handling is that the title of your post is “Socket Benchmark of Asychronous . in Python,” not “Socket Benchmark of Asychronous <em>HTTP</em> . in Python.” There is a significant difference between the two. Also, SMP scalability is very <b>...</b> Hs9Edw pwuohcgsojdi &middot; Reply &middot; pobwxzugort &middot; August 5, 2012 - 11:51 am. n2k7fU , [url=<em>http</em>://oewbspbnrbum.com/]oewbspbnrbum[/url], [<em>link</em>=<em>http</em>://mjrvikfjdtvg.com/]mjrvikfjdtvg[/<em>link</em>], <em>http</em>://qdwwkznigbcp.com/ &middot; Reply <b>...</b>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:18:"Chongqing Currents";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"don14erek";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Mon, 25 Jun 2012 14:18:32 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:47:"\n      \n      \n      \n      \n      \n      \n    ";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:3:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Grass Fed Beef | shargorganic.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"http://sharqorganic.com/uncategorized/grass-fed-beef.html";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:585:"<b>...</b> on June 27, 2012 at 5:17 am said: VrtQ4B , [url=<em>http</em>://okeullmazyxr.com/]okeullmazyxr[/url], [<em>link</em>=<em>http</em>://zxewsvehwddy.com/]zxewsvehwddy[/<em>link</em>], <em>http</em>://htbbklqzurhp.com/ <b>...</b> Your comment steysm ate my last comment and spit it back out in 2 parts.httperf –hog –timeout=60 –client=0/1 –server=<em>localhost</em> –port=10000 –uri=/ –rate=4000 –send-buffer=4096 –recv-buffer=16384 –num-conns=40000 –num-calls=1httperf: warning: open file limit &gt; FD_SETSIZE; limiting max. # of open files to <b>...</b>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:3:{s:9:"publisher";a:1:{i:0;a:5:{s:4:"data";s:16:"shargorganic.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:5:"Salem";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"date";a:1:{i:0;a:5:{s:4:"data";s:29:"Fri, 11 May 2012 10:30:15 GMT";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:36:"http://a9.com/-/spec/opensearch/1.1/";a:3:{s:12:"totalResults";a:1:{i:0;a:5:{s:4:"data";s:4:"6210";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:10:"startIndex";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:12:"itemsPerPage";a:1:{i:0;a:5:{s:4:"data";s:2:"10";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:9:{s:12:"content-type";s:28:"text/xml; charset=ISO-8859-1";s:4:"date";s:29:"Wed, 31 Oct 2012 20:07:17 GMT";s:7:"expires";s:2:"-1";s:13:"cache-control";s:18:"private, max-age=0";s:10:"set-cookie";a:2:{i:0;s:143:"PREF=ID=daf32e62498a9b8b:FF=0:TM=1351714037:LM=1351714037:S=S0LuDQLYeENlZ5hX; expires=Fri, 31-Oct-2014 20:07:17 GMT; path=/; domain=.google.com";i:1;s:212:"NID=65=RNsxYHqf50WaAcWdS4cXdX6jxxLQa7Uh7lnRbA0DrXqGCB3UAbEDkbNoxOKU4Ar3LCmADwtD_a3lIyTiX7OHy9vNHth2fJWUfQcpWjCKhLYtDwY6LnJx6AklRWEqWqig; expires=Thu, 02-May-2013 20:07:17 GMT; path=/; domain=.google.com; HttpOnly";}s:3:"p3p";s:122:"CP="This is not a P3P policy! See http://www.google.com/support/accounts/bin/answer.py?hl=en&answer=151657 for more info."";s:6:"server";s:3:"gws";s:16:"x-xss-protection";s:13:"1; mode=block";s:15:"x-frame-options";s:10:"SAMEORIGIN";}s:5:"build";s:14:"20111015034325";}', 'no'),
(174, '_transient_timeout_feed_mod_0322dd0f6dd8c977f13ccf878abfbf2f', '1351757242', 'no'),
(175, '_transient_feed_mod_0322dd0f6dd8c977f13ccf878abfbf2f', '1351714042', 'no'),
(176, '_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f', '1351757242', 'no'),
(177, '_transient_dash_20494a3d90a6669585674ed0eb8dcd8f', '<ul>\n	<li><strong>robinince</strong> به‌اینجا پیوند داده و <a href="http://robinince.wordpress.com/2012/10/19/this-pointless-spat/">گفته</a>٬ "Just another WordPress.com site. Skip to content.  ..."</li>\n	<li><strong>unknown</strong> به‌اینجا پیوند داده و <a href="http://www.sa-pix.com/iphotoblog/index.php?showimage=102">گفته</a>٬ "... RsOhUt magento install sample data 2437 magent ..."</li>\n	<li><strong>Giacomo Aste</strong> به‌اینجا پیوند داده و <a href="http://accadenelmondo.blogspot.com/2012/09/informarmycom-mailing-list_26.html">گفته</a>٬ "Circa nove anni fa una biologa – Mary Leitao – not ..."</li>\n	<li><strong>Sky21766cb</strong> به‌اینجا پیوند داده و <a href="http://be-consultancy.be/index.php?title=User:Sky21766cb">گفته</a>٬ "You will see your home webpage of the browser thro ..."</li>\n	<li><strong>Janko Hofmann</strong> به‌اینجا پیوند داده و <a href="http://sketchingwithhardware.wordpress.com/2012/08/19/peo-personal-energy-orb/">گفته</a>٬ "The standard pybottle server starts on port 8080 s ..."</li>\n	<li><strong>long vo</strong> به‌اینجا پیوند داده و <a href="http://raovat.yeuquangngai.net/2012/08/code-choxevietcom-hoac-choxenet-hoac.html">گفته</a>٬ "+Verify phone (veri bằng phone của bạn càng tốt,ko ..."</li>\n	<li><strong>BIG--TERRY</strong> به‌اینجا پیوند داده و <a href="http://musicorsports.com/2012/07/28/motown-records-need-young-talented-actors/">گفته</a>٬ "July 29, 2012 at 12:21 am. I&#39;m a online access ..."</li>\n	<li><strong>thatmarketingshow</strong> به‌اینجا پیوند داده و <a href="http://www.theeisenagency.com/tms/?p=193">گفته</a>٬ "thank you for the article. i just about passed you ..."</li>\n	<li><strong>don14erek</strong> به‌اینجا پیوند داده و <a href="http://www.chongqingcurrents.com/?p=86318">گفته</a>٬ "The reason I asked about gerneic TCP socket handli ..."</li>\n	<li><strong>Salem</strong> به‌اینجا پیوند داده و <a href="http://sharqorganic.com/uncategorized/grass-fed-beef.html">گفته</a>٬ "... on June 27, 2012 at 5:17 am said: VrtQ4B , [ur ..."</li>\n</ul>\n', 'no'),
(178, 'theme_mods_Accounting', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:8:"mainmenu";i:4;}}', 'yes'),
(179, '_transient_timeout_feed_57bc725ad6568758915363af670fd8bc', '1351757253', 'no'),
(180, '_transient_feed_57bc725ad6568758915363af670fd8bc', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:72:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"WordPress Plugins » View: Newest";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:47:"http://wordpress.org/extend/plugins/browse/new/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:33:"WordPress Plugins » View: Newest";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 31 Oct 2012 19:57:52 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:15:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Coverflow YouTube Videos";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:72:"http://wordpress.org/extend/plugins/coverflow-youtube-videos/#post-44870";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 25 Oct 2012 13:31:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44870@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:63:"Displays a user&#039;s Youtube videos in a simil-Coverflow way.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"sardbaba";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"Sliding Widgets";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:63:"http://wordpress.org/extend/plugins/sliding-widgets/#post-45043";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 29 Oct 2012 19:19:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"45043@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:92:"WordPress Sliding Widgets Plugin will help your to create a sliding widget area dynamically.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Shahnur Alam";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:8:"Lightbox";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:61:"http://wordpress.org/extend/plugins/easy-lightbox/#post-44918";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 26 Oct 2012 13:13:40 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44918@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:114:"Add custom lightbox attribute to linked flash files or images in posts, pages and comments, group images using ID.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"helen432r";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"DineApp";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"http://wordpress.org/extend/plugins/dineapp/#post-44821";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 24 Oct 2012 09:59:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44821@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:137:"The DineApp Wordpress plugin allow restaurants to receive and manage reservations directly through their restaurant’s Web site or blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"dineapp";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"Call-To-Action Reminders by Astrid";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:82:"http://wordpress.org/extend/plugins/call-to-action-reminders-by-astrid/#post-44838";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 24 Oct 2012 20:18:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44838@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:130:"A plugin that makes it easy to create Remind Me links and buttons within posts and Call-to-Action reminders at the bottom of posts";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"astrid_team";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Simple Newsletter Signup";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:72:"http://wordpress.org/extend/plugins/simple-newsletter-signup/#post-44909";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 26 Oct 2012 05:49:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44909@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"Easily add a newsletter signup form to your site and start collecting email addresses to use with MailChimp, Constant contact or other third-party bul";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Grant Kimball";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"LionScripts: IP Address Blocker";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:66:"http://wordpress.org/extend/plugins/ip-address-blocker/#post-44682";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 20 Oct 2012 07:28:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44682@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"LionScripts&#039; IP Address Blocker protects wordpress websites from unwanted or malicious IP Addresses and Attacks (IPs). You can choose to either d";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"LionScripts.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:17:"Convertor valutar";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:65:"http://wordpress.org/extend/plugins/convertor-valutar/#post-44791";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 23 Oct 2012 14:41:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44791@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:51:"Convertor valutar, foloseste cursul oficial al BNR.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"ioanaorhei";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:17:"Clickbomb-Protect";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"http://wordpress.org/extend/plugins/cbprotect/#post-44868";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 25 Oct 2012 12:17:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44868@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:83:"Protects your Google Adsense account from malicious clicks and from getting banned.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:6:"sandyr";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"InLinkz LinkUp";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"http://wordpress.org/extend/plugins/inlinkz-linkup/#post-44903";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 25 Oct 2012 22:34:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44903@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:127:"Inlinkz LinkUp is a widget that is inserted in your wordpress blog and allows you to receive link submissions from your readers";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"inlinkz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Detectify for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"http://wordpress.org/extend/plugins/detectify-for-wp/#post-44224";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 10 Oct 2012 20:47:00 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44224@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Detectify analyze the the level of security on your website or blog via a simulated hacker attack.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Detectify";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Beds24 Online Booking";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"http://wordpress.org/extend/plugins/beds24-online-booking/#post-44871";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 25 Oct 2012 13:49:49 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44871@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:134:"This plugin for the Beds24 online booking system lets you accept commission free online bookings directly from your Wordpress website.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"markkinchin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:9:"Embeditor";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"http://wordpress.org/extend/plugins/embeditor/#post-44801";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 23 Oct 2012 22:59:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44801@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"Adds and embed box under an image post.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"DirectMatchMedia";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"User Admin Simplifier";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"http://wordpress.org/extend/plugins/user-admin-simplifier/#post-44901";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 25 Oct 2012 21:27:50 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44901@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:122:"Lets any Administrator simplify the WordPress Admin interface, on a per-user basis, by turning specific menu sections off.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"adamsilverstein";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Facebook Panel";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"http://wordpress.org/extend/plugins/facebook-panel/#post-44674";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 19 Oct 2012 22:23:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:42:"44674@http://wordpress.org/extend/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:81:"Let your visitors like, comment and share on facebook from a neat slide-in panel.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"prutten";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:48:"http://wordpress.org/extend/plugins/rss/view/new";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:7:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Wed, 31 Oct 2012 20:07:30 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:13:"last-modified";s:29:"Thu, 25 Oct 2012 13:31:20 GMT";s:4:"x-nc";s:11:"HIT luv 138";}s:5:"build";s:14:"20111015034325";}', 'no'),
(181, '_transient_timeout_feed_mod_57bc725ad6568758915363af670fd8bc', '1351757253', 'no'),
(182, '_transient_feed_mod_57bc725ad6568758915363af670fd8bc', '1351714053', 'no'),
(183, '_transient_timeout_plugin_slugs', '1351800669', 'no'),
(184, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:23:"wp-jalali/wp-jalali.php";}', 'no'),
(185, '_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e', '1351757253', 'no'),
(186, '_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e', '<h4>تازه‌ترین افزونه‌ها</h4>\n<h5><a href=''http://wordpress.org/extend/plugins/sliding-widgets/''>Sliding Widgets</a></h5>&nbsp;<span>(<a href=''plugin-install.php?tab=plugin-information&amp;plugin=sliding-widgets&amp;_wpnonce=a5e3e00032&amp;TB_iframe=true&amp;width=600&amp;height=800'' class=''thickbox'' title=''Sliding Widgets''>نصب</a>)</span>\n<p>WordPress Sliding Widgets Plugin will help your to create a sliding widget area dynamically.</p>\n', 'no'),
(187, 'recently_activated', 'a:0:{}', 'yes');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=234 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 1, '_wp_trash_meta_status', 'publish'),
(3, 1, '_wp_trash_meta_time', '1350856196'),
(4, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(5, 5, '_edit_last', '1'),
(6, 5, '_edit_lock', '1350857477:1'),
(7, 5, '_pingme', '1'),
(8, 5, '_encloseme', '1'),
(9, 2, '_wp_trash_meta_status', 'publish'),
(10, 2, '_wp_trash_meta_time', '1350857598'),
(11, 9, '_edit_last', '1'),
(12, 9, '_edit_lock', '1351725694:1'),
(13, 11, '_edit_last', '1'),
(14, 11, '_edit_lock', '1350857613:1'),
(15, 13, '_edit_last', '1'),
(16, 13, '_edit_lock', '1350857636:1'),
(17, 15, '_edit_last', '1'),
(18, 15, '_edit_lock', '1350857657:1'),
(19, 17, '_edit_last', '1'),
(20, 17, '_edit_lock', '1351725657:1'),
(23, 5, '_pingme', '1'),
(24, 5, '_encloseme', '1'),
(70, 26, '_edit_last', '1'),
(71, 26, '_edit_lock', '1351715926:1'),
(72, 26, '_wp_page_template', 'default'),
(82, 29, '_menu_item_type', 'post_type'),
(83, 29, '_menu_item_menu_item_parent', '0'),
(84, 29, '_menu_item_object_id', '26'),
(85, 29, '_menu_item_object', 'page'),
(86, 29, '_menu_item_target', ''),
(87, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(88, 29, '_menu_item_xfn', ''),
(89, 29, '_menu_item_url', ''),
(91, 30, '_menu_item_type', 'post_type'),
(92, 30, '_menu_item_menu_item_parent', '33'),
(93, 30, '_menu_item_object_id', '15'),
(94, 30, '_menu_item_object', 'page'),
(95, 30, '_menu_item_target', ''),
(96, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(97, 30, '_menu_item_xfn', ''),
(98, 30, '_menu_item_url', ''),
(100, 31, '_menu_item_type', 'post_type'),
(101, 31, '_menu_item_menu_item_parent', '33'),
(102, 31, '_menu_item_object_id', '13'),
(103, 31, '_menu_item_object', 'page'),
(104, 31, '_menu_item_target', ''),
(105, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(106, 31, '_menu_item_xfn', ''),
(107, 31, '_menu_item_url', ''),
(109, 32, '_menu_item_type', 'post_type'),
(110, 32, '_menu_item_menu_item_parent', '33'),
(111, 32, '_menu_item_object_id', '11'),
(112, 32, '_menu_item_object', 'page'),
(113, 32, '_menu_item_target', ''),
(114, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(115, 32, '_menu_item_xfn', ''),
(116, 32, '_menu_item_url', ''),
(118, 33, '_menu_item_type', 'post_type'),
(119, 33, '_menu_item_menu_item_parent', '0'),
(120, 33, '_menu_item_object_id', '9'),
(121, 33, '_menu_item_object', 'page'),
(122, 33, '_menu_item_target', ''),
(123, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(124, 33, '_menu_item_xfn', ''),
(125, 33, '_menu_item_url', ''),
(127, 34, '_menu_item_type', 'post_type'),
(128, 34, '_menu_item_menu_item_parent', '0'),
(129, 34, '_menu_item_object_id', '17'),
(130, 34, '_menu_item_object', 'page'),
(131, 34, '_menu_item_target', ''),
(132, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(133, 34, '_menu_item_xfn', ''),
(134, 34, '_menu_item_url', ''),
(136, 35, '_edit_last', '1'),
(137, 35, '_edit_lock', '1351728157:1'),
(138, 35, '_wp_page_template', 'index-product.php'),
(139, 37, '_edit_last', '1'),
(140, 37, '_edit_lock', '1351721770:1'),
(141, 37, '_wp_page_template', 'default'),
(142, 40, '_edit_last', '1'),
(143, 40, '_wp_page_template', 'default'),
(144, 40, '_edit_lock', '1351721789:1'),
(145, 42, '_edit_last', '1'),
(146, 42, '_wp_page_template', 'default'),
(147, 42, '_edit_lock', '1351721799:1'),
(148, 44, '_edit_last', '1'),
(149, 44, '_wp_page_template', 'default'),
(150, 44, '_edit_lock', '1351721811:1'),
(151, 46, '_edit_last', '1'),
(152, 46, '_wp_page_template', 'default'),
(153, 46, '_edit_lock', '1351721824:1'),
(154, 48, '_edit_last', '1'),
(155, 48, '_wp_page_template', 'default'),
(156, 48, '_edit_lock', '1351721836:1'),
(157, 51, '_edit_last', '1'),
(158, 51, '_wp_page_template', 'index-aboutme.php'),
(159, 51, '_edit_lock', '1351725678:1'),
(160, 53, '_menu_item_type', 'post_type'),
(161, 53, '_menu_item_menu_item_parent', '0'),
(162, 53, '_menu_item_object_id', '51'),
(163, 53, '_menu_item_object', 'page'),
(164, 53, '_menu_item_target', ''),
(165, 53, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(166, 53, '_menu_item_xfn', ''),
(167, 53, '_menu_item_url', ''),
(169, 54, '_menu_item_type', 'post_type'),
(170, 54, '_menu_item_menu_item_parent', '60'),
(171, 54, '_menu_item_object_id', '48'),
(172, 54, '_menu_item_object', 'page'),
(173, 54, '_menu_item_target', ''),
(174, 54, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(175, 54, '_menu_item_xfn', ''),
(176, 54, '_menu_item_url', ''),
(178, 55, '_menu_item_type', 'post_type'),
(179, 55, '_menu_item_menu_item_parent', '60'),
(180, 55, '_menu_item_object_id', '46'),
(181, 55, '_menu_item_object', 'page'),
(182, 55, '_menu_item_target', ''),
(183, 55, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(184, 55, '_menu_item_xfn', ''),
(185, 55, '_menu_item_url', ''),
(187, 56, '_menu_item_type', 'post_type'),
(188, 56, '_menu_item_menu_item_parent', '60'),
(189, 56, '_menu_item_object_id', '44'),
(190, 56, '_menu_item_object', 'page'),
(191, 56, '_menu_item_target', ''),
(192, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(193, 56, '_menu_item_xfn', ''),
(194, 56, '_menu_item_url', ''),
(196, 57, '_menu_item_type', 'post_type'),
(197, 57, '_menu_item_menu_item_parent', '60'),
(198, 57, '_menu_item_object_id', '42'),
(199, 57, '_menu_item_object', 'page'),
(200, 57, '_menu_item_target', ''),
(201, 57, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(202, 57, '_menu_item_xfn', ''),
(203, 57, '_menu_item_url', ''),
(205, 58, '_menu_item_type', 'post_type'),
(206, 58, '_menu_item_menu_item_parent', '60'),
(207, 58, '_menu_item_object_id', '40'),
(208, 58, '_menu_item_object', 'page'),
(209, 58, '_menu_item_target', ''),
(210, 58, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(211, 58, '_menu_item_xfn', ''),
(212, 58, '_menu_item_url', ''),
(214, 59, '_menu_item_type', 'post_type'),
(215, 59, '_menu_item_menu_item_parent', '33'),
(216, 59, '_menu_item_object_id', '37'),
(217, 59, '_menu_item_object', 'page'),
(218, 59, '_menu_item_target', ''),
(219, 59, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(220, 59, '_menu_item_xfn', ''),
(221, 59, '_menu_item_url', ''),
(223, 60, '_menu_item_type', 'post_type'),
(224, 60, '_menu_item_menu_item_parent', '0'),
(225, 60, '_menu_item_object_id', '35'),
(226, 60, '_menu_item_object', 'page'),
(227, 60, '_menu_item_target', ''),
(228, 60, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(229, 60, '_menu_item_xfn', ''),
(230, 60, '_menu_item_url', ''),
(232, 9, '_wp_page_template', 'index-gallery.php'),
(233, 17, '_wp_page_template', 'index-contactme.php');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2012-10-21 20:56:42', '2012-10-21 20:56:42', 'به وردپرس خوش آمدید.‌این نخستین نوشته‌‌ی شماست. می‌توانید ویرایش یا پاکش کنید و پس از آن وبلاگ نویسی را آغاز کنید!', 'سلام دنیا!', '', 'trash', 'open', 'open', '', '%d8%b3%d9%84%d8%a7%d9%85-%d8%af%d9%86%db%8c%d8%a7', '', '', '2012-10-21 21:49:56', '2012-10-21 21:49:56', '', 0, 'http://localhost/wordpress.fa/?p=1', 0, 'post', '', 1),
(2, 1, '2012-10-21 20:56:42', '2012-10-21 20:56:42', 'این یک برگه‌ی نمونه است که با یک نوشته در وبلاگ تفاوت دارد زیرا برگه‌ها در یک مکان ثابت می‌مانند و معمولاً در فهرست پیوندهای درونی سایت شما نمایش داده می‌شوند (در اکثر پوسته‌ها). بیشتر افراد کار کردن با برگه‌ها را از یک برگه‌ی «درباره من» که آن‌ها را به خوانندگان سایت معرفی می‌کند، شروع می‌کنند. برای مثال این‌چنین می‌گویند:\n\n<blockquote>سلام دوستان، من روزها یک کارمند اداری هستم و شب‌ها یک راننده تاکسی، این وبلاگ من است. من در اهواز زندگی می‌کنم که شهری در جنوب غربی ایران است.</blockquote>\n\nیا چیزی شبیه این:\n\n<blockquote>شرکت XYZ در سال ۱۳۶۵ تاسیس شد و ارائه‌دهنده محصولات صنعتی است. این شرکت ۲۰۰۰ کارگر و کارمند دارد. امیدواریم از محصولات ما راضی باشید.</blockquote>\n\nبه‌عنوان یک کاربر تازه‌ی وردپرس فارسی شما برای پاک کردن این برگه و ساختن برگه‌های تازه می‌توانید به <a href="">پیشخوان خود</a> مراجعه کنید. موفق باشید!', 'برگه نمونه', '', 'trash', 'open', 'open', '', '%d8%a8%d8%b1%da%af%d9%87-%d9%86%d9%85%d9%88%d9%86%d9%87', '', '', '2012-10-21 22:13:18', '2012-10-21 22:13:18', '', 0, 'http://localhost/wordpress.fa/?page_id=2', 0, 'page', '', 0),
(3, 1, '2012-10-21 20:57:15', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2012-10-21 20:57:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress.fa/?p=3', 0, 'post', '', 0),
(4, 1, '2012-10-21 20:56:42', '2012-10-21 20:56:42', 'به وردپرس خوش آمدید.‌این نخستین نوشته‌‌ی شماست. می‌توانید ویرایش یا پاکش کنید و پس از آن وبلاگ نویسی را آغاز کنید!', 'سلام دنیا!', '', 'inherit', 'open', 'open', '', '1-revision', '', '', '2012-10-21 20:56:42', '2012-10-21 20:56:42', '', 1, 'http://localhost/wordpress.fa/?p=4', 0, 'revision', '', 0),
(5, 1, '2012-10-21 21:52:43', '2012-10-21 21:52:43', 'هنــر ما طــراحی وب ســایت های ســـاده و زیبــــاسـت', '.:: ماننـــد همیشــه ::.', '', 'publish', 'open', 'open', '', '%d9%85%d8%a7%d9%86%d9%86%d9%80%d9%80%d9%80%d8%af-%d9%87%d9%85%db%8c%d8%b4%d9%80%d9%80%d9%87', '', '', '2012-10-31 20:12:50', '2012-10-31 20:12:50', '', 0, 'http://localhost/wordpress.fa/?p=5', 0, 'post', '', 0),
(6, 1, '2012-10-21 21:52:19', '2012-10-21 21:52:19', 'هنــر ما طــراحی وب ســایت های ســـاده و زیبــــاسـت', '.:: ماننـــد همیشــه ::.', '', 'inherit', 'open', 'open', '', '5-revision', '', '', '2012-10-21 21:52:19', '2012-10-21 21:52:19', '', 5, 'http://localhost/wordpress.fa/?p=6', 0, 'revision', '', 0),
(7, 1, '2012-10-21 21:53:46', '2012-10-21 21:53:46', 'هنــر ما طــراحی وب ســایت های ســـاده و زیبــــاسـت', '.:: ماننـــد همیشــه ::.', '', 'inherit', 'open', 'open', '', '5-autosave', '', '', '2012-10-21 21:53:46', '2012-10-21 21:53:46', '', 5, 'http://localhost/wordpress.fa/?p=7', 0, 'revision', '', 0),
(8, 1, '2012-10-21 20:56:42', '2012-10-21 20:56:42', 'این یک برگه‌ی نمونه است که با یک نوشته در وبلاگ تفاوت دارد زیرا برگه‌ها در یک مکان ثابت می‌مانند و معمولاً در فهرست پیوندهای درونی سایت شما نمایش داده می‌شوند (در اکثر پوسته‌ها). بیشتر افراد کار کردن با برگه‌ها را از یک برگه‌ی «درباره من» که آن‌ها را به خوانندگان سایت معرفی می‌کند، شروع می‌کنند. برای مثال این‌چنین می‌گویند:\n\n<blockquote>سلام دوستان، من روزها یک کارمند اداری هستم و شب‌ها یک راننده تاکسی، این وبلاگ من است. من در اهواز زندگی می‌کنم که شهری در جنوب غربی ایران است.</blockquote>\n\nیا چیزی شبیه این:\n\n<blockquote>شرکت XYZ در سال ۱۳۶۵ تاسیس شد و ارائه‌دهنده محصولات صنعتی است. این شرکت ۲۰۰۰ کارگر و کارمند دارد. امیدواریم از محصولات ما راضی باشید.</blockquote>\n\nبه‌عنوان یک کاربر تازه‌ی وردپرس فارسی شما برای پاک کردن این برگه و ساختن برگه‌های تازه می‌توانید به <a href="">پیشخوان خود</a> مراجعه کنید. موفق باشید!', 'برگه نمونه', '', 'inherit', 'open', 'open', '', '2-revision', '', '', '2012-10-21 20:56:42', '2012-10-21 20:56:42', '', 2, 'http://localhost/wordpress.fa/?p=8', 0, 'revision', '', 0),
(9, 1, '2012-10-21 22:14:22', '2012-10-21 22:14:22', 'sdfsddfsdffdsfsdfdsfsdfdsfsdfsdf', 'گــــــــالری', '', 'publish', 'open', 'open', '', '%da%af%d9%80%d9%80%d9%80%d9%80%d9%80%d9%80%d9%80%d9%80%d8%a7%d9%84%d8%b1%db%8c', '', '', '2012-10-31 23:08:10', '2012-10-31 23:08:10', '', 0, 'http://localhost/wordpress.fa/?page_id=9', 0, 'page', '', 0),
(10, 1, '2012-10-21 22:13:51', '2012-10-21 22:13:51', '', 'گــــــــالری', '', 'inherit', 'open', 'open', '', '9-revision', '', '', '2012-10-21 22:13:51', '2012-10-21 22:13:51', '', 9, 'http://localhost/wordpress.fa/?p=10', 0, 'revision', '', 0),
(11, 1, '2012-10-21 22:15:17', '2012-10-21 22:15:17', 'ffgfdbfvb', 'تست1', '', 'publish', 'open', 'open', '', '%d8%aa%d8%b3%d8%aa1', '', '', '2012-10-21 22:15:17', '2012-10-21 22:15:17', '', 0, 'http://localhost/wordpress.fa/?page_id=11', 0, 'page', '', 0),
(12, 1, '2012-10-21 22:15:14', '2012-10-21 22:15:14', 'f', 'تست1', '', 'inherit', 'open', 'open', '', '11-revision', '', '', '2012-10-21 22:15:14', '2012-10-21 22:15:14', '', 11, 'http://localhost/wordpress.fa/?p=12', 0, 'revision', '', 0),
(13, 1, '2012-10-21 22:15:43', '2012-10-21 22:15:43', 'gbfbgbgfbgfnhngn', 'تست2', '', 'publish', 'open', 'open', '', '%d8%aa%d8%b3%d8%aa2', '', '', '2012-10-21 22:15:43', '2012-10-21 22:15:43', '', 0, 'http://localhost/wordpress.fa/?page_id=13', 0, 'page', '', 0),
(14, 1, '2012-10-21 22:15:40', '2012-10-21 22:15:40', '', 'تست2', '', 'inherit', 'open', 'open', '', '13-revision', '', '', '2012-10-21 22:15:40', '2012-10-21 22:15:40', '', 13, 'http://localhost/wordpress.fa/?p=14', 0, 'revision', '', 0),
(15, 1, '2012-10-21 22:16:05', '2012-10-21 22:16:05', 'bgcbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb', 'تست3', '', 'publish', 'open', 'open', '', '%d8%aa%d8%b3%d8%aa3', '', '', '2012-10-21 22:16:05', '2012-10-21 22:16:05', '', 0, 'http://localhost/wordpress.fa/?page_id=15', 0, 'page', '', 0),
(16, 1, '2012-10-21 22:15:58', '2012-10-21 22:15:58', '', 'تست3', '', 'inherit', 'open', 'open', '', '15-revision', '', '', '2012-10-21 22:15:58', '2012-10-21 22:15:58', '', 15, 'http://localhost/wordpress.fa/?p=16', 0, 'revision', '', 0),
(17, 1, '2012-10-21 22:16:54', '2012-10-21 22:16:54', 'hhhhhhhggggggghhhhhhhhhhhhhhhhhhhhh', 'ارتباط با من', '', 'publish', 'open', 'open', '', '%d8%a7%d8%b1%d8%aa%d8%a8%d8%a7%d8%b7-%d8%a8%d8%a7-%d9%85%d9%86', '', '', '2012-10-31 23:22:46', '2012-10-31 23:22:46', '', 0, 'http://localhost/wordpress.fa/?page_id=17', 0, 'page', '', 0),
(18, 1, '2012-10-21 22:16:49', '2012-10-21 22:16:49', 'h', 'ارتباط با من', '', 'inherit', 'open', 'open', '', '17-revision', '', '', '2012-10-21 22:16:49', '2012-10-21 22:16:49', '', 17, 'http://localhost/wordpress.fa/?p=18', 0, 'revision', '', 0),
(19, 1, '2012-10-21 21:52:43', '2012-10-21 21:52:43', 'هنــر ما طــراحی وب ســایت های ســـاده و زیبــــاسـت', '.:: ماننـــد همیشــه ::.', '', 'inherit', 'open', 'open', '', '5-revision-2', '', '', '2012-10-21 21:52:43', '2012-10-21 21:52:43', '', 5, 'http://localhost/wordpress.fa/?p=19', 0, 'revision', '', 0),
(20, 1, '2012-10-31 20:10:25', '2012-10-31 20:10:25', 'هنــر ما طــراحی وب ســایت های ســـاده و زیبــــاسـت', '.:: ماننـــد همیشــه ::.', '', 'inherit', 'open', 'open', '', '5-revision-3', '', '', '2012-10-31 20:10:25', '2012-10-31 20:10:25', '', 5, 'http://localhost/wordpress.fa/?p=20', 0, 'revision', '', 0),
(26, 1, '2012-10-31 20:40:32', '2012-10-31 20:40:32', 'vsgdhgsvghvhsdvdhvdhgvdhcvhdvchdavhg', 'صفحه اصلی', '', 'publish', 'open', 'open', '', '%d8%b5%d9%81%d8%ad%d9%87-%d8%a7%d8%b5%d9%84%db%8c', '', '', '2012-10-31 20:40:32', '2012-10-31 20:40:32', '', 0, 'http://localhost/wordpress.fa/?page_id=26', 0, 'page', '', 0),
(27, 1, '2012-10-31 20:40:17', '2012-10-31 20:40:17', '', 'صفحه اصلی', '', 'inherit', 'open', 'open', '', '26-revision', '', '', '2012-10-31 20:40:17', '2012-10-31 20:40:17', '', 26, 'http://localhost/wordpress.fa/?p=27', 0, 'revision', '', 0),
(29, 1, '2012-10-31 21:22:33', '2012-10-31 21:22:33', ' ', '', '', 'publish', 'open', 'open', '', '29', '', '', '2012-10-31 22:21:30', '2012-10-31 22:21:30', '', 0, 'http://localhost/wordpress.fa/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2012-10-31 21:22:35', '2012-10-31 21:22:35', ' ', '', '', 'publish', 'open', 'open', '', '30', '', '', '2012-10-31 22:21:30', '2012-10-31 22:21:30', '', 0, 'http://localhost/wordpress.fa/?p=30', 5, 'nav_menu_item', '', 0),
(31, 1, '2012-10-31 21:22:36', '2012-10-31 21:22:36', ' ', '', '', 'publish', 'open', 'open', '', '31', '', '', '2012-10-31 22:21:30', '2012-10-31 22:21:30', '', 0, 'http://localhost/wordpress.fa/?p=31', 4, 'nav_menu_item', '', 0),
(32, 1, '2012-10-31 21:22:37', '2012-10-31 21:22:37', ' ', '', '', 'publish', 'open', 'open', '', '32', '', '', '2012-10-31 22:21:30', '2012-10-31 22:21:30', '', 0, 'http://localhost/wordpress.fa/?p=32', 3, 'nav_menu_item', '', 0),
(33, 1, '2012-10-31 21:22:34', '2012-10-31 21:22:34', ' ', '', '', 'publish', 'open', 'open', '', '33', '', '', '2012-10-31 22:21:30', '2012-10-31 22:21:30', '', 0, 'http://localhost/wordpress.fa/?p=33', 2, 'nav_menu_item', '', 0),
(34, 1, '2012-10-31 21:22:37', '2012-10-31 21:22:37', ' ', '', '', 'publish', 'open', 'open', '', '34', '', '', '2012-10-31 22:21:31', '2012-10-31 22:21:31', '', 0, 'http://localhost/wordpress.fa/?p=34', 14, 'nav_menu_item', '', 0),
(35, 1, '2012-10-31 22:16:43', '2012-10-31 22:16:43', 'زدنیسزذ زذتذزذ زیس ذز', 'محصولات', '', 'publish', 'open', 'open', '', '%d9%85%d8%ad%d8%b5%d9%88%d9%84%d8%a7%d8%aa', '', '', '2012-10-31 23:09:11', '2012-10-31 23:09:11', '', 0, 'http://localhost/wordpress.fa/?page_id=35', 0, 'page', '', 0),
(36, 1, '2012-10-31 22:16:35', '2012-10-31 22:16:35', '', 'محصولات', '', 'inherit', 'open', 'open', '', '35-revision', '', '', '2012-10-31 22:16:35', '2012-10-31 22:16:35', '', 35, 'http://localhost/wordpress.fa/?p=36', 0, 'revision', '', 0),
(37, 1, '2012-10-31 22:17:58', '2012-10-31 22:17:58', '', 'تست4', '', 'publish', 'open', 'open', '', '%d8%aa%d8%b3%d8%aa4', '', '', '2012-10-31 22:17:58', '2012-10-31 22:17:58', '', 0, 'http://localhost/wordpress.fa/?page_id=37', 0, 'page', '', 0),
(38, 1, '2012-10-31 22:17:55', '2012-10-31 22:17:55', '', 'تست', '', 'inherit', 'open', 'open', '', '37-revision', '', '', '2012-10-31 22:17:55', '2012-10-31 22:17:55', '', 37, 'http://localhost/wordpress.fa/?p=38', 0, 'revision', '', 0),
(39, 1, '2012-10-31 22:18:06', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2012-10-31 22:18:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress.fa/?page_id=39', 0, 'page', '', 0),
(40, 1, '2012-10-31 22:18:18', '2012-10-31 22:18:18', '', 'تست5', '', 'publish', 'open', 'open', '', '%d8%aa%d8%b3%d8%aa5', '', '', '2012-10-31 22:18:18', '2012-10-31 22:18:18', '', 0, 'http://localhost/wordpress.fa/?page_id=40', 0, 'page', '', 0),
(41, 1, '2012-10-31 22:18:11', '2012-10-31 22:18:11', '', 'پیش‌نویس خودکار', '', 'inherit', 'open', 'open', '', '40-revision', '', '', '2012-10-31 22:18:11', '2012-10-31 22:18:11', '', 40, 'http://localhost/wordpress.fa/?p=41', 0, 'revision', '', 0),
(42, 1, '2012-10-31 22:18:29', '2012-10-31 22:18:29', '', 'تست6', '', 'publish', 'open', 'open', '', '%d8%aa%d8%b3%d8%aa6', '', '', '2012-10-31 22:18:29', '2012-10-31 22:18:29', '', 0, 'http://localhost/wordpress.fa/?page_id=42', 0, 'page', '', 0),
(43, 1, '2012-10-31 22:18:23', '2012-10-31 22:18:23', '', 'پیش‌نویس خودکار', '', 'inherit', 'open', 'open', '', '42-revision', '', '', '2012-10-31 22:18:23', '2012-10-31 22:18:23', '', 42, 'http://localhost/wordpress.fa/?p=43', 0, 'revision', '', 0),
(44, 1, '2012-10-31 22:18:41', '2012-10-31 22:18:41', '', 'تست7', '', 'publish', 'open', 'open', '', '%d8%aa%d8%b3%d8%aa7', '', '', '2012-10-31 22:18:41', '2012-10-31 22:18:41', '', 0, 'http://localhost/wordpress.fa/?page_id=44', 0, 'page', '', 0),
(45, 1, '2012-10-31 22:18:33', '2012-10-31 22:18:33', '', 'پیش‌نویس خودکار', '', 'inherit', 'open', 'open', '', '44-revision', '', '', '2012-10-31 22:18:33', '2012-10-31 22:18:33', '', 44, 'http://localhost/wordpress.fa/?p=45', 0, 'revision', '', 0),
(46, 1, '2012-10-31 22:18:53', '2012-10-31 22:18:53', '', 'تست8', '', 'publish', 'open', 'open', '', '%d8%aa%d8%b3%d8%aa8', '', '', '2012-10-31 22:18:53', '2012-10-31 22:18:53', '', 0, 'http://localhost/wordpress.fa/?page_id=46', 0, 'page', '', 0),
(47, 1, '2012-10-31 22:18:45', '2012-10-31 22:18:45', '', 'پیش‌نویس خودکار', '', 'inherit', 'open', 'open', '', '46-revision', '', '', '2012-10-31 22:18:45', '2012-10-31 22:18:45', '', 46, 'http://localhost/wordpress.fa/?p=47', 0, 'revision', '', 0),
(48, 1, '2012-10-31 22:19:05', '2012-10-31 22:19:05', '', 'تست9', '', 'publish', 'open', 'open', '', '%d8%aa%d8%b3%d8%aa9', '', '', '2012-10-31 22:19:05', '2012-10-31 22:19:05', '', 0, 'http://localhost/wordpress.fa/?page_id=48', 0, 'page', '', 0),
(49, 1, '2012-10-31 22:18:58', '2012-10-31 22:18:58', '', 'پیش‌نویس خودکار', '', 'inherit', 'open', 'open', '', '48-revision', '', '', '2012-10-31 22:18:58', '2012-10-31 22:18:58', '', 48, 'http://localhost/wordpress.fa/?p=49', 0, 'revision', '', 0),
(50, 1, '2012-10-31 22:19:10', '0000-00-00 00:00:00', '', 'پیش‌نویس خودکار', '', 'auto-draft', 'open', 'open', '', '', '', '', '2012-10-31 22:19:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress.fa/?page_id=50', 0, 'page', '', 0),
(51, 1, '2012-10-31 22:19:43', '2012-10-31 22:19:43', '', 'درباره من', '', 'publish', 'open', 'open', '', '%d8%af%d8%b1%d8%a8%d8%a7%d8%b1%d9%87-%d9%85%d9%86', '', '', '2012-10-31 23:23:07', '2012-10-31 23:23:07', '', 0, 'http://localhost/wordpress.fa/?page_id=51', 0, 'page', '', 0),
(52, 1, '2012-10-31 22:19:34', '2012-10-31 22:19:34', '', 'پیش‌نویس خودکار', '', 'inherit', 'open', 'open', '', '51-revision', '', '', '2012-10-31 22:19:34', '2012-10-31 22:19:34', '', 51, 'http://localhost/wordpress.fa/?p=52', 0, 'revision', '', 0),
(53, 1, '2012-10-31 22:21:31', '2012-10-31 22:21:31', ' ', '', '', 'publish', 'open', 'open', '', '53', '', '', '2012-10-31 22:21:31', '2012-10-31 22:21:31', '', 0, 'http://localhost/wordpress.fa/?p=53', 13, 'nav_menu_item', '', 0),
(54, 1, '2012-10-31 22:21:31', '2012-10-31 22:21:31', ' ', '', '', 'publish', 'open', 'open', '', '54', '', '', '2012-10-31 22:21:31', '2012-10-31 22:21:31', '', 0, 'http://localhost/wordpress.fa/?p=54', 12, 'nav_menu_item', '', 0),
(55, 1, '2012-10-31 22:21:31', '2012-10-31 22:21:31', ' ', '', '', 'publish', 'open', 'open', '', '55', '', '', '2012-10-31 22:21:31', '2012-10-31 22:21:31', '', 0, 'http://localhost/wordpress.fa/?p=55', 11, 'nav_menu_item', '', 0),
(56, 1, '2012-10-31 22:21:31', '2012-10-31 22:21:31', ' ', '', '', 'publish', 'open', 'open', '', '56', '', '', '2012-10-31 22:21:31', '2012-10-31 22:21:31', '', 0, 'http://localhost/wordpress.fa/?p=56', 10, 'nav_menu_item', '', 0),
(57, 1, '2012-10-31 22:21:30', '2012-10-31 22:21:30', ' ', '', '', 'publish', 'open', 'open', '', '57', '', '', '2012-10-31 22:21:30', '2012-10-31 22:21:30', '', 0, 'http://localhost/wordpress.fa/?p=57', 8, 'nav_menu_item', '', 0),
(58, 1, '2012-10-31 22:21:30', '2012-10-31 22:21:30', ' ', '', '', 'publish', 'open', 'open', '', '58', '', '', '2012-10-31 22:21:30', '2012-10-31 22:21:30', '', 0, 'http://localhost/wordpress.fa/?p=58', 9, 'nav_menu_item', '', 0),
(59, 1, '2012-10-31 22:21:30', '2012-10-31 22:21:30', ' ', '', '', 'publish', 'open', 'open', '', '59', '', '', '2012-10-31 22:21:30', '2012-10-31 22:21:30', '', 0, 'http://localhost/wordpress.fa/?p=59', 6, 'nav_menu_item', '', 0),
(60, 1, '2012-10-31 22:21:30', '2012-10-31 22:21:30', ' ', '', '', 'publish', 'open', 'open', '', '60', '', '', '2012-10-31 22:21:30', '2012-10-31 22:21:30', '', 0, 'http://localhost/wordpress.fa/?p=60', 7, 'nav_menu_item', '', 0),
(61, 1, '2012-10-21 22:14:22', '2012-10-21 22:14:22', 'sdfsddfsdffdsfsdfdsfsdfdsfsdfsdf', 'گــــــــالری', '', 'inherit', 'open', 'open', '', '9-revision-2', '', '', '2012-10-21 22:14:22', '2012-10-21 22:14:22', '', 9, 'http://localhost/wordpress.fa/?p=61', 0, 'revision', '', 0),
(62, 1, '2012-10-31 22:16:43', '2012-10-31 22:16:43', 'زدنیسزذ زذتذزذ زیس ذز', 'محصولات', '', 'inherit', 'open', 'open', '', '35-revision-2', '', '', '2012-10-31 22:16:43', '2012-10-31 22:16:43', '', 35, 'http://localhost/wordpress.fa/?p=62', 0, 'revision', '', 0),
(63, 1, '2012-10-21 22:16:54', '2012-10-21 22:16:54', 'hhhhhhhggggggghhhhhhhhhhhhhhhhhhhhh', 'ارتباط با من', '', 'inherit', 'open', 'open', '', '17-revision-2', '', '', '2012-10-21 22:16:54', '2012-10-21 22:16:54', '', 17, 'http://localhost/wordpress.fa/?p=63', 0, 'revision', '', 0),
(64, 1, '2012-10-31 22:19:43', '2012-10-31 22:19:43', '', 'درباره من', '', 'inherit', 'open', 'open', '', '51-revision-2', '', '', '2012-10-31 22:19:43', '2012-10-31 22:19:43', '', 51, 'http://localhost/wordpress.fa/?p=64', 0, 'revision', '', 0),
(65, 1, '2012-10-31 23:34:54', '2012-10-31 23:34:54', 'زدنیسزذ زذتذزذ زیس ذز', 'محصولات', '', 'inherit', 'open', 'open', '', '35-autosave', '', '', '2012-10-31 23:34:54', '2012-10-31 23:34:54', '', 35, 'http://localhost/wordpress.fa/?p=65', 0, 'revision', '', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'دسته‌بندی نشده', '%d8%af%d8%b3%d8%aa%d9%87%e2%80%8c%d8%a8%d9%86%d8%af%db%8c-%d9%86%d8%b4%d8%af%d9%87', 0),
(2, 'Blogroll', '%d9%be%db%8c%d9%88%d9%86%d8%af%d9%87%d8%a7', 0),
(4, 'Main menu', 'main-menu', 0);

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
(1, 2, 0),
(2, 2, 0),
(3, 2, 0),
(4, 2, 0),
(5, 1, 0),
(5, 2, 0),
(6, 2, 0),
(7, 2, 0),
(29, 4, 0),
(30, 4, 0),
(31, 4, 0),
(32, 4, 0),
(33, 4, 0),
(34, 4, 0),
(53, 4, 0),
(54, 4, 0),
(55, 4, 0),
(56, 4, 0),
(57, 4, 0),
(58, 4, 0),
(59, 4, 0),
(60, 4, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'link_category', '', 0, 7),
(4, 4, 'nav_menu', '', 0, 14);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'admin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";s:1:"1";}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_media_uploader,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(15, 1, 'closedpostboxes_post', 'a:0:{}'),
(16, 1, 'metaboxhidden_post', 'a:3:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:16:"commentstatusdiv";}'),
(17, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:0:{}'),
(19, 1, 'nav_menu_recently_edited', '4'),
(20, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:3:{i:0;s:16:"commentstatusdiv";i:1;s:7:"slugdiv";i:2;s:12:"revisionsdiv";}');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B6JGJKT4ugibQcud596L3g/VzNZIbT.', 'admin', 'a.jalali1991@gmail.com', '', '2012-10-21 20:56:42', '', 0, 'admin');
