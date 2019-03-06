-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 06, 2019 at 08:13 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `golde582_healthcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `psm_manage_schedule`
--

CREATE TABLE `psm_manage_schedule` (
  `id` int(11) NOT NULL,
  `day` varchar(255) NOT NULL,
  `schedule` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Table structure for table `wp_em_bookings`
--

CREATE TABLE `wp_em_bookings` (
  `booking_id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED DEFAULT NULL,
  `person_id` bigint(20) UNSIGNED NOT NULL,
  `booking_spaces` int(5) NOT NULL,
  `booking_comment` mediumtext COLLATE utf8mb4_unicode_ci,
  `booking_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `booking_status` tinyint(1) NOT NULL DEFAULT '1',
  `booking_price` decimal(14,4) UNSIGNED NOT NULL DEFAULT '0.0000',
  `booking_tax_rate` decimal(7,4) DEFAULT NULL,
  `booking_taxes` decimal(14,4) DEFAULT NULL,
  `booking_meta` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_em_events`
--

CREATE TABLE `wp_em_events` (
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `event_slug` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_owner` bigint(20) UNSIGNED DEFAULT NULL,
  `event_status` int(1) DEFAULT NULL,
  `event_name` mediumtext COLLATE utf8mb4_unicode_ci,
  `event_start_date` date DEFAULT NULL,
  `event_end_date` date DEFAULT NULL,
  `event_start_time` time DEFAULT NULL,
  `event_end_time` time DEFAULT NULL,
  `event_all_day` int(1) DEFAULT NULL,
  `event_start` datetime DEFAULT NULL,
  `event_end` datetime DEFAULT NULL,
  `event_timezone` text COLLATE utf8mb4_unicode_ci,
  `post_content` longtext COLLATE utf8mb4_unicode_ci,
  `event_rsvp` tinyint(1) NOT NULL DEFAULT '0',
  `event_rsvp_date` date DEFAULT NULL,
  `event_rsvp_time` time DEFAULT NULL,
  `event_rsvp_spaces` int(5) DEFAULT NULL,
  `event_spaces` int(5) DEFAULT '0',
  `event_private` tinyint(1) NOT NULL DEFAULT '0',
  `location_id` bigint(20) UNSIGNED DEFAULT NULL,
  `recurrence_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event_date_created` datetime DEFAULT NULL,
  `event_date_modified` datetime DEFAULT NULL,
  `recurrence` tinyint(1) DEFAULT '0',
  `recurrence_interval` int(4) DEFAULT NULL,
  `recurrence_freq` text COLLATE utf8mb4_unicode_ci,
  `recurrence_byday` text COLLATE utf8mb4_unicode_ci,
  `recurrence_byweekno` int(4) DEFAULT NULL,
  `recurrence_days` int(4) DEFAULT NULL,
  `recurrence_rsvp_days` int(3) DEFAULT NULL,
  `blog_id` bigint(20) UNSIGNED DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_em_locations`
--

CREATE TABLE `wp_em_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED DEFAULT NULL,
  `location_slug` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_name` mediumtext COLLATE utf8mb4_unicode_ci,
  `location_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `location_address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_town` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_state` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_region` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_country` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_latitude` float(10,6) DEFAULT NULL,
  `location_longitude` float(10,6) DEFAULT NULL,
  `post_content` longtext COLLATE utf8mb4_unicode_ci,
  `location_status` int(1) DEFAULT NULL,
  `location_private` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_em_meta`
--

CREATE TABLE `wp_em_meta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  `meta_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_em_tickets`
--

CREATE TABLE `wp_em_tickets` (
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `ticket_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `ticket_price` decimal(14,4) DEFAULT NULL,
  `ticket_start` datetime DEFAULT NULL,
  `ticket_end` datetime DEFAULT NULL,
  `ticket_min` int(10) DEFAULT NULL,
  `ticket_max` int(10) DEFAULT NULL,
  `ticket_spaces` int(11) DEFAULT NULL,
  `ticket_members` int(1) DEFAULT NULL,
  `ticket_members_roles` longtext COLLATE utf8mb4_unicode_ci,
  `ticket_guests` int(1) DEFAULT NULL,
  `ticket_required` int(1) DEFAULT NULL,
  `ticket_meta` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_em_tickets_bookings`
--

CREATE TABLE `wp_em_tickets_bookings` (
  `ticket_booking_id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `ticket_booking_spaces` int(6) NOT NULL,
  `ticket_booking_price` decimal(14,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Table structure for table `wp_my_calendar`
--

CREATE TABLE `wp_my_calendar` (
  `event_id` int(11) NOT NULL,
  `event_begin` date NOT NULL,
  `event_end` date NOT NULL,
  `event_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_short` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_registration` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_tickets` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_time` time DEFAULT NULL,
  `event_endtime` time DEFAULT NULL,
  `event_recur` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_repeats` int(3) DEFAULT NULL,
  `event_status` int(1) NOT NULL DEFAULT '1',
  `event_author` bigint(20) UNSIGNED DEFAULT NULL,
  `event_host` bigint(20) UNSIGNED DEFAULT NULL,
  `event_category` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `event_link` text COLLATE utf8mb4_unicode_ci,
  `event_post` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `event_link_expires` tinyint(1) NOT NULL,
  `event_location` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `event_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_street2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_postcode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_url` text COLLATE utf8mb4_unicode_ci,
  `event_longitude` float(10,6) NOT NULL DEFAULT '0.000000',
  `event_latitude` float(10,6) NOT NULL DEFAULT '0.000000',
  `event_zoom` int(2) NOT NULL DEFAULT '14',
  `event_phone` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_phone2` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_access` text COLLATE utf8mb4_unicode_ci,
  `event_group_id` int(11) NOT NULL DEFAULT '0',
  `event_span` int(1) NOT NULL DEFAULT '0',
  `event_approved` int(1) NOT NULL DEFAULT '1',
  `event_flagged` int(1) NOT NULL DEFAULT '0',
  `event_hide_end` int(1) NOT NULL DEFAULT '0',
  `event_holiday` int(1) NOT NULL DEFAULT '0',
  `event_fifth_week` int(1) NOT NULL DEFAULT '0',
  `event_image` text COLLATE utf8mb4_unicode_ci,
  `event_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_my_calendar_categories`
--

CREATE TABLE `wp_my_calendar_categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_color` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_icon` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_private` int(1) NOT NULL DEFAULT '0',
  `category_term` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_my_calendar_categories`
--

INSERT INTO `wp_my_calendar_categories` (`category_id`, `category_name`, `category_color`, `category_icon`, `category_private`, `category_term`) VALUES
(1, 'General', '#ffffcc', 'event.png', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_my_calendar_category_relationships`
--

CREATE TABLE `wp_my_calendar_category_relationships` (
  `relationship_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_my_calendar_events`
--

CREATE TABLE `wp_my_calendar_events` (
  `occur_id` int(11) NOT NULL,
  `occur_event_id` int(11) NOT NULL,
  `occur_begin` datetime NOT NULL,
  `occur_end` datetime NOT NULL,
  `occur_group_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_my_calendar_locations`
--

CREATE TABLE `wp_my_calendar_locations` (
  `location_id` int(11) NOT NULL,
  `location_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_street2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_postcode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_url` text COLLATE utf8mb4_unicode_ci,
  `location_country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_longitude` float(10,6) NOT NULL DEFAULT '0.000000',
  `location_latitude` float(10,6) NOT NULL DEFAULT '0.000000',
  `location_zoom` int(2) NOT NULL DEFAULT '14',
  `location_phone` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_phone2` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_access` text COLLATE utf8mb4_unicode_ci
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
(1, 'siteurl', 'https://goldenhealthcarevn.com', 'yes'),
(2, 'home', 'https://goldenhealthcarevn.com', 'yes'),
(3, 'blogname', '[:vi]PHÒNG KHÁM ĐA KHOA QUỐC TẾ GOLDEN HEALTHCARE[:en]Health care[:]', 'yes'),
(4, 'blogdescription', '[:vi]PHÒNG KHÁM ĐA KHOA QUỐC TẾ GOLDEN HEALTHCARE[:en]Một trang web mới sử dụng WordPress[:]', 'yes'),
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
(29, 'rewrite_rules', 'a:249:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:11:\"question/?$\";s:33:\"index.php?post_type=dwqa-question\";s:41:\"question/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=dwqa-question&feed=$matches[1]\";s:36:\"question/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=dwqa-question&feed=$matches[1]\";s:28:\"question/page/([0-9]{1,})/?$\";s:51:\"index.php?post_type=dwqa-question&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:59:\"chuyen_muc_hoat_dong/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?chuyen_muc_hoat_dong=$matches[1]&feed=$matches[2]\";s:54:\"chuyen_muc_hoat_dong/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?chuyen_muc_hoat_dong=$matches[1]&feed=$matches[2]\";s:35:\"chuyen_muc_hoat_dong/(.+?)/embed/?$\";s:53:\"index.php?chuyen_muc_hoat_dong=$matches[1]&embed=true\";s:47:\"chuyen_muc_hoat_dong/(.+?)/page/?([0-9]{1,})/?$\";s:60:\"index.php?chuyen_muc_hoat_dong=$matches[1]&paged=$matches[2]\";s:29:\"chuyen_muc_hoat_dong/(.+?)/?$\";s:42:\"index.php?chuyen_muc_hoat_dong=$matches[1]\";s:53:\"tab_services/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?tab_services=$matches[1]&feed=$matches[2]\";s:48:\"tab_services/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?tab_services=$matches[1]&feed=$matches[2]\";s:29:\"tab_services/([^/]+)/embed/?$\";s:45:\"index.php?tab_services=$matches[1]&embed=true\";s:41:\"tab_services/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?tab_services=$matches[1]&paged=$matches[2]\";s:23:\"tab_services/([^/]+)/?$\";s:34:\"index.php?tab_services=$matches[1]\";s:46:\"slide_introduction/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:56:\"slide_introduction/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:76:\"slide_introduction/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"slide_introduction/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"slide_introduction/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:52:\"slide_introduction/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"slide_introduction/([^/]+)/embed/?$\";s:51:\"index.php?slide_introduction=$matches[1]&embed=true\";s:39:\"slide_introduction/([^/]+)/trackback/?$\";s:45:\"index.php?slide_introduction=$matches[1]&tb=1\";s:47:\"slide_introduction/([^/]+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?slide_introduction=$matches[1]&paged=$matches[2]\";s:54:\"slide_introduction/([^/]+)/comment-page-([0-9]{1,})/?$\";s:58:\"index.php?slide_introduction=$matches[1]&cpage=$matches[2]\";s:43:\"slide_introduction/([^/]+)(?:/([0-9]+))?/?$\";s:57:\"index.php?slide_introduction=$matches[1]&page=$matches[2]\";s:35:\"slide_introduction/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"slide_introduction/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"slide_introduction/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"slide_introduction/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"slide_introduction/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"slide_introduction/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"dich_vu/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"dich_vu/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"dich_vu/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"dich_vu/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"dich_vu/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"dich_vu/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"dich_vu/([^/]+)/embed/?$\";s:40:\"index.php?dich_vu=$matches[1]&embed=true\";s:28:\"dich_vu/([^/]+)/trackback/?$\";s:34:\"index.php?dich_vu=$matches[1]&tb=1\";s:36:\"dich_vu/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?dich_vu=$matches[1]&paged=$matches[2]\";s:43:\"dich_vu/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?dich_vu=$matches[1]&cpage=$matches[2]\";s:32:\"dich_vu/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?dich_vu=$matches[1]&page=$matches[2]\";s:24:\"dich_vu/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"dich_vu/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"dich_vu/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"dich_vu/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"dich_vu/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"dich_vu/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"hoat_dong/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"hoat_dong/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"hoat_dong/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"hoat_dong/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"hoat_dong/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"hoat_dong/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"hoat_dong/([^/]+)/embed/?$\";s:42:\"index.php?hoat_dong=$matches[1]&embed=true\";s:30:\"hoat_dong/([^/]+)/trackback/?$\";s:36:\"index.php?hoat_dong=$matches[1]&tb=1\";s:38:\"hoat_dong/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?hoat_dong=$matches[1]&paged=$matches[2]\";s:45:\"hoat_dong/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?hoat_dong=$matches[1]&cpage=$matches[2]\";s:34:\"hoat_dong/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?hoat_dong=$matches[1]&page=$matches[2]\";s:26:\"hoat_dong/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"hoat_dong/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"hoat_dong/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"hoat_dong/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"hoat_dong/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"hoat_dong/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"hinh_anh/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"hinh_anh/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"hinh_anh/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"hinh_anh/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"hinh_anh/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"hinh_anh/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"hinh_anh/([^/]+)/embed/?$\";s:41:\"index.php?hinh_anh=$matches[1]&embed=true\";s:29:\"hinh_anh/([^/]+)/trackback/?$\";s:35:\"index.php?hinh_anh=$matches[1]&tb=1\";s:37:\"hinh_anh/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?hinh_anh=$matches[1]&paged=$matches[2]\";s:44:\"hinh_anh/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?hinh_anh=$matches[1]&cpage=$matches[2]\";s:33:\"hinh_anh/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?hinh_anh=$matches[1]&page=$matches[2]\";s:25:\"hinh_anh/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"hinh_anh/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"hinh_anh/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"hinh_anh/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"hinh_anh/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"hinh_anh/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"tu_van/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"tu_van/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"tu_van/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"tu_van/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"tu_van/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"tu_van/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"tu_van/([^/]+)/embed/?$\";s:39:\"index.php?tu_van=$matches[1]&embed=true\";s:27:\"tu_van/([^/]+)/trackback/?$\";s:33:\"index.php?tu_van=$matches[1]&tb=1\";s:35:\"tu_van/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?tu_van=$matches[1]&paged=$matches[2]\";s:42:\"tu_van/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?tu_van=$matches[1]&cpage=$matches[2]\";s:31:\"tu_van/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?tu_van=$matches[1]&page=$matches[2]\";s:23:\"tu_van/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"tu_van/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"tu_van/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"tu_van/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"tu_van/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"tu_van/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"doi_tac/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"doi_tac/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"doi_tac/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"doi_tac/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"doi_tac/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"doi_tac/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"doi_tac/([^/]+)/embed/?$\";s:40:\"index.php?doi_tac=$matches[1]&embed=true\";s:28:\"doi_tac/([^/]+)/trackback/?$\";s:34:\"index.php?doi_tac=$matches[1]&tb=1\";s:36:\"doi_tac/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?doi_tac=$matches[1]&paged=$matches[2]\";s:43:\"doi_tac/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?doi_tac=$matches[1]&cpage=$matches[2]\";s:32:\"doi_tac/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?doi_tac=$matches[1]&page=$matches[2]\";s:24:\"doi_tac/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"doi_tac/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"doi_tac/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"doi_tac/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"doi_tac/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"doi_tac/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:56:\"question/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?dwqa-question_category=$matches[1]&feed=$matches[2]\";s:51:\"question/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:61:\"index.php?dwqa-question_category=$matches[1]&feed=$matches[2]\";s:32:\"question/category/(.+?)/embed/?$\";s:55:\"index.php?dwqa-question_category=$matches[1]&embed=true\";s:44:\"question/category/(.+?)/page/?([0-9]{1,})/?$\";s:62:\"index.php?dwqa-question_category=$matches[1]&paged=$matches[2]\";s:26:\"question/category/(.+?)/?$\";s:44:\"index.php?dwqa-question_category=$matches[1]\";s:53:\"question/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?dwqa-question_tag=$matches[1]&feed=$matches[2]\";s:48:\"question/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?dwqa-question_tag=$matches[1]&feed=$matches[2]\";s:29:\"question/tag/([^/]+)/embed/?$\";s:50:\"index.php?dwqa-question_tag=$matches[1]&embed=true\";s:41:\"question/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?dwqa-question_tag=$matches[1]&paged=$matches[2]\";s:23:\"question/tag/([^/]+)/?$\";s:39:\"index.php?dwqa-question_tag=$matches[1]\";s:36:\"question/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"question/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"question/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"question/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"question/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"question/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"question/([^/]+)/embed/?$\";s:46:\"index.php?dwqa-question=$matches[1]&embed=true\";s:29:\"question/([^/]+)/trackback/?$\";s:40:\"index.php?dwqa-question=$matches[1]&tb=1\";s:49:\"question/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?dwqa-question=$matches[1]&feed=$matches[2]\";s:44:\"question/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?dwqa-question=$matches[1]&feed=$matches[2]\";s:37:\"question/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?dwqa-question=$matches[1]&paged=$matches[2]\";s:44:\"question/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?dwqa-question=$matches[1]&cpage=$matches[2]\";s:33:\"question/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?dwqa-question=$matches[1]&page=$matches[2]\";s:25:\"question/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"question/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"question/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"question/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"question/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"question/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"dwqa-answer/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"dwqa-answer/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"dwqa-answer/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"dwqa-answer/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"dwqa-answer/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"dwqa-answer/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"dwqa-answer/([^/]+)/embed/?$\";s:44:\"index.php?dwqa-answer=$matches[1]&embed=true\";s:32:\"dwqa-answer/([^/]+)/trackback/?$\";s:38:\"index.php?dwqa-answer=$matches[1]&tb=1\";s:40:\"dwqa-answer/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?dwqa-answer=$matches[1]&paged=$matches[2]\";s:47:\"dwqa-answer/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?dwqa-answer=$matches[1]&cpage=$matches[2]\";s:36:\"dwqa-answer/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?dwqa-answer=$matches[1]&page=$matches[2]\";s:28:\"dwqa-answer/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"dwqa-answer/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"dwqa-answer/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"dwqa-answer/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"dwqa-answer/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"dwqa-answer/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:8:{i:0;s:33:\"acf-qtranslate/acf-qtranslate.php\";i:1;s:34:\"advanced-custom.php-fields-pro/acf.php\";i:2;s:43:\"custom.php-post-type-ui/custom.php-post-type-ui.php\";i:3;s:41:\"dw-question-answer/dw-question-answer.php\";i:4;s:29:\"image-widget/image-widget.php\";i:5;s:27:\"qtranslate-x/qtranslate.php\";i:6;s:53:\"simple-custom.php-post-order/simple-custom.php-post-order.php\";i:7;s:27:\"wp-pagenavi/wp-pagenavi.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:87:\"D:\\Projects\\BV02\\Healthcare\\source/wp-content/plugins/acf-qtranslate/acf-qtranslate.php\";i:1;s:0:\"\";}', 'no'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:3:{s:41:\"wp-scheduled-posts/wp-scheduled-posts.php\";s:9:\"uninstall\";s:27:\"wp-pagenavi/wp-pagenavi.php\";s:14:\"__return_false\";s:53:\"simple-custom.php-post-order/simple-custom.php-post-order.php\";s:18:\"scporder_uninstall\";}', 'no'),
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
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:106:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:22:\"dwqa_can_read_question\";b:1;s:22:\"dwqa_can_post_question\";b:1;s:22:\"dwqa_can_edit_question\";b:1;s:24:\"dwqa_can_delete_question\";b:1;s:20:\"dwqa_can_read_answer\";b:1;s:20:\"dwqa_can_post_answer\";b:1;s:20:\"dwqa_can_edit_answer\";b:1;s:22:\"dwqa_can_delete_answer\";b:1;s:21:\"dwqa_can_read_comment\";b:1;s:21:\"dwqa_can_post_comment\";b:1;s:21:\"dwqa_can_edit_comment\";b:1;s:23:\"dwqa_can_delete_comment\";b:1;s:13:\"mc_add_events\";b:1;s:17:\"mc_approve_events\";b:1;s:16:\"mc_manage_events\";b:1;s:12:\"mc_edit_cats\";b:1;s:14:\"mc_edit_styles\";b:1;s:17:\"mc_edit_behaviors\";b:1;s:17:\"mc_edit_templates\";b:1;s:16:\"mc_edit_settings\";b:1;s:17:\"mc_edit_locations\";b:1;s:12:\"mc_view_help\";b:1;s:14:\"publish_events\";b:1;s:20:\"delete_others_events\";b:1;s:18:\"edit_others_events\";b:1;s:22:\"manage_others_bookings\";b:1;s:24:\"publish_recurring_events\";b:1;s:30:\"delete_others_recurring_events\";b:1;s:28:\"edit_others_recurring_events\";b:1;s:17:\"publish_locations\";b:1;s:23:\"delete_others_locations\";b:1;s:16:\"delete_locations\";b:1;s:21:\"edit_others_locations\";b:1;s:23:\"delete_event_categories\";b:1;s:21:\"edit_event_categories\";b:1;s:15:\"manage_bookings\";b:1;s:19:\"upload_event_images\";b:1;s:13:\"delete_events\";b:1;s:11:\"edit_events\";b:1;s:19:\"read_private_events\";b:1;s:23:\"delete_recurring_events\";b:1;s:21:\"edit_recurring_events\";b:1;s:14:\"edit_locations\";b:1;s:22:\"read_private_locations\";b:1;s:21:\"read_others_locations\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:69:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:22:\"dwqa_can_read_question\";b:1;s:22:\"dwqa_can_post_question\";b:1;s:22:\"dwqa_can_edit_question\";b:1;s:24:\"dwqa_can_delete_question\";b:1;s:20:\"dwqa_can_read_answer\";b:1;s:20:\"dwqa_can_post_answer\";b:1;s:20:\"dwqa_can_edit_answer\";b:1;s:22:\"dwqa_can_delete_answer\";b:1;s:21:\"dwqa_can_read_comment\";b:1;s:21:\"dwqa_can_post_comment\";b:1;s:21:\"dwqa_can_edit_comment\";b:1;s:23:\"dwqa_can_delete_comment\";b:1;s:14:\"publish_events\";b:1;s:20:\"delete_others_events\";b:1;s:18:\"edit_others_events\";b:1;s:22:\"manage_others_bookings\";b:1;s:24:\"publish_recurring_events\";b:1;s:30:\"delete_others_recurring_events\";b:1;s:28:\"edit_others_recurring_events\";b:1;s:17:\"publish_locations\";b:1;s:23:\"delete_others_locations\";b:1;s:16:\"delete_locations\";b:1;s:21:\"edit_others_locations\";b:1;s:23:\"delete_event_categories\";b:1;s:21:\"edit_event_categories\";b:1;s:15:\"manage_bookings\";b:1;s:19:\"upload_event_images\";b:1;s:13:\"delete_events\";b:1;s:11:\"edit_events\";b:1;s:19:\"read_private_events\";b:1;s:23:\"delete_recurring_events\";b:1;s:21:\"edit_recurring_events\";b:1;s:14:\"edit_locations\";b:1;s:22:\"read_private_locations\";b:1;s:21:\"read_others_locations\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:26:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:22:\"dwqa_can_read_question\";b:1;s:22:\"dwqa_can_post_question\";b:1;s:20:\"dwqa_can_read_answer\";b:1;s:20:\"dwqa_can_post_answer\";b:1;s:21:\"dwqa_can_read_comment\";b:1;s:21:\"dwqa_can_post_comment\";b:1;s:15:\"manage_bookings\";b:1;s:19:\"upload_event_images\";b:1;s:13:\"delete_events\";b:1;s:11:\"edit_events\";b:1;s:19:\"read_private_events\";b:1;s:23:\"delete_recurring_events\";b:1;s:21:\"edit_recurring_events\";b:1;s:14:\"edit_locations\";b:1;s:22:\"read_private_locations\";b:1;s:21:\"read_others_locations\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:21:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"dwqa_can_read_question\";b:1;s:22:\"dwqa_can_post_question\";b:1;s:20:\"dwqa_can_read_answer\";b:1;s:20:\"dwqa_can_post_answer\";b:1;s:21:\"dwqa_can_read_comment\";b:1;s:21:\"dwqa_can_post_comment\";b:1;s:15:\"manage_bookings\";b:1;s:19:\"upload_event_images\";b:1;s:13:\"delete_events\";b:1;s:11:\"edit_events\";b:1;s:19:\"read_private_events\";b:1;s:23:\"delete_recurring_events\";b:1;s:21:\"edit_recurring_events\";b:1;s:14:\"edit_locations\";b:1;s:22:\"read_private_locations\";b:1;s:21:\"read_others_locations\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:10:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;s:22:\"dwqa_can_read_question\";b:1;s:22:\"dwqa_can_post_question\";b:1;s:20:\"dwqa_can_read_answer\";b:1;s:20:\"dwqa_can_post_answer\";b:1;s:21:\"dwqa_can_read_comment\";b:1;s:21:\"dwqa_can_post_comment\";b:1;s:22:\"read_private_locations\";b:1;s:19:\"read_private_events\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'vi', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'nonce_key', 'E7(1-quX1aV(Xxqo<Wx<( ZnJa_CtR{D]^O>k6jRoL JV,,bYyh2w|TzKHmzn?<#', 'no'),
(110, 'nonce_salt', '*dv#dQ(&b!3m{*xlTE2?F]%c3v5Il1cT)P(@RP}E!Jd>bC[ye({e4^LZ=cO-,a]h', 'no'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'cron', 'a:9:{i:1546780693;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1546783655;a:1:{s:17:\"dwqa_hourly_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1546813093;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1546813094;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1546844584;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1546849133;a:1:{s:20:\"put_do_weekly_action\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1546856315;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1546856316;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(115, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1544437310;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(125, 'auth_key', 'c,.Ub4CO3k`0p)p%0!,Xg=91=h~Al;C,9cjFg5F: 3,*-d/=@sVAN_U<^efN#/#;', 'no'),
(126, 'auth_salt', 'sM2h[TyyJ.r#,M@(`@=]{6J/SI7F.Ku4@jIK(5%m{d#>M)f%N/U9?ZaW6m?d<r :', 'no'),
(127, 'logged_in_key', 'mSRt|JKwo/6i^@N9I#VK8_q,12+_ b[XyBvlIs+pNPR?kwQ?t[BOmR6E=0k6MPH2', 'no'),
(128, 'logged_in_salt', 'luE/F>P8 s}rAC*%-&mku)2hC`qdFDxr5fc8b[tMv1zKh&/_A&v7{a)NdFa0bkfx', 'no'),
(134, 'can_compress_scripts', '1', 'no'),
(150, 'current_theme', 'Healthcare Theme', 'yes'),
(151, 'theme_mods_healthcare', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"header_menu\";i:2;s:13:\"primary_menus\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(152, 'theme_switched', '', 'yes'),
(214, 'recently_activated', 'a:0:{}', 'yes'),
(221, 'cptui_new_install', 'false', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(222, 'cptui_post_types', 'a:6:{s:18:\"slide_introduction\";a:29:{s:4:\"name\";s:18:\"slide_introduction\";s:5:\"label\";s:11:\"Slider home\";s:14:\"singular_label\";s:18:\"slide_introduction\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:6:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:13:\"custom.php-fields\";i:4;s:15:\"page-attributes\";i:5;s:12:\"post-formats\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:7:\"dich_vu\";a:29:{s:4:\"name\";s:7:\"dich_vu\";s:5:\"label\";s:11:\"Dịch Vụ\";s:14:\"singular_label\";s:11:\"Dịch Vụ\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:1:{i:0;s:12:\"tab_services\";}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:9:\"hoat_dong\";a:29:{s:4:\"name\";s:9:\"hoat_dong\";s:5:\"label\";s:14:\"Hoạt Động\";s:14:\"singular_label\";s:14:\"Hoạt Động\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:1:{i:0;s:20:\"chuyen_muc_hoat_dong\";}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:8:\"hinh_anh\";a:29:{s:4:\"name\";s:8:\"hinh_anh\";s:5:\"label\";s:11:\"Hình Ảnh\";s:14:\"singular_label\";s:11:\"Hình Ảnh\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:6:\"tu_van\";a:29:{s:4:\"name\";s:6:\"tu_van\";s:5:\"label\";s:9:\"Tư Vấn\";s:14:\"singular_label\";s:9:\"Tư Vấn\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:7:\"doi_tac\";a:29:{s:4:\"name\";s:7:\"doi_tac\";s:5:\"label\";s:11:\"Đối tác\";s:14:\"singular_label\";s:11:\"Đối tác\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:24:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(229, 'acf_version', '5.6.1', 'yes'),
(286, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(296, 'qtranslate_admin_notices', 'a:3:{s:11:\"next_thanks\";i:1544773026;s:15:\"initial-install\";i:1545663222;s:26:\"survey-translation-service\";i:1545663222;}', 'yes'),
(297, 'qtranslate_enabled_languages', 'a:2:{i:0;s:2:\"vi\";i:1;s:2:\"en\";}', 'yes'),
(298, 'qtranslate_default_language', 'vi', 'yes'),
(299, 'qtranslate_version_previous', '34680', 'yes'),
(300, 'qtranslate_versions', 'a:2:{i:34680;i:1544773026;s:1:\"l\";i:1544773026;}', 'yes'),
(301, 'qtranslate_admin_config', 'a:7:{s:4:\"post\";a:4:{s:5:\"pages\";a:2:{s:8:\"post.php\";s:0:\"\";s:12:\"post-new.php\";s:0:\"\";}s:7:\"anchors\";a:1:{s:17:\"post-body-content\";a:1:{s:5:\"where\";s:10:\"first last\";}}s:5:\"forms\";a:2:{s:4:\"post\";a:1:{s:6:\"fields\";a:8:{s:5:\"title\";a:0:{}s:7:\"excerpt\";a:0:{}s:18:\"attachment_caption\";a:0:{}s:14:\"attachment_alt\";a:0:{}s:13:\"view-post-btn\";a:1:{s:6:\"encode\";s:7:\"display\";}s:14:\"wp-editor-area\";a:1:{s:6:\"jquery\";s:15:\".wp-editor-area\";}s:15:\"gallery-caption\";a:2:{s:6:\"jquery\";s:16:\".gallery-caption\";s:6:\"encode\";s:4:\"none\";}s:15:\"wp-caption-text\";a:2:{s:6:\"jquery\";s:16:\".wp-caption-text\";s:6:\"encode\";s:7:\"display\";}}}s:14:\"wpbody-content\";a:1:{s:6:\"fields\";a:2:{s:7:\"wrap-h1\";a:2:{s:6:\"jquery\";s:8:\".wrap h1\";s:6:\"encode\";s:7:\"display\";}s:7:\"wrap-h2\";a:2:{s:6:\"jquery\";s:8:\".wrap h2\";s:6:\"encode\";s:7:\"display\";}}}}s:7:\"js-exec\";a:1:{s:9:\"post-exec\";a:1:{s:3:\"src\";s:27:\"./admin/js/post-exec.min.js\";}}}s:15:\"options-general\";a:3:{s:14:\"preg_delimiter\";s:1:\"#\";s:5:\"pages\";a:1:{s:19:\"options-general.php\";s:21:\"^(?!.*page=[^=&]+).*$\";}s:5:\"forms\";a:1:{s:7:\"options\";a:1:{s:6:\"fields\";a:3:{s:8:\"blogname\";a:0:{}s:15:\"blogdescription\";a:0:{}s:10:\"head-title\";a:2:{s:6:\"jquery\";s:10:\"head title\";s:6:\"encode\";s:7:\"display\";}}}}}s:7:\"widgets\";a:4:{s:5:\"pages\";a:1:{s:11:\"widgets.php\";s:0:\"\";}s:7:\"anchors\";a:1:{s:13:\"widgets-right\";a:1:{s:5:\"where\";s:12:\"before after\";}}s:5:\"forms\";a:1:{s:13:\"widgets-right\";a:1:{s:6:\"fields\";a:3:{s:12:\"widget-title\";a:1:{s:6:\"jquery\";s:34:\"input[id^=\'widget-\'][id$=\'-title\']\";}s:16:\"widget-text-text\";a:1:{s:6:\"jquery\";s:41:\"textarea[id^=\'widget-text-\'][id$=\'-text\']\";}s:15:\"in-widget-title\";a:2:{s:6:\"jquery\";s:20:\"span.in-widget-title\";s:6:\"encode\";s:7:\"display\";}}}}s:7:\"js-exec\";a:1:{s:12:\"widgets-exec\";a:1:{s:3:\"src\";s:30:\"./admin/js/widgets-exec.min.js\";}}}s:8:\"edit-tag\";a:3:{s:5:\"pages\";a:2:{s:8:\"term.php\";s:0:\"\";s:13:\"edit-tags.php\";s:11:\"action=edit\";}s:5:\"forms\";a:1:{s:7:\"edittag\";a:1:{s:6:\"fields\";a:3:{s:4:\"name\";a:0:{}s:11:\"description\";a:0:{}s:6:\"parent\";a:1:{s:6:\"encode\";s:7:\"display\";}}}}s:7:\"js-exec\";a:1:{s:13:\"edit-tag-exec\";a:1:{s:3:\"src\";s:31:\"./admin/js/edit-tag-exec.min.js\";}}}s:9:\"edit-tags\";a:5:{s:14:\"preg_delimiter\";s:1:\"#\";s:5:\"pages\";a:1:{s:13:\"edit-tags.php\";s:21:\"^(?!.*action=edit).*$\";}s:7:\"anchors\";a:1:{s:12:\"posts-filter\";a:1:{s:5:\"where\";s:12:\"before after\";}}s:5:\"forms\";a:3:{s:6:\"addtag\";a:1:{s:6:\"fields\";a:3:{s:8:\"tag-name\";a:0:{}s:15:\"tag-description\";a:0:{}s:6:\"parent\";a:1:{s:6:\"encode\";s:7:\"display\";}}}s:8:\"col-left\";a:1:{s:6:\"fields\";a:1:{s:8:\"tagcloud\";a:2:{s:6:\"jquery\";s:13:\".tagcloud > a\";s:6:\"encode\";s:7:\"display\";}}}s:8:\"the-list\";a:1:{s:6:\"fields\";a:2:{s:9:\"row-title\";a:2:{s:6:\"jquery\";s:10:\".row-title\";s:6:\"encode\";s:7:\"display\";}s:11:\"description\";a:2:{s:6:\"jquery\";s:12:\".description\";s:6:\"encode\";s:7:\"display\";}}}}s:7:\"js-exec\";a:1:{s:14:\"edit-tags-exec\";a:1:{s:3:\"src\";s:32:\"./admin/js/edit-tags-exec.min.js\";}}}s:9:\"nav-menus\";a:4:{s:5:\"pages\";a:1:{s:13:\"nav-menus.php\";s:23:\"action=edit|menu=\\d+|^$\";}s:7:\"anchors\";a:1:{s:12:\"menu-to-edit\";a:1:{s:5:\"where\";s:12:\"before after\";}}s:5:\"forms\";a:2:{s:15:\"update-nav-menu\";a:1:{s:6:\"fields\";a:5:{s:5:\"title\";a:1:{s:6:\"jquery\";s:27:\"[id^=edit-menu-item-title-]\";}s:10:\"attr-title\";a:1:{s:6:\"jquery\";s:32:\"[id^=edit-menu-item-attr-title-]\";}s:11:\"description\";a:1:{s:6:\"jquery\";s:33:\"[id^=edit-menu-item-description-]\";}s:10:\"span.title\";a:2:{s:6:\"jquery\";s:20:\"span.menu-item-title\";s:6:\"encode\";s:7:\"display\";}s:16:\"link-to-original\";a:2:{s:6:\"jquery\";s:20:\".link-to-original >a\";s:6:\"encode\";s:7:\"display\";}}}s:14:\"side-sortables\";a:1:{s:6:\"fields\";a:2:{s:11:\"label.title\";a:2:{s:6:\"jquery\";s:21:\"label.menu-item-title\";s:6:\"encode\";s:7:\"display\";}s:23:\"accordion-section-title\";a:2:{s:6:\"jquery\";s:26:\"h3.accordion-section-title\";s:6:\"encode\";s:7:\"display\";}}}}s:7:\"js-exec\";a:1:{s:14:\"nav-menus-exec\";a:1:{s:3:\"src\";s:32:\"./admin/js/nav-menus-exec.min.js\";}}}s:9:\"all-pages\";a:1:{s:7:\"filters\";a:1:{s:4:\"text\";a:1:{s:11:\"admin_title\";s:2:\"20\";}}}}', 'yes'),
(302, 'qtranslate_front_config', 'a:1:{s:9:\"all-pages\";a:1:{s:7:\"filters\";a:3:{s:4:\"text\";a:11:{s:12:\"widget_title\";s:2:\"20\";s:11:\"widget_text\";s:2:\"20\";s:9:\"the_title\";s:2:\"20\";s:20:\"category_description\";s:2:\"20\";s:9:\"list_cats\";s:2:\"20\";s:16:\"wp_dropdown_cats\";s:2:\"20\";s:9:\"term_name\";s:2:\"20\";s:18:\"get_comment_author\";s:2:\"20\";s:10:\"the_author\";s:2:\"20\";s:9:\"tml_title\";s:2:\"20\";s:16:\"term_description\";s:2:\"20\";}s:4:\"term\";a:10:{s:7:\"cat_row\";s:1:\"0\";s:8:\"cat_rows\";s:1:\"0\";s:19:\"wp_get_object_terms\";s:1:\"0\";s:16:\"single_cat_title\";s:1:\"0\";s:16:\"single_tag_title\";s:1:\"0\";s:17:\"single_term_title\";s:1:\"0\";s:12:\"the_category\";s:1:\"0\";s:8:\"get_term\";s:1:\"0\";s:9:\"get_terms\";s:1:\"0\";s:12:\"get_category\";s:1:\"0\";}s:3:\"url\";a:16:{s:16:\"author_feed_link\";s:2:\"10\";s:11:\"author_link\";s:2:\"10\";s:27:\"get_comment_author_url_link\";s:2:\"10\";s:23:\"post_comments_feed_link\";s:2:\"10\";s:8:\"day_link\";s:2:\"10\";s:10:\"month_link\";s:2:\"10\";s:9:\"year_link\";s:2:\"10\";s:9:\"page_link\";s:2:\"10\";s:9:\"post_link\";s:2:\"10\";s:13:\"category_link\";s:2:\"10\";s:18:\"category_feed_link\";s:2:\"10\";s:8:\"tag_link\";s:2:\"10\";s:9:\"term_link\";s:2:\"10\";s:13:\"the_permalink\";s:2:\"10\";s:9:\"feed_link\";s:2:\"10\";s:13:\"tag_feed_link\";s:2:\"10\";}}}}', 'yes'),
(303, 'widget_qtranslate', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(304, 'qtranslate_next_thanks', '1564990628', 'yes'),
(305, 'qtranslate_next_update_mo', '1547138312', 'yes'),
(306, 'qtranslate_ignore_file_types', 'gif,jpg,jpeg,png,svg,pdf,swf,tif,rar,zip,7z,mpg,divx,mpeg,avi,css,js,mp3,mp4,apk', 'yes'),
(307, 'acf_qtranslate', 'a:3:{s:30:\"translate_standard_field_types\";s:1:\"1\";s:18:\"show_language_tabs\";s:1:\"1\";s:13:\"show_on_pages\";s:0:\"\";}', 'yes'),
(312, 'options_header_logo', '175', 'no'),
(313, '_options_header_logo', 'field_5c13669b3a947', 'no'),
(331, 'qtranslate_term_name', 'a:23:{s:43:\"Khoa Khám &amp; Điều Trị Ngoại Trú\";a:2:{s:2:\"vi\";s:43:\"Khoa Khám &amp; Điều Trị Ngoại Trú\";s:2:\"en\";s:0:\"\";}s:8:\"Khoa Tim\";a:2:{s:2:\"vi\";s:8:\"Khoa Tim\";s:2:\"en\";s:5:\"Heart\";}s:15:\"Khoa tiêu hóa\";a:2:{s:2:\"vi\";s:15:\"Khoa tiêu hóa\";s:2:\"en\";s:16:\"Gastroenterology\";}s:16:\"Khoa Sàng Lọc\";a:2:{s:2:\"vi\";s:16:\"Khoa Sàng Lọc\";s:2:\"en\";s:32:\"Health Screening &amp; Promotion\";}s:20:\"Khoa tai mũi họng\";a:2:{s:2:\"vi\";s:20:\"Khoa tai mũi họng\";s:2:\"en\";s:19:\"Otorhinolaryngology\";}s:10:\"Khoa Mắt\";a:2:{s:2:\"vi\";s:10:\"Khoa Mắt\";s:2:\"en\";s:13:\"Ophthalmology\";}s:20:\"Khoa Chấn Thương\";a:2:{s:2:\"vi\";s:20:\"Khoa Chấn Thương\";s:2:\"en\";s:11:\"Orthopedics\";}s:12:\"Nội tiết\";a:2:{s:2:\"vi\";s:12:\"Nội tiết\";s:2:\"en\";s:13:\"Endocrinology\";}s:26:\"Phẫu Thuật Thẩm Mỹ\";a:2:{s:2:\"vi\";s:26:\"Phẫu Thuật Thẩm Mỹ\";s:2:\"en\";s:15:\"Plastic Surgery\";}s:11:\"Khoa Thận\";a:2:{s:2:\"vi\";s:11:\"Khoa Thận\";s:2:\"en\";s:18:\"Nephrology Urology\";}s:8:\"Khoa Nhi\";a:2:{s:2:\"vi\";s:8:\"Khoa Nhi\";s:2:\"en\";s:10:\"Pediatrics\";}s:25:\"Sản Khoa Và Phụ Khoa\";a:2:{s:2:\"vi\";s:25:\"Sản Khoa Và Phụ Khoa\";s:2:\"en\";s:25:\"Obstetrics and Gynecology\";}s:17:\"Khoa Tổng Quát\";a:2:{s:2:\"vi\";s:17:\"Khoa Tổng Quát\";s:2:\"en\";s:11:\"Pain Clinic\";}s:14:\"Giới thiệu\";a:2:{s:2:\"vi\";s:14:\"Giới thiệu\";s:2:\"en\";s:0:\"\";}s:18:\"Dịch vụ y tế\";a:2:{s:2:\"vi\";s:18:\"Dịch vụ y tế\";s:2:\"en\";s:15:\"Doctor services\";}s:17:\"Khoa tổng quát\";a:2:{s:2:\"vi\";s:17:\"Khoa tổng quát\";s:2:\"en\";s:27:\"Chưa được phân loại\";}s:13:\"Dịch vụ A\";a:2:{s:2:\"vi\";s:13:\"Dịch vụ A\";s:2:\"en\";s:0:\"\";}s:13:\"Dịch vụ B\";a:2:{s:2:\"vi\";s:13:\"Dịch vụ B\";s:2:\"en\";s:0:\"\";}s:13:\"Dịch vụ C\";a:2:{s:2:\"vi\";s:13:\"Dịch vụ C\";s:2:\"en\";s:0:\"\";}s:13:\"Dịch vụ D\";a:2:{s:2:\"vi\";s:13:\"Dịch vụ D\";s:2:\"en\";s:0:\"\";}s:17:\"Các Chuyên Khoa\";a:2:{s:2:\"vi\";s:17:\"Các Chuyên Khoa\";s:2:\"en\";s:0:\"\";}s:25:\"Tư vấn về khoa mắt\";a:2:{s:2:\"vi\";s:25:\"Tư vấn về khoa mắt\";s:2:\"en\";s:0:\"\";}s:25:\"Tư vấn về bệnh lao\";a:2:{s:2:\"vi\";s:25:\"Tư vấn về bệnh lao\";s:2:\"en\";s:0:\"\";}}', 'yes'),
(415, 'dwqa_permission', 'a:6:{s:13:\"administrator\";a:3:{s:8:\"question\";a:4:{s:4:\"read\";i:1;s:4:\"post\";i:1;s:4:\"edit\";i:1;s:6:\"delete\";i:1;}s:6:\"answer\";a:4:{s:4:\"read\";i:1;s:4:\"post\";i:1;s:4:\"edit\";i:1;s:6:\"delete\";i:1;}s:7:\"comment\";a:4:{s:4:\"read\";i:1;s:4:\"post\";i:1;s:4:\"edit\";i:1;s:6:\"delete\";i:1;}}s:6:\"editor\";a:3:{s:8:\"question\";a:4:{s:4:\"read\";i:1;s:4:\"post\";i:1;s:4:\"edit\";i:1;s:6:\"delete\";i:1;}s:6:\"answer\";a:4:{s:4:\"read\";i:1;s:4:\"post\";i:1;s:4:\"edit\";i:1;s:6:\"delete\";i:1;}s:7:\"comment\";a:4:{s:4:\"read\";i:1;s:4:\"post\";i:1;s:4:\"edit\";i:1;s:6:\"delete\";i:1;}}s:6:\"author\";a:3:{s:8:\"question\";a:4:{s:4:\"read\";i:1;s:4:\"post\";i:1;s:4:\"edit\";i:0;s:6:\"delete\";i:0;}s:6:\"answer\";a:4:{s:4:\"read\";i:1;s:4:\"post\";i:1;s:4:\"edit\";i:0;s:6:\"delete\";i:0;}s:7:\"comment\";a:4:{s:4:\"read\";i:1;s:4:\"post\";i:1;s:4:\"edit\";i:0;s:6:\"delete\";i:0;}}s:11:\"contributor\";a:3:{s:8:\"question\";a:4:{s:4:\"read\";i:1;s:4:\"post\";i:1;s:4:\"edit\";i:0;s:6:\"delete\";i:0;}s:6:\"answer\";a:4:{s:4:\"read\";i:1;s:4:\"post\";i:1;s:4:\"edit\";i:0;s:6:\"delete\";i:0;}s:7:\"comment\";a:4:{s:4:\"read\";i:1;s:4:\"post\";i:1;s:4:\"edit\";i:0;s:6:\"delete\";i:0;}}s:10:\"subscriber\";a:3:{s:8:\"question\";a:4:{s:4:\"read\";i:1;s:4:\"post\";i:1;s:4:\"edit\";i:0;s:6:\"delete\";i:0;}s:6:\"answer\";a:4:{s:4:\"read\";i:1;s:4:\"post\";i:1;s:4:\"edit\";i:0;s:6:\"delete\";i:0;}s:7:\"comment\";a:4:{s:4:\"read\";i:1;s:4:\"post\";i:1;s:4:\"edit\";i:0;s:6:\"delete\";i:0;}}s:9:\"anonymous\";a:3:{s:8:\"question\";a:4:{s:4:\"read\";i:1;s:4:\"post\";i:1;s:4:\"edit\";i:0;s:6:\"delete\";i:0;}s:6:\"answer\";a:4:{s:4:\"read\";i:1;s:4:\"post\";i:0;s:4:\"edit\";i:0;s:6:\"delete\";i:0;}s:7:\"comment\";a:4:{s:4:\"read\";i:1;s:4:\"post\";i:0;s:4:\"edit\";i:0;s:6:\"delete\";i:0;}}}', 'yes'),
(416, 'dwqa_options', 'a:1:{s:5:\"pages\";a:2:{s:16:\"archive-question\";i:243;s:15:\"submit-question\";i:244;}}', 'yes'),
(418, 'dwqa_enable_email_delay', '1', 'yes'),
(419, 'widget_dwqa-closed-question', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(420, 'widget_dwqa-latest-question', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(421, 'widget_dwqa-popular-question', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(422, 'widget_dwqa-related-question', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(424, 'dwqa_has_roles', '1', 'yes'),
(429, 'mc_version', '3.1.2', 'yes'),
(430, 'mc_display_author', 'false', 'yes'),
(431, 'mc_use_styles', 'false', 'yes'),
(432, 'mc_show_months', '1', 'yes'),
(433, 'mc_show_map', 'false', 'yes'),
(434, 'mc_show_address', 'true', 'yes'),
(435, 'mc_display_more', 'true', 'yes'),
(436, 'mc_calendar_javascript', '0', 'yes'),
(437, 'mc_list_javascript', '0', 'yes'),
(438, 'mc_mini_javascript', '0', 'yes'),
(439, 'mc_ajax_javascript', '0', 'yes'),
(440, 'mc_notime_text', 'All day', 'yes'),
(441, 'mc_hide_icons', 'true', 'yes'),
(442, 'mc_multiple_categories', 'true', 'yes'),
(443, 'mc_event_link_expires', 'false', 'yes'),
(444, 'mc_apply_color', 'background', 'yes'),
(445, 'mc_inverse_color', 'true', 'yes'),
(446, 'mc_input_options', 'a:12:{s:11:\"event_short\";s:3:\"off\";s:10:\"event_desc\";s:2:\"on\";s:14:\"event_category\";s:2:\"on\";s:11:\"event_image\";s:2:\"on\";s:10:\"event_link\";s:2:\"on\";s:12:\"event_recurs\";s:2:\"on\";s:10:\"event_open\";s:3:\"off\";s:14:\"event_location\";s:3:\"off\";s:23:\"event_location_dropdown\";s:2:\"on\";s:14:\"event_specials\";s:3:\"off\";s:12:\"event_access\";s:2:\"on\";s:10:\"event_host\";s:3:\"off\";}', 'yes'),
(447, 'mc_input_options_administrators', 'false', 'yes'),
(448, 'mc_multisite', '0', 'no'),
(449, 'mc_event_mail', 'false', 'yes'),
(450, 'mc_desc', 'true', 'yes'),
(451, 'mc_image', 'true', 'yes'),
(452, 'mc_process_shortcodes', 'false', 'yes'),
(453, 'mc_short', 'false', 'yes'),
(454, 'mc_no_fifth_week', 'true', 'yes'),
(455, 'mc_week_format', 'M j, \'y', 'yes'),
(456, 'mc_date_format', 'j F, Y', 'yes'),
(457, 'mc_templates', 'a:10:{s:5:\"title\";s:15:\"{time}: {title}\";s:10:\"title_list\";s:7:\"{title}\";s:10:\"title_solo\";s:7:\"{title}\";s:4:\"link\";s:16:\"More information\";s:4:\"grid\";s:448:\"<span class=\\\"event-time value-title\\\" title=\\\"{dtstart}\\\">{time}<span class=\\\"time-separator\\\"> - </span>{endtime before=\\\"<span class=\\\'end-time\\\' title=\\\'{dtend}\\\'>\\\" after=\\\"</span>\\\"}</span>\r\n\r\n		<div class=\\\"sub-details\\\">\r\n		{hcard}\r\n		{details before=\\\"<p class=\\\'mc_details\\\'>\\\" after=\\\"</p>\\\"}\r\n		<p><a href=\\\"{linking}\\\" class=\\\"event-link external\\\"><span class=\\\"screen-reader-text\\\">More information about </span>{title}</a></p></div>\";s:4:\"list\";s:504:\"<span class=\\\"event-time value-title\\\" title=\\\"{dtstart}\\\">{time}<span class=\\\"time-separator\\\"> - </span>{endtime before=\\\"<span class=\\\'end-time value-title\\\' title=\\\'{dtend}\\\'>\\\" after=\\\"</span>\\\"}</span>\r\n\r\n		<h3 class=\\\"event-title\\\">{title}</h3>\r\n\r\n		<div class=\\\"sub-details\\\">\r\n		{hcard}\r\n		{details before=\\\"<p class=\\\'mc_details\\\'>\\\" after=\\\"</p>\\\"}\r\n		<p><a href=\\\"{linking}\\\" class=\\\"event-link external\\\"><span class=\\\"screen-reader-text\\\">More information about </span>{title}</a></p></div>\";s:4:\"mini\";s:505:\"<span class=\\\"event-time value-title\\\" title=\\\"{dtstart}\\\">{time}<span class=\\\"time-separator\\\"> - </span>{endtime before=\\\"<span class=\\\'end-time value-title\\\' title=\\\'{dtend}\\\'>\\\" after=\\\"</span>\\\"}</span>\r\n\r\n		<h3 class=\\\"event-title\\\">{title}</h3>\r\n\r\n		<div class=\\\"sub-details\\\">\r\n		{excerpt before=\\\"<div class=\\\'excerpt\\\'>\\\" after=\\\"</div>\\\"}\r\n		{hcard}\r\n		<p><a href=\\\"{linking}\\\" class=\\\"event-link external\\\"><span class=\\\"screen-reader-text\\\">More information about </span>{title}</a></p></div>\";s:3:\"rss\";s:901:\"\n<item>\r\n			<title>{rss_title}: {date}, {time}</title>\r\n			<link>{link}</link>\r\n			<pubDate>{rssdate}</pubDate>\r\n			<dc:creator>{author}</dc:creator>\r\n			<description><![CDATA[{rss_description}]]></description>\r\n			<content:encoded><![CDATA[<div class=\\\'vevent\\\'>\r\n			<h1 class=\\\'summary\\\'>{rss_title}</h1>\r\n			<div class=\\\'description\\\'>{rss_description}</div>\r\n			<p class=\\\'dtstart\\\' title=\\\'{ical_start}\\\'>Begins: {time} on {date}</p>\r\n			<p class=\\\'dtend\\\' title=\\\'{ical_end}\\\'>Ends: {endtime} on {enddate}</p>\r\n			<p>Recurrence: {recurs}</p>\r\n			<p>Repetition: {repeats} times</p>\r\n			<div class=\\\'location\\\'>{rss_hcard}</div>\r\n			{link_title}\r\n			</div>]]></content:encoded>\r\n			<dc:format xmlns:dc=\\\'http://purl.org/dc/elements/1.1/\\\'>text/html</dc:format>\r\n			<dc:source xmlns:dc=\\\'http://purl.org/dc/elements/1.1/\\\'>http://localhost:8000/Healthcare/source</dc:source>\r\n			{guid}\r\n		</item>\r\n\";s:7:\"details\";s:483:\"<span class=\\\"event-time value-title\\\" title=\\\"{dtstart}\\\">{time}<span class=\\\"time-separator\\\"> - </span><span class=\\\"end-time value-title\\\" title=\\\"{dtend}\\\">{endtime}</span></span>\r\n\r\n		<div class=\\\"sub-details\\\">\r\n		{hcard}\r\n		<div class=\\\"mc-description\\\">{image}{description}</div>\r\n		<p>{ical_html} &bull; {gcal_link}</p>\r\n		{map}\r\n		<p><a href=\\\"{linking}\\\" class=\\\"event-link external\\\"><span class=\\\"screen-reader-text\\\">More information about </span>{title}</a></p></div>\";s:5:\"label\";s:9:\"Read more\";}', 'yes'),
(458, 'mc_skip_holidays', 'false', 'yes'),
(459, 'mc_css_file', 'twentyeighteen.css', 'yes'),
(460, 'mc_style_vars', 'a:6:{s:14:\"--primary-dark\";s:7:\"#313233\";s:15:\"--primary-light\";s:4:\"#fff\";s:17:\"--secondary-light\";s:4:\"#fff\";s:16:\"--secondary-dark\";s:4:\"#000\";s:16:\"--highlight-dark\";s:4:\"#666\";s:17:\"--highlight-light\";s:7:\"#efefef\";}', 'yes'),
(461, 'mc_time_format', 'g:i a', 'yes'),
(462, 'mc_show_weekends', 'true', 'yes'),
(463, 'mc_convert', 'true', 'yes'),
(464, 'mc_show_event_vcal', 'false', 'yes'),
(465, 'mc_multisite_show', '0', 'yes'),
(466, 'mc_event_link', 'true', 'yes'),
(467, 'mc_topnav', 'toggle,timeframe,jump,nav', 'yes'),
(468, 'mc_bottomnav', 'key,print', 'yes'),
(469, 'mc_default_direction', 'DESC', 'yes'),
(470, 'mc_update_notice', '1', 'yes'),
(471, 'mc_uri', 'http://localhost:8000/Healthcare/source/my-calendar/', 'yes'),
(472, 'mc_uri_id', '248', 'yes'),
(473, 'widget_my_calendar_today_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(474, 'widget_my_calendar_upcoming_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(475, 'widget_my_calendar_mini_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(476, 'widget_my_calendar_simple_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(477, 'widget_my_calendar_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(478, 'dbem_flush_needed', '0', 'yes'),
(479, 'widget_em_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(480, 'widget_em_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(481, 'dbem_events_page', '250', 'yes'),
(482, 'dbem_locations_page', '251', 'yes'),
(483, 'dbem_categories_page', '252', 'yes'),
(484, 'dbem_tags_page', '253', 'yes'),
(485, 'dbem_my_bookings_page', '254', 'yes'),
(486, 'dbem_hello_to_user', '1', 'yes'),
(487, 'dbem_data', 'a:0:{}', 'yes'),
(488, 'dbem_time_format', 'g:i a', 'yes'),
(489, 'dbem_date_format', 'd/m/Y', 'yes'),
(490, 'dbem_date_format_js', 'dd/mm/yy', 'yes'),
(491, 'dbem_dates_separator', ' - ', 'yes'),
(492, 'dbem_times_separator', ' - ', 'yes'),
(493, 'dbem_default_category', '0', 'yes'),
(494, 'dbem_default_location', '0', 'yes'),
(495, 'dbem_events_default_orderby', 'event_start_date,event_start_time,event_name', 'yes'),
(496, 'dbem_events_default_order', 'ASC', 'yes'),
(497, 'dbem_events_default_limit', '10', 'yes'),
(498, 'dbem_search_form_submit', 'Search', 'yes'),
(499, 'dbem_search_form_advanced', '1', 'yes'),
(500, 'dbem_search_form_advanced_hidden', '1', 'yes'),
(501, 'dbem_search_form_advanced_show', 'Show Advanced Search', 'yes'),
(502, 'dbem_search_form_advanced_hide', 'Hide Advanced Search', 'yes'),
(503, 'dbem_search_form_text', '1', 'yes'),
(504, 'dbem_search_form_text_label', 'Search', 'yes'),
(505, 'dbem_search_form_geo', '1', 'yes'),
(506, 'dbem_search_form_geo_label', 'Near...', 'yes'),
(507, 'dbem_search_form_geo_units', '1', 'yes'),
(508, 'dbem_search_form_geo_units_label', 'Within', 'yes'),
(509, 'dbem_search_form_geo_unit_default', 'mi', 'yes'),
(510, 'dbem_search_form_geo_distance_default', '25', 'yes'),
(511, 'dbem_search_form_geo_distance_options', '5,10,25,50,100', 'yes'),
(512, 'dbem_search_form_dates', '1', 'yes'),
(513, 'dbem_search_form_dates_label', 'Dates', 'yes'),
(514, 'dbem_search_form_dates_separator', 'and', 'yes'),
(515, 'dbem_search_form_categories', '1', 'yes'),
(516, 'dbem_search_form_categories_label', 'All Categories', 'yes'),
(517, 'dbem_search_form_category_label', 'Category', 'yes'),
(518, 'dbem_search_form_countries', '1', 'yes'),
(519, 'dbem_search_form_default_country', '', 'yes'),
(520, 'dbem_search_form_countries_label', 'All Countries', 'yes'),
(521, 'dbem_search_form_country_label', 'Country', 'yes'),
(522, 'dbem_search_form_regions', '1', 'yes'),
(523, 'dbem_search_form_regions_label', 'All Regions', 'yes'),
(524, 'dbem_search_form_region_label', 'Region', 'yes'),
(525, 'dbem_search_form_states', '1', 'yes'),
(526, 'dbem_search_form_states_label', 'All States', 'yes'),
(527, 'dbem_search_form_state_label', 'State/County', 'yes'),
(528, 'dbem_search_form_towns', '0', 'yes'),
(529, 'dbem_search_form_towns_label', 'All Cities/Towns', 'yes'),
(530, 'dbem_search_form_town_label', 'City/Town', 'yes'),
(531, 'dbem_events_form_editor', '1', 'yes'),
(532, 'dbem_events_form_reshow', '1', 'yes'),
(533, 'dbem_events_form_result_success', 'You have successfully submitted your event, which will be published pending approval.', 'yes'),
(534, 'dbem_events_form_result_success_updated', 'You have successfully updated your event, which will be republished pending approval.', 'yes'),
(536, 'dbem_events_anonymous_submissions', '0', 'yes'),
(537, 'dbem_events_anonymous_user', '0', 'yes'),
(538, 'dbem_events_anonymous_result_success', 'You have successfully submitted your event, which will be published pending approval.', 'yes'),
(539, 'dbem_event_submitted_email_admin', '', 'yes'),
(540, 'dbem_event_submitted_email_subject', 'Submitted Event Awaiting Approval', 'yes'),
(541, 'dbem_event_submitted_email_body', 'A new event has been submitted by #_CONTACTNAME.\n\rName : #_EVENTNAME \n\rDate : #_EVENTDATES \n\rTime : #_EVENTTIMES \n\rPlease visit http://localhost:8000/Healthcare/source/wp-admin/post.php?action=edit&post=#_EVENTPOSTID to review this event for approval.\n\r\n\r-------------------------------\n\rPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(542, 'dbem_event_resubmitted_email_subject', 'Re-Submitted Event Awaiting Approval', 'yes'),
(543, 'dbem_event_resubmitted_email_body', 'A previously published event has been modified by #_CONTACTNAME, and this event is now unpublished and pending your approval.\n\rName : #_EVENTNAME \n\rDate : #_EVENTDATES \n\rTime : #_EVENTTIMES \n\rPlease visit http://localhost:8000/Healthcare/source/wp-admin/post.php?action=edit&post=#_EVENTPOSTID to review this event for approval.\n\r\n\r-------------------------------\n\rPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(544, 'dbem_event_published_email_subject', 'Published Event - #_EVENTNAME', 'yes'),
(545, 'dbem_event_published_email_body', 'A new event has been published by #_CONTACTNAME.\n\rName : #_EVENTNAME \n\rDate : #_EVENTDATES \n\rTime : #_EVENTTIMES \n\rEdit this event - http://localhost:8000/Healthcare/source/wp-admin/post.php?action=edit&post=#_EVENTPOSTID \n\r View this event - #_EVENTURL\n\r\n\r-------------------------------\n\rPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(547, 'dbem_event_approved_email_subject', 'Event Approved - #_EVENTNAME', 'yes'),
(548, 'dbem_event_approved_email_body', 'Dear #_CONTACTNAME, \n\rYour event #_EVENTNAME on #_EVENTDATES has been approved.\n\rYou can view your event here: #_EVENTURL\n\r\n\r-------------------------------\n\rPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(549, 'dbem_event_reapproved_email_subject', 'Event Approved - #_EVENTNAME', 'yes'),
(550, 'dbem_event_reapproved_email_body', 'Dear #_CONTACTNAME, \n\rYour event #_EVENTNAME on #_EVENTDATES has been approved.\n\rYou can view your event here: #_EVENTURL\n\r\n\r-------------------------------\n\rPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(551, 'dbem_events_page_title', 'Events', 'yes'),
(552, 'dbem_events_page_scope', 'future', 'yes'),
(553, 'dbem_events_page_search_form', '1', 'yes'),
(554, 'dbem_event_list_item_format_header', '<table class=\"events-table\" >\r\n    <thead>\r\n        <tr>\r\n			<th class=\"event-time\" scope=\"col\">Date/Time</th>\r\n			<th class=\"event-description\" scope=\"col\">Event</th>\r\n		</tr>\r\n   	</thead>\r\n    <tbody>', 'yes'),
(555, 'dbem_event_list_item_format', '<tr>\r\n			<td>\r\n                #_EVENTDATES<br/>\r\n                #_EVENTTIMES\r\n            </td>\r\n            <td>\r\n                #_EVENTLINK\r\n                {has_location}<br/><i>#_LOCATIONNAME, #_LOCATIONTOWN #_LOCATIONSTATE</i>{/has_location}\r\n            </td>\r\n        </tr>', 'yes'),
(556, 'dbem_event_list_item_format_footer', '</tbody></table>', 'yes'),
(557, 'dbem_event_list_groupby', '0', 'yes'),
(558, 'dbem_event_list_groupby_format', '', 'yes'),
(559, 'dbem_event_list_groupby_header_format', '<h2>#s</h2>', 'yes'),
(560, 'dbem_display_calendar_in_events_page', '0', 'yes'),
(561, 'dbem_single_event_format', '<div style=\"float:right; margin:0px 0px 15px 15px;\">#_LOCATIONMAP</div>\r\n<p>\r\n	<strong>Date/Time</strong><br/>\r\n	Date(s) - #_EVENTDATES<br /><i>#_EVENTTIMES</i>\r\n</p>\r\n{has_location}\r\n<p>\r\n	<strong>Location</strong><br/>\r\n	#_LOCATIONLINK\r\n</p>\r\n{/has_location}\r\n<p>\r\n	<strong>Categories</strong>\r\n	#_CATEGORIES\r\n</p>\r\n<br style=\"clear:both\" />\r\n#_EVENTNOTES\r\n{has_bookings}\r\n<h3>Bookings</h3>\r\n#_BOOKINGFORM\r\n{/has_bookings}', 'yes'),
(562, 'dbem_event_excerpt_format', '#_EVENTDATES @ #_EVENTTIMES - #_EVENTEXCERPT', 'yes'),
(563, 'dbem_event_excerpt_alt_format', '#_EVENTDATES @ #_EVENTTIMES - #_EVENTEXCERPT{55}', 'yes'),
(564, 'dbem_event_page_title_format', '#_EVENTNAME', 'yes'),
(565, 'dbem_event_all_day_message', 'All Day', 'yes'),
(566, 'dbem_no_events_message', 'No Events', 'yes'),
(568, 'dbem_locations_default_orderby', 'location_name', 'yes'),
(570, 'dbem_locations_default_order', 'ASC', 'yes'),
(571, 'dbem_locations_default_limit', '10', 'yes'),
(572, 'dbem_locations_page_title', 'Event Locations', 'yes'),
(573, 'dbem_locations_page_search_form', '1', 'yes'),
(574, 'dbem_no_locations_message', 'No Locations', 'yes'),
(575, 'dbem_location_default_country', '', 'yes'),
(576, 'dbem_location_list_item_format_header', '<ul class=\"em-locations-list\">', 'yes'),
(577, 'dbem_location_list_item_format', '<li>#_LOCATIONLINK<ul><li>#_LOCATIONFULLLINE</li></ul></li>', 'yes'),
(578, 'dbem_location_list_item_format_footer', '</ul>', 'yes'),
(579, 'dbem_location_page_title_format', '#_LOCATIONNAME', 'yes'),
(580, 'dbem_single_location_format', '<div style=\"float:right; margin:0px 0px 15px 15px;\">#_LOCATIONMAP</div>\r\n<p>\r\n	<strong>Address</strong><br/>\r\n	#_LOCATIONADDRESS<br/>\r\n	#_LOCATIONTOWN<br/>\r\n	#_LOCATIONSTATE<br/>\r\n	#_LOCATIONREGION<br/>\r\n	#_LOCATIONPOSTCODE<br/>\r\n	#_LOCATIONCOUNTRY\r\n</p>\r\n<br style=\"clear:both\" />\r\n#_LOCATIONNOTES\r\n\r\n<h3>Upcoming Events</h3>\r\n<p>#_LOCATIONNEXTEVENTS</p>', 'yes'),
(581, 'dbem_location_excerpt_format', '#_LOCATIONEXCERPT', 'yes'),
(582, 'dbem_location_excerpt_alt_format', '#_LOCATIONEXCERPT{55}', 'yes'),
(583, 'dbem_location_no_events_message', '<li>No events in this location</li>', 'yes'),
(584, 'dbem_location_event_list_item_header_format', '<ul>', 'yes'),
(585, 'dbem_location_event_list_item_format', '<li>#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES</li>', 'yes'),
(586, 'dbem_location_event_list_item_footer_format', '</ul>', 'yes'),
(587, 'dbem_location_event_list_limit', '20', 'yes'),
(588, 'dbem_location_event_list_orderby', 'event_start_date,event_start_time,event_name', 'yes'),
(589, 'dbem_location_event_list_order', 'ASC', 'yes'),
(590, 'dbem_location_event_single_format', '#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES', 'yes'),
(591, 'dbem_location_no_event_message', 'No events in this location', 'yes'),
(592, 'dbem_categories_default_limit', '10', 'yes'),
(593, 'dbem_categories_default_orderby', 'name', 'yes'),
(594, 'dbem_categories_default_order', 'ASC', 'yes'),
(595, 'dbem_categories_list_item_format_header', '<ul class=\"em-categories-list\">', 'yes'),
(596, 'dbem_categories_list_item_format', '<li>#_CATEGORYLINK</li>', 'yes'),
(597, 'dbem_categories_list_item_format_footer', '</ul>', 'yes'),
(598, 'dbem_no_categories_message', 'No Categories', 'yes'),
(599, 'dbem_category_page_title_format', '#_CATEGORYNAME', 'yes'),
(600, 'dbem_category_page_format', '#_CATEGORYNOTES<h3>Upcoming Events</h3>#_CATEGORYNEXTEVENTS', 'yes'),
(601, 'dbem_category_no_events_message', '<li>No events in this category</li>', 'yes'),
(602, 'dbem_category_event_list_item_header_format', '<ul>', 'yes'),
(603, 'dbem_category_event_list_item_format', '<li>#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES</li>', 'yes'),
(604, 'dbem_category_event_list_item_footer_format', '</ul>', 'yes'),
(605, 'dbem_category_event_list_limit', '20', 'yes'),
(606, 'dbem_category_event_list_orderby', 'event_start_date,event_start_time,event_name', 'yes'),
(607, 'dbem_category_event_list_order', 'ASC', 'yes'),
(608, 'dbem_category_event_single_format', '#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES', 'yes'),
(609, 'dbem_category_no_event_message', 'No events in this category', 'yes'),
(610, 'dbem_category_default_color', '#a8d144', 'yes'),
(611, 'dbem_tags_default_limit', '10', 'yes'),
(612, 'dbem_tags_default_orderby', 'name', 'yes'),
(613, 'dbem_tags_default_order', 'ASC', 'yes'),
(614, 'dbem_tags_list_item_format_header', '<ul class=\"em-tags-list\">', 'yes'),
(615, 'dbem_tags_list_item_format', '<li>#_TAGLINK</li>', 'yes'),
(616, 'dbem_tags_list_item_format_footer', '</ul>', 'yes'),
(617, 'dbem_no_tags_message', 'No Tags', 'yes'),
(618, 'dbem_tag_page_title_format', '#_TAGNAME', 'yes'),
(619, 'dbem_tag_page_format', '<h3>Upcoming Events</h3>#_TAGNEXTEVENTS', 'yes'),
(620, 'dbem_tag_no_events_message', '<li>No events with this tag</li>', 'yes'),
(621, 'dbem_tag_event_list_item_header_format', '<ul class=\"em-tags-list\">', 'yes'),
(622, 'dbem_tag_event_list_item_format', '<li>#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES</li>', 'yes'),
(623, 'dbem_tag_event_list_item_footer_format', '</ul>', 'yes'),
(624, 'dbem_tag_event_single_format', '#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES', 'yes'),
(625, 'dbem_tag_no_event_message', 'No events with this tag', 'yes'),
(626, 'dbem_tag_event_list_limit', '20', 'yes'),
(627, 'dbem_tag_event_list_orderby', 'event_start_date,event_start_time,event_name', 'yes'),
(628, 'dbem_tag_event_list_order', 'ASC', 'yes'),
(629, 'dbem_tag_default_color', '#a8d145', 'yes'),
(630, 'dbem_rss_limit', '50', 'yes'),
(631, 'dbem_rss_scope', 'future', 'yes'),
(632, 'dbem_rss_main_title', 'Health care - Events', 'yes'),
(633, 'dbem_rss_main_description', 'Một trang web mới sử dụng WordPress - Events', 'yes'),
(634, 'dbem_rss_description_format', '#_EVENTDATES - #_EVENTTIMES <br/>#_LOCATIONNAME <br/>#_LOCATIONADDRESS <br/>#_LOCATIONTOWN', 'yes'),
(635, 'dbem_rss_title_format', '#_EVENTNAME', 'yes'),
(636, 'dbem_rss_order', 'ASC', 'yes'),
(637, 'dbem_rss_orderby', 'event_start_date,event_start_time,event_name', 'yes'),
(638, 'em_rss_pubdate', 'Tue, 18 Dec 2018 07:26:30 +0000', 'yes'),
(639, 'dbem_ical_limit', '50', 'yes'),
(640, 'dbem_ical_scope', 'future', 'yes'),
(641, 'dbem_ical_description_format', '#_EVENTNAME', 'yes'),
(642, 'dbem_ical_real_description_format', '#_EVENTEXCERPT', 'yes'),
(643, 'dbem_ical_location_format', '#_LOCATIONNAME, #_LOCATIONFULLLINE, #_LOCATIONCOUNTRY', 'yes'),
(644, 'dbem_gmap_is_active', '1', 'yes'),
(645, 'dbem_google_maps_browser_key', '', 'yes'),
(646, 'dbem_map_default_width', '400px', 'yes'),
(647, 'dbem_map_default_height', '300px', 'yes'),
(648, 'dbem_location_baloon_format', '<strong>#_LOCATIONNAME</strong><br/>#_LOCATIONADDRESS - #_LOCATIONTOWN<br/><a href=\"#_LOCATIONPAGEURL\">Events</a>', 'yes'),
(649, 'dbem_map_text_format', '<strong>#_LOCATIONNAME</strong><p>#_LOCATIONADDRESS</p><p>#_LOCATIONTOWN</p>', 'yes'),
(650, 'dbem_email_disable_registration', '0', 'yes'),
(651, 'dbem_rsvp_mail_port', '465', 'yes'),
(652, 'dbem_smtp_host', 'localhost', 'yes'),
(653, 'dbem_mail_sender_name', '', 'yes'),
(654, 'dbem_rsvp_mail_send_method', 'wp_mail', 'yes'),
(655, 'dbem_rsvp_mail_SMTPAuth', '1', 'yes'),
(656, 'dbem_smtp_html', '1', 'yes'),
(657, 'dbem_smtp_html_br', '1', 'yes'),
(658, 'dbem_image_max_width', '700', 'yes'),
(659, 'dbem_image_max_height', '700', 'yes'),
(660, 'dbem_image_min_width', '50', 'yes'),
(661, 'dbem_image_min_height', '50', 'yes'),
(662, 'dbem_image_max_size', '204800', 'yes'),
(663, 'dbem_list_date_title', 'Events - #j #M #y', 'yes'),
(664, 'dbem_full_calendar_month_format', 'M Y', 'yes'),
(665, 'dbem_full_calendar_event_format', '<li>#_EVENTLINK</li>', 'yes'),
(666, 'dbem_full_calendar_long_events', '0', 'yes'),
(667, 'dbem_full_calendar_initials_length', '0', 'yes'),
(668, 'dbem_full_calendar_abbreviated_weekdays', '1', 'yes'),
(669, 'dbem_display_calendar_day_single_yes', '1', 'yes'),
(670, 'dbem_small_calendar_month_format', 'M Y', 'yes'),
(671, 'dbem_small_calendar_event_title_format', '#_EVENTNAME', 'yes'),
(672, 'dbem_small_calendar_event_title_separator', ', ', 'yes'),
(673, 'dbem_small_calendar_initials_length', '1', 'yes'),
(674, 'dbem_small_calendar_abbreviated_weekdays', '', 'yes'),
(675, 'dbem_small_calendar_long_events', '0', 'yes'),
(676, 'dbem_display_calendar_order', 'ASC', 'yes'),
(677, 'dbem_display_calendar_orderby', 'event_name,event_start_time', 'yes'),
(678, 'dbem_display_calendar_events_limit', '3', 'yes'),
(679, 'dbem_display_calendar_events_limit_msg', 'more...', 'yes'),
(680, 'dbem_calendar_direct_links', '1', 'yes'),
(681, 'dbem_timezone_enabled', '1', 'yes'),
(682, 'dbem_timezone_default', 'UTC', 'yes'),
(683, 'dbem_require_location', '0', 'yes'),
(684, 'dbem_locations_enabled', '1', 'yes'),
(685, 'dbem_use_select_for_locations', '0', 'yes'),
(686, 'dbem_attributes_enabled', '1', 'yes'),
(687, 'dbem_recurrence_enabled', '1', 'yes'),
(688, 'dbem_rsvp_enabled', '1', 'yes'),
(689, 'dbem_categories_enabled', '1', 'yes'),
(690, 'dbem_tags_enabled', '1', 'yes'),
(691, 'dbem_placeholders_custom', '', 'yes'),
(692, 'dbem_location_attributes_enabled', '1', 'yes'),
(693, 'dbem_location_placeholders_custom', '', 'yes'),
(694, 'dbem_bookings_registration_disable', '0', 'yes'),
(695, 'dbem_bookings_registration_disable_user_emails', '0', 'yes'),
(696, 'dbem_bookings_approval', '1', 'yes'),
(697, 'dbem_bookings_approval_reserved', '0', 'yes'),
(698, 'dbem_bookings_approval_overbooking', '0', 'yes'),
(699, 'dbem_bookings_double', '0', 'yes'),
(700, 'dbem_bookings_user_cancellation', '1', 'yes'),
(701, 'dbem_bookings_currency', 'USD', 'yes'),
(702, 'dbem_bookings_currency_decimal_point', ',', 'yes'),
(703, 'dbem_bookings_currency_thousands_sep', '.', 'yes'),
(704, 'dbem_bookings_currency_format', '@#', 'yes'),
(705, 'dbem_bookings_tax', '0', 'yes'),
(706, 'dbem_bookings_tax_auto_add', '0', 'yes'),
(707, 'dbem_bookings_submit_button', 'Send your booking', 'yes'),
(708, 'dbem_bookings_login_form', '1', 'yes'),
(709, 'dbem_bookings_anonymous', '1', 'yes'),
(710, 'dbem_bookings_form_max', '20', 'yes'),
(711, 'dbem_bookings_form_msg_disabled', 'Online bookings are not available for this event.', 'yes'),
(712, 'dbem_bookings_form_msg_closed', 'Bookings are closed for this event.', 'yes'),
(713, 'dbem_bookings_form_msg_full', 'This event is fully booked.', 'yes'),
(714, 'dbem_bookings_form_msg_attending', 'You are currently attending this event.', 'yes'),
(715, 'dbem_bookings_form_msg_bookings_link', 'Manage my bookings', 'yes'),
(716, 'dbem_booking_warning_cancel', 'Are you sure you want to cancel your booking?', 'yes'),
(717, 'dbem_booking_feedback_cancelled', 'Booking Cancelled', 'yes'),
(718, 'dbem_booking_feedback_pending', 'Booking successful, pending confirmation (you will also receive an email once confirmed).', 'yes'),
(719, 'dbem_booking_feedback', 'Booking successful.', 'yes'),
(720, 'dbem_booking_feedback_full', 'Booking cannot be made, not enough spaces available!', 'yes'),
(721, 'dbem_booking_feedback_log_in', 'You must log in or register to make a booking.', 'yes'),
(722, 'dbem_booking_feedback_nomail', 'However, there were some problems whilst sending confirmation emails to you and/or the event contact person. You may want to contact them directly and letting them know of this error.', 'yes'),
(723, 'dbem_booking_feedback_error', 'Booking could not be created:', 'yes'),
(724, 'dbem_booking_feedback_email_exists', 'This email already exists in our system, please log in to register to proceed with your booking.', 'yes'),
(725, 'dbem_booking_feedback_new_user', 'A new user account has been created for you. Please check your email for access details.', 'yes'),
(726, 'dbem_booking_feedback_reg_error', 'There was a problem creating a user account, please contact a website administrator.', 'yes'),
(727, 'dbem_booking_feedback_already_booked', 'You already have booked a seat at this event.', 'yes'),
(728, 'dbem_booking_feedback_min_space', 'You must request at least one space to book an event.', 'yes'),
(729, 'dbem_booking_feedback_spaces_limit', 'You cannot book more than %d spaces for this event.', 'yes'),
(730, 'dbem_booking_button_msg_book', 'Book Now', 'yes'),
(731, 'dbem_booking_button_msg_booking', 'Booking...', 'yes'),
(732, 'dbem_booking_button_msg_booked', 'Booking Submitted', 'yes'),
(733, 'dbem_booking_button_msg_already_booked', 'Already Booked', 'yes'),
(734, 'dbem_booking_button_msg_error', 'Booking Error. Try again?', 'yes'),
(735, 'dbem_booking_button_msg_full', 'Sold Out', 'yes'),
(736, 'dbem_booking_button_msg_closed', 'Bookings Closed', 'yes'),
(737, 'dbem_booking_button_msg_cancel', 'Cancel', 'yes'),
(738, 'dbem_booking_button_msg_canceling', 'Canceling...', 'yes'),
(739, 'dbem_booking_button_msg_cancelled', 'Cancelled', 'yes'),
(740, 'dbem_booking_button_msg_cancel_error', 'Cancellation Error. Try again?', 'yes'),
(741, 'dbem_bookings_notify_admin', '0', 'yes'),
(742, 'dbem_bookings_contact_email', '1', 'yes'),
(743, 'dbem_bookings_contact_email_pending_subject', 'Booking Pending', 'yes'),
(744, 'dbem_bookings_contact_email_pending_body', 'The following booking is pending :\n\r#_EVENTNAME - #_EVENTDATES @ #_EVENTTIMES\n\rNow there are #_BOOKEDSPACES spaces reserved, #_AVAILABLESPACES are still available.\n\rBOOKING DETAILS\n\rName : #_BOOKINGNAME\n\rEmail : #_BOOKINGEMAIL\n\r#_BOOKINGSUMMARY\n\r\n\rPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(745, 'dbem_bookings_contact_email_confirmed_subject', 'Booking Confirmed', 'yes'),
(746, 'dbem_bookings_contact_email_confirmed_body', 'The following booking is confirmed :\n\r#_EVENTNAME - #_EVENTDATES @ #_EVENTTIMES\n\rNow there are #_BOOKEDSPACES spaces reserved, #_AVAILABLESPACES are still available.\n\rBOOKING DETAILS\n\rName : #_BOOKINGNAME\n\rEmail : #_BOOKINGEMAIL\n\r#_BOOKINGSUMMARY\n\r\n\rPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(747, 'dbem_bookings_contact_email_rejected_subject', 'Booking Rejected', 'yes'),
(748, 'dbem_bookings_contact_email_rejected_body', 'The following booking is rejected :\n\r#_EVENTNAME - #_EVENTDATES @ #_EVENTTIMES\n\rNow there are #_BOOKEDSPACES spaces reserved, #_AVAILABLESPACES are still available.\n\rBOOKING DETAILS\n\rName : #_BOOKINGNAME\n\rEmail : #_BOOKINGEMAIL\n\r#_BOOKINGSUMMARY\n\r\n\rPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(749, 'dbem_bookings_contact_email_cancelled_subject', 'Booking Cancelled', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(750, 'dbem_bookings_contact_email_cancelled_body', 'The following booking is cancelled :\n\r#_EVENTNAME - #_EVENTDATES @ #_EVENTTIMES\n\rNow there are #_BOOKEDSPACES spaces reserved, #_AVAILABLESPACES are still available.\n\rBOOKING DETAILS\n\rName : #_BOOKINGNAME\n\rEmail : #_BOOKINGEMAIL\n\r#_BOOKINGSUMMARY\n\r\n\rPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(751, 'dbem_bookings_email_pending_subject', 'Booking Pending', 'yes'),
(752, 'dbem_bookings_email_pending_body', 'Dear #_BOOKINGNAME, \n\rYou have requested #_BOOKINGSPACES space/spaces for #_EVENTNAME.\n\rWhen : #_EVENTDATES @ #_EVENTTIMES\n\rWhere : #_LOCATIONNAME - #_LOCATIONFULLLINE\n\rYour booking is currently pending approval by our administrators. Once approved you will receive an automatic confirmation.\n\rYours faithfully,\n\r#_CONTACTNAME\n\r\n\r-------------------------------\n\rPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(753, 'dbem_bookings_email_rejected_subject', 'Booking Rejected', 'yes'),
(754, 'dbem_bookings_email_rejected_body', 'Dear #_BOOKINGNAME, \n\rYour requested booking for #_BOOKINGSPACES spaces at #_EVENTNAME on #_EVENTDATES has been rejected.\n\rYours faithfully,\n\r#_CONTACTNAME\n\r\n\r-------------------------------\n\rPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(755, 'dbem_bookings_email_confirmed_subject', 'Booking Confirmed', 'yes'),
(756, 'dbem_bookings_email_confirmed_body', 'Dear #_BOOKINGNAME, \n\rYou have successfully reserved #_BOOKINGSPACES space/spaces for #_EVENTNAME.\n\rWhen : #_EVENTDATES @ #_EVENTTIMES\n\rWhere : #_LOCATIONNAME - #_LOCATIONFULLLINE\n\rYours faithfully,\n\r#_CONTACTNAME\n\r\n\r-------------------------------\n\rPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(757, 'dbem_bookings_email_cancelled_subject', 'Booking Cancelled', 'yes'),
(758, 'dbem_bookings_email_cancelled_body', 'Dear #_BOOKINGNAME, \n\rYour requested booking for #_BOOKINGSPACES spaces at #_EVENTNAME on #_EVENTDATES has been cancelled.\n\rYours faithfully,\n\r#_CONTACTNAME\n\r\n\r-------------------------------\n\rPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(759, 'dbem_bookings_email_registration_subject', '[Health care] Your username and password', 'yes'),
(760, 'dbem_bookings_email_registration_body', 'You have successfully created an account at Health care\n\rYou can log into our site here : http://localhost:8000/Healthcare/source/wp-login.php\n\rUsername : %username%\n\rPassword : %password%\n\rTo view your bookings, please visit http://localhost:8000/Healthcare/source/events/my-bookings/ after logging in.', 'yes'),
(761, 'dbem_bookings_tickets_orderby', 'ticket_price DESC, ticket_name ASC', 'yes'),
(762, 'dbem_bookings_tickets_priority', '0', 'yes'),
(763, 'dbem_bookings_tickets_show_unavailable', '0', 'yes'),
(764, 'dbem_bookings_tickets_show_loggedout', '1', 'yes'),
(765, 'dbem_bookings_tickets_single', '0', 'yes'),
(766, 'dbem_bookings_tickets_single_form', '0', 'yes'),
(767, 'dbem_bookings_my_title_format', 'My Bookings', 'yes'),
(768, 'dbem_bp_events_list_format_header', '<ul class=\"em-events-list\">', 'yes'),
(769, 'dbem_bp_events_list_format', '<li>#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES<ul><li>#_LOCATIONLINK - #_LOCATIONADDRESS, #_LOCATIONTOWN</li></ul></li>', 'yes'),
(770, 'dbem_bp_events_list_format_footer', '</ul>', 'yes'),
(771, 'dbem_bp_events_list_none_format', '<p class=\"em-events-list\">No Events</p>', 'yes'),
(772, 'dbem_css_editors', '1', 'yes'),
(773, 'dbem_css_rsvp', '1', 'yes'),
(774, 'dbem_css_rsvpadmin', '1', 'yes'),
(775, 'dbem_css_evlist', '1', 'yes'),
(776, 'dbem_css_search', '1', 'yes'),
(777, 'dbem_css_loclist', '1', 'yes'),
(778, 'dbem_css_catlist', '1', 'yes'),
(779, 'dbem_css_taglist', '1', 'yes'),
(780, 'dbem_cp_events_slug', 'events', 'yes'),
(781, 'dbem_cp_locations_slug', 'locations', 'yes'),
(782, 'dbem_taxonomy_category_slug', 'events/categories', 'yes'),
(783, 'dbem_taxonomy_tag_slug', 'events/tags', 'yes'),
(784, 'dbem_cp_events_template', '', 'yes'),
(785, 'dbem_cp_events_body_class', '', 'yes'),
(786, 'dbem_cp_events_post_class', '', 'yes'),
(787, 'dbem_cp_events_formats', '1', 'yes'),
(788, 'dbem_cp_events_has_archive', '1', 'yes'),
(789, 'dbem_events_default_archive_orderby', '_event_start', 'yes'),
(790, 'dbem_events_default_archive_order', 'ASC', 'yes'),
(791, 'dbem_events_archive_scope', 'past', 'yes'),
(792, 'dbem_cp_events_archive_formats', '1', 'yes'),
(793, 'dbem_cp_events_excerpt_formats', '1', 'yes'),
(794, 'dbem_cp_events_search_results', '0', 'yes'),
(795, 'dbem_cp_events_custom_fields', '0', 'yes'),
(796, 'dbem_cp_events_comments', '1', 'yes'),
(797, 'dbem_cp_locations_template', '', 'yes'),
(798, 'dbem_cp_locations_body_class', '', 'yes'),
(799, 'dbem_cp_locations_post_class', '', 'yes'),
(800, 'dbem_cp_locations_formats', '1', 'yes'),
(801, 'dbem_cp_locations_has_archive', '1', 'yes'),
(802, 'dbem_locations_default_archive_orderby', 'title', 'yes'),
(803, 'dbem_locations_default_archive_order', 'ASC', 'yes'),
(804, 'dbem_cp_locations_archive_formats', '1', 'yes'),
(805, 'dbem_cp_locations_excerpt_formats', '1', 'yes'),
(806, 'dbem_cp_locations_search_results', '0', 'yes'),
(807, 'dbem_cp_locations_custom_fields', '0', 'yes'),
(808, 'dbem_cp_locations_comments', '1', 'yes'),
(809, 'dbem_cp_categories_formats', '1', 'yes'),
(810, 'dbem_categories_default_archive_orderby', 'event_start_date,event_start_time,event_name', 'yes'),
(811, 'dbem_categories_default_archive_order', 'ASC', 'yes'),
(812, 'dbem_cp_tags_formats', '1', 'yes'),
(813, 'dbem_tags_default_archive_orderby', 'event_start_date,event_start_time,event_name', 'yes'),
(814, 'dbem_tags_default_archive_order', 'ASC', 'yes'),
(815, 'dbem_disable_thumbnails', '', 'yes'),
(816, 'dbem_feedback_reminder', '1545117990', 'yes'),
(817, 'dbem_events_page_ajax', '0', 'yes'),
(818, 'dbem_conditional_recursions', '1', 'yes'),
(819, 'dbem_data_privacy_consent_text', 'I consent to my submitted data being collected and stored as outlined by the site %s.', 'yes'),
(820, 'dbem_data_privacy_consent_remember', '1', 'yes'),
(821, 'dbem_data_privacy_consent_events', '1', 'yes'),
(822, 'dbem_data_privacy_consent_locations', '1', 'yes'),
(823, 'dbem_data_privacy_consent_bookings', '1', 'yes'),
(824, 'dbem_data_privacy_export_events', '1', 'yes'),
(825, 'dbem_data_privacy_export_locations', '1', 'yes'),
(826, 'dbem_data_privacy_export_bookings', '1', 'yes'),
(827, 'dbem_data_privacy_erase_events', '1', 'yes'),
(828, 'dbem_data_privacy_erase_locations', '1', 'yes'),
(829, 'dbem_data_privacy_erase_bookings', '1', 'yes'),
(830, 'dbem_time_24h', '1', 'yes'),
(831, 'dbem_credits', '1', 'yes'),
(832, 'dbem_version', '5.95', 'yes'),
(833, 'widget_em_locations_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(836, 'widget_gce_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(841, 'simple-calendar_version', '3.1.20', 'yes'),
(842, 'calendar_feed_children', 'a:0:{}', 'yes'),
(843, 'calendar_type_children', 'a:0:{}', 'yes'),
(844, 'simple-calendar_admin_notices', 'a:1:{s:12:\"calendar_259\";a:1:{s:17:\"google-no-api-key\";O:27:\"SimpleCalendar\\Admin\\Notice\":9:{s:2:\"id\";a:1:{s:12:\"calendar_259\";s:17:\"google-no-api-key\";}s:4:\"type\";s:5:\"error\";s:5:\"class\";s:0:\"\";s:10:\"capability\";s:0:\"\";s:6:\"screen\";a:1:{i:0;s:8:\"calendar\";}s:4:\"post\";a:1:{i:0;i:259;}s:11:\"dismissible\";b:1;s:7:\"visible\";b:1;s:7:\"content\";s:270:\"<p><i class=\"simcal-icon-warning\"></i> Your Google Calendar events will not show up until you <a href=\"http://localhost:8000/Healthcare/source/wp-admin/edit.php?post_type=calendar&amp;page=simple-calendar_settings&amp;tab=feeds\">create and save a Google API key</a>.</p>\";}}}', 'yes'),
(847, 'gcwt_general', 'a:1:{s:3:\"url\";s:0:\"\";}', 'yes'),
(848, 'wpfc_theme', '1', 'yes'),
(849, 'wpfc_theme_css', 'ui-lightness', 'yes'),
(850, 'wpfc_limit', '3', 'yes'),
(851, 'wpfc_limit_txt', 'more ...', 'yes'),
(852, 'wpfc_qtips', '1', 'yes'),
(853, 'wpfc_qtips_style', 'light', 'yes'),
(854, 'wpfc_qtips_my', 'top center', 'yes'),
(855, 'wpfc_qtips_at', 'bottom center', 'yes'),
(856, 'wpfc_qtips_rounded', '0', 'yes'),
(857, 'wpfc_qtips_image', '1', 'yes'),
(858, 'wpfc_qtips_image_w', '75', 'yes'),
(859, 'wpfc_qtips_image_h', '75', 'yes'),
(860, 'wpfc_timeFormat', 'h(:mm)A', 'yes'),
(861, 'wpfc_defaultView', 'month', 'yes'),
(862, 'wpfc_available_views', 'a:3:{i:0;s:5:\"month\";i:1;s:9:\"basicWeek\";i:2;s:8:\"basicDay\";}', 'yes'),
(863, 'wpfc_version', '1.2', 'yes'),
(864, 'wpfc_default_type', 'post', 'yes'),
(865, 'wpfc_qtips_shadow', '0', 'yes'),
(866, 'wpfc_scripts_limit', '', 'yes'),
(867, 'wpfc_post_taxonomies', 'a:1:{s:4:\"post\";a:1:{s:8:\"category\";s:1:\"1\";}}', 'yes'),
(874, 'manage-schedule', 'a:5:{s:9:\"pts_start\";s:5:\"00:00\";s:7:\"pts_end\";s:5:\"23:59\";s:12:\"pts_infosize\";s:7:\"parcial\";s:14:\"pts_allowstats\";s:3:\"yes\";s:25:\"pts_statistics_total_work\";i:1;}', 'yes'),
(877, 'scheduled_missed', '1545277335', 'yes'),
(879, 'wisdom_block_notice', 'a:1:{s:18:\"wp-scheduled-posts\";s:18:\"wp-scheduled-posts\";}', 'yes'),
(880, 'wpscp_options', 'a:10:{s:21:\"show_dashboard_widget\";i:1;s:26:\"show_in_front_end_adminbar\";i:1;s:16:\"show_in_adminbar\";b:1;s:15:\"allow_user_role\";a:1:{i:0;s:13:\"administrator\";}s:16:\"allow_post_types\";a:1:{i:0;s:4:\"post\";}s:16:\"allow_categories\";a:1:{i:0;s:1:\"0\";}s:22:\"adminbar_item_template\";s:50:\"<strong>%TITLE%...</strong> by %AUTHOR% for %DATE%\";s:21:\"adminbar_title_length\";s:2:\"45\";s:20:\"adminbar_date_format\";s:9:\"M-d h:i:a\";s:19:\"prevent_future_post\";b:0;}', 'yes'),
(881, 'count_wpsp', '8', 'yes'),
(999, 'cptui_taxonomies', 'a:2:{s:20:\"chuyen_muc_hoat_dong\";a:24:{s:4:\"name\";s:20:\"chuyen_muc_hoat_dong\";s:5:\"label\";s:25:\"Hoạt Động Liên Quan\";s:14:\"singular_label\";s:25:\"Hoạt Động Liên Quan\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"1\";s:17:\"show_admin_column\";s:4:\"true\";s:12:\"show_in_rest\";s:4:\"true\";s:18:\"show_in_quick_edit\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:9:\"hoat_dong\";}}s:12:\"tab_services\";a:24:{s:4:\"name\";s:12:\"tab_services\";s:5:\"label\";s:15:\"Tab Dịch Vụ\";s:14:\"singular_label\";s:15:\"Tab Dịch Vụ\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:18:\"show_in_quick_edit\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:7:\"dich_vu\";}}}', 'yes'),
(1036, 'widget_widget_sp_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1063, 'tab_services_children', 'a:0:{}', 'yes'),
(1107, 'chuyen_muc_hoat_dong_children', 'a:0:{}', 'yes'),
(1141, 'dwqa-question_category_children', 'a:0:{}', 'yes'),
(1148, 'ims_siteid', 'thanhbinh03091989@gmail.com', 'yes'),
(1149, 'ims_username', '', 'yes'),
(1150, 'ims_password', '', 'yes'),
(1151, 'ims_imageid', '125', 'yes'),
(1152, 'ims_leftcss', '', 'yes'),
(1153, 'ims_topcss', '', 'yes'),
(1154, 'ims_position', 'right', 'yes'),
(1155, 'ims_uploaded', 'no', 'yes'),
(1156, 'ims_fixed', 'yes', 'yes'),
(1157, 'ims_popup', 'no', 'yes'),
(1158, 'ims_popuptime', '10', 'yes'),
(1159, 'ims_popupimage', 'http://status.imsupporting.com/remotepopups/background0.png', 'yes'),
(1160, 'ims_popupbutton', '34', 'yes'),
(1161, 'ims_popupheight', '244', 'yes'),
(1162, 'ims_popupwidth', '344', 'yes'),
(1163, 'ims_popuptop', '200', 'yes'),
(1164, 'ims_popupleft', '300', 'yes'),
(1168, 'secure_auth_key', '_8S(@)~[V.[qUwIb  !PH8mmny0ai9+_`3K@Z[b24.gW1nb%v|KZ)UR}pB|DLB.S', 'no'),
(1169, 'secure_auth_salt', '`QO*cu~?1(VMpX7%OfaSU3 eY+<z%P;0urF3${9<;n`Nc9DU]Kd4nj|v+ST+LY c', 'no'),
(1191, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"binhdarkcu@gmail.com\";s:7:\"version\";s:5:\"4.9.9\";s:9:\"timestamp\";i:1545733218;}', 'no'),
(1237, 'options_footer_address', '[:vi]Số 37 Hoàng Hoa Thám, Phường 13, Quận Tân Bình, Tp.HCM[:]', 'no'),
(1238, '_options_footer_address', 'field_5c22fbd3727b7', 'no'),
(1239, 'options_footer_phone', '[:vi]0369.03.18.18[:]', 'no'),
(1240, '_options_footer_phone', 'field_5c22fbe6727b8', 'no'),
(1241, 'options_footer_email', 'info@goldenhealthcarevn.com', 'no'),
(1242, '_options_footer_email', 'field_5c22fbfc727b9', 'no'),
(1243, 'options_footer_google_map', '', 'no'),
(1244, '_options_footer_google_map', 'field_5c22fc10727ba', 'no'),
(1245, 'options_footer_socials_0_social_name', '[:vi]Facebook[:]', 'no'),
(1246, '_options_footer_socials_0_social_name', 'field_5c22fd686ad7e', 'no'),
(1247, 'options_footer_socials_0_social_link', '[:vi]#[:]', 'no'),
(1248, '_options_footer_socials_0_social_link', 'field_5c22fd716ad7f', 'no'),
(1249, 'options_footer_socials_1_social_name', '[:vi]Zalo[:]', 'no'),
(1250, '_options_footer_socials_1_social_name', 'field_5c22fd686ad7e', 'no'),
(1251, 'options_footer_socials_1_social_link', '[:vi]#[:]', 'no'),
(1252, '_options_footer_socials_1_social_link', 'field_5c22fd716ad7f', 'no'),
(1253, 'options_footer_socials_2_social_name', '[:vi]Instagram[:]', 'no'),
(1254, '_options_footer_socials_2_social_name', 'field_5c22fd686ad7e', 'no'),
(1255, 'options_footer_socials_2_social_link', '[:vi]#[:]', 'no'),
(1256, '_options_footer_socials_2_social_link', 'field_5c22fd716ad7f', 'no'),
(1257, 'options_footer_socials_3_social_name', '[:vi]Youtube[:]', 'no'),
(1258, '_options_footer_socials_3_social_name', 'field_5c22fd686ad7e', 'no'),
(1259, 'options_footer_socials_3_social_link', '[:vi]#[:]', 'no'),
(1260, '_options_footer_socials_3_social_link', 'field_5c22fd716ad7f', 'no'),
(1261, 'options_footer_socials_4_social_name', '[:vi]App mobile[:]', 'no'),
(1262, '_options_footer_socials_4_social_name', 'field_5c22fd686ad7e', 'no'),
(1263, 'options_footer_socials_4_social_link', '[:vi]#[:]', 'no'),
(1264, '_options_footer_socials_4_social_link', 'field_5c22fd716ad7f', 'no'),
(1265, 'options_footer_socials', '5', 'no'),
(1266, '_options_footer_socials', 'field_5c22fd4e6ad7d', 'no'),
(1268, 'options_footer_working_time', '[:vi]- Giờ làm việc buổi sáng: Từ 7h30 - 12h. <br/>\r\n- Giờ nghỉ trưa: Từ 12h – 13h. <br/>\r\n- Giờ làm việc buổi chiều: Từ 13h - 16h30.[:]', 'no'),
(1269, '_options_footer_working_time', 'field_5c22ffd774f66', 'no'),
(1279, 'new_admin_email', 'binhdarkcu@gmail.com', 'yes'),
(1283, 'qtranslate_detect_browser_language', '0', 'yes'),
(1418, '_site_transient_timeout_browser_0ac1f9240df96b3586c220faef490724', '1547138320', 'no'),
(1419, '_site_transient_browser_0ac1f9240df96b3586c220faef490724', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"71.0.3578.98\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1442, '_site_transient_timeout_browser_0b7b0b55fdad6f060cb1a7eb4a93bd74', '1547172550', 'no'),
(1443, '_site_transient_browser_0b7b0b55fdad6f060cb1a7eb4a93bd74', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"71.0.3578.98\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1449, 'category_children', 'a:0:{}', 'yes'),
(1455, 'pagenavi_options', 'a:15:{s:10:\"pages_text\";s:36:\"Page %CURRENT_PAGE% of %TOTAL_PAGES%\";s:12:\"current_text\";s:13:\"%PAGE_NUMBER%\";s:9:\"page_text\";s:13:\"%PAGE_NUMBER%\";s:10:\"first_text\";s:13:\"&laquo; First\";s:9:\"last_text\";s:12:\"Last &raquo;\";s:9:\"prev_text\";s:7:\"&laquo;\";s:9:\"next_text\";s:7:\"&raquo;\";s:12:\"dotleft_text\";s:3:\"...\";s:13:\"dotright_text\";s:3:\"...\";s:9:\"num_pages\";i:5;s:23:\"num_larger_page_numbers\";i:3;s:28:\"larger_page_numbers_multiple\";i:10;s:11:\"always_show\";b:0;s:16:\"use_pagenavi_css\";b:1;s:5:\"style\";i:1;}', 'yes'),
(1460, 'scporder_install', '1', 'yes'),
(1461, 'scporder_options', 'a:2:{s:7:\"objects\";a:2:{i:0;s:4:\"post\";i:1;s:18:\"slide_introduction\";}s:4:\"tags\";s:0:\"\";}', 'yes'),
(1470, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.2\";s:7:\"version\";s:5:\"5.0.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.2\";s:7:\"version\";s:5:\"5.0.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1546780360;s:15:\"version_checked\";s:5:\"4.9.9\";s:12:\"translations\";a:0:{}}', 'no'),
(1510, '_site_transient_timeout_theme_roots', '1546782164', 'no'),
(1511, '_site_transient_theme_roots', 'a:4:{s:10:\"healthcare\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(1512, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1546780366;s:7:\"checked\";a:4:{s:10:\"healthcare\";s:3:\"2.0\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:4:{s:10:\"healthcare\";a:4:{s:5:\"theme\";s:10:\"healthcare\";s:11:\"new_version\";s:5:\"2.2.0\";s:3:\"url\";s:40:\"https://wordpress.org/themes/healthcare/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/healthcare.2.2.0.zip\";}s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.2.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.9.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.7.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(1513, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1546780369;s:7:\"checked\";a:10:{s:33:\"acf-qtranslate/acf-qtranslate.php\";s:6:\"1.7.25\";s:34:\"advanced-custom.php-fields-pro/acf.php\";s:5:\"5.6.1\";s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:43:\"custom.php-post-type-ui/custom.php-post-type-ui.php\";s:5:\"1.6.1\";s:41:\"dw-question-answer/dw-question-answer.php\";s:5:\"1.5.5\";s:9:\"hello.php\";s:3:\"1.7\";s:29:\"image-widget/image-widget.php\";s:5:\"4.4.7\";s:27:\"qtranslate-x/qtranslate.php\";s:7:\"3.4.6.8\";s:53:\"simple-custom.php-post-order/simple-custom.php-post-order.php\";s:5:\"2.4.0\";s:27:\"wp-pagenavi/wp-pagenavi.php\";s:4:\"2.93\";}s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.0.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom.php-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom.php-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom.php-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.7.9\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:5:\"4.9.9\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom.php-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom.php-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:33:\"acf-qtranslate/acf-qtranslate.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/acf-qtranslate\";s:4:\"slug\";s:14:\"acf-qtranslate\";s:6:\"plugin\";s:33:\"acf-qtranslate/acf-qtranslate.php\";s:11:\"new_version\";s:6:\"1.7.25\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/acf-qtranslate/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/acf-qtranslate.1.7.25.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:58:\"https://s.w.org/plugins/geopattern-icon/acf-qtranslate.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom.php-post-type-ui/custom.php-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom.php-post-type-ui\";s:4:\"slug\";s:19:\"custom.php-post-type-ui\";s:6:\"plugin\";s:43:\"custom.php-post-type-ui/custom.php-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.6.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom.php-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom.php-post-type-ui.1.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom.php-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom.php-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom.php-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom.php-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"dw-question-answer/dw-question-answer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/dw-question-answer\";s:4:\"slug\";s:18:\"dw-question-answer\";s:6:\"plugin\";s:41:\"dw-question-answer/dw-question-answer.php\";s:11:\"new_version\";s:5:\"1.5.5\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/dw-question-answer/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/dw-question-answer.1.5.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/dw-question-answer/assets/icon-128x128.png?rev=1352476\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/dw-question-answer/assets/banner-772x250.png?rev=1352476\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"image-widget/image-widget.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/image-widget\";s:4:\"slug\";s:12:\"image-widget\";s:6:\"plugin\";s:29:\"image-widget/image-widget.php\";s:11:\"new_version\";s:5:\"4.4.7\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/image-widget/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/image-widget.4.4.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/image-widget/assets/icon-256x256.jpg?rev=985707\";s:2:\"1x\";s:64:\"https://ps.w.org/image-widget/assets/icon-128x128.jpg?rev=985707\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/image-widget/assets/banner-1544x500.jpg?rev=593018\";s:2:\"1x\";s:66:\"https://ps.w.org/image-widget/assets/banner-772x250.png?rev=517739\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"qtranslate-x/qtranslate.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/qtranslate-x\";s:4:\"slug\";s:12:\"qtranslate-x\";s:6:\"plugin\";s:27:\"qtranslate-x/qtranslate.php\";s:11:\"new_version\";s:7:\"3.4.6.8\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/qtranslate-x/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/qtranslate-x.3.4.6.8.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://s.w.org/plugins/geopattern-icon/qtranslate-x_f9f9f9.svg\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/qtranslate-x/assets/banner-1544x500.png?rev=1286019\";s:2:\"1x\";s:67:\"https://ps.w.org/qtranslate-x/assets/banner-772x250.png?rev=1286019\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"simple-custom.php-post-order/simple-custom.php-post-order.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/simple-custom.php-post-order\";s:4:\"slug\";s:24:\"simple-custom.php-post-order\";s:6:\"plugin\";s:53:\"simple-custom.php-post-order/simple-custom.php-post-order.php\";s:11:\"new_version\";s:5:\"2.4.0\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/simple-custom.php-post-order/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/simple-custom.php-post-order.2.4.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/simple-custom.php-post-order/assets/icon-256x256.jpg?rev=1859717\";s:2:\"1x\";s:77:\"https://ps.w.org/simple-custom.php-post-order/assets/icon-256x256.jpg?rev=1859717\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/simple-custom.php-post-order/assets/banner-772x250.jpg?rev=1859717\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"wp-pagenavi/wp-pagenavi.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/wp-pagenavi\";s:4:\"slug\";s:11:\"wp-pagenavi\";s:6:\"plugin\";s:27:\"wp-pagenavi/wp-pagenavi.php\";s:11:\"new_version\";s:4:\"2.93\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/wp-pagenavi/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/wp-pagenavi.2.93.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:55:\"https://ps.w.org/wp-pagenavi/assets/icon.svg?rev=977997\";s:3:\"svg\";s:55:\"https://ps.w.org/wp-pagenavi/assets/icon.svg?rev=977997\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-pagenavi/assets/banner-1544x500.jpg?rev=1206758\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-pagenavi/assets/banner-772x250.jpg?rev=1206758\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

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
(7, 6, '_edit_lock', '1545106112:1'),
(8, 8, '_edit_last', '1'),
(9, 8, '_edit_lock', '1545663973:1'),
(10, 10, '_edit_last', '1'),
(11, 10, '_edit_lock', '1546581636:1'),
(12, 12, '_edit_last', '1'),
(13, 12, '_edit_lock', '1545106892:1'),
(20, 19, '_wp_attached_file', '2018/12/QCweb.jpg'),
(21, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:6249;s:6:\"height\";i:1500;s:4:\"file\";s:17:\"2018/12/QCweb.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"QCweb-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"QCweb-300x72.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"QCweb-768x184.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:184;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"QCweb-1024x246.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:246;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
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
(32, 23, '_edit_lock', '1546534297:1'),
(33, 24, '_wp_attached_file', '2018/12/Chup-tu-dh-yd.jpg'),
(34, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:713;s:4:\"file\";s:25:\"2018/12/Chup-tu-dh-yd.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Chup-tu-dh-yd-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Chup-tu-dh-yd-300x178.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:178;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"Chup-tu-dh-yd-768x456.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:456;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"Chup-tu-dh-yd-1024x608.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:608;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 23, '_thumbnail_id', '347'),
(36, 23, 'button_text', '[:en]Xem chi tiết[:]'),
(37, 23, '_button_text', 'field_5c111f3d4bf89'),
(38, 23, 'button', ''),
(39, 23, '_button', 'field_5c111f10e4063'),
(40, 25, '_edit_last', '1'),
(41, 25, '_edit_lock', '1546534221:1'),
(42, 26, '_wp_attached_file', '2018/12/cong-hung-vuong.jpg'),
(43, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1349;s:6:\"height\";i:758;s:4:\"file\";s:27:\"2018/12/cong-hung-vuong.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cong-hung-vuong-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cong-hung-vuong-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"cong-hung-vuong-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"cong-hung-vuong-1024x575.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:575;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.9\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:8:\"SM-J700H\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1483083300\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"3.7\";s:3:\"iso\";s:2:\"40\";s:13:\"shutter_speed\";s:8:\"0.003125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(44, 25, '_thumbnail_id', '346'),
(45, 25, 'button_text', ''),
(46, 25, '_button_text', 'field_5c111f3d4bf89'),
(47, 25, 'button', ''),
(48, 25, '_button', 'field_5c111f10e4063'),
(49, 27, '_edit_last', '1'),
(50, 27, '_edit_lock', '1546534180:1'),
(51, 28, '_wp_attached_file', '2018/12/GuiSYT1.jpg'),
(52, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:697;s:4:\"file\";s:19:\"2018/12/GuiSYT1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"GuiSYT1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"GuiSYT1-300x174.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:174;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"GuiSYT1-768x446.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:446;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"GuiSYT1-1024x595.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:595;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(53, 27, '_thumbnail_id', '345'),
(54, 27, 'button_text', ''),
(55, 27, '_button_text', 'field_5c111f3d4bf89'),
(56, 27, 'button', ''),
(57, 27, '_button', 'field_5c111f10e4063'),
(58, 29, '_edit_last', '1'),
(59, 29, '_edit_lock', '1546533945:1'),
(60, 30, '_wp_attached_file', '2018/12/khoa-dich-vu.jpg'),
(61, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1276;s:6:\"height\";i:822;s:4:\"file\";s:24:\"2018/12/khoa-dich-vu.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"khoa-dich-vu-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"khoa-dich-vu-300x193.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:193;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"khoa-dich-vu-768x495.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:495;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"khoa-dich-vu-1024x660.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:660;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(62, 29, '_thumbnail_id', '344'),
(63, 29, 'button_text', '[:en]Xem chi tiết[:]'),
(64, 29, '_button_text', 'field_5c111f3d4bf89'),
(65, 29, 'button', ''),
(66, 29, '_button', 'field_5c111f10e4063'),
(67, 31, '_edit_last', '1'),
(68, 31, '_edit_lock', '1546533906:1'),
(69, 32, '_wp_attached_file', '2018/12/ung-buou.jpg'),
(70, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1349;s:6:\"height\";i:819;s:4:\"file\";s:20:\"2018/12/ung-buou.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"ung-buou-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"ung-buou-300x182.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:182;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"ung-buou-768x466.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:466;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"ung-buou-1024x622.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:622;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"Redmi Note 4\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1526897946\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"3.57\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:18:\"0.0013586956521739\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(71, 31, '_thumbnail_id', '343'),
(72, 31, 'button_text', '[:en]Xem chi tiết[:]'),
(73, 31, '_button_text', 'field_5c111f3d4bf89'),
(74, 31, 'button', ''),
(75, 31, '_button', 'field_5c111f10e4063'),
(76, 34, '_wp_attached_file', '2018/12/GuiSYT2.jpg'),
(77, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:691;s:4:\"file\";s:19:\"2018/12/GuiSYT2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"GuiSYT2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"GuiSYT2-300x173.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:173;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"GuiSYT2-768x442.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:442;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"GuiSYT2-1024x590.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:590;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(78, 33, '_edit_last', '1'),
(79, 33, '_thumbnail_id', '342'),
(80, 33, 'button_text', ''),
(81, 33, '_button_text', 'field_5c111f3d4bf89'),
(82, 33, 'button', ''),
(83, 33, '_button', 'field_5c111f10e4063'),
(84, 33, '_edit_lock', '1546533875:1'),
(85, 35, '_edit_last', '1'),
(86, 35, '_edit_lock', '1546533835:1'),
(87, 36, '_wp_attached_file', '2018/12/IMG_5089.jpg'),
(88, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5184;s:6:\"height\";i:3456;s:4:\"file\";s:20:\"2018/12/IMG_5089.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_5089-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_5089-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_5089-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_5089-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"Canon EOS 7D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1523380049\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"15\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:6:\"0.0125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(89, 35, '_thumbnail_id', '341'),
(90, 35, 'button_text', 'Xem chi tiết'),
(91, 35, '_button_text', 'field_5c111f3d4bf89'),
(92, 35, 'button', '8'),
(93, 35, '_button', 'field_5c111f10e4063'),
(94, 37, '_edit_last', '1'),
(95, 37, '_edit_lock', '1546533771:1'),
(96, 38, '_wp_attached_file', '2018/12/khu-b.jpg'),
(97, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1349;s:6:\"height\";i:755;s:4:\"file\";s:17:\"2018/12/khu-b.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"khu-b-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"khu-b-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"khu-b-768x430.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:430;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"khu-b-1024x573.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:573;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:14:\"Canon IXUS 185\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1524494938\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"5\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(98, 37, '_thumbnail_id', '340'),
(99, 37, 'button_text', ''),
(100, 37, '_button_text', 'field_5c111f3d4bf89'),
(101, 37, 'button', ''),
(102, 37, '_button', 'field_5c111f10e4063'),
(103, 40, '_wp_attached_file', '2018/12/khu-c.jpg'),
(104, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1348;s:6:\"height\";i:785;s:4:\"file\";s:17:\"2018/12/khu-c.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"khu-c-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"khu-c-300x175.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"khu-c-768x447.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:447;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"khu-c-1024x596.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:596;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"Redmi Note 4\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1527064953\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"3.57\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:18:\"0.0057471264367816\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(105, 39, '_edit_last', '1'),
(106, 39, '_thumbnail_id', '339'),
(107, 39, 'button_text', '[:vi]Xem chi tiết[:]'),
(108, 39, '_button_text', 'field_5c111f3d4bf89'),
(109, 39, 'button', '8'),
(110, 39, '_button', 'field_5c111f10e4063'),
(111, 39, '_edit_lock', '1546533703:1'),
(112, 41, '_edit_last', '1'),
(113, 41, '_edit_lock', '1545288791:1'),
(114, 42, '_wp_attached_file', '2018/12/DSC_1540.jpg'),
(115, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:430;s:6:\"height\";i:286;s:4:\"file\";s:20:\"2018/12/DSC_1540.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"DSC_1540-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"DSC_1540-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(116, 41, '_thumbnail_id', '42'),
(117, 43, '_edit_last', '1'),
(118, 43, '_edit_lock', '1545285606:1'),
(119, 43, '_thumbnail_id', '42'),
(120, 44, '_edit_last', '1'),
(121, 44, '_edit_lock', '1545663788:1'),
(122, 45, '_wp_attached_file', '2018/12/no-image.jpg'),
(123, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:430;s:6:\"height\";i:216;s:4:\"file\";s:20:\"2018/12/no-image.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"no-image-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"no-image-300x151.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:151;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(124, 44, '_thumbnail_id', '45'),
(125, 46, '_edit_last', '1'),
(126, 46, '_edit_lock', '1545290887:1'),
(127, 46, '_thumbnail_id', '45'),
(128, 47, '_edit_last', '1'),
(129, 47, '_edit_lock', '1545663792:1'),
(130, 47, '_thumbnail_id', '45'),
(131, 48, '_edit_last', '1'),
(132, 48, '_edit_lock', '1545208912:1'),
(133, 49, '_wp_attached_file', '2018/12/doctor.jpg'),
(134, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:371;s:6:\"height\";i:425;s:4:\"file\";s:18:\"2018/12/doctor.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"doctor-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"doctor-262x300.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(135, 48, '_thumbnail_id', '49'),
(136, 51, '_edit_last', '1'),
(137, 51, '_edit_lock', '1545285594:1'),
(138, 51, '_thumbnail_id', '42'),
(139, 52, '_edit_last', '1'),
(140, 52, '_edit_lock', '1545285573:1'),
(141, 52, '_thumbnail_id', '42'),
(142, 53, '_edit_last', '1'),
(143, 53, '_edit_lock', '1545287855:1'),
(144, 53, '_thumbnail_id', '42'),
(145, 54, '_edit_last', '1'),
(146, 54, '_edit_lock', '1545287640:1'),
(147, 54, '_thumbnail_id', '42'),
(148, 55, '_menu_item_type', 'custom.php'),
(149, 55, '_menu_item_menu_item_parent', '0'),
(150, 55, '_menu_item_object_id', '55'),
(151, 55, '_menu_item_object', 'custom.php'),
(152, 55, '_menu_item_target', ''),
(153, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(154, 55, '_menu_item_xfn', ''),
(155, 55, '_menu_item_url', 'https://goldenhealthcarevn.com'),
(157, 56, '_menu_item_type', 'post_type'),
(158, 56, '_menu_item_menu_item_parent', '0'),
(159, 56, '_menu_item_object_id', '6'),
(160, 56, '_menu_item_object', 'page'),
(161, 56, '_menu_item_target', ''),
(162, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(163, 56, '_menu_item_xfn', ''),
(164, 56, '_menu_item_url', ''),
(166, 57, '_menu_item_type', 'post_type'),
(167, 57, '_menu_item_menu_item_parent', '56'),
(168, 57, '_menu_item_object_id', '8'),
(169, 57, '_menu_item_object', 'page'),
(170, 57, '_menu_item_target', ''),
(171, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(172, 57, '_menu_item_xfn', ''),
(173, 57, '_menu_item_url', ''),
(175, 58, '_menu_item_type', 'post_type'),
(176, 58, '_menu_item_menu_item_parent', '56'),
(177, 58, '_menu_item_object_id', '10'),
(178, 58, '_menu_item_object', 'page'),
(179, 58, '_menu_item_target', ''),
(180, 58, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(181, 58, '_menu_item_xfn', ''),
(182, 58, '_menu_item_url', ''),
(184, 59, '_menu_item_type', 'post_type'),
(185, 59, '_menu_item_menu_item_parent', '56'),
(186, 59, '_menu_item_object_id', '12'),
(187, 59, '_menu_item_object', 'page'),
(188, 59, '_menu_item_target', ''),
(189, 59, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(190, 59, '_menu_item_xfn', ''),
(191, 59, '_menu_item_url', ''),
(193, 60, '_menu_item_type', 'post_type'),
(194, 60, '_menu_item_menu_item_parent', '0'),
(195, 60, '_menu_item_object_id', '2'),
(196, 60, '_menu_item_object', 'page'),
(197, 60, '_menu_item_target', ''),
(198, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
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
(243, 76, '_edit_lock', '1545708899:1'),
(244, 78, '_edit_last', '1'),
(245, 78, '_edit_lock', '1546581804:1'),
(246, 80, '_edit_last', '1'),
(247, 80, '_edit_lock', '1545708607:1'),
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
(259, 92, '_edit_lock', '1546570347:1'),
(260, 94, '_edit_last', '1'),
(261, 94, '_edit_lock', '1546568199:1'),
(262, 96, '_edit_last', '1'),
(263, 96, '_edit_lock', '1545712869:1'),
(264, 98, '_edit_last', '1'),
(265, 98, '_edit_lock', '1544759925:1'),
(266, 100, '_edit_last', '1'),
(267, 100, '_edit_lock', '1544759939:1'),
(268, 102, '_edit_last', '1'),
(269, 102, '_edit_lock', '1545712951:1'),
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
(302, 128, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(303, 128, '_menu_item_xfn', ''),
(304, 128, '_menu_item_url', ''),
(306, 129, '_menu_item_type', 'post_type'),
(307, 129, '_menu_item_menu_item_parent', '128'),
(308, 129, '_menu_item_object_id', '78'),
(309, 129, '_menu_item_object', 'page'),
(310, 129, '_menu_item_target', ''),
(311, 129, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(312, 129, '_menu_item_xfn', ''),
(313, 129, '_menu_item_url', ''),
(315, 130, '_menu_item_type', 'post_type'),
(316, 130, '_menu_item_menu_item_parent', '128'),
(317, 130, '_menu_item_object_id', '80'),
(318, 130, '_menu_item_object', 'page'),
(319, 130, '_menu_item_target', ''),
(320, 130, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(321, 130, '_menu_item_xfn', ''),
(322, 130, '_menu_item_url', ''),
(324, 131, '_menu_item_type', 'post_type'),
(325, 131, '_menu_item_menu_item_parent', '128'),
(326, 131, '_menu_item_object_id', '76'),
(327, 131, '_menu_item_object', 'page'),
(328, 131, '_menu_item_target', ''),
(329, 131, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(330, 131, '_menu_item_xfn', ''),
(331, 131, '_menu_item_url', ''),
(333, 132, '_menu_item_type', 'post_type'),
(334, 132, '_menu_item_menu_item_parent', '128'),
(335, 132, '_menu_item_object_id', '68'),
(336, 132, '_menu_item_object', 'page'),
(337, 132, '_menu_item_target', ''),
(338, 132, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(339, 132, '_menu_item_xfn', ''),
(340, 132, '_menu_item_url', ''),
(342, 133, '_menu_item_type', 'post_type'),
(343, 133, '_menu_item_menu_item_parent', '128'),
(344, 133, '_menu_item_object_id', '70'),
(345, 133, '_menu_item_object', 'page'),
(346, 133, '_menu_item_target', ''),
(347, 133, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(348, 133, '_menu_item_xfn', ''),
(349, 133, '_menu_item_url', ''),
(351, 134, '_menu_item_type', 'post_type'),
(352, 134, '_menu_item_menu_item_parent', '128'),
(353, 134, '_menu_item_object_id', '74'),
(354, 134, '_menu_item_object', 'page'),
(355, 134, '_menu_item_target', ''),
(356, 134, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(357, 134, '_menu_item_xfn', ''),
(358, 134, '_menu_item_url', ''),
(360, 135, '_menu_item_type', 'post_type'),
(361, 135, '_menu_item_menu_item_parent', '128'),
(362, 135, '_menu_item_object_id', '72'),
(363, 135, '_menu_item_object', 'page'),
(364, 135, '_menu_item_target', ''),
(365, 135, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(366, 135, '_menu_item_xfn', ''),
(367, 135, '_menu_item_url', ''),
(369, 136, '_menu_item_type', 'post_type'),
(370, 136, '_menu_item_menu_item_parent', '128'),
(371, 136, '_menu_item_object_id', '82'),
(372, 136, '_menu_item_object', 'page'),
(373, 136, '_menu_item_target', ''),
(374, 136, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(375, 136, '_menu_item_xfn', ''),
(376, 136, '_menu_item_url', ''),
(396, 139, '_menu_item_type', 'post_type'),
(397, 139, '_menu_item_menu_item_parent', '0'),
(398, 139, '_menu_item_object_id', '88'),
(399, 139, '_menu_item_object', 'page'),
(400, 139, '_menu_item_target', ''),
(401, 139, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(402, 139, '_menu_item_xfn', ''),
(403, 139, '_menu_item_url', ''),
(405, 140, '_menu_item_type', 'post_type'),
(406, 140, '_menu_item_menu_item_parent', '139'),
(407, 140, '_menu_item_object_id', '96'),
(408, 140, '_menu_item_object', 'page'),
(409, 140, '_menu_item_target', ''),
(410, 140, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(411, 140, '_menu_item_xfn', ''),
(412, 140, '_menu_item_url', ''),
(414, 141, '_menu_item_type', 'post_type'),
(415, 141, '_menu_item_menu_item_parent', '139'),
(416, 141, '_menu_item_object_id', '94'),
(417, 141, '_menu_item_object', 'page'),
(418, 141, '_menu_item_target', ''),
(419, 141, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(420, 141, '_menu_item_xfn', ''),
(421, 141, '_menu_item_url', ''),
(423, 142, '_menu_item_type', 'post_type'),
(424, 142, '_menu_item_menu_item_parent', '139'),
(425, 142, '_menu_item_object_id', '92'),
(426, 142, '_menu_item_object', 'page'),
(427, 142, '_menu_item_target', ''),
(428, 142, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(429, 142, '_menu_item_xfn', ''),
(430, 142, '_menu_item_url', ''),
(432, 143, '_menu_item_type', 'post_type'),
(433, 143, '_menu_item_menu_item_parent', '139'),
(434, 143, '_menu_item_object_id', '90'),
(435, 143, '_menu_item_object', 'page'),
(436, 143, '_menu_item_target', ''),
(437, 143, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(438, 143, '_menu_item_xfn', ''),
(439, 143, '_menu_item_url', ''),
(441, 144, '_menu_item_type', 'post_type'),
(442, 144, '_menu_item_menu_item_parent', '0'),
(443, 144, '_menu_item_object_id', '100'),
(444, 144, '_menu_item_object', 'page'),
(445, 144, '_menu_item_target', ''),
(446, 144, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(447, 144, '_menu_item_xfn', ''),
(448, 144, '_menu_item_url', ''),
(450, 145, '_menu_item_type', 'post_type'),
(451, 145, '_menu_item_menu_item_parent', '0'),
(452, 145, '_menu_item_object_id', '102'),
(453, 145, '_menu_item_object', 'page'),
(454, 145, '_menu_item_target', ''),
(455, 145, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(456, 145, '_menu_item_xfn', ''),
(457, 145, '_menu_item_url', ''),
(459, 146, '_menu_item_type', 'post_type'),
(460, 146, '_menu_item_menu_item_parent', '145'),
(461, 146, '_menu_item_object_id', '120'),
(462, 146, '_menu_item_object', 'page'),
(463, 146, '_menu_item_target', ''),
(464, 146, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(465, 146, '_menu_item_xfn', ''),
(466, 146, '_menu_item_url', ''),
(468, 147, '_menu_item_type', 'post_type'),
(469, 147, '_menu_item_menu_item_parent', '145'),
(470, 147, '_menu_item_object_id', '104'),
(471, 147, '_menu_item_object', 'page'),
(472, 147, '_menu_item_target', ''),
(473, 147, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(474, 147, '_menu_item_xfn', ''),
(475, 147, '_menu_item_url', ''),
(477, 148, '_menu_item_type', 'post_type'),
(478, 148, '_menu_item_menu_item_parent', '145'),
(479, 148, '_menu_item_object_id', '106'),
(480, 148, '_menu_item_object', 'page'),
(481, 148, '_menu_item_target', ''),
(482, 148, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(483, 148, '_menu_item_xfn', ''),
(484, 148, '_menu_item_url', ''),
(486, 149, '_menu_item_type', 'post_type'),
(487, 149, '_menu_item_menu_item_parent', '145'),
(488, 149, '_menu_item_object_id', '118'),
(489, 149, '_menu_item_object', 'page'),
(490, 149, '_menu_item_target', ''),
(491, 149, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(492, 149, '_menu_item_xfn', ''),
(493, 149, '_menu_item_url', ''),
(495, 150, '_menu_item_type', 'post_type'),
(496, 150, '_menu_item_menu_item_parent', '145'),
(497, 150, '_menu_item_object_id', '122'),
(498, 150, '_menu_item_object', 'page'),
(499, 150, '_menu_item_target', ''),
(500, 150, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(501, 150, '_menu_item_xfn', ''),
(502, 150, '_menu_item_url', ''),
(504, 151, '_menu_item_type', 'post_type'),
(505, 151, '_menu_item_menu_item_parent', '145'),
(506, 151, '_menu_item_object_id', '114'),
(507, 151, '_menu_item_object', 'page'),
(508, 151, '_menu_item_target', ''),
(509, 151, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(510, 151, '_menu_item_xfn', ''),
(511, 151, '_menu_item_url', ''),
(513, 152, '_menu_item_type', 'post_type'),
(514, 152, '_menu_item_menu_item_parent', '145'),
(515, 152, '_menu_item_object_id', '108'),
(516, 152, '_menu_item_object', 'page'),
(517, 152, '_menu_item_target', ''),
(518, 152, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(519, 152, '_menu_item_xfn', ''),
(520, 152, '_menu_item_url', ''),
(522, 153, '_menu_item_type', 'post_type'),
(523, 153, '_menu_item_menu_item_parent', '145'),
(524, 153, '_menu_item_object_id', '110'),
(525, 153, '_menu_item_object', 'page'),
(526, 153, '_menu_item_target', ''),
(527, 153, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(528, 153, '_menu_item_xfn', ''),
(529, 153, '_menu_item_url', ''),
(531, 154, '_menu_item_type', 'post_type'),
(532, 154, '_menu_item_menu_item_parent', '145'),
(533, 154, '_menu_item_object_id', '116'),
(534, 154, '_menu_item_object', 'page'),
(535, 154, '_menu_item_target', ''),
(536, 154, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(537, 154, '_menu_item_xfn', ''),
(538, 154, '_menu_item_url', ''),
(540, 155, '_menu_item_type', 'post_type'),
(541, 155, '_menu_item_menu_item_parent', '145'),
(542, 155, '_menu_item_object_id', '124'),
(543, 155, '_menu_item_object', 'page'),
(544, 155, '_menu_item_target', ''),
(545, 155, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(546, 155, '_menu_item_xfn', ''),
(547, 155, '_menu_item_url', ''),
(549, 156, '_menu_item_type', 'post_type'),
(550, 156, '_menu_item_menu_item_parent', '0'),
(551, 156, '_menu_item_object_id', '98'),
(552, 156, '_menu_item_object', 'page'),
(553, 156, '_menu_item_target', ''),
(554, 156, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(555, 156, '_menu_item_xfn', ''),
(556, 156, '_menu_item_url', ''),
(558, 157, '_menu_item_type', 'post_type'),
(559, 157, '_menu_item_menu_item_parent', '0'),
(560, 157, '_menu_item_object_id', '126'),
(561, 157, '_menu_item_object', 'page'),
(562, 157, '_menu_item_target', ''),
(563, 157, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(564, 157, '_menu_item_xfn', ''),
(565, 157, '_menu_item_url', ''),
(567, 8, '_wp_page_template', 'default'),
(568, 10, '_wp_page_template', 'single.php'),
(569, 12, '_wp_page_template', 'single.php'),
(570, 163, '_wp_attached_file', '2018/12/dieu-tri-trong-ngay-1.jpg'),
(571, 163, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:33:\"2018/12/dieu-tri-trong-ngay-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"dieu-tri-trong-ngay-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"dieu-tri-trong-ngay-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(572, 8, '_thumbnail_id', '163'),
(573, 164, '_wp_attached_file', '2018/12/pkthongminh_1.jpg'),
(574, 164, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:852;s:6:\"height\";i:640;s:4:\"file\";s:25:\"2018/12/pkthongminh_1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"pkthongminh_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"pkthongminh_1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"pkthongminh_1-768x577.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:577;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(575, 10, '_thumbnail_id', '164'),
(576, 165, '_wp_attached_file', '2018/12/1.jpg'),
(577, 165, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:863;s:6:\"height\";i:649;s:4:\"file\";s:13:\"2018/12/1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x226.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:226;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"1-768x578.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:578;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
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
(589, 12, 'intro_description', 'Hơn nữa việc công khai trên màn hình tất cả thông tin về tên tuổi bệnh nhân, số thứ tự chờ khám, dự kiến thời gian sẽ được khám, số tiền bệnh nhân sẽ phải đóng'),
(590, 12, '_intro_description', 'field_5c135b381f530'),
(591, 170, 'intro_description', 'Hơn nữa việc công khai trên màn hình tất cả thông tin về  tên tuổi bệnh nhân, số thứ tự chờ khám, dự kiến thời gian sẽ được khám, số tiền bệnh nhân sẽ phải đóng'),
(592, 170, '_intro_description', 'field_5c135b381f530'),
(593, 6, '_wp_page_template', 'default'),
(594, 172, 'intro_description', 'Với trên 1000 lượt khám mỗi ngày, Bệnh viện quận 4 hy vọng việc triển khai mô hình này sẽ mang lại sự tiện lợi nhất cho bệnh nhân đến khám và điều trị tại Bệnh Viện Quận 4'),
(595, 172, '_intro_description', 'field_5c135b381f530'),
(596, 173, '_edit_last', '1'),
(597, 173, '_edit_lock', '1545813030:1'),
(598, 175, '_wp_attached_file', '2018/12/Logo_PNT.png'),
(599, 175, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:386;s:6:\"height\";i:142;s:4:\"file\";s:20:\"2018/12/Logo_PNT.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Logo_PNT-150x142.png\";s:5:\"width\";i:150;s:6:\"height\";i:142;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Logo_PNT-300x110.png\";s:5:\"width\";i:300;s:6:\"height\";i:110;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(600, 176, 'intro_description', '[:vi]Với trên 1000 lượt khám mỗi ngày, Bệnh viện quận 4 hy vọng việc triển khai mô hình này sẽ mang lại sự tiện lợi nhất cho bệnh nhân đến khám và điều trị tại Bệnh Viện Quận 4[:en]With over 1,000 visits per day, District 4 Hospital hopes to implement this model will bring the best convenience for patients to see and treatment in District 4[:]'),
(601, 176, '_intro_description', 'field_5c135b381f530'),
(602, 177, 'intro_description', '[:vi]Sau hơn 2 tháng tích cực triển khai và đưa vào hoạt động mô hình phòng khám thông minh đã giúp cải tiến thời gian chờ khám của bệnh nhân, tránh được việc chen lấn tại khu vực tiếp nhận bệnh, khu vực thu phí, khu vực lãnh thuốc, cũng như các bất cập khác trong việc chờ khám tại các buồng khám bệnh.[:en]After more than two months of active deployment and implementation of the intelligent clinic model has helped improve patient waiting time, avoid the squeeze in the receiving area, the charge area as well as other inadequacies in waiting for examination in the clinic.[:]'),
(603, 177, '_intro_description', 'field_5c135b381f530'),
(608, 179, '_edit_last', '1'),
(609, 179, '_edit_lock', '1546567668:1'),
(610, 181, '_wp_attached_file', '2018/12/Heart.png'),
(611, 181, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:118;s:4:\"file\";s:17:\"2018/12/Heart.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"Heart-150x118.png\";s:5:\"width\";i:150;s:6:\"height\";i:118;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(612, 182, '_wp_attached_file', '2018/12/HealthScreening.png'),
(613, 182, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:118;s:4:\"file\";s:27:\"2018/12/HealthScreening.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"HealthScreening-150x118.png\";s:5:\"width\";i:150;s:6:\"height\";i:118;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(614, 183, '_wp_attached_file', '2018/12/Gastroenterology.png'),
(615, 183, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:118;s:4:\"file\";s:28:\"2018/12/Gastroenterology.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Gastroenterology-150x118.png\";s:5:\"width\";i:150;s:6:\"height\";i:118;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(616, 184, '_wp_attached_file', '2018/12/Otorhinolaryngology.png'),
(617, 184, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:118;s:4:\"file\";s:31:\"2018/12/Otorhinolaryngology.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Otorhinolaryngology-150x118.png\";s:5:\"width\";i:150;s:6:\"height\";i:118;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(618, 185, '_wp_attached_file', '2018/12/Ophthalmology.png'),
(619, 185, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:118;s:4:\"file\";s:25:\"2018/12/Ophthalmology.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Ophthalmology-150x118.png\";s:5:\"width\";i:150;s:6:\"height\";i:118;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(620, 186, '_wp_attached_file', '2018/12/Orthopedics.png'),
(621, 186, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:119;s:4:\"file\";s:23:\"2018/12/Orthopedics.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Orthopedics-150x119.png\";s:5:\"width\";i:150;s:6:\"height\";i:119;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(622, 187, '_wp_attached_file', '2018/12/Endocrinology.png'),
(623, 187, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:118;s:4:\"file\";s:25:\"2018/12/Endocrinology.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Endocrinology-150x118.png\";s:5:\"width\";i:150;s:6:\"height\";i:118;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(624, 188, '_wp_attached_file', '2018/12/Plastic.png'),
(625, 188, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:118;s:4:\"file\";s:19:\"2018/12/Plastic.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Plastic-150x118.png\";s:5:\"width\";i:150;s:6:\"height\";i:118;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(626, 189, '_wp_attached_file', '2018/12/Pediatrics.png'),
(627, 189, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:118;s:4:\"file\";s:22:\"2018/12/Pediatrics.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Pediatrics-150x118.png\";s:5:\"width\";i:150;s:6:\"height\";i:118;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(628, 190, '_wp_attached_file', '2018/12/Obstetrics.png'),
(629, 190, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:118;s:4:\"file\";s:22:\"2018/12/Obstetrics.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Obstetrics-150x118.png\";s:5:\"width\";i:150;s:6:\"height\";i:118;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(630, 191, '_wp_attached_file', '2018/12/Plastic-1.png'),
(631, 191, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:118;s:4:\"file\";s:21:\"2018/12/Plastic-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Plastic-1-150x118.png\";s:5:\"width\";i:150;s:6:\"height\";i:118;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(632, 193, '_wp_attached_file', '2018/12/bs-viet-thanh-web.jpg'),
(633, 193, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:212;s:6:\"height\";i:283;s:4:\"file\";s:29:\"2018/12/bs-viet-thanh-web.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"bs-viet-thanh-web-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"ILCE-6300\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1531483333\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"16\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:4:\"0.02\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(634, 192, '_edit_last', '1'),
(635, 192, '_thumbnail_id', '193'),
(638, 192, '_edit_lock', '1545291449:1'),
(639, 195, '_wp_attached_file', '2018/12/Pediatrics-1.png'),
(640, 195, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:118;s:4:\"file\";s:24:\"2018/12/Pediatrics-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Pediatrics-1-150x118.png\";s:5:\"width\";i:150;s:6:\"height\";i:118;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(641, 196, '_wp_attached_file', '2018/12/Nephrology.png'),
(642, 196, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:118;s:4:\"file\";s:22:\"2018/12/Nephrology.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Nephrology-150x118.png\";s:5:\"width\";i:150;s:6:\"height\";i:118;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(643, 198, '_wp_attached_file', '2018/12/ta-thi-thanh-thuy.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(644, 198, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:247;s:6:\"height\";i:344;s:4:\"file\";s:29:\"2018/12/ta-thi-thanh-thuy.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"ta-thi-thanh-thuy-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"ta-thi-thanh-thuy-215x300.png\";s:5:\"width\";i:215;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(645, 197, '_edit_last', '1'),
(646, 197, '_thumbnail_id', '198'),
(649, 197, '_edit_lock', '1545121250:1'),
(650, 201, '_wp_attached_file', '2018/12/hinh-the-bac-hai.jpg'),
(651, 201, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:472;s:6:\"height\";i:709;s:4:\"file\";s:28:\"2018/12/hinh-the-bac-hai.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"hinh-the-bac-hai-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"hinh-the-bac-hai-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(652, 200, '_edit_last', '1'),
(653, 200, '_thumbnail_id', '201'),
(656, 200, '_edit_lock', '1545121502:1'),
(657, 208, '_edit_last', '1'),
(658, 208, '_edit_lock', '1545807024:1'),
(659, 211, '_wp_attached_file', '2018/12/image-6.jpg'),
(660, 211, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1250;s:6:\"height\";i:1250;s:4:\"file\";s:19:\"2018/12/image-6.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"image-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"image-6-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"image-6-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"image-6-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(661, 212, '_wp_attached_file', '2018/12/thumb-6.jpg'),
(662, 212, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:19:\"2018/12/thumb-6.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"thumb-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(663, 210, '_edit_last', '1'),
(664, 210, '_thumbnail_id', '212'),
(665, 210, 'big_image_lightbox', '211'),
(666, 210, '_big_image_lightbox', 'field_5c18711941931'),
(667, 210, '_edit_lock', '1545806800:1'),
(668, 213, 'intro_description', '[:vi]Sau hơn 2 tháng tích cực triển khai và đưa vào hoạt động mô hình phòng khám thông minh đã giúp cải tiến thời gian chờ khám của bệnh nhân, tránh được việc chen lấn tại khu vực tiếp nhận bệnh, khu vực thu phí, khu vực lãnh thuốc, cũng như các bất cập khác trong việc chờ khám tại các buồng khám bệnh.[:en]After more than two months of active deployment and implementation of the intelligent clinic model has helped improve patient waiting time, avoid the squeeze in the receiving area, the charge area as well as other inadequacies in waiting for examination in the clinic.[:]'),
(669, 213, '_intro_description', 'field_5c135b381f530'),
(670, 214, 'intro_description', 'Hơn nữa việc công khai trên màn hình tất cả thông tin về tên tuổi bệnh nhân, số thứ tự chờ khám, dự kiến thời gian sẽ được khám, số tiền bệnh nhân sẽ phải đóng'),
(671, 214, '_intro_description', 'field_5c135b381f530'),
(672, 215, '_edit_last', '1'),
(673, 215, '_wp_page_template', 'default'),
(674, 215, '_edit_lock', '1545718105:1'),
(675, 217, '_edit_last', '1'),
(676, 217, '_wp_page_template', 'default'),
(677, 217, '_edit_lock', '1545983318:1'),
(678, 219, '_edit_last', '1'),
(679, 219, '_wp_page_template', 'default'),
(680, 219, '_edit_lock', '1545118513:1'),
(681, 221, '_edit_last', '1'),
(682, 221, '_wp_page_template', 'default'),
(683, 221, '_edit_lock', '1545107464:1'),
(684, 223, '_edit_last', '1'),
(685, 223, '_wp_page_template', 'default'),
(686, 223, '_edit_lock', '1545107359:1'),
(687, 225, '_edit_last', '1'),
(688, 225, '_wp_page_template', 'default'),
(689, 225, '_edit_lock', '1545107789:1'),
(690, 227, '_edit_last', '1'),
(691, 227, '_wp_page_template', 'default'),
(692, 227, '_edit_lock', '1545107308:1'),
(693, 229, '_wp_attached_file', '2018/12/copd-icon.png'),
(694, 229, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:76;s:6:\"height\";i:76;s:4:\"file\";s:21:\"2018/12/copd-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(695, 217, '_thumbnail_id', '229'),
(696, 231, '_wp_attached_file', '2018/12/long-nguc-icon.png'),
(697, 231, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:76;s:6:\"height\";i:76;s:4:\"file\";s:26:\"2018/12/long-nguc-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(698, 227, '_thumbnail_id', '231'),
(699, 233, '_wp_attached_file', '2018/12/ung-thu-icon.jpg'),
(700, 233, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:75;s:6:\"height\";i:73;s:4:\"file\";s:24:\"2018/12/ung-thu-icon.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(701, 223, '_thumbnail_id', '190'),
(702, 235, '_wp_attached_file', '2018/12/kcb-icon.png'),
(703, 235, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:75;s:6:\"height\";i:75;s:4:\"file\";s:20:\"2018/12/kcb-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(704, 219, '_thumbnail_id', '235'),
(705, 237, '_wp_attached_file', '2018/12/nurse-icon.png'),
(706, 237, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:76;s:6:\"height\";i:76;s:4:\"file\";s:22:\"2018/12/nurse-icon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(707, 221, '_thumbnail_id', '237'),
(708, 239, '_wp_attached_file', '2018/12/phe-quan-icon.jpg'),
(709, 239, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:75;s:6:\"height\";i:78;s:4:\"file\";s:25:\"2018/12/phe-quan-icon.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(710, 225, '_thumbnail_id', '239'),
(711, 257, '_edit_last', '1'),
(712, 257, '_edit_lock', '1545291573:1'),
(713, 259, '_edit_last', '1'),
(714, 259, '_calendar_view', 'a:1:{s:16:\"default-calendar\";s:4:\"grid\";}'),
(715, 259, '_calendar_begins', 'this_month'),
(716, 259, '_calendar_begins_nth', '1'),
(717, 259, '_calendar_begins_custom_date', ''),
(718, 259, '_feed_earliest_event_date', 'months_before'),
(719, 259, '_feed_earliest_event_date_range', '1'),
(720, 259, '_feed_latest_event_date', 'years_after'),
(721, 259, '_feed_latest_event_date_range', '1'),
(722, 259, '_calendar_is_static', 'no'),
(723, 259, '_no_events_message', ''),
(724, 259, '_event_formatting', 'preserve_linebreaks'),
(725, 259, '_poweredby', 'no'),
(726, 259, '_feed_timezone_setting', 'use_site'),
(727, 259, '_feed_timezone', 'UTC'),
(728, 259, '_calendar_date_format_setting', 'use_site'),
(729, 259, '_calendar_date_format', 'l, d F Y'),
(730, 259, '_calendar_date_format_php', 'j F, Y'),
(731, 259, '_calendar_time_format_setting', 'use_site'),
(732, 259, '_calendar_time_format', 'G:i a'),
(733, 259, '_calendar_time_format_php', 'g:i a'),
(734, 259, '_calendar_datetime_separator', ''),
(735, 259, '_calendar_datetime_separator_spacing', ''),
(736, 259, '_calendar_week_starts_on_setting', 'use_site'),
(737, 259, '_calendar_week_starts_on', '0'),
(738, 259, '_feed_cache_user_amount', '2'),
(739, 259, '_feed_cache_user_unit', '3600'),
(740, 259, '_feed_cache', '7200'),
(741, 259, '_calendar_version', '3.1.20'),
(742, 259, '_google_calendar_id', ''),
(743, 259, '_google_events_search_query', ''),
(744, 259, '_google_events_recurring', 'show'),
(745, 259, '_google_events_max_results', '2500'),
(746, 259, '_grouped_calendars_source', 'ids'),
(747, 259, '_grouped_calendars_ids', ''),
(748, 259, '_grouped_calendars_category', ''),
(749, 259, '_default_calendar_style_theme', 'light'),
(750, 259, '_default_calendar_style_today', '#1e73be'),
(751, 259, '_default_calendar_style_days_events', '#000000'),
(752, 259, '_default_calendar_list_range_span', '1'),
(753, 259, '_default_calendar_list_range_type', 'monthly'),
(754, 259, '_default_calendar_list_header', 'no'),
(755, 259, '_default_calendar_compact_list', 'no'),
(756, 259, '_default_calendar_limit_visible_events', 'no'),
(757, 259, '_default_calendar_visible_events', '3'),
(758, 259, '_default_calendar_event_bubble_trigger', 'hover'),
(759, 259, '_default_calendar_trim_titles', 'no'),
(760, 259, '_default_calendar_trim_titles_chars', '20'),
(761, 259, '_default_calendar_expand_multi_day_events', 'yes'),
(762, 259, '_edit_lock', '1545118755:1'),
(763, 92, '_wp_page_template', 'default'),
(764, 92, 'intro_description', ''),
(765, 92, '_intro_description', 'field_5c135b381f530'),
(766, 260, 'intro_description', ''),
(767, 260, '_intro_description', 'field_5c135b381f530'),
(768, 261, 'intro_description', ''),
(769, 261, '_intro_description', 'field_5c135b381f530'),
(772, 200, 'datetime_working', ''),
(773, 200, '_datetime_working', 'field_5c18a1f859716'),
(774, 262, 'datetime_working', ''),
(775, 262, '_datetime_working', 'field_5c18a1f859716'),
(778, 263, 'datetime_working', ''),
(779, 263, '_datetime_working', 'field_5c18a1f859716'),
(780, 264, '_edit_lock', '1545291426:1'),
(781, 264, '_edit_last', '1'),
(782, 264, '_thumbnail_id', '198'),
(785, 270, '_edit_last', '1'),
(786, 270, '_edit_lock', '1545281176:1'),
(787, 40, '_wp_old_slug', 'khu-c'),
(788, 55, 'menu_header', ''),
(789, 55, '_menu_header', 'field_5c1b106ed76bc'),
(790, 56, 'menu_header', '40'),
(791, 56, '_menu_header', 'field_5c1b106ed76bc'),
(792, 57, 'menu_header', ''),
(793, 57, '_menu_header', 'field_5c1b106ed76bc'),
(794, 58, 'menu_header', ''),
(795, 58, '_menu_header', 'field_5c1b106ed76bc'),
(796, 59, 'menu_header', ''),
(797, 59, '_menu_header', 'field_5c1b106ed76bc'),
(798, 128, 'menu_header', '164'),
(799, 128, '_menu_header', 'field_5c1b106ed76bc'),
(800, 132, 'menu_header', ''),
(801, 132, '_menu_header', 'field_5c1b106ed76bc'),
(802, 133, 'menu_header', ''),
(803, 133, '_menu_header', 'field_5c1b106ed76bc'),
(804, 135, 'menu_header', ''),
(805, 135, '_menu_header', 'field_5c1b106ed76bc'),
(806, 134, 'menu_header', ''),
(807, 134, '_menu_header', 'field_5c1b106ed76bc'),
(808, 131, 'menu_header', ''),
(809, 131, '_menu_header', 'field_5c1b106ed76bc'),
(810, 129, 'menu_header', ''),
(811, 129, '_menu_header', 'field_5c1b106ed76bc'),
(812, 130, 'menu_header', ''),
(813, 130, '_menu_header', 'field_5c1b106ed76bc'),
(814, 136, 'menu_header', ''),
(815, 136, '_menu_header', 'field_5c1b106ed76bc'),
(820, 139, 'menu_header', '30'),
(821, 139, '_menu_header', 'field_5c1b106ed76bc'),
(822, 143, 'menu_header', ''),
(823, 143, '_menu_header', 'field_5c1b106ed76bc'),
(824, 142, 'menu_header', ''),
(825, 142, '_menu_header', 'field_5c1b106ed76bc'),
(826, 141, 'menu_header', ''),
(827, 141, '_menu_header', 'field_5c1b106ed76bc'),
(828, 140, 'menu_header', ''),
(829, 140, '_menu_header', 'field_5c1b106ed76bc'),
(830, 156, 'menu_header', ''),
(831, 156, '_menu_header', 'field_5c1b106ed76bc'),
(832, 144, 'menu_header', ''),
(833, 144, '_menu_header', 'field_5c1b106ed76bc'),
(834, 145, 'menu_header', '38'),
(835, 145, '_menu_header', 'field_5c1b106ed76bc'),
(836, 147, 'menu_header', ''),
(837, 147, '_menu_header', 'field_5c1b106ed76bc'),
(838, 148, 'menu_header', ''),
(839, 148, '_menu_header', 'field_5c1b106ed76bc'),
(840, 152, 'menu_header', ''),
(841, 152, '_menu_header', 'field_5c1b106ed76bc'),
(842, 153, 'menu_header', ''),
(843, 153, '_menu_header', 'field_5c1b106ed76bc'),
(844, 151, 'menu_header', ''),
(845, 151, '_menu_header', 'field_5c1b106ed76bc'),
(846, 154, 'menu_header', ''),
(847, 154, '_menu_header', 'field_5c1b106ed76bc'),
(848, 149, 'menu_header', ''),
(849, 149, '_menu_header', 'field_5c1b106ed76bc'),
(850, 146, 'menu_header', ''),
(851, 146, '_menu_header', 'field_5c1b106ed76bc'),
(852, 150, 'menu_header', ''),
(853, 150, '_menu_header', 'field_5c1b106ed76bc'),
(854, 155, 'menu_header', ''),
(855, 155, '_menu_header', 'field_5c1b106ed76bc'),
(856, 157, 'menu_header', ''),
(857, 157, '_menu_header', 'field_5c1b106ed76bc'),
(858, 273, '_edit_last', '1'),
(859, 273, '_thumbnail_id', '42'),
(860, 273, '_edit_lock', '1545287694:1'),
(863, 264, 'datetime_working_0_shedule_day', '[:vi]Thứ 2[:]'),
(864, 264, '_datetime_working_0_shedule_day', 'field_5c1b4539b78ab'),
(865, 264, 'datetime_working_0_shedule_time', '[:vi]Sáng: 7:00 AM - 12:00 PM Chiều: 1:00 PM - 6:00 PM[:]'),
(866, 264, '_datetime_working_0_shedule_time', 'field_5c1b4573b78ac'),
(867, 264, 'datetime_working_1_shedule_day', '[:vi]Thứ 3[:]'),
(868, 264, '_datetime_working_1_shedule_day', 'field_5c1b4539b78ab'),
(869, 264, 'datetime_working_1_shedule_time', '[:vi]Sáng: 7:00 AM - 12:00 PM Chiều: 1:00 PM - 6:00 PM[:]'),
(870, 264, '_datetime_working_1_shedule_time', 'field_5c1b4573b78ac'),
(871, 264, 'datetime_working_2_shedule_day', '[:vi]Thứ 4[:]'),
(872, 264, '_datetime_working_2_shedule_day', 'field_5c1b4539b78ab'),
(873, 264, 'datetime_working_2_shedule_time', '[:vi]Sáng: 7:00 AM - 12:00 PM Chiều: 1:00 PM - 6:00 PM[:]'),
(874, 264, '_datetime_working_2_shedule_time', 'field_5c1b4573b78ac'),
(875, 264, 'datetime_working_3_shedule_day', '[:vi]Thứ 5[:]'),
(876, 264, '_datetime_working_3_shedule_day', 'field_5c1b4539b78ab'),
(877, 264, 'datetime_working_3_shedule_time', '[:vi]Sáng: 7:00 AM - 12:00 PM Chiều: 1:00 PM - 6:00 PM[:]'),
(878, 264, '_datetime_working_3_shedule_time', 'field_5c1b4573b78ac'),
(879, 264, 'datetime_working_4_shedule_day', '[:vi]Thứ 7[:]'),
(880, 264, '_datetime_working_4_shedule_day', 'field_5c1b4539b78ab'),
(881, 264, 'datetime_working_4_shedule_time', '[:vi]Sáng: 7:00 AM - 12:00 PM Chiều: Nghỉ[:]'),
(882, 264, '_datetime_working_4_shedule_time', 'field_5c1b4573b78ac'),
(883, 264, 'datetime_working_5_shedule_day', '[:vi]Chủ nhật[:]'),
(884, 264, '_datetime_working_5_shedule_day', 'field_5c1b4539b78ab'),
(885, 264, 'datetime_working_5_shedule_time', '[:vi]Sáng: 7:00 AM - 12:00 PM Chiều: Nghỉ[:]'),
(886, 264, '_datetime_working_5_shedule_time', 'field_5c1b4573b78ac'),
(887, 264, 'datetime_working', '6'),
(888, 264, '_datetime_working', 'field_5c18a1f859716'),
(889, 277, 'datetime_working_0_shedule_day', '[:vi]Thứ 2[:]'),
(890, 277, '_datetime_working_0_shedule_day', 'field_5c1b4539b78ab'),
(891, 277, 'datetime_working_0_shedule_time', '[:vi]Sáng: 7:00 AM - 12:00 PM Chiều: 1:00 PM - 6:00 PM[:]'),
(892, 277, '_datetime_working_0_shedule_time', 'field_5c1b4573b78ac'),
(893, 277, 'datetime_working_1_shedule_day', '[:vi]Thứ 3[:]'),
(894, 277, '_datetime_working_1_shedule_day', 'field_5c1b4539b78ab'),
(895, 277, 'datetime_working_1_shedule_time', '[:vi]Sáng: 7:00 AM - 12:00 PM Chiều: 1:00 PM - 6:00 PM[:]'),
(896, 277, '_datetime_working_1_shedule_time', 'field_5c1b4573b78ac'),
(897, 277, 'datetime_working_2_shedule_day', '[:vi]Thứ 4[:]'),
(898, 277, '_datetime_working_2_shedule_day', 'field_5c1b4539b78ab'),
(899, 277, 'datetime_working_2_shedule_time', '[:vi]Sáng: 7:00 AM - 12:00 PM Chiều: 1:00 PM - 6:00 PM[:]'),
(900, 277, '_datetime_working_2_shedule_time', 'field_5c1b4573b78ac'),
(901, 277, 'datetime_working_3_shedule_day', '[:vi]Thứ 5[:]'),
(902, 277, '_datetime_working_3_shedule_day', 'field_5c1b4539b78ab'),
(903, 277, 'datetime_working_3_shedule_time', '[:vi]Sáng: 7:00 AM - 12:00 PM Chiều: 1:00 PM - 6:00 PM[:]'),
(904, 277, '_datetime_working_3_shedule_time', 'field_5c1b4573b78ac'),
(905, 277, 'datetime_working_4_shedule_day', '[:vi]Thứ 7[:]'),
(906, 277, '_datetime_working_4_shedule_day', 'field_5c1b4539b78ab'),
(907, 277, 'datetime_working_4_shedule_time', '[:vi]Sáng: 7:00 AM - 12:00 PM Chiều: Nghỉ[:]'),
(908, 277, '_datetime_working_4_shedule_time', 'field_5c1b4573b78ac'),
(909, 277, 'datetime_working_5_shedule_day', '[:vi]Chủ nhật[:]'),
(910, 277, '_datetime_working_5_shedule_day', 'field_5c1b4539b78ab'),
(911, 277, 'datetime_working_5_shedule_time', '[:vi]Sáng: 7:00 AM - 12:00 PM Chiều: Nghỉ[:]'),
(912, 277, '_datetime_working_5_shedule_time', 'field_5c1b4573b78ac'),
(913, 277, 'datetime_working', '6'),
(914, 277, '_datetime_working', 'field_5c18a1f859716'),
(917, 192, 'datetime_working_0_shedule_day', '[:vi]Thứ 2[:]'),
(918, 192, '_datetime_working_0_shedule_day', 'field_5c1b4539b78ab'),
(919, 192, 'datetime_working_0_shedule_time', '[:vi]Sáng: 7:00 AM - 12:00 PM Chiều: 1:00 PM - 6:00 PM[:]'),
(920, 192, '_datetime_working_0_shedule_time', 'field_5c1b4573b78ac'),
(921, 192, 'datetime_working_1_shedule_day', '[:vi]Thứ 3[:]'),
(922, 192, '_datetime_working_1_shedule_day', 'field_5c1b4539b78ab'),
(923, 192, 'datetime_working_1_shedule_time', '[:vi]Sáng: 7:00 AM - 12:00 PM Chiều: 1:00 PM - 6:00 PM[:]'),
(924, 192, '_datetime_working_1_shedule_time', 'field_5c1b4573b78ac'),
(925, 192, 'datetime_working_2_shedule_day', '[:vi]Thứ 4[:]'),
(926, 192, '_datetime_working_2_shedule_day', 'field_5c1b4539b78ab'),
(927, 192, 'datetime_working_2_shedule_time', '[:vi]Sáng: 7:00 AM - 12:00 PM Chiều: 1:00 PM - 6:00 PM[:]'),
(928, 192, '_datetime_working_2_shedule_time', 'field_5c1b4573b78ac'),
(929, 192, 'datetime_working_3_shedule_day', '[:vi]Thứ 5[:]'),
(930, 192, '_datetime_working_3_shedule_day', 'field_5c1b4539b78ab'),
(931, 192, 'datetime_working_3_shedule_time', '[:vi]Sáng: 7:00 AM - 12:00 PM Chiều: 1:00 PM - 6:00 PM[:]'),
(932, 192, '_datetime_working_3_shedule_time', 'field_5c1b4573b78ac'),
(933, 192, 'datetime_working_4_shedule_day', '[:vi]Thứ 6[:]'),
(934, 192, '_datetime_working_4_shedule_day', 'field_5c1b4539b78ab'),
(935, 192, 'datetime_working_4_shedule_time', '[:vi]Sáng: 7:00 AM - 12:00 PM Chiều: 1:00 PM - 6:00 PM[:]'),
(936, 192, '_datetime_working_4_shedule_time', 'field_5c1b4573b78ac'),
(937, 192, 'datetime_working_5_shedule_day', '[:vi]Thứ 7[:]'),
(938, 192, '_datetime_working_5_shedule_day', 'field_5c1b4539b78ab'),
(939, 192, 'datetime_working_5_shedule_time', '[:vi]Sáng: 7:00 AM - 12:00 PM Chiều: Nghỉ[:]'),
(940, 192, '_datetime_working_5_shedule_time', 'field_5c1b4573b78ac'),
(941, 192, 'datetime_working_6_shedule_day', '[:vi]Chủ nhật[:]'),
(942, 192, '_datetime_working_6_shedule_day', 'field_5c1b4539b78ab'),
(943, 192, 'datetime_working_6_shedule_time', '[:vi]Sáng: 7:00 AM - 12:00 PM Chiều: Nghỉ[:]'),
(944, 192, '_datetime_working_6_shedule_time', 'field_5c1b4573b78ac'),
(945, 192, 'datetime_working', '7'),
(946, 192, '_datetime_working', 'field_5c18a1f859716'),
(947, 278, 'datetime_working_0_shedule_day', '[:vi]Thứ 2[:]'),
(948, 278, '_datetime_working_0_shedule_day', 'field_5c1b4539b78ab'),
(949, 278, 'datetime_working_0_shedule_time', '[:vi]Sáng: 7:00 AM - 12:00 PM Chiều: 1:00 PM - 6:00 PM[:]'),
(950, 278, '_datetime_working_0_shedule_time', 'field_5c1b4573b78ac'),
(951, 278, 'datetime_working_1_shedule_day', '[:vi]Thứ 3[:]'),
(952, 278, '_datetime_working_1_shedule_day', 'field_5c1b4539b78ab'),
(953, 278, 'datetime_working_1_shedule_time', '[:vi]Sáng: 7:00 AM - 12:00 PM Chiều: 1:00 PM - 6:00 PM[:]'),
(954, 278, '_datetime_working_1_shedule_time', 'field_5c1b4573b78ac'),
(955, 278, 'datetime_working_2_shedule_day', '[:vi]Thứ 4[:]'),
(956, 278, '_datetime_working_2_shedule_day', 'field_5c1b4539b78ab'),
(957, 278, 'datetime_working_2_shedule_time', '[:vi]Sáng: 7:00 AM - 12:00 PM Chiều: 1:00 PM - 6:00 PM[:]'),
(958, 278, '_datetime_working_2_shedule_time', 'field_5c1b4573b78ac'),
(959, 278, 'datetime_working_3_shedule_day', '[:vi]Thứ 5[:]'),
(960, 278, '_datetime_working_3_shedule_day', 'field_5c1b4539b78ab'),
(961, 278, 'datetime_working_3_shedule_time', '[:vi]Sáng: 7:00 AM - 12:00 PM Chiều: 1:00 PM - 6:00 PM[:]'),
(962, 278, '_datetime_working_3_shedule_time', 'field_5c1b4573b78ac'),
(963, 278, 'datetime_working_4_shedule_day', '[:vi]Thứ 6[:]'),
(964, 278, '_datetime_working_4_shedule_day', 'field_5c1b4539b78ab'),
(965, 278, 'datetime_working_4_shedule_time', '[:vi]Sáng: 7:00 AM - 12:00 PM Chiều: 1:00 PM - 6:00 PM[:]'),
(966, 278, '_datetime_working_4_shedule_time', 'field_5c1b4573b78ac'),
(967, 278, 'datetime_working_5_shedule_day', '[:vi]Thứ 7[:]'),
(968, 278, '_datetime_working_5_shedule_day', 'field_5c1b4539b78ab'),
(969, 278, 'datetime_working_5_shedule_time', '[:vi]Sáng: 7:00 AM - 12:00 PM Chiều: Nghỉ[:]'),
(970, 278, '_datetime_working_5_shedule_time', 'field_5c1b4573b78ac'),
(971, 278, 'datetime_working_6_shedule_day', '[:vi]Chủ nhật[:]'),
(972, 278, '_datetime_working_6_shedule_day', 'field_5c1b4539b78ab'),
(973, 278, 'datetime_working_6_shedule_time', '[:vi]Sáng: 7:00 AM - 12:00 PM Chiều: Nghỉ[:]'),
(974, 278, '_datetime_working_6_shedule_time', 'field_5c1b4573b78ac'),
(975, 278, 'datetime_working', '7'),
(976, 278, '_datetime_working', 'field_5c18a1f859716'),
(977, 280, '_edit_last', '1'),
(978, 280, '_edit_lock', '1545663080:1'),
(979, 280, '_thumbnail_id', '49'),
(980, 280, '_wp_old_slug', 'danh-muc-dich-vu-ky-thuat-thuc-hien-tai-benh-vien-pham-ngoc-thach'),
(981, 281, '_edit_last', '1'),
(982, 281, '_edit_lock', '1545663346:1'),
(983, 281, '_thumbnail_id', '45'),
(984, 281, '_wp_old_slug', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-3'),
(985, 282, '_edit_last', '1'),
(986, 282, '_edit_lock', '1545663484:1'),
(987, 282, '_thumbnail_id', '45'),
(988, 282, '_wp_old_slug', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-2'),
(989, 283, '_edit_last', '1'),
(990, 283, '_edit_lock', '1545663471:1'),
(991, 283, '_thumbnail_id', '45'),
(992, 283, '_wp_old_slug', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-2'),
(993, 284, '_edit_last', '1'),
(994, 284, '_edit_lock', '1545710204:1'),
(995, 284, '_thumbnail_id', '45'),
(996, 284, '_wp_old_slug', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-2'),
(1000, 284, '_wp_old_slug', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-2-3'),
(1001, 285, '_edit_last', '1'),
(1002, 285, '_edit_lock', '1545708968:1'),
(1003, 285, '_thumbnail_id', '45'),
(1004, 285, '_wp_old_slug', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-2'),
(1005, 285, '_wp_old_slug', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-2-3'),
(1008, 285, '_wp_old_slug', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-2-3-2'),
(1009, 286, '_edit_last', '1'),
(1010, 286, '_edit_lock', '1545663781:1'),
(1011, 286, '_thumbnail_id', '45'),
(1012, 286, '_wp_old_slug', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach'),
(1013, 287, '_edit_last', '1'),
(1014, 287, '_edit_lock', '1545708929:1'),
(1015, 287, '_thumbnail_id', '45'),
(1016, 287, '_wp_old_slug', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-2'),
(1017, 288, '_edit_last', '1'),
(1018, 288, '_edit_lock', '1545663777:1'),
(1019, 288, '_thumbnail_id', '45'),
(1020, 288, '_wp_old_slug', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-3'),
(1024, 288, '_wp_old_slug', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-3-2'),
(1025, 289, '_edit_last', '1'),
(1026, 289, '_edit_lock', '1545663772:1'),
(1027, 289, '_thumbnail_id', '45'),
(1028, 289, '_wp_old_slug', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-3'),
(1029, 290, '_edit_last', '1'),
(1030, 290, '_edit_lock', '1545707845:1'),
(1031, 290, '_thumbnail_id', '45'),
(1032, 290, '_wp_old_slug', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-2'),
(1036, 290, '_wp_old_slug', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-2-3'),
(1037, 291, '_edit_last', '1'),
(1038, 291, '_edit_lock', '1545670228:1'),
(1039, 291, '_thumbnail_id', '45'),
(1040, 291, '_wp_old_slug', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-3'),
(1044, 291, '_wp_old_slug', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-3-2'),
(1045, 18, '_wp_trash_meta_status', 'publish'),
(1046, 18, '_wp_trash_meta_time', '1545707997'),
(1047, 18, '_wp_desired_post_slug', '18'),
(1048, 78, '_thumbnail_id', '30'),
(1049, 78, '_wp_page_template', 'default'),
(1050, 78, 'intro_description', '[:vi]Kể từ ngày 1/12/2015 theo Quyết định 959/QĐ-BHXH ngày 09/09/2015 quy định về Bảo hiểm xã hội, bảo hiểm y tế, bảo hiểm thất nghiệp  bắt buộc.[:]'),
(1051, 78, '_intro_description', 'field_5c135b381f530'),
(1052, 292, 'intro_description', '[:vi]Kể từ ngày 1/12/2015 theo Quyết định 959/QĐ-BHXH ngày 09/09/2015 quy định về Bảo hiểm xã hội, bảo hiểm y tế, bảo hiểm thất nghiệp  bắt buộc.[:]'),
(1053, 292, '_intro_description', 'field_5c135b381f530'),
(1054, 80, '_thumbnail_id', '34'),
(1055, 80, '_wp_page_template', 'default'),
(1056, 80, 'intro_description', '[:vi]Trước đây, giá một lần nội soi tai - mũi - họng là 202.000 đồng thì nay giảm xuống còn 100.000  đồng, giá một lần chụp cắt lớp vi tính giảm từ 2.266.000 đồng xuống còn 1.689.000 đồng.[:]'),
(1057, 80, '_intro_description', 'field_5c135b381f530'),
(1058, 293, 'intro_description', '[:vi]Trước đây, giá một lần nội soi tai - mũi - họng là 202.000 đồng thì nay giảm xuống còn 100.000  đồng, giá một lần chụp cắt lớp vi tính giảm từ 2.266.000 đồng xuống còn 1.689.000 đồng.[:]'),
(1059, 293, '_intro_description', 'field_5c135b381f530'),
(1060, 76, '_thumbnail_id', '24'),
(1061, 76, '_wp_page_template', 'default'),
(1062, 76, 'intro_description', '[:vi]Sức khỏe luôn là vốn quý giá của mỗi người. Vì vậy, chăm sóc và bảo vệ sức khỏe cho bản thân cũng như cả gia đình là nhu cầu thiết yếu và cấp bách.[:]'),
(1063, 76, '_intro_description', 'field_5c135b381f530'),
(1064, 294, 'intro_description', '[:vi]Sức khỏe luôn là vốn quý giá của mỗi người. Vì vậy, chăm sóc và bảo vệ sức khỏe cho bản thân cũng như cả gia đình là nhu cầu thiết yếu và cấp bách.[:]'),
(1065, 294, '_intro_description', 'field_5c135b381f530'),
(1066, 296, '_edit_last', '1'),
(1067, 296, '_dwqa_status', 'open'),
(1068, 296, '_edit_lock', '1545710683:1'),
(1069, 298, '_edit_last', '1'),
(1070, 298, '_dwqa_status', 'open'),
(1071, 298, '_edit_lock', '1545712388:1'),
(1072, 96, '_thumbnail_id', '42'),
(1073, 96, '_wp_page_template', 'default'),
(1074, 96, 'intro_description', '[:vi]Khám sức khỏe tổng quát định kỳ 6 tháng/lần là cách tốt nhất để chủ động bảo vệ và chăm sóc sức khỏe bản thân. Thói quen này không chỉ giúp chúng ta đánh giá tình trạng sức khỏe hiện tại mà còn kịp thời phát hiện và điều trị bệnh lý nguy hiểm hoặc có biện pháp ngăn chặn các yếu tố nguy cơ gây bệnh ngay từ sớm[:]'),
(1075, 96, '_intro_description', 'field_5c135b381f530'),
(1076, 299, 'intro_description', '[:vi]Khám sức khỏe tổng quát định kỳ 6 tháng/lần là cách tốt nhất để chủ động bảo vệ và chăm sóc sức khỏe bản thân. Thói quen này không chỉ giúp chúng ta đánh giá tình trạng sức khỏe hiện tại mà còn kịp thời phát hiện và điều trị bệnh lý nguy hiểm hoặc có biện pháp ngăn chặn các yếu tố nguy cơ gây bệnh ngay từ sớm[:]'),
(1077, 299, '_intro_description', 'field_5c135b381f530'),
(1078, 38, '_wp_old_slug', 'khu-b'),
(1079, 301, '_wp_attached_file', '2018/12/tuyen-dung.jpg'),
(1080, 301, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:22:\"2018/12/tuyen-dung.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"tuyen-dung-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"tuyen-dung-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1081, 300, '_edit_last', '1'),
(1082, 300, '_thumbnail_id', '301'),
(1083, 300, 'big_image_lightbox', '301'),
(1084, 300, '_big_image_lightbox', 'field_5c18711941931'),
(1085, 300, '_edit_lock', '1545806764:1'),
(1086, 309, '_wp_attached_file', '2018/12/23.png'),
(1087, 309, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:701;s:6:\"height\";i:90;s:4:\"file\";s:14:\"2018/12/23.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"23-150x90.png\";s:5:\"width\";i:150;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"23-300x39.png\";s:5:\"width\";i:300;s:6:\"height\";i:39;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1088, 308, '_edit_last', '1'),
(1089, 308, '_thumbnail_id', '309'),
(1090, 308, '_edit_lock', '1545718207:1'),
(1091, 311, '_wp_attached_file', '2018/12/22.png'),
(1092, 311, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:180;s:6:\"height\";i:180;s:4:\"file\";s:14:\"2018/12/22.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"22-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1093, 310, '_edit_last', '1'),
(1094, 310, '_thumbnail_id', '311'),
(1095, 310, '_edit_lock', '1545718281:1'),
(1096, 313, '_wp_attached_file', '2018/12/21.jpg'),
(1097, 313, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:196;s:6:\"height\";i:214;s:4:\"file\";s:14:\"2018/12/21.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"21-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1098, 312, '_edit_last', '1'),
(1099, 312, '_thumbnail_id', '313'),
(1100, 312, '_edit_lock', '1545718359:1'),
(1101, 315, '_edit_last', '1'),
(1102, 315, '_edit_lock', '1545808788:1'),
(1103, 320, '_edit_last', '1'),
(1104, 320, '_edit_lock', '1545797437:1'),
(1105, 324, '_edit_last', '1'),
(1106, 324, '_edit_lock', '1545797572:1'),
(1107, 327, '_wp_attached_file', '2018/12/download.jpg'),
(1108, 327, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:20:\"2018/12/download.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"download-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1109, 326, '_edit_last', '1'),
(1110, 326, '_thumbnail_id', '327'),
(1111, 326, 'big_image_lightbox', '327'),
(1112, 326, '_big_image_lightbox', 'field_5c18711941931'),
(1113, 326, '_edit_lock', '1545806904:1'),
(1114, 329, '_wp_attached_file', '2018/12/images.jpg'),
(1115, 329, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:259;s:6:\"height\";i:194;s:4:\"file\";s:18:\"2018/12/images.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"images-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1116, 328, '_edit_last', '1'),
(1117, 328, '_thumbnail_id', '329'),
(1118, 328, 'big_image_lightbox', '330'),
(1119, 328, '_big_image_lightbox', 'field_5c18711941931'),
(1120, 328, '_edit_lock', '1545807308:1'),
(1121, 330, '_wp_attached_file', '2018/12/images-1.jpg'),
(1122, 330, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:375;s:4:\"file\";s:20:\"2018/12/images-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"images-1-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1123, 332, '_wp_attached_file', '2018/12/MAT.jpg'),
(1124, 332, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:15:\"2018/12/MAT.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"MAT-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"MAT-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"MAT-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:15:\"Canon EOS 1100D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1487674963\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"18\";s:3:\"iso\";s:3:\"320\";s:13:\"shutter_speed\";s:5:\"0.025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1125, 331, '_edit_last', '1'),
(1126, 331, '_thumbnail_id', '332'),
(1127, 331, 'big_image_lightbox', '332'),
(1128, 331, '_big_image_lightbox', 'field_5c18711941931'),
(1129, 331, '_edit_lock', '1545807347:1'),
(1130, 333, '_edit_last', '1'),
(1131, 333, 'big_image_lightbox', '334'),
(1132, 333, '_big_image_lightbox', 'field_5c18711941931'),
(1133, 333, '_edit_lock', '1545807414:1'),
(1134, 334, '_wp_attached_file', '2018/12/img_6893.jpg'),
(1135, 334, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:20:\"2018/12/img_6893.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"img_6893-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"img_6893-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"img_6893-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:15:\"Canon EOS 1100D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1487669686\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"18\";s:3:\"iso\";s:3:\"320\";s:13:\"shutter_speed\";s:17:\"0.033333333333333\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1136, 333, '_thumbnail_id', '334'),
(1137, 335, '_edit_last', '1'),
(1138, 335, 'big_image_lightbox', '336'),
(1139, 335, '_big_image_lightbox', 'field_5c18711941931'),
(1140, 335, '_edit_lock', '1545807681:1'),
(1141, 336, '_wp_attached_file', '2018/12/hinh-anh-vigor-health-Mini_7_635316836639641250.jpg'),
(1142, 336, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:632;s:6:\"height\";i:421;s:4:\"file\";s:59:\"2018/12/hinh-anh-vigor-health-Mini_7_635316836639641250.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:59:\"hinh-anh-vigor-health-Mini_7_635316836639641250-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:59:\"hinh-anh-vigor-health-Mini_7_635316836639641250-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1143, 335, '_thumbnail_id', '336'),
(1144, 339, '_wp_attached_file', '2018/12/VACH-DA.jpg'),
(1145, 339, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1436;s:6:\"height\";i:780;s:4:\"file\";s:19:\"2018/12/VACH-DA.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"VACH-DA-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"VACH-DA-300x163.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:163;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"VACH-DA-768x417.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:417;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"VACH-DA-1024x556.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:556;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:13:\"Administrator\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1539959766\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1146, 340, '_wp_attached_file', '2018/12/SANH-5.jpg'),
(1147, 340, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1504;s:6:\"height\";i:955;s:4:\"file\";s:18:\"2018/12/SANH-5.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"SANH-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"SANH-5-300x190.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:190;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"SANH-5-768x488.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:488;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"SANH-5-1024x650.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1148, 341, '_wp_attached_file', '2018/12/SANH-4.jpg'),
(1149, 341, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1189;s:6:\"height\";i:922;s:4:\"file\";s:18:\"2018/12/SANH-4.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"SANH-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"SANH-4-300x233.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:233;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"SANH-4-768x596.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:596;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"SANH-4-1024x794.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:794;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1539955689\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1150, 342, '_wp_attached_file', '2018/12/SANH-2.jpg'),
(1151, 342, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:955;s:4:\"file\";s:18:\"2018/12/SANH-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"SANH-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"SANH-2-300x179.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"SANH-2-768x458.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:458;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"SANH-2-1024x611.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:611;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1152, 343, '_wp_attached_file', '2018/12/SANH-3.jpg'),
(1153, 343, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:955;s:4:\"file\";s:18:\"2018/12/SANH-3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"SANH-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"SANH-3-300x179.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"SANH-3-768x458.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:458;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"SANH-3-1024x611.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:611;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1154, 344, '_wp_attached_file', '2018/12/SANH-1.jpg'),
(1155, 344, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:955;s:4:\"file\";s:18:\"2018/12/SANH-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"SANH-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"SANH-1-300x179.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:179;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"SANH-1-768x458.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:458;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"SANH-1-1024x611.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:611;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1156, 345, '_wp_attached_file', '2018/12/LAU-2-1.jpg'),
(1157, 345, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1582;s:6:\"height\";i:898;s:4:\"file\";s:19:\"2018/12/LAU-2-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"LAU-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"LAU-2-1-300x170.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:170;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"LAU-2-1-768x436.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:436;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"LAU-2-1-1024x581.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:581;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1158, 346, '_wp_attached_file', '2018/12/LAU-3.jpg'),
(1159, 346, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:937;s:4:\"file\";s:17:\"2018/12/LAU-3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"LAU-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"LAU-3-300x176.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:176;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"LAU-3-768x450.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"LAU-3-1024x600.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1160, 347, '_wp_attached_file', '2018/12/LAU-1-1.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1161, 347, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1585;s:6:\"height\";i:934;s:4:\"file\";s:19:\"2018/12/LAU-1-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"LAU-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"LAU-1-1-300x177.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:177;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"LAU-1-1-768x453.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:453;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"LAU-1-1-1024x603.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:603;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1162, 349, '_wp_attached_file', '2019/01/LAU-1-2.jpg'),
(1163, 349, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:409;s:4:\"file\";s:19:\"2019/01/LAU-1-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"LAU-1-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"LAU-1-2-300x192.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1539957274\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1164, 348, '_edit_last', '1'),
(1165, 348, '_thumbnail_id', '349'),
(1166, 348, 'button_text', ''),
(1167, 348, '_button_text', 'field_5c111f3d4bf89'),
(1168, 348, 'button', ''),
(1169, 348, '_button', 'field_5c111f10e4063'),
(1170, 348, '_edit_lock', '1546534322:1'),
(1171, 351, '_wp_attached_file', '2019/01/LAU-1-3.jpg'),
(1172, 351, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:379;s:4:\"file\";s:19:\"2019/01/LAU-1-3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"LAU-1-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"LAU-1-3-300x178.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:178;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1539957617\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1173, 350, '_edit_last', '1'),
(1174, 350, '_thumbnail_id', '351'),
(1175, 350, 'button_text', ''),
(1176, 350, '_button_text', 'field_5c111f3d4bf89'),
(1177, 350, 'button', ''),
(1178, 350, '_button', 'field_5c111f10e4063'),
(1179, 350, '_edit_lock', '1546534485:1'),
(1180, 94, '_thumbnail_id', '339'),
(1181, 94, '_wp_page_template', 'default'),
(1182, 94, 'intro_description', ''),
(1183, 94, '_intro_description', 'field_5c135b381f530'),
(1184, 95, 'intro_description', ''),
(1185, 95, '_intro_description', 'field_5c135b381f530'),
(1186, 353, 'intro_description', ''),
(1187, 353, '_intro_description', 'field_5c135b381f530'),
(1188, 354, '_edit_last', '1'),
(1189, 354, '_wp_page_template', 'default'),
(1190, 354, '_edit_lock', '1546583002:1'),
(1191, 356, '_menu_item_type', 'post_type'),
(1192, 356, '_menu_item_menu_item_parent', '0'),
(1193, 356, '_menu_item_object_id', '354'),
(1194, 356, '_menu_item_object', 'page'),
(1195, 356, '_menu_item_target', ''),
(1196, 356, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1197, 356, '_menu_item_xfn', ''),
(1198, 356, '_menu_item_url', '');

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
(2, 1, '2018-12-10 10:18:10', '2018-12-10 10:18:10', 'Đây là một trang mẫu. Nó khác với một bài blog bởi vì nó sẽ là một trang tĩnh và sẽ được thêm vào thanh menu của trang web của bạn (trong hầu hết theme). Mọi người thường bắt đầu bằng một trang Giới thiệu để giới thiệu bản thân đến người dùng tiềm năng. Bạn có thể viết như sau:\n\n<blockquote>Xin chào! Tôi là người giao thư bằng xe đạp vào ban ngày, một diễn viên đầy tham vọng vào ban đêm, và đây là trang web của tôi. Tôi sống ở Los Angeles, có một chú cho tuyệt vời tên là Jack, và tôi thích uống cocktail.</blockquote>\n\n...hay như thế này:\n\n<blockquote>Công ty XYZ Doohickey được thành lập vào năm 1971, và đã cung cấp đồ dùng chất lượng cho công chúng kể từ đó. Nằm ở thành phố Gotham, XYZ tạo việc làm cho hơn 2.000 người và làm tất cả những điều tuyệt vời cho cộng đồng Gotham.</blockquote>\n\nLà người dùng WordPress mới, bạn nên truy cập <a href=\"http://localhost:8000/Healthcare/source/wp-admin/\">trang quản trị</a> để xóa trang này và tạo các trang mới cho nội dung của bạn. Chúc vui vẻ!', 'Trang Mẫu', '', 'trash', 'closed', 'open', '', 'Trang mẫu__trashed', '', '', '2018-12-14 03:55:13', '2018-12-14 03:55:13', '', 0, 'http://localhost:8000/Healthcare/source/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-12-10 10:18:10', '2018-12-10 10:18:10', '<h2>Chúng tôi là ai</h2><p>Địa chỉ website là: http://localhost:8000/Healthcare/source.</p><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><h3>Bình luận</h3><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><h3>Thư viện</h3><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><h3>Thông tin liên hệ</h3><h3>Cookies</h3><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><p>Nếu bạn có tài khoản và đăng nhập và website, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><h3>Nội dung nhúng từ website khác</h3><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><h3>Phân tích</h3><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><h2>Dữ liệu của bạn tồn tại bao lâu</h2><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><h2>Các quyền nào của bạn với dữ liệu của mình</h2><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><h2>Các dữ liệu của bạn được gửi tới đâu</h2><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><h2>Thông tin liên hệ của bạn</h2><h2>Thông tin bổ sung</h2><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><h3>Các yêu cầu công bố thông tin được quản lý</h3>', 'Chính sách bảo mật', '', 'trash', 'closed', 'open', '', 'chinh-sach-bao-mat__trashed', '', '', '2018-12-11 07:03:02', '2018-12-11 07:03:02', '', 0, 'http://localhost:8000/Healthcare/source/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-12-11 07:03:02', '2018-12-11 07:03:02', '<h2>Chúng tôi là ai</h2><p>Địa chỉ website là: http://localhost:8000/Healthcare/source.</p><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><h3>Bình luận</h3><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><h3>Thư viện</h3><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><h3>Thông tin liên hệ</h3><h3>Cookies</h3><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><p>Nếu bạn có tài khoản và đăng nhập và website, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><h3>Nội dung nhúng từ website khác</h3><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><h3>Phân tích</h3><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><h2>Dữ liệu của bạn tồn tại bao lâu</h2><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><h2>Các quyền nào của bạn với dữ liệu của mình</h2><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><h2>Các dữ liệu của bạn được gửi tới đâu</h2><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><h2>Thông tin liên hệ của bạn</h2><h2>Thông tin bổ sung</h2><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><h3>Các yêu cầu công bố thông tin được quản lý</h3>', 'Chính sách bảo mật', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-12-11 07:03:02', '2018-12-11 07:03:02', '', 3, 'http://localhost:8000/Healthcare/source/2018/12/11/3-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-12-11 07:03:17', '2018-12-11 07:03:17', '', '[:vi]Giới thiệu[:en]Introduction[:]', '', 'publish', 'closed', 'closed', '', 'gioi-thieu', '', '', '2018-12-14 07:41:44', '2018-12-14 07:41:44', '', 0, 'http://localhost:8000/Healthcare/source/?page_id=6', 0, 'page', '', 0),
(7, 1, '2018-12-11 07:03:17', '2018-12-11 07:03:17', '', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-12-11 07:03:17', '2018-12-11 07:03:17', '', 6, 'http://localhost:8000/Healthcare/source/2018/12/11/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-12-11 07:04:44', '2018-12-11 07:04:44', '[:vi]<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-1.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\n<em>Khu điều trị trong ngày</em>\r\n\r\n<em><img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-2.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\nPhòng bệnh điều trị trong ngày</em>\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-3.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\n<em>Các dịch vụ tiện ích tại phòng bệnh</em>\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-4.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\n<em>Khu vực nhà vệ sinh bệnh nhân</em>[:en]<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-1.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\nDay treatment area\r\n\r\n<em><img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-2.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\nDisease treatment during the day\r\n</em>\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-3.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\nServices in the ward\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-4.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\nPatient toilet area[:]', '[:vi]Giới thiệu phòng khám[:en]About the clinic[:]', '', 'publish', 'closed', 'closed', '', 'gioi-thieu-phong-kham', '', '', '2018-12-17 03:00:14', '2018-12-17 03:00:14', '', 6, 'http://localhost:8000/Healthcare/source/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-12-11 07:04:44', '2018-12-11 07:04:44', '', 'Giới thiệu phòng khám', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-12-11 07:04:44', '2018-12-11 07:04:44', '', 8, 'http://localhost:8000/Healthcare/source/2018/12/11/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-12-11 07:05:07', '2018-12-11 07:05:07', '[:vi]Từ đầu tháng 8/2017 Bệnh viện quận 4 từng bước xây dựng mô hình phòng khám ngoại trú thông minh cho cả khu vực khám Bảo hiểm y tế và khu vực khám Bác sĩ gia đình. Trước đó mô hình phòng khám thông minh của Bệnh Viện Nhân Dân Gia Định đã đoạt giải 2 trong các giải thưởng về cải tiến chất lượng bệnh viện của Sở Y tế TPHCM năm 2016.\r\n\r\nSau hơn 2 tháng tích cực triển khai và đưa vào hoạt động mô hình phòng khám thông minh đã giúp cải tiến thời gian chờ khám của bệnh nhân, tránh được việc chen lấn tại khu vực tiếp nhận bệnh, khu vực thu phí, khu vực lãnh thuốc,  cũng như các bất cập khác trong việc chờ khám tại các buồng khám bệnh.\r\n\r\nHơn nữa việc công khai trên màn hình tất cả thông tin về  tên tuổi bệnh nhân, số thứ tự chờ khám, dự kiến thời gian sẽ được khám, số tiền bệnh nhân sẽ phải đóng, số thứ tự và tên tuổi đến lượt lãnh thuốc sẽ giúp cho phòng khám ngoại trú giữ được không gian yên tĩnh nhất, tránh tiếng loa gọi tên như lúc trước, giúp cho các bệnh nhân và bác sĩ thoải mái hơn, tập trung hơn vào việc thăm khám và hỏi han bệnh nhân.\r\n\r\n<img src=\"http://benhvienquan4.vn/uploads/news/2017_09/pkthongminh_1.jpg\" alt=\"\" />\r\n\r\nVới trên 1000 lượt khám mỗi ngày, Bệnh viện quận 4 hy vọng việc triển khai mô hình này sẽ mang lại sự tiện lợi nhất cho bệnh nhân đến khám và điều trị tại Bệnh Viện Quận 4. Trong thời gian tới  việc áp dụng mô hình này sẽ được nhân rộng  ra các phân hệ khám ngoại trú khác và cận lâm sàng để hy vọng phục vụ bà con ngày một tốt hơn.\r\n\r\n<img src=\"http://benhvienquan4.vn/uploads/news/2017_09/pkthongminh_2.jpg\" alt=\"\" />[:en]From the beginning of 8/2017, District 4 Hospital has step by step build up a smart outpatient clinic for both the medical examination area and the GP area. Previously, the Gia Dinh People\'s Hospital\'s intelligent clinic model won the second prize in the hospital quality improvement award of the HCM City Health Department in 2016.\r\n\r\nAfter more than two months of active deployment and implementation of the intelligent clinic model has helped improve patient waiting time, avoid the squeeze in the receiving area, the charge area as well as other inadequacies in waiting for examination in the clinic.\r\n\r\nIn addition, the publicity on the screen of all information about the patient\'s name, wait order number, estimated time will be examined, the amount of patients will have to close, the number and name come to the drug. It will help the outpatient clinic to keep the quietest space, to avoid the loudspeaker\'s name as before, to help patients and doctors more comfortable, focus more on the examination and consultation patients.\r\n\r\n<img src=\"http://benhvienquan4.vn/uploads/news/2017_09/pkthongminh_1.jpg\" alt=\"\" />\r\n\r\nWith over 1000 visits per day, District 4 Hospital expects the implementation of this model will bring the most convenience for patients to see and treatment in District 4 Hospital. In the coming time the application of the model This will be expanded to other outpatient and subclinical subgroups to hopefully serve people better.\r\n\r\n<img src=\"http://benhvienquan4.vn/uploads/news/2017_09/pkthongminh_2.jpg\" alt=\"\" />[:]', '[:vi]Phòng khám thông minh[:en]Smart Clinic[:]', '', 'publish', 'closed', 'closed', '', 'phong-kham-thong-minh', '', '', '2018-12-18 04:23:32', '2018-12-18 04:23:32', '', 6, 'http://localhost:8000/Healthcare/source/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-12-11 07:05:07', '2018-12-11 07:05:07', '', 'Phòng khám thông minh', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-12-11 07:05:07', '2018-12-11 07:05:07', '', 10, 'http://localhost:8000/Healthcare/source/2018/12/11/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-12-11 07:05:17', '2018-12-11 07:05:17', '<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/1.jpg\" alt=\"\" width=\"863\" height=\"649\" />\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/2.jpg\" alt=\"\" width=\"862\" height=\"649\" />\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/3.jpg\" alt=\"\" width=\"858\" height=\"649\" />\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/4.jpg\" alt=\"\" width=\"861\" height=\"648\" />\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/5.jpg\" alt=\"\" width=\"864\" height=\"647\" />\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/6.jpg\" alt=\"\" width=\"864\" height=\"650\" />', '[:vi]Quy trình khám[:en]Examination procedure[:]', '', 'publish', 'closed', 'closed', '', 'qui-trinh-kham', '', '', '2018-12-18 04:23:54', '2018-12-18 04:23:54', '', 6, 'http://localhost:8000/Healthcare/source/?page_id=12', 0, 'page', '', 0),
(13, 1, '2018-12-11 07:05:17', '2018-12-11 07:05:17', '', 'Qui trình khám', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-12-11 07:05:17', '2018-12-11 07:05:17', '', 12, 'http://localhost:8000/Healthcare/source/2018/12/11/12-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-12-12 14:41:25', '2018-12-12 14:41:25', '', '', '', 'trash', 'closed', 'closed', '', '18__trashed', '', '', '2018-12-25 03:19:57', '2018-12-25 03:19:57', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=slide_introduction&#038;p=18', 0, 'slide_introduction', '', 0),
(19, 1, '2018-12-12 14:41:13', '2018-12-12 14:41:13', '', 'QCweb', '', 'inherit', 'open', 'closed', '', 'qcweb', '', '', '2018-12-12 14:41:13', '2018-12-12 14:41:13', '', 18, 'http://localhost/2018/freelancer/BE/healthcare/wp-content/uploads/2018/12/QCweb.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2018-12-12 14:46:08', '2018-12-12 14:46:08', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"slide_introduction\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'slide_introduction', 'slide_introduction', 'publish', 'closed', 'closed', '', 'group_5c111f078e16a', '', '', '2018-12-12 14:46:34', '2018-12-12 14:46:34', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=acf-field-group&#038;p=20', 0, 'acf-field-group', '', 0),
(21, 1, '2018-12-12 14:46:08', '2018-12-12 14:46:08', 'a:10:{s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:0:{}s:8:\"taxonomy\";a:0:{}s:10:\"allow_null\";i:0;s:14:\"allow_archives\";i:1;s:8:\"multiple\";i:0;}', 'button', 'button', 'publish', 'closed', 'closed', '', 'field_5c111f10e4063', '', '', '2018-12-12 14:46:34', '2018-12-12 14:46:34', '', 20, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=acf-field&#038;p=21', 1, 'acf-field', '', 0),
(22, 1, '2018-12-12 14:46:28', '2018-12-12 14:46:28', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'button_text', 'button_text', 'publish', 'closed', 'closed', '', 'field_5c111f3d4bf89', '', '', '2018-12-12 14:46:34', '2018-12-12 14:46:34', '', 20, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=acf-field&#038;p=22', 0, 'acf-field', '', 0),
(23, 1, '2018-12-12 15:44:49', '2018-12-12 15:44:49', '', '[:vi]Lầu 1 - 1[:en]Quang cảnh bệnh viện[:]', '', 'publish', 'closed', 'closed', '', 'quang-canh-benh-vien', '', '', '2019-01-03 16:53:59', '2019-01-03 16:53:59', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=slide_introduction&#038;p=23', 2, 'slide_introduction', '', 0),
(24, 1, '2018-12-12 15:44:43', '2018-12-12 15:44:43', '', 'Chup-tu-dh-yd', '', 'inherit', 'open', 'closed', '', 'chup-tu-dh-yd', '', '', '2018-12-12 15:44:43', '2018-12-12 15:44:43', '', 23, 'http://localhost/2018/freelancer/BE/healthcare/wp-content/uploads/2018/12/Chup-tu-dh-yd.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2018-12-12 15:45:59', '2018-12-12 15:45:59', '', '[:vi]Lầu 3[:en]Cổng Hồng Bàng[:]', '', 'publish', 'closed', 'closed', '', 'cong-hong-bang', '', '', '2019-01-03 16:52:43', '2019-01-03 16:52:43', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=slide_introduction&#038;p=25', 11, 'slide_introduction', '', 0),
(26, 1, '2018-12-12 15:45:55', '2018-12-12 15:45:55', '', 'cong hung vuong', '', 'inherit', 'open', 'closed', '', 'cong-hung-vuong', '', '', '2018-12-12 15:45:55', '2018-12-12 15:45:55', '', 25, 'http://localhost/2018/freelancer/BE/healthcare/wp-content/uploads/2018/12/cong-hung-vuong.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2018-12-12 15:46:46', '2018-12-12 15:46:46', '', '[:vi]Lầu 2[:en]Khu hành chính[:]', '', 'publish', 'closed', 'closed', '', 'khu-hanh-chinh', '', '', '2019-01-03 16:51:54', '2019-01-03 16:51:54', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=slide_introduction&#038;p=27', 10, 'slide_introduction', '', 0),
(28, 1, '2018-12-12 15:46:43', '2018-12-12 15:46:43', '', 'GuiSYT1', '', 'inherit', 'open', 'closed', '', 'guisyt1', '', '', '2018-12-12 15:46:43', '2018-12-12 15:46:43', '', 27, 'http://localhost/2018/freelancer/BE/healthcare/wp-content/uploads/2018/12/GuiSYT1.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2018-12-12 15:47:39', '2018-12-12 15:47:39', '', '[:vi]Sảnh 1[:en]Khoa Dịch vụ điều trị bệnh phổi[:]', '', 'publish', 'closed', 'closed', '', 'khoa-dich-vu-dieu-tri-benh-phoi', '', '', '2019-01-03 16:47:56', '2019-01-03 16:47:56', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=slide_introduction&#038;p=29', 5, 'slide_introduction', '', 0),
(30, 1, '2018-12-12 15:47:35', '2018-12-12 15:47:35', '', 'khoa dich vu', '', 'inherit', 'open', 'closed', '', 'khoa-dich-vu', '', '', '2018-12-25 04:42:12', '2018-12-25 04:42:12', '', 29, 'http://localhost/2018/freelancer/BE/healthcare/wp-content/uploads/2018/12/khoa-dich-vu.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2018-12-12 15:48:39', '2018-12-12 15:48:39', '', '[:vi]Sảnh 3[:en]Khoa Ung Bướu[:]', '', 'publish', 'closed', 'closed', '', 'khoa-ung-buou', '', '', '2019-01-03 16:47:28', '2019-01-03 16:47:28', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=slide_introduction&#038;p=31', 7, 'slide_introduction', '', 0),
(32, 1, '2018-12-12 15:48:37', '2018-12-12 15:48:37', '', 'ung buou', '', 'inherit', 'open', 'closed', '', 'ung-buou', '', '', '2018-12-12 15:48:37', '2018-12-12 15:48:37', '', 31, 'http://localhost/2018/freelancer/BE/healthcare/wp-content/uploads/2018/12/ung-buou.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2018-12-12 15:49:49', '2018-12-12 15:49:49', '[:vi]Khu vực sảnh 2[:]', '[:vi]Sảnh 2[:en]Khu A[:]', '', 'publish', 'closed', 'closed', '', 'khu-a', '', '', '2019-01-03 16:46:49', '2019-01-03 16:46:49', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=slide_introduction&#038;p=33', 6, 'slide_introduction', '', 0),
(34, 1, '2018-12-12 15:49:42', '2018-12-12 15:49:42', '', 'GuiSYT2', '', 'inherit', 'open', 'closed', '', 'guisyt2', '', '', '2018-12-12 15:49:42', '2018-12-12 15:49:42', '', 33, 'http://localhost/2018/freelancer/BE/healthcare/wp-content/uploads/2018/12/GuiSYT2.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2018-12-12 15:50:26', '2018-12-12 15:50:26', '[:vi]Khu vực sảnh 4[:]', '[:vi]Sảnh 4[:en]Khoa Hồi sức cấp cứu - chống độc[:]', '', 'publish', 'closed', 'closed', '', 'khoa-hoi-suc-cap-cuu-chong-doc', '', '', '2019-01-03 16:46:17', '2019-01-03 16:46:17', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=slide_introduction&#038;p=35', 8, 'slide_introduction', '', 0),
(36, 1, '2018-12-12 15:50:20', '2018-12-12 15:50:20', '', 'IMG_5089', '', 'inherit', 'open', 'closed', '', 'img_5089', '', '', '2018-12-20 03:48:54', '2018-12-20 03:48:54', '', 35, 'http://localhost/2018/freelancer/BE/healthcare/wp-content/uploads/2018/12/IMG_5089.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2018-12-12 15:51:36', '2018-12-12 15:51:36', '[:vi]Khu vực sảnh 5[:]', '[:vi]Sảnh 5[:en]Khu B[:]', '', 'publish', 'closed', 'closed', '', 'khu-b', '', '', '2019-01-03 16:45:03', '2019-01-03 16:45:03', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=slide_introduction&#038;p=37', 9, 'slide_introduction', '', 0),
(38, 1, '2018-12-12 15:51:33', '2018-12-12 15:51:33', '', 'khu b', '', 'inherit', 'open', 'closed', '', 'khu-b-2', '', '', '2018-12-25 04:45:06', '2018-12-25 04:45:06', '', 37, 'http://localhost/2018/freelancer/BE/healthcare/wp-content/uploads/2018/12/khu-b.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2018-12-12 15:52:08', '2018-12-12 15:52:08', '[:vi]Giải pháp quản lý bệnh viện toàn diện với\r\ncác hệ thống liên thông, đảm nhận vai trò rõ ràng.[:]', '[:vi]Vách đá[:en]Khu C[:]', '', 'publish', 'closed', 'closed', '', 'khu-c', '', '', '2019-01-03 16:43:00', '2019-01-03 16:43:00', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=slide_introduction&#038;p=39', 1, 'slide_introduction', '', 0),
(40, 1, '2018-12-12 15:52:00', '2018-12-12 15:52:00', '', 'khu c', '', 'inherit', 'open', 'closed', '', 'khu-c-2', '', '', '2018-12-20 03:48:30', '2018-12-20 03:48:30', '', 39, 'http://localhost/2018/freelancer/BE/healthcare/wp-content/uploads/2018/12/khu-c.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2018-12-12 15:57:59', '2018-12-12 15:57:59', 'Quản lý quy trình khám chữa bệnh, thống kê báo cáo tình hình khám chữa bệnh dễ dàng.', 'Quản lý khám chữa bệnh', '', 'publish', 'closed', 'closed', '', 'quan-ly-kham-chua-benh', '', '', '2018-12-20 06:02:40', '2018-12-20 06:02:40', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=dich_vu&#038;p=41', 0, 'dich_vu', '', 0),
(42, 1, '2018-12-12 15:57:26', '2018-12-12 15:57:26', '', 'DSC_1540', '', 'inherit', 'open', 'closed', '', 'dsc_1540', '', '', '2018-12-12 15:57:26', '2018-12-12 15:57:26', '', 41, 'http://localhost/2018/freelancer/BE/healthcare/wp-content/uploads/2018/12/DSC_1540.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2018-12-12 15:59:06', '2018-12-12 15:59:06', 'Quản lý quy trình khám chữa bệnh, thống kê báo cáo tình hình khám chữa bệnh dễ dàng.', 'Quản lý khám chữa bệnh2', '', 'publish', 'closed', 'closed', '', 'quan-ly-kham-chua-benh-2', '', '', '2018-12-20 06:02:27', '2018-12-20 06:02:27', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=dich_vu&#038;p=43', 0, 'dich_vu', '', 0),
(44, 1, '2018-12-13 13:15:34', '2018-12-13 13:15:34', '', 'Phê duyệt chương trình đào tạo liên tục cho cơ sở đào tạo Bệnh viện Phạm Ngọc Thạch', '', 'publish', 'closed', 'closed', '', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach', '', '', '2018-12-24 15:03:08', '2018-12-24 15:03:08', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=hoat_dong&#038;p=44', 0, 'hoat_dong', '', 0),
(45, 1, '2018-12-13 13:15:29', '2018-12-13 13:15:29', '', 'no-image', '', 'inherit', 'open', 'closed', '', 'no-image', '', '', '2018-12-13 13:15:29', '2018-12-13 13:15:29', '', 44, 'http://localhost/2018/freelancer/BE/healthcare/wp-content/uploads/2018/12/no-image.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2018-12-13 13:15:42', '2018-12-13 13:15:42', '', 'Phê duyệt chương trình đào tạo liên tục cho cơ sở đào tạo Bệnh viện Phạm Ngọc Thạch', '', 'publish', 'closed', 'closed', '', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-2', '', '', '2018-12-20 07:08:53', '2018-12-20 07:08:53', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=hoat_dong&#038;p=46', 0, 'hoat_dong', '', 0),
(47, 1, '2018-12-13 13:15:50', '2018-12-13 13:15:50', '', 'Phê duyệt chương trình đào tạo liên tục cho cơ sở đào tạo Bệnh viện Phạm Ngọc Thạch', '', 'publish', 'closed', 'closed', '', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-3', '', '', '2018-12-24 15:03:12', '2018-12-24 15:03:12', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=hoat_dong&#038;p=47', 0, 'hoat_dong', '', 0),
(48, 1, '2018-12-13 13:16:32', '2018-12-13 13:16:32', '<iframe src=\"https://drive.google.com/file/d/14yl8tYLOGyHWYtxX3MRAUzKnMq2gmWYN/preview\" width=\"100%\" height=\"480\"></iframe>', 'Danh mục dịch vụ kỹ thuật thực hiện tại Bệnh viện Phạm Ngọc Thạch', '', 'publish', 'closed', 'closed', '', 'danh-muc-dich-vu-ky-thuat-thuc-hien-tai-benh-vien-pham-ngoc-thach', '', '', '2018-12-19 07:45:46', '2018-12-19 07:45:46', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=hoat_dong&#038;p=48', 0, 'hoat_dong', '', 0),
(49, 1, '2018-12-13 13:16:28', '2018-12-13 13:16:28', '', 'doctor', '', 'inherit', 'open', 'closed', '', 'doctor', '', '', '2018-12-13 13:16:28', '2018-12-13 13:16:28', '', 48, 'http://localhost/2018/freelancer/BE/healthcare/wp-content/uploads/2018/12/doctor.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2018-12-13 13:39:15', '2018-12-13 13:39:15', 'Quản lý quy trình khám chữa bệnh, thống kê báo cáo tình hình khám chữa bệnh dễ dàng.', 'Quản lý khám chữa bệnh3', '', 'publish', 'closed', 'closed', '', 'quan-ly-kham-chua-benh3', '', '', '2018-12-20 06:02:06', '2018-12-20 06:02:06', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=dich_vu&#038;p=51', 0, 'dich_vu', '', 0),
(52, 1, '2018-12-13 13:39:28', '2018-12-13 13:39:28', 'Quản lý quy trình khám chữa bệnh, thống kê báo cáo tình hình khám chữa bệnh dễ dàng.', 'Quản lý khám chữa bệnh4', '', 'publish', 'closed', 'closed', '', 'quan-ly-kham-chua-benh4', '', '', '2018-12-20 06:01:38', '2018-12-20 06:01:38', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=dich_vu&#038;p=52', 0, 'dich_vu', '', 0),
(53, 1, '2018-12-13 13:39:39', '2018-12-13 13:39:39', 'Quản lý quy trình khám chữa bệnh, thống kê báo cáo tình hình khám chữa bệnh dễ dàng.', 'Quản lý khám chữa bệnh5', '', 'publish', 'closed', 'closed', '', 'quan-ly-kham-chua-benh5', '', '', '2018-12-20 06:37:35', '2018-12-20 06:37:35', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=dich_vu&#038;p=53', 0, 'dich_vu', '', 0),
(54, 1, '2018-12-13 13:39:56', '2018-12-13 13:39:56', 'Quản lý quy trình khám chữa bệnh, thống kê báo cáo tình hình khám chữa bệnh dễ dàng.', 'Quản lý khám chữa bệnh6', '', 'publish', 'closed', 'closed', '', 'quan-ly-kham-chua-benh6', '', '', '2018-12-20 06:00:58', '2018-12-20 06:00:58', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=dich_vu&#038;p=54', 0, 'dich_vu', '', 0),
(55, 1, '2018-12-14 03:40:26', '2018-12-14 03:40:26', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 0, 'http://localhost:8000/Healthcare/source/?p=55', 1, 'nav_menu_item', '', 0),
(56, 1, '2018-12-14 03:40:26', '2018-12-14 03:40:26', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 0, 'http://localhost:8000/Healthcare/source/?p=56', 2, 'nav_menu_item', '', 0),
(57, 1, '2018-12-14 03:40:26', '2018-12-14 03:40:26', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 6, 'http://localhost:8000/Healthcare/source/?p=57', 3, 'nav_menu_item', '', 0),
(58, 1, '2018-12-14 03:40:27', '2018-12-14 03:40:27', ' ', '', '', 'publish', 'closed', 'closed', '', '58', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 6, 'http://localhost:8000/Healthcare/source/?p=58', 4, 'nav_menu_item', '', 0),
(59, 1, '2018-12-14 03:40:27', '2018-12-14 03:40:27', ' ', '', '', 'publish', 'closed', 'closed', '', '59', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 6, 'http://localhost:8000/Healthcare/source/?p=59', 5, 'nav_menu_item', '', 0),
(60, 1, '2018-12-14 03:38:25', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-12-14 03:38:25', '0000-00-00 00:00:00', '', 0, 'http://localhost:8000/Healthcare/source/?p=60', 1, 'nav_menu_item', '', 0),
(65, 1, '2018-12-14 03:55:13', '2018-12-14 03:55:13', 'Đây là một trang mẫu. Nó khác với một bài blog bởi vì nó sẽ là một trang tĩnh và sẽ được thêm vào thanh menu của trang web của bạn (trong hầu hết theme). Mọi người thường bắt đầu bằng một trang Giới thiệu để giới thiệu bản thân đến người dùng tiềm năng. Bạn có thể viết như sau:\n\n<blockquote>Xin chào! Tôi là người giao thư bằng xe đạp vào ban ngày, một diễn viên đầy tham vọng vào ban đêm, và đây là trang web của tôi. Tôi sống ở Los Angeles, có một chú cho tuyệt vời tên là Jack, và tôi thích uống cocktail.</blockquote>\n\n...hay như thế này:\n\n<blockquote>Công ty XYZ Doohickey được thành lập vào năm 1971, và đã cung cấp đồ dùng chất lượng cho công chúng kể từ đó. Nằm ở thành phố Gotham, XYZ tạo việc làm cho hơn 2.000 người và làm tất cả những điều tuyệt vời cho cộng đồng Gotham.</blockquote>\n\nLà người dùng WordPress mới, bạn nên truy cập <a href=\"http://localhost:8000/Healthcare/source/wp-admin/\">trang quản trị</a> để xóa trang này và tạo các trang mới cho nội dung của bạn. Chúc vui vẻ!', 'Trang Mẫu', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-12-14 03:55:13', '2018-12-14 03:55:13', '', 2, 'http://localhost:8000/Healthcare/source/2-revision-v1/', 0, 'revision', '', 0),
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
(76, 1, '2018-12-14 03:57:31', '2018-12-14 03:57:31', '[:vi]Sức khỏe luôn là vốn quý giá của mỗi người. Vì vậy, chăm sóc và bảo vệ sức khỏe cho bản thân cũng như cả gia đình là nhu cầu thiết yếu và cấp bách.\r\n\r\n&nbsp;\r\n\r\nThấu hiểu nhu cầu đó, Bảo hiểm Bảo Việt mang đến sản phẩm bảo hiểm sức khỏe “<strong>Bảo Việt An Gia</strong>” – giải pháp tài chính ưu việt giúp bạn và mọi thành viên trong gia đình không còn lo lắng về chi phí y tế để an tâm tận hưởng cuộc sống. Bảo Việt An Gia được thiết kế phù hợp với tất cả các đối tượng từ người già đến trẻ nhỏ với nhiều hình thức tham gia linh hoạt. Khách hàng khi tham gia bảo hiểm sẽ được bảo vệ y tế một cách toàn diện và tận hưởng chất lượng dịch vụ y tế đẳng cấp nhất tại những bệnh viên viện hàng đầu Việt Nam.\r\n\r\n&nbsp;\r\n\r\n<b>Ưu điểm vượt trội của sản phẩm:</b>\r\n\r\n&nbsp;\r\n<ul>\r\n 	<li>Quyền lợi bảo hiểm cơ bản lên đến 454 triệu đồng/người/năm</li>\r\n 	<li>Không mất thời gian thu thập hồ sơ yêu cầu bồi thường và không phải thanh toán viện phí</li>\r\n 	<li>Bồi thường nhanh, chính xác trong vòng 15 ngày làm việc</li>\r\n 	<li>Dịch vụ bảo lãnh viện phí ưu việt 24/7 tại gần 90 bệnh viện chất lượng cao trên cả nước</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<strong>Đối tượng bảo hiểm</strong>\r\n<ul>\r\n 	<li>Mọi công dân và người nước ngoài cư trú tại Việt Nam từ 15 ngày tuổi đến 65 tuổi.</li>\r\n</ul>[:]', 'Gói khám toàn diện', '', 'publish', 'closed', 'closed', '', 'goi-kham-toan-dien', '', '', '2018-12-25 03:33:30', '2018-12-25 03:33:30', '', 66, 'http://localhost:8000/Healthcare/source/?page_id=76', 0, 'page', '', 0),
(77, 1, '2018-12-14 03:57:31', '2018-12-14 03:57:31', '', 'Gói khám toàn diện', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2018-12-14 03:57:31', '2018-12-14 03:57:31', '', 76, 'http://localhost:8000/Healthcare/source/76-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2018-12-14 03:57:44', '2018-12-14 03:57:44', '[:vi]<p style=\"font-weight: 300;\">Kể từ ngày 1/12/2015 theo Quyết định 959/QĐ-BHXH ngày 09/09/2015 quy định về Bảo hiểm xã hội, bảo hiểm y tế, bảo hiểm thất nghiệp  bắt buộc. Đồng thời kèm theo các quy định xử phạt nghiêm khắc hơn với các doanh nghiệp không tuân thủ quy định đóng bảo hiểm xã hội cho nhân viên. Tuy nhiên, thủ tục <b><strong>đăng ký bảo hiểm xã hội</strong></b> còn phức tạp với các đơn từ, biểu mẫu quy định gây khó khăn cho nhiều doanh nghiệp. Với kinh nghiệm hơn 10 năm nhận đăng ký bảo hiểm xã hội cho khách hàng, Kế Toán Anpha cung cấp gói dịch vụ đăng ký bỏa hiểm mới với biểu phí bên dưới</p>\r\n\r\n<table style=\"font-weight: 300;\" width=\"100%\">\r\n<tbody>\r\n<tr>\r\n<td rowspan=\"2\" width=\"153\"><b><strong>Phí Dịch Vụ</strong></b></td>\r\n<td colspan=\"3\" width=\"392\"><b><strong>Số Lượng Nhân Viên Cần Đăng Ký BHXH</strong></b></td>\r\n</tr>\r\n<tr>\r\n<td width=\"143\"><b><strong>1 =&gt; 5 NV</strong></b></td>\r\n<td width=\"127\"><b><strong>6 =&gt;10 NV</strong></b></td>\r\n<td width=\"123\"><b><strong>Trên 10 NV</strong></b></td>\r\n</tr>\r\n<tr>\r\n<td width=\"153\">Các quận TP. HCM</td>\r\n<td width=\"143\">1.500.000</td>\r\n<td width=\"127\">2.500.000</td>\r\n<td width=\"123\">3.000.000</td>\r\n</tr>\r\n<tr>\r\n<td width=\"153\">Các huyện TP. HCM</td>\r\n<td width=\"143\">2.000.000</td>\r\n<td width=\"127\">3.000.000</td>\r\n<td width=\"123\">3.500.000</td>\r\n</tr>\r\n<tr>\r\n<td width=\"153\">Các tỉnh Anpha có chi nhánh bao gồm:\r\n\r\n<b><strong>Đồng Nai, Bình Dương, Vũng Tàu</strong></b></td>\r\n<td width=\"143\">2.500.000</td>\r\n<td width=\"127\">3.500.000</td>\r\n<td width=\"123\">4.000.000</td>\r\n</tr>\r\n<tr>\r\n<td width=\"153\">Các tỉnh Anpha không có chi nhánh</td>\r\n<td width=\"143\">3.000.000</td>\r\n<td width=\"127\">4.000.000</td>\r\n<td width=\"123\">4.500.000</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"font-weight: 300;\"></p>\r\n<p style=\"font-weight: 300;\"><b><strong>Lưu ý:</strong></b> <b><strong><em>biểu phí dịch vụ đăng ký bảo hiểm xã hội bên trên là trọn gói, Anpha cam kết không phát sinh phí và sẽ thay doanh nghiệp làm tất cả mọi việc, đồng thời bàn giao sổ bảo hiểm xã hội tận tay khách hàng.</em></strong></b></p>\r\n<p style=\"font-weight: 300;\"><b><strong>Tỷ lệ đóng bảo hiểm xã hội, bảo hiểm y tế, bảo hiểm thất nghiệp.</strong></b></p>\r\n\r\n<table style=\"font-weight: 300;\" width=\"100%\">\r\n<tbody>\r\n<tr>\r\n<td>Tỷ lệ đóng bảo hiểm</td>\r\n<td>BH Xã Hội</td>\r\n<td>BH Y Tế</td>\r\n<td>BH Thất Nghiệp</td>\r\n<td>Tổng</td>\r\n</tr>\r\n<tr>\r\n<td>Doanh nghiệp phải đóng</td>\r\n<td>17.5%</td>\r\n<td>3%</td>\r\n<td>1%</td>\r\n<td>22%</td>\r\n</tr>\r\n<tr>\r\n<td>Người lao động</td>\r\n<td>8%</td>\r\n<td>1,5%</td>\r\n<td>1%</td>\r\n<td>10,5%</td>\r\n</tr>\r\n<tr>\r\n<td>Tổng cộng</td>\r\n<td>25.5%</td>\r\n<td>4,5%</td>\r\n<td>2%</td>\r\n<td>32%</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"font-weight: 300;\"><b><strong>Trong đó:</strong></b></p>\r\n\r\n<ul>\r\n 	<li>Người lao động phải đóng: bảo hiểm xã hội: 8% (Đóng vào quỹ hưu trí và tử tuất)</li>\r\n 	<li>Doanh nghiệp phải đóng: bảo hiểm xã hội: 17.5% (Trong đó: 3% vào quỹ BHXH ốm đau và thai sản, 1% vào quỹ BHXH tai nạn lao động, bệnh nghề nghiệp; 13.5% vào quỹ BHXH hưu trí và tử tuất).</li>\r\n</ul>[:]', 'Dịch vụ bảo hiểm', '', 'publish', 'closed', 'closed', '', 'dich-vu-bao-hiem', '', '', '2018-12-25 03:30:50', '2018-12-25 03:30:50', '', 66, 'http://localhost:8000/Healthcare/source/?page_id=78', 0, 'page', '', 0),
(79, 1, '2018-12-14 03:57:44', '2018-12-14 03:57:44', '', 'Dịch vụ bảo hiểm', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2018-12-14 03:57:44', '2018-12-14 03:57:44', '', 78, 'http://localhost:8000/Healthcare/source/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-12-14 03:57:55', '2018-12-14 03:57:55', '[:vi]Trước đây, giá một lần nội soi tai - mũi - họng là 202.000 đồng thì nay giảm xuống còn 100.000  đồng, giá một lần chụp cắt lớp vi tính giảm từ 2.266.000 đồng xuống còn 1.689.000 đồng. Những dịch vụ khác mức giảm chỉ từ vài nghìn đến vài chục nghìn đồng như: tiền khám bệnh, ngày giường, xét nghiệm…\r\n\r\nVới mức giá giảm chỉ vài nghìn, người bệnh có thể sẽ không cảm nhận được sự thay đổi, nhưng các bệnh viện tuyến huyện lại khác. Giảm tiền chỗ này, tăng chỗ khác là điều BHXH và Bộ Y tế lo ngại sẽ xảy ra với các bệnh viện, ví dụ, các bệnh viện có thể sẽ tăng chỉ định những kỹ thuật và xét nghiệm không cần thiết, hoặc tăng số lượt khám ở mỗi bàn từ 37 lên 65 người/ngày.\r\n\r\nCần có thời gian để đánh giá chính xác những thay đổi trong hoạt động của các bệnh viện, tuy nhiên, qua tính toán sơ bộ, giảm giá dịch vụ sẽ giúp Quỹ Bảo hiểm tiết kiệm được hơn 1.000 tỷ đồng.\r\n<div class=\"VCSortableInPreviewMode active\"></div>[:]', 'Giá dịch vụ', '', 'publish', 'closed', 'closed', '', 'gia-dich-vu', '', '', '2018-12-25 03:32:18', '2018-12-25 03:32:18', '', 66, 'http://localhost:8000/Healthcare/source/?page_id=80', 0, 'page', '', 0),
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
(92, 1, '2018-12-14 04:00:10', '2018-12-14 04:00:10', '', 'Lịch làm việc', '', 'publish', 'closed', 'closed', '', 'lich-lam-viec', '', '', '2019-01-04 02:19:19', '2019-01-04 02:19:19', '', 88, 'http://localhost:8000/Healthcare/source/?page_id=92', 0, 'page', '', 0),
(93, 1, '2018-12-14 04:00:10', '2018-12-14 04:00:10', '', 'Lịch làm việc', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2018-12-14 04:00:10', '2018-12-14 04:00:10', '', 92, 'http://localhost:8000/Healthcare/source/92-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2018-12-14 04:00:21', '2018-12-14 04:00:21', '', 'Đặt hẹn', '', 'publish', 'closed', 'closed', '', 'dat-hen', '', '', '2019-01-04 02:18:17', '2019-01-04 02:18:17', '', 88, 'http://localhost:8000/Healthcare/source/?page_id=94', 0, 'page', '', 0),
(95, 1, '2018-12-14 04:00:21', '2018-12-14 04:00:21', '', 'Đặt hẹn', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2018-12-14 04:00:21', '2018-12-14 04:00:21', '', 94, 'http://localhost:8000/Healthcare/source/94-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2018-12-14 04:00:37', '2018-12-14 04:00:37', '[:vi]<div class=\"text-justify\">\r\n\r\nKhám sức khỏe tổng quát định kỳ 6 tháng/lần là cách tốt nhất để chủ động bảo vệ và chăm sóc sức khỏe bản thân. Thói quen này không chỉ giúp chúng ta đánh giá tình trạng sức khỏe hiện tại mà còn kịp thời phát hiện và điều trị bệnh lý nguy hiểm hoặc có biện pháp ngăn chặn các yếu tố nguy cơ gây bệnh ngay từ sớm. Tùy thuộc vào độ tuổi, dinh dưỡng, lối sống và tiền sử gia đình, mỗi người đều có nguy cơ mắc bệnh khác nhau. Vì vậy, cần chủ động khám sức khỏe tổng quát định kỳ, kiểm soát cân nặng ở mức hợp lý và duy trì lối sống lành mạnh để sống khỏe, sống thọ nhất có thể.\r\n\r\n</div>\r\n<div id=\"addtocart\">\r\n<div class=\"row\"></div>\r\n</div>[:]', 'Chuyên khoa tổng quát', '', 'publish', 'closed', 'closed', '', 'chuyen-khoa-tong-quat', '', '', '2018-12-25 04:43:24', '2018-12-25 04:43:24', '', 88, 'http://localhost:8000/Healthcare/source/?page_id=96', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
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
(120, 1, '2018-12-14 04:04:43', '2018-12-14 04:04:43', '', 'DM các cơ sở y tế nhận KCB BHYT ban đầu tại PK', '', 'publish', 'closed', 'closed', '', 'dm-cac-co-so-y-te-nhan-kcb-bhyt-ban-dau-tai-pk', '', '', '2018-12-14 04:04:43', '2018-12-14 04:04:43', '', 102, 'http://localhost:8000/Healthcare/source/?page_id=120', 0, 'page', '', 0),
(121, 1, '2018-12-14 04:04:43', '2018-12-14 04:04:43', '', 'DM các cơ sở y tế nhận KCB BHYT ban đầu tại PK', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2018-12-14 04:04:43', '2018-12-14 04:04:43', '', 120, 'http://localhost:8000/Healthcare/source/120-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2018-12-14 04:04:53', '2018-12-14 04:04:53', '', 'Tính dinh dưỡng', '', 'publish', 'closed', 'closed', '', 'tinh-dinh-duong', '', '', '2018-12-14 04:04:53', '2018-12-14 04:04:53', '', 102, 'http://localhost:8000/Healthcare/source/?page_id=122', 0, 'page', '', 0),
(123, 1, '2018-12-14 04:04:53', '2018-12-14 04:04:53', '', 'Tính dinh dưỡng', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2018-12-14 04:04:53', '2018-12-14 04:04:53', '', 122, 'http://localhost:8000/Healthcare/source/122-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2018-12-14 04:05:05', '2018-12-14 04:05:05', '', 'Văn bản - biểu mẫu sở y tế', '', 'publish', 'closed', 'closed', '', 'van-ban-bieu-mau-so-y-te', '', '', '2018-12-14 04:05:05', '2018-12-14 04:05:05', '', 102, 'http://localhost:8000/Healthcare/source/?page_id=124', 0, 'page', '', 0),
(125, 1, '2018-12-14 04:05:05', '2018-12-14 04:05:05', '', 'Văn bản - biểu mẫu sở y tế', '', 'inherit', 'closed', 'closed', '', '124-revision-v1', '', '', '2018-12-14 04:05:05', '2018-12-14 04:05:05', '', 124, 'http://localhost:8000/Healthcare/source/124-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2018-12-14 04:05:13', '2018-12-14 04:05:13', '', 'Liên hệ - góp ý', '', 'publish', 'closed', 'closed', '', 'lien-he-gop-y', '', '', '2018-12-14 04:05:13', '2018-12-14 04:05:13', '', 0, 'http://localhost:8000/Healthcare/source/?page_id=126', 0, 'page', '', 0),
(127, 1, '2018-12-14 04:05:13', '2018-12-14 04:05:13', '', 'Liên hệ - góp ý', '', 'inherit', 'closed', 'closed', '', '126-revision-v1', '', '', '2018-12-14 04:05:13', '2018-12-14 04:05:13', '', 126, 'http://localhost:8000/Healthcare/source/126-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2018-12-14 04:08:24', '2018-12-14 04:08:24', ' ', '', '', 'publish', 'closed', 'closed', '', '128', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 0, 'http://localhost:8000/Healthcare/source/?p=128', 7, 'nav_menu_item', '', 0),
(129, 1, '2018-12-14 04:08:27', '2018-12-14 04:08:27', ' ', '', '', 'publish', 'closed', 'closed', '', '129', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 66, 'http://localhost:8000/Healthcare/source/?p=129', 13, 'nav_menu_item', '', 0),
(130, 1, '2018-12-14 04:08:27', '2018-12-14 04:08:27', ' ', '', '', 'publish', 'closed', 'closed', '', '130', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 66, 'http://localhost:8000/Healthcare/source/?p=130', 14, 'nav_menu_item', '', 0),
(131, 1, '2018-12-14 04:08:26', '2018-12-14 04:08:26', ' ', '', '', 'publish', 'closed', 'closed', '', '131', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 66, 'http://localhost:8000/Healthcare/source/?p=131', 12, 'nav_menu_item', '', 0),
(132, 1, '2018-12-14 04:08:25', '2018-12-14 04:08:25', ' ', '', '', 'publish', 'closed', 'closed', '', '132', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 66, 'http://localhost:8000/Healthcare/source/?p=132', 8, 'nav_menu_item', '', 0),
(133, 1, '2018-12-14 04:08:26', '2018-12-14 04:08:26', ' ', '', '', 'publish', 'closed', 'closed', '', '133', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 66, 'http://localhost:8000/Healthcare/source/?p=133', 9, 'nav_menu_item', '', 0),
(134, 1, '2018-12-14 04:08:26', '2018-12-14 04:08:26', ' ', '', '', 'publish', 'closed', 'closed', '', '134', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 66, 'http://localhost:8000/Healthcare/source/?p=134', 11, 'nav_menu_item', '', 0),
(135, 1, '2018-12-14 04:08:26', '2018-12-14 04:08:26', ' ', '', '', 'publish', 'closed', 'closed', '', '135', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 66, 'http://localhost:8000/Healthcare/source/?p=135', 10, 'nav_menu_item', '', 0),
(136, 1, '2018-12-14 04:08:27', '2018-12-14 04:08:27', ' ', '', '', 'publish', 'closed', 'closed', '', '136', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 66, 'http://localhost:8000/Healthcare/source/?p=136', 15, 'nav_menu_item', '', 0),
(139, 1, '2018-12-14 04:10:31', '2018-12-14 04:10:31', '', 'Bác sĩ – Lịch làm việc', '', 'publish', 'closed', 'closed', '', 'bac-si-lich-lam-viec', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 0, 'http://localhost:8000/Healthcare/source/?p=139', 16, 'nav_menu_item', '', 0),
(140, 1, '2018-12-14 04:10:33', '2018-12-14 04:10:33', ' ', '', '', 'publish', 'closed', 'closed', '', '140', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 88, 'http://localhost:8000/Healthcare/source/?p=140', 20, 'nav_menu_item', '', 0),
(141, 1, '2018-12-14 04:10:33', '2018-12-14 04:10:33', ' ', '', '', 'publish', 'closed', 'closed', '', '141', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 88, 'http://localhost:8000/Healthcare/source/?p=141', 19, 'nav_menu_item', '', 0),
(142, 1, '2018-12-14 04:10:32', '2018-12-14 04:10:32', ' ', '', '', 'publish', 'closed', 'closed', '', '142', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 88, 'http://localhost:8000/Healthcare/source/?p=142', 18, 'nav_menu_item', '', 0),
(143, 1, '2018-12-14 04:10:31', '2018-12-14 04:10:31', ' ', '', '', 'publish', 'closed', 'closed', '', '143', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 88, 'http://localhost:8000/Healthcare/source/?p=143', 17, 'nav_menu_item', '', 0),
(144, 1, '2018-12-14 04:14:28', '2018-12-14 04:14:28', ' ', '', '', 'publish', 'closed', 'closed', '', '144', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 0, 'http://localhost:8000/Healthcare/source/?p=144', 22, 'nav_menu_item', '', 0),
(145, 1, '2018-12-14 04:14:28', '2018-12-14 04:14:28', ' ', '', '', 'publish', 'closed', 'closed', '', '145', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 0, 'http://localhost:8000/Healthcare/source/?p=145', 23, 'nav_menu_item', '', 0),
(146, 1, '2018-12-14 04:14:31', '2018-12-14 04:14:31', ' ', '', '', 'publish', 'closed', 'closed', '', '146', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 102, 'http://localhost:8000/Healthcare/source/?p=146', 31, 'nav_menu_item', '', 0),
(147, 1, '2018-12-14 04:14:29', '2018-12-14 04:14:29', ' ', '', '', 'publish', 'closed', 'closed', '', '147', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 102, 'http://localhost:8000/Healthcare/source/?p=147', 24, 'nav_menu_item', '', 0),
(148, 1, '2018-12-14 04:14:29', '2018-12-14 04:14:29', ' ', '', '', 'publish', 'closed', 'closed', '', '148', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 102, 'http://localhost:8000/Healthcare/source/?p=148', 25, 'nav_menu_item', '', 0),
(149, 1, '2018-12-14 04:14:30', '2018-12-14 04:14:30', ' ', '', '', 'publish', 'closed', 'closed', '', '149', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 102, 'http://localhost:8000/Healthcare/source/?p=149', 30, 'nav_menu_item', '', 0),
(150, 1, '2018-12-14 04:14:31', '2018-12-14 04:14:31', ' ', '', '', 'publish', 'closed', 'closed', '', '150', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 102, 'http://localhost:8000/Healthcare/source/?p=150', 32, 'nav_menu_item', '', 0),
(151, 1, '2018-12-14 04:14:30', '2018-12-14 04:14:30', ' ', '', '', 'publish', 'closed', 'closed', '', '151', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 102, 'http://localhost:8000/Healthcare/source/?p=151', 28, 'nav_menu_item', '', 0),
(152, 1, '2018-12-14 04:14:29', '2018-12-14 04:14:29', ' ', '', '', 'publish', 'closed', 'closed', '', '152', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 102, 'http://localhost:8000/Healthcare/source/?p=152', 26, 'nav_menu_item', '', 0),
(153, 1, '2018-12-14 04:14:30', '2018-12-14 04:14:30', ' ', '', '', 'publish', 'closed', 'closed', '', '153', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 102, 'http://localhost:8000/Healthcare/source/?p=153', 27, 'nav_menu_item', '', 0),
(154, 1, '2018-12-14 04:14:30', '2018-12-14 04:14:30', ' ', '', '', 'publish', 'closed', 'closed', '', '154', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 102, 'http://localhost:8000/Healthcare/source/?p=154', 29, 'nav_menu_item', '', 0),
(155, 1, '2018-12-14 04:14:31', '2018-12-14 04:14:31', '', 'Văn bản – biểu mẫu sở y tế', '', 'publish', 'closed', 'closed', '', 'van-ban-bieu-mau-so-y-te', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 102, 'http://localhost:8000/Healthcare/source/?p=155', 33, 'nav_menu_item', '', 0),
(156, 1, '2018-12-14 04:14:27', '2018-12-14 04:14:27', ' ', '', '', 'publish', 'closed', 'closed', '', '156', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 0, 'http://localhost:8000/Healthcare/source/?p=156', 21, 'nav_menu_item', '', 0),
(157, 1, '2018-12-14 04:16:31', '2018-12-14 04:16:31', '', 'Liên hệ – góp ý', '', 'publish', 'closed', 'closed', '', 'lien-he-gop-y', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 0, 'http://localhost:8000/Healthcare/source/?p=157', 34, 'nav_menu_item', '', 0),
(158, 1, '2018-12-14 06:32:23', '2018-12-14 06:32:23', '<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-1.jpg\" alt=\"\" width=\"900\" height=\"675\" /><em>Khu điều trị trong ngày</em>\r\n\r\n<em><img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-2.jpg\" alt=\"\" width=\"900\" height=\"675\" />Phòng bệnh điều trị trong ngày</em>\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-3.jpg\" alt=\"\" width=\"900\" height=\"675\" /><em>Các dịch vụ tiện ích tại phòng bệnh</em>\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-4.jpg\" alt=\"\" width=\"900\" height=\"675\" /><em>Khu vực nhà vệ sinh bệnh nhân</em>', 'Giới thiệu phòng khám', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-12-14 06:32:23', '2018-12-14 06:32:23', '', 8, 'http://localhost:8000/Healthcare/source/8-revision-v1/', 0, 'revision', '', 0),
(159, 1, '2018-12-14 06:38:44', '2018-12-14 06:38:44', '<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-1.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\n<em>Khu điều trị trong ngày</em>\r\n\r\n<em><img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-2.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\nPhòng bệnh điều trị trong ngày</em>\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-3.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\n<em>Các dịch vụ tiện ích tại phòng bệnh</em>\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-4.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\n<em>Khu vực nhà vệ sinh bệnh nhân</em>', 'Giới thiệu phòng khám', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-12-14 06:38:44', '2018-12-14 06:38:44', '', 8, 'http://localhost:8000/Healthcare/source/8-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2018-12-14 06:39:53', '2018-12-14 06:39:53', 'Giải pháp phòng khám thông minh AliboboCIS gồm <span class=\"style1\">10 phân hệ, 100 chức năng</span> được thiết kế để quản lý tổng thể phòng khám, tự động hóa phòng khám, góp phần nâng cao công suất và chất lượng khám chữa bệnh. Gián tiếp nâng cao thương hiệu phòng khám, thu hút người dân.\r\n\r\nGiải pháp gồm 8 nhóm sản phẩm như sau: <em>(1)Phần mềm quản lý phòng khám (2) Phần mềm quản lý khám sức khỏe (3) Phần mềm kết nối tự động máy xét nghiệm LIS (4) Phần mềm lưu trữ và truyền tải hình ảnh PACS (5) Hệ thống bệnh án điện tử toàn quốc (6) Hệ thống đặt lịch khám toàn quốc (7) Hội chẩn từ xa (8) Hệ thống theo dõi điều trị sau khám.</em>', 'Phòng khám thông minh', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-12-14 06:39:53', '2018-12-14 06:39:53', '', 10, 'http://localhost:8000/Healthcare/source/10-revision-v1/', 0, 'revision', '', 0),
(161, 1, '2018-12-14 06:40:33', '2018-12-14 06:40:33', 'Từ đầu tháng 8/2017 Bệnh viện quận 4 từng bước xây dựng mô hình phòng khám ngoại trú thông minh cho cả khu vực khám Bảo hiểm y tế và khu vực khám Bác sĩ gia đình. Trước đó mô hình phòng khám thông minh của Bệnh Viện Nhân Dân Gia Định đã đoạt giải 2 trong các giải thưởng về cải tiến chất lượng bệnh viện của Sở Y tế TPHCM năm 2016.\r\n\r\nSau hơn 2 tháng tích cực triển khai và đưa vào hoạt động mô hình phòng khám thông minh đã giúp cải tiến thời gian chờ khám của bệnh nhân, tránh được việc chen lấn tại khu vực tiếp nhận bệnh, khu vực thu phí, khu vực lãnh thuốc,  cũng như các bất cập khác trong việc chờ khám tại các buồng khám bệnh.\r\n\r\nHơn nữa việc công khai trên màn hình tất cả thông tin về  tên tuổi bệnh nhân, số thứ tự chờ khám, dự kiến thời gian sẽ được khám, số tiền bệnh nhân sẽ phải đóng, số thứ tự và tên tuổi đến lượt lãnh thuốc sẽ giúp cho phòng khám ngoại trú giữ được không gian yên tĩnh nhất, tránh tiếng loa gọi tên như lúc trước, giúp cho các bệnh nhân và bác sĩ thoải mái hơn, tập trung hơn vào việc thăm khám và hỏi han bệnh nhân.\r\n\r\n<img src=\"http://benhvienquan4.vn/uploads/news/2017_09/pkthongminh_1.jpg\" alt=\"\" />\r\n\r\nVới trên 1000 lượt khám mỗi ngày, Bệnh viện quận 4 hy vọng việc triển khai mô hình này sẽ mang lại sự tiện lợi nhất cho bệnh nhân đến khám và điều trị tại Bệnh Viện Quận 4. Trong thời gian tới  việc áp dụng mô hình này sẽ được nhân rộng  ra các phân hệ khám ngoại trú khác và cận lâm sàng để hy vọng phục vụ bà con ngày một tốt hơn.\r\n\r\n<img src=\"http://benhvienquan4.vn/uploads/news/2017_09/pkthongminh_2.jpg\" alt=\"\" />', 'Phòng khám thông minh', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-12-14 06:40:33', '2018-12-14 06:40:33', '', 10, 'http://localhost:8000/Healthcare/source/10-revision-v1/', 0, 'revision', '', 0),
(162, 1, '2018-12-14 06:41:26', '2018-12-14 06:41:26', '<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/1.jpg\" alt=\"\" width=\"863\" height=\"649\" />\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/2.jpg\" alt=\"\" width=\"862\" height=\"649\" />\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/3.jpg\" alt=\"\" width=\"858\" height=\"649\" />\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/4.jpg\" alt=\"\" width=\"861\" height=\"648\" />\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/5.jpg\" alt=\"\" width=\"864\" height=\"647\" />\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/6.jpg\" alt=\"\" width=\"864\" height=\"650\" />', 'Qui trình khám', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-12-14 06:41:26', '2018-12-14 06:41:26', '', 12, 'http://localhost:8000/Healthcare/source/12-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2018-12-14 06:49:13', '2018-12-14 06:49:13', '', 'dieu-tri-trong-ngay-1', '', 'inherit', 'open', 'closed', '', 'dieu-tri-trong-ngay-1', '', '', '2018-12-14 06:49:13', '2018-12-14 06:49:13', '', 8, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/dieu-tri-trong-ngay-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(164, 1, '2018-12-14 06:49:54', '2018-12-14 06:49:54', '', 'pkthongminh_1', '', 'inherit', 'open', 'closed', '', 'pkthongminh_1', '', '', '2018-12-20 03:48:42', '2018-12-20 03:48:42', '', 10, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/pkthongminh_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(165, 1, '2018-12-14 06:50:38', '2018-12-14 06:50:38', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2018-12-14 06:50:38', '2018-12-14 06:50:38', '', 12, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(166, 1, '2018-12-14 07:27:22', '2018-12-14 07:27:22', 'a:7:{s:8:\"location\";a:5:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:11:\"page_parent\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"6\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:11:\"page_parent\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"66\";}}i:2;a:1:{i:0;a:3:{s:5:\"param\";s:11:\"page_parent\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"84\";}}i:3;a:1:{i:0;a:3:{s:5:\"param\";s:11:\"page_parent\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"88\";}}i:4;a:1:{i:0;a:3:{s:5:\"param\";s:11:\"page_parent\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"102\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Mô tả ngắn', 'mo-ta-ngan', 'publish', 'closed', 'closed', '', 'group_5c135b0914750', '', '', '2018-12-14 07:48:34', '2018-12-14 07:48:34', '', 0, 'http://localhost:8000/Healthcare/source/?post_type=acf-field-group&#038;p=166', 0, 'acf-field-group', '', 0),
(167, 1, '2018-12-14 07:27:23', '2018-12-14 07:27:23', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Nội dung mô tả', 'intro_description', 'publish', 'closed', 'closed', '', 'field_5c135b381f530', '', '', '2018-12-14 07:48:34', '2018-12-14 07:48:34', '', 166, 'http://localhost:8000/Healthcare/source/?post_type=acf-field&#038;p=167', 0, 'acf-field', '', 0),
(168, 1, '2018-12-14 07:27:53', '2018-12-14 07:27:53', '<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-1.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\n<em>Khu điều trị trong ngày</em>\r\n\r\n<em><img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-2.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\nPhòng bệnh điều trị trong ngày</em>\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-3.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\n<em>Các dịch vụ tiện ích tại phòng bệnh</em>\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-4.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\n<em>Khu vực nhà vệ sinh bệnh nhân</em>', 'Giới thiệu phòng khám', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-12-14 07:27:53', '2018-12-14 07:27:53', '', 8, 'http://localhost:8000/Healthcare/source/8-revision-v1/', 0, 'revision', '', 0),
(169, 1, '2018-12-14 07:28:11', '2018-12-14 07:28:11', 'Từ đầu tháng 8/2017 Bệnh viện quận 4 từng bước xây dựng mô hình phòng khám ngoại trú thông minh cho cả khu vực khám Bảo hiểm y tế và khu vực khám Bác sĩ gia đình. Trước đó mô hình phòng khám thông minh của Bệnh Viện Nhân Dân Gia Định đã đoạt giải 2 trong các giải thưởng về cải tiến chất lượng bệnh viện của Sở Y tế TPHCM năm 2016.\r\n\r\nSau hơn 2 tháng tích cực triển khai và đưa vào hoạt động mô hình phòng khám thông minh đã giúp cải tiến thời gian chờ khám của bệnh nhân, tránh được việc chen lấn tại khu vực tiếp nhận bệnh, khu vực thu phí, khu vực lãnh thuốc,  cũng như các bất cập khác trong việc chờ khám tại các buồng khám bệnh.\r\n\r\nHơn nữa việc công khai trên màn hình tất cả thông tin về  tên tuổi bệnh nhân, số thứ tự chờ khám, dự kiến thời gian sẽ được khám, số tiền bệnh nhân sẽ phải đóng, số thứ tự và tên tuổi đến lượt lãnh thuốc sẽ giúp cho phòng khám ngoại trú giữ được không gian yên tĩnh nhất, tránh tiếng loa gọi tên như lúc trước, giúp cho các bệnh nhân và bác sĩ thoải mái hơn, tập trung hơn vào việc thăm khám và hỏi han bệnh nhân.\r\n\r\n<img src=\"http://benhvienquan4.vn/uploads/news/2017_09/pkthongminh_1.jpg\" alt=\"\" />\r\n\r\nVới trên 1000 lượt khám mỗi ngày, Bệnh viện quận 4 hy vọng việc triển khai mô hình này sẽ mang lại sự tiện lợi nhất cho bệnh nhân đến khám và điều trị tại Bệnh Viện Quận 4. Trong thời gian tới  việc áp dụng mô hình này sẽ được nhân rộng  ra các phân hệ khám ngoại trú khác và cận lâm sàng để hy vọng phục vụ bà con ngày một tốt hơn.\r\n\r\n<img src=\"http://benhvienquan4.vn/uploads/news/2017_09/pkthongminh_2.jpg\" alt=\"\" />', 'Phòng khám thông minh', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-12-14 07:28:11', '2018-12-14 07:28:11', '', 10, 'http://localhost:8000/Healthcare/source/10-revision-v1/', 0, 'revision', '', 0),
(170, 1, '2018-12-14 07:31:50', '2018-12-14 07:31:50', '<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/1.jpg\" alt=\"\" width=\"863\" height=\"649\" />\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/2.jpg\" alt=\"\" width=\"862\" height=\"649\" />\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/3.jpg\" alt=\"\" width=\"858\" height=\"649\" />\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/4.jpg\" alt=\"\" width=\"861\" height=\"648\" />\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/5.jpg\" alt=\"\" width=\"864\" height=\"647\" />\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/6.jpg\" alt=\"\" width=\"864\" height=\"650\" />', 'Qui trình khám', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-12-14 07:31:50', '2018-12-14 07:31:50', '', 12, 'http://localhost:8000/Healthcare/source/12-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2018-12-14 07:41:44', '2018-12-14 07:41:44', '', '[:vi]Giới thiệu[:en]Introduction[:]', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-12-14 07:41:44', '2018-12-14 07:41:44', '', 6, 'http://localhost:8000/Healthcare/source/6-revision-v1/', 0, 'revision', '', 0),
(172, 1, '2018-12-14 07:43:24', '2018-12-14 07:43:24', '[:vi]<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-1.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\n<em>Khu điều trị trong ngày</em>\r\n\r\n<em><img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-2.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\nPhòng bệnh điều trị trong ngày</em>\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-3.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\n<em>Các dịch vụ tiện ích tại phòng bệnh</em>\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-4.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\n<em>Khu vực nhà vệ sinh bệnh nhân</em>[:en]<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-1.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\nDay treatment area\r\n\r\n<em><img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-2.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\nDisease treatment during the day\r\n</em>\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-3.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\nServices in the ward\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-4.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\nPatient toilet area[:]', '[:vi]Giới thiệu phòng khám[:en]About the clinic[:]', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-12-14 07:43:24', '2018-12-14 07:43:24', '', 8, 'http://localhost:8000/Healthcare/source/8-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2018-12-14 08:16:22', '2018-12-14 08:16:22', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-header\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', '[:vi]Logo[:]', 'logo', 'publish', 'closed', 'closed', '', 'group_5c13668b0b6c8', '', '', '2018-12-14 08:16:23', '2018-12-14 08:16:23', '', 0, 'http://localhost:8000/Healthcare/source/?post_type=acf-field-group&#038;p=173', 0, 'acf-field-group', '', 0),
(174, 1, '2018-12-14 08:16:22', '2018-12-14 08:16:22', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Header logo', 'header_logo', 'publish', 'closed', 'closed', '', 'field_5c13669b3a947', '', '', '2018-12-14 08:16:22', '2018-12-14 08:16:22', '', 173, 'http://localhost:8000/Healthcare/source/?post_type=acf-field&p=174', 0, 'acf-field', '', 0),
(175, 1, '2018-12-14 08:16:48', '2018-12-14 08:16:48', '', 'Logo_PNT', '', 'inherit', 'open', 'closed', '', 'logo_pnt', '', '', '2018-12-14 08:16:48', '2018-12-14 08:16:48', '', 0, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/Logo_PNT.png', 0, 'attachment', 'image/png', 0),
(176, 1, '2018-12-17 03:00:14', '2018-12-17 03:00:14', '[:vi]<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-1.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\n<em>Khu điều trị trong ngày</em>\r\n\r\n<em><img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-2.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\nPhòng bệnh điều trị trong ngày</em>\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-3.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\n<em>Các dịch vụ tiện ích tại phòng bệnh</em>\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-4.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\n<em>Khu vực nhà vệ sinh bệnh nhân</em>[:en]<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-1.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\nDay treatment area\r\n\r\n<em><img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-2.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\nDisease treatment during the day\r\n</em>\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-3.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\nServices in the ward\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/THU-VIEN-HINH-ANH/Dieu-tri-trong-ngay/dieu-tri-trong-ngay-4.jpg\" alt=\"\" width=\"900\" height=\"675\" />\r\nPatient toilet area[:]', '[:vi]Giới thiệu phòng khám[:en]About the clinic[:]', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-12-17 03:00:14', '2018-12-17 03:00:14', '', 8, 'http://localhost:8000/Healthcare/source/8-revision-v1/', 0, 'revision', '', 0),
(177, 1, '2018-12-17 03:00:35', '2018-12-17 03:00:35', 'Từ đầu tháng 8/2017 Bệnh viện quận 4 từng bước xây dựng mô hình phòng khám ngoại trú thông minh cho cả khu vực khám Bảo hiểm y tế và khu vực khám Bác sĩ gia đình. Trước đó mô hình phòng khám thông minh của Bệnh Viện Nhân Dân Gia Định đã đoạt giải 2 trong các giải thưởng về cải tiến chất lượng bệnh viện của Sở Y tế TPHCM năm 2016.\r\n\r\nSau hơn 2 tháng tích cực triển khai và đưa vào hoạt động mô hình phòng khám thông minh đã giúp cải tiến thời gian chờ khám của bệnh nhân, tránh được việc chen lấn tại khu vực tiếp nhận bệnh, khu vực thu phí, khu vực lãnh thuốc,  cũng như các bất cập khác trong việc chờ khám tại các buồng khám bệnh.\r\n\r\nHơn nữa việc công khai trên màn hình tất cả thông tin về  tên tuổi bệnh nhân, số thứ tự chờ khám, dự kiến thời gian sẽ được khám, số tiền bệnh nhân sẽ phải đóng, số thứ tự và tên tuổi đến lượt lãnh thuốc sẽ giúp cho phòng khám ngoại trú giữ được không gian yên tĩnh nhất, tránh tiếng loa gọi tên như lúc trước, giúp cho các bệnh nhân và bác sĩ thoải mái hơn, tập trung hơn vào việc thăm khám và hỏi han bệnh nhân.\r\n\r\n<img src=\"http://benhvienquan4.vn/uploads/news/2017_09/pkthongminh_1.jpg\" alt=\"\" />\r\n\r\nVới trên 1000 lượt khám mỗi ngày, Bệnh viện quận 4 hy vọng việc triển khai mô hình này sẽ mang lại sự tiện lợi nhất cho bệnh nhân đến khám và điều trị tại Bệnh Viện Quận 4. Trong thời gian tới  việc áp dụng mô hình này sẽ được nhân rộng  ra các phân hệ khám ngoại trú khác và cận lâm sàng để hy vọng phục vụ bà con ngày một tốt hơn.\r\n\r\n<img src=\"http://benhvienquan4.vn/uploads/news/2017_09/pkthongminh_2.jpg\" alt=\"\" />', 'Phòng khám thông minh', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-12-17 03:00:35', '2018-12-17 03:00:35', '', 10, 'http://localhost:8000/Healthcare/source/10-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2018-12-17 03:38:24', '2018-12-17 03:38:24', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"category\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Ảnh đại diện cho khoa', 'anh-dai-dien-cho-khoa', 'publish', 'closed', 'closed', '', 'group_5c17199d60df2', '', '', '2019-01-04 02:09:54', '2019-01-04 02:09:54', '', 0, 'http://localhost:8000/Healthcare/source/?post_type=acf-field-group&#038;p=179', 0, 'acf-field-group', '', 0),
(180, 1, '2018-12-17 03:38:24', '2018-12-17 03:38:24', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Hình ảnh', 'departments_image', 'publish', 'closed', 'closed', '', 'field_5c1719b98374b', '', '', '2018-12-17 07:34:36', '2018-12-17 07:34:36', '', 179, 'http://localhost:8000/Healthcare/source/?post_type=acf-field&#038;p=180', 0, 'acf-field', '', 0),
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
(192, 1, '2018-12-17 07:33:40', '2018-12-17 07:33:40', '[:vi]<ul>\r\n 	<li>\r\n<div class=\"collapsible-container collapsible-block expanded screen-lg\">\r\n<div class=\"collapsible-header\">\r\n<div class=\"collapse-trigger\">\r\n<div><strong>Đại hội thi đua yêu nước lần 5</strong> giai đoạn 2005 – 2010, được Ủy ban nhân dân TP HCM tổ chức trọng thể tại Nhà hát Hòa Bình ngày 14/6/2010. Hơn 800 tập thể và cá nhân điển hình, đã được Hội đồng thi đua khen thưởng thành phố  tuyên dương vì những đóng góp xuất sắc cho phong trào thi đua yêu nước, bám sát thực tế và mang lại hiệu quả kinh tế - xã hội rất to lớn cho TP Hồ Chí Minh nói riêng.</div>\r\n<table align=\"right\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"contentImagecenter\">\r\n\r\n<img class=\"contentImage\" src=\"https://tudu.com.vn/data/2010/06/17/08213950_IMG_0023.jpg\" />\r\n<div class=\"contentImageDescription\"></div>\r\n</div>\r\n<div><span style=\"font-size: xx-small;\">BS. CKII Phạm Việt Thanh\r\n</span></div>\r\n<div><span style=\"font-size: xx-small;\">Giám đốc BV Từ Dũ</span></div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\nTrong bối cảnh ngành y tế nói chung chịu sự tác động mạnh mẽ của nền kinh tế thị trường thời hội nhập. Tinh thần dám nghĩ, dám làm, mạnh dạn thực hiện Nghị định 43/NĐ-CP về <em>quyền tự chủ, tự chịu trách nhiệm về thực hiện nhiệm vụ, tổ chức bộ máy biên chế và tài chính đối với đơn vị sự nghiệp công lập</em> thông qua việc thực hiện xã hội hóa để phát triển Bệnh viện Từ Dũ thành Bệnh viện Sản - Nhi hiện đại 1.200 giường. Mở rộng mối quan hệ hợp tác về đào tạo với các tổ chức y tế quốc tế và các viện - trường đại học y khoa tại các nước Pháp, Anh, Úc, Nhật Bản, Singapore, Hàn Quốc, Thái Lan, …  nhằm nâng cao trình độ chuyên môn và kỹ năng điều trị lâm sàng cho đội ngũ cán bộ y tế, đáp ứng nhu cầu khám chữa bệnh ngày càng đa dạng của người dân, giữ vững thương hiệu bệnh viện Từ Dũ; Thực hiện tốt nhiệm vụ hỗ trợ chuyên môn và chuyển giao kỹ thuật cho các tuyến y tế cơ sở; nâng cao thu nhập và ổn định đời sống  cho cán bộ công chức – viên chức của bệnh viện… Đó là những tiền đề quan trọng giúp Bác sĩ CKII. Phạm Việt Thanh – Thầy thuốc nhân dân, Giám đốc Bệnh viện Từ Dũ<strong> </strong>vinh dự là 1/18 điển hình tiên tiến của TP Hồ Chí Minh được Hội đồng thi đua khen thưởng TP bầu chọn trong số hàng nghìn cán bộ - công nhân viên chức ngành y tế của gần 100 đơn vị, cơ sở khám chữa bệnh cùng các công ty dược – trong thiết bị y tế công lập và tư nhân trên địa bàn thành phố.\r\n\r\n</div>\r\n</div>\r\n</div></li>\r\n</ul>[:en]<div class=\"collapsible-container collapsible-block expanded screen-lg\">\r\n<div class=\"collapsible-header\">\r\n<div class=\"collapse-trigger\"><i class=\"fa fa-fw fa-briefcase\" aria-hidden=\"true\"></i>The 5th National Patriotic Emulation Congress 2005 - 2010 was organized by Ho Chi Minh City People\'s Committee at Hoa Binh Theater on 14/6/2010. More than 800 collectives and individuals have been praised by the City Emulation Council for their outstanding contributions to the patriotic emulation movement, keeping abreast of reality and bringing about socio-economic benefits. Very big for Ho Chi Minh City in particular.\r\n\r\nBS. CKII Pham Viet Thanh\r\nDirector of Tu Du Hospital\r\nIn the context of the health sector in general is strongly influenced by the market economy in the integration period. The spirit of dare to think, dare to do, boldly implement Decree No. 43 / ND-CP on autonomy and self-responsibility on the performance of tasks, organization of staffing and financial institutions for public service units Established through the socialization to develop Tu Du Hospital into a modern-obstetrics-children hospital with 1,200 beds. Expanding the cooperation on training with international health organizations and institutes of medical universities in France, England, Australia, Japan, Singapore, Korea, Thailand, etc. High level of professional and clinical skills for medical staff, meeting the needs of increasingly diverse medical examination and treatment of people, maintaining the brand name hospital Tu Du; To well perform the task of professional support and technical transfer for grassroots medical establishments; improve the income and stabilize the life for civil servants - staff of the hospital ... That is the important premise to help doctors CKII. Pham Viet Thanh - People\'s Doctor, Director of Tu Du Hospital was honored to be one of the 18 most advanced models of Ho Chi Minh City, voted by the Council of Emulation and Commendation of the thousands of cadres and employees. the health care sector of nearly 100 units, medical facilities and pharmaceutical companies - in public and private medical equipment in the city.\r\n\r\n</div>\r\n</div>\r\n</div>[:]', 'TS. BS. Phạm Việt Thanh', '', 'publish', 'open', 'open', '', 'english-ts-bs-pham-viet-thanh', '', '', '2018-12-20 07:37:24', '2018-12-20 07:37:24', '', 0, 'http://localhost:8000/Healthcare/source/?p=192', 4, 'post', '', 0),
(193, 1, '2018-12-17 07:32:41', '2018-12-17 07:32:41', '', 'bs viet thanh web', '', 'inherit', 'open', 'closed', '', 'bs-viet-thanh-web', '', '', '2018-12-17 07:32:41', '2018-12-17 07:32:41', '', 192, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/bs-viet-thanh-web.jpg', 0, 'attachment', 'image/jpeg', 0),
(194, 1, '2018-12-17 07:33:40', '2018-12-17 07:33:40', '[:en]<ul>\r\n 	<li>\r\n<div class=\"collapsible-container collapsible-block expanded screen-lg\">\r\n<div class=\"collapsible-header\">\r\n<div class=\"collapse-trigger\"><i class=\"fa fa-fw fa-briefcase\" aria-hidden=\"true\"></i> CHỨC VỤ</div>\r\n</div>\r\n<div class=\"collapsible-target text-bold\">\r\n<ul>\r\n 	<li>Bác sĩ tại phòng khám Sản Phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n 	<li>Bác sĩ tại phòng khám Nhi đồng Thành phố Hồ Chí Minh</li>\r\n 	<li>Nguyên giám đốc Bệnh viện Từ Dũ</li>\r\n 	<li>Chủ nhiệm bộ môn Sản Phụ khoa – Đại học Y Phạm Ngọc Thạch</li>\r\n 	<li>Nguyên giám đốc Sở Y tế Thành phố Hồ Chí Minh</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"collapsible-container collapsible-block expanded screen-lg\">\r\n<div class=\"collapsible-header\">\r\n<div class=\"collapse-trigger\"><i class=\"fa fa-fw fa-hospital-o\" aria-hidden=\"true\"></i> NƠI CÔNG TÁC</div>\r\n</div>\r\n<div class=\"collapsible-target has-images text-bold\">\r\n<ul class=\"list-unstyled\">\r\n 	<li>Phòng khám Sản Phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n 	<li>Phòng khám Nhi đồng Thành phố - 31 Lý Tự Trọng</li>\r\n 	<li>Phòng khám Sản phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"collapsible-container collapsible-block expanded screen-lg\">\r\n<div class=\"collapsible-header\">\r\n<div class=\"collapse-trigger\"><i class=\"fa fa-fw fa-book\" aria-hidden=\"true\"></i> KINH NGHIỆM</div>\r\n</div>\r\n<div class=\"collapsible-target text-bold\">\r\n<ul>\r\n 	<li>Phòng khám Sản Phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n 	<li>Phòng khám Nhi đồng Thành phố Hồ Chí Minh</li>\r\n 	<li>Bệnh viện Từ Dũ</li>\r\n 	<li>Bộ môn Sản Phụ khoa – Đại học Y Phạm Ngọc Thạch</li>\r\n 	<li>Sở Y tế Thành phố Hồ Chí Minh</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"collapsible-container collapsible-block expanded screen-lg\">\r\n<div class=\"collapsible-header\">\r\n<div class=\"collapse-trigger\"><i class=\"fa fa-fw fa-trophy\" aria-hidden=\"true\"></i> GIẢI THƯỞNG VÀ GHI NHẬN</div>\r\n</div>\r\n<div class=\"collapsible-target text-bold\">\r\n<ul>\r\n 	<li>Danh hiệu Thầy thuốc nhân dân</li>\r\n</ul>\r\n</div>\r\n</div></li>\r\n</ul>[:]', '[:en]TS. BS. Phạm Việt Thanh[:]', '', 'inherit', 'closed', 'closed', '', '192-revision-v1', '', '', '2018-12-17 07:33:40', '2018-12-17 07:33:40', '', 192, 'http://localhost:8000/Healthcare/source/192-revision-v1/', 0, 'revision', '', 0),
(195, 1, '2018-12-17 07:37:44', '2018-12-17 07:37:44', '', 'Pediatrics', '', 'inherit', 'open', 'closed', '', 'pediatrics-2', '', '', '2018-12-17 07:37:47', '2018-12-17 07:37:47', '', 0, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/Pediatrics-1.png', 0, 'attachment', 'image/png', 0),
(196, 1, '2018-12-17 07:39:33', '2018-12-17 07:39:33', '', 'Nephrology', '', 'inherit', 'open', 'closed', '', 'nephrology', '', '', '2018-12-17 07:39:34', '2018-12-17 07:39:34', '', 0, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/Nephrology.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(197, 1, '2018-12-17 07:41:18', '2018-12-17 07:41:18', '', '[:vi]TS. BS. Tạ Thị Thanh Thủy[:]', '', 'publish', 'open', 'open', '', 'ts-bs-ta-thi-thanh-thuy', '', '', '2018-12-17 07:41:18', '2018-12-17 07:41:18', '', 0, 'http://localhost:8000/Healthcare/source/?p=197', 2, 'post', '', 0),
(198, 1, '2018-12-17 07:41:14', '2018-12-17 07:41:14', '', 'ta-thi-thanh-thuy', '', 'inherit', 'open', 'closed', '', 'ta-thi-thanh-thuy', '', '', '2018-12-17 07:41:14', '2018-12-17 07:41:14', '', 197, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/ta-thi-thanh-thuy.png', 0, 'attachment', 'image/png', 0),
(199, 1, '2018-12-17 07:41:18', '2018-12-17 07:41:18', '', '[:vi]TS. BS. Tạ Thị Thanh Thủy[:]', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2018-12-17 07:41:18', '2018-12-17 07:41:18', '', 197, 'http://localhost:8000/Healthcare/source/197-revision-v1/', 0, 'revision', '', 0),
(200, 1, '2018-12-17 07:41:52', '2018-12-17 07:41:52', '', '[:vi]BS. CKI. Nguyễn Bích Hải[:]', '', 'publish', 'open', 'open', '', 'bs-cki-nguyen-bich-hai', '', '', '2018-12-18 07:58:46', '2018-12-18 07:58:46', '', 0, 'http://localhost:8000/Healthcare/source/?p=200', 3, 'post', '', 0),
(201, 1, '2018-12-17 07:41:48', '2018-12-17 07:41:48', '', 'hinh-the-bac-hai', '', 'inherit', 'open', 'closed', '', 'hinh-the-bac-hai', '', '', '2018-12-17 07:41:48', '2018-12-17 07:41:48', '', 200, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/hinh-the-bac-hai.jpg', 0, 'attachment', 'image/jpeg', 0),
(202, 1, '2018-12-17 07:41:52', '2018-12-17 07:41:52', '', '[:vi]BS. CKI. Nguyễn Bích Hải[:]', '', 'inherit', 'closed', 'closed', '', '200-revision-v1', '', '', '2018-12-17 07:41:52', '2018-12-17 07:41:52', '', 200, 'http://localhost:8000/Healthcare/source/200-revision-v1/', 0, 'revision', '', 0),
(203, 1, '2018-12-17 07:57:43', '2018-12-17 07:57:43', '[:vi]<ul>\r\n 	<li>\r\n<div class=\"collapsible-container collapsible-block expanded screen-lg\">\r\n<div class=\"collapsible-header\">\r\n<div class=\"collapse-trigger\"> CHỨC VỤ</div>\r\n</div>\r\n<div class=\"collapsible-target text-bold\">\r\n<ul>\r\n 	<li>Bác sĩ tại phòng khám Sản Phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n 	<li>Bác sĩ tại phòng khám Nhi đồng Thành phố Hồ Chí Minh</li>\r\n 	<li>Nguyên giám đốc Bệnh viện Từ Dũ</li>\r\n 	<li>Chủ nhiệm bộ môn Sản Phụ khoa – Đại học Y Phạm Ngọc Thạch</li>\r\n 	<li>Nguyên giám đốc Sở Y tế Thành phố Hồ Chí Minh</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"collapsible-container collapsible-block expanded screen-lg\">\r\n<div class=\"collapsible-header\">\r\n<div class=\"collapse-trigger\"><i class=\"fa fa-fw fa-hospital-o\" aria-hidden=\"true\"></i> NƠI CÔNG TÁC</div>\r\n</div>\r\n<div class=\"collapsible-target has-images text-bold\">\r\n<ul class=\"list-unstyled\">\r\n 	<li>Phòng khám Sản Phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n 	<li>Phòng khám Nhi đồng Thành phố - 31 Lý Tự Trọng</li>\r\n 	<li>Phòng khám Sản phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"collapsible-container collapsible-block expanded screen-lg\">\r\n<div class=\"collapsible-header\">\r\n<div class=\"collapse-trigger\"><i class=\"fa fa-fw fa-book\" aria-hidden=\"true\"></i> KINH NGHIỆM</div>\r\n</div>\r\n<div class=\"collapsible-target text-bold\">\r\n<ul>\r\n 	<li>Phòng khám Sản Phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n 	<li>Phòng khám Nhi đồng Thành phố Hồ Chí Minh</li>\r\n 	<li>Bệnh viện Từ Dũ</li>\r\n 	<li>Bộ môn Sản Phụ khoa – Đại học Y Phạm Ngọc Thạch</li>\r\n 	<li>Sở Y tế Thành phố Hồ Chí Minh</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"collapsible-container collapsible-block expanded screen-lg\">\r\n<div class=\"collapsible-header\">\r\n<div class=\"collapse-trigger\"><i class=\"fa fa-fw fa-trophy\" aria-hidden=\"true\"></i> GIẢI THƯỞNG VÀ GHI NHẬN</div>\r\n</div>\r\n<div class=\"collapsible-target text-bold\">\r\n<ul>\r\n 	<li>Danh hiệu Thầy thuốc nhân dân</li>\r\n</ul>\r\n</div>\r\n</div></li>\r\n</ul>[:en]<ul>\r\n 	<li>\r\n<div class=\"collapsible-container collapsible-block expanded screen-lg\">\r\n<div class=\"collapsible-header\">\r\n<div class=\"collapse-trigger\"><i class=\"fa fa-fw fa-briefcase\" aria-hidden=\"true\"></i> CHỨC VỤ</div>\r\n</div>\r\n<div class=\"collapsible-target text-bold\">\r\n<ul>\r\n 	<li>Bác sĩ tại phòng khám Sản Phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n 	<li>Bác sĩ tại phòng khám Nhi đồng Thành phố Hồ Chí Minh</li>\r\n 	<li>Nguyên giám đốc Bệnh viện Từ Dũ</li>\r\n 	<li>Chủ nhiệm bộ môn Sản Phụ khoa – Đại học Y Phạm Ngọc Thạch</li>\r\n 	<li>Nguyên giám đốc Sở Y tế Thành phố Hồ Chí Minh</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"collapsible-container collapsible-block expanded screen-lg\">\r\n<div class=\"collapsible-header\">\r\n<div class=\"collapse-trigger\"><i class=\"fa fa-fw fa-hospital-o\" aria-hidden=\"true\"></i> NƠI CÔNG TÁC</div>\r\n</div>\r\n<div class=\"collapsible-target has-images text-bold\">\r\n<ul class=\"list-unstyled\">\r\n 	<li>Phòng khám Sản Phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n 	<li>Phòng khám Nhi đồng Thành phố - 31 Lý Tự Trọng</li>\r\n 	<li>Phòng khám Sản phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"collapsible-container collapsible-block expanded screen-lg\">\r\n<div class=\"collapsible-header\">\r\n<div class=\"collapse-trigger\"><i class=\"fa fa-fw fa-book\" aria-hidden=\"true\"></i> KINH NGHIỆM</div>\r\n</div>\r\n<div class=\"collapsible-target text-bold\">\r\n<ul>\r\n 	<li>Phòng khám Sản Phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n 	<li>Phòng khám Nhi đồng Thành phố Hồ Chí Minh</li>\r\n 	<li>Bệnh viện Từ Dũ</li>\r\n 	<li>Bộ môn Sản Phụ khoa – Đại học Y Phạm Ngọc Thạch</li>\r\n 	<li>Sở Y tế Thành phố Hồ Chí Minh</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"collapsible-container collapsible-block expanded screen-lg\">\r\n<div class=\"collapsible-header\">\r\n<div class=\"collapse-trigger\"><i class=\"fa fa-fw fa-trophy\" aria-hidden=\"true\"></i> GIẢI THƯỞNG VÀ GHI NHẬN</div>\r\n</div>\r\n<div class=\"collapsible-target text-bold\">\r\n<ul>\r\n 	<li>Danh hiệu Thầy thuốc nhân dân</li>\r\n</ul>\r\n</div>\r\n</div></li>\r\n</ul>[:]', 'TS. BS. Phạm Việt Thanh', '', 'inherit', 'closed', 'closed', '', '192-revision-v1', '', '', '2018-12-17 07:57:43', '2018-12-17 07:57:43', '', 192, 'http://localhost:8000/Healthcare/source/192-revision-v1/', 0, 'revision', '', 0),
(204, 1, '2018-12-17 08:00:35', '2018-12-17 08:00:35', '[:vi]<ul>\r\n 	<li>\r\n<div class=\"collapsible-container collapsible-block expanded screen-lg\">\r\n<div class=\"collapsible-header\">\r\n<div class=\"collapse-trigger\">\r\n<div><strong>Đại hội thi đua yêu nước lần 5</strong> giai đoạn 2005 – 2010, được Ủy ban nhân dân TP HCM tổ chức trọng thể tại Nhà hát Hòa Bình ngày 14/6/2010. Hơn 800 tập thể và cá nhân điển hình, đã được Hội đồng thi đua khen thưởng thành phố  tuyên dương vì những đóng góp xuất sắc cho phong trào thi đua yêu nước, bám sát thực tế và mang lại hiệu quả kinh tế - xã hội rất to lớn cho TP Hồ Chí Minh nói riêng.</div>\r\n<table align=\"right\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"contentImagecenter\"><img class=\"contentImage\" src=\"https://tudu.com.vn/data/2010/06/17/08213950_IMG_0023.jpg\" />\r\n<div class=\"contentImageDescription\"></div>\r\n</div>\r\n<div><span style=\"font-size: xx-small;\">BS. CKII Phạm Việt Thanh\r\n</span></div>\r\n<div><span style=\"font-size: xx-small;\">Giám đốc BV Từ Dũ</span></div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\nTrong bối cảnh ngành y tế nói chung chịu sự tác động mạnh mẽ của nền kinh tế thị trường thời hội nhập. Tinh thần dám nghĩ, dám làm, mạnh dạn thực hiện Nghị định 43/NĐ-CP về <em>quyền tự chủ, tự chịu trách nhiệm về thực hiện nhiệm vụ, tổ chức bộ máy biên chế và tài chính đối với đơn vị sự nghiệp công lập</em> thông qua việc thực hiện xã hội hóa để phát triển Bệnh viện Từ Dũ thành Bệnh viện Sản - Nhi hiện đại 1.200 giường. Mở rộng mối quan hệ hợp tác về đào tạo với các tổ chức y tế quốc tế và các viện - trường đại học y khoa tại các nước Pháp, Anh, Úc, Nhật Bản, Singapore, Hàn Quốc, Thái Lan, …  nhằm nâng cao trình độ chuyên môn và kỹ năng điều trị lâm sàng cho đội ngũ cán bộ y tế, đáp ứng nhu cầu khám chữa bệnh ngày càng đa dạng của người dân, giữ vững thương hiệu bệnh viện Từ Dũ; Thực hiện tốt nhiệm vụ hỗ trợ chuyên môn và chuyển giao kỹ thuật cho các tuyến y tế cơ sở; nâng cao thu nhập và ổn định đời sống  cho cán bộ công chức – viên chức của bệnh viện… Đó là những tiền đề quan trọng giúp Bác sĩ CKII. Phạm Việt Thanh – Thầy thuốc nhân dân, Giám đốc Bệnh viện Từ Dũ<strong> </strong>vinh dự là 1/18 điển hình tiên tiến của TP Hồ Chí Minh được Hội đồng thi đua khen thưởng TP bầu chọn trong số hàng nghìn cán bộ - công nhân viên chức ngành y tế của gần 100 đơn vị, cơ sở khám chữa bệnh cùng các công ty dược – trong thiết bị y tế công lập và tư nhân trên địa bàn thành phố.\r\n\r\n</div>\r\n</div>\r\n</div></li>\r\n</ul>[:en]<ul>\r\n 	<li>\r\n<div class=\"collapsible-container collapsible-block expanded screen-lg\">\r\n<div class=\"collapsible-header\">\r\n<div class=\"collapse-trigger\"><i class=\"fa fa-fw fa-briefcase\" aria-hidden=\"true\"></i> CHỨC VỤ</div>\r\n</div>\r\n<div class=\"collapsible-target text-bold\">\r\n<ul>\r\n 	<li>Bác sĩ tại phòng khám Sản Phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n 	<li>Bác sĩ tại phòng khám Nhi đồng Thành phố Hồ Chí Minh</li>\r\n 	<li>Nguyên giám đốc Bệnh viện Từ Dũ</li>\r\n 	<li>Chủ nhiệm bộ môn Sản Phụ khoa – Đại học Y Phạm Ngọc Thạch</li>\r\n 	<li>Nguyên giám đốc Sở Y tế Thành phố Hồ Chí Minh</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"collapsible-container collapsible-block expanded screen-lg\">\r\n<div class=\"collapsible-header\">\r\n<div class=\"collapse-trigger\"><i class=\"fa fa-fw fa-hospital-o\" aria-hidden=\"true\"></i> NƠI CÔNG TÁC</div>\r\n</div>\r\n<div class=\"collapsible-target has-images text-bold\">\r\n<ul class=\"list-unstyled\">\r\n 	<li>Phòng khám Sản Phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n 	<li>Phòng khám Nhi đồng Thành phố - 31 Lý Tự Trọng</li>\r\n 	<li>Phòng khám Sản phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"collapsible-container collapsible-block expanded screen-lg\">\r\n<div class=\"collapsible-header\">\r\n<div class=\"collapse-trigger\"><i class=\"fa fa-fw fa-book\" aria-hidden=\"true\"></i> KINH NGHIỆM</div>\r\n</div>\r\n<div class=\"collapsible-target text-bold\">\r\n<ul>\r\n 	<li>Phòng khám Sản Phụ khoa - Bác sĩ Phạm Việt Thanh</li>\r\n 	<li>Phòng khám Nhi đồng Thành phố Hồ Chí Minh</li>\r\n 	<li>Bệnh viện Từ Dũ</li>\r\n 	<li>Bộ môn Sản Phụ khoa – Đại học Y Phạm Ngọc Thạch</li>\r\n 	<li>Sở Y tế Thành phố Hồ Chí Minh</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"collapsible-container collapsible-block expanded screen-lg\">\r\n<div class=\"collapsible-header\">\r\n<div class=\"collapse-trigger\"><i class=\"fa fa-fw fa-trophy\" aria-hidden=\"true\"></i> GIẢI THƯỞNG VÀ GHI NHẬN</div>\r\n</div>\r\n<div class=\"collapsible-target text-bold\">\r\n<ul>\r\n 	<li>Danh hiệu Thầy thuốc nhân dân</li>\r\n</ul>\r\n</div>\r\n</div></li>\r\n</ul>[:]', 'TS. BS. Phạm Việt Thanh', '', 'inherit', 'closed', 'closed', '', '192-revision-v1', '', '', '2018-12-17 08:00:35', '2018-12-17 08:00:35', '', 192, 'http://localhost:8000/Healthcare/source/192-revision-v1/', 0, 'revision', '', 0),
(205, 1, '2018-12-17 08:01:02', '2018-12-17 08:01:02', '[:vi]<ul>\r\n 	<li>\r\n<div class=\"collapsible-container collapsible-block expanded screen-lg\">\r\n<div class=\"collapsible-header\">\r\n<div class=\"collapse-trigger\">\r\n<div><strong>Đại hội thi đua yêu nước lần 5</strong> giai đoạn 2005 – 2010, được Ủy ban nhân dân TP HCM tổ chức trọng thể tại Nhà hát Hòa Bình ngày 14/6/2010. Hơn 800 tập thể và cá nhân điển hình, đã được Hội đồng thi đua khen thưởng thành phố  tuyên dương vì những đóng góp xuất sắc cho phong trào thi đua yêu nước, bám sát thực tế và mang lại hiệu quả kinh tế - xã hội rất to lớn cho TP Hồ Chí Minh nói riêng.</div>\r\n<table align=\"right\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"contentImagecenter\">\r\n\r\n<img class=\"contentImage\" src=\"https://tudu.com.vn/data/2010/06/17/08213950_IMG_0023.jpg\" />\r\n<div class=\"contentImageDescription\"></div>\r\n</div>\r\n<div><span style=\"font-size: xx-small;\">BS. CKII Phạm Việt Thanh\r\n</span></div>\r\n<div><span style=\"font-size: xx-small;\">Giám đốc BV Từ Dũ</span></div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\nTrong bối cảnh ngành y tế nói chung chịu sự tác động mạnh mẽ của nền kinh tế thị trường thời hội nhập. Tinh thần dám nghĩ, dám làm, mạnh dạn thực hiện Nghị định 43/NĐ-CP về <em>quyền tự chủ, tự chịu trách nhiệm về thực hiện nhiệm vụ, tổ chức bộ máy biên chế và tài chính đối với đơn vị sự nghiệp công lập</em> thông qua việc thực hiện xã hội hóa để phát triển Bệnh viện Từ Dũ thành Bệnh viện Sản - Nhi hiện đại 1.200 giường. Mở rộng mối quan hệ hợp tác về đào tạo với các tổ chức y tế quốc tế và các viện - trường đại học y khoa tại các nước Pháp, Anh, Úc, Nhật Bản, Singapore, Hàn Quốc, Thái Lan, …  nhằm nâng cao trình độ chuyên môn và kỹ năng điều trị lâm sàng cho đội ngũ cán bộ y tế, đáp ứng nhu cầu khám chữa bệnh ngày càng đa dạng của người dân, giữ vững thương hiệu bệnh viện Từ Dũ; Thực hiện tốt nhiệm vụ hỗ trợ chuyên môn và chuyển giao kỹ thuật cho các tuyến y tế cơ sở; nâng cao thu nhập và ổn định đời sống  cho cán bộ công chức – viên chức của bệnh viện… Đó là những tiền đề quan trọng giúp Bác sĩ CKII. Phạm Việt Thanh – Thầy thuốc nhân dân, Giám đốc Bệnh viện Từ Dũ<strong> </strong>vinh dự là 1/18 điển hình tiên tiến của TP Hồ Chí Minh được Hội đồng thi đua khen thưởng TP bầu chọn trong số hàng nghìn cán bộ - công nhân viên chức ngành y tế của gần 100 đơn vị, cơ sở khám chữa bệnh cùng các công ty dược – trong thiết bị y tế công lập và tư nhân trên địa bàn thành phố.\r\n\r\n</div>\r\n</div>\r\n</div></li>\r\n</ul>[:en]<div class=\"collapsible-container collapsible-block expanded screen-lg\">\r\n<div class=\"collapsible-header\">\r\n<div class=\"collapse-trigger\"><i class=\"fa fa-fw fa-briefcase\" aria-hidden=\"true\"></i>The 5th National Patriotic Emulation Congress 2005 - 2010 was organized by Ho Chi Minh City People\'s Committee at Hoa Binh Theater on 14/6/2010. More than 800 collectives and individuals have been praised by the City Emulation Council for their outstanding contributions to the patriotic emulation movement, keeping abreast of reality and bringing about socio-economic benefits. Very big for Ho Chi Minh City in particular.\r\n\r\nBS. CKII Pham Viet Thanh\r\nDirector of Tu Du Hospital\r\nIn the context of the health sector in general is strongly influenced by the market economy in the integration period. The spirit of dare to think, dare to do, boldly implement Decree No. 43 / ND-CP on autonomy and self-responsibility on the performance of tasks, organization of staffing and financial institutions for public service units Established through the socialization to develop Tu Du Hospital into a modern-obstetrics-children hospital with 1,200 beds. Expanding the cooperation on training with international health organizations and institutes of medical universities in France, England, Australia, Japan, Singapore, Korea, Thailand, etc. High level of professional and clinical skills for medical staff, meeting the needs of increasingly diverse medical examination and treatment of people, maintaining the brand name hospital Tu Du; To well perform the task of professional support and technical transfer for grassroots medical establishments; improve the income and stabilize the life for civil servants - staff of the hospital ... That is the important premise to help doctors CKII. Pham Viet Thanh - People\'s Doctor, Director of Tu Du Hospital was honored to be one of the 18 most advanced models of Ho Chi Minh City, voted by the Council of Emulation and Commendation of the thousands of cadres and employees. the health care sector of nearly 100 units, medical facilities and pharmaceutical companies - in public and private medical equipment in the city.\r\n\r\n</div>\r\n</div>\r\n</div>[:]', 'TS. BS. Phạm Việt Thanh', '', 'inherit', 'closed', 'closed', '', '192-revision-v1', '', '', '2018-12-17 08:01:02', '2018-12-17 08:01:02', '', 192, 'http://localhost:8000/Healthcare/source/192-revision-v1/', 0, 'revision', '', 0),
(208, 1, '2018-12-18 04:02:02', '2018-12-18 04:02:02', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"hinh_anh\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', '[:vi]Hình To Cho LightBox[:en]H[:]', 'hinh-to-cho-lightbox', 'publish', 'closed', 'closed', '', 'group_5c1870ffbb0d9', '', '', '2018-12-18 04:02:02', '2018-12-18 04:02:02', '', 0, 'http://localhost:8000/Healthcare/source/?post_type=acf-field-group&#038;p=208', 0, 'acf-field-group', '', 0),
(209, 1, '2018-12-18 04:02:02', '2018-12-18 04:02:02', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Hình cho lightbox', 'big_image_lightbox', 'publish', 'closed', 'closed', '', 'field_5c18711941931', '', '', '2018-12-18 04:02:02', '2018-12-18 04:02:02', '', 208, 'http://localhost:8000/Healthcare/source/?post_type=acf-field&p=209', 0, 'acf-field', '', 0),
(210, 1, '2018-12-18 04:03:41', '2018-12-18 04:03:41', '', '[:vi]Hình ảnh về không gian bệnh viện[:]', '', 'publish', 'closed', 'closed', '', 'hinh-1', '', '', '2018-12-26 06:49:02', '2018-12-26 06:49:02', '', 0, 'http://localhost:8000/Healthcare/source/?post_type=hinh_anh&#038;p=210', 0, 'hinh_anh', '', 0),
(211, 1, '2018-12-18 04:02:59', '2018-12-18 04:02:59', '', 'image-6', '', 'inherit', 'open', 'closed', '', 'image-6', '', '', '2018-12-18 04:02:59', '2018-12-18 04:02:59', '', 210, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/image-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(212, 1, '2018-12-18 04:03:37', '2018-12-18 04:03:37', '', 'thumb-6', '', 'inherit', 'open', 'closed', '', 'thumb-6', '', '', '2018-12-18 04:03:37', '2018-12-18 04:03:37', '', 210, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/thumb-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(213, 1, '2018-12-18 04:20:46', '2018-12-18 04:20:46', '[:vi]Từ đầu tháng 8/2017 Bệnh viện quận 4 từng bước xây dựng mô hình phòng khám ngoại trú thông minh cho cả khu vực khám Bảo hiểm y tế và khu vực khám Bác sĩ gia đình. Trước đó mô hình phòng khám thông minh của Bệnh Viện Nhân Dân Gia Định đã đoạt giải 2 trong các giải thưởng về cải tiến chất lượng bệnh viện của Sở Y tế TPHCM năm 2016.\r\n\r\nSau hơn 2 tháng tích cực triển khai và đưa vào hoạt động mô hình phòng khám thông minh đã giúp cải tiến thời gian chờ khám của bệnh nhân, tránh được việc chen lấn tại khu vực tiếp nhận bệnh, khu vực thu phí, khu vực lãnh thuốc,  cũng như các bất cập khác trong việc chờ khám tại các buồng khám bệnh.\r\n\r\nHơn nữa việc công khai trên màn hình tất cả thông tin về  tên tuổi bệnh nhân, số thứ tự chờ khám, dự kiến thời gian sẽ được khám, số tiền bệnh nhân sẽ phải đóng, số thứ tự và tên tuổi đến lượt lãnh thuốc sẽ giúp cho phòng khám ngoại trú giữ được không gian yên tĩnh nhất, tránh tiếng loa gọi tên như lúc trước, giúp cho các bệnh nhân và bác sĩ thoải mái hơn, tập trung hơn vào việc thăm khám và hỏi han bệnh nhân.\r\n\r\n<img src=\"http://benhvienquan4.vn/uploads/news/2017_09/pkthongminh_1.jpg\" alt=\"\" />\r\n\r\nVới trên 1000 lượt khám mỗi ngày, Bệnh viện quận 4 hy vọng việc triển khai mô hình này sẽ mang lại sự tiện lợi nhất cho bệnh nhân đến khám và điều trị tại Bệnh Viện Quận 4. Trong thời gian tới  việc áp dụng mô hình này sẽ được nhân rộng  ra các phân hệ khám ngoại trú khác và cận lâm sàng để hy vọng phục vụ bà con ngày một tốt hơn.\r\n\r\n<img src=\"http://benhvienquan4.vn/uploads/news/2017_09/pkthongminh_2.jpg\" alt=\"\" />[:en]From the beginning of 8/2017, District 4 Hospital has step by step build up a smart outpatient clinic for both the medical examination area and the GP area. Previously, the Gia Dinh People\'s Hospital\'s intelligent clinic model won the second prize in the hospital quality improvement award of the HCM City Health Department in 2016.\r\n\r\nAfter more than two months of active deployment and implementation of the intelligent clinic model has helped improve patient waiting time, avoid the squeeze in the receiving area, the charge area as well as other inadequacies in waiting for examination in the clinic.\r\n\r\nIn addition, the publicity on the screen of all information about the patient\'s name, wait order number, estimated time will be examined, the amount of patients will have to close, the number and name come to the drug. It will help the outpatient clinic to keep the quietest space, to avoid the loudspeaker\'s name as before, to help patients and doctors more comfortable, focus more on the examination and consultation patients.\r\n\r\n<img src=\"http://benhvienquan4.vn/uploads/news/2017_09/pkthongminh_1.jpg\" alt=\"\" />\r\n\r\nWith over 1000 visits per day, District 4 Hospital expects the implementation of this model will bring the most convenience for patients to see and treatment in District 4 Hospital. In the coming time the application of the model This will be expanded to other outpatient and subclinical subgroups to hopefully serve people better.\r\n\r\n<img src=\"http://benhvienquan4.vn/uploads/news/2017_09/pkthongminh_2.jpg\" alt=\"\" />[:]', '[:vi]Phòng khám thông minh[:en]Smart Clinic[:]', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-12-18 04:20:46', '2018-12-18 04:20:46', '', 10, 'http://localhost:8000/Healthcare/source/10-revision-v1/', 0, 'revision', '', 0),
(214, 1, '2018-12-18 04:21:26', '2018-12-18 04:21:26', '<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/1.jpg\" alt=\"\" width=\"863\" height=\"649\" />\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/2.jpg\" alt=\"\" width=\"862\" height=\"649\" />\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/3.jpg\" alt=\"\" width=\"858\" height=\"649\" />\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/4.jpg\" alt=\"\" width=\"861\" height=\"648\" />\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/5.jpg\" alt=\"\" width=\"864\" height=\"647\" />\r\n\r\n<img src=\"http://cms.bvpnt.org.vn/Assets/Media/Uploads/Huong-dan/6.jpg\" alt=\"\" width=\"864\" height=\"650\" />', '[:vi]Quy trình khám[:en]Examination procedure[:]', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-12-18 04:21:26', '2018-12-18 04:21:26', '', 12, 'http://localhost:8000/Healthcare/source/12-revision-v1/', 0, 'revision', '', 0),
(215, 1, '2018-12-18 04:25:26', '2018-12-18 04:25:26', '[:vi]<h4>Dịch vụ cung cấp</h4>\r\nGiải pháp toàn diện<br/>\r\nGiải pháp quản lý bệnh viện toàn diện với<br/>\r\ncác hệ thống liên thông, đảm nhận vai trò rõ ràng.<br/>\r\nKhả năng nâng cấp, mở rộng dễ dàng.<br/><br/>\r\n\r\nĐội ngũ triển khai chuyên nghiệp, hỗ trợ sau triển khai 24/7,<br/>\r\nluôn lắng nghe và giải đáp mọi thắc mắc của khách hàng.[:]', '[:vi]Các Dịch Vụ[:]', '', 'publish', 'closed', 'closed', '', 'cac-dich-vu', '', '', '2018-12-25 06:05:19', '2018-12-25 06:05:19', '', 0, 'http://localhost:8000/Healthcare/source/?page_id=215', 0, 'page', '', 0),
(216, 1, '2018-12-18 04:25:26', '2018-12-18 04:25:26', '', '[:vi]Các Dịch Vụ[:]', '', 'inherit', 'closed', 'closed', '', '215-revision-v1', '', '', '2018-12-18 04:25:26', '2018-12-18 04:25:26', '', 215, 'http://localhost:8000/Healthcare/source/215-revision-v1/', 0, 'revision', '', 0),
(217, 1, '2018-12-18 04:25:45', '2018-12-18 04:25:45', '[:vi]Đặt lịch hẹn và chọn bác sỹ theo thời gian của bạn[:]', '[:vi]Đặt hẹn[:]', '', 'publish', 'closed', 'closed', '', 'dat-hen', '', '', '2018-12-18 04:29:40', '2018-12-18 04:29:40', '', 215, 'http://localhost:8000/Healthcare/source/?page_id=217', 0, 'page', '', 0),
(218, 1, '2018-12-18 04:25:45', '2018-12-18 04:25:45', '', '[:vi]Đặt hẹn[:]', '', 'inherit', 'closed', 'closed', '', '217-revision-v1', '', '', '2018-12-18 04:25:45', '2018-12-18 04:25:45', '', 217, 'http://localhost:8000/Healthcare/source/217-revision-v1/', 0, 'revision', '', 0),
(219, 1, '2018-12-18 04:25:59', '2018-12-18 04:25:59', '[:vi]Xem lịch khám trong tháng\r\n\r\n<iframe src=\"https://drive.google.com/file/d/1sM_HJR2f2GKQUI-Z68bILXxWwn8UH4IJ/preview\" width=\"100%\" height=\"680\"></iframe>[:]', '[:vi]Lịch khám[:]', '', 'publish', 'closed', 'closed', '', 'lich-kham', '', '', '2018-12-18 07:01:53', '2018-12-18 07:01:53', '', 215, 'http://localhost:8000/Healthcare/source/?page_id=219', 0, 'page', '', 0),
(220, 1, '2018-12-18 04:25:59', '2018-12-18 04:25:59', '', '[:vi]Lịch khám[:]', '', 'inherit', 'closed', 'closed', '', '219-revision-v1', '', '', '2018-12-18 04:25:59', '2018-12-18 04:25:59', '', 219, 'http://localhost:8000/Healthcare/source/219-revision-v1/', 0, 'revision', '', 0),
(221, 1, '2018-12-18 04:26:14', '2018-12-18 04:26:14', '[:vi]Đăng ký thẻ thành viên để khám chữa bênh nhanh hơn[:]', '[:vi]Thẻ thành viên[:]', '', 'publish', 'closed', 'closed', '', 'the-thanh-vien', '', '', '2018-12-18 04:33:25', '2018-12-18 04:33:25', '', 215, 'http://localhost:8000/Healthcare/source/?page_id=221', 0, 'page', '', 0),
(222, 1, '2018-12-18 04:26:14', '2018-12-18 04:26:14', '', '[:vi]Thẻ thành viên[:]', '', 'inherit', 'closed', 'closed', '', '221-revision-v1', '', '', '2018-12-18 04:26:14', '2018-12-18 04:26:14', '', 221, 'http://localhost:8000/Healthcare/source/221-revision-v1/', 0, 'revision', '', 0),
(223, 1, '2018-12-18 04:27:19', '2018-12-18 04:27:19', '[:vi]Khám phát hiện, quản lý điều trị: bệnh phổi không lao, Lao các thể, Hen - COPD và các kỹ thuật chẩn đoán liên quan[:]', '[:vi]Khám sức khỏe định kỳ[:]', '', 'publish', 'closed', 'closed', '', 'kham-suc-khoe-dinh-ky', '', '', '2018-12-18 04:31:36', '2018-12-18 04:31:36', '', 215, 'http://localhost:8000/Healthcare/source/?page_id=223', 0, 'page', '', 0),
(224, 1, '2018-12-18 04:27:19', '2018-12-18 04:27:19', '', '[:vi]Khám sức khỏe định kỳ[:]', '', 'inherit', 'closed', 'closed', '', '223-revision-v1', '', '', '2018-12-18 04:27:19', '2018-12-18 04:27:19', '', 223, 'http://localhost:8000/Healthcare/source/223-revision-v1/', 0, 'revision', '', 0),
(225, 1, '2018-12-18 04:27:43', '2018-12-18 04:27:43', '[:vi]Chẩn đoán sớm các bệnh lý[:]', '[:vi]Tuyển dụng[:]', '', 'publish', 'closed', 'closed', '', 'tuyen-dung', '', '', '2018-12-18 04:34:08', '2018-12-18 04:34:08', '', 215, 'http://localhost:8000/Healthcare/source/?page_id=225', 0, 'page', '', 0),
(226, 1, '2018-12-18 04:27:43', '2018-12-18 04:27:43', '', '[:vi]Tuyển dụng[:]', '', 'inherit', 'closed', 'closed', '', '225-revision-v1', '', '', '2018-12-18 04:27:43', '2018-12-18 04:27:43', '', 225, 'http://localhost:8000/Healthcare/source/225-revision-v1/', 0, 'revision', '', 0),
(227, 1, '2018-12-18 04:28:46', '2018-12-18 04:28:46', '[:vi]Hồ sơ bệnh nhân[:]', '[:vi]Hồ sơ điện tử[:]', '', 'publish', 'closed', 'closed', '', 'ho-so-dien-tu', '', '', '2018-12-18 04:30:50', '2018-12-18 04:30:50', '', 215, 'http://localhost:8000/Healthcare/source/?page_id=227', 0, 'page', '', 0),
(228, 1, '2018-12-18 04:28:46', '2018-12-18 04:28:46', '', '[:vi]Hồ sơ điện tử[:]', '', 'inherit', 'closed', 'closed', '', '227-revision-v1', '', '', '2018-12-18 04:28:46', '2018-12-18 04:28:46', '', 227, 'http://localhost:8000/Healthcare/source/227-revision-v1/', 0, 'revision', '', 0),
(229, 1, '2018-12-18 04:29:28', '2018-12-18 04:29:28', '', 'copd-icon', '', 'inherit', 'open', 'closed', '', 'copd-icon', '', '', '2018-12-18 04:29:28', '2018-12-18 04:29:28', '', 217, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/copd-icon.png', 0, 'attachment', 'image/png', 0),
(230, 1, '2018-12-18 04:29:40', '2018-12-18 04:29:40', '[:vi]Đặt lịch hẹn và chọn bác sỹ theo thời gian của bạn[:]', '[:vi]Đặt hẹn[:]', '', 'inherit', 'closed', 'closed', '', '217-revision-v1', '', '', '2018-12-18 04:29:40', '2018-12-18 04:29:40', '', 217, 'http://localhost:8000/Healthcare/source/217-revision-v1/', 0, 'revision', '', 0),
(231, 1, '2018-12-18 04:30:41', '2018-12-18 04:30:41', '', 'long nguc icon', '', 'inherit', 'open', 'closed', '', 'long-nguc-icon', '', '', '2018-12-18 04:30:41', '2018-12-18 04:30:41', '', 227, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/long-nguc-icon.png', 0, 'attachment', 'image/png', 0),
(232, 1, '2018-12-18 04:30:50', '2018-12-18 04:30:50', '[:vi]Hồ sơ bệnh nhân[:]', '[:vi]Hồ sơ điện tử[:]', '', 'inherit', 'closed', 'closed', '', '227-revision-v1', '', '', '2018-12-18 04:30:50', '2018-12-18 04:30:50', '', 227, 'http://localhost:8000/Healthcare/source/227-revision-v1/', 0, 'revision', '', 0),
(233, 1, '2018-12-18 04:31:25', '2018-12-18 04:31:25', '', 'ung thu icon', '', 'inherit', 'open', 'closed', '', 'ung-thu-icon', '', '', '2018-12-18 04:31:25', '2018-12-18 04:31:25', '', 223, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/ung-thu-icon.jpg', 0, 'attachment', 'image/jpeg', 0),
(234, 1, '2018-12-18 04:31:36', '2018-12-18 04:31:36', '[:vi]Khám phát hiện, quản lý điều trị: bệnh phổi không lao, Lao các thể, Hen - COPD và các kỹ thuật chẩn đoán liên quan[:]', '[:vi]Khám sức khỏe định kỳ[:]', '', 'inherit', 'closed', 'closed', '', '223-revision-v1', '', '', '2018-12-18 04:31:36', '2018-12-18 04:31:36', '', 223, 'http://localhost:8000/Healthcare/source/223-revision-v1/', 0, 'revision', '', 0),
(235, 1, '2018-12-18 04:32:28', '2018-12-18 04:32:28', '', 'kcb icon', '', 'inherit', 'open', 'closed', '', 'kcb-icon', '', '', '2018-12-18 04:32:28', '2018-12-18 04:32:28', '', 219, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/kcb-icon.png', 0, 'attachment', 'image/png', 0),
(236, 1, '2018-12-18 04:32:31', '2018-12-18 04:32:31', '[:vi]Xem lịch khám trong tháng[:]', '[:vi]Lịch khám[:]', '', 'inherit', 'closed', 'closed', '', '219-revision-v1', '', '', '2018-12-18 04:32:31', '2018-12-18 04:32:31', '', 219, 'http://localhost:8000/Healthcare/source/219-revision-v1/', 0, 'revision', '', 0),
(237, 1, '2018-12-18 04:33:22', '2018-12-18 04:33:22', '', 'nurse icon', '', 'inherit', 'open', 'closed', '', 'nurse-icon', '', '', '2018-12-18 04:33:22', '2018-12-18 04:33:22', '', 221, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/nurse-icon.png', 0, 'attachment', 'image/png', 0),
(238, 1, '2018-12-18 04:33:25', '2018-12-18 04:33:25', '[:vi]Đăng ký thẻ thành viên để khám chữa bênh nhanh hơn[:]', '[:vi]Thẻ thành viên[:]', '', 'inherit', 'closed', 'closed', '', '221-revision-v1', '', '', '2018-12-18 04:33:25', '2018-12-18 04:33:25', '', 221, 'http://localhost:8000/Healthcare/source/221-revision-v1/', 0, 'revision', '', 0),
(239, 1, '2018-12-18 04:34:04', '2018-12-18 04:34:04', '', 'phe quan icon', '', 'inherit', 'open', 'closed', '', 'phe-quan-icon', '', '', '2018-12-18 04:34:04', '2018-12-18 04:34:04', '', 225, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/phe-quan-icon.jpg', 0, 'attachment', 'image/jpeg', 0),
(240, 1, '2018-12-18 04:34:08', '2018-12-18 04:34:08', '[:vi]Chẩn đoán sớm các bệnh lý[:]', '[:vi]Tuyển dụng[:]', '', 'inherit', 'closed', 'closed', '', '225-revision-v1', '', '', '2018-12-18 04:34:08', '2018-12-18 04:34:08', '', 225, 'http://localhost:8000/Healthcare/source/225-revision-v1/', 0, 'revision', '', 0),
(241, 1, '2018-12-18 06:55:08', '2018-12-18 06:55:08', '[:vi]Xem lịch khám trong tháng\r\n\r\n<iframe src=\"https://drive.google.com/file/d/1sM_HJR2f2GKQUI-Z68bILXxWwn8UH4IJ/preview\" width=\"100%\" height=\"480\"></iframe>[:]', '[:vi]Lịch khám[:]', '', 'inherit', 'closed', 'closed', '', '219-revision-v1', '', '', '2018-12-18 06:55:08', '2018-12-18 06:55:08', '', 219, 'http://localhost:8000/Healthcare/source/219-revision-v1/', 0, 'revision', '', 0),
(242, 1, '2018-12-18 07:01:53', '2018-12-18 07:01:53', '[:vi]Xem lịch khám trong tháng\r\n\r\n<iframe src=\"https://drive.google.com/file/d/1sM_HJR2f2GKQUI-Z68bILXxWwn8UH4IJ/preview\" width=\"100%\" height=\"680\"></iframe>[:]', '[:vi]Lịch khám[:]', '', 'inherit', 'closed', 'closed', '', '219-revision-v1', '', '', '2018-12-18 07:01:53', '2018-12-18 07:01:53', '', 219, 'http://localhost:8000/Healthcare/source/219-revision-v1/', 0, 'revision', '', 0),
(243, 1, '2018-12-18 07:07:04', '2018-12-18 07:07:04', '[dwqa-list-questions]', 'DWQA Questions', '', 'publish', 'closed', 'closed', '', 'dwqa-questions', '', '', '2018-12-18 07:07:04', '2018-12-18 07:07:04', '', 0, 'http://localhost:8000/Healthcare/source/dwqa-questions/', 0, 'page', '', 0),
(244, 1, '2018-12-18 07:07:05', '2018-12-18 07:07:05', '[dwqa-submit-question-form]', 'DWQA Ask Question', '', 'publish', 'closed', 'closed', '', 'dwqa-ask-question', '', '', '2018-12-18 07:07:05', '2018-12-18 07:07:05', '', 0, 'http://localhost:8000/Healthcare/source/dwqa-ask-question/', 0, 'page', '', 0),
(248, 1, '2018-12-18 07:21:36', '2018-12-18 07:21:36', '[my_calendar id=\"my-calendar\"]', 'My Calendar', '', 'publish', 'closed', 'closed', '', 'my-calendar', '', '', '2018-12-18 07:21:37', '2018-12-18 07:21:37', '', 0, 'http://localhost:8000/Healthcare/source/my-calendar/', 0, 'page', '', 0),
(249, 1, '2018-12-18 07:21:37', '2018-12-18 07:21:37', '[my_calendar id=\"my-calendar\"]', 'My Calendar', '', 'inherit', 'closed', 'closed', '', '248-revision-v1', '', '', '2018-12-18 07:21:37', '2018-12-18 07:21:37', '', 248, 'http://localhost:8000/Healthcare/source/248-revision-v1/', 0, 'revision', '', 0),
(250, 1, '2018-12-18 07:26:19', '2018-12-18 07:26:19', 'CONTENTS', 'Events', 'CONTENTS', 'publish', 'closed', 'open', '', 'events', '', '', '2018-12-18 07:26:19', '2018-12-18 07:26:19', '', 0, 'http://localhost:8000/Healthcare/source/events/', 0, 'page', '', 0),
(251, 1, '2018-12-18 07:26:19', '2018-12-18 07:26:19', 'CONTENTS', 'Locations', '', 'publish', 'closed', 'open', '', 'locations', '', '', '2018-12-18 07:26:19', '2018-12-18 07:26:19', '', 250, 'http://localhost:8000/Healthcare/source/events/locations/', 0, 'page', '', 0),
(252, 1, '2018-12-18 07:26:19', '2018-12-18 07:26:19', 'CONTENTS', 'Categories', '', 'publish', 'closed', 'open', '', 'categories', '', '', '2018-12-18 07:26:19', '2018-12-18 07:26:19', '', 250, 'http://localhost:8000/Healthcare/source/events/categories/', 0, 'page', '', 0),
(253, 1, '2018-12-18 07:26:20', '2018-12-18 07:26:20', 'CONTENTS', 'Tags', '', 'publish', 'closed', 'open', '', 'tags', '', '', '2018-12-18 07:26:20', '2018-12-18 07:26:20', '', 250, 'http://localhost:8000/Healthcare/source/events/tags/', 0, 'page', '', 0),
(254, 1, '2018-12-18 07:26:20', '2018-12-18 07:26:20', 'CONTENTS', 'My Bookings', '', 'publish', 'closed', 'open', '', 'my-bookings', '', '', '2018-12-18 07:26:20', '2018-12-18 07:26:20', '', 250, 'http://localhost:8000/Healthcare/source/events/my-bookings/', 0, 'page', '', 0),
(257, 1, '2018-12-18 07:31:00', '2018-12-18 07:31:00', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', '[:vi]Giờ làm việc[:]', 'gio-lam-viec', 'publish', 'closed', 'closed', '', 'group_5c18a1efd63c8', '', '', '2018-12-20 07:32:42', '2018-12-20 07:32:42', '', 0, 'http://localhost:8000/Healthcare/source/?post_type=acf-field-group&#038;p=257', 0, 'acf-field-group', '', 0),
(258, 1, '2018-12-18 07:31:00', '2018-12-18 07:31:00', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Đặt giờ làm việc', 'datetime_working', 'publish', 'closed', 'closed', '', 'field_5c18a1f859716', '', '', '2018-12-20 07:32:42', '2018-12-20 07:32:42', '', 257, 'http://localhost:8000/Healthcare/source/?post_type=acf-field&#038;p=258', 0, 'acf-field', '', 0),
(259, 1, '2018-12-18 07:35:55', '2018-12-18 07:35:55', '<strong>[title]</strong>\r\n\r\n[when]\r\n[location]\r\n<div>[description]</div>\r\n[link newwindow=\"yes\"]See more details[/link]', '[:vi]Lich làm việc[:]', '', 'publish', 'closed', 'closed', '', 'lich-lam-viec', '', '', '2018-12-18 07:35:55', '2018-12-18 07:35:55', '', 0, 'http://localhost:8000/Healthcare/source/?post_type=calendar&#038;p=259', 0, 'calendar', '', 0),
(260, 1, '2018-12-18 07:38:23', '2018-12-18 07:38:23', '[:vi][calendar id=\"259\"][:]', 'Lịch làm việc', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2018-12-18 07:38:23', '2018-12-18 07:38:23', '', 92, 'http://localhost:8000/Healthcare/source/92-revision-v1/', 0, 'revision', '', 0),
(261, 1, '2018-12-18 07:45:58', '2018-12-18 07:45:58', '[:vi]<pre>[tribe_mini_calendar]</pre>[:]', 'Lịch làm việc', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2018-12-18 07:45:58', '2018-12-18 07:45:58', '', 92, 'http://localhost:8000/Healthcare/source/92-revision-v1/', 0, 'revision', '', 0),
(262, 1, '2018-12-18 07:54:27', '2018-12-18 07:54:27', '[:vi][fullcalendar][:]', '[:vi]BS. CKI. Nguyễn Bích Hải[:]', '', 'inherit', 'closed', 'closed', '', '200-revision-v1', '', '', '2018-12-18 07:54:27', '2018-12-18 07:54:27', '', 200, 'http://localhost:8000/Healthcare/source/200-revision-v1/', 0, 'revision', '', 0),
(263, 1, '2018-12-18 07:58:46', '2018-12-18 07:58:46', '', '[:vi]BS. CKI. Nguyễn Bích Hải[:]', '', 'inherit', 'closed', 'closed', '', '200-revision-v1', '', '', '2018-12-18 07:58:46', '2018-12-18 07:58:46', '', 200, 'http://localhost:8000/Healthcare/source/200-revision-v1/', 0, 'revision', '', 0),
(264, 1, '2018-12-18 09:30:00', '2018-12-18 09:30:00', '', 'TS. BS. Nguyen Van C', '', 'publish', 'open', 'open', '', 'ts-bs-nguyen-van-c', '', '', '2018-12-20 07:36:12', '2018-12-20 07:36:12', '', 0, 'http://localhost:8000/Healthcare/source/?p=264', 1, 'post', '', 0),
(265, 1, '2018-12-18 08:24:01', '2018-12-18 08:24:01', '', 'TS. BS. Nguyen Van C', '', 'inherit', 'closed', 'closed', '', '264-revision-v1', '', '', '2018-12-18 08:24:01', '2018-12-18 08:24:01', '', 264, 'http://localhost:8000/Healthcare/source/264-revision-v1/', 0, 'revision', '', 0),
(270, 1, '2018-12-20 03:46:32', '2018-12-20 03:46:32', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"nav_menu_item\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"location/primary_menus\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', '[:vi]Image for Header Menu[:]', 'image-for-header-menu', 'publish', 'closed', 'closed', '', 'group_5c1b1066e7735', '', '', '2018-12-20 03:47:56', '2018-12-20 03:47:56', '', 0, 'http://localhost:8000/Healthcare/source/?post_type=acf-field-group&#038;p=270', 0, 'acf-field-group', '', 0),
(271, 1, '2018-12-20 03:46:32', '2018-12-20 03:46:32', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Hình ảnh cho header', 'menu_header', 'publish', 'closed', 'closed', '', 'field_5c1b106ed76bc', '', '', '2018-12-20 03:46:32', '2018-12-20 03:46:32', '', 270, 'http://localhost:8000/Healthcare/source/?post_type=acf-field&p=271', 0, 'acf-field', '', 0),
(273, 1, '2018-12-20 06:37:12', '2018-12-20 06:37:12', '[:vi]<div class=\"votecell post-layout--left\">\r\n<div class=\"vote\">By default, all public post types are included</div>\r\n</div>[:]', '[:vi]Chuyên khám các bệnh[:]', '', 'publish', 'closed', 'closed', '', 'chuyen-kham-cac-benh', '', '', '2018-12-20 06:37:12', '2018-12-20 06:37:12', '', 0, 'http://localhost:8000/Healthcare/source/?post_type=dich_vu&#038;p=273', 0, 'dich_vu', '', 0),
(275, 1, '2018-12-20 07:32:42', '2018-12-20 07:32:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Thứ', 'shedule_day', 'publish', 'closed', 'closed', '', 'field_5c1b4539b78ab', '', '', '2018-12-20 07:32:42', '2018-12-20 07:32:42', '', 258, 'http://localhost:8000/Healthcare/source/?post_type=acf-field&p=275', 0, 'acf-field', '', 0),
(276, 1, '2018-12-20 07:32:42', '2018-12-20 07:32:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Giờ làm việc', 'shedule_time', 'publish', 'closed', 'closed', '', 'field_5c1b4573b78ac', '', '', '2018-12-20 07:32:42', '2018-12-20 07:32:42', '', 258, 'http://localhost:8000/Healthcare/source/?post_type=acf-field&p=276', 1, 'acf-field', '', 0),
(277, 1, '2018-12-20 07:36:12', '2018-12-20 07:36:12', '', 'TS. BS. Nguyen Van C', '', 'inherit', 'closed', 'closed', '', '264-revision-v1', '', '', '2018-12-20 07:36:12', '2018-12-20 07:36:12', '', 264, 'http://localhost:8000/Healthcare/source/264-revision-v1/', 0, 'revision', '', 0),
(278, 1, '2018-12-20 07:37:24', '2018-12-20 07:37:24', '[:vi]<ul>\r\n 	<li>\r\n<div class=\"collapsible-container collapsible-block expanded screen-lg\">\r\n<div class=\"collapsible-header\">\r\n<div class=\"collapse-trigger\">\r\n<div><strong>Đại hội thi đua yêu nước lần 5</strong> giai đoạn 2005 – 2010, được Ủy ban nhân dân TP HCM tổ chức trọng thể tại Nhà hát Hòa Bình ngày 14/6/2010. Hơn 800 tập thể và cá nhân điển hình, đã được Hội đồng thi đua khen thưởng thành phố  tuyên dương vì những đóng góp xuất sắc cho phong trào thi đua yêu nước, bám sát thực tế và mang lại hiệu quả kinh tế - xã hội rất to lớn cho TP Hồ Chí Minh nói riêng.</div>\r\n<table align=\"right\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"contentImagecenter\">\r\n\r\n<img class=\"contentImage\" src=\"https://tudu.com.vn/data/2010/06/17/08213950_IMG_0023.jpg\" />\r\n<div class=\"contentImageDescription\"></div>\r\n</div>\r\n<div><span style=\"font-size: xx-small;\">BS. CKII Phạm Việt Thanh\r\n</span></div>\r\n<div><span style=\"font-size: xx-small;\">Giám đốc BV Từ Dũ</span></div></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\nTrong bối cảnh ngành y tế nói chung chịu sự tác động mạnh mẽ của nền kinh tế thị trường thời hội nhập. Tinh thần dám nghĩ, dám làm, mạnh dạn thực hiện Nghị định 43/NĐ-CP về <em>quyền tự chủ, tự chịu trách nhiệm về thực hiện nhiệm vụ, tổ chức bộ máy biên chế và tài chính đối với đơn vị sự nghiệp công lập</em> thông qua việc thực hiện xã hội hóa để phát triển Bệnh viện Từ Dũ thành Bệnh viện Sản - Nhi hiện đại 1.200 giường. Mở rộng mối quan hệ hợp tác về đào tạo với các tổ chức y tế quốc tế và các viện - trường đại học y khoa tại các nước Pháp, Anh, Úc, Nhật Bản, Singapore, Hàn Quốc, Thái Lan, …  nhằm nâng cao trình độ chuyên môn và kỹ năng điều trị lâm sàng cho đội ngũ cán bộ y tế, đáp ứng nhu cầu khám chữa bệnh ngày càng đa dạng của người dân, giữ vững thương hiệu bệnh viện Từ Dũ; Thực hiện tốt nhiệm vụ hỗ trợ chuyên môn và chuyển giao kỹ thuật cho các tuyến y tế cơ sở; nâng cao thu nhập và ổn định đời sống  cho cán bộ công chức – viên chức của bệnh viện… Đó là những tiền đề quan trọng giúp Bác sĩ CKII. Phạm Việt Thanh – Thầy thuốc nhân dân, Giám đốc Bệnh viện Từ Dũ<strong> </strong>vinh dự là 1/18 điển hình tiên tiến của TP Hồ Chí Minh được Hội đồng thi đua khen thưởng TP bầu chọn trong số hàng nghìn cán bộ - công nhân viên chức ngành y tế của gần 100 đơn vị, cơ sở khám chữa bệnh cùng các công ty dược – trong thiết bị y tế công lập và tư nhân trên địa bàn thành phố.\r\n\r\n</div>\r\n</div>\r\n</div></li>\r\n</ul>[:en]<div class=\"collapsible-container collapsible-block expanded screen-lg\">\r\n<div class=\"collapsible-header\">\r\n<div class=\"collapse-trigger\"><i class=\"fa fa-fw fa-briefcase\" aria-hidden=\"true\"></i>The 5th National Patriotic Emulation Congress 2005 - 2010 was organized by Ho Chi Minh City People\'s Committee at Hoa Binh Theater on 14/6/2010. More than 800 collectives and individuals have been praised by the City Emulation Council for their outstanding contributions to the patriotic emulation movement, keeping abreast of reality and bringing about socio-economic benefits. Very big for Ho Chi Minh City in particular.\r\n\r\nBS. CKII Pham Viet Thanh\r\nDirector of Tu Du Hospital\r\nIn the context of the health sector in general is strongly influenced by the market economy in the integration period. The spirit of dare to think, dare to do, boldly implement Decree No. 43 / ND-CP on autonomy and self-responsibility on the performance of tasks, organization of staffing and financial institutions for public service units Established through the socialization to develop Tu Du Hospital into a modern-obstetrics-children hospital with 1,200 beds. Expanding the cooperation on training with international health organizations and institutes of medical universities in France, England, Australia, Japan, Singapore, Korea, Thailand, etc. High level of professional and clinical skills for medical staff, meeting the needs of increasingly diverse medical examination and treatment of people, maintaining the brand name hospital Tu Du; To well perform the task of professional support and technical transfer for grassroots medical establishments; improve the income and stabilize the life for civil servants - staff of the hospital ... That is the important premise to help doctors CKII. Pham Viet Thanh - People\'s Doctor, Director of Tu Du Hospital was honored to be one of the 18 most advanced models of Ho Chi Minh City, voted by the Council of Emulation and Commendation of the thousands of cadres and employees. the health care sector of nearly 100 units, medical facilities and pharmaceutical companies - in public and private medical equipment in the city.\r\n\r\n</div>\r\n</div>\r\n</div>[:]', 'TS. BS. Phạm Việt Thanh', '', 'inherit', 'closed', 'closed', '', '192-revision-v1', '', '', '2018-12-20 07:37:24', '2018-12-20 07:37:24', '', 192, 'http://localhost:8000/Healthcare/source/192-revision-v1/', 0, 'revision', '', 0),
(280, 1, '2018-12-24 14:53:33', '2018-12-24 14:53:33', '<iframe src=\"https://drive.google.com/file/d/14yl8tYLOGyHWYtxX3MRAUzKnMq2gmWYN/preview\" width=\"100%\" height=\"480\"></iframe>', 'Danh mục dịch vụ kỹ thuật thực hiện tại Bệnh viện Phạm Ngọc Thạch', '', 'publish', 'closed', 'closed', '', 'danh-muc-dich-vu-ky-thuat-thuc-hien-tai-benh-vien-pham-ngoc-thach-2', '', '', '2018-12-24 14:53:33', '2018-12-24 14:53:33', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=hoat_dong&#038;p=280', 0, 'hoat_dong', '', 0),
(281, 1, '2018-12-24 14:53:50', '2018-12-24 14:53:50', '', '[:vi]Phê duyệt chương trình đào tạo liên tục cho cơ sở đào tạo Bệnh viện Phạm Ngọc Thạch32[:en]Phê duyệt chương trình đào tạo liên tục cho cơ sở đào tạo Bệnh viện Phạm Ngọc Thạch[:]', '', 'publish', 'closed', 'closed', '', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-3-2', '', '', '2018-12-24 14:58:10', '2018-12-24 14:58:10', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=hoat_dong&#038;p=281', 0, 'hoat_dong', '', 0),
(282, 1, '2018-12-24 14:53:56', '2018-12-24 14:53:56', '', 'Phê duyệt chương trình đào tạo liên tục cho cơ sở đào tạo Bệnh viện Phạm Ngọc Thạch22', '', 'publish', 'closed', 'closed', '', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-2-2', '', '', '2018-12-24 14:58:04', '2018-12-24 14:58:04', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=hoat_dong&#038;p=282', 0, 'hoat_dong', '', 0),
(283, 1, '2018-12-24 14:54:03', '2018-12-24 14:54:03', '', 'Phê duyệt chương trình đào tạo liên tục cho cơ sở đào tạo Bệnh viện Phạm Ngọc Thạch 2', '', 'publish', 'closed', 'closed', '', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-2-3', '', '', '2018-12-24 14:57:51', '2018-12-24 14:57:51', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=hoat_dong&#038;p=283', 0, 'hoat_dong', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(284, 1, '2018-12-24 14:58:19', '2018-12-24 14:58:19', '', '[:vi]Phê duyệt chương trình đào tạo liên tục cho cơ sở đào tạo Bệnh viện Golden[:en]Phê duyệt chương trình đào tạo liên tục cho cơ sở đào tạo Bệnh viện Phạm Ngọc Thạch 2[:]', '', 'publish', 'closed', 'closed', '', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-2-3-2', '', '', '2018-12-25 03:38:54', '2018-12-25 03:38:54', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=hoat_dong&#038;p=284', 0, 'hoat_dong', '', 0),
(285, 1, '2018-12-24 14:58:24', '2018-12-24 14:58:24', '', '[:vi]Phê duyệt chương trình đào tạo Bệnh viện Golden[:en]Phê duyệt chương trình đào tạo liên tục cho cơ sở đào tạo Bệnh viện Phạm Ngọc Thạch 2[:]', '', 'publish', 'closed', 'closed', '', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-2-3-2-2', '', '', '2018-12-25 03:38:25', '2018-12-25 03:38:25', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=hoat_dong&#038;p=285', 0, 'hoat_dong', '', 0),
(286, 1, '2018-12-24 14:58:30', '2018-12-24 14:58:30', '', 'Phê duyệt chương trình đào tạo liên tục cho cơ sở đào tạo Bệnh viện Phạm Ngọc Thạch', '', 'publish', 'closed', 'closed', '', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-4', '', '', '2018-12-24 15:03:01', '2018-12-24 15:03:01', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=hoat_dong&#038;p=286', 0, 'hoat_dong', '', 0),
(287, 1, '2018-12-24 14:58:36', '2018-12-24 14:58:36', '', '[:vi]Giới thiệu cơ sở đào tạo Bệnh viện[:en]Phê duyệt chương trình đào tạo liên tục cho cơ sở đào tạo Bệnh viện Phạm Ngọc Thạch[:]', '', 'publish', 'closed', 'closed', '', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-2-4', '', '', '2018-12-25 03:37:44', '2018-12-25 03:37:44', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=hoat_dong&#038;p=287', 0, 'hoat_dong', '', 0),
(288, 1, '2018-12-24 14:58:41', '2018-12-24 14:58:41', '', '[:vi]Phê duyệt chương trình đào tạo liên tục cho cơ sở đào tạo Bệnh viện Phạm Ngọc Thạch32[:en]Phê duyệt chương trình đào tạo liên tục cho cơ sở đào tạo Bệnh viện Phạm Ngọc Thạch[:]', '', 'publish', 'closed', 'closed', '', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-3-2-2', '', '', '2018-12-24 15:02:57', '2018-12-24 15:02:57', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=hoat_dong&#038;p=288', 0, 'hoat_dong', '', 0),
(289, 1, '2018-12-24 14:58:46', '2018-12-24 14:58:46', '', 'Phê duyệt chương trình đào tạo liên tục cho cơ sở đào tạo Bệnh viện Phạm Ngọc Thạch', '', 'publish', 'closed', 'closed', '', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-3-3', '', '', '2018-12-24 15:02:52', '2018-12-24 15:02:52', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=hoat_dong&#038;p=289', 0, 'hoat_dong', '', 0),
(290, 1, '2018-12-24 14:58:54', '2018-12-24 14:58:54', '', '[:vi]Giải pháp toàn diện[:en]gioi thieu[:]', '', 'publish', 'closed', 'closed', '', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-2-3-3', '', '', '2018-12-25 03:13:43', '2018-12-25 03:13:43', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=hoat_dong&#038;p=290', 0, 'hoat_dong', '', 0),
(291, 1, '2018-12-24 14:59:07', '2018-12-24 14:59:07', '', 'Dich vu y te', '', 'publish', 'closed', 'closed', '', 'phe-duyet-chuong-trinh-dao-tao-lien-tuc-cho-co-so-dao-tao-benh-vien-pham-ngoc-thach-3-2-3', '', '', '2018-12-24 16:50:27', '2018-12-24 16:50:27', '', 0, 'http://localhost/2018/freelancer/BE/healthcare/?post_type=hoat_dong&#038;p=291', 0, 'hoat_dong', '', 0),
(292, 1, '2018-12-25 03:30:50', '2018-12-25 03:30:50', '[:vi]<p style=\"font-weight: 300;\">Kể từ ngày 1/12/2015 theo Quyết định 959/QĐ-BHXH ngày 09/09/2015 quy định về Bảo hiểm xã hội, bảo hiểm y tế, bảo hiểm thất nghiệp  bắt buộc. Đồng thời kèm theo các quy định xử phạt nghiêm khắc hơn với các doanh nghiệp không tuân thủ quy định đóng bảo hiểm xã hội cho nhân viên. Tuy nhiên, thủ tục <b><strong>đăng ký bảo hiểm xã hội</strong></b> còn phức tạp với các đơn từ, biểu mẫu quy định gây khó khăn cho nhiều doanh nghiệp. Với kinh nghiệm hơn 10 năm nhận đăng ký bảo hiểm xã hội cho khách hàng, Kế Toán Anpha cung cấp gói dịch vụ đăng ký bỏa hiểm mới với biểu phí bên dưới</p>\r\n\r\n<table style=\"font-weight: 300;\" width=\"100%\">\r\n<tbody>\r\n<tr>\r\n<td rowspan=\"2\" width=\"153\"><b><strong>Phí Dịch Vụ</strong></b></td>\r\n<td colspan=\"3\" width=\"392\"><b><strong>Số Lượng Nhân Viên Cần Đăng Ký BHXH</strong></b></td>\r\n</tr>\r\n<tr>\r\n<td width=\"143\"><b><strong>1 =&gt; 5 NV</strong></b></td>\r\n<td width=\"127\"><b><strong>6 =&gt;10 NV</strong></b></td>\r\n<td width=\"123\"><b><strong>Trên 10 NV</strong></b></td>\r\n</tr>\r\n<tr>\r\n<td width=\"153\">Các quận TP. HCM</td>\r\n<td width=\"143\">1.500.000</td>\r\n<td width=\"127\">2.500.000</td>\r\n<td width=\"123\">3.000.000</td>\r\n</tr>\r\n<tr>\r\n<td width=\"153\">Các huyện TP. HCM</td>\r\n<td width=\"143\">2.000.000</td>\r\n<td width=\"127\">3.000.000</td>\r\n<td width=\"123\">3.500.000</td>\r\n</tr>\r\n<tr>\r\n<td width=\"153\">Các tỉnh Anpha có chi nhánh bao gồm:\r\n\r\n<b><strong>Đồng Nai, Bình Dương, Vũng Tàu</strong></b></td>\r\n<td width=\"143\">2.500.000</td>\r\n<td width=\"127\">3.500.000</td>\r\n<td width=\"123\">4.000.000</td>\r\n</tr>\r\n<tr>\r\n<td width=\"153\">Các tỉnh Anpha không có chi nhánh</td>\r\n<td width=\"143\">3.000.000</td>\r\n<td width=\"127\">4.000.000</td>\r\n<td width=\"123\">4.500.000</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"font-weight: 300;\"></p>\r\n<p style=\"font-weight: 300;\"><b><strong>Lưu ý:</strong></b> <b><strong><em>biểu phí dịch vụ đăng ký bảo hiểm xã hội bên trên là trọn gói, Anpha cam kết không phát sinh phí và sẽ thay doanh nghiệp làm tất cả mọi việc, đồng thời bàn giao sổ bảo hiểm xã hội tận tay khách hàng.</em></strong></b></p>\r\n<p style=\"font-weight: 300;\"><b><strong>Tỷ lệ đóng bảo hiểm xã hội, bảo hiểm y tế, bảo hiểm thất nghiệp.</strong></b></p>\r\n\r\n<table style=\"font-weight: 300;\" width=\"100%\">\r\n<tbody>\r\n<tr>\r\n<td>Tỷ lệ đóng bảo hiểm</td>\r\n<td>BH Xã Hội</td>\r\n<td>BH Y Tế</td>\r\n<td>BH Thất Nghiệp</td>\r\n<td>Tổng</td>\r\n</tr>\r\n<tr>\r\n<td>Doanh nghiệp phải đóng</td>\r\n<td>17.5%</td>\r\n<td>3%</td>\r\n<td>1%</td>\r\n<td>22%</td>\r\n</tr>\r\n<tr>\r\n<td>Người lao động</td>\r\n<td>8%</td>\r\n<td>1,5%</td>\r\n<td>1%</td>\r\n<td>10,5%</td>\r\n</tr>\r\n<tr>\r\n<td>Tổng cộng</td>\r\n<td>25.5%</td>\r\n<td>4,5%</td>\r\n<td>2%</td>\r\n<td>32%</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"font-weight: 300;\"><b><strong>Trong đó:</strong></b></p>\r\n\r\n<ul>\r\n 	<li>Người lao động phải đóng: bảo hiểm xã hội: 8% (Đóng vào quỹ hưu trí và tử tuất)</li>\r\n 	<li>Doanh nghiệp phải đóng: bảo hiểm xã hội: 17.5% (Trong đó: 3% vào quỹ BHXH ốm đau và thai sản, 1% vào quỹ BHXH tai nạn lao động, bệnh nghề nghiệp; 13.5% vào quỹ BHXH hưu trí và tử tuất).</li>\r\n</ul>[:]', 'Dịch vụ bảo hiểm', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2018-12-25 03:30:50', '2018-12-25 03:30:50', '', 78, 'http://localhost:8000/Healthcare/source/78-revision-v1/', 0, 'revision', '', 0),
(293, 1, '2018-12-25 03:32:18', '2018-12-25 03:32:18', '[:vi]Trước đây, giá một lần nội soi tai - mũi - họng là 202.000 đồng thì nay giảm xuống còn 100.000  đồng, giá một lần chụp cắt lớp vi tính giảm từ 2.266.000 đồng xuống còn 1.689.000 đồng. Những dịch vụ khác mức giảm chỉ từ vài nghìn đến vài chục nghìn đồng như: tiền khám bệnh, ngày giường, xét nghiệm…\r\n\r\nVới mức giá giảm chỉ vài nghìn, người bệnh có thể sẽ không cảm nhận được sự thay đổi, nhưng các bệnh viện tuyến huyện lại khác. Giảm tiền chỗ này, tăng chỗ khác là điều BHXH và Bộ Y tế lo ngại sẽ xảy ra với các bệnh viện, ví dụ, các bệnh viện có thể sẽ tăng chỉ định những kỹ thuật và xét nghiệm không cần thiết, hoặc tăng số lượt khám ở mỗi bàn từ 37 lên 65 người/ngày.\r\n\r\nCần có thời gian để đánh giá chính xác những thay đổi trong hoạt động của các bệnh viện, tuy nhiên, qua tính toán sơ bộ, giảm giá dịch vụ sẽ giúp Quỹ Bảo hiểm tiết kiệm được hơn 1.000 tỷ đồng.\r\n<div class=\"VCSortableInPreviewMode active\"></div>[:]', 'Giá dịch vụ', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-12-25 03:32:18', '2018-12-25 03:32:18', '', 80, 'http://localhost:8000/Healthcare/source/80-revision-v1/', 0, 'revision', '', 0),
(294, 1, '2018-12-25 03:33:30', '2018-12-25 03:33:30', '[:vi]Sức khỏe luôn là vốn quý giá của mỗi người. Vì vậy, chăm sóc và bảo vệ sức khỏe cho bản thân cũng như cả gia đình là nhu cầu thiết yếu và cấp bách.\r\n\r\n&nbsp;\r\n\r\nThấu hiểu nhu cầu đó, Bảo hiểm Bảo Việt mang đến sản phẩm bảo hiểm sức khỏe “<strong>Bảo Việt An Gia</strong>” – giải pháp tài chính ưu việt giúp bạn và mọi thành viên trong gia đình không còn lo lắng về chi phí y tế để an tâm tận hưởng cuộc sống. Bảo Việt An Gia được thiết kế phù hợp với tất cả các đối tượng từ người già đến trẻ nhỏ với nhiều hình thức tham gia linh hoạt. Khách hàng khi tham gia bảo hiểm sẽ được bảo vệ y tế một cách toàn diện và tận hưởng chất lượng dịch vụ y tế đẳng cấp nhất tại những bệnh viên viện hàng đầu Việt Nam.\r\n\r\n&nbsp;\r\n\r\n<b>Ưu điểm vượt trội của sản phẩm:</b>\r\n\r\n&nbsp;\r\n<ul>\r\n 	<li>Quyền lợi bảo hiểm cơ bản lên đến 454 triệu đồng/người/năm</li>\r\n 	<li>Không mất thời gian thu thập hồ sơ yêu cầu bồi thường và không phải thanh toán viện phí</li>\r\n 	<li>Bồi thường nhanh, chính xác trong vòng 15 ngày làm việc</li>\r\n 	<li>Dịch vụ bảo lãnh viện phí ưu việt 24/7 tại gần 90 bệnh viện chất lượng cao trên cả nước</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<strong>Đối tượng bảo hiểm</strong>\r\n<ul>\r\n 	<li>Mọi công dân và người nước ngoài cư trú tại Việt Nam từ 15 ngày tuổi đến 65 tuổi.</li>\r\n</ul>[:]', 'Gói khám toàn diện', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2018-12-25 03:33:30', '2018-12-25 03:33:30', '', 76, 'http://localhost:8000/Healthcare/source/76-revision-v1/', 0, 'revision', '', 0),
(296, 1, '2018-12-25 04:07:03', '2018-12-25 04:07:03', '[:vi]<div class=\"innerText8_ContentDiv\">\r\n<p class=\"paragraph ospfxwa4db75b63795317376693a89cd8c567cossfx\">Khi bạn bị tiểu đường, cơ thể bạn không sử dụng và lưu trữ đường theo đúng cách nữa. Theo thời gian, tiểu đường gây tổn hại những mạch máu trên võng mạc, là lớp sợi thần kinh ở đáy mắt nhạy ánh sáng và giúp chuyển hình ảnh lên não. Tổn thương mạch máu được biết như là bệnh võng mạc tiểu đường.​</p>\r\n\r\n</div>[:]', '[:vi]Bệnh Lý Võng Mạc Tiểu Đường Là Gì?[:]', '', 'publish', 'open', 'closed', '', 'benh-ly-vong-mac-tieu-duong-la-gi', '', '', '2018-12-25 04:07:03', '2018-12-25 04:07:03', '', 0, 'http://localhost:8000/Healthcare/source/?post_type=dwqa-question&#038;p=296', 0, 'dwqa-question', '', 0),
(298, 1, '2018-12-25 04:09:32', '2018-12-25 04:09:32', '[:vi]Viêm bờ mi là một nhóm bệnh do nhiều nguyên nhân và cơ chế khác nhau gây ra. Các nguyên nhân thường gặp nhất của viêm bờ mi ở Việt Nam là: nhiễm khuẩn do nấm hoặc tụ cầu, do cơ địa (tăng tiết tuyến bã, dị ứng…). Vấn đề quan trọng nhất trong điều trị là giữ vệ sinh bờ mi, rửa hàng ngày bằng nước ấm, lau sạch vẩy và chất tiết trên bờ mi, day và ép bờ mi để tránh tắc các tuyến bờ mi.\r\n\r\nViệc vệ sinh mắt cần được thực hiện 2-3 lần/ngày. Các thuốc điều trị viêm bờ mi chủ yếu là thuốc tra mắt được tra vào mắt và bôi trên bờ mi. Các thuốc này bao gồm kháng sinh, chống viêm hoặc chống nấm. Thuốc cần được kê đơn và hướng dẫn sử dụng bởi bác sỹ chuyên khoa nên không thể đưa ra một tên thuốc cụ thể khi chưa khám và biết tình trạng mắt của bệnh nhân.[:]', '[:vi]Có điều chỉnh được mắt khi “chớm cận” không?[:]', '', 'publish', 'open', 'closed', '', 'co-dieu-chinh-duoc-mat-khi-chom-can-khong', '', '', '2018-12-25 04:31:30', '2018-12-25 04:31:30', '', 0, 'http://localhost:8000/Healthcare/source/?post_type=dwqa-question&#038;p=298', 0, 'dwqa-question', '', 0),
(299, 1, '2018-12-25 04:43:24', '2018-12-25 04:43:24', '[:vi]<div class=\"text-justify\">\r\n\r\nKhám sức khỏe tổng quát định kỳ 6 tháng/lần là cách tốt nhất để chủ động bảo vệ và chăm sóc sức khỏe bản thân. Thói quen này không chỉ giúp chúng ta đánh giá tình trạng sức khỏe hiện tại mà còn kịp thời phát hiện và điều trị bệnh lý nguy hiểm hoặc có biện pháp ngăn chặn các yếu tố nguy cơ gây bệnh ngay từ sớm. Tùy thuộc vào độ tuổi, dinh dưỡng, lối sống và tiền sử gia đình, mỗi người đều có nguy cơ mắc bệnh khác nhau. Vì vậy, cần chủ động khám sức khỏe tổng quát định kỳ, kiểm soát cân nặng ở mức hợp lý và duy trì lối sống lành mạnh để sống khỏe, sống thọ nhất có thể.\r\n\r\n</div>\r\n<div id=\"addtocart\">\r\n<div class=\"row\"></div>\r\n</div>[:]', 'Chuyên khoa tổng quát', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2018-12-25 04:43:24', '2018-12-25 04:43:24', '', 96, 'http://localhost:8000/Healthcare/source/96-revision-v1/', 0, 'revision', '', 0),
(300, 1, '2018-12-25 04:47:50', '2018-12-25 04:47:50', '', '[:vi]Hình ảnh về tuyển dụng[:]', '', 'publish', 'closed', 'closed', '', 'hinh-anh-2', '', '', '2018-12-26 06:48:27', '2018-12-26 06:48:27', '', 0, 'http://localhost:8000/Healthcare/source/?post_type=hinh_anh&#038;p=300', 0, 'hinh_anh', '', 0),
(301, 1, '2018-12-25 04:47:45', '2018-12-25 04:47:45', '', 'tuyen-dung', '', 'inherit', 'open', 'closed', '', 'tuyen-dung-2', '', '', '2018-12-25 04:47:45', '2018-12-25 04:47:45', '', 300, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/tuyen-dung.jpg', 0, 'attachment', 'image/jpeg', 0),
(303, 1, '2018-12-25 05:58:52', '2018-12-25 05:58:52', '[:vi]Khám ngoại trú được cung cấp tại phòng khám cho những trường hợp không cần thiết phải nhập viện hoặc nằm viện một ngày trong các cơ sở y tế, các bác sĩ phường và các bác sĩ chuyên khoa đảm bảo khám ngoại trú. Bệnh nhân trước tiên sẽ phải tìm đến bác sĩ tuyến một, tức là bác sĩ thực hành cho người lớn, bác sĩ nhi thực hành cho trẻ em và vị thành niên, bác sĩ nha khoa, bác sĩ phụ khoa mà trước tiên bệnh nhân cần phải đăng ký ở chỗ bác sĩ tuyến một.[:]', '[:vi]Các Dịch Vụ[:]', '', 'inherit', 'closed', 'closed', '', '215-revision-v1', '', '', '2018-12-25 05:58:52', '2018-12-25 05:58:52', '', 215, 'http://localhost:8000/Healthcare/source/215-revision-v1/', 0, 'revision', '', 0),
(304, 1, '2018-12-25 05:59:02', '2018-12-25 05:59:02', '[:vi]<h4>Dịch vụ cung cấp</h4>\r\nGiải pháp toàn diện\r\n\r\nGiải pháp quản lý bệnh viện toàn diện với\r\ncác hệ thống liên thông, đảm nhận vai trò rõ ràng.\r\nKhả năng nâng cấp, mở rộng dễ dàng.\r\n\r\nĐội ngũ triển khai chuyên nghiệp, hỗ trợ sau triển khai 24/7,\r\nluôn lắng nghe và giải đáp mọi thắc mắc của khách hàng.[:]', '[:vi]Các Dịch Vụ[:]', '', 'inherit', 'closed', 'closed', '', '215-revision-v1', '', '', '2018-12-25 05:59:02', '2018-12-25 05:59:02', '', 215, 'http://localhost:8000/Healthcare/source/215-revision-v1/', 0, 'revision', '', 0),
(305, 1, '2018-12-25 06:04:37', '2018-12-25 06:04:37', '[:vi]<h4>Dịch vụ cung cấp</h4>\r\n<h4>Giải pháp toàn diện</h4>\r\nGiải pháp quản lý bệnh viện toàn diện với\r\ncác hệ thống liên thông, đảm nhận vai trò rõ ràng.\r\nKhả năng nâng cấp, mở rộng dễ dàng.\r\n\r\nĐội ngũ triển khai chuyên nghiệp, hỗ trợ sau triển khai 24/7,\r\nluôn lắng nghe và giải đáp mọi thắc mắc của khách hàng.[:]', '[:vi]Các Dịch Vụ[:]', '', 'inherit', 'closed', 'closed', '', '215-revision-v1', '', '', '2018-12-25 06:04:37', '2018-12-25 06:04:37', '', 215, 'http://localhost:8000/Healthcare/source/215-revision-v1/', 0, 'revision', '', 0),
(306, 1, '2018-12-25 06:05:06', '2018-12-25 06:05:06', '[:vi]<h4>Dịch vụ cung cấp</h4>\r\nGiải pháp toàn diện<br/>\r\nGiải pháp quản lý bệnh viện toàn diện với<br/>\r\ncác hệ thống liên thông, đảm nhận vai trò rõ ràng.<br/>\r\nKhả năng nâng cấp, mở rộng dễ dàng.<br/>\r\n\r\nĐội ngũ triển khai chuyên nghiệp, hỗ trợ sau triển khai 24/7,<br/>\r\nluôn lắng nghe và giải đáp mọi thắc mắc của khách hàng.[:]', '[:vi]Các Dịch Vụ[:]', '', 'inherit', 'closed', 'closed', '', '215-revision-v1', '', '', '2018-12-25 06:05:06', '2018-12-25 06:05:06', '', 215, 'http://localhost:8000/Healthcare/source/215-revision-v1/', 0, 'revision', '', 0),
(307, 1, '2018-12-25 06:05:19', '2018-12-25 06:05:19', '[:vi]<h4>Dịch vụ cung cấp</h4>\r\nGiải pháp toàn diện<br/>\r\nGiải pháp quản lý bệnh viện toàn diện với<br/>\r\ncác hệ thống liên thông, đảm nhận vai trò rõ ràng.<br/>\r\nKhả năng nâng cấp, mở rộng dễ dàng.<br/><br/>\r\n\r\nĐội ngũ triển khai chuyên nghiệp, hỗ trợ sau triển khai 24/7,<br/>\r\nluôn lắng nghe và giải đáp mọi thắc mắc của khách hàng.[:]', '[:vi]Các Dịch Vụ[:]', '', 'inherit', 'closed', 'closed', '', '215-revision-v1', '', '', '2018-12-25 06:05:19', '2018-12-25 06:05:19', '', 215, 'http://localhost:8000/Healthcare/source/215-revision-v1/', 0, 'revision', '', 0),
(308, 1, '2018-12-25 06:12:28', '2018-12-25 06:12:28', '[:vi]Viện ung thư quốc tế Osaka OICI đứng đầu trong ba viện ung thư lớn nhất tại Nhật Bản về ung thư Đại trực tràng, Dạ dày và Phổi. \r\nLà viện duy nhất sở hữu công nghệ xạ trị Ion nặng tiên tiến, mang đến phương án tối ưu về điều trị ở chuẩn mực cao nhất trên thế giới. \r\n                        [:]', '[:vi]Viện Ung Thư Quốc Tế Osaka [:]', '', 'publish', 'closed', 'closed', '', 'vien-ung-thu-quoc-te-osaka', '', '', '2018-12-25 06:12:28', '2018-12-25 06:12:28', '', 0, 'http://localhost:8000/Healthcare/source/?post_type=doi_tac&#038;p=308', 0, 'doi_tac', '', 0),
(309, 1, '2018-12-25 06:12:23', '2018-12-25 06:12:23', '', '23', '', 'inherit', 'open', 'closed', '', '23', '', '', '2018-12-25 06:12:23', '2018-12-25 06:12:23', '', 308, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/23.png', 0, 'attachment', 'image/png', 0),
(310, 1, '2018-12-25 06:13:43', '2018-12-25 06:13:43', '[:vi]Ra đời năm 1898, BNH là một trong những bệnh viện tư nhân lâu đời nhất tại Thái Lan với chất lượng điều trị hàng đầu Châu Á về sản khoa và vô sinh hiếm muộn.[:]', '[:vi]Bệnh viện BNH [:]', '', 'publish', 'closed', 'closed', '', 'benh-vien-bnh', '', '', '2018-12-25 06:13:43', '2018-12-25 06:13:43', '', 0, 'http://localhost:8000/Healthcare/source/?post_type=doi_tac&#038;p=310', 0, 'doi_tac', '', 0),
(311, 1, '2018-12-25 06:13:10', '2018-12-25 06:13:10', '', '22', '', 'inherit', 'open', 'closed', '', '22', '', '', '2018-12-25 06:13:10', '2018-12-25 06:13:10', '', 310, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/22.png', 0, 'attachment', 'image/png', 0),
(312, 1, '2018-12-25 06:14:21', '2018-12-25 06:14:21', '[:vi]Viện Liệu pháp Miễn dịch quốc gia Nhật Bản (BIJ) là một nơi tốt nhất trong nghiên cứu chuyên sâu về Liệu pháp miễn dịch, đứng đầu là Tiến sĩ - Bác sĩ Hiroshi Terunuma cha đẻ của ngành miễn dịch thế giới. Ra đời từ năm 2004 đến nay, BIJ đã tiếp nhận và điều trị hơn 10,000 bệnh nhân với những thành công vượt bậc và được ghi nhận trên toàn thế giới.[:]', '[:vi]Viện Liệu Pháp Miễn Dịch Ung Thư Nhật Bản[:]', '', 'publish', 'closed', 'closed', '', 'vien-lieu-phap-mien-dich-ung-thu-nhat-ban', '', '', '2018-12-25 06:14:21', '2018-12-25 06:14:21', '', 0, 'http://localhost:8000/Healthcare/source/?post_type=doi_tac&#038;p=312', 0, 'doi_tac', '', 0),
(313, 1, '2018-12-25 06:14:17', '2018-12-25 06:14:17', '', '21', '', 'inherit', 'open', 'closed', '', '21', '', '', '2018-12-25 06:14:17', '2018-12-25 06:14:17', '', 312, 'http://localhost:8000/Healthcare/source/wp-content/uploads/2018/12/21.jpg', 0, 'attachment', 'image/jpeg', 0),
(315, 1, '2018-12-26 03:57:31', '2018-12-26 03:57:31', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-footer\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', '[:vi]THÔNG TIN WEBSITE[:]', 'thong-tin-website', 'publish', 'closed', 'closed', '', 'group_5c22fbd0749fb', '', '', '2018-12-26 07:22:11', '2018-12-26 07:22:11', '', 0, 'https://goldenhealthcarevn.com/?post_type=acf-field-group&#038;p=315', 0, 'acf-field-group', '', 0),
(316, 1, '2018-12-26 03:57:31', '2018-12-26 03:57:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Địa chỉ', 'footer_address', 'publish', 'closed', 'closed', '', 'field_5c22fbd3727b7', '', '', '2018-12-26 03:57:31', '2018-12-26 03:57:31', '', 315, 'https://goldenhealthcarevn.com/?post_type=acf-field&p=316', 0, 'acf-field', '', 0),
(317, 1, '2018-12-26 03:57:32', '2018-12-26 03:57:32', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Số điện thoại', 'footer_phone', 'publish', 'closed', 'closed', '', 'field_5c22fbe6727b8', '', '', '2018-12-26 03:57:32', '2018-12-26 03:57:32', '', 315, 'https://goldenhealthcarevn.com/?post_type=acf-field&p=317', 1, 'acf-field', '', 0),
(318, 1, '2018-12-26 03:57:33', '2018-12-26 03:57:33', 'a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Email', 'footer_email', 'publish', 'closed', 'closed', '', 'field_5c22fbfc727b9', '', '', '2018-12-26 03:57:33', '2018-12-26 03:57:33', '', 315, 'https://goldenhealthcarevn.com/?post_type=acf-field&p=318', 2, 'acf-field', '', 0),
(319, 1, '2018-12-26 03:57:33', '2018-12-26 03:57:33', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Google map', 'footer_google_map', 'publish', 'closed', 'closed', '', 'field_5c22fc10727ba', '', '', '2018-12-26 07:22:11', '2018-12-26 07:22:11', '', 315, 'https://goldenhealthcarevn.com/?post_type=acf-field&#038;p=319', 3, 'acf-field', '', 0),
(320, 1, '2018-12-26 04:03:20', '2018-12-26 04:03:20', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-footer\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', '[:vi]MẠNG XÃ HỘI[:]', 'mang-xa-hoi', 'publish', 'closed', 'closed', '', 'group_5c22fd4124f40', '', '', '2018-12-26 04:03:20', '2018-12-26 04:03:20', '', 0, 'https://goldenhealthcarevn.com/?post_type=acf-field-group&#038;p=320', 0, 'acf-field-group', '', 0),
(321, 1, '2018-12-26 04:03:20', '2018-12-26 04:03:20', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Socials', 'footer_socials', 'publish', 'closed', 'closed', '', 'field_5c22fd4e6ad7d', '', '', '2018-12-26 04:03:20', '2018-12-26 04:03:20', '', 320, 'https://goldenhealthcarevn.com/?post_type=acf-field&p=321', 0, 'acf-field', '', 0),
(322, 1, '2018-12-26 04:03:20', '2018-12-26 04:03:20', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Social Name', 'social_name', 'publish', 'closed', 'closed', '', 'field_5c22fd686ad7e', '', '', '2018-12-26 04:03:20', '2018-12-26 04:03:20', '', 321, 'https://goldenhealthcarevn.com/?post_type=acf-field&p=322', 0, 'acf-field', '', 0),
(323, 1, '2018-12-26 04:03:20', '2018-12-26 04:03:20', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Social Link', 'social_link', 'publish', 'closed', 'closed', '', 'field_5c22fd716ad7f', '', '', '2018-12-26 04:03:20', '2018-12-26 04:03:20', '', 321, 'https://goldenhealthcarevn.com/?post_type=acf-field&p=323', 1, 'acf-field', '', 0),
(324, 1, '2018-12-26 04:13:47', '2018-12-26 04:13:47', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-footer\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', '[:vi]THỜI GIAN LÀM VIỆC CÁC CHUYÊN KHOA[:]', 'thoi-gian-lam-viec-cac-chuyen-khoa', 'publish', 'closed', 'closed', '', 'group_5c22ffcddb8e2', '', '', '2018-12-26 04:15:14', '2018-12-26 04:15:14', '', 0, 'https://goldenhealthcarevn.com/?post_type=acf-field-group&#038;p=324', 0, 'acf-field-group', '', 0),
(325, 1, '2018-12-26 04:13:47', '2018-12-26 04:13:47', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Giờ làm việc', 'footer_working_time', 'publish', 'closed', 'closed', '', 'field_5c22ffd774f66', '', '', '2018-12-26 04:15:14', '2018-12-26 04:15:14', '', 324, 'https://goldenhealthcarevn.com/?post_type=acf-field&#038;p=325', 0, 'acf-field', '', 0),
(326, 1, '2018-12-26 06:50:46', '2018-12-26 06:50:46', '', '[:vi]Hình ảnh về golden healthcare[:]', '', 'publish', 'closed', 'closed', '', 'hinh-anh-ve-golden-healthcare', '', '', '2018-12-26 06:50:46', '2018-12-26 06:50:46', '', 0, 'https://goldenhealthcarevn.com/?post_type=hinh_anh&#038;p=326', 0, 'hinh_anh', '', 0),
(327, 1, '2018-12-26 06:50:39', '2018-12-26 06:50:39', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2018-12-26 06:50:39', '2018-12-26 06:50:39', '', 326, 'https://goldenhealthcarevn.com/wp-content/uploads/2018/12/download.jpg', 0, 'attachment', 'image/jpeg', 0),
(328, 1, '2018-12-26 06:51:54', '2018-12-26 06:51:54', '', '[:vi]Hình ảnh về phòng khám[:]', '', 'publish', 'closed', 'closed', '', 'hinh-anh-ve-phong-kham', '', '', '2018-12-26 06:54:49', '2018-12-26 06:54:49', '', 0, 'https://goldenhealthcarevn.com/?post_type=hinh_anh&#038;p=328', 0, 'hinh_anh', '', 0),
(329, 1, '2018-12-26 06:51:49', '2018-12-26 06:51:49', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2018-12-26 06:51:49', '2018-12-26 06:51:49', '', 328, 'https://goldenhealthcarevn.com/wp-content/uploads/2018/12/images.jpg', 0, 'attachment', 'image/jpeg', 0),
(330, 1, '2018-12-26 06:54:46', '2018-12-26 06:54:46', '', 'images', '', 'inherit', 'open', 'closed', '', 'images-2', '', '', '2018-12-26 06:54:46', '2018-12-26 06:54:46', '', 328, 'https://goldenhealthcarevn.com/wp-content/uploads/2018/12/images-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(331, 1, '2018-12-26 06:58:01', '2018-12-26 06:58:01', '', '[:vi]Hình ảnh về nhà thuốc[:]', '', 'publish', 'closed', 'closed', '', 'hinh-anh-ve-nha-thuoc', '', '', '2018-12-26 06:58:01', '2018-12-26 06:58:01', '', 0, 'https://goldenhealthcarevn.com/?post_type=hinh_anh&#038;p=331', 0, 'hinh_anh', '', 0),
(332, 1, '2018-12-26 06:57:54', '2018-12-26 06:57:54', '', 'MAT', '', 'inherit', 'open', 'closed', '', 'mat', '', '', '2018-12-26 06:57:54', '2018-12-26 06:57:54', '', 331, 'https://goldenhealthcarevn.com/wp-content/uploads/2018/12/MAT.jpg', 0, 'attachment', 'image/jpeg', 0),
(333, 1, '2018-12-26 06:59:16', '2018-12-26 06:59:16', '', '[:vi]Hình ảnh về những buổi khám chữa bệnh[:]', '', 'publish', 'closed', 'closed', '', 'hinh-anh-ve-nhung-buoi-kham-chua-benh', '', '', '2018-12-26 06:59:16', '2018-12-26 06:59:16', '', 0, 'https://goldenhealthcarevn.com/?post_type=hinh_anh&#038;p=333', 0, 'hinh_anh', '', 0),
(334, 1, '2018-12-26 06:59:09', '2018-12-26 06:59:09', '', 'img_6893', '', 'inherit', 'open', 'closed', '', 'img_6893', '', '', '2018-12-26 06:59:09', '2018-12-26 06:59:09', '', 333, 'https://goldenhealthcarevn.com/wp-content/uploads/2018/12/img_6893.jpg', 0, 'attachment', 'image/jpeg', 0),
(335, 1, '2018-12-26 07:00:45', '2018-12-26 07:00:45', '', '[:vi]Hình ảnh về phòng khám đa khoa[:]', '', 'publish', 'closed', 'closed', '', 'hinh-anh-ve-phong-kham-da-khoa', '', '', '2018-12-26 07:00:45', '2018-12-26 07:00:45', '', 0, 'https://goldenhealthcarevn.com/?post_type=hinh_anh&#038;p=335', 0, 'hinh_anh', '', 0),
(336, 1, '2018-12-26 07:00:40', '2018-12-26 07:00:40', '', 'hinh-anh-vigor-health-Mini_7_635316836639641250', '', 'inherit', 'open', 'closed', '', 'hinh-anh-vigor-health-mini_7_635316836639641250', '', '', '2018-12-26 07:00:40', '2018-12-26 07:00:40', '', 335, 'https://goldenhealthcarevn.com/wp-content/uploads/2018/12/hinh-anh-vigor-health-Mini_7_635316836639641250.jpg', 0, 'attachment', 'image/jpeg', 0),
(337, 1, '2018-12-26 07:21:44', '2018-12-26 07:21:44', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', 'b2e7ec7ceea41e69d383cf24633bd02e', '', '', '2018-12-26 07:21:44', '2018-12-26 07:21:44', '', 0, 'https://goldenhealthcarevn.com/b2e7ec7ceea41e69d383cf24633bd02e/', 0, 'oembed_cache', '', 0),
(338, 1, '2019-01-03 16:38:40', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-03 16:38:40', '0000-00-00 00:00:00', '', 0, 'https://goldenhealthcarevn.com/?p=338', 0, 'post', '', 0),
(339, 1, '2019-01-03 16:42:53', '2019-01-03 16:42:53', '', 'VACH DA', '', 'inherit', 'open', 'closed', '', 'vach-da', '', '', '2019-01-03 16:42:53', '2019-01-03 16:42:53', '', 39, 'https://goldenhealthcarevn.com/wp-content/uploads/2018/12/VACH-DA.jpg', 0, 'attachment', 'image/jpeg', 0),
(340, 1, '2019-01-03 16:44:57', '2019-01-03 16:44:57', '', 'SANH (5)', '', 'inherit', 'open', 'closed', '', 'sanh-5', '', '', '2019-01-03 16:44:57', '2019-01-03 16:44:57', '', 37, 'https://goldenhealthcarevn.com/wp-content/uploads/2018/12/SANH-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(341, 1, '2019-01-03 16:45:55', '2019-01-03 16:45:55', '', 'SANH (4)', '', 'inherit', 'open', 'closed', '', 'sanh-4', '', '', '2019-01-03 16:45:55', '2019-01-03 16:45:55', '', 35, 'https://goldenhealthcarevn.com/wp-content/uploads/2018/12/SANH-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(342, 1, '2019-01-03 16:46:46', '2019-01-03 16:46:46', '', 'SANH (2)', '', 'inherit', 'open', 'closed', '', 'sanh-2', '', '', '2019-01-03 16:46:46', '2019-01-03 16:46:46', '', 33, 'https://goldenhealthcarevn.com/wp-content/uploads/2018/12/SANH-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(343, 1, '2019-01-03 16:47:19', '2019-01-03 16:47:19', '', 'SANH (3)', '', 'inherit', 'open', 'closed', '', 'sanh-3', '', '', '2019-01-03 16:47:19', '2019-01-03 16:47:19', '', 31, 'https://goldenhealthcarevn.com/wp-content/uploads/2018/12/SANH-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(344, 1, '2019-01-03 16:47:49', '2019-01-03 16:47:49', '', 'SANH (1)', '', 'inherit', 'open', 'closed', '', 'sanh-1', '', '', '2019-01-03 16:47:49', '2019-01-03 16:47:49', '', 29, 'https://goldenhealthcarevn.com/wp-content/uploads/2018/12/SANH-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(345, 1, '2019-01-03 16:48:30', '2019-01-03 16:48:30', '', 'LAU 2 (1)', '', 'inherit', 'open', 'closed', '', 'lau-2-1', '', '', '2019-01-03 16:48:30', '2019-01-03 16:48:30', '', 27, 'https://goldenhealthcarevn.com/wp-content/uploads/2018/12/LAU-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(346, 1, '2019-01-03 16:52:36', '2019-01-03 16:52:36', '', 'LAU 3', '', 'inherit', 'open', 'closed', '', 'lau-3', '', '', '2019-01-03 16:52:36', '2019-01-03 16:52:36', '', 25, 'https://goldenhealthcarevn.com/wp-content/uploads/2018/12/LAU-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(347, 1, '2019-01-03 16:53:52', '2019-01-03 16:53:52', '', 'LAU 1 (1)', '', 'inherit', 'open', 'closed', '', 'lau-1-1', '', '', '2019-01-03 16:53:52', '2019-01-03 16:53:52', '', 23, 'https://goldenhealthcarevn.com/wp-content/uploads/2018/12/LAU-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(348, 1, '2019-01-03 16:54:24', '2019-01-03 16:54:24', '', '[:vi]Lầu 1 - 2[:]', '', 'publish', 'closed', 'closed', '', 'lau-1-2', '', '', '2019-01-03 16:54:24', '2019-01-03 16:54:24', '', 0, 'https://goldenhealthcarevn.com/?post_type=slide_introduction&#038;p=348', 3, 'slide_introduction', '', 0),
(349, 1, '2019-01-03 16:54:21', '2019-01-03 16:54:21', '', 'LAU 1 (2)', '', 'inherit', 'open', 'closed', '', 'lau-1-2', '', '', '2019-01-03 16:54:21', '2019-01-03 16:54:21', '', 348, 'https://goldenhealthcarevn.com/wp-content/uploads/2019/01/LAU-1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(350, 1, '2019-01-03 16:54:45', '2019-01-03 16:54:45', '', '[:vi]Lầu 1 - 3[:]', '', 'publish', 'closed', 'closed', '', 'lau-1-3', '', '', '2019-01-03 16:54:45', '2019-01-03 16:54:45', '', 0, 'https://goldenhealthcarevn.com/?post_type=slide_introduction&#038;p=350', 4, 'slide_introduction', '', 0),
(351, 1, '2019-01-03 16:54:42', '2019-01-03 16:54:42', '', 'LAU 1 (3)', '', 'inherit', 'open', 'closed', '', 'lau-1-3', '', '', '2019-01-03 16:54:42', '2019-01-03 16:54:42', '', 350, 'https://goldenhealthcarevn.com/wp-content/uploads/2019/01/LAU-1-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(352, 1, '2019-01-04 02:09:54', '2019-01-04 02:09:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Thời gian làm', 'departments_time', 'publish', 'closed', 'closed', '', 'field_5c2ec062675fc', '', '', '2019-01-04 02:09:54', '2019-01-04 02:09:54', '', 179, 'https://goldenhealthcarevn.com/?post_type=acf-field&p=352', 1, 'acf-field', '', 0),
(353, 1, '2019-01-04 02:19:19', '2019-01-04 02:19:19', '', 'Lịch làm việc', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2019-01-04 02:19:19', '2019-01-04 02:19:19', '', 92, 'https://goldenhealthcarevn.com/92-revision-v1/', 0, 'revision', '', 0),
(354, 1, '2019-01-04 06:25:43', '2019-01-04 06:25:43', '', '[:vi]Bác sĩ[:]', '', 'publish', 'closed', 'closed', '', 'bac-si', '', '', '2019-01-04 06:25:43', '2019-01-04 06:25:43', '', 0, 'https://goldenhealthcarevn.com/?page_id=354', 0, 'page', '', 0),
(355, 1, '2019-01-04 06:25:43', '2019-01-04 06:25:43', '', '[:vi]Bác sĩ[:]', '', 'inherit', 'closed', 'closed', '', '354-revision-v1', '', '', '2019-01-04 06:25:43', '2019-01-04 06:25:43', '', 354, 'https://goldenhealthcarevn.com/354-revision-v1/', 0, 'revision', '', 0),
(356, 1, '2019-01-04 06:26:01', '2019-01-04 06:26:01', ' ', '', '', 'publish', 'closed', 'closed', '', '356', '', '', '2019-01-04 06:26:01', '2019-01-04 06:26:01', '', 0, 'https://goldenhealthcarevn.com/?p=356', 6, 'nav_menu_item', '', 0);

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
(24, 12, '_departments_image', 'field_5c1719b98374b'),
(25, 1, 'departments_image', ''),
(26, 1, '_departments_image', 'field_5c1719b98374b'),
(27, 8, 'departments_time', '[:vi]7h30 - 17h[:]'),
(28, 8, '_departments_time', 'field_5c2ec062675fc'),
(29, 5, 'departments_time', '[:vi]7h30 - 17h[:]'),
(30, 5, '_departments_time', 'field_5c2ec062675fc'),
(31, 12, 'departments_time', '[:vi]7h30 - 17h[:]'),
(32, 12, '_departments_time', 'field_5c2ec062675fc');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Khoa tổng quát', 'khong-phan-loai', 0, 0),
(2, 'Header', 'header', 0, 0),
(3, 'Khoa Tim', 'khoa-tim', 0, 0),
(4, 'Khoa tai mũi họng', 'khoa-tai-mui-hong', 0, 0),
(5, 'Khoa Mắt', 'khoa-mat', 0, 0),
(6, 'Khoa tiêu hóa', 'khoa-tieu-hoa', 0, 0),
(7, 'Khoa Sàng Lọc', 'khoa-sang-loc', 0, 0),
(8, 'Khoa Chấn Thương', 'khoa-chan-thuong', 0, 0),
(9, 'Nội tiết', 'noi-tiet', 0, 0),
(10, 'Phẫu Thuật Thẩm Mỹ', 'phau-thuat-tham-my', 0, 0),
(11, 'Khoa Thận', 'khoa-than', 0, 0),
(12, 'Khoa Nhi', 'khoa-nhi', 0, 0),
(13, 'Sản Khoa Và Phụ Khoa', 'san-khoa-va-phu-khoa', 0, 0),
(14, 'Khoa Tổng Quát', 'khoa-tong-quat', 0, 0),
(16, 'google', 'google', 0, 0),
(17, 'default-calendar', 'default-calendar', 0, 0),
(18, 'Giới thiệu', 'gioi-thieu', 0, 0),
(19, 'Dịch vụ y tế', 'dich-vu-y-te', 0, 0),
(20, 'Dịch vụ A', 'dich-vu-a', 0, 0),
(21, 'Dịch vụ B', 'dich-vu-b', 0, 0),
(22, 'Dịch vụ C', 'dich-vu-c', 0, 0),
(23, 'Dịch vụ D', 'dich-vu-d', 0, 0),
(24, 'Các Chuyên Khoa', 'cac-chuyen-khoa', 0, 0),
(26, 'Tư vấn về khoa mắt', 'tu-van-ve-khoa-mat', 0, 0),
(27, 'Tư vấn về bệnh lao', 'tu-van-ve-benh-lao', 0, 0);

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
(41, 20, 0),
(41, 21, 0),
(41, 22, 0),
(41, 23, 0),
(43, 21, 0),
(43, 22, 0),
(43, 23, 0),
(44, 19, 0),
(46, 18, 0),
(47, 19, 0),
(48, 18, 0),
(51, 20, 0),
(51, 21, 0),
(51, 22, 0),
(52, 20, 0),
(52, 21, 0),
(52, 22, 0),
(52, 23, 0),
(53, 20, 0),
(53, 21, 0),
(53, 22, 0),
(54, 20, 0),
(54, 21, 0),
(54, 22, 0),
(54, 23, 0),
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
(200, 14, 0),
(259, 16, 0),
(259, 17, 0),
(264, 1, 0),
(264, 7, 0),
(264, 11, 0),
(264, 12, 0),
(273, 20, 0),
(273, 21, 0),
(273, 22, 0),
(273, 23, 0),
(280, 18, 0),
(282, 18, 0),
(283, 18, 0),
(284, 18, 0),
(285, 18, 0),
(286, 19, 0),
(287, 18, 0),
(288, 19, 0),
(289, 19, 0),
(290, 18, 0),
(291, 19, 0),
(296, 26, 0),
(298, 26, 0),
(356, 2, 0);

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
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 34),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '[:vi]Khoa mắt của Bệnh viện Việt Pháp Hà Nội cung cấp dịch vụ chăm sóc mắt toàn diện cho bệnh nhân nội và ngoại trú. Đội ngũ bác sĩ nhãn khoa cam kết phục vụ chăm sóc và bảo vệ đôi mắt sáng cho người bệnh. Khoa cung cấp đa dạng các dịch vụ khám và điều trị các bệnh mắt thường gặp cũng như các bệnh gây mù như bệnh glô-côm (hay còn gọi là thiên đầu thống), bệnh đục thể thủy tinh. Khoa ứng dụng các trang thiết bị chẩn đoán hình ảnh hiện đại nhằm phát hiện sớm các bệnh về mắt.\r\n\r\nNhãn khoa tổng quát\r\n\r\nCác bác sĩ nhãn khoa đánh giá và điều trị bệnh về mắt, mi mắt, tổn thương vùng mắt và xương quanh mắt. Dịch vụ nhãn khoa tổng quát bao gồm việc chẩn đoán và điều trị các bệnh sau:\r\n\r\nBệnh glô-côm và đục thể thủy tinh\r\nBệnh viêm nhiễm ở mắt như khô mắt, viêm kết mạc\r\nBệnh về mí mắt và viêm mí mắt\r\nĐiều trị nội và ngoại khoa võng mạc\r\nBệnh viêm màng bồ đào\r\nBệnh võng mạc tiểu đường\r\nThoái hóa hoàng điểm\r\nCác bệnh mắt trẻ em\r\nBệnh lác (lé) mắt\r\nKhám đo thị lực\r\nĐánh giá thị giác hai mắt/ lác (lé) mắt\r\nĐánh giá sắc giác\r\nĐánh giá thị lực trẻ em\r\nĐánh giá thị lực, chức năng thị giác người cao tuổi\r\nĐánh giá phẫu thuật tật khúc xạ\r\nKính áp tròng và dịch vụ liên quan\r\nBệnh giác mạc\r\nCấp cứu chấn thương phức tạp\r\nKhoa tiếp nhận bệnh nhân đến khám chữa bệnh  ngoại trú hoặc phối hợp với các chuyên khoa khác cung cấp dịch vụ chăm sóc sức khỏe cho bệnh nhân nội trú cũng như bệnh nhân cấp cứu.\r\n\r\nCác hoạt động và dịch vụ được thực hiện theo quy trình và phác đồ của khoa cũng như chính sách chung của Bệnh viện.[:]', 0, 1),
(6, 6, 'category', '', 0, 1),
(7, 7, 'category', '', 0, 3),
(8, 8, 'category', '[:vi]- Tổ chức thực hiện khám, điều trị bệnh nhân có bệnh lý thuộc chuyên khoa chấn thương chỉnh hình và cột sống, hội chẩn tham gia ý kiến điều trị các bệnh nhân liên quan.\r\n- Tổ chức triển khai và thực hiện khám, cấp cứu và điều trị trong toàn bệnh viện những bệnh nhân có bệnh lý trong lĩnh vực chấn thương chỉnh hình và cột sống.\r\n- Tổ chức thực hiện công tác dự trù, bảo quản, vật tư, trang thiết bị kịp thời phục vụ cấp cứu và điều trị bệnh nhân.\r\n- Tổ chức triển khai, thực hiện nghiên cứu khoa học về lĩnh vực Chấn thương chỉnh hình và cột sống .\r\n- Tổ chức triển khai, thực hiện công tác đào tạo, đào tạo lại về lĩnh vực Chấn thương chỉnh hình và cột sống  theo yêu cầu của bệnh viện.\r\n- Đề xuất và thực hiện hợp tác với các tổ chức trong nước, Quốc tế về lĩnh vực chuyên khoa Chấn thương chỉnh hình và cột sống.\r\n- Tham mưu đề xuất, tư vấn cho giám đốc bệnh viện và các phòng chức năng về các hoạt động liên quan đến lĩnh vực Chấn thương chỉnh hình và cột sống nhằm tăng cường hiệu quả, an toàn, nâng cao chất lượng khám và chữa bệnh.\r\n- Tổ chức quản lý nhân lực, trang thiết bị, an ninh, an toàn lao động theo quy định.\r\n- Thực hiện các nhiệm vụ khác do Bệnh viện Bạch Mai giao và theo quy định của pháp luật.[:]', 0, 2),
(9, 9, 'category', '', 0, 1),
(10, 10, 'category', '', 0, 1),
(11, 11, 'category', '', 0, 2),
(12, 12, 'category', '[:vi]Khoa Nhi và Sơ sinh của Bệnh viện Việt Pháp Hà Nội (BVVPHN) cung cấp dịch vụ chăm sóc sức khỏe toàn diện cho trẻ từ lúc mới chào đời cho đến tuổi vị thành niên (dưới 16 tuổi). Với đội ngũ bác sĩ nhi khoa nhiều kinh nghiệm, được đào tạo tại việt nam và các nước châu âu, cùng sự hợp tác với các bác sĩ nhi khoa chuyên sâu đến từ các bệnh viện đầu nghành của việt nam và các nước phát triển. Chúng tôi mang đến dịch vụ chăm sóc sức khỏe toàn diện cho hầu hết các bệnh thường gặp ở trẻ em trong mọi lĩnh vực nhi khoa như các bệnh nhiễm trùng, nhiệt đới, tim mạch, hô hấp dị ứng, tiêu hóa, thần kinh, tai mũi họng, da liễu, thận tiết niệu, nội tiết, sơ sinh và nhi đa khoa.[:]', 0, 3),
(13, 13, 'category', '', 0, 1),
(14, 14, 'category', '', 0, 2),
(16, 16, 'calendar_feed', '', 0, 1),
(17, 17, 'calendar_type', '', 0, 1),
(18, 18, 'chuyen_muc_hoat_dong', '', 0, 9),
(19, 19, 'chuyen_muc_hoat_dong', '', 0, 6),
(20, 20, 'tab_services', '', 0, 6),
(21, 21, 'tab_services', '', 0, 7),
(22, 22, 'tab_services', '', 0, 7),
(23, 23, 'tab_services', '', 0, 5),
(24, 24, 'chuyen_muc_hoat_dong', '', 0, 0),
(26, 26, 'dwqa-question_category', '', 0, 2),
(27, 27, 'dwqa-question_category', '', 0, 0);

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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"50ff15961f06aee29d3dc6b6c3372b1c2c4cbc42950998a90a01af1e9a6c54e7\";a:4:{s:10:\"expiration\";i:1546706311;s:2:\"ip\";s:14:\"123.21.137.209\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1546533511;}s:64:\"af0b97fe894f054f5014ba259df7ab2f787ea1c24b57f8f72eb13ff047138051\";a:4:{s:10:\"expiration\";i:1546740548;s:2:\"ip\";s:12:\"103.199.7.52\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1546567748;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '338'),
(18, 1, 'closedpostboxes_slide_introduction', 'a:0:{}'),
(19, 1, 'metaboxhidden_slide_introduction', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(21, 1, 'wp_user-settings-time', '1545718419'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:32:\"add-post-type-slide_introduction\";i:1;s:21:\"add-post-type-dich_vu\";i:2;s:23:\"add-post-type-hoat_dong\";i:3;s:12:\"add-post_tag\";}'),
(24, 1, 'nav_menu_recently_edited', '2'),
(25, 1, 'manageedit-eventcolumnshidden', 'a:1:{i:0;s:8:\"event-id\";}'),
(26, 1, 'closedpostboxes_post', 'a:0:{}'),
(27, 1, 'metaboxhidden_post', 'a:12:{i:0;s:23:\"acf-group_5c1870ffbb0d9\";i:1;s:23:\"acf-group_5c13668b0b6c8\";i:2;s:23:\"acf-group_5c17199d60df2\";i:3;s:23:\"acf-group_5c135b0914750\";i:4;s:23:\"acf-group_5c111f078e16a\";i:5;s:12:\"revisionsdiv\";i:6;s:11:\"postexcerpt\";i:7;s:13:\"trackbacksdiv\";i:8;s:16:\"commentstatusdiv\";i:9;s:11:\"commentsdiv\";i:10;s:7:\"slugdiv\";i:11;s:9:\"authordiv\";}'),
(28, 1, 'acf_user_settings', 'a:0:{}'),
(29, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"103.199.7.0\";}'),
(30, 1, 'meta-box-order_theme-options_page_acf-options-footer', 'a:2:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:71:\"acf-group_5c22fd4124f40,acf-group_5c22fbd0749fb,acf-group_5c22ffcddb8e2\";}'),
(31, 1, 'screen_layout_theme-options_page_acf-options-footer', '2');

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
-- Indexes for table `psm_manage_schedule`
--
ALTER TABLE `psm_manage_schedule`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `wp_em_bookings`
--
ALTER TABLE `wp_em_bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `person_id` (`person_id`),
  ADD KEY `booking_status` (`booking_status`);

--
-- Indexes for table `wp_em_events`
--
ALTER TABLE `wp_em_events`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `event_status` (`event_status`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `blog_id` (`blog_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `event_start` (`event_start`),
  ADD KEY `event_end` (`event_end`),
  ADD KEY `event_start_date` (`event_start_date`),
  ADD KEY `event_end_date` (`event_end_date`);

--
-- Indexes for table `wp_em_locations`
--
ALTER TABLE `wp_em_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_country` (`location_country`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `blog_id` (`blog_id`),
  ADD KEY `location_state` (`location_state`(191)),
  ADD KEY `location_region` (`location_region`(191));

--
-- Indexes for table `wp_em_meta`
--
ALTER TABLE `wp_em_meta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_em_tickets`
--
ALTER TABLE `wp_em_tickets`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `wp_em_tickets_bookings`
--
ALTER TABLE `wp_em_tickets_bookings`
  ADD PRIMARY KEY (`ticket_booking_id`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `ticket_id` (`ticket_id`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_my_calendar`
--
ALTER TABLE `wp_my_calendar`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `event_category` (`event_category`);

--
-- Indexes for table `wp_my_calendar_categories`
--
ALTER TABLE `wp_my_calendar_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `wp_my_calendar_category_relationships`
--
ALTER TABLE `wp_my_calendar_category_relationships`
  ADD PRIMARY KEY (`relationship_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `wp_my_calendar_events`
--
ALTER TABLE `wp_my_calendar_events`
  ADD PRIMARY KEY (`occur_id`),
  ADD KEY `occur_event_id` (`occur_event_id`);

--
-- Indexes for table `wp_my_calendar_locations`
--
ALTER TABLE `wp_my_calendar_locations`
  ADD PRIMARY KEY (`location_id`);

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
-- AUTO_INCREMENT for table `psm_manage_schedule`
--
ALTER TABLE `psm_manage_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_em_bookings`
--
ALTER TABLE `wp_em_bookings`
  MODIFY `booking_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_em_events`
--
ALTER TABLE `wp_em_events`
  MODIFY `event_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_em_locations`
--
ALTER TABLE `wp_em_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_em_meta`
--
ALTER TABLE `wp_em_meta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_em_tickets`
--
ALTER TABLE `wp_em_tickets`
  MODIFY `ticket_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_em_tickets_bookings`
--
ALTER TABLE `wp_em_tickets_bookings`
  MODIFY `ticket_booking_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_my_calendar`
--
ALTER TABLE `wp_my_calendar`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_my_calendar_categories`
--
ALTER TABLE `wp_my_calendar_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_my_calendar_category_relationships`
--
ALTER TABLE `wp_my_calendar_category_relationships`
  MODIFY `relationship_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_my_calendar_events`
--
ALTER TABLE `wp_my_calendar_events`
  MODIFY `occur_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_my_calendar_locations`
--
ALTER TABLE `wp_my_calendar_locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1514;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1200;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=357;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
