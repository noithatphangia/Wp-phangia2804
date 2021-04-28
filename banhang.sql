-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 17, 2019 at 07:12 AM
-- Server version: 5.7.26
-- PHP Version: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `noithat`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` text COLLATE utf8_unicode_ci,
  `password` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `group` int(11) DEFAULT NULL,
  `is_deleted` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1012 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `group`, `is_deleted`) VALUES
(1011, 'admin123', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_vn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_vn` text COLLATE utf8_unicode_ci,
  `short_en` text COLLATE utf8_unicode_ci,
  `content_vn` longtext COLLATE utf8_unicode_ci,
  `content_en` longtext COLLATE utf8_unicode_ci,
  `num` int(11) DEFAULT NULL,
  `img` text COLLATE utf8_unicode_ci,
  `cid` int(11) DEFAULT NULL,
  `dated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` int(11) DEFAULT '0',
  `unique_key_vn` text COLLATE utf8_unicode_ci,
  `unique_key_en` text COLLATE utf8_unicode_ci,
  `title_vn` text COLLATE utf8_unicode_ci,
  `title_en` text COLLATE utf8_unicode_ci,
  `keyword_vn` text COLLATE utf8_unicode_ci,
  `keyword_en` text COLLATE utf8_unicode_ci,
  `des_vn` text COLLATE utf8_unicode_ci,
  `des_en` text COLLATE utf8_unicode_ci,
  `view` int(11) DEFAULT '0',
  `is_noindex` tinyint(4) DEFAULT '1',
  `is_lock` tinyint(4) DEFAULT '0',
  `admin_id` int(11) DEFAULT NULL,
  `admin_name` text COLLATE utf8_unicode_ci,
  `publish_date` datetime DEFAULT NULL,
  `active_future` tinyint(4) DEFAULT '0',
  `des_vn_char` int(11) NOT NULL DEFAULT '0',
  `des_en_char` int(11) NOT NULL DEFAULT '0',
  `hot` tinyint(4) NOT NULL DEFAULT '0',
  `dongsukien` tinyint(4) NOT NULL DEFAULT '0',
  `not_in_widget` tinyint(4) NOT NULL DEFAULT '0',
  `pin` tinyint(4) NOT NULL DEFAULT '0',
  `categoriebranch` text COLLATE utf8_unicode_ci NOT NULL,
  `ext_url` text COLLATE utf8_unicode_ci NOT NULL,
  `new_tab` tinyint(4) NOT NULL DEFAULT '0',
  `tag_vn` text COLLATE utf8_unicode_ci NOT NULL,
  `rich_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'articles',
  PRIMARY KEY (`id`),
  KEY `fk_art_cat` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=3227 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_vn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `has_child` tinyint(4) DEFAULT NULL,
  `comp` tinyint(4) DEFAULT NULL,
  `img` text COLLATE utf8_unicode_ci,
  `active` tinyint(4) DEFAULT NULL,
  `short_vn` text COLLATE utf8_unicode_ci,
  `content_vn` longtext COLLATE utf8_unicode_ci,
  `seo_f_vn` text COLLATE utf8_unicode_ci,
  `unique_key_vn` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_vn` text COLLATE utf8_unicode_ci,
  `keyword_vn` text COLLATE utf8_unicode_ci,
  `des_vn` text COLLATE utf8_unicode_ci,
  `is_deleted` tinyint(4) DEFAULT '1',
  `ext_url` text COLLATE utf8_unicode_ci,
  `des_vn_char` int(11) NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT '0',
  `new_tab` tinyint(4) NOT NULL DEFAULT '1',
  `rich_schema` text COLLATE utf8_unicode_ci,
  `intro` tinyint(4) NOT NULL DEFAULT '0',
  `rich_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ct_ct` (`pid`),
  KEY `fk_ct_comp` (`comp`)
) ENGINE=MyISAM AUTO_INCREMENT=318 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_vn`, `name_en`, `num`, `pid`, `has_child`, `comp`, `img`, `active`, `short_vn`, `content_vn`, `seo_f_vn`, `unique_key_vn`, `title_vn`, `keyword_vn`, `des_vn`, `is_deleted`, `ext_url`, `des_vn_char`, `view`, `new_tab`, `rich_schema`, `intro`, `rich_type`) VALUES
(311, 'tin tức', NULL, 3, 0, 1, 9, '', 1, '', '', NULL, 'tin-tuc', 'tin tức', NULL, '', 1, '', 0, 0, 1, '', 0, NULL),
(301, 'giới thiệu', NULL, 1, 0, 0, 3, NULL, 1, 'giới thiệu chung', '<p>aaa</p>\r\n', NULL, 'gioi-thieu', 'giới thiệu', NULL, 'giới thiệu chung', 1, '', 0, 0, 1, '', 0, NULL),
(302, 'sản phẩm', NULL, 2, 0, 1, 9, NULL, 1, 'aa', '', NULL, 'aa', 'sản phẩm', NULL, 'aa', 1, '', 0, 0, 1, '', 0, NULL),
(300, 'Trang chủ', NULL, 0, 0, 0, 5, NULL, 1, 'a 1', '', NULL, 'Trang-chu', 'Trang chủ', NULL, 'a', 0, '', 0, 0, 1, '', 2, NULL),
(309, 'sản phẩm chưa phân loại', NULL, 100, 0, 0, 2, '', 0, '', '', NULL, 'san-pham-chua-phan-loai', 'sản phẩm chưa phân loại', NULL, '', 0, '', 0, 0, 1, '', 0, NULL),
(310, 'bài viết chưa phân loại', NULL, 100, 0, 0, 1, '', 0, '', '', NULL, 'bai-viet-chua-phan-loai', 'bài viết chưa phân loại', NULL, '', 0, '', 0, 0, 1, '', 0, NULL),
(312, 'Liên hệ', NULL, 4, 0, 0, 23, '', 1, '', '<p>li&ecirc;n hệ 1</p>\r\n', NULL, 'Lien-he', 'Liên hệ', NULL, '', 1, '', 0, 0, 1, '', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `cmt_id` int(11) NOT NULL AUTO_INCREMENT,
  `cmt_post_id` int(11) DEFAULT NULL,
  `cmt_pid` int(11) NOT NULL DEFAULT '0',
  `cmt_name` text CHARACTER SET utf8 NOT NULL,
  `cmt_email` text CHARACTER SET utf8,
  `cmt_content` longtext CHARACTER SET utf8,
  `cmt_insert_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `cmt_avatar` text CHARACTER SET utf8,
  `cmt_active` smallint(6) NOT NULL DEFAULT '0',
  `has_child` tinyint(4) NOT NULL DEFAULT '0',
  `cmt_do` text CHARACTER SET utf8,
  `view` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cmt_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `component`
