-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2018 at 09:17 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-12-10 10:18:10', '2018-12-10 10:18:10', 'Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8000/Healthcare/source', 'yes'),
(2, 'home', 'http://localhost:8000/Healthcare/source', 'yes'),
(3, 'blogname', 'Health care', 'yes'),
(4, 'blogdescription', 'Một trang web mới sử dụng WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'binhdarkcu@gmail.com', 'yes'),
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
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:137:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:46:"slide_introduction/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:56:"slide_introduction/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:76:"slide_introduction/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:71:"slide_introduction/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:71:"slide_introduction/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:52:"slide_introduction/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:35:"slide_introduction/([^/]+)/embed/?$";s:51:"index.php?slide_introduction=$matches[1]&embed=true";s:39:"slide_introduction/([^/]+)/trackback/?$";s:45:"index.php?slide_introduction=$matches[1]&tb=1";s:47:"slide_introduction/([^/]+)/page/?([0-9]{1,})/?$";s:58:"index.php?slide_introduction=$matches[1]&paged=$matches[2]";s:54:"slide_introduction/([^/]+)/comment-page-([0-9]{1,})/?$";s:58:"index.php?slide_introduction=$matches[1]&cpage=$matches[2]";s:43:"slide_introduction/([^/]+)(?:/([0-9]+))?/?$";s:57:"index.php?slide_introduction=$matches[1]&page=$matches[2]";s:35:"slide_introduction/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"slide_introduction/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"slide_introduction/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"slide_introduction/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"slide_introduction/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"slide_introduction/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:35:"dich_vu/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"dich_vu/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"dich_vu/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"dich_vu/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"dich_vu/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"dich_vu/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"dich_vu/([^/]+)/embed/?$";s:40:"index.php?dich_vu=$matches[1]&embed=true";s:28:"dich_vu/([^/]+)/trackback/?$";s:34:"index.php?dich_vu=$matches[1]&tb=1";s:36:"dich_vu/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?dich_vu=$matches[1]&paged=$matches[2]";s:43:"dich_vu/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?dich_vu=$matches[1]&cpage=$matches[2]";s:32:"dich_vu/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?dich_vu=$matches[1]&page=$matches[2]";s:24:"dich_vu/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"dich_vu/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"dich_vu/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"dich_vu/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"dich_vu/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"dich_vu/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:37:"hoat_dong/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"hoat_dong/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"hoat_dong/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"hoat_dong/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"hoat_dong/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"hoat_dong/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"hoat_dong/([^/]+)/embed/?$";s:42:"index.php?hoat_dong=$matches[1]&embed=true";s:30:"hoat_dong/([^/]+)/trackback/?$";s:36:"index.php?hoat_dong=$matches[1]&tb=1";s:38:"hoat_dong/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?hoat_dong=$matches[1]&paged=$matches[2]";s:45:"hoat_dong/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?hoat_dong=$matches[1]&cpage=$matches[2]";s:34:"hoat_dong/([^/]+)(?:/([0-9]+))?/?$";s:48:"index.php?hoat_dong=$matches[1]&page=$matches[2]";s:26:"hoat_dong/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"hoat_dong/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"hoat_dong/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"hoat_dong/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"hoat_dong/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"hoat_dong/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:33:"acf-qtranslate/acf-qtranslate.php";i:1;s:34:"advanced-custom.php-fields-pro/acf.php";i:2;s:43:"custom.php-post-type-ui/custom.php-post-type-ui.php";i:3;s:27:"qtranslate-x/qtranslate.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'healthcare', 'yes'),
(41, 'stylesheet', 'healthcare', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'vi', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'nonce_key', 'E7(1-quX1aV(Xxqo<Wx<( ZnJa_CtR{D]^O>k6jRoL JV,,bYyh2w|TzKHmzn?<#', 'no'),
(110, 'nonce_salt', '*dv#dQ(&b!3m{*xlTE2?F]%c3v5Il1cT)P(@RP}E!Jd>bC[ye({e4^LZ=cO-,a]h', 'no'),
(111, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'cron', 'a:7:{i:1545034693;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1545041893;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1545041894;a:2:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1545041915;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1545041916;a:1:{s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1545116584;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(115, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1544437310;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(125, 'auth_key', 'c,.Ub4CO3k`0p)p%0!,Xg=91=h~Al;C,9cjFg5F: 3,*-d/=@sVAN_U<^efN#/#;', 'no'),
(126, 'auth_salt', 'sM2h[TyyJ.r#,M@(`@=]{6J/SI7F.Ku4@jIK(5%m{d#>M)f%N/U9?ZaW6m?d<r :', 'no'),
(127, 'logged_in_key', 'mSRt|JKwo/6i^@N9I#VK8_q,12+_ b[XyBvlIs+pNPR?kwQ?t[BOmR6E=0k6MPH2', 'no'),
(128, 'logged_in_salt', 'luE/F>P8 s}rAC*%-&mku)2hC`qdFDxr5fc8b[tMv1zKh&/_A&v7{a)NdFa0bkfx', 'no'),
(131, '_site_transient_timeout_browser_54f587746181ab7a3934401875df1515', '1545041907', 'no'),
(132, '_site_transient_browser_54f587746181ab7a3934401875df1515', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"70.0.3538.110";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(134, 'can_compress_scripts', '1', 'no'),
(150, 'current_theme', 'Healthcare Theme', 'yes'),
(151, 'theme_mods_healthcare', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:11:"header_menu";i:2;s:13:"primary_menus";i:2;}}', 'yes'),
(152, 'theme_switched', '', 'yes'),
(198, '_site_transient_timeout_browser_2006b42dc247a2442bc1dcd4235b2bf3', '1545229396', 'no'),
(199, '_site_transient_browser_2006b42dc247a2442bc1dcd4235b2bf3', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:12:"71.0.3578.80";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(214, 'recently_activated', 'a:0:{}', 'yes'),
(221, 'cptui_new_install', 'false', 'yes'),
(222, 'cptui_post_types', 'a:3:{s:18:"slide_introduction";a:29:{s:4:"name";s:18:"slide_introduction";s:5:"label";s:11:"Slider home";s:14:"singular_label";s:18:"slide_introduction";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:4:"true";s:9:"rest_base";s:0:"";s:21:"rest_controller_class";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:6:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";i:3;s:13:"custom.php-fields";i:4;s:15:"page-attributes";i:5;s:12:"post-formats";}s:10:"taxonomies";a:0:{}s:6:"labels";a:24:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";s:14:"name_admin_bar";s:0:"";}s:15:"custom_supports";s:0:"";}s:7:"dich_vu";a:29:{s:4:"name";s:7:"dich_vu";s:5:"label";s:11:"Dịch Vụ";s:14:"singular_label";s:11:"Dịch Vụ";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:4:"true";s:9:"rest_base";s:0:"";s:21:"rest_controller_class";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:24:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";s:14:"name_admin_bar";s:0:"";}s:15:"custom_supports";s:0:"";}s:9:"hoat_dong";a:29:{s:4:"name";s:9:"hoat_dong";s:5:"label";s:14:"Hoạt Động";s:14:"singular_label";s:14:"Hoạt Động";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:12:"show_in_rest";s:4:"true";s:9:"rest_base";s:0:"";s:21:"rest_controller_class";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";s:0:"";s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:0:{}s:6:"labels";a:24:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";s:14:"name_admin_bar";s:0:"";}s:15:"custom_supports";s:0:"";}}', 'yes'),
(229, 'acf_version', '5.6.1', 'yes'),
(271, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.0.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.0.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.0.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.0.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.0.1";s:7:"version";s:5:"5.0.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.0.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.0.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.0.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.0.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.0.1";s:7:"version";s:5:"5.0.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.9.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.9.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.9-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.9-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.9-partial-8.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.9-rollback-8.zip";}s:7:"current";s:5:"4.9.9";s:7:"version";s:5:"4.9.9";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:5:"4.9.8";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1545015541;s:15:"version_checked";s:5:"4.9.8";s:12:"translations";a:0:{}}', 'no'),
(286, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(296, 'qtranslate_admin_notices', 'a:1:{s:11:"next_thanks";i:1544773026;}', 'yes'),
(297, 'qtranslate_enabled_languages', 'a:2:{i:0;s:2:"vi";i:1;s:2:"en";}', 'yes'),
(298, 'qtranslate_default_language', 'vi', 'yes'),
(299, 'qtranslate_version_previous', '34680', 'yes'),
(300, 'qtranslate_versions', 'a:2:{i:34680;i:1544773026;s:1:"l";i:1544773026;}', 'yes'),
(301, 'qtranslate_admin_config', 'a:7:{s:4:"post";a:4:{s:5:"pages";a:2:{s:8:"post.php";s:0:"";s:12:"post-new.php";s:0:"";}s:7:"anchors";a:1:{s:17:"post-body-content";a:1:{s:5:"where";s:10:"first last";}}s:5:"forms";a:2:{s:4:"post";a:1:{s:6:"fields";a:8:{s:5:"title";a:0:{}s:7:"excerpt";a:0:{}s:18:"attachment_caption";a:0:{}s:14:"attachment_alt";a:0:{}s:13:"view-post-btn";a:1:{s:6:"encode";s:7:"display";}s:14:"wp-editor-area";a:1:{s:6:"jquery";s:15:".wp-editor-area";}s:15:"gallery-caption";a:2:{s:6:"jquery";s:16:".gallery-caption";s:6:"encode";s:4:"none";}s:15:"wp-caption-text";a:2:{s:6:"jquery";s:16:".wp-caption-text";s:6:"encode";s:7:"display";}}}s:14:"wpbody-content";a:1:{s:6:"fields";a:2:{s:7:"wrap-h1";a:2:{s:6:"jquery";s:8:".wrap h1";s:6:"encode";s:7:"display";}s:7:"wrap-h2";a:2:{s:6:"jquery";s:8:".wrap h2";s:6:"encode";s:7:"display";}}}}s:7:"js-exec";a:1:{s:9:"post-exec";a:1:{s:3:"src";s:27:"./admin/js/post-exec.min.js";}}}s:15:"options-general";a:3:{s:14:"preg_delimiter";s:1:"#";s:5:"pages";a:1:{s:19:"options-general.php";s:21:"^(?!.*page=[^=&]+).*$";}s:5:"forms";a:1:{s:7:"options";a:1:{s:6:"fields";a:3:{s:8:"blogname";a:0:{}s:15:"blogdescription";a:0:{}s:10:"head-title";a:2:{s:6:"jquery";s:10:"head title";s:6:"encode";s:7:"display";}}}}}s:7:"widgets";a:4:{s:5:"pages";a:1:{s:11:"widgets.php";s:0:"";}s:7:"anchors";a:1:{s:13:"widgets-right";a:1:{s:5:"where";s:12:"before after";}}s:5:"forms";a:1:{s:13:"widgets-right";a:1:{s:6:"fields";a:3:{s:12:"widget-title";a:1:{s:6:"jquery";s:34:"input[id^=''widget-''][id$=''-title'']";}s:16:"widget-text-text";a:1:{s:6:"jquery";s:41:"textarea[id^=''widget-text-''][id$=''-text'']";}s:15:"in-widget-title";a:2:{s:6:"jquery";s:20:"span.in-widget-title";s:6:"encode";s:7:"display";}}}}s:7:"js-exec";a:1:{s:12:"widgets-exec";a:1:{s:3:"src";s:30:"./admin/js/widgets-exec.min.js";}}}s:8:"edit-tag";a:3:{s:5:"pages";a:2:{s:8:"term.php";s:0:"";s:13:"edit-tags.php";s:11:"action=edit";}s:5:"forms";a:1:{s:7:"edittag";a:1:{s:6:"fields";a:3:{s:4:"name";a:0:{}s:11:"description";a:0:{}s:6:"parent";a:1:{s:6:"encode";s:7:"display";}}}}s:7:"js-exec";a:1:{s:13:"edit-tag-exec";a:1:{s:3:"src";s:31:"./admin/js/edit-tag-exec.min.js";}}}s:9:"edit-tags";a:5:{s:14:"preg_delimiter";s:1:"#";s:5:"pages";a:1:{s:13:"edit-tags.php";s:21:"^(?!.*action=edit).*$";}s:7:"anchors";a:1:{s:12:"posts-filter";a:1:{s:5:"where";s:12:"before after";}}s:5:"forms";a:3:{s:6:"addtag";a:1:{s:6:"fields";a:3:{s:8:"tag-name";a:0:{}s:15:"tag-description";a:0:{}s:6:"parent";a:1:{s:6:"encode";s:7:"display";}}}s:8:"col-left";a:1:{s:6:"fields";a:1:{s:8:"tagcloud";a:2:{s:6:"jquery";s:13:".tagcloud > a";s:6:"encode";s:7:"display";}}}s:8:"the-list";a:1:{s:6:"fields";a:2:{s:9:"row-title";a:2:{s:6:"jquery";s:10:".row-title";s:6:"encode";s:7:"display";}s:11:"description";a:2:{s:6:"jquery";s:12:".description";s:6:"encode";s:7:"display";}}}}s:7:"js-exec";a:1:{s:14:"edit-tags-exec";a:1:{s:3:"src";s:32:"./admin/js/edit-tags-exec.min.js";}}}s:9:"nav-menus";a:4:{s:5:"pages";a:1:{s:13:"nav-menus.php";s:23:"action=edit|menu=\\d+|^$";}s:7:"anchors";a:1:{s:12:"menu-to-edit";a:1:{s:5:"where";s:12:"before after";}}s:5:"forms";a:2:{s:15:"update-nav-menu";a:1:{s:6:"fields";a:5:{s:5:"title";a:1:{s:6:"jquery";s:27:"[id^=edit-menu-item-title-]";}s:10:"attr-title";a:1:{s:6:"jquery";s:32:"[id^=edit-menu-item-attr-title-]";}s:11:"description";a:1:{s:6:"jquery";s:33:"[id^=edit-menu-item-description-]";}s:10:"span.title";a:2:{s:6:"jquery";s:20:"span.menu-item-title";s:6:"encode";s:7:"display";}s:16:"link-to-original";a:2:{s:6:"jquery";s:20:".link-to-original >a";s:6:"encode";s:7:"display";}}}s:14:"side-sortables";a:1:{s:6:"fields";a:2:{s:11:"label.title";a:2:{s:6:"jquery";s:21:"label.menu-item-title";s:6:"encode";s:7:"display";}s:23:"accordion-section-title";a:2:{s:6:"jquery";s:26:"h3.accordion-section-title";s:6:"encode";s:7:"display";}}}}s:7:"js-exec";a:1:{s:14:"nav-menus-exec";a:1:{s:3:"src";s:32:"./admin/js/nav-menus-exec.min.js";}}}s:9:"all-pages";a:1:{s:7:"filters";a:1:{s:4:"text";a:1:{s:11:"admin_title";s:2:"20";}}}}', 'yes'),
(302, 'qtranslate_front_config', 'a:1:{s:9:"all-pages";a:1:{s:7:"filters";a:3:{s:4:"text";a:11:{s:12:"widget_title";s:2:"20";s:11:"widget_text";s:2:"20";s:9:"the_title";s:2:"20";s:20:"category_description";s:2:"20";s:9:"list_cats";s:2:"20";s:16:"wp_dropdown_cats";s:2:"20";s:9:"term_name";s:2:"20";s:18:"get_comment_author";s:2:"20";s:10:"the_author";s:2:"20";s:9:"tml_title";s:2:"20";s:16:"term_description";s:2:"20";}s:4:"term";a:10:{s:7:"cat_row";s:1:"0";s:8:"cat_rows";s:1:"0";s:19:"wp_get_object_terms";s:1:"0";s:16:"single_cat_title";s:1:"0";s:16:"single_tag_title";s:1:"0";s:17:"single_term_title";s:1:"0";s:12:"the_category";s:1:"0";s:8:"get_term";s:1:"0";s:9:"get_terms";s:1:"0";s:12:"get_category";s:1:"0";}s:3:"url";a:16:{s:16:"author_feed_link";s:2:"10";s:11:"author_link";s:2:"10";s:27:"get_comment_author_url_link";s:2:"10";s:23:"post_comments_feed_link";s:2:"10";s:8:"day_link";s:2:"10";s:10:"month_link";s:2:"10";s:9:"year_link";s:2:"10";s:9:"page_link";s:2:"10";s:9:"post_link";s:2:"10";s:13:"category_link";s:2:"10";s:18:"category_feed_link";s:2:"10";s:8:"tag_link";s:2:"10";s:9:"term_link";s:2:"10";s:13:"the_permalink";s:2:"10";s:9:"feed_link";s:2:"10";s:13:"tag_feed_link";s:2:"10";}}}}', 'yes'),
(303, 'widget_qtranslate', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(304, 'qtranslate_next_thanks', '1564990628', 'yes'),
(305, 'qtranslate_next_update_mo', '1545377828', 'yes'),
(306, 'qtranslate_ignore_file_types', 'gif,jpg,jpeg,png,svg,pdf,swf,tif,rar,zip,7z,mpg,divx,mpeg,avi,css,js,mp3,mp4,apk', 'yes'),
(307, 'acf_qtranslate', 'a:3:{s:30:"translate_standard_field_types";s:1:"1";s:18:"show_language_tabs";s:1:"1";s:13:"show_on_pages";s:0:"";}', 'yes'),
(312, 'options_header_logo', '175', 'no'),
(313, '_options_header_logo', 'field_5c13669b3a947', 'no'),
(325, '_site_transient_timeout_theme_roots', '1545017344', 'no'),
(326, '_site_transient_theme_roots', 'a:4:{s:10:"healthcare";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(327, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1545015547;s:7:"checked";a:4:{s:10:"healthcare";s:3:"2.0";s:13:"twentyfifteen";s:3:"2.0";s:15:"twentyseventeen";s:3:"1.7";s:13:"twentysixteen";s:3:"1.5";}s:8:"response";a:4:{s:10:"healthcare";a:4:{s:5:"theme";s:10:"healthcare";s:11:"new_version";s:5:"2.1.9";s:3:"url";s:40:"https://wordpress.org/themes/healthcare/";s:7:"package";s:58:"https://downloads.wordpress.org/theme/healthcare.2.1.9.zip";}s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"2.1";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.2.1.zip";}s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"1.8";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.1.8.zip";}s:13:"twentysixteen";a:4:{s:5:"theme";s:13:"twentysixteen";s:11:"new_version";s:3:"1.6";s:3:"url";s:43:"https://wordpress.org/themes/twentysixteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentysixteen.1.6.zip";}}s:12:"translations";a:0:{}}', 'no'),
(328, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1545015549;s:7:"checked";a:6:{s:33:"acf-qtranslate/acf-qtranslate.php";s:6:"1.7.25";s:34:"advanced-custom.php-fields-pro/acf.php";s:5:"5.6.1";s:19:"akismet/akismet.php";s:5:"4.0.8";s:43:"custom.php-post-type-ui/custom.php-post-type-ui.php";s:5:"1.6.1";s:9:"hello.php";s:3:"1.7";s:27:"qtranslate-x/qtranslate.php";s:7:"3.4.6.8";}s:8:"response";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"4.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/akismet.4.1.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:3:"5.0";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:34:"advanced-custom.php-fields-pro/acf.php";O:8:"stdClass":8:{s:4:"slug";s:26:"advanced-custom.php-fields-pro";s:6:"plugin";s:34:"advanced-custom.php-fields-pro/acf.php";s:11:"new_version";s:5:"5.7.8";s:3:"url";s:37:"https://www.advancedcustomfields.com/";s:6:"tested";s:5:"4.9.9";s:7:"package";s:0:"";s:5:"icons";a:1:{s:7:"default";s:63:"https://ps.w.org/advanced-custom.php-fields/assets/icon-256x256.png";}s:7:"banners";a:1:{s:7:"default";s:66:"https://ps.w.org/advanced-custom.php-fields/assets/banner-1544x500.jpg";}}}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:33:"acf-qtranslate/acf-qtranslate.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/acf-qtranslate";s:4:"slug";s:14:"acf-qtranslate";s:6:"plugin";s:33:"acf-qtranslate/acf-qtranslate.php";s:11:"new_version";s:6:"1.7.25";s:3:"url";s:45:"https://wordpress.org/plugins/acf-qtranslate/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/acf-qtranslate.1.7.25.zip";s:5:"icons";a:1:{s:7:"default";s:58:"https://s.w.org/plugins/geopattern-icon/acf-qtranslate.svg";}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}}s:43:"custom.php-post-type-ui/custom.php-post-type-ui.php";O:8:"stdClass":9:{s:2:"id";s:33:"w.org/plugins/custom.php-post-type-ui";s:4:"slug";s:19:"custom.php-post-type-ui";s:6:"plugin";s:43:"custom.php-post-type-ui/custom.php-post-type-ui.php";s:11:"new_version";s:5:"1.6.1";s:3:"url";s:50:"https://wordpress.org/plugins/custom.php-post-type-ui/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/custom.php-post-type-ui.1.6.1.zip";s:5:"icons";a:2:{s:2:"2x";s:72:"https://ps.w.org/custom.php-post-type-ui/assets/icon-256x256.png?rev=1069557";s:2:"1x";s:72:"https://ps.w.org/custom.php-post-type-ui/assets/icon-128x128.png?rev=1069557";}s:7:"banners";a:2:{s:2:"2x";s:75:"https://ps.w.org/custom.php-post-type-ui/assets/banner-1544x500.png?rev=1069557";s:2:"1x";s:74:"https://ps.w.org/custom.php-post-type-ui/assets/banner-772x250.png?rev=1069557";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:27:"qtranslate-x/qtranslate.php";O:8:"stdClass":9:{s:2:"id";s:26:"w.org/plugins/qtranslate-x";s:4:"slug";s:12:"qtranslate-x";s:6:"plugin";s:27:"qtranslate-x/qtranslate.php";s:11:"new_version";s:7:"3.4.6.8";s:3:"url";s:43:"https://wordpress.org/plugins/qtranslate-x/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/qtranslate-x.3.4.6.8.zip";s:5:"icons";a:1:{s:7:"default";s:63:"https://s.w.org/plugins/geopattern-icon/qtranslate-x_f9f9f9.svg";}s:7:"banners";a:2:{s:2:"2x";s:68:"https://ps.w.org/qtranslate-x/assets/banner-1544x500.png?rev=1286019";s:2:"1x";s:67:"https://ps.w.org/qtranslate-x/assets/banner-772x250.png?rev=1286019";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(331, 'qtranslate_term_name', 'a:13:{s:43:"Khoa Khám &amp; Điều Trị Ngoại Trú";a:2:{s:2:"vi";s:43:"Khoa Khám &amp; Điều Trị Ngoại Trú";s:2:"en";s:0:"";}s:8:"Khoa Tim";a:2:{s:2:"vi";s:8:"Khoa Tim";s:2:"en";s:5:"Heart";}s:15:"Khoa tiêu hóa";a:2:{s:2:"vi";s:15:"Khoa tiêu hóa";s:2:"en";s:16:"Gastroenterology";}s:16:"Khoa Sàng Lọc";a:2:{s:2:"vi";s:16:"Khoa Sàng Lọc";s:2:"en";s:32:"Health Screening &amp; Promotion";}s:20:"Khoa tai mũi họng";a:2:{s:2:"vi";s:20:"Khoa tai mũi họng";s:2:"en";s:19:"Otorhinolaryngology";}s:10:"Khoa Mắt";a:2:{s:2:"vi";s:10:"Khoa Mắt";s:2:"en";s:13:"Ophthalmology";}s:20:"Khoa Chấn Thương";a:2:{s:2:"vi";s:20:"Khoa Chấn Thương";s:2:"en";s:11:"Orthopedics";}s:12:"Nội tiết";a:2:{s:2:"vi";s:12:"Nội tiết";s:2:"en";s:13:"Endocrinology";}s:26:"Phẫu Thuật Thẩm Mỹ";a:2:{s:2:"vi";s:26:"Phẫu Thuật Thẩm Mỹ";s:2:"en";s:15:"Plastic Surgery";}s:11:"Khoa Thận";a:2:{s:2:"vi";s:11:"Khoa Thận";s:2:"en";s:18:"Nephrology Urology";}s:8:"Khoa Nhi";a:2:{s:2:"vi";s:8:"Khoa Nhi";s:2:"en";s:10:"Pediatrics";}s:25:"Sản Khoa Và Phụ Khoa";a:2:{s:2:"vi";s:25:"Sản Khoa Và Phụ Khoa";s:2:"en";s:25:"Obstetrics and Gynecology";}s:17:"Khoa Tổng Quát";a:2:{s:2:"vi";s:17:"Khoa Tổng Quát";s:2:"en";s:11:"Pain Clinic";}}', 'yes'),
(381, '_site_transient_timeout_available_translations', '1545042864', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(382, '_site_transient_available_translations', 'a:113:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-01 06:22:57";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-08 00:58:53";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-01-26 15:42:35";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"as";a:8:{s:8:"language";s:2:"as";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-22 18:59:07";s:12:"english_name";s:8:"Assamese";s:11:"native_name";s:21:"অসমীয়া";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/as.zip";s:3:"iso";a:3:{i:1;s:2:"as";i:2;s:3:"asm";i:3;s:3:"asm";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-06 00:09:27";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-12 20:34:31";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-04 08:43:29";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.5/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-05 11:37:23";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.8.6";s:7:"updated";s:19:"2017-10-01 12:57:10";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-10 08:54:40";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-04 20:20:28";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-10-29 21:28:23";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-02 17:25:51";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-10-28 17:08:36";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:9:"Čeština";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-14 19:51:46";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-06 08:46:24";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsæt";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-25 13:19:31";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-07-28 11:48:22";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.9.8/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-07-28 11:47:36";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-25 12:30:09";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.9.8/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:3:"dzo";a:8:{s:8:"language";s:3:"dzo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-06-29 08:59:03";s:12:"english_name";s:8:"Dzongkha";s:11:"native_name";s:18:"རྫོང་ཁ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip";s:3:"iso";a:2:{i:1;s:2:"dz";i:2;s:3:"dzo";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-27 15:33:27";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-13 03:45:55";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-13 03:45:44";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-10-28 16:14:01";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-10 07:51:56";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-13 05:42:05";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-09 14:53:42";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-10-28 16:20:18";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/es_ES.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-13 05:08:30";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/es_AR.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-10-10 17:20:09";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/es_VE.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-15 23:17:08";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/es_CO.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-15 15:03:42";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/es_GT.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CR";a:8:{s:8:"language";s:5:"es_CR";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-10-01 17:54:52";s:12:"english_name";s:20:"Spanish (Costa Rica)";s:11:"native_name";s:22:"Español de Costa Rica";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.3/es_CR.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-15 16:32:57";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/es_MX.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-15 15:46:49";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/es_CL.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-19 14:11:29";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-09 21:12:23";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-10-04 08:05:41";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-10-05 07:24:22";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-08 18:24:55";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-10-28 16:02:42";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-01-31 11:16:06";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:3:"fur";a:8:{s:8:"language";s:3:"fur";s:7:"version";s:5:"4.8.6";s:7:"updated";s:19:"2018-01-29 17:32:35";s:12:"english_name";s:8:"Friulian";s:11:"native_name";s:8:"Friulian";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip";s:3:"iso";a:2:{i:2;s:3:"fur";i:3;s:3:"fur";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-02 09:10:15";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-09-14 12:33:48";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-09 10:32:06";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-06-17 09:33:44";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-06 18:14:24";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-08-03 10:29:39";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-03 16:21:10";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-07-28 13:16:13";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:6:"4.7.11";s:7:"updated";s:19:"2018-09-20 11:13:37";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-01 11:16:36";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-01 10:30:44";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"jv_ID";a:8:{s:8:"language";s:5:"jv_ID";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-24 13:53:29";s:12:"english_name";s:8:"Javanese";s:11:"native_name";s:9:"Basa Jawa";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip";s:3:"iso";a:2:{i:1;s:2:"jv";i:2;s:3:"jav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Nerusaké";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-02 06:28:35";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:3:"kab";a:8:{s:8:"language";s:3:"kab";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-09-21 14:15:57";s:12:"english_name";s:6:"Kabyle";s:11:"native_name";s:9:"Taqbaylit";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.8/kab.zip";s:3:"iso";a:2:{i:2;s:3:"kab";i:3;s:3:"kab";}s:7:"strings";a:1:{s:8:"continue";s:6:"Kemmel";}}s:2:"kk";a:8:{s:8:"language";s:2:"kk";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-12 08:08:32";s:12:"english_name";s:6:"Kazakh";s:11:"native_name";s:19:"Қазақ тілі";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip";s:3:"iso";a:2:{i:1;s:2:"kk";i:2;s:3:"kaz";}s:7:"strings";a:1:{s:8:"continue";s:20:"Жалғастыру";}}s:2:"km";a:8:{s:8:"language";s:2:"km";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-07 02:07:59";s:12:"english_name";s:5:"Khmer";s:11:"native_name";s:27:"ភាសាខ្មែរ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/km.zip";s:3:"iso";a:2:{i:1;s:2:"km";i:2;s:3:"khm";}s:7:"strings";a:1:{s:8:"continue";s:12:"បន្ត";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-22 02:28:45";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:3:"ckb";a:8:{s:8:"language";s:3:"ckb";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-10-28 17:12:13";s:12:"english_name";s:16:"Kurdish (Sorani)";s:11:"native_name";s:13:"كوردی‎";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.8/ckb.zip";s:3:"iso";a:2:{i:1;s:2:"ku";i:3;s:3:"ckb";}s:7:"strings";a:1:{s:8:"continue";s:30:"به‌رده‌وام به‌";}}s:2:"lo";a:8:{s:8:"language";s:2:"lo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 09:59:23";s:12:"english_name";s:3:"Lao";s:11:"native_name";s:21:"ພາສາລາວ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip";s:3:"iso";a:2:{i:1;s:2:"lo";i:2;s:3:"lao";}s:7:"strings";a:1:{s:8:"continue";s:18:"ຕໍ່​ໄປ";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-13 21:42:46";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-03-17 20:40:40";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.7/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-01-26 15:54:41";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:5:"ml_IN";a:8:{s:8:"language";s:5:"ml_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:43:32";s:12:"english_name";s:9:"Malayalam";s:11:"native_name";s:18:"മലയാളം";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ml";i:2;s:3:"mal";}s:7:"strings";a:1:{s:8:"continue";s:18:"തുടരുക";}}s:2:"mn";a:8:{s:8:"language";s:2:"mn";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 07:29:35";s:12:"english_name";s:9:"Mongolian";s:11:"native_name";s:12:"Монгол";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip";s:3:"iso";a:2:{i:1;s:2:"mn";i:2;s:3:"mon";}s:7:"strings";a:1:{s:8:"continue";s:24:"Үргэлжлүүлэх";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.8.6";s:7:"updated";s:19:"2018-02-13 07:38:55";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.6/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-08-30 20:27:25";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.20";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-11 00:57:26";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"ne_NP";a:8:{s:8:"language";s:5:"ne_NP";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-27 10:30:26";s:12:"english_name";s:6:"Nepali";s:11:"native_name";s:18:"नेपाली";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip";s:3:"iso";a:2:{i:1;s:2:"ne";i:2;s:3:"nep";}s:7:"strings";a:1:{s:8:"continue";s:43:"जारी राख्नुहोस्";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-10-29 08:41:27";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.9.8/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-09-18 11:11:49";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-05 19:28:41";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-10 17:50:37";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-08-25 10:03:08";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pa_IN";a:8:{s:8:"language";s:5:"pa_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-16 05:19:43";s:12:"english_name";s:7:"Punjabi";s:11:"native_name";s:18:"ਪੰਜਾਬੀ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip";s:3:"iso";a:2:{i:1;s:2:"pa";i:2;s:3:"pan";}s:7:"strings";a:1:{s:8:"continue";s:25:"ਜਾਰੀ ਰੱਖੋ";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-21 07:25:37";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.20";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-05 14:41:09";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:10:"pt_PT_ao90";a:8:{s:8:"language";s:10:"pt_PT_ao90";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-09 09:30:48";s:12:"english_name";s:27:"Portuguese (Portugal, AO90)";s:11:"native_name";s:17:"Português (AO90)";s:7:"package";s:69:"https://downloads.wordpress.org/translation/core/4.9.5/pt_PT_ao90.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-07 01:11:27";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"rhg";a:8:{s:8:"language";s:3:"rhg";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-16 13:03:18";s:12:"english_name";s:8:"Rohingya";s:11:"native_name";s:8:"Ruáinga";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip";s:3:"iso";a:1:{i:3;s:3:"rhg";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-08 20:59:54";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-09 15:27:18";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:3:"sah";a:8:{s:8:"language";s:3:"sah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-21 02:06:41";s:12:"english_name";s:5:"Sakha";s:11:"native_name";s:14:"Сахалыы";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip";s:3:"iso";a:2:{i:2;s:3:"sah";i:3;s:3:"sah";}s:7:"strings";a:1:{s:8:"continue";s:12:"Салҕаа";}}s:5:"si_LK";a:8:{s:8:"language";s:5:"si_LK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 06:00:52";s:12:"english_name";s:7:"Sinhala";s:11:"native_name";s:15:"සිංහල";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip";s:3:"iso";a:2:{i:1;s:2:"si";i:2;s:3:"sin";}s:7:"strings";a:1:{s:8:"continue";s:44:"දිගටම කරගෙන යන්න";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-10-31 08:30:58";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2018-01-04 13:33:13";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-01 13:20:12";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-08-02 20:59:54";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-10 13:43:09";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:5:"ta_IN";a:8:{s:8:"language";s:5:"ta_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:22:47";s:12:"english_name";s:5:"Tamil";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:24:"தொடரவும்";}}s:2:"te";a:8:{s:8:"language";s:2:"te";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:39";s:12:"english_name";s:6:"Telugu";s:11:"native_name";s:18:"తెలుగు";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/te.zip";s:3:"iso";a:2:{i:1;s:2:"te";i:2;s:3:"tel";}s:7:"strings";a:1:{s:8:"continue";s:30:"కొనసాగించు";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-02 17:08:41";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-30 02:38:08";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-07 21:08:54";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"tt_RU";a:8:{s:8:"language";s:5:"tt_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-20 20:20:50";s:12:"english_name";s:5:"Tatar";s:11:"native_name";s:19:"Татар теле";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip";s:3:"iso";a:2:{i:1;s:2:"tt";i:2;s:3:"tat";}s:7:"strings";a:1:{s:8:"continue";s:17:"дәвам итү";}}s:3:"tah";a:8:{s:8:"language";s:3:"tah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-06 18:39:39";s:12:"english_name";s:8:"Tahitian";s:11:"native_name";s:10:"Reo Tahiti";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip";s:3:"iso";a:3:{i:1;s:2:"ty";i:2;s:3:"tah";i:3;s:3:"tah";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-12 12:31:53";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:16:"ئۇيغۇرچە";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-01 10:24:13";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-03 09:18:37";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-10-11 06:46:15";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:11:"Davom etish";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-06 02:26:39";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-12-10 23:11:47";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-09 00:56:52";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-11-19 20:31:12";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'no'),
(384, 'category_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 3, '_wp_trash_meta_status', 'draft'),
(4, 3, '_wp_trash_meta_time', '1544511781'),
(5, 3, '_wp_desired_post_slug', 'chinh-sach-bao-mat'),
(6, 6, '_edit_last', '1'),
(7, 6, '_edit_lock', '1544773167:1'),
(8, 8, '_edit_last', '1'),
(9, 8, '_edit_lock', '1545015474:1'),
(10, 10, '_edit_last', '1'),
(11, 10, '_edit_lock', '1545015941:1'),
(12, 12, '_edit_last', '1'),
(13, 12, '_edit_lock', '1544772603:1'),
(20, 19, '_wp_attached_file', '2018/12/QCweb.jpg'),
(21, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:6249;s:6:"height";i:1500;s:4:"file";s:17:"2018/12/QCweb.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"QCweb-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"QCweb-300x72.jpg";s:5:"width";i:300;s:6:"height";i:72;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"QCweb-768x184.jpg";s:5:"width";i:768;s:6:"height";i:184;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"QCweb-1024x246.jpg";s:5:"width";i:1024;s:6:"height";i:246;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(22, 18, '_edit_last', '1'),
(23, 18, '_thumbnail_id', '19'),
(24, 18, '_edit_lock', '1544629308:1'),
(25, 20, '_edit_last', '1'),
(26, 20, '_edit_lock', '1544627001:1'),
(27, 18, 'button_text', ''),
(28, 18, '_button_text', 'field_5c111f3d4bf89'),
(29, 18, 'button', '18'),
(30, 18, '_button', 'field_5c111f10e4063'),
(31, 23, '_edit_last', '1'),
(32, 23, '_edit_lock', '1544629390:1'),
(33, 24, '_wp_attached_file', '2018/12/Chup-tu-dh-yd.jpg'),
(34, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:713;s:4:"file";s:25:"2018/12/Chup-tu-dh-yd.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Chup-tu-dh-yd-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Chup-tu-dh-yd-300x178.jpg";s:5:"width";i:300;s:6:"height";i:178;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"Chup-tu-dh-yd-768x456.jpg";s:5:"width";i:768;s:6:"height";i:456;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"Chup-tu-dh-yd-1024x608.jpg";s:5:"width";i:1024;s:6:"height";i:608;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(35, 23, '_thumbnail_id', '24'),
(36, 23, 'button_text', 'Xem chi tiết'),
(37, 23, '_button_text', 'field_5c111f3d4bf89'),
(38, 23, 'button', ''),
(39, 23, '_button', 'field_5c111f10e4063'),
(40, 25, '_edit_last', '1'),
(41, 25, '_edit_lock', '1544629441:1'),
(42, 26, '_wp_attached_file', '2018/12/cong-hung-vuong.jpg'),
(43, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1349;s:6:"height";i:758;s:4:"file";s:27:"2018/12/cong-hung-vuong.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"cong-hung-vuong-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"cong-hung-vuong-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:27:"cong-hung-vuong-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:28:"cong-hung-vuong-1024x575.jpg";s:5:"width";i:1024;s:6:"height";i:575;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.9";s:6:"credit";s:0:"";s:6:"camera";s:8:"SM-J700H";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1483083300";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"3.7";s:3:"iso";s:2:"40";s:13:"shutter_speed";s:8:"0.003125";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(44, 25, '_thumbnail_id', '26'),
(45, 25, 'button_text', ''),
(46, 25, '_button_text', 'field_5c111f3d4bf89'),
(47, 25, 'button', ''),
(48, 25, '_button', 'field_5c111f10e4063'),
(49, 27, '_edit_last', '1'),
(50, 27, '_edit_lock', '1544629472:1'),
(51, 28, '_wp_attached_file', '2018/12/GuiSYT1.jpg'),
(52, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:697;s:4:"file";s:19:"2018/12/GuiSYT1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"GuiSYT1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"GuiSYT1-300x174.jpg";s:5:"width";i:300;s:6:"height";i:174;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"GuiSYT1-768x446.jpg";s:5:"width";i:768;s:6:"height";i:446;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"GuiSYT1-1024x595.jpg";s:5:"width";i:1024;s:6:"height";i:595;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(53, 27, '_thumbnail_id', '28'),
(54, 27, 'button_text', ''),
(55, 27, '_button_text', 'field_5c111f3d4bf89'),
(56, 27, 'button', ''),
(57, 27, '_button', 'field_5c111f10e4063'),
(58, 29, '_edit_last', '1'),
(59, 29, '_edit_lock', '1544629543:1'),
(60, 30, '_wp_attached_file', '2018/12/khoa-dich-vu.jpg'),
(61, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1276;s:6:"height";i:822;s:4:"file";s:24:"2018/12/khoa-dich-vu.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"khoa-dich-vu-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"khoa-dich-vu-300x193.jpg";s:5:"width";i:300;s:6:"height";i:193;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"khoa-dich-vu-768x495.jpg";s:5:"width";i:768;s:6:"height";i:495;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"khoa-dich-vu-1024x660.jpg";s:5:"width";i:1024;s:6:"height";i:660;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(62, 29, '_thumbnail_id', '30'),
(63, 29, 'button_text', 'Xem chi tiết'),
(64, 29, '_button_text', 'field_5c111f3d4bf89'),
(65, 29, 'button', ''),
(66, 29, '_button', 'field_5c111f10e4063'),
(67, 31, '_edit_last', '1'),
(68, 31, '_edit_lock', '1544629615:1'),
(69, 32, '_wp_attached_file', '2018/12/ung-buou.jpg'),
(70, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1349;s:6:"height";i:819;s:4:"file";s:20:"2018/12/ung-buou.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"ung-buou-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"ung-buou-300x182.jpg";s:5:"width";i:300;s:6:"height";i:182;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"ung-buou-768x466.jpg";s:5:"width";i:768;s:6:"height";i:466;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"ung-buou-1024x622.jpg";s:5:"width";i:1024;s:6:"height";i:622;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"2";s:6:"credit";s:0:"";s:6:"camera";s:12:"Redmi Note 4";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1526897946";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"3.57";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:18:"0.0013586956521739";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(71, 31, '_thumbnail_id', '32'),
(72, 31, 'button_text', 'Xem chi tiết'),
(73, 31, '_button_text', 'field_5c111f3d4bf89'),
(74, 31, 'button', ''),
(75, 31, '_button', 'field_5c111f10e4063'),
(76, 34, '_wp_attached_file', '2018/12/GuiSYT2.jpg'),
(77, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:691;s:4:"file";s:19:"2018/12/GuiSYT2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"GuiSYT2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"GuiSYT2-300x173.jpg";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"GuiSYT2-768x442.jpg";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"GuiSYT2-1024x590.jpg";s:5:"width";i:1024;s:6:"height";i:590;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(78, 33, '_edit_last', '1'),
(79, 33, '_thumbnail_id', '34'),
(80, 33, 'button_text', ''),
(81, 33, '_button_text', 'field_5c111f3d4bf89'),
(82, 33, 'button', ''),
(83, 33, '_button', 'field_5c111f10e4063'),
(84, 33, '_edit_lock', '1544629653:1'),
(85, 35, '_edit_last', '1'),
(86, 35, '_edit_lock', '1544629718:1'),
(87, 36, '_wp_attached_file', '2018/12/IMG_5089.jpg'),
(88, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:5184;s:6:"height";i:3456;s:4:"file";s:20:"2018/12/IMG_5089.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"IMG_5089-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"IMG_5089-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"IMG_5089-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"IMG_5089-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"3.5";s:6:"credit";s:0:"";s:6:"camera";s:12:"Canon EOS 7D";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1523380049";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"15";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:6:"0.0125";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(89, 35, '_thumbnail_id', '36'),
(90, 35, 'button_text', 'Xem chi tiết'),
(91, 35, '_button_text', 'field_5c111f3d4bf89'),
(92, 35, 'button', '35'),
(93, 35, '_button', 'field_5c111f10e4063'),
(94, 37, '_edit_last', '1'),
(95, 37, '_edit_lock', '1544629769:1'),
(96, 38, '_wp_attached_file', '2018/12/khu-b.jpg'),
(97, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1349;s:6:"height";i:755;s:4:"file";s:17:"2018/12/khu-b.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"khu-b-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"khu-b-300x168.jpg";s:5:"width";i:300;s:6:"height";i:168;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"khu-b-768x430.jpg";s:5:"width";i:768;s:6:"height";i:430;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"khu-b-1024x573.jpg";s:5:"width";i:1024;s:6:"height";i:573;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"3.2";s:6:"credit";s:0:"";s:6:"camera";s:14:"Canon IXUS 185";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1524494938";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"5";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:6:"0.0025";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(98, 37, '_thumbnail_id', '38'),
(99, 37, 'button_text', ''),
(100, 37, '_button_text', 'field_5c111f3d4bf89'),
(101, 37, 'button', ''),
(102, 37, '_button', 'field_5c111f10e4063'),
(103, 40, '_wp_attached_file', '2018/12/khu-c.jpg'),
(104, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1348;s:6:"height";i:785;s:4:"file";s:17:"2018/12/khu-c.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"khu-c-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"khu-c-300x175.jpg";s:5:"width";i:300;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"khu-c-768x447.jpg";s:5:"width";i:768;s:6:"height";i:447;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"khu-c-1024x596.jpg";s:5:"width";i:1024;s:6:"height";i:596;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"2";s:6:"credit";s:0:"";s:6:"camera";s:12:"Redmi Note 4";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1527064953";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"3.57";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:18:"0.0057471264367816";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(105, 39, '_edit_last', '1'),
(106, 39, '_thumbnail_id', '40'),
(107, 39, 'button_text', ''),
(108, 39, '_button_text', 'field_5c111f3d4bf89'),
(109, 39, 'button', ''),
(110, 39, '_button', 'field_5c111f10e4063'),
(111, 39, '_edit_lock', '1544629863:1'),
(112, 41, '_edit_last', '1'),
(113, 41, '_edit_lock', '1544708338:1'),
(114, 42, '_wp_attached_file', '2018/12/DSC_1540.jpg'),
(115, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:430;s:6:"height";i:286;s:4:"file";s:20:"2018/12/DSC_1540.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"DSC_1540-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"DSC_1540-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(116, 41, '_thumbnail_id', '42'),
(117, 43, '_edit_last', '1'),
(118, 43, '_edit_lock', '1544630507:1'),
(119, 43, '_thumbnail_id', '42'),
(120, 44, '_edit_last', '1'),
(121, 44, '_edit_lock', '1544706791:1'),
(122, 45, '_wp_attached_file', '2018/12/no-image.jpg'),
(123, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:430;s:6:"height";i:216;s:4:"file";s:20:"2018/12/no-image.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"no-image-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"no-image-300x151.jpg";s:5:"width";i:300;s:6:"height";i:151;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(124, 44, '_thumbnail_id', '45'),
(125, 46, '_edit_last', '1'),
(126, 46, '_edit_lock', '1544706799:1'),
(127, 46, '_thumbnail_id', '45'),
(128, 47, '_edit_last', '1'),
(129, 47, '_edit_lock', '1544706827:1'),
(130, 47, '_thumbnail_id', '45'),
(131, 48, '_edit_last', '1'),
(132, 48, '_edit_lock', '1544774435:1'),
(133, 49, '_wp_attached_file', '2018/12/doctor.jpg'),
(134, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:371;s:6:"height";i:425;s:4:"file";s:18:"2018/12/doctor.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"doctor-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"doctor-262x300.jpg";s:5:"width";i:262;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(135, 48, '_thumbnail_id', '49'),
(136, 51, '_edit_last', '1'),
(137, 51, '_edit_lock', '1544708213:1'),
(138, 51, '_thumbnail_id', '42'),
(139, 52, '_edit_last', '1'),
(140, 52, '_edit_lock', '1544708225:1'),
(141, 52, '_thumbnail_id', '42'),
(142, 53, '_edit_last', '1'),
(143, 53, '_edit_lock', '1544708241:1'),
(144, 53, '_thumbnail_id', '42'),
(145, 54, '_edit_last', '1'),
(146, 54, '_edit_lock', '1544758160:1'),
(147, 54, '_thumbnail_id', '42'),
(148, 55, '_menu_item_type', 'custom.php'),
(149, 55, '_menu_item_menu_item_parent', '0'),
(150, 55, '_menu_item_object_id', '55'),
(151, 55, '_menu_item_object', 'custom.php'),
(152, 55, '_menu_item_target', ''),
(153, 55, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(154, 55, '_menu_item_xfn', ''),
(155, 55, '_menu_item_url', 'http://localhost:8000/Healthcare/source/'),
(157, 56, '_menu_item_type', 'post_type'),
(158, 56, '_menu_item_menu_item_parent', '0'),
(159, 56, '_menu_item_object_id', '6'),
(160, 56, '_menu_item_object', 'page'),
(161, 56, '_menu_item_target', ''),
(162, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(163, 56, '_menu_item_xfn', ''),
(164, 56, '_menu_item_url', ''),
(166, 57, '_menu_item_type', 'post_type'),
(167, 57, '_menu_item_menu_item_parent', '56'),
(168, 57, '_menu_item_object_id', '8'),
(169, 57, '_menu_item_object', 'page'),
(170, 57, '_menu_item_target', ''),
(171, 57, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(172, 57, '_menu_item_xfn', ''),
(173, 57, '_menu_item_url', ''),
(175, 58, '_menu_item_type', 'post_type'),
(176, 58, '_menu_item_menu_item_parent', '56'),
(177, 58, '_menu_item_object_id', '10'),
(178, 58, '_menu_item_object', 'page'),
(179, 58, '_menu_item_target', ''),
(180, 58, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(181, 58, '_menu_item_xfn', ''),
(182, 58, '_menu_item_url', ''),
(184, 59, '_menu_item_type', 'post_type'),
(185, 59, '_menu_item_menu_item_parent', '56'),
(186, 59, '_menu_item_object_id', '12'),
(187, 59, '_menu_item_object', 'page'),
(188, 59, '_menu_item_target', ''),
(189, 59, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(190, 59, '_menu_item_xfn', ''),
(191, 59, '_menu_item_url', ''),
(193, 60, '_menu_item_type', 'post_type'),
(194, 60, '_menu_item_menu_item_parent', '0'),
(195, 60, '_menu_item_object_id', '2'),
(196, 60, '_menu_item_object', 'page'),
(197, 60, '_menu_item_target', ''),
(198, 60, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(199, 60, '_menu_item_xfn', ''),
(200, 60, '_menu_item_url', ''),
(201, 60, '_menu_item_orphaned', '1544758705'),
(229, 2, '_wp_trash_meta_status', 'publish'),
(230, 2, '_wp_trash_meta_time', '1544759713'),
(231, 2, '_wp_desired_post_slug', 'Trang mẫu'),
(232, 66, '_edit_last', '1'),
(233, 66, '_edit_lock', '1544759591:1'),
(234, 68, '_edit_last', '1'),
(235, 68, '_edit_lock', '1544759614:1'),
(236, 70, '_edit_last', '1'),
(237, 70, '_edit_lock', '1544759662:1'),
(238, 72, '_edit_last', '1'),
(239, 72, '_edit_lock', '1544759688:1'),
(240, 74, '_edit_last', '1'),
(241, 74, '_edit_lock', '1544759701:1'),
(242, 76, '_edit_last', '1'),
(243, 76, '_edit_lock', '1544759713:1'),
(244, 78, '_edit_last', '1'),
(245, 78, '_edit_lock', '1544759725:1'),
(246, 80, '_edit_last', '1'),
(247, 80, '_edit_lock', '1544759736:1'),
(248, 82, '_edit_last', '1'),
(249, 82, '_edit_lock', '1544759748:1'),
(250, 84, '_edit_last', '1'),
(251, 84, '_edit_lock', '1544759800:1'),
(252, 86, '_edit_last', '1'),
(253, 86, '_edit_lock', '1544759832:1'),
(254, 88, '_edit_last', '1'),
(255, 88, '_edit_lock', '1544759848:1'),
(256, 90, '_edit_last', '1'),
(257, 90, '_edit_lock', '1544759859:1'),
(258, 92, '_edit_last', '1'),
(259, 92, '_edit_lock', '1544759870:1'),
(260, 94, '_edit_last', '1'),
(261, 94, '_edit_lock', '1544759881:1'),
(262, 96, '_edit_last', '1'),
(263, 96, '_edit_lock', '1544759909:1'),
(264, 98, '_edit_last', '1'),
(265, 98, '_edit_lock', '1544759925:1'),
(266, 100, '_edit_last', '1'),
(267, 100, '_edit_lock', '1544759939:1'),
(268, 102, '_edit_last', '1'),
(269, 102, '_edit_lock', '1544759954:1'),
(270, 104, '_edit_last', '1'),
(271, 104, '_edit_lock', '1544759996:1'),
(272, 106, '_edit_last', '1'),
(273, 106, '_edit_lock', '1544760014:1'),
(274, 108, '_edit_last', '1'),
(275, 108, '_edit_lock', '1544760029:1'),
(276, 110, '_edit_last', '1'),
(277, 110, '_edit_lock', '1544760044:1'),
(278, 112, '_edit_last', '1'),
(279, 112, '_edit_lock', '1544760061:1'),
(280, 112, '_wp_trash_meta_status', 'publish'),
(281, 112, '_wp_trash_meta_time', '1544760220'),
(282, 112, '_wp_desired_post_slug', 'tra-cuu-phac-do-byt-2'),
(283, 114, '_edit_last', '1'),
(284, 114, '_edit_lock', '1544760107:1'),
(285, 116, '_edit_last', '1'),
(286, 116, '_edit_lock', '1544760118:1'),
(287, 118, '_edit_last', '1'),
(288, 118, '_edit_lock', '1544760131:1'),
(289, 120, '_edit_last', '1'),
(290, 120, '_edit_lock', '1544760142:1'),
(291, 122, '_edit_last', '1'),
(292, 122, '_edit_lock', '1544760153:1'),
(293, 124, '_edit_last', '1'),
(294, 124, '_edit_lock', '1544760166:1'),
(295, 126, '_edit_last', '1'),
(296, 126, '_edit_lock', '1545015404:1'),
(297, 128, '_menu_item_type', 'post_type'),
(298, 128, '_menu_item_menu_item_parent', '0'),
(299, 128, '_menu_item_object_id', '66'),
(300, 128, '_menu_item_object', 'page'),
(301, 128, '_menu_item_target', ''),
(302, 128, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(303, 128, '_menu_item_xfn', ''),
(304, 128, '_menu_item_url', ''),
(306, 129, '_menu_item_type', 'post_type'),
(307, 129, '_menu_item_menu_item_parent', '128'),
(308, 129, '_menu_item_object_id', '78'),
(309, 129, '_menu_item_object', 'page'),
(310, 129, '_menu_item_target', ''),
(311, 129, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(312, 129, '_menu_item_xfn', ''),
(313, 129, '_menu_item_url', ''),
(315, 130, '_menu_item_type', 'post_type'),
(316, 130, '_menu_item_menu_item_parent', '128'),
(317, 130, '_menu_item_object_id', '80'),
(318, 130, '_menu_item_object', 'page'),
(319, 130, '_menu_item_target', ''),
(320, 130, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(321, 130, '_menu_item_xfn', ''),
(322, 130, '_menu_item_url', ''),
(324, 131, '_menu_item_type', 'post_type'),
(325, 131, '_menu_item_menu_item_parent', '128'),
(326, 131, '_menu_item_object_id', '76'),
(327, 131, '_menu_item_object', 'page'),
(328, 131, '_menu_item_target', ''),
(329, 131, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(330, 131, '_menu_item_xfn', ''),
(331, 131, '_menu_item_url', ''),
(333, 132, '_menu_item_type', 'post_type'),
(334, 132, '_menu_item_menu_item_parent', '128'),
(335, 132, '_menu_item_object_id', '68'),
(336, 132, '_menu_item_object', 'page'),
(337, 132, '_menu_item_target', ''),
(338, 132, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(339, 132, '_menu_item_xfn', ''),
(340, 132, '_menu_item_url', ''),
(342, 133, '_menu_item_type', 'post_type'),
(343, 133, '_menu_item_menu_item_parent', '128'),
(344, 133, '_menu_item_object_id', '70'),
(345, 133, '_menu_item_object', 'page'),
(346, 133, '_menu_item_target', ''),
(347, 133, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(348, 133, '_menu_item_xfn', ''),
(349, 133, '_menu_item_url', ''),
(351, 134, '_menu_item_type', 'post_type'),
(352, 134, '_menu_item_menu_item_parent', '128'),
(353, 134, '_menu_item_object_id', '74'),
(354, 134, '_menu_item_object', 'page'),
(355, 134, '_menu_item_target', ''),
(356, 134, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(357, 134, '_menu_item_xfn', ''),
(358, 134, '_menu_item_url', ''),
(360, 135, '_menu_item_type', 'post_type'),
(361, 135, '_menu_item_menu_item_parent', '128'),
(362, 135, '_menu_item_object_id', '72'),
(363, 135, '_menu_item_object', 'page'),
(364, 135, '_menu_item_target', ''),
(365, 135, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(366, 135, '_menu_item_xfn', ''),
(367, 135, '_menu_item_url', ''),
(369, 136, '_menu_item_type', 'post_type'),
(370, 136, '_menu_item_menu_item_parent', '128'),
(371, 136, '_menu_item_object_id', '82'),
(372, 136, '_menu_item_object', 'page'),
(373, 136, '_menu_item_target', ''),
(374, 136, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(375, 136, '_menu_item_xfn', ''),
(376, 136, '_menu_item_url', ''),
(378, 137, '_menu_item_type', 'post_type'),
(379, 137, '_menu_item_menu_item_parent', '0'),
(380, 137, '_menu_item_object_id', '84'),
(381, 137, '_menu_item_object', 'page'),
(382, 137, '_menu_item_target', ''),
(383, 137, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(384, 137, '_menu_item_xfn', ''),
(385, 137, '_menu_item_url', ''),
(387, 138, '_menu_item_type', 'post_type'),
(388, 138, '_menu_item_menu_item_parent', '137'),
(389, 138, '_menu_item_object_id', '86'),
(390, 138, '_menu_item_object', 'page'),
(391, 138, '_menu_item_target', ''),
(392, 138, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(393, 138, '_menu_item_xfn', ''),
(394, 138, '_menu_item_url', ''),
(396, 139, '_menu_item_type', 'post_type'),
(397, 139, '_menu_item_menu_item_parent', '0'),
(398, 139, '_menu_item_object_id', '88'),
(399, 139, '_menu_item_object', 'page'),
(400, 139, '_menu_item_target', ''),
(401, 139, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(402, 139, '_menu_item_xfn', ''),
(403, 139, '_menu_item_url', ''),
(405, 140, '_menu_item_type', 'post_type'),
(406, 140, '_menu_item_menu_item_parent', '139'),
(407, 140, '_menu_item_object_id', '96'),
(408, 140, '_menu_item_object', 'page'),
(409, 140, '_menu_item_target', ''),
(410, 140, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(411, 140, '_menu_item_xfn', ''),
(412, 140, '_menu_item_url', ''),
(414, 141, '_menu_item_type', 'post_type'),
(415, 141, '_menu_item_menu_item_parent', '139'),
(416, 141, '_menu_item_object_id', '94'),
(417, 141, '_menu_item_object', 'page'),
(418, 141, '_menu_item_target', ''),
(419, 141, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(420, 141, '_menu_item_xfn', ''),
(421, 141, '_menu_item_url', ''),
(423, 142, '_menu_item_type', 'post_type'),
(424, 142, '_menu_item_menu_item_parent', '139'),
(425, 142, '_menu_item_object_id', '92'),
(426, 142, '_menu_item_object', 'page'),
(427, 142, '_menu_item_target', ''),
(428, 142, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(429, 142, '_menu_item_xfn', ''),
(430, 142, '_menu_item_url', ''),
(432, 143, '_menu_item_type', 'post_type'),
(433, 143, '_menu_item_menu_item_parent', '139'),
(434, 143, '_menu_item_object_id', '90'),
(435, 143, '_menu_item_object', 'page'),
(436, 143, '_menu_item_target', ''),
(437, 143, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(438, 143, '_menu_item_xfn', ''),
(439, 143, '_menu_item_url', ''),
(441, 144, '_menu_item_type', 'post_type'),
(442, 144, '_menu_item_menu_item_parent', '0'),
(443, 144, '_menu_item_object_id', '100'),
(444, 144, '_menu_item_object', 'page'),
(445, 144, '_menu_item_target', ''),
(446, 144, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(447, 144, '_menu_item_xfn', ''),
(448, 144, '_menu_item_url', ''),
(450, 145, '_menu_item_type', 'post_type'),
(451, 145, '_menu_item_menu_item_parent', '0'),
(452, 145, '_menu_item_object_id', '102'),
(453, 145, '_menu_item_object', 'page'),
(454, 145, '_menu_item_target', ''),
(455, 145, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(456, 145, '_menu_item_xfn', ''),
(457, 145, '_menu_item_url', ''),
(459, 146, '_menu_item_type', 'post_type'),
(460, 146, '_menu_item_menu_item_parent', '145'),
(461, 146, '_menu_item_object_id', '120'),
(462, 146, '_menu_item_object', 'page'),
(463, 146, '_menu_item_target', ''),
(464, 146, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(465, 146, '_menu_item_xfn', ''),
(466, 146, '_menu_item_url', ''),
(468, 147, '_menu_item_type', 'post_type'),
(469, 147, '_menu_item_menu_item_parent', '145'),
(470, 147, '_menu_item_object_id', '104'),
(471, 147, '_menu_item_object', 'page'),
(472, 147, '_menu_item_target', ''),
(473, 147, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(474, 147, '_menu_item_xfn', ''),
(475, 147, '_menu_item_url', ''),
(477, 148, '_menu_item_type', 'post_type'),
(478, 148, '_menu_item_menu_item_parent', '145'),
(479, 148, '_menu_item_object_id', '106'),
(480, 148, '_menu_item_object', 'page'),
(481, 148, '_menu_item_target', ''),
(482, 148, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(483, 148, '_menu_item_xfn', ''),
(484, 148, '_menu_item_url', ''),
(486, 149, '_menu_item_type', 'post_type'),
(487, 149, '_menu_item_menu_item_parent', '145'),
(488, 149, '_menu_item_object_id', '118'),
(489, 149, '_menu_item_object', 'page'),
(490, 149, '_menu_item_target', ''),
(491, 149, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(492, 149, '_menu_item_xfn', ''),
(493, 149, '_menu_item_url', ''),
(495, 150, '_menu_item_type', 'post_type'),
(496, 150, '_menu_item_menu_item_parent', '145'),
(497, 150, '_menu_item_object_id', '122'),
(498, 150, '_menu_item_object', 'page'),
(499, 150, '_menu_item_target', ''),
(500, 150, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(501, 150, '_menu_item_xfn', ''),
(502, 150, '_menu_item_url', ''),
(504, 151, '_menu_item_type', 'post_type'),
(505, 151, '_menu_item_menu_item_parent', '145'),
(506, 151, '_menu_item_object_id', '114'),
(507, 151, '_menu_item_object', 'page'),
(508, 151, '_menu_item_target', ''),
(509, 151, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(510, 151, '_menu_item_xfn', ''),
(511, 151, '_menu_item_url', ''),
(513, 152, '_menu_item_type', 'post_type'),
(514, 152, '_menu_item_menu_item_parent', '145'),
(515, 152, '_menu_item_object_id', '108'),
(516, 152, '_menu_item_object', 'page'),
(517, 152, '_menu_item_target', ''),
(518, 152, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(519, 152, '_menu_item_xfn', ''),
(520, 152, '_menu_item_url', ''),
(522, 153, '_menu_item_type', 'post_type'),
(523, 153, '_menu_item_menu_item_parent', '145'),
(524, 153, '_menu_item_object_id', '110'),
(525, 153, '_menu_item_object', 'page'),
(526, 153, '_menu_item_target', ''),
(527, 153, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(528, 153, '_menu_item_xfn', ''),
(529, 153, '_menu_item_url', ''),
(531, 154, '_menu_item_type', 'post_type'),
(532, 154, '_menu_item_menu_item_parent', '145'),
(533, 154, '_menu_item_object_id', '116'),
(534, 154, '_menu_item_object', 'page'),
(535, 154, '_menu_item_target', ''),
(536, 154, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(537, 154, '_menu_item_xfn', ''),
(538, 154, '_menu_item_url', ''),
(540, 155, '_menu_item_type', 'post_type'),
(541, 155, '_menu_item_menu_item_parent', '145'),
(542, 155, '_menu_item_object_id', '124'),
(543, 155, '_menu_item_object', 'page'),
(544, 155, '_menu_item_target', ''),
(545, 155, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(546, 155, '_menu_item_xfn', ''),
(547, 155, '_menu_item_url', ''),
(549, 156, '_menu_item_type', 'post_type'),
(550, 156, '_menu_item_menu_item_parent', '0'),
(551, 156, '_menu_item_object_id', '98'),
(552, 156, '_menu_item_object', 'page'),
(553, 156, '_menu_item_target', ''),
(554, 156, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(555, 156, '_menu_item_xfn', ''),
(556, 156, '_menu_item_url', ''),
(558, 157, '_menu_item_type', 'post_type'),
(559, 157, '_menu_item_menu_item_parent', '0'),
(560, 157, '_menu_item_object_id', '126'),
(561, 157, '_menu_item_object', 'page'),
(562, 157, '_menu_item_target', ''),
(563, 157, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(564, 157, '_menu_item_xfn', ''),
(565, 157, '_menu_item_url', ''),
(567, 8, '_wp_page_template', 'default'),
(568, 10, '_wp_page_template', 'default'),
(569, 12, '_wp_page_template', 'page-gioi-thieu-phong-kham.php'),
(570, 163, '_wp_attached_file', '2018/12/dieu-tri-trong-ngay-1.jpg'),
(571, 163, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:300;s:4:"file";s:33:"2018/12/dieu-tri-trong-ngay-1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"dieu-tri-trong-ngay-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"dieu-tri-trong-ngay-1-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(572, 8, '_thumbnail_id', '163'),
(573, 164, '_wp_attached_file', '2018/12/pkthongminh_1.jpg'),
(574, 164, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:852;s:6:"height";i:640;s:4:"file";s:25:"2018/12/pkthongminh_1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"pkthongminh_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"pkthongminh_1-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"pkthongminh_1-768x577.jpg";s:5:"width";i:768;s:6:"height";i:577;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(575, 10, '_thumbnail_id', '164'),
(576, 165, '_wp_attached_file', '2018/12/1.jpg'),
(577, 165, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:863;s:6:"height";i:649;s:4:"file";s:13:"2018/12/1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"1-300x226.jpg";s:5:"width";i:300;s:6:"height";i:226;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"1-768x578.jpg";s:5:"width";i:768;s:6:"height";i:578;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(578, 12, '_thumbnail_id', '165'),
(579, 166, '_edit_last', '1'),
(580, 166, '_edit_lock', '1544773571:1'),
(581, 8, 'intro_description', '[:vi]Với trên 1000 lượt khám mỗi ngày, Bệnh viện quận 4 hy vọng việc triển khai mô hình này sẽ mang lại sự tiện lợi nhất cho bệnh nhân đến khám và điều trị tại Bệnh Viện Quận 4[:en]With over 1,000 visits per day, District 4 Hospital hopes to implement this model will bring the best convenience for patients to see and treatment in District 4[:]'),
(582, 8, '_intro_description', 'field_5c135b381f530'),
(583, 168, 'intro_description', 'Với trên 1000 lượt khám mỗi ngày, Bệnh viện quận 4 hy vọng việc triển khai mô hình này sẽ mang lại sự tiện lợi nhất cho bệnh nhân đến khám và điều trị tại Bệnh Viện Quận 4'),
(584, 168, '_intro_description', 'field_5c135b381f530'),
(585, 10, 'intro_description', '[:vi]Sau hơn 2 tháng tích cực triển khai và đưa vào hoạt động mô hình phòng khám thông minh đã giúp cải tiến thời gian chờ khám của bệnh nhân, tránh được việc chen lấn tại khu vực tiếp nhận bệnh, khu vực thu phí, khu vực lãnh thuốc, cũng như các bất cập khác trong việc chờ khám tại các buồng khám bệnh.[:en]After more than two months of active deployment and implementation of the intelligent clinic model has helped improve patient waiting time, avoid the squeeze in the receiving area, the charge area as well as other inadequacies in waiting for examination in the clinic.[:]'),
(586, 10, '_intro_description', 'field_5c135b381f530'),
(587, 169, 'intro_description', 'Sau hơn 2 tháng tích cực triển khai và đưa vào hoạt động mô hình phòng khám thông minh đã giúp cải tiến thời gian chờ khám của bệnh nhân, tránh được việc chen lấn tại khu vực tiếp nhận bệnh, khu vực thu phí, khu vực lãnh thuốc,  cũng như các bất cập khác trong việc chờ khám tại các buồng khám bệnh.'),
(588, 169, '_intro_description', 'field_5c135b381f530'),
(589, 12, 'intro_description', 'Hơn nữa việc công khai trên màn hình tất cả thông tin về  tên tuổi bệnh nhân, số thứ tự chờ khám, dự kiến thời gian sẽ được khám, số tiền bệnh nhân sẽ phải đóng'),
(590, 12, '_intro_description', 'field_5c135b381f530'),
(591, 170, 'intro_description', 'Hơn nữa việc công khai trên màn hình tất cả thông tin về  tên tuổi bệnh nhân, số thứ tự chờ khám, dự kiến thời gian sẽ được khám, số tiền bệnh nhân sẽ phải đóng'),
(592, 170, '_intro_description', 'field_5c135b381f530'),
(593, 6, '_wp_page_template', 'default'),
(594, 172, 'intro_description', 'Với trên 1000 lượt khám mỗi ngày, Bệnh viện quận 4 hy vọng việc triển khai mô hình này sẽ mang lại sự tiện lợi nhất cho bệnh nhân đến khám và điều trị tại Bệnh Viện Quận 4'),
(595, 172, '_intro_description', 'field_5c135b381f530'),
(596, 173, '_edit_last', '1'),
(597, 173, '_edit_lock', '1544775242:1'),
(598, 175, '_wp_attached_file', '2018/12/Logo_PNT.png'),
(599, 175, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:386;s:6:"height";i:142;s:4:"file";s:20:"2018/12/Logo_PNT.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"Logo_PNT-150x142.png";s:5:"width";i:150;s:6:"height";i:142;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"Logo_PNT-300x110.png";s:5:"width";i:300;s:6:"height";i:110;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(600, 176, 'intro_description', '[:vi]Với trên 1000 lượt khám mỗi ngày, Bệnh viện quận 4 hy vọng việc triển khai mô hình này sẽ mang lại sự tiện lợi nhất cho bệnh nhân đến khám và điều trị tại Bệnh Viện Quận 4[:en]With over 1,000 visits per day, District 4 Hospital hopes to implement this model will bring the best convenience for patients to see and treatment in District 4[:]'),
(601, 176, '_intro_description', 'field_5c135b381f530'),
(602, 177, 'intro_description', '[:vi]Sau hơn 2 tháng tích cực triển khai và đưa vào hoạt động mô hình phòng khám thông minh đã giúp cải tiến thời gian chờ khám của bệnh nhân, tránh được việc chen lấn tại khu vực tiếp nhận bệnh, khu vực thu phí, khu vực lãnh thuốc, cũng như các bất cập khác trong việc chờ khám tại các buồng khám bệnh.[:en]After more than two months of active deployment and implementation of the intelligent clinic model has helped improve patient waiting time, avoid the squeeze in the receiving area, the charge area as well as other inadequacies in waiting for examination in the clinic.[:]'),
(603, 177, '_intro_description', 'field_5c135b381f530'),
(604, 1, '_wp_trash_meta_status', 'publish'),
(605, 1, '_wp_trash_meta_time', '1545016089'),
(606, 1, '_wp_desired_post_slug', 'chao-moi-nguoi'),
(607, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(608, 179, '_edit_last', '1'),
(609, 179, '_edit_lock', '1545032051:1'),
(610, 181, '_wp_attached_file', '2018/12/Heart.png'),
(611, 181, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:118;s:4:"file";s:17:"2018/12/Heart.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"Heart-150x118.png";s:5:"width";i:150;s:6:"height";i:118;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(612, 182, '_wp_attached_file', '2018/12/HealthScreening.png'),
(613, 182, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:118;s:4:"file";s:27:"2018/12/HealthScreening.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"HealthScreening-150x118.png";s:5:"width";i:150;s:6:"height";i:118;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(614, 183, '_wp_attached_file', '2018/12/Gastroenterology.png'),
(615, 183, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:118;s:4:"file";s:28:"2018/12/Gastroenterology.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"Gastroenterology-150x118.png";s:5:"width";i:150;s:6:"height";i:118;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(616, 184, '_wp_attached_file', '2018/12/Otorhinolaryngology.png'),
(617, 184, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:118;s:4:"file";s:31:"2018/12/Otorhinolaryngology.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"Otorhinolaryngology-150x118.png";s:5:"width";i:150;s:6:"height";i:118;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(618, 185, '_wp_attached_file', '2018/12/Ophthalmology.png'),
(619, 185, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:118;s:4:"file";s:25:"2018/12/Ophthalmology.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Ophthalmology-150x118.png";s:5:"width";i:150;s:6:"height";i:118;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(620, 186, '_wp_attached_file', '2018/12/Orthopedics.png'),
(621, 186, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:119;s:4:"file";s:23:"2018/12/Orthopedics.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"Orthopedics-150x119.png";s:5:"width";i:150;s:6:"height";i:119;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(622, 187, '_wp_attached_file', '2018/12/Endocrinology.png'),
(623, 187, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:118;s:4:"file";s:25:"2018/12/Endocrinology.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Endocrinology-150x118.png";s:5:"width";i:150;s:6:"height";i:118;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(624, 188, '_wp_attached_file', '2018/12/Plastic.png'),
(625, 188, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:118;s:4:"file";s:19:"2018/12/Plastic.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"Plastic-150x118.png";s:5:"width";i:150;s:6:"height";i:118;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(626, 189, '_wp_attached_file', '2018/12/Pediatrics.png'),
(627, 189, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:118;s:4:"file";s:22:"2018/12/Pediatrics.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"Pediatrics-150x118.png";s:5:"width";i:150;s:6:"height";i:118;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(628, 190, '_wp_attached_file', '2018/12/Obstetrics.png'),
(629, 190, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:118;s:4:"file";s:22:"2018/12/Obstetrics.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"Obstetrics-150x118.png";s:5:"width";i:150;s:6:"height";i:118;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(630, 191, '_wp_attached_file', '2018/12/Plastic-1.png'),
(631, 191, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:118;s:4:"file";s:21:"2018/12/Plastic-1.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"Plastic-1-150x118.png";s:5:"width";i:150;s:6:"height";i:118;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(632, 193, '_wp_attached_file', '2018/12/bs-viet-thanh-web.jpg'),
(633, 193, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:212;s:6:"height";i:283;s:4:"file";s:29:"2018/12/bs-viet-thanh-web.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"bs-viet-thanh-web-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"5";s:6:"credit";s:0:"";s:6:"camera";s:9:"ILCE-6300";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1531483333";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"16";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:4:"0.02";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(634, 192, '_edit_last', '1'),
(635, 192, '_thumbnail_id', '193'),
(638, 192, '_edit_lock', '1545033584:1'),
(639, 195, '_wp_attached_file', '2018/12/Pediatrics-1.png'),
(640, 195, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:118;s:4:"file";s:24:"2018/12/Pediatrics-1.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"Pediatrics-1-150x118.png";s:5:"width";i:150;s:6:"height";i:118;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(641, 196, '_wp_attached_file', '2018/12/Nephrology.png'),
(642, 196, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:150;s:6:"height";i:118;s:4:"file";s:22:"2018/12/Nephrology.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"Nephrology-150x118.png";s:5:"width";i:150;s:6:"height";i:118;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(643, 198, '_wp_attached_file', '2018/12/ta-thi-thanh-thuy.png'),
(644, 198, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:247;s:6:"height";i:344;s:4:"file";s:29:"2018/12/ta-thi-thanh-thuy.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"ta-thi-thanh-thuy-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:29:"ta-thi-thanh-thuy-215x300.png";s:5:"width";i:215;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(645, 197, '_edit_last', '1'),
(646, 197, '_thumbnail_id', '198'),
(649, 197, '_edit_lock', '1545032344:1'),
(650, 201, '_wp_attached_file', '2018/12/hinh-the-bac-hai.jpg'),
(651, 201, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:472;s:6:"height";i:709;s:4:"file";s:28:"2018/12/hinh-the-bac-hai.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"hinh-the-bac-hai-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"hinh-the-bac-hai-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(652, 200, '_edit_last', '1'),
(653, 200, '_thumbnail_id', '201'),
(656, 200, '_edit_lock', '1545033304:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-12-10 10:18:10', '2018-12-10 10:18:10', 'Chúc mừng đến với WordPress. Đây là bài viết đầu tiên của bạn. Hãy chỉnh sửa hay xóa bài viết này, và bắt đầu viết blog!', 'Chào tất cả mọi người!', '', 'trash', 'open', 'open', '', 'chao-moi-nguoi__trashed', '', '', '2018-12-17 03:08:09', '2018-12-17 03:08:09', '', 0, 'http://localhost:8000/Healthcare/source/?p=1', 0, 'post', '', 1),
(2, 1, '2018-12-10 10:18:10', '2018-12-10 10:18:10', 'Đây là một trang mẫu. Nó khác với một bài blog bởi vì nó sẽ là một trang tĩnh và sẽ được thêm vào thanh menu của trang web của bạn (trong hầu hết theme). Mọi người thường bắt đầu bằng một trang Giới thiệu để giới thiệu bản thân đến người dùng tiềm năng. Bạn có thể viết như sau:\n\n<blockquote>Xin chào! Tôi là người giao thư bằng xe đạp vào ban ngày, một diễn viên đầy tham vọng vào ban đêm, và đây là trang web của tôi. Tôi sống ở Los Angeles, có một chú cho tuyệt vời tên là Jack, và tôi thích uống cocktail.</blockquote>\n\n...hay như thế này:\n\n<blockquote>Công ty XYZ Doohickey được thành lập vào năm 1971, và đã cung cấp đồ dùng chất lượng cho công chúng kể từ đó. Nằm ở thành phố Gotham, XYZ tạo việc làm cho hơn 2.000 người và làm tất cả những điều tuyệt vời cho cộng đồng Gotham.</blockquote>\n\nLà người dùng WordPress mới, bạn nên truy cập <a href="http://localhost:8000/Healthcare/source/wp-admin/">trang quản trị</a> để xóa trang này và tạo các trang mới cho nội dung của bạn. Chúc vui vẻ!', 'Trang Mẫu', '', 'trash', 'closed', 'open', '', 'Trang mẫu__trashed', '', '', '2018-12-14 03:55:13', '2018-12-14 03:55:13', '', 0, 'http://localhost:8000/Healthcare/source/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-12-10 10:18:10', '2018-12-10 10:18:10', '<h2>Chúng tôi là ai</h2><p>Địa chỉ website là: http://localhost:8000/Healthcare/source.</p><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><h3>Bình luận</h3><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><h3>Thư viện</h3><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><h3>Thông tin liên hệ</h3><h3>Cookies</h3><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><p>Nếu bạn có tài khoản và đăng nhập và website, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><h3>Nội dung nhúng từ website khác</h3><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><h3>Phân tích</h3><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><h2>Dữ liệu của bạn tồn tại bao lâu</h2><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><h2>Các quyền nào của bạn với dữ liệu của mình</h2><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><h2>Các dữ liệu của bạn được gửi tới đâu</h2><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><h2>Thông tin liên hệ của bạn</h2><h2>Thông tin bổ sung</h2><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><h3>Các yêu cầu công bố thông tin được quản lý</h3>', 'Chính sách bảo mật', '', 'trash', 'closed', 'open', '', 'chinh-sach-bao-mat__trashed', '', '', '2018-12-11 07:03:02', '2018-12-11 07:03:02', '', 0, 'http://localhost:8000/Healthcare/source/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-12-11 07:03:02', '2018-12-11 07:03:02', '<h2>Chúng tôi là ai</h2><p>Địa chỉ website là: http://localhost:8000/Healthcare/source.</p><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><h3>Bình luận</h3><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><h3>Thư viện</h3><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><h3>Thông tin liên hệ</h3><h3>Cookies</h3><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><p>Nếu bạn có tài khoản và đăng nhập và website, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><h3>Nội dung nhúng từ website khác</h3><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><h3>Phân tích</h3><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><h2>Dữ liệu của bạn tồn tại bao lâu</h2><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><h2>Các quyền nào của bạn với dữ liệu của mình</h2><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><h2>Các dữ liệu của bạn được gửi tới đâu</h2><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><h2>Thông tin liên hệ của bạn</h2><h2>Thông tin bổ sung</h2><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><h3>Các yêu cầu công bố thông tin được quản lý</h3>', 'Chính sách bảo mật', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-12-11 07:03:02', '2018-12-11 07:03:02', '', 3, 'http://localhost:8000/Healthcare/source/2018/12/11/3-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-12-11 07:03:17', '2018-12-11 07:03:17', '', '[:vi]Giới thiệu[:en]Introduction[:]', '', 'publish', 'closed', 'closed', '', 'gioi-thieu', '', '', '2018-12-14 07:41:44', '2018-12-14 07:41:44', '', 0, 'http://localhost:8000/Healthcare/source/?page_id=6', 0, 'page', '', 0),
(7, 1, '2018-12-11 07:03:17', '2018-12-11 07:03:17', '', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-12-11 07:03:17', '2018-12-11 07:03:17', '', 6, 'http://localhost:8000/Healthcare/source/2018/12/11/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-12-11 07:04:44', '2018-12-11 07:04:44', '[:vi]<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-1.jpg" alt="" width="900" height="675" />\r\n<em>Khu điều trị trong ngày</em>\r\n\r\n<em><img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-2.jpg" alt="" width="900" height="675" />\r\nPhòng bệnh điều trị trong ngày</em>\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-3.jpg" alt="" width="900" height="675" />\r\n<em>Các dịch vụ tiện ích tại phòng bệnh</em>\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-4.jpg" alt="" width="900" height="675" />\r\n<em>Khu vực nhà vệ sinh bệnh nhân</em>[:en]<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-1.jpg" alt="" width="900" height="675" />\r\nDay treatment area\r\n\r\n<em><img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-2.jpg" alt="" width="900" height="675" />\r\nDisease treatment during the day\r\n</em>\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-3.jpg" alt="" width="900" height="675" />\r\nServices in the ward\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-4.jpg" alt="" width="900" height="675" />\r\nPatient toilet area[:]', '[:vi]Giới thiệu phòng khám[:en]About the clinic[:]', '', 'publish', 'closed', 'closed', '', 'gioi-thieu-phong-kham', '', '', '2018-12-17 03:00:14', '2018-12-17 03:00:14', '', 6, 'http://localhost:8000/Healthcare/source/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-12-11 07:04:44', '2018-12-11 07:04:44', '', 'Giới thiệu phòng khám', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-12-11 07:04:44', '2018-12-11 07:04:44', '', 8, 'http://localhost:8000/Healthcare/source/2018/12/11/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-12-11 07:05:07', '2018-12-11 07:05:07', 'Từ đầu tháng 8/2017 Bệnh viện quận 4 từng bước xây dựng mô hình phòng khám ngoại trú thông minh cho cả khu vực khám Bảo hiểm y tế và khu vực khám Bác sĩ gia đình. Trước đó mô hình phòng khám thông minh của Bệnh Viện Nhân Dân Gia Định đã đoạt giải 2 trong các giải thưởng về cải tiến chất lượng bệnh viện của Sở Y tế TPHCM năm 2016.\r\n\r\nSau hơn 2 tháng tích cực triển khai và đưa vào hoạt động mô hình phòng khám thông minh đã giúp cải tiến thời gian chờ khám của bệnh nhân, tránh được việc chen lấn tại khu vực tiếp nhận bệnh, khu vực thu phí, khu vực lãnh thuốc,  cũng như các bất cập khác trong việc chờ khám tại các buồng khám bệnh.\r\n\r\nHơn nữa việc công khai trên màn hình tất cả thông tin về  tên tuổi bệnh nhân, số thứ tự chờ khám, dự kiến thời gian sẽ được khám, số tiền bệnh nhân sẽ phải đóng, số thứ tự và tên tuổi đến lượt lãnh thuốc sẽ giúp cho phòng khám ngoại trú giữ được không gian yên tĩnh nhất, tránh tiếng loa gọi tên như lúc trước, giúp cho các bệnh nhân và bác sĩ thoải mái hơn, tập trung hơn vào việc thăm khám và hỏi han bệnh nhân.\r\n\r\n<img src="http://benhvienquan4.vn/uploads/news/2017_09/pkthongminh_1.jpg" alt="" />\r\n\r\nVới trên 1000 lượt khám mỗi ngày, Bệnh viện quận 4 hy vọng việc triển khai mô hình này sẽ mang lại sự tiện lợi nhất cho bệnh nhân đến khám và điều trị tại Bệnh Viện Quận 4. Trong thời gian tới  việc áp dụng mô hình này sẽ được nhân rộng  ra các phân hệ khám ngoại trú khác và cận lâm sàng để hy vọng phục vụ bà con ngày một tốt hơn.\r\n\r\n<img src="http://benhvienquan4.vn/uploads/news/2017_09/pkthongminh_2.jpg" alt="" />', 'Phòng khám thông minh', '', 'publish', 'closed', 'closed', '', 'phong-kham-thong-minh', '', '', '2018-12-17 03:00:35', '2018-12-17 03:00:35', '', 6, 'http://localhost:8000/Healthcare/source/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-12-11 07:05:07', '2018-12-11 07:05:07', '', 'Phòng khám thông minh', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-12-11 07:05:07', '2018-12-11 07:05:07', '', 10, 'http://localhost:8000/Healthcare/source/2018/12/11/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-12-11 07:05:17', '2018-12-11 07:05:17', '<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/1.jpg" alt="" width="863" height="649" />\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/2.jpg" alt="" width="862" height="649" />\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/3.jpg" alt="" width="858" height="649" />\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/4.jpg" alt="" width="861" height="648" />\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/5.jpg" alt="" width="864" height="647" />\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/6.jpg" alt="" width="864" height="650" />', 'Qui trình khám', '', 'publish', 'closed', 'closed', '', 'qui-trinh-kham', '', '', '2018-12-14 07:31:50', '2018-12-14 07:31:50', '', 6, 'http://localhost:8000/Healthcare/source/?page_id=12', 0, 'page', '', 0),
(13, 1, '2018-12-11 07:05:17', '2018-12-11 07:05:17', '', 'Qui trình khám', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-12-11 07:05:17', '2018-12-11 07:05:17', '', 12, 'http://localhost:8000/Healthcare/source/2018/12/11/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-12-12 14:31:44', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-12 14:31:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=slide_introduction&p=14', 0, 'slide_introduction', '', 0),
(16, 1, '2018-12-12 14:39:35', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-12 14:39:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=slide_introduction&p=16', 0, 'slide_introduction', '', 0),
(17, 1, '2018-12-12 14:40:02', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-12 14:40:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=slide_introduction&p=17', 0, 'slide_introduction', '', 0),
(18, 1, '2018-12-12 14:41:25', '2018-12-12 14:41:25', '', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2018-12-12 15:41:55', '2018-12-12 15:41:55', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=slide_introduction&#038;p=18', 0, 'slide_introduction', '', 0),
(19, 1, '2018-12-12 14:41:13', '2018-12-12 14:41:13', '', 'QCweb', '', 'inherit', 'open', 'closed', '', 'qcweb', '', '', '2018-12-12 14:41:13', '2018-12-12 14:41:13', '', 18, 'http://localhost/2018/freelancer/BE/healthcare/wp-content/uploads/2018/12/QCweb.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2018-12-12 14:46:08', '2018-12-12 14:46:08', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:18:"slide_introduction";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'slide_introduction', 'slide_introduction', 'publish', 'closed', 'closed', '', 'group_5c111f078e16a', '', '', '2018-12-12 14:46:34', '2018-12-12 14:46:34', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=acf-field-group&#038;p=20', 0, 'acf-field-group', '', 0),
(21, 1, '2018-12-12 14:46:08', '2018-12-12 14:46:08', 'a:10:{s:4:"type";s:9:"page_link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"post_type";a:0:{}s:8:"taxonomy";a:0:{}s:10:"allow_null";i:0;s:14:"allow_archives";i:1;s:8:"multiple";i:0;}', 'button', 'button', 'publish', 'closed', 'closed', '', 'field_5c111f10e4063', '', '', '2018-12-12 14:46:34', '2018-12-12 14:46:34', '', 20, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=acf-field&#038;p=21', 1, 'acf-field', '', 0),
(22, 1, '2018-12-12 14:46:28', '2018-12-12 14:46:28', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'button_text', 'button_text', 'publish', 'closed', 'closed', '', 'field_5c111f3d4bf89', '', '', '2018-12-12 14:46:34', '2018-12-12 14:46:34', '', 20, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=acf-field&#038;p=22', 0, 'acf-field', '', 0),
(23, 1, '2018-12-12 15:44:49', '2018-12-12 15:44:49', '', 'Quang cảnh bệnh viện', '', 'publish', 'closed', 'closed', '', 'quang-canh-benh-vien', '', '', '2018-12-12 15:45:14', '2018-12-12 15:45:14', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=slide_introduction&#038;p=23', 0, 'slide_introduction', '', 0),
(24, 1, '2018-12-12 15:44:43', '2018-12-12 15:44:43', '', 'Chup-tu-dh-yd', '', 'inherit', 'open', 'closed', '', 'chup-tu-dh-yd', '', '', '2018-12-12 15:44:43', '2018-12-12 15:44:43', '', 23, 'http://localhost/2018/freelancer/BE/healthcare/wp-content/uploads/2018/12/Chup-tu-dh-yd.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2018-12-12 15:45:59', '2018-12-12 15:45:59', '', 'Cổng Hồng Bàng', '', 'publish', 'closed', 'closed', '', 'cong-hong-bang', '', '', '2018-12-12 15:45:59', '2018-12-12 15:45:59', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=slide_introduction&#038;p=25', 0, 'slide_introduction', '', 0),
(26, 1, '2018-12-12 15:45:55', '2018-12-12 15:45:55', '', 'cong hung vuong', '', 'inherit', 'open', 'closed', '', 'cong-hung-vuong', '', '', '2018-12-12 15:45:55', '2018-12-12 15:45:55', '', 25, 'http://localhost/2018/freelancer/BE/healthcare/wp-content/uploads/2018/12/cong-hung-vuong.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2018-12-12 15:46:46', '2018-12-12 15:46:46', '', 'Khu hành chính', '', 'publish', 'closed', 'closed', '', 'khu-hanh-chinh', '', '', '2018-12-12 15:46:55', '2018-12-12 15:46:55', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=slide_introduction&#038;p=27', 0, 'slide_introduction', '', 0),
(28, 1, '2018-12-12 15:46:43', '2018-12-12 15:46:43', '', 'GuiSYT1', '', 'inherit', 'open', 'closed', '', 'guisyt1', '', '', '2018-12-12 15:46:43', '2018-12-12 15:46:43', '', 27, 'http://localhost/2018/freelancer/BE/healthcare/wp-content/uploads/2018/12/GuiSYT1.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2018-12-12 15:47:39', '2018-12-12 15:47:39', '', 'Khoa Dịch vụ điều trị bệnh phổi', '', 'publish', 'closed', 'closed', '', 'khoa-dich-vu-dieu-tri-benh-phoi', '', '', '2018-12-12 15:47:53', '2018-12-12 15:47:53', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=slide_introduction&#038;p=29', 0, 'slide_introduction', '', 0),
(30, 1, '2018-12-12 15:47:35', '2018-12-12 15:47:35', '', 'khoa dich vu', '', 'inherit', 'open', 'closed', '', 'khoa-dich-vu', '', '', '2018-12-12 15:47:35', '2018-12-12 15:47:35', '', 29, 'http://localhost/2018/freelancer/BE/healthcare/wp-content/uploads/2018/12/khoa-dich-vu.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2018-12-12 15:48:39', '2018-12-12 15:48:39', '', 'Khoa Ung Bướu', '', 'publish', 'closed', 'closed', '', 'khoa-ung-buou', '', '', '2018-12-12 15:48:53', '2018-12-12 15:48:53', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=slide_introduction&#038;p=31', 0, 'slide_introduction', '', 0),
(32, 1, '2018-12-12 15:48:37', '2018-12-12 15:48:37', '', 'ung buou', '', 'inherit', 'open', 'closed', '', 'ung-buou', '', '', '2018-12-12 15:48:37', '2018-12-12 15:48:37', '', 31, 'http://localhost/2018/freelancer/BE/healthcare/wp-content/uploads/2018/12/ung-buou.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2018-12-12 15:49:49', '2018-12-12 15:49:49', '', 'Khu A', '', 'publish', 'closed', 'closed', '', 'khu-a', '', '', '2018-12-12 15:49:49', '2018-12-12 15:49:49', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=slide_introduction&#038;p=33', 0, 'slide_introduction', '', 0),
(34, 1, '2018-12-12 15:49:42', '2018-12-12 15:49:42', '', 'GuiSYT2', '', 'inherit', 'open', 'closed', '', 'guisyt2', '', '', '2018-12-12 15:49:42', '2018-12-12 15:49:42', '', 33, 'http://localhost/2018/freelancer/BE/healthcare/wp-content/uploads/2018/12/GuiSYT2.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2018-12-12 15:50:26', '2018-12-12 15:50:26', '', 'Khoa Hồi sức cấp cứu - chống độc', '', 'publish', 'closed', 'closed', '', 'khoa-hoi-suc-cap-cuu-chong-doc', '', '', '2018-12-12 15:50:58', '2018-12-12 15:50:58', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=slide_introduction&#038;p=35', 0, 'slide_introduction', '', 0),
(36, 1, '2018-12-12 15:50:20', '2018-12-12 15:50:20', '', 'IMG_5089', '', 'inherit', 'open', 'closed', '', 'img_5089', '', '', '2018-12-12 15:50:20', '2018-12-12 15:50:20', '', 35, 'http://localhost/2018/freelancer/BE/healthcare/wp-content/uploads/2018/12/IMG_5089.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2018-12-12 15:51:36', '2018-12-12 15:51:36', '', 'Khu B', '', 'publish', 'closed', 'closed', '', 'khu-b', '', '', '2018-12-12 15:51:36', '2018-12-12 15:51:36', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=slide_introduction&#038;p=37', 0, 'slide_introduction', '', 0),
(38, 1, '2018-12-12 15:51:33', '2018-12-12 15:51:33', '', 'khu b', '', 'inherit', 'open', 'closed', '', 'khu-b', '', '', '2018-12-12 15:51:33', '2018-12-12 15:51:33', '', 37, 'http://localhost/2018/freelancer/BE/healthcare/wp-content/uploads/2018/12/khu-b.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2018-12-12 15:52:08', '2018-12-12 15:52:08', '', 'Khu C', '', 'publish', 'closed', 'closed', '', 'khu-c', '', '', '2018-12-12 15:52:08', '2018-12-12 15:52:08', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=slide_introduction&#038;p=39', 0, 'slide_introduction', '', 0),
(40, 1, '2018-12-12 15:52:00', '2018-12-12 15:52:00', '', 'khu c', '', 'inherit', 'open', 'closed', '', 'khu-c', '', '', '2018-12-12 15:52:00', '2018-12-12 15:52:00', '', 39, 'http://localhost/2018/freelancer/BE/healthcare/wp-content/uploads/2018/12/khu-c.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2018-12-12 15:57:59', '2018-12-12 15:57:59', 'Quản lý quy trình khám chữa bệnh, thống kê báo cáo tình hình khám chữa bệnh dễ dàng.', 'Quản lý khám chữa bệnh', '', 'publish', 'closed', 'closed', '', 'quan-ly-kham-chua-benh', '', '', '2018-12-12 15:58:30', '2018-12-12 15:58:30', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=dich_vu&#038;p=41', 0, 'dich_vu', '', 0),
(42, 1, '2018-12-12 15:57:26', '2018-12-12 15:57:26', '', 'DSC_1540', '', 'inherit', 'open', 'closed', '', 'dsc_1540', '', '', '2018-12-12 15:57:26', '2018-12-12 15:57:26', '', 41, 'http://localhost/2018/freelancer/BE/healthcare/wp-content/uploads/2018/12/DSC_1540.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2018-12-12 15:59:06', '2018-12-12 15:59:06', 'Quản lý quy trình khám chữa bệnh, thống kê báo cáo tình hình khám chữa bệnh dễ dàng.', 'Quản lý khám chữa bệnh2', '', 'publish', 'closed', 'closed', '', 'quan-ly-kham-chua-benh-2', '', '', '2018-12-12 15:59:28', '2018-12-12 15:59:28', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=dich_vu&#038;p=43', 0, 'dich_vu', '', 0),
(44, 1, '2018-12-13 13:15:34', '2018-12-13 13:15:34', '', 'Phê duyệt chương trình đào tạo liên tục cho cơ sở đào tạo Bệnh viện Phạm Ngọc Thạch', '', 'publish', 'closed', 'closed', '', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach', '', '', '2018-12-13 13:15:34', '2018-12-13 13:15:34', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=hoat_dong&#038;p=44', 0, 'hoat_dong', '', 0),
(45, 1, '2018-12-13 13:15:29', '2018-12-13 13:15:29', '', 'no-image', '', 'inherit', 'open', 'closed', '', 'no-image', '', '', '2018-12-13 13:15:29', '2018-12-13 13:15:29', '', 44, 'http://localhost/2018/freelancer/BE/healthcare/wp-content/uploads/2018/12/no-image.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2018-12-13 13:15:42', '2018-12-13 13:15:42', '', 'Phê duyệt chương trình đào tạo liên tục cho cơ sở đào tạo Bệnh viện Phạm Ngọc Thạch', '', 'publish', 'closed', 'closed', '', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-2', '', '', '2018-12-13 13:15:42', '2018-12-13 13:15:42', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=hoat_dong&#038;p=46', 0, 'hoat_dong', '', 0),
(47, 1, '2018-12-13 13:15:50', '2018-12-13 13:15:50', '', 'Phê duyệt chương trình đào tạo liên tục cho cơ sở đào tạo Bệnh viện Phạm Ngọc Thạch', '', 'publish', 'closed', 'closed', '', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-3', '', '', '2018-12-13 13:15:50', '2018-12-13 13:15:50', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=hoat_dong&#038;p=47', 0, 'hoat_dong', '', 0),
(48, 1, '2018-12-13 13:16:32', '2018-12-13 13:16:32', '<iframe src="https://drive.google.com/file/d/14yl8tYLOGyHWYtxX3MRAUzKnMq2gmWYN/preview" width="100%" height="480"></iframe>', 'Danh mục dịch vụ kỹ thuật thực hiện tại Bệnh viện Phạm Ngọc Thạch', '', 'publish', 'closed', 'closed', '', 'danh-muc-dich-vu-ky-thuat-thuc-hien-tai-benh-vien-pham-ngoc-thach', '', '', '2018-12-14 08:00:25', '2018-12-14 08:00:25', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=hoat_dong&#038;p=48', 0, 'hoat_dong', '', 0),
(49, 1, '2018-12-13 13:16:28', '2018-12-13 13:16:28', '', 'doctor', '', 'inherit', 'open', 'closed', '', 'doctor', '', '', '2018-12-13 13:16:28', '2018-12-13 13:16:28', '', 48, 'http://localhost/2018/freelancer/BE/healthcare/wp-content/uploads/2018/12/doctor.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2018-12-13 13:37:02', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-13 13:37:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=dich_vu&p=50', 0, 'dich_vu', '', 0),
(51, 1, '2018-12-13 13:39:15', '2018-12-13 13:39:15', 'Quản lý quy trình khám chữa bệnh, thống kê báo cáo tình hình khám chữa bệnh dễ dàng.', 'Quản lý khám chữa bệnh3', '', 'publish', 'closed', 'closed', '', 'quan-ly-kham-chua-benh3', '', '', '2018-12-13 13:39:15', '2018-12-13 13:39:15', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=dich_vu&#038;p=51', 0, 'dich_vu', '', 0),
(52, 1, '2018-12-13 13:39:28', '2018-12-13 13:39:28', 'Quản lý quy trình khám chữa bệnh, thống kê báo cáo tình hình khám chữa bệnh dễ dàng.', 'Quản lý khám chữa bệnh4', '', 'publish', 'closed', 'closed', '', 'quan-ly-kham-chua-benh4', '', '', '2018-12-13 13:39:28', '2018-12-13 13:39:28', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=dich_vu&#038;p=52', 0, 'dich_vu', '', 0),
(53, 1, '2018-12-13 13:39:39', '2018-12-13 13:39:39', 'Quản lý quy trình khám chữa bệnh, thống kê báo cáo tình hình khám chữa bệnh dễ dàng.', 'Quản lý khám chữa bệnh5', '', 'publish', 'closed', 'closed', '', 'quan-ly-kham-chua-benh5', '', '', '2018-12-13 13:39:39', '2018-12-13 13:39:39', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=dich_vu&#038;p=53', 0, 'dich_vu', '', 0),
(54, 1, '2018-12-13 13:39:56', '2018-12-13 13:39:56', 'Quản lý quy trình khám chữa bệnh, thống kê báo cáo tình hình khám chữa bệnh dễ dàng.', 'Quản lý khám chữa bệnh6', '', 'publish', 'closed', 'closed', '', 'quan-ly-kham-chua-benh6', '', '', '2018-12-13 13:39:56', '2018-12-13 13:39:56', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=dich_vu&#038;p=54', 0, 'dich_vu', '', 0),
(55, 1, '2018-12-14 03:40:26', '2018-12-14 03:40:26', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2018-12-14 04:16:29', '2018-12-14 04:16:29', '', 0, 'http://localhost:8000/Healthcare/source/?p=55', 1, 'nav_menu_item', '', 0),
(56, 1, '2018-12-14 03:40:26', '2018-12-14 03:40:26', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2018-12-14 04:16:29', '2018-12-14 04:16:29', '', 0, 'http://localhost:8000/Healthcare/source/?p=56', 2, 'nav_menu_item', '', 0),
(57, 1, '2018-12-14 03:40:26', '2018-12-14 03:40:26', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2018-12-14 04:16:29', '2018-12-14 04:16:29', '', 6, 'http://localhost:8000/Healthcare/source/?p=57', 3, 'nav_menu_item', '', 0),
(58, 1, '2018-12-14 03:40:27', '2018-12-14 03:40:27', ' ', '', '', 'publish', 'closed', 'closed', '', '58', '', '', '2018-12-14 04:16:29', '2018-12-14 04:16:29', '', 6, 'http://localhost:8000/Healthcare/source/?p=58', 4, 'nav_menu_item', '', 0),
(59, 1, '2018-12-14 03:40:27', '2018-12-14 03:40:27', ' ', '', '', 'publish', 'closed', 'closed', '', '59', '', '', '2018-12-14 04:16:29', '2018-12-14 04:16:29', '', 6, 'http://localhost:8000/Healthcare/source/?p=59', 5, 'nav_menu_item', '', 0),
(60, 1, '2018-12-14 03:38:25', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-12-14 03:38:25', '0000-00-00 00:00:00', '', 0, 'http://localhost:8000/Healthcare/source/?p=60', 1, 'nav_menu_item', '', 0),
(64, 1, '2018-12-14 03:55:06', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-12-14 03:55:06', '0000-00-00 00:00:00', '', 0, 'http://localhost:8000/Healthcare/source/?page_id=64', 0, 'page', '', 0),
(65, 1, '2018-12-14 03:55:13', '2018-12-14 03:55:13', 'Đây là một trang mẫu. Nó khác với một bài blog bởi vì nó sẽ là một trang tĩnh và sẽ được thêm vào thanh menu của trang web của bạn (trong hầu hết theme). Mọi người thường bắt đầu bằng một trang Giới thiệu để giới thiệu bản thân đến người dùng tiềm năng. Bạn có thể viết như sau:\n\n<blockquote>Xin chào! Tôi là người giao thư bằng xe đạp vào ban ngày, một diễn viên đầy tham vọng vào ban đêm, và đây là trang web của tôi. Tôi sống ở Los Angeles, có một chú cho tuyệt vời tên là Jack, và tôi thích uống cocktail.</blockquote>\n\n...hay như thế này:\n\n<blockquote>Công ty XYZ Doohickey được thành lập vào năm 1971, và đã cung cấp đồ dùng chất lượng cho công chúng kể từ đó. Nằm ở thành phố Gotham, XYZ tạo việc làm cho hơn 2.000 người và làm tất cả những điều tuyệt vời cho cộng đồng Gotham.</blockquote>\n\nLà người dùng WordPress mới, bạn nên truy cập <a href="http://localhost:8000/Healthcare/source/wp-admin/">trang quản trị</a> để xóa trang này và tạo các trang mới cho nội dung của bạn. Chúc vui vẻ!', 'Trang Mẫu', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-12-14 03:55:13', '2018-12-14 03:55:13', '', 2, 'http://localhost:8000/Healthcare/source/2-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-12-14 03:55:33', '2018-12-14 03:55:33', '', 'Dịch vụ y tế', '', 'publish', 'closed', 'closed', '', 'dich-vu-y-te', '', '', '2018-12-14 03:55:33', '2018-12-14 03:55:33', '', 0, 'http://localhost:8000/Healthcare/source/?page_id=66', 0, 'page', '', 0),
(67, 1, '2018-12-14 03:55:33', '2018-12-14 03:55:33', '', 'Dịch vụ y tế', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-12-14 03:55:33', '2018-12-14 03:55:33', '', 66, 'http://localhost:8000/Healthcare/source/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2018-12-14 03:55:52', '2018-12-14 03:55:52', '', 'Khám định kỳ', '', 'publish', 'closed', 'closed', '', 'kham-dinh-ky', '', '', '2018-12-14 03:55:52', '2018-12-14 03:55:52', '', 66, 'http://localhost:8000/Healthcare/source/?page_id=68', 0, 'page', '', 0),
(69, 1, '2018-12-14 03:55:52', '2018-12-14 03:55:52', '', 'Khám định kỳ', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2018-12-14 03:55:52', '2018-12-14 03:55:52', '', 68, 'http://localhost:8000/Healthcare/source/68-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2018-12-14 03:56:07', '2018-12-14 03:56:07', '', 'Khám tuyển dụng', '', 'publish', 'closed', 'closed', '', 'kham-tuyen-dung', '', '', '2018-12-14 03:56:07', '2018-12-14 03:56:07', '', 66, 'http://localhost:8000/Healthcare/source/?page_id=70', 0, 'page', '', 0),
(71, 1, '2018-12-14 03:56:07', '2018-12-14 03:56:07', '', 'Khám tuyển dụng', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2018-12-14 03:56:07', '2018-12-14 03:56:07', '', 70, 'http://localhost:8000/Healthcare/source/70-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2018-12-14 03:57:05', '2018-12-14 03:57:05', '', 'Tiêm chuẩn', '', 'publish', 'closed', 'closed', '', 'tiem-chuan', '', '', '2018-12-14 03:57:05', '2018-12-14 03:57:05', '', 66, 'http://localhost:8000/Healthcare/source/?page_id=72', 0, 'page', '', 0),
(73, 1, '2018-12-14 03:57:05', '2018-12-14 03:57:05', '', 'Tiêm chuẩn', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2018-12-14 03:57:05', '2018-12-14 03:57:05', '', 72, 'http://localhost:8000/Healthcare/source/72-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2018-12-14 03:57:19', '2018-12-14 03:57:19', '', 'Thẻ thành viên', '', 'publish', 'closed', 'closed', '', 'the-thanh-vien', '', '', '2018-12-14 03:57:19', '2018-12-14 03:57:19', '', 66, 'http://localhost:8000/Healthcare/source/?page_id=74', 0, 'page', '', 0),
(75, 1, '2018-12-14 03:57:19', '2018-12-14 03:57:19', '', 'Thẻ thành viên', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2018-12-14 03:57:19', '2018-12-14 03:57:19', '', 74, 'http://localhost:8000/Healthcare/source/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-12-14 03:57:31', '2018-12-14 03:57:31', '', 'Gói khám toàn diện', '', 'publish', 'closed', 'closed', '', 'goi-kham-toan-dien', '', '', '2018-12-14 03:57:31', '2018-12-14 03:57:31', '', 66, 'http://localhost:8000/Healthcare/source/?page_id=76', 0, 'page', '', 0),
(77, 1, '2018-12-14 03:57:31', '2018-12-14 03:57:31', '', 'Gói khám toàn diện', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2018-12-14 03:57:31', '2018-12-14 03:57:31', '', 76, 'http://localhost:8000/Healthcare/source/76-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2018-12-14 03:57:44', '2018-12-14 03:57:44', '', 'Dịch vụ bảo hiểm', '', 'publish', 'closed', 'closed', '', 'dich-vu-bao-hiem', '', '', '2018-12-14 03:57:44', '2018-12-14 03:57:44', '', 66, 'http://localhost:8000/Healthcare/source/?page_id=78', 0, 'page', '', 0),
(79, 1, '2018-12-14 03:57:44', '2018-12-14 03:57:44', '', 'Dịch vụ bảo hiểm', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2018-12-14 03:57:44', '2018-12-14 03:57:44', '', 78, 'http://localhost:8000/Healthcare/source/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-12-14 03:57:55', '2018-12-14 03:57:55', '', 'Giá dịch vụ', '', 'publish', 'closed', 'closed', '', 'gia-dich-vu', '', '', '2018-12-14 03:57:55', '2018-12-14 03:57:55', '', 66, 'http://localhost:8000/Healthcare/source/?page_id=80', 0, 'page', '', 0),
(81, 1, '2018-12-14 03:57:55', '2018-12-14 03:57:55', '', 'Giá dịch vụ', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-12-14 03:57:55', '2018-12-14 03:57:55', '', 80, 'http://localhost:8000/Healthcare/source/80-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-12-14 03:58:07', '2018-12-14 03:58:07', '', 'Xét nghiệm lấy máu tại nhà', '', 'publish', 'closed', 'closed', '', 'xet-nghiem-lay-mau-tai-nha', '', '', '2018-12-14 03:58:07', '2018-12-14 03:58:07', '', 66, 'http://localhost:8000/Healthcare/source/?page_id=82', 0, 'page', '', 0),
(83, 1, '2018-12-14 03:58:07', '2018-12-14 03:58:07', '', 'Xét nghiệm lấy máu tại nhà', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2018-12-14 03:58:07', '2018-12-14 03:58:07', '', 82, 'http://localhost:8000/Healthcare/source/82-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-12-14 03:58:17', '2018-12-14 03:58:17', '', 'Các chuyên khoa', '', 'publish', 'closed', 'closed', '', 'cac-chuyen-khoa', '', '', '2018-12-14 03:58:17', '2018-12-14 03:58:17', '', 0, 'http://localhost:8000/Healthcare/source/?page_id=84', 0, 'page', '', 0),
(85, 1, '2018-12-14 03:58:17', '2018-12-14 03:58:17', '', 'Các chuyên khoa', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2018-12-14 03:58:17', '2018-12-14 03:58:17', '', 84, 'http://localhost:8000/Healthcare/source/84-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2018-12-14 03:59:29', '2018-12-14 03:59:29', '', 'Chuyên khoa tổng quát', '', 'publish', 'closed', 'closed', '', 'chuyen-khoa-tong-quat', '', '', '2018-12-14 03:59:29', '2018-12-14 03:59:29', '', 84, 'http://localhost:8000/Healthcare/source/?page_id=86', 0, 'page', '', 0),
(87, 1, '2018-12-14 03:59:29', '2018-12-14 03:59:29', '', 'Chuyên khoa tổng quát', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-12-14 03:59:29', '2018-12-14 03:59:29', '', 86, 'http://localhost:8000/Healthcare/source/86-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2018-12-14 03:59:47', '2018-12-14 03:59:47', '', 'Bác sĩ - Lịch làm việc', '', 'publish', 'closed', 'closed', '', 'bac-si-lich-lam-viec', '', '', '2018-12-14 03:59:47', '2018-12-14 03:59:47', '', 0, 'http://localhost:8000/Healthcare/source/?page_id=88', 0, 'page', '', 0),
(89, 1, '2018-12-14 03:59:47', '2018-12-14 03:59:47', '', 'Bác sĩ - Lịch làm việc', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2018-12-14 03:59:47', '2018-12-14 03:59:47', '', 88, 'http://localhost:8000/Healthcare/source/88-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2018-12-14 04:00:00', '2018-12-14 04:00:00', '', 'Tìm bác sĩ', '', 'publish', 'closed', 'closed', '', 'tim-bac-si', '', '', '2018-12-14 04:00:00', '2018-12-14 04:00:00', '', 88, 'http://localhost:8000/Healthcare/source/?page_id=90', 0, 'page', '', 0),
(91, 1, '2018-12-14 04:00:00', '2018-12-14 04:00:00', '', 'Tìm bác sĩ', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2018-12-14 04:00:00', '2018-12-14 04:00:00', '', 90, 'http://localhost:8000/Healthcare/source/90-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2018-12-14 04:00:10', '2018-12-14 04:00:10', '', 'Lịch làm việc', '', 'publish', 'closed', 'closed', '', 'lich-lam-viec', '', '', '2018-12-14 04:00:10', '2018-12-14 04:00:10', '', 88, 'http://localhost:8000/Healthcare/source/?page_id=92', 0, 'page', '', 0),
(93, 1, '2018-12-14 04:00:10', '2018-12-14 04:00:10', '', 'Lịch làm việc', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2018-12-14 04:00:10', '2018-12-14 04:00:10', '', 92, 'http://localhost:8000/Healthcare/source/92-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2018-12-14 04:00:21', '2018-12-14 04:00:21', '', 'Đặt hẹn', '', 'publish', 'closed', 'closed', '', 'dat-hen', '', '', '2018-12-14 04:00:21', '2018-12-14 04:00:21', '', 88, 'http://localhost:8000/Healthcare/source/?page_id=94', 0, 'page', '', 0),
(95, 1, '2018-12-14 04:00:21', '2018-12-14 04:00:21', '', 'Đặt hẹn', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2018-12-14 04:00:21', '2018-12-14 04:00:21', '', 94, 'http://localhost:8000/Healthcare/source/94-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2018-12-14 04:00:37', '2018-12-14 04:00:37', '', 'Chuyên khoa tổng quát', '', 'publish', 'closed', 'closed', '', 'chuyen-khoa-tong-quat', '', '', '2018-12-14 04:00:37', '2018-12-14 04:00:37', '', 88, 'http://localhost:8000/Healthcare/source/?page_id=96', 0, 'page', '', 0),
(97, 1, '2018-12-14 04:00:37', '2018-12-14 04:00:37', '', 'Chuyên khoa tổng quát', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2018-12-14 04:00:37', '2018-12-14 04:00:37', '', 96, 'http://localhost:8000/Healthcare/source/96-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2018-12-14 04:00:59', '2018-12-14 04:00:59', '', 'Tư vấn', '', 'publish', 'closed', 'closed', '', 'tu-van', '', '', '2018-12-14 04:00:59', '2018-12-14 04:00:59', '', 0, 'http://localhost:8000/Healthcare/source/?page_id=98', 0, 'page', '', 0),
(99, 1, '2018-12-14 04:00:59', '2018-12-14 04:00:59', '', 'Tư vấn', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2018-12-14 04:00:59', '2018-12-14 04:00:59', '', 98, 'http://localhost:8000/Healthcare/source/98-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2018-12-14 04:01:15', '2018-12-14 04:01:15', '', 'Đối tác', '', 'publish', 'closed', 'closed', '', 'doi-tac', '', '', '2018-12-14 04:01:15', '2018-12-14 04:01:15', '', 0, 'http://localhost:8000/Healthcare/source/?page_id=100', 0, 'page', '', 0),
(101, 1, '2018-12-14 04:01:15', '2018-12-14 04:01:15', '', 'Đối tác', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2018-12-14 04:01:15', '2018-12-14 04:01:15', '', 100, 'http://localhost:8000/Healthcare/source/100-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2018-12-14 04:01:29', '2018-12-14 04:01:29', '', 'Thư viện y học', '', 'publish', 'closed', 'closed', '', 'thu-vien-y-hoc', '', '', '2018-12-14 04:01:29', '2018-12-14 04:01:29', '', 0, 'http://localhost:8000/Healthcare/source/?page_id=102', 0, 'page', '', 0),
(103, 1, '2018-12-14 04:01:29', '2018-12-14 04:01:29', '', 'Thư viện y học', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2018-12-14 04:01:29', '2018-12-14 04:01:29', '', 102, 'http://localhost:8000/Healthcare/source/102-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2018-12-14 04:02:17', '2018-12-14 04:02:17', '', 'Kiến thức y học', '', 'publish', 'closed', 'closed', '', 'kien-thuc-y-hoc', '', '', '2018-12-14 04:02:17', '2018-12-14 04:02:17', '', 102, 'http://localhost:8000/Healthcare/source/?page_id=104', 0, 'page', '', 0),
(105, 1, '2018-12-14 04:02:17', '2018-12-14 04:02:17', '', 'Kiến thức y học', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2018-12-14 04:02:17', '2018-12-14 04:02:17', '', 104, 'http://localhost:8000/Healthcare/source/104-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2018-12-14 04:02:33', '2018-12-14 04:02:33', '', 'Tin tức y học', '', 'publish', 'closed', 'closed', '', 'tin-tuc-y-hoc', '', '', '2018-12-14 04:02:33', '2018-12-14 04:02:33', '', 102, 'http://localhost:8000/Healthcare/source/?page_id=106', 0, 'page', '', 0),
(107, 1, '2018-12-14 04:02:33', '2018-12-14 04:02:33', '', 'Tin tức y học', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2018-12-14 04:02:33', '2018-12-14 04:02:33', '', 106, 'http://localhost:8000/Healthcare/source/106-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2018-12-14 04:02:49', '2018-12-14 04:02:49', '', 'Tra cứu ICD', '', 'publish', 'closed', 'closed', '', 'tra-cuu-icd', '', '', '2018-12-14 04:02:49', '2018-12-14 04:02:49', '', 102, 'http://localhost:8000/Healthcare/source/?page_id=108', 0, 'page', '', 0),
(109, 1, '2018-12-14 04:02:49', '2018-12-14 04:02:49', '', 'Tra cứu ICD', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2018-12-14 04:02:49', '2018-12-14 04:02:49', '', 108, 'http://localhost:8000/Healthcare/source/108-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2018-12-14 04:03:01', '2018-12-14 04:03:01', '', 'Tra cứu phác đồ BYT', '', 'publish', 'closed', 'closed', '', 'tra-cuu-phac-do-byt', '', '', '2018-12-14 04:03:01', '2018-12-14 04:03:01', '', 102, 'http://localhost:8000/Healthcare/source/?page_id=110', 0, 'page', '', 0),
(111, 1, '2018-12-14 04:03:01', '2018-12-14 04:03:01', '', 'Tra cứu phác đồ BYT', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2018-12-14 04:03:01', '2018-12-14 04:03:01', '', 110, 'http://localhost:8000/Healthcare/source/110-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2018-12-14 04:03:16', '2018-12-14 04:03:16', '', 'Tra cứu phác đồ BYT', '', 'trash', 'closed', 'closed', '', 'tra-cuu-phac-do-byt-2__trashed', '', '', '2018-12-14 04:03:40', '2018-12-14 04:03:40', '', 102, 'http://localhost:8000/Healthcare/source/?page_id=112', 0, 'page', '', 0),
(113, 1, '2018-12-14 04:03:16', '2018-12-14 04:03:16', '', 'Tra cứu phác đồ BYT', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2018-12-14 04:03:16', '2018-12-14 04:03:16', '', 112, 'http://localhost:8000/Healthcare/source/112-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2018-12-14 04:04:08', '2018-12-14 04:04:08', '', 'Tra cứu ATC', '', 'publish', 'closed', 'closed', '', 'tra-cuu-atc', '', '', '2018-12-14 04:04:08', '2018-12-14 04:04:08', '', 102, 'http://localhost:8000/Healthcare/source/?page_id=114', 0, 'page', '', 0),
(115, 1, '2018-12-14 04:04:08', '2018-12-14 04:04:08', '', 'Tra cứu ATC', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2018-12-14 04:04:08', '2018-12-14 04:04:08', '', 114, 'http://localhost:8000/Healthcare/source/114-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2018-12-14 04:04:18', '2018-12-14 04:04:18', '', 'Tra cứu Thuốc', '', 'publish', 'closed', 'closed', '', 'tra-cuu-thuoc', '', '', '2018-12-14 04:04:18', '2018-12-14 04:04:18', '', 102, 'http://localhost:8000/Healthcare/source/?page_id=116', 0, 'page', '', 0),
(117, 1, '2018-12-14 04:04:18', '2018-12-14 04:04:18', '', 'Tra cứu Thuốc', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2018-12-14 04:04:18', '2018-12-14 04:04:18', '', 116, 'http://localhost:8000/Healthcare/source/116-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2018-12-14 04:04:31', '2018-12-14 04:04:31', '', 'Tính chỉ số cơ thể BMI', '', 'publish', 'closed', 'closed', '', 'tinh-chi-so-co-the-bmi', '', '', '2018-12-14 04:04:31', '2018-12-14 04:04:31', '', 102, 'http://localhost:8000/Healthcare/source/?page_id=118', 0, 'page', '', 0),
(119, 1, '2018-12-14 04:04:31', '2018-12-14 04:04:31', '', 'Tính chỉ số cơ thể BMI', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2018-12-14 04:04:31', '2018-12-14 04:04:31', '', 118, 'http://localhost:8000/Healthcare/source/118-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2018-12-14 04:04:43', '2018-12-14 04:04:43', '', 'DM các cơ sở y tế nhận KCB BHYT ban đầu tại PK', '', 'publish', 'closed', 'closed', '', 'dm-cac-co-so-y-te-nhan-kcb-bhyt-ban-dau-tai-pk', '', '', '2018-12-14 04:04:43', '2018-12-14 04:04:43', '', 102, 'http://localhost:8000/Healthcare/source/?page_id=120', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(121, 1, '2018-12-14 04:04:43', '2018-12-14 04:04:43', '', 'DM các cơ sở y tế nhận KCB BHYT ban đầu tại PK', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2018-12-14 04:04:43', '2018-12-14 04:04:43', '', 120, 'http://localhost:8000/Healthcare/source/120-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2018-12-14 04:04:53', '2018-12-14 04:04:53', '', 'Tính dinh dưỡng', '', 'publish', 'closed', 'closed', '', 'tinh-dinh-duong', '', '', '2018-12-14 04:04:53', '2018-12-14 04:04:53', '', 102, 'http://localhost:8000/Healthcare/source/?page_id=122', 0, 'page', '', 0),
(123, 1, '2018-12-14 04:04:53', '2018-12-14 04:04:53', '', 'Tính dinh dưỡng', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2018-12-14 04:04:53', '2018-12-14 04:04:53', '', 122, 'http://localhost:8000/Healthcare/source/122-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2018-12-14 04:05:05', '2018-12-14 04:05:05', '', 'Văn bản - biểu mẫu sở y tế', '', 'publish', 'closed', 'closed', '', 'van-ban-bieu-mau-so-y-te', '', '', '2018-12-14 04:05:05', '2018-12-14 04:05:05', '', 102, 'http://localhost:8000/Healthcare/source/?page_id=124', 0, 'page', '', 0),
(125, 1, '2018-12-14 04:05:05', '2018-12-14 04:05:05', '', 'Văn bản - biểu mẫu sở y tế', '', 'inherit', 'closed', 'closed', '', '124-revision-v1', '', '', '2018-12-14 04:05:05', '2018-12-14 04:05:05', '', 124, 'http://localhost:8000/Healthcare/source/124-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2018-12-14 04:05:13', '2018-12-14 04:05:13', '', 'Liên hệ - góp ý', '', 'publish', 'closed', 'closed', '', 'lien-he-gop-y', '', '', '2018-12-14 04:05:13', '2018-12-14 04:05:13', '', 0, 'http://localhost:8000/Healthcare/source/?page_id=126', 0, 'page', '', 0),
(127, 1, '2018-12-14 04:05:13', '2018-12-14 04:05:13', '', 'Liên hệ - góp ý', '', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2018-12-14 04:05:13', '2018-12-14 04:05:13', '', 126, 'http://localhost:8000/Healthcare/source/126-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2018-12-14 04:08:24', '2018-12-14 04:08:24', ' ', '', '', 'publish', 'closed', 'closed', '', '128', '', '', '2018-12-14 04:16:29', '2018-12-14 04:16:29', '', 0, 'http://localhost:8000/Healthcare/source/?p=128', 6, 'nav_menu_item', '', 0),
(129, 1, '2018-12-14 04:08:27', '2018-12-14 04:08:27', ' ', '', '', 'publish', 'closed', 'closed', '', '129', '', '', '2018-12-14 04:16:29', '2018-12-14 04:16:29', '', 66, 'http://localhost:8000/Healthcare/source/?p=129', 12, 'nav_menu_item', '', 0),
(130, 1, '2018-12-14 04:08:27', '2018-12-14 04:08:27', ' ', '', '', 'publish', 'closed', 'closed', '', '130', '', '', '2018-12-14 04:16:29', '2018-12-14 04:16:29', '', 66, 'http://localhost:8000/Healthcare/source/?p=130', 13, 'nav_menu_item', '', 0),
(131, 1, '2018-12-14 04:08:26', '2018-12-14 04:08:26', ' ', '', '', 'publish', 'closed', 'closed', '', '131', '', '', '2018-12-14 04:16:29', '2018-12-14 04:16:29', '', 66, 'http://localhost:8000/Healthcare/source/?p=131', 11, 'nav_menu_item', '', 0),
(132, 1, '2018-12-14 04:08:25', '2018-12-14 04:08:25', ' ', '', '', 'publish', 'closed', 'closed', '', '132', '', '', '2018-12-14 04:16:29', '2018-12-14 04:16:29', '', 66, 'http://localhost:8000/Healthcare/source/?p=132', 7, 'nav_menu_item', '', 0),
(133, 1, '2018-12-14 04:08:26', '2018-12-14 04:08:26', ' ', '', '', 'publish', 'closed', 'closed', '', '133', '', '', '2018-12-14 04:16:29', '2018-12-14 04:16:29', '', 66, 'http://localhost:8000/Healthcare/source/?p=133', 8, 'nav_menu_item', '', 0),
(134, 1, '2018-12-14 04:08:26', '2018-12-14 04:08:26', ' ', '', '', 'publish', 'closed', 'closed', '', '134', '', '', '2018-12-14 04:16:29', '2018-12-14 04:16:29', '', 66, 'http://localhost:8000/Healthcare/source/?p=134', 10, 'nav_menu_item', '', 0),
(135, 1, '2018-12-14 04:08:26', '2018-12-14 04:08:26', ' ', '', '', 'publish', 'closed', 'closed', '', '135', '', '', '2018-12-14 04:16:29', '2018-12-14 04:16:29', '', 66, 'http://localhost:8000/Healthcare/source/?p=135', 9, 'nav_menu_item', '', 0),
(136, 1, '2018-12-14 04:08:27', '2018-12-14 04:08:27', ' ', '', '', 'publish', 'closed', 'closed', '', '136', '', '', '2018-12-14 04:16:29', '2018-12-14 04:16:29', '', 66, 'http://localhost:8000/Healthcare/source/?p=136', 14, 'nav_menu_item', '', 0),
(137, 1, '2018-12-14 04:10:31', '2018-12-14 04:10:31', ' ', '', '', 'publish', 'closed', 'closed', '', '137', '', '', '2018-12-14 04:16:29', '2018-12-14 04:16:29', '', 0, 'http://localhost:8000/Healthcare/source/?p=137', 15, 'nav_menu_item', '', 0),
(138, 1, '2018-12-14 04:10:31', '2018-12-14 04:10:31', ' ', '', '', 'publish', 'closed', 'closed', '', '138', '', '', '2018-12-14 04:16:29', '2018-12-14 04:16:29', '', 84, 'http://localhost:8000/Healthcare/source/?p=138', 16, 'nav_menu_item', '', 0),
(139, 1, '2018-12-14 04:10:31', '2018-12-14 04:10:31', '', 'Bác sĩ – Lịch làm việc', '', 'publish', 'closed', 'closed', '', 'bac-si-lich-lam-viec', '', '', '2018-12-14 04:16:29', '2018-12-14 04:16:29', '', 0, 'http://localhost:8000/Healthcare/source/?p=139', 17, 'nav_menu_item', '', 0),
(140, 1, '2018-12-14 04:10:33', '2018-12-14 04:10:33', ' ', '', '', 'publish', 'closed', 'closed', '', '140', '', '', '2018-12-14 04:16:30', '2018-12-14 04:16:30', '', 88, 'http://localhost:8000/Healthcare/source/?p=140', 21, 'nav_menu_item', '', 0),
(141, 1, '2018-12-14 04:10:33', '2018-12-14 04:10:33', ' ', '', '', 'publish', 'closed', 'closed', '', '141', '', '', '2018-12-14 04:16:30', '2018-12-14 04:16:30', '', 88, 'http://localhost:8000/Healthcare/source/?p=141', 20, 'nav_menu_item', '', 0),
(142, 1, '2018-12-14 04:10:32', '2018-12-14 04:10:32', ' ', '', '', 'publish', 'closed', 'closed', '', '142', '', '', '2018-12-14 04:16:29', '2018-12-14 04:16:29', '', 88, 'http://localhost:8000/Healthcare/source/?p=142', 19, 'nav_menu_item', '', 0),
(143, 1, '2018-12-14 04:10:31', '2018-12-14 04:10:31', ' ', '', '', 'publish', 'closed', 'closed', '', '143', '', '', '2018-12-14 04:16:29', '2018-12-14 04:16:29', '', 88, 'http://localhost:8000/Healthcare/source/?p=143', 18, 'nav_menu_item', '', 0),
(144, 1, '2018-12-14 04:14:28', '2018-12-14 04:14:28', ' ', '', '', 'publish', 'closed', 'closed', '', '144', '', '', '2018-12-14 04:16:30', '2018-12-14 04:16:30', '', 0, 'http://localhost:8000/Healthcare/source/?p=144', 23, 'nav_menu_item', '', 0),
(145, 1, '2018-12-14 04:14:28', '2018-12-14 04:14:28', ' ', '', '', 'publish', 'closed', 'closed', '', '145', '', '', '2018-12-14 04:16:30', '2018-12-14 04:16:30', '', 0, 'http://localhost:8000/Healthcare/source/?p=145', 24, 'nav_menu_item', '', 0),
(146, 1, '2018-12-14 04:14:31', '2018-12-14 04:14:31', ' ', '', '', 'publish', 'closed', 'closed', '', '146', '', '', '2018-12-14 04:16:30', '2018-12-14 04:16:30', '', 102, 'http://localhost:8000/Healthcare/source/?p=146', 32, 'nav_menu_item', '', 0),
(147, 1, '2018-12-14 04:14:29', '2018-12-14 04:14:29', ' ', '', '', 'publish', 'closed', 'closed', '', '147', '', '', '2018-12-14 04:16:30', '2018-12-14 04:16:30', '', 102, 'http://localhost:8000/Healthcare/source/?p=147', 25, 'nav_menu_item', '', 0),
(148, 1, '2018-12-14 04:14:29', '2018-12-14 04:14:29', ' ', '', '', 'publish', 'closed', 'closed', '', '148', '', '', '2018-12-14 04:16:30', '2018-12-14 04:16:30', '', 102, 'http://localhost:8000/Healthcare/source/?p=148', 26, 'nav_menu_item', '', 0),
(149, 1, '2018-12-14 04:14:30', '2018-12-14 04:14:30', ' ', '', '', 'publish', 'closed', 'closed', '', '149', '', '', '2018-12-14 04:16:30', '2018-12-14 04:16:30', '', 102, 'http://localhost:8000/Healthcare/source/?p=149', 31, 'nav_menu_item', '', 0),
(150, 1, '2018-12-14 04:14:31', '2018-12-14 04:14:31', ' ', '', '', 'publish', 'closed', 'closed', '', '150', '', '', '2018-12-14 04:16:31', '2018-12-14 04:16:31', '', 102, 'http://localhost:8000/Healthcare/source/?p=150', 33, 'nav_menu_item', '', 0),
(151, 1, '2018-12-14 04:14:30', '2018-12-14 04:14:30', ' ', '', '', 'publish', 'closed', 'closed', '', '151', '', '', '2018-12-14 04:16:30', '2018-12-14 04:16:30', '', 102, 'http://localhost:8000/Healthcare/source/?p=151', 29, 'nav_menu_item', '', 0),
(152, 1, '2018-12-14 04:14:29', '2018-12-14 04:14:29', ' ', '', '', 'publish', 'closed', 'closed', '', '152', '', '', '2018-12-14 04:16:30', '2018-12-14 04:16:30', '', 102, 'http://localhost:8000/Healthcare/source/?p=152', 27, 'nav_menu_item', '', 0),
(153, 1, '2018-12-14 04:14:30', '2018-12-14 04:14:30', ' ', '', '', 'publish', 'closed', 'closed', '', '153', '', '', '2018-12-14 04:16:30', '2018-12-14 04:16:30', '', 102, 'http://localhost:8000/Healthcare/source/?p=153', 28, 'nav_menu_item', '', 0),
(154, 1, '2018-12-14 04:14:30', '2018-12-14 04:14:30', ' ', '', '', 'publish', 'closed', 'closed', '', '154', '', '', '2018-12-14 04:16:30', '2018-12-14 04:16:30', '', 102, 'http://localhost:8000/Healthcare/source/?p=154', 30, 'nav_menu_item', '', 0),
(155, 1, '2018-12-14 04:14:31', '2018-12-14 04:14:31', '', 'Văn bản – biểu mẫu sở y tế', '', 'publish', 'closed', 'closed', '', 'van-ban-bieu-mau-so-y-te', '', '', '2018-12-14 04:16:31', '2018-12-14 04:16:31', '', 102, 'http://localhost:8000/Healthcare/source/?p=155', 34, 'nav_menu_item', '', 0),
(156, 1, '2018-12-14 04:14:27', '2018-12-14 04:14:27', ' ', '', '', 'publish', 'closed', 'closed', '', '156', '', '', '2018-12-14 04:16:30', '2018-12-14 04:16:30', '', 0, 'http://localhost:8000/Healthcare/source/?p=156', 22, 'nav_menu_item', '', 0),
(157, 1, '2018-12-14 04:16:31', '2018-12-14 04:16:31', '', 'Liên hệ – góp ý', '', 'publish', 'closed', 'closed', '', 'lien-he-gop-y', '', '', '2018-12-14 04:16:31', '2018-12-14 04:16:31', '', 0, 'http://localhost:8000/Healthcare/source/?p=157', 35, 'nav_menu_item', '', 0),
(158, 1, '2018-12-14 06:32:23', '2018-12-14 06:32:23', '<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-1.jpg" alt="" width="900" height="675" /><em>Khu điều trị trong ngày</em>\r\n\r\n<em><img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-2.jpg" alt="" width="900" height="675" />Phòng bệnh điều trị trong ngày</em>\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-3.jpg" alt="" width="900" height="675" /><em>Các dịch vụ tiện ích tại phòng bệnh</em>\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-4.jpg" alt="" width="900" height="675" /><em>Khu vực nhà vệ sinh bệnh nhân</em>', 'Giới thiệu phòng khám', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-12-14 06:32:23', '2018-12-14 06:32:23', '', 8, 'http://localhost:8000/Healthcare/source/8-revision-v1/', 0, 'revision', '', 0),
(159, 1, '2018-12-14 06:38:44', '2018-12-14 06:38:44', '<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-1.jpg" alt="" width="900" height="675" />\r\n<em>Khu điều trị trong ngày</em>\r\n\r\n<em><img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-2.jpg" alt="" width="900" height="675" />\r\nPhòng bệnh điều trị trong ngày</em>\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-3.jpg" alt="" width="900" height="675" />\r\n<em>Các dịch vụ tiện ích tại phòng bệnh</em>\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-4.jpg" alt="" width="900" height="675" />\r\n<em>Khu vực nhà vệ sinh bệnh nhân</em>', 'Giới thiệu phòng khám', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-12-14 06:38:44', '2018-12-14 06:38:44', '', 8, 'http://localhost:8000/Healthcare/source/8-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2018-12-14 06:39:53', '2018-12-14 06:39:53', 'Giải pháp phòng khám thông minh AliboboCIS gồm <span class="style1">10 phân hệ, 100 chức năng</span> được thiết kế để quản lý tổng thể phòng khám, tự động hóa phòng khám, góp phần nâng cao công suất và chất lượng khám chữa bệnh. Gián tiếp nâng cao thương hiệu phòng khám, thu hút người dân.\r\n\r\nGiải pháp gồm 8 nhóm sản phẩm như sau: <em>(1)Phần mềm quản lý phòng khám (2) Phần mềm quản lý khám sức khỏe (3) Phần mềm kết nối tự động máy xét nghiệm LIS (4) Phần mềm lưu trữ và truyền tải hình ảnh PACS (5) Hệ thống bệnh án điện tử toàn quốc (6) Hệ thống đặt lịch khám toàn quốc (7) Hội chẩn từ xa (8) Hệ thống theo dõi điều trị sau khám.</em>', 'Phòng khám thông minh', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-12-14 06:39:53', '2018-12-14 06:39:53', '', 10, 'http://localhost:8000/Healthcare/source/10-revision-v1/', 0, 'revision', '', 0),
(161, 1, '2018-12-14 06:40:33', '2018-12-14 06:40:33', 'Từ đầu tháng 8/2017 Bệnh viện quận 4 từng bước xây dựng mô hình phòng khám ngoại trú thông minh cho cả khu vực khám Bảo hiểm y tế và khu vực khám Bác sĩ gia đình. Trước đó mô hình phòng khám thông minh của Bệnh Viện Nhân Dân Gia Định đã đoạt giải 2 trong các giải thưởng về cải tiến chất lượng bệnh viện của Sở Y tế TPHCM năm 2016.\r\n\r\nSau hơn 2 tháng tích cực triển khai và đưa vào hoạt động mô hình phòng khám thông minh đã giúp cải tiến thời gian chờ khám của bệnh nhân, tránh được việc chen lấn tại khu vực tiếp nhận bệnh, khu vực thu phí, khu vực lãnh thuốc,  cũng như các bất cập khác trong việc chờ khám tại các buồng khám bệnh.\r\n\r\nHơn nữa việc công khai trên màn hình tất cả thông tin về  tên tuổi bệnh nhân, số thứ tự chờ khám, dự kiến thời gian sẽ được khám, số tiền bệnh nhân sẽ phải đóng, số thứ tự và tên tuổi đến lượt lãnh thuốc sẽ giúp cho phòng khám ngoại trú giữ được không gian yên tĩnh nhất, tránh tiếng loa gọi tên như lúc trước, giúp cho các bệnh nhân và bác sĩ thoải mái hơn, tập trung hơn vào việc thăm khám và hỏi han bệnh nhân.\r\n\r\n<img src="http://benhvienquan4.vn/uploads/news/2017_09/pkthongminh_1.jpg" alt="" />\r\n\r\nVới trên 1000 lượt khám mỗi ngày, Bệnh viện quận 4 hy vọng việc triển khai mô hình này sẽ mang lại sự tiện lợi nhất cho bệnh nhân đến khám và điều trị tại Bệnh Viện Quận 4. Trong thời gian tới  việc áp dụng mô hình này sẽ được nhân rộng  ra các phân hệ khám ngoại trú khác và cận lâm sàng để hy vọng phục vụ bà con ngày một tốt hơn.\r\n\r\n<img src="http://benhvienquan4.vn/uploads/news/2017_09/pkthongminh_2.jpg" alt="" />', 'Phòng khám thông minh', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-12-14 06:40:33', '2018-12-14 06:40:33', '', 10, 'http://localhost:8000/Healthcare/source/10-revision-v1/', 0, 'revision', '', 0),
(162, 1, '2018-12-14 06:41:26', '2018-12-14 06:41:26', '<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/1.jpg" alt="" width="863" height="649" />\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/2.jpg" alt="" width="862" height="649" />\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/3.jpg" alt="" width="858" height="649" />\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/4.jpg" alt="" width="861" height="648" />\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/5.jpg" alt="" width="864" height="647" />\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/6.jpg" alt="" width="864" height="650" />', 'Qui trình khám', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-12-14 06:41:26', '2018-12-14 06:41:26', '', 12, 'http://localhost:8000/Healthcare/source/12-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2018-12-14 06:49:13', '2018-12-14 06:49:13', '', 'dieu-tri-trong-ngay-1', '', 'inherit', 'open', 'closed', '', 'dieu-tri-trong-ngay-1', '', '', '2018-12-14 06:49:13', '2018-12-14 06:49:13', '', 8, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/dieu-tri-trong-ngay-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(164, 1, '2018-12-14 06:49:54', '2018-12-14 06:49:54', '', 'pkthongminh_1', '', 'inherit', 'open', 'closed', '', 'pkthongminh_1', '', '', '2018-12-14 06:49:54', '2018-12-14 06:49:54', '', 10, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/pkthongminh_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(165, 1, '2018-12-14 06:50:38', '2018-12-14 06:50:38', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2018-12-14 06:50:38', '2018-12-14 06:50:38', '', 12, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(166, 1, '2018-12-14 07:27:22', '2018-12-14 07:27:22', 'a:7:{s:8:"location";a:5:{i:0;a:1:{i:0;a:3:{s:5:"param";s:11:"page_parent";s:8:"operator";s:2:"==";s:5:"value";s:1:"6";}}i:1;a:1:{i:0;a:3:{s:5:"param";s:11:"page_parent";s:8:"operator";s:2:"==";s:5:"value";s:2:"66";}}i:2;a:1:{i:0;a:3:{s:5:"param";s:11:"page_parent";s:8:"operator";s:2:"==";s:5:"value";s:2:"84";}}i:3;a:1:{i:0;a:3:{s:5:"param";s:11:"page_parent";s:8:"operator";s:2:"==";s:5:"value";s:2:"88";}}i:4;a:1:{i:0;a:3:{s:5:"param";s:11:"page_parent";s:8:"operator";s:2:"==";s:5:"value";s:3:"102";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Mô tả ngắn', 'mo-ta-ngan', 'publish', 'closed', 'closed', '', 'group_5c135b0914750', '', '', '2018-12-14 07:48:34', '2018-12-14 07:48:34', '', 0, 'http://localhost:8000/Healthcare/source/?post_type=acf-field-group&#038;p=166', 0, 'acf-field-group', '', 0),
(167, 1, '2018-12-14 07:27:23', '2018-12-14 07:27:23', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:5:"delay";i:0;}', 'Nội dung mô tả', 'intro_description', 'publish', 'closed', 'closed', '', 'field_5c135b381f530', '', '', '2018-12-14 07:48:34', '2018-12-14 07:48:34', '', 166, 'http://localhost:8000/Healthcare/source/?post_type=acf-field&#038;p=167', 0, 'acf-field', '', 0),
(168, 1, '2018-12-14 07:27:53', '2018-12-14 07:27:53', '<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-1.jpg" alt="" width="900" height="675" />\r\n<em>Khu điều trị trong ngày</em>\r\n\r\n<em><img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-2.jpg" alt="" width="900" height="675" />\r\nPhòng bệnh điều trị trong ngày</em>\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-3.jpg" alt="" width="900" height="675" />\r\n<em>Các dịch vụ tiện ích tại phòng bệnh</em>\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-4.jpg" alt="" width="900" height="675" />\r\n<em>Khu vực nhà vệ sinh bệnh nhân</em>', 'Giới thiệu phòng khám', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-12-14 07:27:53', '2018-12-14 07:27:53', '', 8, 'http://localhost:8000/Healthcare/source/8-revision-v1/', 0, 'revision', '', 0),
(169, 1, '2018-12-14 07:28:11', '2018-12-14 07:28:11', 'Từ đầu tháng 8/2017 Bệnh viện quận 4 từng bước xây dựng mô hình phòng khám ngoại trú thông minh cho cả khu vực khám Bảo hiểm y tế và khu vực khám Bác sĩ gia đình. Trước đó mô hình phòng khám thông minh của Bệnh Viện Nhân Dân Gia Định đã đoạt giải 2 trong các giải thưởng về cải tiến chất lượng bệnh viện của Sở Y tế TPHCM năm 2016.\r\n\r\nSau hơn 2 tháng tích cực triển khai và đưa vào hoạt động mô hình phòng khám thông minh đã giúp cải tiến thời gian chờ khám của bệnh nhân, tránh được việc chen lấn tại khu vực tiếp nhận bệnh, khu vực thu phí, khu vực lãnh thuốc,  cũng như các bất cập khác trong việc chờ khám tại các buồng khám bệnh.\r\n\r\nHơn nữa việc công khai trên màn hình tất cả thông tin về  tên tuổi bệnh nhân, số thứ tự chờ khám, dự kiến thời gian sẽ được khám, số tiền bệnh nhân sẽ phải đóng, số thứ tự và tên tuổi đến lượt lãnh thuốc sẽ giúp cho phòng khám ngoại trú giữ được không gian yên tĩnh nhất, tránh tiếng loa gọi tên như lúc trước, giúp cho các bệnh nhân và bác sĩ thoải mái hơn, tập trung hơn vào việc thăm khám và hỏi han bệnh nhân.\r\n\r\n<img src="http://benhvienquan4.vn/uploads/news/2017_09/pkthongminh_1.jpg" alt="" />\r\n\r\nVới trên 1000 lượt khám mỗi ngày, Bệnh viện quận 4 hy vọng việc triển khai mô hình này sẽ mang lại sự tiện lợi nhất cho bệnh nhân đến khám và điều trị tại Bệnh Viện Quận 4. Trong thời gian tới  việc áp dụng mô hình này sẽ được nhân rộng  ra các phân hệ khám ngoại trú khác và cận lâm sàng để hy vọng phục vụ bà con ngày một tốt hơn.\r\n\r\n<img src="http://benhvienquan4.vn/uploads/news/2017_09/pkthongminh_2.jpg" alt="" />', 'Phòng khám thông minh', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-12-14 07:28:11', '2018-12-14 07:28:11', '', 10, 'http://localhost:8000/Healthcare/source/10-revision-v1/', 0, 'revision', '', 0),
(170, 1, '2018-12-14 07:31:50', '2018-12-14 07:31:50', '<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/1.jpg" alt="" width="863" height="649" />\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/2.jpg" alt="" width="862" height="649" />\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/3.jpg" alt="" width="858" height="649" />\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/4.jpg" alt="" width="861" height="648" />\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/5.jpg" alt="" width="864" height="647" />\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/6.jpg" alt="" width="864" height="650" />', 'Qui trình khám', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-12-14 07:31:50', '2018-12-14 07:31:50', '', 12, 'http://localhost:8000/Healthcare/source/12-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2018-12-14 07:41:44', '2018-12-14 07:41:44', '', '[:vi]Giới thiệu[:en]Introduction[:]', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-12-14 07:41:44', '2018-12-14 07:41:44', '', 6, 'http://localhost:8000/Healthcare/source/6-revision-v1/', 0, 'revision', '', 0),
(172, 1, '2018-12-14 07:43:24', '2018-12-14 07:43:24', '[:vi]<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-1.jpg" alt="" width="900" height="675" />\r\n<em>Khu điều trị trong ngày</em>\r\n\r\n<em><img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-2.jpg" alt="" width="900" height="675" />\r\nPhòng bệnh điều trị trong ngày</em>\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-3.jpg" alt="" width="900" height="675" />\r\n<em>Các dịch vụ tiện ích tại phòng bệnh</em>\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-4.jpg" alt="" width="900" height="675" />\r\n<em>Khu vực nhà vệ sinh bệnh nhân</em>[:en]<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-1.jpg" alt="" width="900" height="675" />\r\nDay treatment area\r\n\r\n<em><img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-2.jpg" alt="" width="900" height="675" />\r\nDisease treatment during the day\r\n</em>\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-3.jpg" alt="" width="900" height="675" />\r\nServices in the ward\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-4.jpg" alt="" width="900" height="675" />\r\nPatient toilet area[:]', '[:vi]Giới thiệu phòng khám[:en]About the clinic[:]', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-12-14 07:43:24', '2018-12-14 07:43:24', '', 8, 'http://localhost:8000/Healthcare/source/8-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2018-12-14 08:16:22', '2018-12-14 08:16:22', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:18:"acf-options-header";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', '[:vi]Logo[:]', 'logo', 'publish', 'closed', 'closed', '', 'group_5c13668b0b6c8', '', '', '2018-12-14 08:16:23', '2018-12-14 08:16:23', '', 0, 'http://localhost:8000/Healthcare/source/?post_type=acf-field-group&#038;p=173', 0, 'acf-field-group', '', 0),
(174, 1, '2018-12-14 08:16:22', '2018-12-14 08:16:22', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Header logo', 'header_logo', 'publish', 'closed', 'closed', '', 'field_5c13669b3a947', '', '', '2018-12-14 08:16:22', '2018-12-14 08:16:22', '', 173, 'http://localhost:8000/Healthcare/source/?post_type=acf-field&p=174', 0, 'acf-field', '', 0),
(175, 1, '2018-12-14 08:16:48', '2018-12-14 08:16:48', '', 'Logo_PNT', '', 'inherit', 'open', 'closed', '', 'logo_pnt', '', '', '2018-12-14 08:16:48', '2018-12-14 08:16:48', '', 0, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/Logo_PNT.png', 0, 'attachment', 'image/png', 0),
(176, 1, '2018-12-17 03:00:14', '2018-12-17 03:00:14', '[:vi]<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-1.jpg" alt="" width="900" height="675" />\r\n<em>Khu điều trị trong ngày</em>\r\n\r\n<em><img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-2.jpg" alt="" width="900" height="675" />\r\nPhòng bệnh điều trị trong ngày</em>\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-3.jpg" alt="" width="900" height="675" />\r\n<em>Các dịch vụ tiện ích tại phòng bệnh</em>\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-4.jpg" alt="" width="900" height="675" />\r\n<em>Khu vực nhà vệ sinh bệnh nhân</em>[:en]<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-1.jpg" alt="" width="900" height="675" />\r\nDay treatment area\r\n\r\n<em><img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-2.jpg" alt="" width="900" height="675" />\r\nDisease treatment during the day\r\n</em>\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-3.jpg" alt="" width="900" height="675" />\r\nServices in the ward\r\n\r\n<img src="http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-4.jpg" alt="" width="900" height="675" />\r\nPatient toilet area[:]', '[:vi]Giới thiệu phòng khám[:en]About the clinic[:]', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-12-17 03:00:14', '2018-12-17 03:00:14', '', 8, 'http://localhost:8000/Healthcare/source/8-revision-v1/', 0, 'revision', '', 0),
(177, 1, '2018-12-17 03:00:35', '2018-12-17 03:00:35', 'Từ đầu tháng 8/2017 Bệnh viện quận 4 từng bước xây dựng mô hình phòng khám ngoại trú thông minh cho cả khu vực khám Bảo hiểm y tế và khu vực khám Bác sĩ gia đình. Trước đó mô hình phòng khám thông minh của Bệnh Viện Nhân Dân Gia Định đã đoạt giải 2 trong các giải thưởng về cải tiến chất lượng bệnh viện của Sở Y tế TPHCM năm 2016.\r\n\r\nSau hơn 2 tháng tích cực triển khai và đưa vào hoạt động mô hình phòng khám thông minh đã giúp cải tiến thời gian chờ khám của bệnh nhân, tránh được việc chen lấn tại khu vực tiếp nhận bệnh, khu vực thu phí, khu vực lãnh thuốc,  cũng như các bất cập khác trong việc chờ khám tại các buồng khám bệnh.\r\n\r\nHơn nữa việc công khai trên màn hình tất cả thông tin về  tên tuổi bệnh nhân, số thứ tự chờ khám, dự kiến thời gian sẽ được khám, số tiền bệnh nhân sẽ phải đóng, số thứ tự và tên tuổi đến lượt lãnh thuốc sẽ giúp cho phòng khám ngoại trú giữ được không gian yên tĩnh nhất, tránh tiếng loa gọi tên như lúc trước, giúp cho các bệnh nhân và bác sĩ thoải mái hơn, tập trung hơn vào việc thăm khám và hỏi han bệnh nhân.\r\n\r\n<img src="http://benhvienquan4.vn/uploads/news/2017_09/pkthongminh_1.jpg" alt="" />\r\n\r\nVới trên 1000 lượt khám mỗi ngày, Bệnh viện quận 4 hy vọng việc triển khai mô hình này sẽ mang lại sự tiện lợi nhất cho bệnh nhân đến khám và điều trị tại Bệnh Viện Quận 4. Trong thời gian tới  việc áp dụng mô hình này sẽ được nhân rộng  ra các phân hệ khám ngoại trú khác và cận lâm sàng để hy vọng phục vụ bà con ngày một tốt hơn.\r\n\r\n<img src="http://benhvienquan4.vn/uploads/news/2017_09/pkthongminh_2.jpg" alt="" />', 'Phòng khám thông minh', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-12-17 03:00:35', '2018-12-17 03:00:35', '', 10, 'http://localhost:8000/Healthcare/source/10-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2018-12-17 03:08:09', '2018-12-17 03:08:09', 'Chúc mừng đến với WordPress. Đây là bài viết đầu tiên của bạn. Hãy chỉnh sửa hay xóa bài viết này, và bắt đầu viết blog!', 'Chào tất cả mọi người!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-12-17 03:08:09', '2018-12-17 03:08:09', '', 1, 'http://localhost:8000/Healthcare/source/1-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2018-12-17 03:38:24', '2018-12-17 03:38:24', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:8:"taxonomy";s:8:"operator";s:2:"==";s:5:"value";s:8:"category";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Ảnh đại diện cho khoa', 'anh-dai-dien-cho-khoa', 'publish', 'closed', 'closed', '', 'group_5c17199d60df2', '', '', '2018-12-17 07:34:36', '2018-12-17 07:34:36', '', 0, 'http://localhost:8000/Healthcare/source/?post_type=acf-field-group&#038;p=179', 0, 'acf-field-group', '', 0),
(180, 1, '2018-12-17 03:38:24', '2018-12-17 03:38:24', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Hình ảnh', 'departments_image', 'publish', 'closed', 'closed', '', 'field_5c1719b98374b', '', '', '2018-12-17 07:34:36', '2018-12-17 07:34:36', '', 179, 'http://localhost:8000/Healthcare/source/?post_type=acf-field&#038;p=180', 0, 'acf-field', '', 0),
(181, 1, '2018-12-17 07:15:54', '2018-12-17 07:15:54', '', 'Heart', '', 'inherit', 'open', 'closed', '', 'heart', '', '', '2018-12-17 07:15:55', '2018-12-17 07:15:55', '', 0, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/Heart.png', 0, 'attachment', 'image/png', 0),
(182, 1, '2018-12-17 07:16:29', '2018-12-17 07:16:29', '', 'HealthScreening', '', 'inherit', 'open', 'closed', '', 'healthscreening', '', '', '2018-12-17 07:16:30', '2018-12-17 07:16:30', '', 0, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/HealthScreening.png', 0, 'attachment', 'image/png', 0),
(183, 1, '2018-12-17 07:16:53', '2018-12-17 07:16:53', '', 'Gastroenterology', '', 'inherit', 'open', 'closed', '', 'gastroenterology', '', '', '2018-12-17 07:16:54', '2018-12-17 07:16:54', '', 0, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/Gastroenterology.png', 0, 'attachment', 'image/png', 0),
(184, 1, '2018-12-17 07:17:17', '2018-12-17 07:17:17', '', 'Otorhinolaryngology', '', 'inherit', 'open', 'closed', '', 'otorhinolaryngology', '', '', '2018-12-17 07:17:18', '2018-12-17 07:17:18', '', 0, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/Otorhinolaryngology.png', 0, 'attachment', 'image/png', 0),
(185, 1, '2018-12-17 07:17:48', '2018-12-17 07:17:48', '', 'Ophthalmology', '', 'inherit', 'open', 'closed', '', 'ophthalmology', '', '', '2018-12-17 07:17:49', '2018-12-17 07:17:49', '', 0, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/Ophthalmology.png', 0, 'attachment', 'image/png', 0),
(186, 1, '2018-12-17 07:18:22', '2018-12-17 07:18:22', '', 'Orthopedics', '', 'inherit', 'open', 'closed', '', 'orthopedics', '', '', '2018-12-17 07:18:23', '2018-12-17 07:18:23', '', 0, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/Orthopedics.png', 0, 'attachment', 'image/png', 0),
(187, 1, '2018-12-17 07:19:13', '2018-12-17 07:19:13', '', 'Endocrinology', '', 'inherit', 'open', 'closed', '', 'endocrinology', '', '', '2018-12-17 07:19:15', '2018-12-17 07:19:15', '', 0, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/Endocrinology.png', 0, 'attachment', 'image/png', 0),
(188, 1, '2018-12-17 07:19:40', '2018-12-17 07:19:40', '', 'Plastic', '', 'inherit', 'open', 'closed', '', 'plastic', '', '', '2018-12-17 07:19:41', '2018-12-17 07:19:41', '', 0, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/Plastic.png', 0, 'attachment', 'image/png', 0),
(189, 1, '2018-12-17 07:20:22', '2018-12-17 07:20:22', '', 'Pediatrics', '', 'inherit', 'open', 'closed', '', 'pediatrics', '', '', '2018-12-17 07:20:23', '2018-12-17 07:20:23', '', 0, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/Pediatrics.png', 0, 'attachment', 'image/png', 0),
(190, 1, '2018-12-17 07:20:49', '2018-12-17 07:20:49', '', 'Obstetrics', '', 'inherit', 'open', 'closed', '', 'obstetrics', '', '', '2018-12-17 07:20:50', '2018-12-17 07:20:50', '', 0, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/Obstetrics.png', 0, 'attachment', 'image/png', 0),
(191, 1, '2018-12-17 07:21:10', '2018-12-17 07:21:10', '', 'Plastic', '', 'inherit', 'open', 'closed', '', 'plastic-2', '', '', '2018-12-17 07:21:12', '2018-12-17 07:21:12', '', 0, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/Plastic-1.png', 0, 'attachment', 'image/png', 0),
(192, 1, '2018-12-17 07:33:40', '2018-12-17 07:33:40', '[:vi]<ul>\r\n 	<li>\r\n<div class="collapsible-container collapsible-block expanded screen-lg">\r\n<div class="collapsible-header">\r\n<div class="collapse-trigger">\r\n<div><strong>Đại hội thi đua yêu nước lần 5</strong> giai đoạn 2005 – 2010, được Ủy ban nhân dân TP HCM tổ chức trọng thể tại Nhà hát Hòa Bình ngày 14/6/2010. Hơn 800 tập thể và cá nhân điển hình, đã được Hội đồng thi đua khen thưởng thành phố  tuyên dương vì những đóng góp xuất sắc cho phong trào thi đua yêu nước, bám sát thực tế và mang lại hiệu quả kinh tế - xã hội rất to lớn cho TP Hồ Chí Minh nói riêng.</div>\r\n<table align="right">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class="contentImagecenter">\r\n\r\n<img class="contentImage" src="https://tudu.com.vn/data/2010/06/17/08213950_IMG_0023.jpg" />\r\n<div class="contentImageDescription"></div>\r\n</div>\r\n<div><span style="font-size: xx-small;">BS. CKII Phạm Việt Thanh\r\n</span></div>\r\n<div><span style="font-size: xx-small;">Giám đốc BV Từ Dũ</span></div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\nTrong bối cảnh ngành y tế nói chung chịu sự tác động mạnh mẽ của nền kinh tế thị trường thời hội nhập. Tinh thần dám nghĩ, dám làm, mạnh dạn thực hiện Nghị định 43/NĐ-CP về <em>quyền tự chủ, tự chịu trách nhiệm về thực hiện nhiệm vụ, tổ chức bộ máy biên chế và tài chính đối với đơn vị sự nghiệp công lập</em> thông qua việc thực hiện xã hội hóa để phát triển Bệnh viện Từ Dũ thành Bệnh viện Sản - Nhi hiện đại 1.200 giường. Mở rộng mối quan hệ hợp tác về đào tạo với các tổ chức y tế quốc tế và các viện - trường đại học y khoa tại các nước Pháp, Anh, Úc, Nhật Bản, Singapore, Hàn Quốc, Thái Lan, …  nhằm nâng cao trình độ chuyên môn và kỹ năng điều trị lâm sàng cho đội ngũ cán bộ y tế, đáp ứng nhu cầu khám chữa bệnh ngày càng đa dạng của người dân, giữ vững thương hiệu bệnh viện Từ Dũ; Thực hiện tốt nhiệm vụ hỗ trợ chuyên môn và chuyển giao kỹ thuật cho các tuyến y tế cơ sở; nâng cao thu nhập và ổn định đời sống  cho cán bộ công chức – viên chức của bệnh viện… Đó là những tiền đề quan trọng giúp Bác sĩ CKII. Phạm Việt Thanh – Thầy thuốc nhân dân, Giám đốc Bệnh viện Từ Dũ<strong> </strong>vinh dự là 1/18 điển hình tiên tiến của TP Hồ Chí Minh được Hội đồng thi đua khen thưởng TP bầu chọn trong số hàng nghìn cán bộ - công nhân viên chức ngành y tế của gần 100 đơn vị, cơ sở khám chữa bệnh cùng các công ty dược – trong thiết bị y tế công lập và tư nhân trên địa bàn thành phố.\r\n\r\n</div>\r\n</div>\r\n</div></li>\r\n</ul>[:en]<div class="collapsible-container collapsible-block expanded screen-lg">\r\n<div class="collapsible-header">\r\n<div class="collapse-trigger"><i class="fa fa-fw fa-briefcase" aria-hidden="true"></i>The 5th National Patriotic Emulation Congress 2005 - 2010 was organized by Ho Chi Minh City People''s Committee at Hoa Binh Theater on 14/6/2010. More than 800 collectives and individuals have been praised by the City Emulation Council for their outstanding contributions to the patriotic emulation movement, keeping abreast of reality and bringing about socio-economic benefits. Very big for Ho Chi Minh City in particular.\r\n\r\nBS. CKII Pham Viet Thanh\r\nDirector of Tu Du Hospital\r\nIn the context of the health sector in general is strongly influenced by the market economy in the integration period. The spirit of dare to think, dare to do, boldly implement Decree No. 43 / ND-CP on autonomy and self-responsibility on the performance of tasks, organization of staffing and financial institutions for public service units Established through the socialization to develop Tu Du Hospital into a modern-obstetrics-children hospital with 1,200 beds. Expanding the cooperation on training with international health organizations and institutes of medical universities in France, England, Australia, Japan, Singapore, Korea, Thailand, etc. High level of professional and clinical skills for medical staff, meeting the needs of increasingly diverse medical examination and treatment of people, maintaining the brand name hospital Tu Du; To well perform the task of professional support and technical transfer for grassroots medical establishments; improve the income and stabilize the life for civil servants - staff of the hospital ... That is the important premise to help doctors CKII. Pham Viet Thanh - People''s Doctor, Director of Tu Du Hospital was honored to be one of the 18 most advanced models of Ho Chi Minh City, voted by the Council of Emulation and Commendation of the thousands of cadres and employees. the health care sector of nearly 100 units, medical facilities and pharmaceutical companies - in public and private medical equipment in the city.\r\n\r\n</div>\r\n</div>\r\n</div>[:]', 'TS. BS. Phạm Việt Thanh', '', 'publish', 'open', 'open', '', 'english-ts-bs-pham-viet-thanh', '', '', '2018-12-17 08:01:02', '2018-12-17 08:01:02', '', 0, 'http://localhost:8000/Healthcare/source/?p=192', 0, 'post', '', 0),
(193, 1, '2018-12-17 07:32:41', '2018-12-17 07:32:41', '', 'bs viet thanh web', '', 'inherit', 'open', 'closed', '', 'bs-viet-thanh-web', '', '', '2018-12-17 07:32:41', '2018-12-17 07:32:41', '', 192, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/bs-viet-thanh-web.jpg', 0, 'attachment', 'image/jpeg', 0),
(194, 1, '2018-12-17 07:33:40', '2018-12-17 07:33:40', '[:en]<ul>\r\n 	<li>\r\n<div class="collapsible-container collapsible-block expanded screen-lg">\r\n<div class="collapsible-header">\r\n<div class="collapse-trigger"><i class="fa fa-fw fa-briefcase" aria-hidden="true"></i> CHỨC VỤ</div>\r\n</div>\r\n<div class="collapsible-target text-bold">\r\n<ul>\r\n 	<li>Bác sĩ tại phòng khám Sản Phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n 	<li>Bác sĩ tại phòng khám Nhi đồng Thành phố Hồ Chí Minh</li>\r\n 	<li>Nguyên giám đốc Bệnh viện Từ Dũ</li>\r\n 	<li>Chủ nhiệm bộ môn Sản Phụ khoa – Đại học Y Phạm Ngọc Thạch</li>\r\n 	<li>Nguyên giám đốc Sở Y tế Thành phố Hồ Chí Minh</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="collapsible-container collapsible-block expanded screen-lg">\r\n<div class="collapsible-header">\r\n<div class="collapse-trigger"><i class="fa fa-fw fa-hospital-o" aria-hidden="true"></i> NƠI CÔNG TÁC</div>\r\n</div>\r\n<div class="collapsible-target has-images text-bold">\r\n<ul class="list-unstyled">\r\n 	<li>Phòng khám Sản Phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n 	<li>Phòng khám Nhi đồng Thành phố - 31 Lý Tự Trọng</li>\r\n 	<li>Phòng khám Sản phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="collapsible-container collapsible-block expanded screen-lg">\r\n<div class="collapsible-header">\r\n<div class="collapse-trigger"><i class="fa fa-fw fa-book" aria-hidden="true"></i> KINH NGHIỆM</div>\r\n</div>\r\n<div class="collapsible-target text-bold">\r\n<ul>\r\n 	<li>Phòng khám Sản Phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n 	<li>Phòng khám Nhi đồng Thành phố Hồ Chí Minh</li>\r\n 	<li>Bệnh viện Từ Dũ</li>\r\n 	<li>Bộ môn Sản Phụ khoa – Đại học Y Phạm Ngọc Thạch</li>\r\n 	<li>Sở Y tế Thành phố Hồ Chí Minh</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="collapsible-container collapsible-block expanded screen-lg">\r\n<div class="collapsible-header">\r\n<div class="collapse-trigger"><i class="fa fa-fw fa-trophy" aria-hidden="true"></i> GIẢI THƯỞNG VÀ GHI NHẬN</div>\r\n</div>\r\n<div class="collapsible-target text-bold">\r\n<ul>\r\n 	<li>Danh hiệu Thầy thuốc nhân dân</li>\r\n</ul>\r\n</div>\r\n</div></li>\r\n</ul>[:]', '[:en]TS. BS. Phạm Việt Thanh[:]', '', 'inherit', 'closed', 'closed', '', '192-revision-v1', '', '', '2018-12-17 07:33:40', '2018-12-17 07:33:40', '', 192, 'http://localhost:8000/Healthcare/source/192-revision-v1/', 0, 'revision', '', 0),
(195, 1, '2018-12-17 07:37:44', '2018-12-17 07:37:44', '', 'Pediatrics', '', 'inherit', 'open', 'closed', '', 'pediatrics-2', '', '', '2018-12-17 07:37:47', '2018-12-17 07:37:47', '', 0, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/Pediatrics-1.png', 0, 'attachment', 'image/png', 0),
(196, 1, '2018-12-17 07:39:33', '2018-12-17 07:39:33', '', 'Nephrology', '', 'inherit', 'open', 'closed', '', 'nephrology', '', '', '2018-12-17 07:39:34', '2018-12-17 07:39:34', '', 0, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/Nephrology.png', 0, 'attachment', 'image/png', 0),
(197, 1, '2018-12-17 07:41:18', '2018-12-17 07:41:18', '', '[:vi]TS. BS. Tạ Thị Thanh Thủy[:]', '', 'publish', 'open', 'open', '', 'ts-bs-ta-thi-thanh-thuy', '', '', '2018-12-17 07:41:18', '2018-12-17 07:41:18', '', 0, 'http://localhost:8000/Healthcare/source/?p=197', 0, 'post', '', 0),
(198, 1, '2018-12-17 07:41:14', '2018-12-17 07:41:14', '', 'ta-thi-thanh-thuy', '', 'inherit', 'open', 'closed', '', 'ta-thi-thanh-thuy', '', '', '2018-12-17 07:41:14', '2018-12-17 07:41:14', '', 197, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/ta-thi-thanh-thuy.png', 0, 'attachment', 'image/png', 0),
(199, 1, '2018-12-17 07:41:18', '2018-12-17 07:41:18', '', '[:vi]TS. BS. Tạ Thị Thanh Thủy[:]', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2018-12-17 07:41:18', '2018-12-17 07:41:18', '', 197, 'http://localhost:8000/Healthcare/source/197-revision-v1/', 0, 'revision', '', 0),
(200, 1, '2018-12-17 07:41:52', '2018-12-17 07:41:52', '', '[:vi]BS. CKI. Nguyễn Bích Hải[:]', '', 'publish', 'open', 'open', '', 'bs-cki-nguyen-bich-hai', '', '', '2018-12-17 07:43:29', '2018-12-17 07:43:29', '', 0, 'http://localhost:8000/Healthcare/source/?p=200', 0, 'post', '', 0),
(201, 1, '2018-12-17 07:41:48', '2018-12-17 07:41:48', '', 'hinh-the-bac-hai', '', 'inherit', 'open', 'closed', '', 'hinh-the-bac-hai', '', '', '2018-12-17 07:41:48', '2018-12-17 07:41:48', '', 200, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/hinh-the-bac-hai.jpg', 0, 'attachment', 'image/jpeg', 0),
(202, 1, '2018-12-17 07:41:52', '2018-12-17 07:41:52', '', '[:vi]BS. CKI. Nguyễn Bích Hải[:]', '', 'inherit', 'closed', 'closed', '', '200-revision-v1', '', '', '2018-12-17 07:41:52', '2018-12-17 07:41:52', '', 200, 'http://localhost:8000/Healthcare/source/200-revision-v1/', 0, 'revision', '', 0),
(203, 1, '2018-12-17 07:57:43', '2018-12-17 07:57:43', '[:vi]<ul>\r\n 	<li>\r\n<div class="collapsible-container collapsible-block expanded screen-lg">\r\n<div class="collapsible-header">\r\n<div class="collapse-trigger"> CHỨC VỤ</div>\r\n</div>\r\n<div class="collapsible-target text-bold">\r\n<ul>\r\n 	<li>Bác sĩ tại phòng khám Sản Phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n 	<li>Bác sĩ tại phòng khám Nhi đồng Thành phố Hồ Chí Minh</li>\r\n 	<li>Nguyên giám đốc Bệnh viện Từ Dũ</li>\r\n 	<li>Chủ nhiệm bộ môn Sản Phụ khoa – Đại học Y Phạm Ngọc Thạch</li>\r\n 	<li>Nguyên giám đốc Sở Y tế Thành phố Hồ Chí Minh</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="collapsible-container collapsible-block expanded screen-lg">\r\n<div class="collapsible-header">\r\n<div class="collapse-trigger"><i class="fa fa-fw fa-hospital-o" aria-hidden="true"></i> NƠI CÔNG TÁC</div>\r\n</div>\r\n<div class="collapsible-target has-images text-bold">\r\n<ul class="list-unstyled">\r\n 	<li>Phòng khám Sản Phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n 	<li>Phòng khám Nhi đồng Thành phố - 31 Lý Tự Trọng</li>\r\n 	<li>Phòng khám Sản phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="collapsible-container collapsible-block expanded screen-lg">\r\n<div class="collapsible-header">\r\n<div class="collapse-trigger"><i class="fa fa-fw fa-book" aria-hidden="true"></i> KINH NGHIỆM</div>\r\n</div>\r\n<div class="collapsible-target text-bold">\r\n<ul>\r\n 	<li>Phòng khám Sản Phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n 	<li>Phòng khám Nhi đồng Thành phố Hồ Chí Minh</li>\r\n 	<li>Bệnh viện Từ Dũ</li>\r\n 	<li>Bộ môn Sản Phụ khoa – Đại học Y Phạm Ngọc Thạch</li>\r\n 	<li>Sở Y tế Thành phố Hồ Chí Minh</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="collapsible-container collapsible-block expanded screen-lg">\r\n<div class="collapsible-header">\r\n<div class="collapse-trigger"><i class="fa fa-fw fa-trophy" aria-hidden="true"></i> GIẢI THƯỞNG VÀ GHI NHẬN</div>\r\n</div>\r\n<div class="collapsible-target text-bold">\r\n<ul>\r\n 	<li>Danh hiệu Thầy thuốc nhân dân</li>\r\n</ul>\r\n</div>\r\n</div></li>\r\n</ul>[:en]<ul>\r\n 	<li>\r\n<div class="collapsible-container collapsible-block expanded screen-lg">\r\n<div class="collapsible-header">\r\n<div class="collapse-trigger"><i class="fa fa-fw fa-briefcase" aria-hidden="true"></i> CHỨC VỤ</div>\r\n</div>\r\n<div class="collapsible-target text-bold">\r\n<ul>\r\n 	<li>Bác sĩ tại phòng khám Sản Phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n 	<li>Bác sĩ tại phòng khám Nhi đồng Thành phố Hồ Chí Minh</li>\r\n 	<li>Nguyên giám đốc Bệnh viện Từ Dũ</li>\r\n 	<li>Chủ nhiệm bộ môn Sản Phụ khoa – Đại học Y Phạm Ngọc Thạch</li>\r\n 	<li>Nguyên giám đốc Sở Y tế Thành phố Hồ Chí Minh</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="collapsible-container collapsible-block expanded screen-lg">\r\n<div class="collapsible-header">\r\n<div class="collapse-trigger"><i class="fa fa-fw fa-hospital-o" aria-hidden="true"></i> NƠI CÔNG TÁC</div>\r\n</div>\r\n<div class="collapsible-target has-images text-bold">\r\n<ul class="list-unstyled">\r\n 	<li>Phòng khám Sản Phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n 	<li>Phòng khám Nhi đồng Thành phố - 31 Lý Tự Trọng</li>\r\n 	<li>Phòng khám Sản phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="collapsible-container collapsible-block expanded screen-lg">\r\n<div class="collapsible-header">\r\n<div class="collapse-trigger"><i class="fa fa-fw fa-book" aria-hidden="true"></i> KINH NGHIỆM</div>\r\n</div>\r\n<div class="collapsible-target text-bold">\r\n<ul>\r\n 	<li>Phòng khám Sản Phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n 	<li>Phòng khám Nhi đồng Thành phố Hồ Chí Minh</li>\r\n 	<li>Bệnh viện Từ Dũ</li>\r\n 	<li>Bộ môn Sản Phụ khoa – Đại học Y Phạm Ngọc Thạch</li>\r\n 	<li>Sở Y tế Thành phố Hồ Chí Minh</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="collapsible-container collapsible-block expanded screen-lg">\r\n<div class="collapsible-header">\r\n<div class="collapse-trigger"><i class="fa fa-fw fa-trophy" aria-hidden="true"></i> GIẢI THƯỞNG VÀ GHI NHẬN</div>\r\n</div>\r\n<div class="collapsible-target text-bold">\r\n<ul>\r\n 	<li>Danh hiệu Thầy thuốc nhân dân</li>\r\n</ul>\r\n</div>\r\n</div></li>\r\n</ul>[:]', 'TS. BS. Phạm Việt Thanh', '', 'inherit', 'closed', 'closed', '', '192-revision-v1', '', '', '2018-12-17 07:57:43', '2018-12-17 07:57:43', '', 192, 'http://localhost:8000/Healthcare/source/192-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(204, 1, '2018-12-17 08:00:35', '2018-12-17 08:00:35', '[:vi]<ul>\r\n 	<li>\r\n<div class="collapsible-container collapsible-block expanded screen-lg">\r\n<div class="collapsible-header">\r\n<div class="collapse-trigger">\r\n<div><strong>Đại hội thi đua yêu nước lần 5</strong> giai đoạn 2005 – 2010, được Ủy ban nhân dân TP HCM tổ chức trọng thể tại Nhà hát Hòa Bình ngày 14/6/2010. Hơn 800 tập thể và cá nhân điển hình, đã được Hội đồng thi đua khen thưởng thành phố  tuyên dương vì những đóng góp xuất sắc cho phong trào thi đua yêu nước, bám sát thực tế và mang lại hiệu quả kinh tế - xã hội rất to lớn cho TP Hồ Chí Minh nói riêng.</div>\r\n<table align="right">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class="contentImagecenter"><img class="contentImage" src="https://tudu.com.vn/data/2010/06/17/08213950_IMG_0023.jpg" />\r\n<div class="contentImageDescription"></div>\r\n</div>\r\n<div><span style="font-size: xx-small;">BS. CKII Phạm Việt Thanh\r\n</span></div>\r\n<div><span style="font-size: xx-small;">Giám đốc BV Từ Dũ</span></div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\nTrong bối cảnh ngành y tế nói chung chịu sự tác động mạnh mẽ của nền kinh tế thị trường thời hội nhập. Tinh thần dám nghĩ, dám làm, mạnh dạn thực hiện Nghị định 43/NĐ-CP về <em>quyền tự chủ, tự chịu trách nhiệm về thực hiện nhiệm vụ, tổ chức bộ máy biên chế và tài chính đối với đơn vị sự nghiệp công lập</em> thông qua việc thực hiện xã hội hóa để phát triển Bệnh viện Từ Dũ thành Bệnh viện Sản - Nhi hiện đại 1.200 giường. Mở rộng mối quan hệ hợp tác về đào tạo với các tổ chức y tế quốc tế và các viện - trường đại học y khoa tại các nước Pháp, Anh, Úc, Nhật Bản, Singapore, Hàn Quốc, Thái Lan, …  nhằm nâng cao trình độ chuyên môn và kỹ năng điều trị lâm sàng cho đội ngũ cán bộ y tế, đáp ứng nhu cầu khám chữa bệnh ngày càng đa dạng của người dân, giữ vững thương hiệu bệnh viện Từ Dũ; Thực hiện tốt nhiệm vụ hỗ trợ chuyên môn và chuyển giao kỹ thuật cho các tuyến y tế cơ sở; nâng cao thu nhập và ổn định đời sống  cho cán bộ công chức – viên chức của bệnh viện… Đó là những tiền đề quan trọng giúp Bác sĩ CKII. Phạm Việt Thanh – Thầy thuốc nhân dân, Giám đốc Bệnh viện Từ Dũ<strong> </strong>vinh dự là 1/18 điển hình tiên tiến của TP Hồ Chí Minh được Hội đồng thi đua khen thưởng TP bầu chọn trong số hàng nghìn cán bộ - công nhân viên chức ngành y tế của gần 100 đơn vị, cơ sở khám chữa bệnh cùng các công ty dược – trong thiết bị y tế công lập và tư nhân trên địa bàn thành phố.\r\n\r\n</div>\r\n</div>\r\n</div></li>\r\n</ul>[:en]<ul>\r\n 	<li>\r\n<div class="collapsible-container collapsible-block expanded screen-lg">\r\n<div class="collapsible-header">\r\n<div class="collapse-trigger"><i class="fa fa-fw fa-briefcase" aria-hidden="true"></i> CHỨC VỤ</div>\r\n</div>\r\n<div class="collapsible-target text-bold">\r\n<ul>\r\n 	<li>Bác sĩ tại phòng khám Sản Phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n 	<li>Bác sĩ tại phòng khám Nhi đồng Thành phố Hồ Chí Minh</li>\r\n 	<li>Nguyên giám đốc Bệnh viện Từ Dũ</li>\r\n 	<li>Chủ nhiệm bộ môn Sản Phụ khoa – Đại học Y Phạm Ngọc Thạch</li>\r\n 	<li>Nguyên giám đốc Sở Y tế Thành phố Hồ Chí Minh</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="collapsible-container collapsible-block expanded screen-lg">\r\n<div class="collapsible-header">\r\n<div class="collapse-trigger"><i class="fa fa-fw fa-hospital-o" aria-hidden="true"></i> NƠI CÔNG TÁC</div>\r\n</div>\r\n<div class="collapsible-target has-images text-bold">\r\n<ul class="list-unstyled">\r\n 	<li>Phòng khám Sản Phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n 	<li>Phòng khám Nhi đồng Thành phố - 31 Lý Tự Trọng</li>\r\n 	<li>Phòng khám Sản phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="collapsible-container collapsible-block expanded screen-lg">\r\n<div class="collapsible-header">\r\n<div class="collapse-trigger"><i class="fa fa-fw fa-book" aria-hidden="true"></i> KINH NGHIỆM</div>\r\n</div>\r\n<div class="collapsible-target text-bold">\r\n<ul>\r\n 	<li>Phòng khám Sản Phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n 	<li>Phòng khám Nhi đồng Thành phố Hồ Chí Minh</li>\r\n 	<li>Bệnh viện Từ Dũ</li>\r\n 	<li>Bộ môn Sản Phụ khoa – Đại học Y Phạm Ngọc Thạch</li>\r\n 	<li>Sở Y tế Thành phố Hồ Chí Minh</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="collapsible-container collapsible-block expanded screen-lg">\r\n<div class="collapsible-header">\r\n<div class="collapse-trigger"><i class="fa fa-fw fa-trophy" aria-hidden="true"></i> GIẢI THƯỞNG VÀ GHI NHẬN</div>\r\n</div>\r\n<div class="collapsible-target text-bold">\r\n<ul>\r\n 	<li>Danh hiệu Thầy thuốc nhân dân</li>\r\n</ul>\r\n</div>\r\n</div></li>\r\n</ul>[:]', 'TS. BS. Phạm Việt Thanh', '', 'inherit', 'closed', 'closed', '', '192-revision-v1', '', '', '2018-12-17 08:00:35', '2018-12-17 08:00:35', '', 192, 'http://localhost:8000/Healthcare/source/192-revision-v1/', 0, 'revision', '', 0),
(205, 1, '2018-12-17 08:01:02', '2018-12-17 08:01:02', '[:vi]<ul>\r\n 	<li>\r\n<div class="collapsible-container collapsible-block expanded screen-lg">\r\n<div class="collapsible-header">\r\n<div class="collapse-trigger">\r\n<div><strong>Đại hội thi đua yêu nước lần 5</strong> giai đoạn 2005 – 2010, được Ủy ban nhân dân TP HCM tổ chức trọng thể tại Nhà hát Hòa Bình ngày 14/6/2010. Hơn 800 tập thể và cá nhân điển hình, đã được Hội đồng thi đua khen thưởng thành phố  tuyên dương vì những đóng góp xuất sắc cho phong trào thi đua yêu nước, bám sát thực tế và mang lại hiệu quả kinh tế - xã hội rất to lớn cho TP Hồ Chí Minh nói riêng.</div>\r\n<table align="right">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class="contentImagecenter">\r\n\r\n<img class="contentImage" src="https://tudu.com.vn/data/2010/06/17/08213950_IMG_0023.jpg" />\r\n<div class="contentImageDescription"></div>\r\n</div>\r\n<div><span style="font-size: xx-small;">BS. CKII Phạm Việt Thanh\r\n</span></div>\r\n<div><span style="font-size: xx-small;">Giám đốc BV Từ Dũ</span></div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\nTrong bối cảnh ngành y tế nói chung chịu sự tác động mạnh mẽ của nền kinh tế thị trường thời hội nhập. Tinh thần dám nghĩ, dám làm, mạnh dạn thực hiện Nghị định 43/NĐ-CP về <em>quyền tự chủ, tự chịu trách nhiệm về thực hiện nhiệm vụ, tổ chức bộ máy biên chế và tài chính đối với đơn vị sự nghiệp công lập</em> thông qua việc thực hiện xã hội hóa để phát triển Bệnh viện Từ Dũ thành Bệnh viện Sản - Nhi hiện đại 1.200 giường. Mở rộng mối quan hệ hợp tác về đào tạo với các tổ chức y tế quốc tế và các viện - trường đại học y khoa tại các nước Pháp, Anh, Úc, Nhật Bản, Singapore, Hàn Quốc, Thái Lan, …  nhằm nâng cao trình độ chuyên môn và kỹ năng điều trị lâm sàng cho đội ngũ cán bộ y tế, đáp ứng nhu cầu khám chữa bệnh ngày càng đa dạng của người dân, giữ vững thương hiệu bệnh viện Từ Dũ; Thực hiện tốt nhiệm vụ hỗ trợ chuyên môn và chuyển giao kỹ thuật cho các tuyến y tế cơ sở; nâng cao thu nhập và ổn định đời sống  cho cán bộ công chức – viên chức của bệnh viện… Đó là những tiền đề quan trọng giúp Bác sĩ CKII. Phạm Việt Thanh – Thầy thuốc nhân dân, Giám đốc Bệnh viện Từ Dũ<strong> </strong>vinh dự là 1/18 điển hình tiên tiến của TP Hồ Chí Minh được Hội đồng thi đua khen thưởng TP bầu chọn trong số hàng nghìn cán bộ - công nhân viên chức ngành y tế của gần 100 đơn vị, cơ sở khám chữa bệnh cùng các công ty dược – trong thiết bị y tế công lập và tư nhân trên địa bàn thành phố.\r\n\r\n</div>\r\n</div>\r\n</div></li>\r\n</ul>[:en]<div class="collapsible-container collapsible-block expanded screen-lg">\r\n<div class="collapsible-header">\r\n<div class="collapse-trigger"><i class="fa fa-fw fa-briefcase" aria-hidden="true"></i>The 5th National Patriotic Emulation Congress 2005 - 2010 was organized by Ho Chi Minh City People''s Committee at Hoa Binh Theater on 14/6/2010. More than 800 collectives and individuals have been praised by the City Emulation Council for their outstanding contributions to the patriotic emulation movement, keeping abreast of reality and bringing about socio-economic benefits. Very big for Ho Chi Minh City in particular.\r\n\r\nBS. CKII Pham Viet Thanh\r\nDirector of Tu Du Hospital\r\nIn the context of the health sector in general is strongly influenced by the market economy in the integration period. The spirit of dare to think, dare to do, boldly implement Decree No. 43 / ND-CP on autonomy and self-responsibility on the performance of tasks, organization of staffing and financial institutions for public service units Established through the socialization to develop Tu Du Hospital into a modern-obstetrics-children hospital with 1,200 beds. Expanding the cooperation on training with international health organizations and institutes of medical universities in France, England, Australia, Japan, Singapore, Korea, Thailand, etc. High level of professional and clinical skills for medical staff, meeting the needs of increasingly diverse medical examination and treatment of people, maintaining the brand name hospital Tu Du; To well perform the task of professional support and technical transfer for grassroots medical establishments; improve the income and stabilize the life for civil servants - staff of the hospital ... That is the important premise to help doctors CKII. Pham Viet Thanh - People''s Doctor, Director of Tu Du Hospital was honored to be one of the 18 most advanced models of Ho Chi Minh City, voted by the Council of Emulation and Commendation of the thousands of cadres and employees. the health care sector of nearly 100 units, medical facilities and pharmaceutical companies - in public and private medical equipment in the city.\r\n\r\n</div>\r\n</div>\r\n</div>[:]', 'TS. BS. Phạm Việt Thanh', '', 'inherit', 'closed', 'closed', '', '192-revision-v1', '', '', '2018-12-17 08:01:02', '2018-12-17 08:01:02', '', 192, 'http://localhost:8000/Healthcare/source/192-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 3, 'departments_image', '181'),
(2, 3, '_departments_image', 'field_5c1719b98374b'),
(3, 7, 'departments_image', '182'),
(4, 7, '_departments_image', 'field_5c1719b98374b'),
(5, 6, 'departments_image', '183'),
(6, 6, '_departments_image', 'field_5c1719b98374b'),
(7, 4, 'departments_image', '184'),
(8, 4, '_departments_image', 'field_5c1719b98374b'),
(9, 5, 'departments_image', '185'),
(10, 5, '_departments_image', 'field_5c1719b98374b'),
(11, 8, 'departments_image', '186'),
(12, 8, '_departments_image', 'field_5c1719b98374b'),
(13, 9, 'departments_image', '187'),
(14, 9, '_departments_image', 'field_5c1719b98374b'),
(15, 10, 'departments_image', '188'),
(16, 10, '_departments_image', 'field_5c1719b98374b'),
(17, 11, 'departments_image', '196'),
(18, 11, '_departments_image', 'field_5c1719b98374b'),
(19, 13, 'departments_image', '190'),
(20, 13, '_departments_image', 'field_5c1719b98374b'),
(21, 14, 'departments_image', '191'),
(22, 14, '_departments_image', 'field_5c1719b98374b'),
(23, 12, 'departments_image', '195'),
(24, 12, '_departments_image', 'field_5c1719b98374b');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa được phân loại', 'khong-phan-loai', 0),
(2, 'Header', 'header', 0),
(3, 'Khoa Tim', 'khoa-tim', 0),
(4, 'Khoa tai mũi họng', 'khoa-tai-mui-hong', 0),
(5, 'Khoa Mắt', 'khoa-mat', 0),
(6, 'Khoa tiêu hóa', 'khoa-tieu-hoa', 0),
(7, 'Khoa Sàng Lọc', 'khoa-sang-loc', 0),
(8, 'Khoa Chấn Thương', 'khoa-chan-thuong', 0),
(9, 'Nội tiết', 'noi-tiet', 0),
(10, 'Phẫu Thuật Thẩm Mỹ', 'phau-thuat-tham-my', 0),
(11, 'Khoa Thận', 'khoa-than', 0),
(12, 'Khoa Nhi', 'khoa-nhi', 0),
(13, 'Sản Khoa Và Phụ Khoa', 'san-khoa-va-phu-khoa', 0),
(14, 'Khoa Tổng Quát', 'khoa-tong-quat', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(55, 2, 0),
(56, 2, 0),
(57, 2, 0),
(58, 2, 0),
(59, 2, 0),
(128, 2, 0),
(129, 2, 0),
(130, 2, 0),
(131, 2, 0),
(132, 2, 0),
(133, 2, 0),
(134, 2, 0),
(135, 2, 0),
(136, 2, 0),
(137, 2, 0),
(138, 2, 0),
(139, 2, 0),
(140, 2, 0),
(141, 2, 0),
(142, 2, 0),
(143, 2, 0),
(144, 2, 0),
(145, 2, 0),
(146, 2, 0),
(147, 2, 0),
(148, 2, 0),
(149, 2, 0),
(150, 2, 0),
(151, 2, 0),
(152, 2, 0),
(153, 2, 0),
(154, 2, 0),
(155, 2, 0),
(156, 2, 0),
(157, 2, 0),
(192, 5, 0),
(192, 7, 0),
(192, 11, 0),
(192, 12, 0),
(197, 6, 0),
(197, 8, 0),
(197, 14, 0),
(200, 3, 0),
(200, 4, 0),
(200, 7, 0),
(200, 8, 0),
(200, 9, 0),
(200, 10, 0),
(200, 12, 0),
(200, 13, 0),
(200, 14, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 35),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 1),
(6, 6, 'category', '', 0, 1),
(7, 7, 'category', '', 0, 2),
(8, 8, 'category', '', 0, 2),
(9, 9, 'category', '', 0, 1),
(10, 10, 'category', '', 0, 1),
(11, 11, 'category', '', 0, 1),
(12, 12, 'category', '', 0, 2),
(13, 13, 'category', '', 0, 1),
(14, 14, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"6a3270a8eb2eaf6493a017332af516d9ba6b10cfc6d5a45dbc0ceac62f88a23d";a:4:{s:10:"expiration";i:1545188345;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36";s:5:"login";i:1545015545;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'closedpostboxes_slide_introduction', 'a:0:{}'),
(19, 1, 'metaboxhidden_slide_introduction', 'a:1:{i:0;s:7:"slugdiv";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(21, 1, 'wp_user-settings-time', '1544774421'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:32:"add-post-type-slide_introduction";i:1;s:21:"add-post-type-dich_vu";i:2;s:23:"add-post-type-hoat_dong";i:3;s:12:"add-post_tag";}'),
(24, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
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
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bn4IxWYhVbyXCk2hdvH/PcG4aq66eg/', 'admin', 'binhdarkcu@gmail.com', '', '2018-12-10 10:18:09', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=392;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=667;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