--

DROP TABLE IF EXISTS `component`;
CREATE TABLE IF NOT EXISTS `component` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci,
  `do` text COLLATE utf8_unicode_ci,
  `act` text COLLATE utf8_unicode_ci,
  `back_link` text COLLATE utf8_unicode_ci,
  `front_link` text COLLATE utf8_unicode_ci,
  `active` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `component`
--

INSERT INTO `component` (`id`, `name`, `do`, `act`, `back_link`, `front_link`, `active`) VALUES
(2, 'Sản phẩm', 'products', 'list', '?do=products', '?', 1),
(3, 'Trang', 'intro', 'intro', '?', '?', 1),
(5, 'Trang chủ', 'main', 'main', '?', '?', 1),
(1, 'Tin tức', 'articles', 'list', '?do=articles', '?', 1),
(23, 'Liên hệ', 'contact', 'contact', '?', '?', 1),
(4, 'Video', 'video', 'list', '?do=video', '?', 1),
(6, 'Album ảnh', 'albums', 'list', '?do=albums', '?', 1),
(27, 'Link ngoài', '?', '?', '?', '?', 0),
(9, 'Có menu con', 'submenu', 'list', '?', '?', 1);

-- --------------------------------------------------------

--
-- Table structure for table `component_cms`
--

DROP TABLE IF EXISTS `component_cms`;
CREATE TABLE IF NOT EXISTS `component_cms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `component_cms`
--

INSERT INTO `component_cms` (`id`, `name`, `active`) VALUES
(2, 'Quản lý danh mục', 1),
(3, 'Quản lý tin tức', 1),
(4, 'Quản lý sản phẩm', 1),
(5, 'Quản lý bán hàng', 1),
(6, 'Quản lý Website', 1),
(7, 'Quản lý người dùng', 1),
(8, 'Quản lý cấu hình website', 1),
(9, 'Quản lý thư viện', 1),
(10, 'Quản lý giao diện', 1),
(11, 'Quản lý Marketing Online', 1),
(12, 'Kiểm duyệt tin tức', 1),
(13, 'Kiểm duyệt sản phẩm', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customfields`
--

DROP TABLE IF EXISTS `customfields`;
CREATE TABLE IF NOT EXISTS `customfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_vn` text COLLATE utf8_unicode_ci,
  `name_en` text COLLATE utf8_unicode_ci,
  `value_vn` text COLLATE utf8_unicode_ci,
  `value_en` text COLLATE utf8_unicode_ci,
  `num` int(11) NOT NULL DEFAULT '0',
  `alias` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_vn` text COLLATE utf8_unicode_ci,
  `name_en` text COLLATE utf8_unicode_ci,
  `img` text COLLATE utf8_unicode_ci,
  `num` int(11) DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `type` text COLLATE utf8_unicode_ci,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `img`
--

DROP TABLE IF EXISTS `img`;
CREATE TABLE IF NOT EXISTS `img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `name_vn` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_vn` text COLLATE utf8_unicode_ci,
  `short_en` text COLLATE utf8_unicode_ci,
  `active` int(11) DEFAULT '1',
  `num` int(11) DEFAULT '0',
  `img` text COLLATE utf8_unicode_ci,
  `url_vn` text COLLATE utf8_unicode_ci,
  `url_en` text COLLATE utf8_unicode_ci,
  `text1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `button1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `button2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_button1` text COLLATE utf8_unicode_ci,
  `link_button2` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
CREATE TABLE IF NOT EXISTS `info` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `name`, `content`) VALUES
(1, 'header', '{\"address\":\"\",\"header_left\":\"\",\"phone\":\"\",\"email\":\"\",\"header_right\":\"\",\"img\":\"69657125_1028427630891885_6507546829842808832_n.jpg\",\"image_small\":\"71523665_1060562631011718_4839453017512083456_n1.jpg\"}'),
(2, 'mail', '{\"receiveMail\":\"nviettu12345@gmail.com\",\"BccMail\":\"nvtu553@gmail.com\",\"name\":\"viet tu\",\"sendMail\":\"nviettu12345@gmail.com\",\"passMail\":\"9817dc652bc3467ff3af8c29a6f307a8\",\"hostMail\":\"smtp.gmail.com\",\"sigMail\":\"<p>d\\u01b0a a &agrave; &eacute;g<\\/p>\\r\\n\",\"succMail\":\"G\\u1edfi mail th\\u00e0nh c\\u00f4ng\",\"errMail\":\"G\\u1edfi mail th\\u1ea5t b\\u1ea1i\"}'),
(3, 'general', '{\"analytics\":\"\",\"otherScript\":\"\",\"WebmasterTool\":\"\",\"robotFile\":\"Book2.txt\",\"limitProduct\":\"25\",\"limitNews\":\"25\",\"limitCat\":\"12\",\"limitComment\":\"12\",\"limitRelProduct\":\"8\",\"limitRelNews\":\"8\",\"baotri\":\"0\",\"dateTo\":\"2019-09-23\",\"dateFrom\":\"2019-09-23\",\"copyright\":\"<p>b\\u1ea3n quy\\u1ec1n thu\\u1ed9c v\\u1ec1 vi\\u1ebft t\\u00fa @ 2019<\\/p>\\r\\n\",\"comment\":\"1\",\"slide\":\"1\",\"noindex\":\"1\",\"name\":\"\",\"sitemapFile\":\"sitemap.xml\"}');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` text COLLATE utf8_unicode_ci,
  `group` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `birthday` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modules_widget`
--

DROP TABLE IF EXISTS `modules_widget`;
CREATE TABLE IF NOT EXISTS `modules_widget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci,
  `num` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `alias` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `modules_widget`
--

INSERT INTO `modules_widget` (`id`, `name`, `num`, `active`, `alias`) VALUES
(2, 'Sản phẩm', 2, 1, 'WidgetProducts'),
(3, 'Tin tức', 3, 1, 'WidgetArticles'),
(5, 'Nick hỗ trợ', 5, 1, 'WidgetSupport'),
(6, 'Thống kê truy cập', 6, 1, 'WidgetStatistic'),
(7, 'Khung soạn thảo', 7, 1, 'WidgetHtml'),
(8, 'Khung đăng nhập', 8, 0, 'WidgetLogin'),
(4, 'Fanpage Facebook', 4, 1, 'WidgetFacebook'),
(9, 'Khung tìm kiếm', 9, 0, 'WidgetSearch'),
(10, 'video', 10, 1, 'WidgetVideo'),
(11, 'Danh mục sản phẩm', 11, 1, 'WidgetCatalogProduct'),
(12, 'Danh mục tin tức', 12, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `option_widget`
--

DROP TABLE IF EXISTS `option_widget`;
CREATE TABLE IF NOT EXISTS `option_widget` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name_vn` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `option_widget`
--

INSERT INTO `option_widget` (`id`, `name_vn`) VALUES
(1, 'mới nhất'),
(2, 'xem nhiều'),
(3, 'ngẫu nhiên'),
(4, 'hot'),
(5, 'khuyến mãi');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_vn` text CHARACTER SET utf8,
  `phone` text CHARACTER SET utf8,
  `email` text CHARACTER SET utf8,
  `address` text CHARACTER SET utf8,
  `note` text CHARACTER SET utf8,
  `status` int(11) DEFAULT '0',
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `total` double NOT NULL,
  `detail` text COLLATE utf8_unicode_ci,
  `reason` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_vn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `price_sale` double DEFAULT NULL,
  `content_vn` longtext COLLATE utf8_unicode_ci,
  `content_en` longtext COLLATE utf8_unicode_ci,
  `num` int(11) DEFAULT NULL,
  `img` text COLLATE utf8_unicode_ci,
  `img_thumb` text COLLATE utf8_unicode_ci,
  `cid` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `attr_vn` text COLLATE utf8_unicode_ci,
  `size` text COLLATE utf8_unicode_ci NOT NULL,
  `unique_key_vn` text COLLATE utf8_unicode_ci,
  `unique_key_en` text COLLATE utf8_unicode_ci,
  `title_vn` text COLLATE utf8_unicode_ci,
  `title_en` text COLLATE utf8_unicode_ci,
  `keyword_vn` text COLLATE utf8_unicode_ci,
  `keyword_en` text COLLATE utf8_unicode_ci,
  `des_vn` text COLLATE utf8_unicode_ci,
  `des_en` text COLLATE utf8_unicode_ci,
  `view` int(11) DEFAULT '0',
  `vote` int(11) DEFAULT '0',
  `short_vn` text COLLATE utf8_unicode_ci,
  `short_en` text COLLATE utf8_unicode_ci,
  `is_noindex` tinyint(4) NOT NULL DEFAULT '1',
  `dated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `des_vn_char` int(11) NOT NULL DEFAULT '0',
  `des_en_char` int(11) NOT NULL DEFAULT '0',
  `bestseller` tinyint(4) NOT NULL DEFAULT '0',
  `not_in_widget` tinyint(4) NOT NULL DEFAULT '0',
  `pin` tinyint(4) NOT NULL DEFAULT '0',
  `categoriebranch` text COLLATE utf8_unicode_ci NOT NULL,
  `ext_url` text COLLATE utf8_unicode_ci,
  `new_tab` tinyint(4) NOT NULL DEFAULT '0',
  `saleoff` tinyint(4) NOT NULL DEFAULT '0',
  `tag_vn` text COLLATE utf8_unicode_ci NOT NULL,
  `rich_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'product',
  `ratingValue` float DEFAULT '5',
  `ratingCount` int(11) NOT NULL DEFAULT '50',
  PRIMARY KEY (`id`),
  KEY `fk_pro_cat` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_customfields`
--

DROP TABLE IF EXISTS `products_customfields`;
CREATE TABLE IF NOT EXISTS `products_customfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_vn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `num` int(14) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_customfields`
--

INSERT INTO `products_customfields` (`id`, `name_vn`, `value`, `active`, `num`) VALUES
(22, 'màu sắc', 'đỏ, vàng', 1, 1),
(24, 'kích thước', '2,4 m', 1, 0),
(25, 'chiều cao', '1m5', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_activity_log`
--

DROP TABLE IF EXISTS `user_activity_log`;
CREATE TABLE IF NOT EXISTS `user_activity_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `note` text CHARACTER SET utf8,
  `insert_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` text CHARACTER SET utf8,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3864 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
CREATE TABLE IF NOT EXISTS `widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_vn` text COLLATE utf8_unicode_ci,
  `name_en` text COLLATE utf8_unicode_ci,
  `content_vn` text COLLATE utf8_unicode_ci,
  `content_en` text COLLATE utf8_unicode_ci,
  `comp` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '1',
  `type` tinyint(4) DEFAULT NULL,
  `ptype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `num` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `qlimit` tinyint(4) NOT NULL DEFAULT '0',
  `is_show_title` tinyint(4) NOT NULL DEFAULT '1',
  `qlimit_tincon` tinyint(4) NOT NULL DEFAULT '3',
  `active_tincon` tinyint(4) NOT NULL DEFAULT '0',
  `tab` tinyint(4) DEFAULT '0',
  `type_tab` tinyint(4) NOT NULL DEFAULT '3',
  `num_type_tab` tinyint(4) NOT NULL DEFAULT '6',
  `name_tab1` text COLLATE utf8_unicode_ci,
  `name_tab2` text COLLATE utf8_unicode_ci,
  `type_tab_1` tinyint(4) DEFAULT '0',
  `num_type_tab_1` tinyint(4) DEFAULT '0',
  `column` tinyint(4) NOT NULL DEFAULT '4',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `name_vn`, `name_en`, `content_vn`, `content_en`, `comp`, `cid`, `is_deleted`, `type`, `ptype`, `num`, `active`, `qlimit`, `is_show_title`, `qlimit_tincon`, `active_tincon`, `tab`, `type_tab`, `num_type_tab`, `name_tab1`, `name_tab2`, `type_tab_1`, `num_type_tab_1`, `column`) VALUES
(1, 'Widget cột trái', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 1, 0, 1, 3, 0, 0, 3, 6, NULL, NULL, 0, 0, 4),
(2, 'Widget cột phải', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 2, 1, 0, 1, 3, 0, 0, 3, 6, NULL, NULL, 0, 0, 4),
(3, 'Widget trang chủ', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 1, 0, 1, 3, 0, 0, 3, 6, NULL, NULL, 0, 0, 4),
(4, 'Widget footer', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 1, 0, 1, 3, 0, 0, 3, 6, NULL, NULL, 0, 0, 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
