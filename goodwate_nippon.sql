-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 17, 2019 at 03:06 PM
-- Server version: 5.6.45-cll-lve
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
-- Database: `goodwate_nippon`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessed`
--

CREATE TABLE `accessed` (
  `id` int(11) NOT NULL,
  `accessed` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `accessed`
--

INSERT INTO `accessed` (`id`, `accessed`) VALUES
(1, 192426);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` text COLLATE utf8_unicode_ci,
  `password` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `group` int(11) DEFAULT NULL,
  `is_deleted` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `group`, `is_deleted`) VALUES
(1011, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_groups`
--

CREATE TABLE `admin_groups` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `active` tinyint(4) DEFAULT '1',
  `is_deleted` tinyint(4) DEFAULT '1',
  `short` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_groups`
--

INSERT INTO `admin_groups` (`id`, `name`, `active`, `is_deleted`, `short`) VALUES
(1, 'Admin', 1, 0, NULL),
(2, 'N1', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_groups_detail`
--

CREATE TABLE `admin_groups_detail` (
  `id` int(11) NOT NULL,
  `admingroupid` int(11) NOT NULL,
  `rightid` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_groups_detail`
--

INSERT INTO `admin_groups_detail` (`id`, `admingroupid`, `rightid`, `active`) VALUES
(1, 1, 6, 1),
(2, 1, 4, 1),
(3, 1, 8, 1),
(4, 1, 2, 1),
(5, 1, 10, 1),
(6, 1, 5, 1),
(7, 1, 7, 1),
(8, 1, 9, 1),
(9, 1, 3, 1),
(14, 1, 11, 1),
(18, 1, 12, 1),
(26, 2, 2, 1),
(27, 2, 3, 1),
(28, 2, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `name_vn` text COLLATE utf8_unicode_ci,
  `name_en` text COLLATE utf8_unicode_ci,
  `short_vn` text COLLATE utf8_unicode_ci,
  `short_en` text COLLATE utf8_unicode_ci,
  `img` text COLLATE utf8_unicode_ci,
  `num` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `unique_key_vn` text COLLATE utf8_unicode_ci,
  `unique_key_en` text COLLATE utf8_unicode_ci,
  `title_vn` text COLLATE utf8_unicode_ci,
  `title_en` text COLLATE utf8_unicode_ci,
  `keyword_vn` text COLLATE utf8_unicode_ci,
  `keyword_en` text COLLATE utf8_unicode_ci,
  `des_vn` text COLLATE utf8_unicode_ci,
  `des_en` text COLLATE utf8_unicode_ci,
  `des_vn_char` int(11) NOT NULL DEFAULT '0',
  `des_en_char` int(11) NOT NULL DEFAULT '0',
  `dated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
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
  `tag_vn` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `name_vn`, `name_en`, `short_vn`, `short_en`, `content_vn`, `content_en`, `num`, `img`, `cid`, `dated`, `active`, `unique_key_vn`, `unique_key_en`, `title_vn`, `title_en`, `keyword_vn`, `keyword_en`, `des_vn`, `des_en`, `view`, `is_noindex`, `is_lock`, `admin_id`, `admin_name`, `publish_date`, `active_future`, `des_vn_char`, `des_en_char`, `hot`, `dongsukien`, `not_in_widget`, `pin`, `categoriebranch`, `ext_url`, `new_tab`, `tag_vn`) VALUES
(3225, 'Công trình: Nâng cấp mở rộng hệ thống cấp nước xã Phan Dũng', NULL, 'Công trình: Nâng cấp mở rộng hệ thống cấp nước xã Phan Dũng', NULL, '<p>C&ocirc;ng ty CP Nước L&agrave;nh Goodwater thực hiện thi c&ocirc;ng c&ocirc;ng tr&igrave;nh:&nbsp;<strong>N&acirc;ng cấp mở rộng hệ thống cấp nước x&atilde; Phan Dũng</strong></p>\r\n\r\n<p><strong>Hạng mục:</strong></p>\r\n\r\n<p>- Bể lọc trọng lực tự rửa model: GAGFT-020-SS&nbsp;</p>\r\n\r\n<p>- Bể lắng lamella+ bể phản ứng+ phễu thu b&ugrave;n model: GLMDT-020-SS&nbsp;</p>\r\n\r\n<p><strong>Vật liệu:&nbsp;</strong>bằng th&eacute;p SS400 sơn epoxy bảo vệ</p>\r\n\r\n<p><strong>Phương ph&aacute;p chế tạo</strong>: H&agrave;n</p>\r\n\r\n<p><strong>K&iacute;ch thước</strong>:</p>\r\n\r\n<p>+ Bể lọc: DxH = 2 x 4.5 (mm)</p>\r\n\r\n<p>+ Bể lắng: DxRxC = 4.2 x 2 x 6 (mm)</p>\r\n\r\n<p><strong>Địa điểm:</strong>&nbsp;x&atilde; Phan Dũng, huyện Tuy Phong, tỉnh B&igrave;nh Thuận</p>\r\n\r\n<p><strong>Thời gian thực hiện</strong>: 2016.</p>\r\n\r\n<p style=\"text-align: center;\"><iframe allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/-kE6feybeZY\" width=\"560\"></iframe></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Công trình: Nâng cấp mở rộng hệ thống cấp nước xã Phan Dũng\" height=\"544\" src=\"/ckfinder/upload/images/du-an/IMG_20190814_175756.jpg\" width=\"337\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Công trình: Nâng cấp mở rộng hệ thống cấp nước xã Phan Dũng\" height=\"325\" src=\"/ckfinder/upload/images/du-an/IMG_20190814_175938.jpg\" width=\"600\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Công trình: Nâng cấp mở rộng hệ thống cấp nước xã Phan Dũng\" height=\"337\" src=\"/ckfinder/upload/images/du-an/IMG_20190814_180037.jpg\" width=\"600\" /></p>\r\n\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n', NULL, 0, '8a54d9fb22e9c2b79bf8.jpg', 313, '2019-09-28 09:53:00', 1, 'Cong-trinh-Nang-cap-mo-rong-he-thong-cap-nuoc-xa-Phan-Dung', NULL, 'Công trình: Nâng cấp mở rộng hệ thống cấp nước xã Phan Dũng', NULL, NULL, NULL, 'Công trình: Nâng cấp mở rộng hệ thống cấp nước xã Phan Dũng', NULL, 42, 0, 0, NULL, 'admin', NULL, 0, 0, 0, 0, 0, 0, 0, '', '', 0, '[{\"name_tag\":\"C\\u00f4ng tr\\u00ecnh: N\\u00e2ng c\\u1ea5p m\\u1edf r\\u1ed9ng h\\u1ec7 th\\u1ed1ng c\\u1ea5p n\\u01b0\\u1edbc x\\u00e3 Phan D\\u0169ng\",\"unique_key_tag\":\"cong-trinh-nang-cap-mo-rong-he-thong-cap-nuoc-xa-phan-dung\",\"cid_url\":\"du-an\"}]'),
(3226, 'Hệ thống xử lý nước nhà máy điện mặt trời Nhị Hà', NULL, 'Hệ thống xử lý nước nhà máy điện mặt trời Nhị Hà', NULL, '<p>C&ocirc;ng ty CP Nước L&agrave;nh Goodwater thực hiện thi c&ocirc;ng c&ocirc;ng tr&igrave;nh:&nbsp;<strong>Hệ thống xử l&yacute; nước nh&agrave; m&aacute;y điện mặt trời Nhị H&agrave;</strong></p>\r\n\r\n<p><strong>Hạng mục:</strong></p>\r\n\r\n<p>+ Bể chứa AQUATANK model 4L4-DB4 dung 50m<sup>3</sup></p>\r\n\r\n<p>+ Bể 2IN1- lắng lọc model 2IN1-7L2-005 c&ocirc;ng suất 5m<sup>3</sup>/h</p>\r\n\r\n<p>+ Nh&agrave; h&oacute;a chất lắp gh&eacute;p model 2L3-SSE</p>\r\n\r\n<p><strong>Vật liệu:</strong></p>\r\n\r\n<p>+ Bể chứa AQUATANK: 2 lớp vật liệu, lớp b&ecirc;n ngo&agrave;i bằng th&eacute;p SS400 sơn epoxy bảo vệ, lớp b&ecirc;n trong bằng Inox 304 d&agrave;y 0,5m, đ&aacute;y bể bằng Inox 304 d&agrave;y 1mm.</p>\r\n\r\n<p>+ Bể 2IN1: bằng th&eacute;p SS400 sơn epoxy bảo vệ</p>\r\n\r\n<p>+ Nh&agrave; h&oacute;a chất: bằng th&eacute;p SS400 sơn epoxy bảo vệ</p>\r\n\r\n<p><strong>Phương ph&aacute;p chế tạo</strong>: lắp gh&eacute;p</p>\r\n\r\n<p><strong>K&iacute;ch thước</strong>:</p>\r\n\r\n<p>+ Bể chứa AQUATANK: DxH = 3,58 x 5,6 (m)</p>\r\n\r\n<p>+ Bể 2IN1: DxH = 1,78 x 7 (m)</p>\r\n\r\n<p>+ Nh&agrave; h&oacute;a chất: LxWxH = 2,9 x 2,9 x 2,8 (m)</p>\r\n\r\n<p><strong>Địa điểm:</strong>&nbsp;x&atilde; Nhị H&agrave;, huyện Thuận Nam, tỉnh Ninh Thuận</p>\r\n\r\n<p><strong>Thời gian thực hiện</strong>: 11/7/2019 đến 20/8/2019</p>\r\n\r\n<p style=\"text-align: center;\"><iframe allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/f7laXvXjvL0\" width=\"560\"></iframe></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\" Hệ thống xử lý nước nhà máy điện mặt trời Nhị Hà\" height=\"600\" src=\"/ckfinder/upload/images/du-an/be-chua-nuoc-cong-nghiep-aquatank.jpg\" width=\"337\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\" Hệ thống xử lý nước nhà máy điện mặt trời Nhị Hà\" height=\"337\" src=\"/ckfinder/upload/images/du-an/be-lang-loc-2trong-mot.jpg\" width=\"600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\" Hệ thống xử lý nước nhà máy điện mặt trời Nhị Hà\" height=\"600\" src=\"/ckfinder/upload/images/du-an/he-thong-xu-ly-nuoc-nha-may-dien-mat-troi.jpg\" width=\"337\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\" Hệ thống xử lý nước nhà máy điện mặt trời Nhị Hà\" height=\"600\" src=\"/ckfinder/upload/images/du-an/nha-hoa-chat-lap-ghep.jpg\" width=\"337\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\" Hệ thống xử lý nước nhà máy điện mặt trời Nhị Hà\" height=\"600\" src=\"/ckfinder/upload/images/du-an/nha-hoa-chat.jpg\" width=\"337\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, 0, 'he-thong-xu-ly-nuoc3.jpg', 313, '2019-10-02 03:30:50', 1, 'He-thong-xu-ly-nuoc-nha-may-dien-mat-troi-Nhi-Ha', NULL, 'Hệ thống xử lý nước nhà máy điện mặt trời Nhị Hà', NULL, NULL, NULL, 'Hệ thống xử lý nước nhà máy điện mặt trời Nhị Hà', NULL, 10, 0, 0, NULL, 'admin', NULL, 0, 0, 0, 0, 0, 0, 0, '', '', 0, '[{\"name_tag\":\"\",\"unique_key_tag\":\"\",\"cid_url\":\"du-an\"}]'),
(3227, 'Hệ thống xử lý chất lượng nước của nhà máy cấp nước TP Trà Vinh', NULL, 'Hệ thống xử lý chất lượng nước của nhà máy cấp nước TP Trà Vinh', NULL, '<p><strong>Công ty CP Nước lành thực hiện thi công công trình&nbsp;</strong><strong>Hệ thống xử lý chất lượng nước của nhà máy cấp nước TP Trà Vinh</strong></p>\r\n\r\n<p><strong>-&nbsp;</strong><strong>Gói thầu:&nbsp;</strong>Thiết kế, xây lắp và cung cấp lắp đặt thiết bị, chuyển giao công nghệ xử lý cặn vôi theo phương pháp ép ly tâm (EPC).</p>\r\n\r\n<p>-&nbsp;<strong>Hạng mục</strong>: Thiết kế, xây lắp và cung cấp lắp đặt bể lọc trọng lực 10m<sup>3</sup>/h&nbsp;và tháp làm giàu cặn công suất 150 m<sup>3</sup>/ ngày đêm.</p>\r\n\r\n<p>-&nbsp;<strong>Vật liệu</strong>:&nbsp;</p>\r\n\r\n<p>&nbsp;+ Tháp làm giàu cặn: Thép phủ thủy tinh - CST.</p>\r\n\r\n<p>&nbsp;+<strong>&nbsp;</strong>Bể lọc trọng lực tự rửa: Thép SS400</p>\r\n\r\n<p>-&nbsp;<strong>Phương pháp chế tạo</strong>:</p>\r\n\r\n<p>&nbsp;+ Tháp làm giàu cặn&nbsp;: lắp ghép.</p>\r\n\r\n<p>&nbsp;+ Bể lọc : hàn</p>\r\n\r\n<p>-&nbsp;<strong>Kích thước</strong>:</p>\r\n\r\n<p>&nbsp;+ Tháp làm giàu cặn: DxH =2.56 x 7.06 (m).</p>\r\n\r\n<p>&nbsp;+ Bể lọc :&nbsp;&nbsp;<strong>=&nbsp;</strong>1.5 x 4.5 (m).</p>\r\n\r\n<p>-&nbsp;<strong>Địa điểm</strong>:<strong>&nbsp;</strong>Ấp Hòa Bình, Hòa Hiệp, Tân Biên, Tây Ninh.</p>\r\n\r\n<p>-&nbsp;<strong>Thời gian thi công</strong>:&nbsp;02/2017 – 06/2017.</p>\r\n\r\n<p style=\"text-align: center;\"><iframe allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/TTzV3vp55Js\" width=\"560\"></iframe></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Hệ thống xử lý chất lượng nước của nhà máy cấp nước TP Trà Vinh\" height=\"600\" src=\"/ckfinder/upload/images/du-an/he-thong-xu-ly-chat-luong-nuoc.jpg\" width=\"337\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Hệ thống xử lý chất lượng nước của nhà máy cấp nước TP Trà Vinh\" height=\"337\" src=\"/ckfinder/upload/images/du-an/he-thong-xu-ly-nuoc-thai.jpg\" width=\"600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Hệ thống xử lý chất lượng nước của nhà máy cấp nước TP Trà Vinh\" height=\"337\" src=\"/ckfinder/upload/images/du-an/thap-lam-giau-can.jpg\" width=\"600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, 0, 'cong-nghe-xu-ly-can-voi.jpg', 313, '2019-10-05 06:30:35', 1, 'He-thong-xu-ly-chat-luong-nuoc-cua-nha-may-cap-nuoc-TP-Tra-Vinh', NULL, 'Hệ thống xử lý chất lượng nước của nhà máy cấp nước TP Trà Vinh', NULL, NULL, NULL, 'Hệ thống xử lý chất lượng nước của nhà máy cấp nước TP Trà Vinh', NULL, 6, 0, 0, NULL, 'admin', NULL, 0, 0, 0, 0, 0, 0, 0, '', '', 0, '[{\"name_tag\":\"H\\u1ec7 th\\u1ed1ng x\\u1eed l\\u00fd ch\\u1ea5t l\\u01b0\\u1ee3ng n\\u01b0\\u1edbc c\\u1ee7a nh\\u00e0 m\\u00e1y c\\u1ea5p n\\u01b0\\u1edbc TP Tr\\u00e0 Vinh\",\"unique_key_tag\":\"he-thong-xu-ly-chat-luong-nuoc-cua-nha-may-cap-nuoc-tp-tra-vinh\",\"cid_url\":\"du-an\"}]'),
(3228, 'Công trình: Hệ thống cấp nước ấp Hòa Bình, Hòa Hiệp, Tân Biên', NULL, 'Công trình: Hệ thống cấp nước ấp Hòa Bình, Hòa Hiệp, Tân Biên', NULL, '<p><strong>Công ty CP Nước lành thực hiện thi công công trình&nbsp;</strong><strong>Hệ thống cấp nước ấp Hòa Bình, Hòa Hiệp, Tân Biên</strong></p>\r\n\r\n<p>-&nbsp;<strong>Hạng mục</strong>:&nbsp;<strong>Thi công xây lắp Tháp làm thoáng Oxy công suất 10m3/h và Bể lọc trọng lực tự rửa công suất 10m3/h.</strong></p>\r\n\r\n<p>-&nbsp;<strong>Vật liệu</strong>:&nbsp;</p>\r\n\r\n<p>&nbsp;+ Tháp oxy hóa: inox</p>\r\n\r\n<p>&nbsp;+<strong>&nbsp;</strong>Bể lọc trọng lực tự rửa: Thép SS400</p>\r\n\r\n<p>-&nbsp;<strong>Phương pháp chế tạo</strong>:</p>\r\n\r\n<p>&nbsp;+ Tháp oxy hóa: hàn</p>\r\n\r\n<p>&nbsp;+ Bể lọc : hàn</p>\r\n\r\n<p>-&nbsp;<strong>Kích thước</strong>:</p>\r\n\r\n<p>&nbsp;+ Tháp oxy hóa: DxH = 6 x 1,5 (m).</p>\r\n\r\n<p>&nbsp;+ Bể lọc :&nbsp;&nbsp;<strong>=&nbsp;</strong>1.5 x 4.5 (m).</p>\r\n\r\n<p>-&nbsp;<strong>Địa điểm</strong>:<strong>&nbsp;</strong>Ấp Hòa Bình, Hòa Hiệp, Tân Biên, Tây Ninh.</p>\r\n\r\n<p>-&nbsp;<strong>Thời gian thi công</strong>:&nbsp;03/2015 – 12/2015.</p>\r\n\r\n<p style=\"text-align: center;\"><iframe allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/9WHMuY5R1iQ\" width=\"560\"></iframe></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Công trình: Hệ thống cấp nước ấp Hòa Bình, Hòa Hiệp, Tân Biên\" height=\"600\" src=\"/ckfinder/upload/images/du-an/he-thong-xu-ly-nuoc.jpg\" width=\"336\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Công trình: Hệ thống cấp nước ấp Hòa Bình, Hòa Hiệp, Tân Biên\" height=\"337\" src=\"/ckfinder/upload/images/du-an/he-thong-xu-ly-nuoc1.jpg\" width=\"600\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, 0, 'cong-trinh-thoat-nuoc-hoa-binh.PNG', 313, '2019-10-05 06:37:09', 1, 'Cong-trinh-He-thong-cap-nuoc-ap-Hoa-Binh-Hoa-Hiep-Tan-Bien', NULL, 'Công trình: Hệ thống cấp nước ấp Hòa Bình, Hòa Hiệp, Tân Biên', NULL, NULL, NULL, 'Công trình: Hệ thống cấp nước ấp Hòa Bình, Hòa Hiệp, Tân Biên', NULL, 4, 0, 0, NULL, 'admin', NULL, 0, 0, 0, 0, 0, 0, 0, '', '', 0, '[{\"name_tag\":\"C\\u00f4ng tr\\u00ecnh: H\\u1ec7 th\\u1ed1ng c\\u1ea5p n\\u01b0\\u1edbc \\u1ea5p H\\u00f2a B\\u00ecnh\",\"unique_key_tag\":\"cong-trinh-he-thong-cap-nuoc-ap-hoa-binh\",\"cid_url\":\"du-an\"},{\"name_tag\":\" H\\u00f2a Hi\\u1ec7p\",\"unique_key_tag\":\"-hoa-hiep\",\"cid_url\":\"du-an\"},{\"name_tag\":\" T\\u00e2n Bi\\u00ean\",\"unique_key_tag\":\"-tan-bien\",\"cid_url\":\"du-an\"}]'),
(3229, 'Công trình: Hệ thống cấp nước sinh hoạt KDC Chàng Riệc - Tây Ninh', NULL, 'Công trình: Hệ thống cấp nước sinh hoạt KDC Chàng Riệc - Tây Ninh', NULL, '<p><strong>Công ty CP Nước lành thực hiện thi công công trình&nbsp;</strong><strong>Hệ thống cấp nước sinh hoạt&nbsp;</strong><strong>KDC Chàng Riệc</strong></p>\r\n\r\n<p>-&nbsp;<strong>Hạng mục</strong>: Thi công xây lắp cụm xử lý 250m3/ng (bể lọc 250m3/ng và tháp oxy hóa)</p>\r\n\r\n<p>-&nbsp;<strong>Vật liệu</strong>:&nbsp;</p>\r\n\r\n<p>&nbsp;+ Tháp oxy hóa: inox</p>\r\n\r\n<p>&nbsp;+ Bể lọc : Thép SS400</p>\r\n\r\n<p>-&nbsp;<strong>Phương pháp chế tạo</strong>:</p>\r\n\r\n<p>&nbsp;+ Tháp oxy hóa: hàn</p>\r\n\r\n<p>&nbsp;+ Bể lọc : hàn</p>\r\n\r\n<p>-&nbsp;<strong>Kích thước</strong>:</p>\r\n\r\n<p>&nbsp;+ Tháp oxy hóa: DxH = 0,6 x 1,5 (m).</p>\r\n\r\n<p>&nbsp;+ Bể lọc :&nbsp; 1,2 x 4,9 (m).</p>\r\n\r\n<p>-&nbsp;<strong>Địa điểm</strong>: KDC Chàng Riệc, Huyện Tân Biên, tỉnh Tây Ninh.</p>\r\n\r\n<p>-&nbsp;<strong>Thời gian thi công</strong>: 09/2011.</p>\r\n\r\n<p style=\"text-align: center;\"><iframe allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/upqQWcZDFu0\" width=\"560\"></iframe></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\" Công trình: Hệ thống cấp nước sinh hoạt KDC Chàng Riệc - Tây Ninh\" height=\"600\" src=\"/ckfinder/upload/images/du-an/he-thong-cap-nuoc-sinh-hoat.jpg\" width=\"480\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\" Công trình: Hệ thống cấp nước sinh hoạt KDC Chàng Riệc - Tây Ninh\" height=\"600\" src=\"/ckfinder/upload/images/du-an/thap-oxy-hoa-xy-ly-nuoc-sinh-hoat.jpg\" width=\"506\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\" Công trình: Hệ thống cấp nước sinh hoạt KDC Chàng Riệc - Tây Ninh\" height=\"600\" src=\"/ckfinder/upload/images/du-an/thi-cong-cum-xu-ly-nuoc.jpg\" width=\"480\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, 0, 'be-loc-xu-ly-nuoc.jpg', 313, '2019-10-05 06:44:08', 1, 'Cong-trinh-He-thong-cap-nuoc-sinh-hoat-KDC-Chang-Riec-Tay-Ninh', NULL, 'Công trình: Hệ thống cấp nước sinh hoạt KDC Chàng Riệc - Tây Ninh', NULL, NULL, NULL, 'Công trình: Hệ thống cấp nước sinh hoạt KDC Chàng Riệc - Tây Ninh', NULL, 7, 0, 0, NULL, 'admin', NULL, 0, 0, 0, 0, 0, 0, 0, '', '', 0, '[{\"name_tag\":\"C\\u00f4ng tr\\u00ecnh: H\\u1ec7 th\\u1ed1ng c\\u1ea5p n\\u01b0\\u1edbc sinh ho\\u1ea1t KDC Ch\\u00e0ng Ri\\u1ec7c - T\\u00e2y Ninh\",\"unique_key_tag\":\"cong-trinh-he-thong-cap-nuoc-sinh-hoat-kdc-chang-riec-tay-ninh\",\"cid_url\":\"du-an\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `card` text COLLATE utf8_unicode_ci,
  `bank_vn` text COLLATE utf8_unicode_ci,
  `bank_en` text COLLATE utf8_unicode_ci,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `img` text COLLATE utf8_unicode_ci,
  `branch` text COLLATE utf8_unicode_ci,
  `num` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banned_ip`
--

CREATE TABLE `banned_ip` (
  `id` int(11) NOT NULL,
  `ip` text COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
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
  `new_tab` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_vn`, `name_en`, `num`, `pid`, `has_child`, `comp`, `img`, `active`, `short_vn`, `content_vn`, `seo_f_vn`, `unique_key_vn`, `title_vn`, `keyword_vn`, `des_vn`, `is_deleted`, `ext_url`, `des_vn_char`, `view`, `new_tab`) VALUES
(315, 'tin tức', NULL, 4, 0, 1, 9, '', 1, 'Tin tức, sự kiện, giải pháp, công nghệ lắp ghép bồn nước công nghiệp, thiết bị xử lý nguồn nước', '', NULL, 'tin-tuc', 'tin tức', NULL, 'Tin tức, sự kiện, giải pháp, công nghệ lắp ghép bồn nước công nghiệp, thiết bị xử lý nguồn nước', 1, '', 0, 0, 1),
(313, 'dự án', NULL, 3, 0, 0, 1, NULL, 1, 'Dự án, công trình được thực hiện thi công bởi Công Ty Cổ Phần Nước Lành', '', NULL, 'du-an', 'dự án', NULL, 'Dự án, công trình được thực hiện thi công bởi Công Ty Cổ Phần Nước Lành', 1, '', 0, 0, 1),
(316, 'sản phẩm', NULL, 2, 0, 1, 9, '', 1, 'Bồn chứa công nghiệp lắp ráp', '', NULL, 'san-pham', 'sản phẩm', NULL, 'Bồn chứa công nghiệp lắp ráp', 1, '', 0, 0, 1),
(317, 'liên hệ', NULL, 5, 0, 0, 23, '', 1, '', '', NULL, 'lien-he', 'liên hệ', NULL, '', 1, '', 0, 0, 1),
(294, 'trẻ con 7', NULL, 3, 290, 0, 23, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 0, 1),
(300, 'Trang chủ', NULL, 0, 0, 0, 5, NULL, 1, 'Sản xuất bồn chứa công nghiệp, thiết bị xử lý nước, Lắp ghép bể bằng bulon\r\nNước Lành là công ty chuyên về các giải pháp cho hệ thống bồn chứa, hệ thống cấp thoát nước và mái che tiên tiến. Một sự kết hợp hoàn hảo giữa công nghệ bồn thép tiền chế và các hệ thống mái che.', '', NULL, 'Trang-chu', 'CÔNG TY CỔ PHẦN NƯỚC LÀNH - goodwater ', NULL, 'a', 0, '', 0, 0, 1),
(299, 'mỹ phẩm 1', NULL, 0, 298, 0, 2, NULL, 1, 'mỹ phẩm 1', '', NULL, 'my-pham-1', 'mỹ phẩm 1', NULL, 'mỹ phẩm 1<br>mỹ phẩm 1', 1, '', 0, 0, 1),
(309, 'sản phẩm chưa phân loại', NULL, 100, 0, 0, 2, '', 0, '', '', NULL, 'san-pham-chua-phan-loai', 'sản phẩm chưa phân loại', NULL, '', 0, '', 0, 0, 1),
(310, 'bài viết chưa phân loại', NULL, 100, 0, 0, 1, '', 0, '', '', NULL, 'bai-viet-chua-phan-loai', 'bài viết chưa phân loại', NULL, '', 0, '', 0, 0, 1),
(314, 'giới thiệu', NULL, 1, 0, 0, 3, '', 1, '', '', NULL, 'gioi-thieu', 'giới thiệu', NULL, '', 1, '', 0, 0, 1),
(318, 'Bồn chứa công nghiệp', NULL, 0, 316, 0, 2, '', 1, 'Bồn chứa công nghiệp lắp ghép Aquatank hình trụ tròn chứa vật liệu dạng lỏng', '', NULL, 'Bon-chua-cong-nghiep', 'Bồn chứa công nghiệp', NULL, 'Bồn chứa công nghiệp lắp ghép Aquatank hình trụ tròn chứa vật liệu dạng lỏng', 1, '', 0, 0, 1),
(319, 'tin công ty', NULL, 0, 315, 0, 1, '', 1, 'Tin tức, sự kiện hoạt động về sản phẩm, dự án, tổ chức sự kiện, giải pháp bồn chứa, thiết bị xử lý nước của Công Ty Cổ Phần Nước Lành - Good Water', '', NULL, 'tin-cong-ty', 'tin công ty', NULL, 'Tin tức, sự kiện hoạt động về sản phẩm, dự án, tổ chức sự kiện, giải pháp bồn chứa, thiết bị xử lý nước của Công Ty Cổ Phần Nước Lành - Good Water', 1, '', 0, 0, 1),
(320, 'tin tổng hợp', NULL, 0, 315, 0, 1, '', 1, 'Tin tức, sự kiện, kinh nghiệm, giải pháp, công nghệ trong ngành cấp thoát nước, xử lý nguồn nước', '', NULL, 'tin-tong-hop', 'tin tổng hợp', NULL, 'Tin tức, sự kiện, kinh nghiệm, giải pháp, công nghệ trong ngành cấp thoát nước, xử lý nguồn nước', 1, '', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `cmt_id` int(11) NOT NULL,
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
  `view` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`cmt_id`, `cmt_post_id`, `cmt_pid`, `cmt_name`, `cmt_email`, `cmt_content`, `cmt_insert_date`, `cmt_avatar`, `cmt_active`, `has_child`, `cmt_do`, `view`) VALUES
(1, 45, 0, 'cxc', 'abc@imgroup.vn', 'xcxcx', '2017-10-04 08:14:35', NULL, 1, 0, 'products', 1),
(2, 55, 0, 'Nguyễn Như Hổ', 'nguyennhuho@gmail.com', 'Đây gọi là guitar tab à?', '2017-10-11 11:00:02', NULL, 1, 0, 'articles', 1),
(3, 56, 0, 'Lâm Lê', 'lvqqdp1@gmail.com', 'Hợp âm trong bài có chuẩn không mọi người?', '2018-03-19 10:25:51', NULL, 1, 0, 'articles', 1),
(4, 57, 0, 'Phuoc dai', 'Phuocdai128@gmail.com', 'Muốn học guitar solo độc tấu , có hướng dẫn online ko vì ko có thời gian và xa sài gòn', '2018-07-14 12:23:31', NULL, 1, 0, 'articles', 1),
(5, 57, 0, 'Trương Văn Thịnh', 'thinht079@gmail.com', 'Hay', '2018-07-31 05:57:27', NULL, 1, 0, 'articles', 1),
(6, 57, 0, 'thanh thảo', 'hgxgnn03@gmail.com', 'rải thế nào ạ ?', '2018-11-13 12:30:58', NULL, 1, 0, 'articles', 1);

-- --------------------------------------------------------

--
-- Table structure for table `component`
--

CREATE TABLE `component` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `do` text COLLATE utf8_unicode_ci,
  `act` text COLLATE utf8_unicode_ci,
  `back_link` text COLLATE utf8_unicode_ci,
  `front_link` text COLLATE utf8_unicode_ci,
  `active` tinyint(4) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

CREATE TABLE `component_cms` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
-- Table structure for table `confirmation`
--

CREATE TABLE `confirmation` (
  `id` int(11) NOT NULL,
  `id_member` int(11) DEFAULT NULL,
  `confirmation_code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `enable` int(11) DEFAULT '0',
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `code_time` double DEFAULT NULL,
  `id_event` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `confirmation`
--

INSERT INTO `confirmation` (`id`, `id_member`, `confirmation_code`, `enable`, `time`, `code_time`, `id_event`) VALUES
(1, 11, 'e36544673412b3dbb0e55d22eea8b8d3', 0, '2017-08-16 03:33:39', 1502854419, NULL),
(2, 11, '0420d9ddaa7a0b1e4af4608efb57b5f7', 0, '2017-08-16 03:36:11', 1502854571, NULL),
(3, 11, '7e78bfb727db80f89fdc7d2eaf97978e', 0, '2017-08-16 03:37:29', 1502854649, NULL),
(4, 11, '234420f0bc53245a9bbc6b73d99fc7af', 0, '2017-08-16 03:42:53', 1502854973, NULL),
(5, 11, '19d89ffb3a927e3c303a93a48b038ff5', 0, '2017-08-16 03:47:58', 1502855278, NULL),
(6, 11, 'cc7b0fe3f0d59c31bcc374dc7be61fd3', 0, '2017-08-16 03:48:31', 1502855311, NULL),
(7, 11, 'cba5014e7b37575a8c5836cf1b31d39c', 0, '2017-08-16 03:56:57', 1502855817, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_logs`
--

CREATE TABLE `contact_logs` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `company` text COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `message` text COLLATE utf8_unicode_ci,
  `file` text COLLATE utf8_unicode_ci,
  `dated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `view` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact_logs`
--

INSERT INTO `contact_logs` (`id`, `name`, `email`, `phone`, `company`, `address`, `message`, `file`, `dated`, `view`) VALUES
(5, 'DINH HUYNH THI NGUYET', 'dhtnguyet@gmail.com', '0909029016', NULL, NULL, 'Chào thầy Nguyễn Bảo Chương, thầy cho hỏi học phí và lịch học guitar đệm hát', NULL, '2017-09-02 09:00:34', 1),
(6, 'Trần Văn Quyết', 'xaydungphugia.vn@gmail.com', '0937135710', NULL, NULL, 'Mình chỉ học được chiều thứ 7 (12h-6h),  hoặc chủ nhật (7h-17h),  vui lòng sắp xếp lịch học giúp mình (1 buổi/tuần, do ko có nhiều tg), mình muốn học acoustic.\nTrình độ: sơ cấp (đàn được cơ bản các điệu, biết các hợp âm, quạt chả tạm)\nCảm ơn nhiều', NULL, '2017-09-12 06:31:42', 1),
(7, 'Trần Văn Quyết', 'xaydungphugia.vn@gmail.com', '0937135710', NULL, NULL, 'Mình chỉ học được chiều thứ 7 (12h-6h),  hoặc chủ nhật (7h-17h),  vui lòng sắp xếp lịch học giúp mình (1 buổi/tuần, do ko có nhiều tg), mình muốn học acoustic.\nTrình độ: sơ cấp (đàn được cơ bản các điệu, biết các hợp âm, quạt chả tạm)\nCảm ơn nhiều', NULL, '2017-09-12 06:32:10', 1),
(8, 'Nam Phong', 'xaydungphugia.vn@gmail.com', '0937135710', NULL, NULL, 'Vui lòng xếp lịch cho mình 1 buổi/tuần, học chiều thứ 7 (12h-17h) hoặc ngày chủ nhật (8h-17h)\nTrình độ: cơ bản, biết đàn cơ bản các điệu, quạt chả, hợp âm\nMong muốn lớp ít học viên hoặc học kèm 2,3 học viên.', NULL, '2017-09-15 07:11:07', 1),
(9, 'Đinh Văn Tuấn', 'tuanthanhdat2012@gmail.com', '933556879', NULL, NULL, 'Tôi muốn học ghitar  đệm hát, và ghi tar cổ điển. xin cho tôi biết thêm thông tin. Thanks!', NULL, '2017-09-19 09:08:27', 1),
(10, 'Nguyễn thị Hoa', 'nguyenhoahnm@gmail.com', '0976884818', NULL, NULL, 'M ở HN muốn học bạn, có cách nào k b?', NULL, '2017-09-29 07:28:14', 1),
(11, 'Nguyễn Như Hổ', 'nguyennhuho@gmail.com', '0938127117', NULL, NULL, 'Em muốn học đàn guitar thì liên hệ như thế nào?', NULL, '2017-10-09 14:32:14', 1),
(12, 'Nguyễn Văn Hoan', 'homynhattung@gmail.com', '0938 527 593', NULL, NULL, 'Tôi muốn đăng ký Học Đàn Guitar Fingerstyle từ căn bản đến nâng cao', NULL, '2017-10-13 03:59:00', 1),
(13, 'Nguyễn Văn Hoan', 'homynhattung@gmail.com', '0938 527 593', NULL, NULL, 'Tôi muốn đăng ký Học Đàn Guitar Fingerstyle từ căn bản đến nâng cao', NULL, '2017-10-13 03:59:57', 1),
(14, 'NGUYỄN HUY CƯỜNG', 'huycuong88@yahoo.com', '9099952030', NULL, NULL, 'Chào anh,\nMình muốn đăng ký lớp học đàn guitar đệm hát.\nAnh cho mình thông tin về khóa học: Thời gian, địa điểm học, học phí...\nCảm ơn anh!', NULL, '2017-11-11 22:51:38', 1),
(15, 'NGUYỄN HUY CƯỜNG', 'huycuong88@yahoo.com', '9099952030', NULL, NULL, 'Chào anh,\nMình muốn đăng ký lớp học đàn guitar đệm hát.\nAnh cho mình thông tin về khóa học: Thời gian, địa điểm học, học phí...\nCảm ơn anh!', NULL, '2017-11-11 22:52:00', 1),
(16, 'Manh Thiem', 'manhthiembds@gmail.com', '0938195619', NULL, NULL, 'Dạ em chào Thầy. Em tên Thiêm, Thầy cho em hỏi học guitar  fgs, một khóa học bao nhiêu lầu ạ?. Học phí cho mỗi khóa là bao nhiêu vậy ạ. em cảm ơn.', NULL, '2017-11-18 06:39:12', 1),
(17, 'Manh Thiem', 'manhthiembds@gmail.com', '0938195619', NULL, NULL, 'Dạ em chào Thầy. Em tên Thiêm, Thầy cho em hỏi học guitar  fgs, một khóa học bao nhiêu lầu ạ?. Học phí cho mỗi khóa là bao nhiêu vậy ạ. em cảm ơn.', NULL, '2017-11-18 06:39:38', 1),
(18, 'Ngọc Ánh', 'anhna90306@gmail.com', '0906777306', NULL, NULL, 'Mình muốn đăng ký lớp guitar đệm hát, cho mình xin thông tin học phí và lịch học nhé!', NULL, '2017-11-20 14:03:45', 1),
(50, 'Phước dai', 'Phuocdai128@gmail.com', '01255204484', NULL, NULL, 'Muốn Học Đàn Guitar Finger Style thì phải ntn có hướng dẫn online ko', NULL, '2018-07-14 12:30:19', 1),
(20, 'Lee Monahan', 'leemonahan66@yahoo.com', '861519749', NULL, NULL, 'Hi I was looking to get the tab for nfuyen bao chuong hotel california cud you please let me know how I can order this   kind regards lee', NULL, '2017-12-03 08:56:49', 1),
(21, 'Lee Monahan', 'leemonahan66@yahoo.com', '861519749', NULL, NULL, 'Hi I was looking to get the tab for nfuyen bao chuong hotel california cud you please let me know how I can order this   kind regards lee', NULL, '2017-12-03 08:57:44', 1),
(22, 'Nguyễn Mạnh Tường', 'mtnguyenkt@gmail.com', '0902679591', NULL, NULL, 'thầy cho em hỏi khóa căn bản đệm hát thì thời gian khóa học là bao lâu và học phí của khóa học này là bao nhiêu ạ.\nCảm ơn thầy', NULL, '2017-12-05 14:00:11', 1),
(23, 'Nguyễn Quang Sơn', 'nguyenson78899@gmail.com', '01672224638', NULL, NULL, 'Muốn học guitar solo', NULL, '2017-12-06 10:59:52', 1),
(24, 'hải', 'haigin.nuce@gmail.com', '01643591948', NULL, NULL, 'anh ơi báo giá cho em mấy cái đàn classic của shop nhé. e ở hà nội thì chi phí vận chuyển thế nào anh?', NULL, '2017-12-09 15:24:23', 1),
(25, 'hải', 'haigin.nuce@gmail.com', '01643591948', NULL, NULL, 'anh ơi báo giá cho em mấy cái đàn classic của shop nhé. e ở hà nội thì chi phí vận chuyển thế nào anh?', NULL, '2017-12-09 15:24:59', 1),
(26, 'Lương Duy Cường', 'cuongluongduy@gmail.com', '0909026465', NULL, NULL, 'Anh nguyenbaochuong ơi, mình thực sự thích bản phối bài Tôi đưa em sang sông mà anh hướng dẫn nhưng mình già rồi nên theo không kịp. Rất cảm ơn nếu anh cho mình xin bản phối này để mình tự mày mò. Rất cảm ơn anh', NULL, '2017-12-14 03:38:05', 1),
(27, 'Lương Duy Cường', 'cuongluongduy@gmail.com', '0909026465', NULL, NULL, 'Anh nguyenbaochuong ơi, mình thực sự thích bản phối bài Tôi đưa em sang sông mà anh hướng dẫn nhưng mình già rồi nên theo không kịp. Rất cảm ơn nếu anh cho mình xin bản phối này để mình tự mày mò. Rất cảm ơn anh', NULL, '2017-12-14 03:38:27', 1),
(28, 'Lương Duy Cường', 'cuongluongduy@gmail.com', '0909026465', NULL, NULL, 'Anh nguyenbaochuong ơi, mình thực sự thích bản phối bài Tôi đưa em sang sông mà anh hướng dẫn nhưng mình già rồi nên theo không kịp. Rất cảm ơn nếu anh cho mình xin bản phối này để mình tự mày mò. Rất cảm ơn anh', NULL, '2017-12-14 03:39:00', 1),
(29, 'VAN CHI Ngo', 'chix1cpro@gmail.com', '916308385', NULL, NULL, 'Dạ Chào anh.\nAnh cho em hỏi 1 khóa họ guitar căn bản mất bao lâu và học phí như thế nào ạ.', NULL, '2017-12-14 12:57:01', 1),
(30, 'Thuy Nga', 'binhyen16@gmail.com', '0912118086', NULL, NULL, 'Em rất thích học đàn guitar và chưa biết một chút nào về nhạc lý vậy theo học có khó không ạ? Tư vấn giúp em với.', NULL, '2017-12-22 06:12:14', 1),
(31, 'Hồ Quang Sơn', 'sonhoquang@yahoo.com', '0938290569', NULL, NULL, 'Cho tôi hỏi tôi muốn mua bản nhạc :\n1 Mưa buồn tỉnh lẻ\n2 Thành Phố Buồn\n3 Một Cõi Đi Về\n4 Bản Tình Cuối\n5 Còn Tuổi Nào Cho Em', NULL, '2017-12-23 06:41:27', 1),
(32, 'Hồ Quang Sơn', 'sonhoquang@yahoo.com', '0938290569', NULL, NULL, 'Cho tôi hỏi tôi muốn mua bản nhạc :\n1 Mưa buồn tỉnh lẻ\n2 Thành Phố Buồn\n3 Một Cõi Đi Về\n4 Bản Tình Cuối\n5 Còn Tuổi Nào Cho Em', NULL, '2017-12-23 06:42:11', 1),
(33, 'Thach bich phuong', 'ledkhan1973@icloud.com', '0939191277', NULL, NULL, 'Minh muon hoc dan guita', NULL, '2018-01-04 18:27:22', 1),
(34, 'Barry Hong', 'barryhong@naver.com', '82-10-3510-3343', NULL, NULL, 'Good Morning! I learnt your name and web site from YouTube, and would like to learn playing guitar at your guitar school, if possible.\nPlease let me know the condition of tutor fee etc. and how long will it take from Lotte Hotel to your school by taxi.\nThank you!', NULL, '2018-01-17 22:31:07', 1),
(35, 'Barry Hong', 'barryhong@naver.com', '82-10-3510-3343', NULL, NULL, 'Good Morning! I learnt your name and web site from YouTube, and would like to learn playing guitar at your guitar school, if possible.\nPlease let me know the condition of tutor fee etc. and how long will it take from Lotte Hotel to your school by taxi.\nThank you!', NULL, '2018-01-17 22:32:21', 1),
(36, 'Barry Hong', 'barryhong@naver.com', '82-10-3510-3343', NULL, NULL, 'Good Morning! I learnt your name and web site from YouTube, and would like to learn playing guitar at your guitar school, if possible.\nPlease let me know the condition of tutor fee etc. and how long will it take from Lotte Hotel to your school by taxi. I am a just beginner from Korea.\nThank you!', NULL, '2018-01-17 22:33:49', 1),
(37, 'Phuong Nguyen', 'hoangphuongng@yahoo.com', '0908219802', NULL, NULL, 'Chào bạn, mình muốn hỏi là lớp guitar của bạn có dạy theo hướng hòa âm, chơi cảm âm không?', NULL, '2018-01-18 07:05:49', 1),
(38, 'Phạm Văn Thọ', 'tho.phamvan9@gmail.com', '0987977939', NULL, NULL, 'Chào anh Chương!\nEm là người rất mê guitar, em cũng mới tự học, hiện tại có thể đọc nốt, đọc nhịp, chuyển hợp âm cơ bản được. Em muốn học về Guitar Solo, mà em thì đang ở Vũng tàu, nhưng lại rất muốn học anh, vậy anh cho em hỏi là em có thể học theo kiểu 1 tháng lên sài gòn 1 đến 2 lần để học. còn bài tập và hướng dẫn anh gửi qua mail có được không ạ? Thông tin phản hồi, anh gửi qua mail giúp em.\nEm cám ơn anh', NULL, '2018-01-22 09:15:46', 1),
(39, 'Phạm Văn Thọ', 'tho.phamvan9@gmail.com', '0987977939', NULL, NULL, 'Chào anh Chương!\nEm là người rất mê guitar, em cũng mới tự học, hiện tại có thể đọc nốt, đọc nhịp, chuyển hợp âm cơ bản được. Em muốn học về Guitar Solo, mà em thì đang ở Vũng tàu, nhưng lại rất muốn học anh, vậy anh cho em hỏi là em có thể học theo kiểu 1 tháng lên sài gòn 1 đến 2 lần để học. còn bài tập và hướng dẫn anh gửi qua mail có được không ạ? Thông tin phản hồi, anh gửi qua mail giúp em.\nEm cám ơn anh', NULL, '2018-01-22 09:16:07', 1),
(40, 'lý minh trí', 'minhtri4250@gmail.com', '0977574250', NULL, NULL, 'Em muốn học guitar ở anh! vậy cho em hỏi chi phí và thời gian như thế nào ạ?', NULL, '2018-02-01 07:26:47', 1),
(41, 'binh tran', 'iqutoday@gmail.com', '616-717-1178', NULL, NULL, 'minh o my co the hoc dan bang cach nao khong  ? xin chi dum', NULL, '2018-02-01 22:03:18', 1),
(42, 'Chu Wilson', 'wilson529@gmail.com', '68398616', NULL, NULL, 'Ban kiểm tra âm nhạc Vienna, Giấy mời đại diện địa phương\nVienna Music Examination Board, Local Representative Invitation\n\nTo whom it may concern,\n\nThe Vienna Music Examination Board (“Wiener Musik-Prüfungskommission”) is a world leading accreditation authority on graded music examination based in Vienna, the City of Music.\n\nThe exam we offer is a \"performance-focused\" video examination which contains no scales, aural, sight reading or other supporting tests.\n\nThe whole examination will be recorded in video format and submitted to our office in Vienna for evaluation by professional musicians. Candidates with a positive result will receive a certificate issued directly from Vienna.\n\nOur overseas video exam has been accepted worldwide, we have set up our International Exam Administration Office in Hong Kong for over a decade. Unlike the other examination boards, promoting the VMEB exam will generate extra income for your business. The exam registration fee we charge is humble (e.g. EUR 45 for Grade 1). This allows our representative to actually benefit, for example, a learning centre is bundling the VMEB exam fee with their cost of administration, providing the exam service package at a doubled, tripled to even quadrupled price (e.g. THB 23,477 for performance grade, i.e. EUR 601.46, ://www.vmebthailand.com/index.php)\n\nIt is easy to become a VMEB representative in your city. Simply register your learning centre with us, and nominate one of your teachers to supervise the video exam. You will be setting up your VMEB exam centre in no time.\n\nVMEB exam will not only enhance your corporate image tremendously, it motivates your students, makes them feel accomplished, gives them the reason for continuously learning at your centre, schedule lessons more frequently for exam preparation, attract students from other learning centres to visit your centre, and generate extra income.\n\nFor further information, please visit ://www.vmeb.org . If you have any queries, please do not hesitate to contact me. I am the manager of VMEB International Exam Administration Office (Hong Kong). I\'m looking forward to hearing from you.\n\nSincerely,\n\n\n\nWilson CHU\nManager\n\nVMEB International Exam Administration Office (Hong Kong)\nAddress: Room 403, 4/F, Valley Centre, 80-82 Morrison Hill Road, Hong Kong\nEmail: wilson@wienerklang.org\nTel: +852 2899 7639', NULL, '2018-02-07 14:12:06', 1),
(43, 'Bùi Đình Trung', 'Telaodai97@gmail.com', '0905529197', NULL, NULL, 'Học guitar cổ điển là học mức học phí bao nhiu ạ còn hiện e đang sống tại Đà Nẵng nên sẽ được học theo hình thức nào ạ', NULL, '2018-02-10 03:35:25', 1),
(44, 'Bùi Đình Trung', 'Telaodai97@gmail.com', '0905529197', NULL, NULL, 'Học guitar cổ điển là học mức học phí bao nhiu ạ còn hiện e đang sống tại Đà Nẵng nên sẽ được học theo hình thức nào ạ', NULL, '2018-02-10 03:35:47', 1),
(45, 'Trần Mẫn', 'man.tran_kt@yahoo.com.vn', '0911773174', NULL, NULL, 'Tôi muốn học guitar đệm hát,', NULL, '2018-02-23 10:37:54', 1),
(46, 'Subill Nguyễn', 'Sutyphu@gmail.com', '0906120198', NULL, NULL, 'Chào Bạn  Bảo Chương!\n Tôi muốn mua cây đàn Ghita nhưng tôi lại ở Vũng tàu thì chọn đàn sao nhỉ?  bạn có thể hướng dẫn nhé ! thanks !', NULL, '2018-02-24 02:45:26', 1),
(47, 'Nguyễn Văn San', 'san.nguyenvan95@gmail.com', '01664488006', NULL, NULL, 'Chào anh\nEm đến với guitar từ năm lớp 12, và rất say mê kể từ lần cầm đàn đầu tiên. Đến nỗi mỗi lần đi học về thứ mà em ngấu nghiến ôm là cây đàn chứ không phải là cuốn sách. Khá may mắn khi lúc ấy có em được một người ban cùng lớp đồng hành và hướng dẫn chơi căn bản từ đó. Tuy nhiên, do khả năng tự học guitar cũng có giới hạn nên hiên tại chỉ dừng ở mức cơ bản ( biết chơi và đặt các chord cơ bản vào bài hát, điệu, dò nốt..). Nay, em muốn tìm một nơi để nâng cao khả năng chơi của mình hơn ( đặt chord nhanh hơn, mở rộng chord nâng cao, solo intro, phối lại bài hát cơ bản..) để phục vụ cho sở thích chơi đàn guitar, cũng là dịp để tìm một nhóm hoặc clb guitar để giao lưu,sinh hoạt.\nVậy vui lòng cho em xin thông tin về lớp phù hợp vs khả năng hiện tại của em ạ !\nThanks', NULL, '2018-02-26 10:54:05', 1),
(48, 'Nguyễn Văn San', 'san.nguyenvan95@gmail.com', '01664488006', NULL, NULL, 'Chào anh\nEm đến với guitar từ năm lớp 12, và rất say mê kể từ lần cầm đàn đầu tiên. Đến nỗi mỗi lần đi học về thứ mà em ngấu nghiến ôm là cây đàn chứ không phải là cuốn sách. Khá may mắn khi lúc ấy có em được một người ban cùng lớp đồng hành và hướng dẫn chơi căn bản từ đó. Tuy nhiên, do khả năng tự học guitar cũng có giới hạn nên hiên tại chỉ dừng ở mức cơ bản ( biết chơi và đặt các chord cơ bản vào bài hát, điệu, dò nốt..). Nay, em muốn tìm một nơi để nâng cao khả năng chơi của mình hơn ( đặt chord nhanh hơn, mở rộng chord nâng cao, solo intro, phối lại bài hát cơ bản..) để phục vụ cho sở thích chơi đàn guitar, cũng là dịp để tìm một nhóm hoặc clb guitar để giao lưu,sinh hoạt.\nVậy vui lòng cho em xin thông tin về lớp phù hợp vs khả năng hiện tại của em ạ !\nThanks', NULL, '2018-02-26 10:54:29', 1),
(49, 'NguyenDiep', 'anhdiep19600@gmail.com', '0933882541', NULL, NULL, 'Ban co day dan online kg.', NULL, '2018-03-01 16:22:49', 1),
(51, 'Phước dai', 'Phuocdai128@gmail.com', '01255204484', NULL, NULL, 'Muốn Học Đàn Guitar Finger Style thì phải ntn có hướng dẫn online ko', NULL, '2018-07-14 12:30:57', 1),
(52, 'Phước dai', 'Phuocdai128@gmail.com', '01255204484', NULL, NULL, 'Muốn Học Đàn Guitar Finger Style solo độc tấu thì phải ntn có hướng dẫn online ko', NULL, '2018-07-14 12:32:03', 1),
(53, 'Mai thị kim thoa', 'Comai211997@gmai.com', '0987652921', NULL, NULL, 'Thầy ơi cho em hỏi khoá học cơ bản là bao nhiêu và thời gian học là như thế nào. Thầy gửi tin qua mail giúp em nha', NULL, '2018-08-04 11:42:20', 1),
(54, 'Mai thị kim thoa', 'Comai211997@gmail.com', '0987652921', NULL, NULL, 'Thầy ơi cho em hỏi khoá học cơ bản là bao nhiêu và thời gian học là như thế nào. Thầy gửi tin qua mail giúp em nha', NULL, '2018-08-04 11:42:48', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customfields`
--

CREATE TABLE `customfields` (
  `id` int(11) NOT NULL,
  `name_vn` text COLLATE utf8_unicode_ci,
  `name_en` text COLLATE utf8_unicode_ci,
  `value_vn` text COLLATE utf8_unicode_ci,
  `value_en` text COLLATE utf8_unicode_ci,
  `num` int(11) NOT NULL DEFAULT '0',
  `alias` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customfields`
--

INSERT INTO `customfields` (`id`, `name_vn`, `name_en`, `value_vn`, `value_en`, `num`, `alias`) VALUES
(1, 'Giao hàng', '', 'Tận nơi', '', 0, NULL),
(2, 'Bảo hành', '', '1 năm', '', 0, NULL),
(3, 'Nhà sản xuất', '', 'Việt Nam', '', 0, NULL),
(4, 'Chất liệu', '', 'Vải mềm', '', 0, NULL),
(5, 'Kích thước', '', 'Nhập kích thước của sản phẩm này, mỗi kích thước cách nhau bởi giấu phẩy ví dụ: M, X, XL, L, XX', '', 0, 'sizepro'),
(6, 'Kích thước sản phẩm', '', 'M, X, XL, L, XX', '', 0, 'sizepro'),
(7, 'Màu sắc', '', 'Xanh, vàng, cam, đỏ, trắng', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `img` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flags`
--

CREATE TABLE `flags` (
  `id` int(11) NOT NULL,
  `key` varchar(100) CHARACTER SET latin1 NOT NULL,
  `value` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flags`
--

INSERT INTO `flags` (`id`, `key`, `value`) VALUES
(1, 'has_future_article', '0');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name_vn` text COLLATE utf8_unicode_ci,
  `name_en` text COLLATE utf8_unicode_ci,
  `img` text COLLATE utf8_unicode_ci,
  `num` int(11) DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `type` text COLLATE utf8_unicode_ci,
  `cid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name_vn`, `name_en`, `img`, `num`, `active`, `type`, `cid`) VALUES
(1, 'cart_view.png', 'cart_view.png', 'upload/plupload/cart_view.png', 0, 1, 'products', 21),
(2, 'pro1.png', 'pro1.png', 'upload/plupload/pro1.png', 0, 1, 'products', 21),
(3, 'pro2.png', 'pro2.png', 'upload/plupload/pro2.png', 0, 1, 'products', 21);

-- --------------------------------------------------------

--
-- Table structure for table `img`
--

CREATE TABLE `img` (
  `id` int(11) NOT NULL,
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
  `link_button2` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `img`
--

INSERT INTO `img` (`id`, `cid`, `name_vn`, `name_en`, `short_vn`, `short_en`, `active`, `num`, `img`, `url_vn`, `url_en`, `text1`, `text2`, `text3`, `button1`, `button2`, `link_button1`, `link_button2`) VALUES
(67, 7, '2', NULL, NULL, NULL, 1, 0, 'logo62.png', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 4, 'Thông tin tổng hợp', '', 'Học lại miễn phí, hỗ trợ trọn đời', '', 0, 1, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 4, 'Học Đàn Guitar', '', 'Mang lại cho các học viên sự hứng thú, vui vẻ', '', 0, 2, 'upload/images/hoc-dan-guitar.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 4, 'Hỗ trợ trọn đời', '', 'Tư vấn  - 0121 780 6789', '', 0, 3, 'upload/images/ho-tro-tron-doi.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 4, 'Dạy kèm tại nhà', '', 'Chúng tôi cam kết sẽ mang đến cho học viên kết quả hơn mong đợi', '', 0, 4, 'upload/images/day-kem-tai-nha.png', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 5, 'Banner-chan-1', '', '', '', 1, 0, 'upload/images/banner-chan-1.jpg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 5, 'Banner-chan-2', '', '', '', 1, 0, 'upload/images/banner-chan-2.jpg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 7, '1', NULL, NULL, NULL, 1, 0, 'logo6.png', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 7, 'lo go 1', NULL, NULL, NULL, 1, 0, 'logo61.png', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 6, 'banner-kenh-tin-tong-hop', '', '', '', 1, 0, 'upload/images/banner-kenh-tin-tong-hop.jpg', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 7, '3', NULL, NULL, NULL, 1, 0, 'logo63.png', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 7, '4', NULL, NULL, NULL, 1, 0, 'logo64.png', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 7, '7', NULL, NULL, NULL, 1, 0, 'logo65.png', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 7, '8', NULL, NULL, NULL, 1, 0, 'logo66.png', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 1, '3', NULL, NULL, NULL, 1, 0, 'Slide-nuoc-lanh-4.jpg', '', NULL, '', '', '', '', '', '', ''),
(61, 1, '1', NULL, NULL, NULL, 1, 0, 'slide-gia-cong-cat-cnc-11.jpg', '', NULL, '', '', '', '', '', '', ''),
(62, 1, '2', NULL, NULL, NULL, 1, 0, 'Slide-nuoc-lanh-1.jpg', '', NULL, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `img_group`
--

CREATE TABLE `img_group` (
  `id` int(11) NOT NULL,
  `alias` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_vn` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_vn` text COLLATE utf8_unicode_ci,
  `short_en` text COLLATE utf8_unicode_ci,
  `active` int(11) DEFAULT '1',
  `num` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `img_group`
--

INSERT INTO `img_group` (`id`, `alias`, `name_vn`, `name_en`, `short_vn`, `short_en`, `active`, `num`) VALUES
(1, 'HomeSlider', 'Hình slider trang chủ', NULL, NULL, NULL, 1, 1),
(4, 'ServiceInfo', 'Thông tin dịch vụ', NULL, NULL, NULL, 1, 1),
(5, 'FooterImage', 'Hình quảng cáo footer', NULL, NULL, NULL, 1, 1),
(7, 'corpImage', 'Hợp tác nội dung', NULL, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `content` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `name`, `content`) VALUES
(1, 'header', '{\"address\":\"18 Nguy\\u1ec5n Tr\\u01b0\\u1eddng T\\u1ed9, Ph\\u01b0\\u1eddng T\\u00e2n Th\\u00e0nh, Qu\\u1eadn T\\u00e2n Ph\\u00fa, Th\\u00e0nh Ph\\u1ed1. H\\u1ed3 Ch\\u00ed Minh\",\"header_left\":\"\",\"phone\":\"0913726283\",\"email\":\"info@goodwater.vn\",\"header_right\":\"\",\"img\":\"logo80x80.png\",\"image_small\":\"logo80x801.png\"}'),
(2, 'mail', '{\"receiveMail\":\"nviettu12345@gmail.com\",\"BccMail\":\"nvtu553@gmail.com\",\"name\":\"viet tu\",\"sendMail\":\"nviettu12345@gmail.com\",\"passMail\":\"viettu1234\",\"hostMail\":\"smtp.gmail.com\",\"sigMail\":\"\",\"succMail\":\"G\\u1edfi mail th\\u00e0nh c\\u00f4ng\",\"errMail\":\"G\\u1edfi mail th\\u1ea5t b\\u1ea1i\"}'),
(3, 'general', '{\"analytics\":\"\",\"otherScript\":\"\",\"WebmasterTool\":\"\",\"robotFile\":\"contact1.txt\",\"limitProduct\":\"5\",\"limitNews\":\"5\",\"limitCat\":\"12\",\"limitComment\":\"12\",\"limitRelProduct\":\"3\",\"limitRelNews\":\"5\",\"baotri\":\"0\",\"dateTo\":\"2019-09-23\",\"dateFrom\":\"2019-09-23\",\"copyright\":\"<p>b\\u1ea3n quy\\u1ec1n thu\\u1ed9c v\\u1ec1 vi\\u1ebft t\\u00fa @ 2019<\\/p>\\r\\n\",\"comment\":\"1\",\"slide\":\"1\",\"noindex\":\"0\",\"name\":\"\",\"sitemapFile\":\"sitemap.xml\"}');

-- --------------------------------------------------------

--
-- Table structure for table `infos`
--

CREATE TABLE `infos` (
  `id` int(11) NOT NULL,
  `mail_contact` text COLLATE utf8_unicode_ci,
  `mail_user` text COLLATE utf8_unicode_ci,
  `mail_pass` text COLLATE utf8_unicode_ci,
  `mail_host` text COLLATE utf8_unicode_ci,
  `mail_name` text COLLATE utf8_unicode_ci,
  `mail_list` text COLLATE utf8_unicode_ci,
  `mail_footer_vn` text COLLATE utf8_unicode_ci,
  `mail_footer_en` text COLLATE utf8_unicode_ci,
  `logo` text COLLATE utf8_unicode_ci,
  `favicon` text COLLATE utf8_unicode_ci,
  `noindex` tinyint(4) NOT NULL DEFAULT '0',
  `checkcomment` tinyint(4) NOT NULL DEFAULT '1',
  `showlanguage` tinyint(4) NOT NULL DEFAULT '1',
  `showcomment` tinyint(4) NOT NULL DEFAULT '1',
  `showsearch` tinyint(4) NOT NULL DEFAULT '1',
  `showregister` tinyint(4) NOT NULL DEFAULT '1',
  `showlogo` tinyint(4) NOT NULL DEFAULT '1',
  `showoptin` tinyint(4) NOT NULL DEFAULT '0',
  `showcart` tinyint(4) NOT NULL DEFAULT '0',
  `showcat` text CHARACTER SET utf8,
  `bao_tri` tinyint(4) NOT NULL DEFAULT '0',
  `bat_dau` datetime DEFAULT NULL,
  `ket_thuc` datetime DEFAULT NULL,
  `publish_date_sukien` date DEFAULT NULL,
  `active_future` tinyint(4) NOT NULL DEFAULT '0',
  `today` tinyint(4) NOT NULL DEFAULT '0',
  `thankyou_vn` text COLLATE utf8_unicode_ci,
  `thankyou_en` text COLLATE utf8_unicode_ci,
  `showslider` tinyint(4) NOT NULL DEFAULT '1',
  `webmaster` text COLLATE utf8_unicode_ci,
  `robot` text COLLATE utf8_unicode_ci,
  `facebook` text COLLATE utf8_unicode_ci,
  `fbwidth` int(11) DEFAULT NULL,
  `fbheight` int(11) DEFAULT NULL,
  `googleplus` text COLLATE utf8_unicode_ci,
  `copyright_vn` text COLLATE utf8_unicode_ci,
  `copyright_en` text COLLATE utf8_unicode_ci,
  `googlemap` text COLLATE utf8_unicode_ci,
  `logoname_vn` text COLLATE utf8_unicode_ci,
  `logoname_en` text COLLATE utf8_unicode_ci,
  `paging_product` int(11) NOT NULL DEFAULT '0',
  `paging_article` int(11) NOT NULL DEFAULT '0',
  `paging_submenu` int(11) NOT NULL DEFAULT '0',
  `paging_album` int(11) NOT NULL DEFAULT '0',
  `paging_video` int(11) NOT NULL DEFAULT '0',
  `paging_comment` int(11) NOT NULL DEFAULT '0',
  `num_relate_product` int(11) NOT NULL DEFAULT '0',
  `num_relate_article` int(11) NOT NULL DEFAULT '0',
  `num_cat_article` int(11) NOT NULL DEFAULT '6',
  `rate` double NOT NULL DEFAULT '0',
  `percent` double NOT NULL DEFAULT '0',
  `404page` text COLLATE utf8_unicode_ci,
  `sitemap` text COLLATE utf8_unicode_ci,
  `post_footer_vn` text COLLATE utf8_unicode_ci,
  `post_footer_en` text COLLATE utf8_unicode_ci,
  `pro_footer_vn` text COLLATE utf8_unicode_ci,
  `pro_footer_en` text COLLATE utf8_unicode_ci,
  `popup_show` tinyint(4) NOT NULL DEFAULT '0',
  `popup_time` int(11) NOT NULL,
  `popup_content_vn` text COLLATE utf8_unicode_ci,
  `popup_content_en` text COLLATE utf8_unicode_ci,
  `exit_popup_show` tinyint(4) NOT NULL DEFAULT '0',
  `exit_popup_time` int(11) NOT NULL,
  `exit_popup_content_vn` text COLLATE utf8_unicode_ci,
  `exit_popup_content_en` text COLLATE utf8_unicode_ci,
  `exit_popup_alert_vn` text COLLATE utf8_unicode_ci,
  `exit_popup_alert_en` text COLLATE utf8_unicode_ci,
  `send_email_success_vn` text COLLATE utf8_unicode_ci,
  `send_email_success_en` text COLLATE utf8_unicode_ci,
  `send_email_unsuccess_vn` text COLLATE utf8_unicode_ci,
  `send_email_unsuccess_en` text COLLATE utf8_unicode_ci,
  `showbuybtn` tinyint(4) NOT NULL DEFAULT '1',
  `showprice` tinyint(4) NOT NULL DEFAULT '1',
  `emailrequire` tinyint(4) NOT NULL DEFAULT '1',
  `top_hotline` text COLLATE utf8_unicode_ci,
  `top_email` text COLLATE utf8_unicode_ci,
  `social_facebook` text COLLATE utf8_unicode_ci,
  `social_googleplus` text COLLATE utf8_unicode_ci,
  `un_footer_vn` text CHARACTER SET utf8
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `infos`
--

INSERT INTO `infos` (`id`, `mail_contact`, `mail_user`, `mail_pass`, `mail_host`, `mail_name`, `mail_list`, `mail_footer_vn`, `mail_footer_en`, `logo`, `favicon`, `noindex`, `checkcomment`, `showlanguage`, `showcomment`, `showsearch`, `showregister`, `showlogo`, `showoptin`, `showcart`, `showcat`, `bao_tri`, `bat_dau`, `ket_thuc`, `publish_date_sukien`, `active_future`, `today`, `thankyou_vn`, `thankyou_en`, `showslider`, `webmaster`, `robot`, `facebook`, `fbwidth`, `fbheight`, `googleplus`, `copyright_vn`, `copyright_en`, `googlemap`, `logoname_vn`, `logoname_en`, `paging_product`, `paging_article`, `paging_submenu`, `paging_album`, `paging_video`, `paging_comment`, `num_relate_product`, `num_relate_article`, `num_cat_article`, `rate`, `percent`, `404page`, `sitemap`, `post_footer_vn`, `post_footer_en`, `pro_footer_vn`, `pro_footer_en`, `popup_show`, `popup_time`, `popup_content_vn`, `popup_content_en`, `exit_popup_show`, `exit_popup_time`, `exit_popup_content_vn`, `exit_popup_content_en`, `exit_popup_alert_vn`, `exit_popup_alert_en`, `send_email_success_vn`, `send_email_success_en`, `send_email_unsuccess_vn`, `send_email_unsuccess_en`, `showbuybtn`, `showprice`, `emailrequire`, `top_hotline`, `top_email`, `social_facebook`, `social_googleplus`, `un_footer_vn`) VALUES
(1, 'doanphanhung@gmail.com', 'doanphanhung@gmail.com', 'passw0rd', 'smtp.gmail.com', '', '', '', '', 'upload/images/logo.png', 'upload/images/favicon.png', 0, 1, 0, 1, 0, 0, 0, 0, 0, '266', 0, '2013-03-12 01:00:00', '2013-04-04 05:00:00', '2019-05-28', 1, 0, '<p>\r\n	Xin cảm ơn quý khách hàng đã tin tưởng và đặt mua sản phẩm của chúng tôi! Email đơn hàng đã được gởi đến quý khách, nếu quý khách không thấy mail, vui lòng kiểm tra trong spam!</p>\r\n<p>\r\n	Sản phẩm sẽ được chúng tôi giao đến quý khách trong vòng 2 đến 5 ngày làm việc!</p>\r\n<p>\r\n	Rất hân hạnh được phục vụ quý khách!</p>\r\n', '<p>\r\n	Thank you!</p>\r\n', 1, '', '', 'https://www.facebook.com/tintonghop/', 300, 300, '', 'Kênh thông tin tổng hợp', '', '', 'Tin tức tổng hợp 24h', 'demo.webitop.net', 18, 20, 15, 10, 10, 5, 12, 6, 21, 22000, 0, '<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/kcfinder/upload/images/Anh-mau/404page.jpg\" style=\"width: 350px; height: 337px;\" /></p>\r\n<p style=\"text-align: center;\">\r\n	<a href=\"http://kenhtin.net\">Link này không tồn tại, bấm vào đây để về trang chủ!</a></p>\r\n', 'sitemap.xml', '<div class=\"news_content\" style=\"margin: 0px; padding: 10px 0px 0px; text-align: justify; line-height: 25px; color: rgb(85, 84, 83); font-family: Tahoma, Geneva, sans-serif;\">\r\n	<div style=\"text-align: right;\">\r\n		&nbsp;</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', '<div class=\"news_content\" style=\"margin: 0px; padding: 10px 0px 0px; text-align: justify; line-height: 25px; color: rgb(85, 84, 83); font-family: Tahoma, Geneva, sans-serif;\">\r\n	<p style=\"margin: 0px; padding: 0px 0px 10px; line-height: 22px; text-align: right;\">\r\n		&nbsp;</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '', 0, 3, '', '', 0, 0, '', '', 'Chờ chút nhé! Chúng tôi có món quà này dành cho bạn!', '', 'Xin cảm ơn! Chúng tôi đã nhận được liên hệ từ bạn!', 'Thank you! We have received your email!', 'Lỗi gửi mail, nhưng chúng tôi đã nhận được thông tin bạn gởi. Bạn cũng có thể gọi chúng tôi bằng số hotline ở mục Liên Hệ!', 'There”s an error when sending mail. Please come back next time!', 0, 0, 1, 'Hotline', '', '', '', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" class=\"table-responsive1\" style=\"width: 1000px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align: center;\">\r\n				<samp><a href=\"http://kenhtin.net\"><strong><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"font-size:11px;\">TRANG CHỦ</span></span></strong></a></samp></td>\r\n			<td style=\"text-align: center;\">\r\n				<samp><a href=\"http://kenhtin.net/doi-song-xa-hoi/\"><strong><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"font-size:11px;\">ĐỜI SỐNG - XÃ HỘI</span></span></strong></a></samp></td>\r\n			<td style=\"text-align: center;\">\r\n				<samp><a href=\"http://kenhtin.net/kinh-te/\"><strong><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"font-size:11px;\">KINH TẾ</span></span></strong></a></samp></td>\r\n			<td style=\"text-align: center;\">\r\n				<samp><a href=\"http://kenhtin.net/phap-luat/\"><strong><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"font-size:11px;\">PHÁP LUẬT</span></span></strong></a></samp></td>\r\n			<td style=\"text-align: center;\">\r\n				<samp><a href=\"http://kenhtin.net/van-hoa-giai-tri/\"><strong><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"font-size:11px;\">VĂN HÓA - GIẢI TRÍ</span></span></strong></a></samp></td>\r\n			<td style=\"text-align: center;\">\r\n				<samp><a href=\"http://kenhtin.net/cong-dong-mang/\"><strong><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"font-size:11px;\">CỘNG ĐỒNG MẠNG</span></span></strong></a></samp></td>\r\n			<td style=\"text-align: center;\">\r\n				<samp><a href=\"http://kenhtin.net/the-thao/\"><strong><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"font-size:11px;\">THỂ THAO</span></span></strong></a></samp></td>\r\n			<td style=\"text-align: center;\">\r\n				<samp><a href=\"http://kenhtin.net/du-lich-am-thuc/\"><strong><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"font-size:11px;\">DU LỊCH - ẨM THỰC</span></span></strong></a></samp></td>\r\n			<td style=\"text-align: center;\">\r\n				<samp><a href=\"http://kenhtin.net/khoe-dep/\"><strong><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"font-size:11px;\">KHỎE - ĐẸP</span></span></strong></a></samp></td>\r\n			<td style=\"text-align: center;\">\r\n				<samp><a href=\"http://kenhtin.net/the-gioi/\"><strong><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"font-size:11px;\">THẾ GIỚI&nbsp;</span></span></strong></a></samp></td>\r\n			<td style=\"text-align: center;\">\r\n				<samp><a href=\"http://kenhtin.net/cong-nghe-xe/\"><strong><span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"font-size:11px;\">CÔNG NGHỆ - XE</span></span></strong></a></samp></td>\r\n			<td style=\"text-align: center;\">\r\n				<a href=\"http://kenhtin.net/gioi-thieu/\" target=\"_blank\"><strong><span style=\"font-size:11px;\">GIỚI THIỆU</span></strong></a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class=\"footer-gachngang\">\r\n	<img alt=\"logo-chan-trang-kenh-tin\" src=\"/kcfinder/upload/images/3-Chan-trang/dong-chan-trang.jpg\" style=\"width: 1000px; height: 8px;\" /></p>\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" class=\"table-responsive\" style=\"width: 100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<div>\r\n					<span style=\"font-family:arial,helvetica,sans-serif;\"><span style=\"font-size:12px;\"><img alt=\"logo-kenh-tin\" src=\"/kcfinder/upload/images/Anh-mau/logo.png\" style=\"font-family: arial, helvetica, sans-serif; width: 200px; height: 60px;\" /></span></span></div>\r\n			</td>\r\n			<td>\r\n				<div>\r\n					<span style=\"font-size:12px;\">© Copyright 2019 –&nbsp;</span><strong>Công ty Truyền thông SMSCC</strong></div>\r\n				<div>\r\n					<span style=\"font-size:12px;\"><strong>Địa chỉ:</strong>&nbsp;</span>106/461 Minh Khai, Q Hai Bà Trưng, Hà Nội, Việt Nam.</div>\r\n				<div>\r\n					<span style=\"font-size:12px;\"><strong>Chịu trách nhiệm nội dung:</strong> Bà Đoàn Minh Ngọc</span></div>\r\n				<div>\r\n					<span style=\"font-size:12px;\"><strong>Giấy phép số:</strong>&nbsp;003412 TTTT Hà Nội cấp ngày 11 tháng 01 năm 2019.&nbsp;</span></div>\r\n			</td>\r\n			<td>\r\n				<div>\r\n					<span style=\"font-size:12px;\"><strong>Liên hệ:</strong> QC / hợp tác ND</span></div>\r\n				<div>\r\n					<span style=\"font-size:12px;\"><strong>Hotline:</strong>&nbsp;0922001616</span></div>\r\n				<div>\r\n					<strong>Email:</strong> btv@kenhtin.net.</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class=\"f-social-share\" style=\"text-align: right;\">\r\n	<a href=\"https://www.facebook.com/tintonghop\" target=\"_blank\"><img alt=\"Facebook\" src=\"/kcfinder/upload/images/3-Chan-trang/logo-Facebook.jpg\" style=\"width: 20px; height: 20px;\" /></a>&nbsp;&nbsp;<img alt=\"twiter\" src=\"/kcfinder/upload/images/3-Chan-trang/logo-twitter.jpg\" style=\"width: 20px; height: 20px;\" />&nbsp;&nbsp;<span class=\"zalo-share-button\" data-color=\"blue\" data-href=\"\" data-layout=\"2\" data-oaid=\"1448573277465135091\"><img alt=\"Zalo\" src=\"/kcfinder/upload/images/3-Chan-trang/zalo_icon.png\" style=\"width: 20px; height: 20px;cursor: pointer;\" /></span></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `interfaces`
--

CREATE TABLE `interfaces` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `bg_image` text COLLATE utf8_unicode_ci,
  `bg_color` text COLLATE utf8_unicode_ci,
  `bg_type` tinyint(4) NOT NULL DEFAULT '1',
  `bg_position` tinyint(4) DEFAULT '1',
  `body_text_color` text COLLATE utf8_unicode_ci,
  `menu_image` text COLLATE utf8_unicode_ci,
  `menu_color` text COLLATE utf8_unicode_ci,
  `menu_type` tinyint(4) NOT NULL DEFAULT '1',
  `menu_position` tinyint(4) NOT NULL DEFAULT '1',
  `menu_sub_color` text COLLATE utf8_unicode_ci,
  `menu_text_color` text COLLATE utf8_unicode_ci,
  `menu_text_hover_color` text COLLATE utf8_unicode_ci,
  `footer_image` text COLLATE utf8_unicode_ci,
  `footer_color` text COLLATE utf8_unicode_ci,
  `footer_type` tinyint(4) NOT NULL DEFAULT '1',
  `footer_position` tinyint(4) NOT NULL DEFAULT '1',
  `footer_text_color` text COLLATE utf8_unicode_ci,
  `link_color` text COLLATE utf8_unicode_ci,
  `link_hover_color` text COLLATE utf8_unicode_ci,
  `button_color` text COLLATE utf8_unicode_ci NOT NULL,
  `button_hover_color` text COLLATE utf8_unicode_ci NOT NULL,
  `button_bg` text COLLATE utf8_unicode_ci,
  `button_bg_hover` text COLLATE utf8_unicode_ci,
  `title_color` text COLLATE utf8_unicode_ci,
  `title_image` text COLLATE utf8_unicode_ci,
  `title_text_color` text COLLATE utf8_unicode_ci,
  `title_type` tinyint(4) NOT NULL DEFAULT '1',
  `price_color` text COLLATE utf8_unicode_ci NOT NULL,
  `gotop_image` text COLLATE utf8_unicode_ci,
  `active` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `interfaces`
--

INSERT INTO `interfaces` (`id`, `name`, `bg_image`, `bg_color`, `bg_type`, `bg_position`, `body_text_color`, `menu_image`, `menu_color`, `menu_type`, `menu_position`, `menu_sub_color`, `menu_text_color`, `menu_text_hover_color`, `footer_image`, `footer_color`, `footer_type`, `footer_position`, `footer_text_color`, `link_color`, `link_hover_color`, `button_color`, `button_hover_color`, `button_bg`, `button_bg_hover`, `title_color`, `title_image`, `title_text_color`, `title_type`, `price_color`, `gotop_image`, `active`) VALUES
(10, 'Web mỹ phẩm làm đẹp', 'upload/backgrounds/mian background.jpg', '', 2, 2, '050505', '', '780379', 1, 2, '780379', 'fcfcfc', 'ff8503', '', '780379', 1, 2, 'ffffff', '0a0a0a', '780379', 'fff', 'fff', '780379', '780379', '780379', NULL, NULL, 1, 'f00', 'upload/backgrounds/gotop-111.png', 0),
(11, 'Web quần áo thời trang', '', 'ffe0f9', 1, 2, '525252', 'upload/backgrounds/h-menu-1399709869.png', 'db3370', 1, 2, 'db3370', 'fff', 'ffa3c5', 'upload/backgrounds/footer-1399709869.png', 'db3370', 1, 2, 'fff', '323232', 'db3370', 'ffffff', 'db3370', 'db3370', 'ffa3c5', '383838', NULL, NULL, 1, '94023c', 'upload/backgrounds/gotop-1399709869.png', 0),
(12, 'Web Thực phẩm chức năng', 'upload/backgrounds/vCUUY.jpg', '', 2, 2, '404040', 'upload/backgrounds/h-menu-1399709043.png', '78a206', 1, 2, '78a206', 'ffffff', 'ffff00', 'upload/backgrounds/footer-1399709043.png', '516e01', 1, 2, 'ffffff', '575757', '0066ff', 'fff', 'ffffff', '78a206', 'ff8400', '0d0d0d', NULL, NULL, 1, '008c21', 'upload/backgrounds/gotop-1399709043.png', 0),
(13, 'Web bất động sản', 'upload/backgrounds/grass-background.jpg', '8cff69', 2, 1, '3d3d3d', '', '137d00', 1, 2, '137d00', 'fff', 'fff200', 'upload/backgrounds/footer-1399709614.png', '137d00', 1, 2, 'fff', '137d00', 'fff200', 'fff', 'f7ff00', '137d00', 'fff200', '137d00', NULL, NULL, 1, 'f00', 'upload/backgrounds/gotop-1399709614.png', 1),
(14, 'Web rau sạch', 'upload/backgrounds/350842.jpg', '', 2, 1, '2e2e2e', NULL, '0c9400', 1, 1, 'ff6600', '', 'ffa200', NULL, '0c9400', 1, 1, 'ffffff', '525252', 'ff0000', 'ffdd00', 'ffffff', '0c9400', 'ff0000', 'ff0000', NULL, NULL, 1, 'ff5900', 'upload/backgrounds/tumblr_m6gqm2C6cC1r729r3.png', 0),
(15, 'Web ngân hàng tín dụng', 'upload/backgrounds/bg.jpg', '333333', 2, 2, '333333', NULL, 'ffbc47', 1, 1, '333333', '333333', 'ffffff', 'upload/backgrounds/foot.png', 'ffbc47', 2, 1, 'ffbc47', '333333', 'ffbc47', 'ffbc47', '333333', '333333', 'ffbc47', '323232', NULL, NULL, 1, '008cbf', 'upload/backgrounds/1418042876_f-top_256-32.png', 0),
(16, 'Web visa du học', 'upload/backgrounds/body_bg.jpg', '266303', 2, 2, '303030', NULL, '7fc248', 1, 1, '7fc248', '', '00238a', NULL, '7fc248', 1, 1, 'fff', '266303', '7fc248', 'fff', 'fff', '0b3a5e', '7fc248', '323232', NULL, NULL, 1, 'f00', 'upload/backgrounds/1418042876_f-top_256-32.png', 0),
(17, 'Web tour du lịch', 'upload/backgrounds/7.jpg', '2e65b8', 2, 1, '262626', NULL, '2e65b8', 1, 1, '2e65b8', '', 'ffaa00', NULL, '2e65b8', 1, 1, 'fff', '262626', '2e65b8', 'fff', 'fff', '2e65b8', 'ffaa00', '2e65b8', NULL, NULL, 1, 'ff4400', 'upload/backgrounds/1418042876_f-top_256-32.png', 0),
(18, 'Web cho thuê xe', 'upload/backgrounds/b-bg-1399709614.jpg', '292929', 1, 2, '292929', 'upload/backgrounds/h-menu-1399709614.png', 'ffea00', 1, 2, 'ffea00', '292929', '0000ff', 'upload/backgrounds/footer-1399709614.png', 'ffea00', 1, 2, '454545', '383838', '0000ff', 'ffffff', '0000ff', '383838', 'ffea00', '383838', NULL, NULL, 1, 'ff6f00', 'upload/backgrounds/gotop-1399709614.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `laytin`
--

CREATE TABLE `laytin` (
  `id` int(11) NOT NULL,
  `name_vn` text CHARACTER SET utf8 NOT NULL,
  `botid` int(11) NOT NULL DEFAULT '1',
  `time_update` int(11) NOT NULL DEFAULT '30',
  `url` text CHARACTER SET utf8 NOT NULL,
  `url_hinh` text,
  `num` int(11) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `cid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laytin`
--

INSERT INTO `laytin` (`id`, `name_vn`, `botid`, `time_update`, `url`, `url_hinh`, `num`, `active`, `cid`) VALUES
(1, 'afamily', 1, 30, 'http://afamily.vn/nha-hay.chn', 'afamily', 0, 0, 273),
(4, 'xu huong', 1, 30, 'http://afamily.vn/nha-hay/xu-huong.chn', 'afamily', 0, 0, 274),
(5, 'kinh te the gioi', 2, 40, 'https://thanhnien.vn/the-gioi/kinh-te-the-gioi/', 'thanhnien/the-gioi/kinh-te-the-gioi', 0, 0, 255),
(6, 'Doi-song-xa-hoi-dan-sinh', 2, 35, 'https://thanhnien.vn/thoi-su/', 'thanhnien/thoi-su', 0, 1, 218),
(7, 'Khoe-dep-dep+', 2, 30, 'https://thanhnien.vn/suc-khoe/lam-dep/', 'thanhnien/suc-khoe/lam-dep', 0, 0, 251),
(8, 'Cong-nghe', 2, 35, 'https://thanhnien.vn/cong-nghe/', 'thanhnien/cong-nghe', 0, 0, 271),
(9, 'Truyen-hinh-dien-anh', 2, 30, 'https://thanhnien.vn/van-hoa/', 'thanhnien/van-hoa', 0, 0, 236),
(10, 'Giao-duc-thanh-nien', 2, 50, 'https://thanhnien.vn/giao-duc/', 'thanhnien/giao-duc', 0, 1, 228),
(11, 'The-gioi-afamily', 1, 30, 'http://afamily.vn/the-gioi.chn', 'The-gioi/Vong-quanh-the-gioi', 0, 0, 262),
(12, 'tuoitre-thoisu', 3, 30, 'https://tuoitre.vn/thoi-su.htm', 'TTO/thoi-su', 0, 0, 218),
(13, 'tuoitre-phap-luat', 3, 35, 'https://tuoitre.vn/phap-luat.htm', 'TTO/phap-luat', 0, 1, 259),
(14, 'vtv-truyen-hinh', 4, 30, 'https://vtv.vn/truyen-hinh.htm', 'vtv/truyen-hinh', 0, 0, 236),
(15, 'vtv-the-gioi-the-gioi-do-day', 4, 30, 'https://vtv.vn/the-gioi/the-gioi-do-day.htm', 'vtv/the-gioi/the-gioi-do-day', 0, 1, 262),
(16, 'afamily.vn/an-ngon', 1, 45, 'http://afamily.vn/an-ngon.chn', 'afamily/an-ngon', 0, 0, 247);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` text COLLATE utf8_unicode_ci,
  `group` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `insert_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `birthday` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `email`, `password`, `phone`, `group`, `status`, `name`, `address`, `insert_date`, `birthday`) VALUES
(1, 'kaka12680@gmail.com', '202cb962ac59075b964b07152d234b70', '0987654321', 3, NULL, 'Test', 'anh', '2017-08-08 02:19:31', NULL),
(2, 'huuthinh061192@gmail.com', '202cb962ac59075b964b07152d234b70', '0987654321', 3, NULL, 'Team Leader', '235 Nguyễn Văn cừ, Q.1 ( tầng trệt)', '2017-08-08 02:26:01', NULL),
(3, 'doanphanhung@vnn.vn', 'a179f82d156d5b6cee975d67cb3109ef', '0922001616', 3, NULL, 'Doan Phan Hung', '381/11 Hoàng Văn Thụ, P2, Q Tân Bình, TPHCM', '2017-08-08 04:14:33', NULL),
(10, 'abc@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '01223435456546', 3, NULL, 'minh hieu 1', '1123 nguyen van viet', '2017-08-15 09:22:22', NULL),
(11, 'doanminhhieuck@gmail.com', '202cb962ac59075b964b07152d234b70', '3546436346', 3, NULL, 'doanminhhieu', '123 nguyen văn qua', '2017-08-16 03:29:10', NULL),
(12, 'hungts76@gmail.com', 'd4b9dd72b9978e4f2f3941917af8d3f7', '0931505007', 3, NULL, 'Nguyễn Xuan Hưng', 'Tiền hải thái bình', '2017-08-28 07:23:28', NULL),
(13, 'xaydungphugia.vn@gmail.com', '00c134d5db96099bc43791358a96d5d6', '0937135710', 3, NULL, 'Nam Phong', '759 Tỉnh lộ 10, phường Bình Trị Đông B, quận Bình Tân, thành phố Hồ Chí Minh', '2017-09-15 07:07:09', NULL),
(14, 'nguoimayman2007@yahoo.com.vn', '758dec7920ac818170e8b843e856bf36', '02513605471', 3, NULL, 'Hoa anh túc', 'Áp 2 Phú Lộc Tân Phú Đồng Nai', '2017-09-19 11:58:41', NULL),
(15, 'dinhtoai.vt@gmail.com', '53528a2952bf95d68ae8d39eded66b3b', '0975558455', 3, NULL, 'nguyễn đình toại', 'Bà Rịa - Vũng Tàu', '2017-09-29 03:42:10', NULL),
(16, 'lehuynhphucnguyen@gmail.com', 'f3a3966ec530b7788f04ac0d4ff8c418', 'Q1. Tp. HCM', 3, NULL, 'Lê Nam', '111 Nguyễn Du', '2017-09-29 04:56:48', NULL),
(17, 'nguyenhoahnm@gmail.com', 'd30553c1a2e1bd1bfe5fb929203f4cf6', '0976884818', 3, NULL, 'Nguễn Thị Hoa', '44lê thái tổ, hoàn kiếm, Hà nội', '2017-09-29 06:56:53', NULL),
(18, 'huubuivan@gmail.com', 'e6e7f4d3716cdc8add525d37f30ec51d', '01674067264', 3, NULL, 'BÙI VẠN HỮU', '170/2 Nguyễn Xí, f26 Bình Thạnh', '2017-09-30 09:07:04', NULL),
(19, 'quanqkd@gmail.com', 'cd0c88d809ae529ace18e489ec23ea84', '0988222133', 3, NULL, 'quandao2016', 'thanh hoa', '2017-10-17 08:52:03', NULL),
(20, 'nhacchoquangcao@gmail.com', '87672e20fc23b043a03deb810b374b28', '01669489986', 3, NULL, 'Nguyễn Tất Đạt', 'Ha nội', '2017-10-25 12:42:12', NULL),
(21, 'conmeomuop.ct22@gmail.com', 'c832947c825001dcfbc0e67fb8cff49a', '0979156428', 3, NULL, 'hoàng văn quân', 'thanh xá, thanh hà, hải dương', '2017-10-27 14:05:49', NULL),
(22, 'trankhueduc@gmail.com', 'da59610b05f6f18637327c55a88af155', '0907778422', 3, NULL, 'Trần Lê Thiện Đức', '489A/23/125H Huỳnh Văn Bánh  ,  Phường 13 ,  Quận Phú Nhuận', '2017-11-13 09:49:59', NULL),
(23, 'maian67123@gmail.com', 'dc819a95e66913d46ca261c070519f3c', '0977549989', 3, NULL, 'Maian', 'Pleiku', '2017-11-28 14:55:52', NULL),
(24, 'longnguyen@gmail.com', '52c69e3a57331081823331c4e69d3f2e', '0977501355', 3, NULL, 'longnguyen', 'hà nội', '2017-11-29 05:22:28', NULL),
(25, 'allainhai@gmail.com', '2dcc8fdb48d8fba0a97d2d65bb8400b3', '0914435978', 3, NULL, 'Nguyễn Minh Hải', '2/70 Đất Thánh, F6, Q,TB, HCM', '2017-12-27 04:21:16', NULL),
(26, 'linhismyname.too@gmail.com', 'fdc0feb594d1234423ac663d93a444dd', '0125 623 7710', 3, NULL, 'linhlinha', 'Hà Nội', '2017-12-27 07:10:59', NULL),
(27, 'huynhtringuyen2005@gmail.com', '1b11f99c5d60abc8bfb8d4bb35f06546', '01226626481', 3, NULL, 'Nguyen Tri', 'Vinh Long', '2017-12-31 14:07:18', NULL),
(28, 'Tuananhdao1575@gmail.com', '03add9ee9f858a8ac0a031c928b0d893', '0964591575', 3, NULL, 'Daotuananh', 'Tayninh', '2018-01-10 03:19:29', NULL),
(29, '0109998270ngoduc@gmail.com', '6c56dddc2f41bb537b5c9accea20f6ab', '01262616100', 3, NULL, 'Ngô đức', 'Biên hoà đồng nai', '2018-01-11 12:52:04', NULL),
(30, 'tungdd@vietinbank.vn', '2467d3744600858cc9026d5ac6005305', '0902282575', 3, NULL, 'dang nhat nam', 'vinh- nghe an', '2018-01-16 03:17:46', NULL),
(31, '8.9khang.2002@gmail.com', 'a593610ffd9b4eb01963aa739ebc3279', '0941979609', 3, NULL, 'Trần Nguyên Khang', 'Hiệp Đức , Quảng Nam , Việt Nam', '2018-01-16 12:19:20', NULL),
(32, 'truongcongdl@gmail.com', '063eb09e9fedb53d9783557cc2656c19', '0972579278', 3, NULL, 'TRƯƠNG CÔNG', '147/1F Lê Đình Cẩn - Tân Tạo - Bình Tân - TP Hồ Chí Minh', '2018-01-17 06:20:40', NULL),
(33, 'barryhong@naver.com', '9319f3e233179e2aedf944f99f3c8c13', '82-10-3510-3343', 3, NULL, 'Barry Hong', '59 Nowonro, Bukgu, Daegu, Korea', '2018-01-17 22:23:45', NULL),
(34, 'mordercaj@gmail.com', '9e7ebcf92475b3baa3101af4cc452495', '0898685081', 3, NULL, 'Lê hữu vinh', '350/33/14 nguyễn văn lượng, gò vấp', '2018-01-18 11:49:31', NULL),
(35, 'hongkhuyen@gmail.com', '6ee78c822c1b3fd3f2f5f66b007e49c1', '89190755645', 3, NULL, 'nguyen thien khuyen', 'tula  nga', '2018-02-28 12:40:50', NULL),
(36, 'johntanphat2002@gmail.com', '05b8c61166d07d80063bdd62347a3da1', '+17144877540', 3, NULL, 'mai tan phat', '1229 S Driftwood Dr, Santa Ana,CA, USA', '2018-03-03 05:57:17', NULL),
(37, 'phuocvovan59@gmail.com', '9dd2318b034c6292980d6fbbb68a7074', '0996546168', 3, NULL, 'Võ Văn Phước', 'Quận 5,TP.HCM', '2018-06-09 01:49:57', NULL),
(38, 'ngotrunghieu365@gmail.com', '9ff55a1e8a1780eef8d0ffd7ff68a318', '0964670192', 3, NULL, 'ngô trung hiếu', 'mỹ tú - sóc trăng', '2018-06-11 11:38:25', NULL),
(39, 'huajhawj2000@gmail.com', 'e8eedcefb97c3c512015d308670921c7', '01669018672', 3, NULL, 'Hầu Xuân Hòa', '5', '2018-07-07 06:56:27', NULL),
(40, 'dohuukhoi1368@gmail.com', 'fd8896e0f8a98e08a553437f09a6daaf', '01637768345', 3, NULL, 'Đỗ hữu Mạnh', 'Biên hoà', '2018-10-03 13:14:12', NULL),
(41, 'thanhnghia2908@icloud.com', '9e202dae21b5ab75669baa4c5eba2b60', '0348684678', 3, NULL, 'Nguyễn Thanh Nghĩa', '214 trần quang Khải q tân định q1', '2019-01-03 09:06:26', NULL),
(42, 'Huongthien77@yahoo.com', '36f20120f9e26a811672c423dcf60438', '0903373725', 3, NULL, 'Nguyen do huong thien', '305/6 ng trong tuyen p.10 q.phu nhuan', '2019-01-04 05:25:58', NULL),
(43, 'nviettu12345@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '30', NULL, NULL, 'viết tú', 'aa', '2019-09-13 06:12:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `modules_widget`
--

CREATE TABLE `modules_widget` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `num` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `alias` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(11, 'slide_video', 11, 1, 'slide_video');

-- --------------------------------------------------------

--
-- Table structure for table `nicks`
--

CREATE TABLE `nicks` (
  `id` int(11) NOT NULL,
  `name_vn` text COLLATE utf8_unicode_ci,
  `name_en` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `yahoo` text COLLATE utf8_unicode_ci,
  `skype` text COLLATE utf8_unicode_ci,
  `num` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nicks`
--

INSERT INTO `nicks` (`id`, `name_vn`, `name_en`, `phone`, `yahoo`, `skype`, `num`, `cid`, `active`) VALUES
(1, 'Kênh tin', '', '0922001616', '', '', 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `optin`
--

CREATE TABLE `optin` (
  `otn_id` int(11) NOT NULL,
  `otn_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `otn_email` varchar(80) CHARACTER SET utf8 DEFAULT NULL,
  `otn_phone` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `otn_insert_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `otn_otn_type_id` int(11) DEFAULT NULL,
  `otn_active` tinyint(4) DEFAULT '0',
  `view` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `optin`
--

INSERT INTO `optin` (`otn_id`, `otn_name`, `otn_email`, `otn_phone`, `otn_insert_date`, `otn_otn_type_id`, `otn_active`, `view`) VALUES
(3, NULL, 'thanhtoansg@yahoo.com', NULL, '2017-11-01 09:01:59', NULL, 0, 1),
(4, NULL, 'leemonahan66@yahoo.com', NULL, '2017-12-03 08:53:01', NULL, 0, 1),
(5, NULL, 'hathanhphong74@gmail.com', NULL, '2017-12-17 00:04:42', NULL, 0, 1),
(6, NULL, 'nhamdan42@yahoo.com', NULL, '2017-12-17 07:58:29', NULL, 0, 1),
(7, NULL, 'binhyen16@gmail.com', NULL, '2017-12-22 06:15:43', NULL, 0, 1),
(8, NULL, 'dan248560@gmail.com', NULL, '2018-01-20 02:50:56', NULL, 0, 1),
(9, NULL, 'hongkhuyen@gmail.com', NULL, '2018-02-28 14:08:44', NULL, 0, 1),
(10, NULL, 'phuocvovan59@gmail.com', NULL, '2018-06-09 01:51:44', NULL, 0, 1),
(11, NULL, 'khoibx@yahoo.com', NULL, '2018-10-10 16:40:18', NULL, 0, 1),
(12, NULL, 'thanhnghia2908@icloud.com', NULL, '2019-01-03 09:12:58', NULL, 0, 1),
(14, NULL, 'abc@gmail.com', NULL, '2019-04-22 09:47:01', NULL, 0, 1),
(16, NULL, 'doanphanhung@gmail.com', NULL, '2019-04-22 09:48:27', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `optin_type`
--

CREATE TABLE `optin_type` (
  `id` int(11) NOT NULL,
  `otn_type_name_vn` varchar(300) CHARACTER SET utf8 NOT NULL,
  `otn_type_name_en` text COLLATE utf8_unicode_ci,
  `otn_type_content_vn` text CHARACTER SET utf8,
  `otn_type_content_en` text CHARACTER SET utf8,
  `otn_type_image` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `otn_type_active` tinyint(4) DEFAULT '0',
  `otn_type_insert_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `otn_type_file` text CHARACTER SET utf8,
  `email_subject_vn` varchar(800) CHARACTER SET utf8 NOT NULL,
  `email_subject_en` text COLLATE utf8_unicode_ci,
  `email_template_vn` text CHARACTER SET utf8 NOT NULL,
  `email_template_en` text COLLATE utf8_unicode_ci,
  `send_email_flag` int(11) NOT NULL DEFAULT '1',
  `alert_vn` text COLLATE utf8_unicode_ci,
  `alert_en` text COLLATE utf8_unicode_ci,
  `num` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `option_widget`
--

CREATE TABLE `option_widget` (
  `id` tinyint(4) NOT NULL,
  `name_vn` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
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
  `reason` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `code`, `name_vn`, `phone`, `email`, `address`, `note`, `status`, `date`, `total`, `detail`, `reason`) VALUES
(1, NULL, 'Nguyễn Viết TÚ', '0778123957', 'nviettu12345@gmail.com', '15/6 tran van ơn Hồ chí minh', 'abc', 2, '2019-10-09 15:39:40', 0, NULL, NULL),
(2, 'rg', 'nguyễn viết tú', '233', 'maydongphucgiaphat@gmail.com', '18 nguyễn trường tộ', 'd', 0, '2019-10-10 09:38:29', 0, '{\"d1fe173d08e959397adf34b1d77e88d7\":{\"id\":\"79\",\"qty\":1,\"name\":\"B\\u1ec3 ch\\u1ee9a l\\u1eafp gh\\u00e9p Aquatank h\\u00ecnh tr\\u1ee5 tr\\u00f2n 4 t\\u1ea7ng\",\"img\":\"Be-chua-lap-ghep-mai-non-hinh-tron-4-tang.jpg\",\"price\":9000000,\"rowid\":\"d1fe173d08e959397adf34b1d77e88d7\",\"subtotal\":9000000}}', ''),
(3, '', 'viết tú', '30', 'nviettu12345@gmail.com', 'a', 'abc', 2, '2019-10-11 06:56:02', 999900000, '{\"35f4a8d465e6e1edc05f3d8ab658c551\":{\"id\":\"78\",\"qty\":1,\"name\":\"B\\u1ec3 ch\\u1ee9a l\\u1eafp gh\\u00e9p Aquatank h\\u00ecnh tr\\u1ee5 tr\\u00f2n 3 t\\u1ea7ng\",\"img\":\"Be-chua-lap-ghep-mai-non-hinh-tron-3-tang.jpg\",\"price\":999900000,\"rowid\":\"35f4a8d465e6e1edc05f3d8ab658c551\",\"subtotal\":999900000}}', '');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `alias` text COLLATE utf8_unicode_ci,
  `name_vn` text COLLATE utf8_unicode_ci,
  `name_en` text COLLATE utf8_unicode_ci,
  `content_vn` text COLLATE utf8_unicode_ci,
  `content_en` text COLLATE utf8_unicode_ci,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `img` text COLLATE utf8_unicode_ci,
  `note` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `num` int(11) NOT NULL DEFAULT '0',
  `merchantCode` text COLLATE utf8_unicode_ci,
  `passcode` text COLLATE utf8_unicode_ci,
  `key` text COLLATE utf8_unicode_ci,
  `verify` text COLLATE utf8_unicode_ci,
  `allow` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `alias`, `name_vn`, `name_en`, `content_vn`, `content_en`, `active`, `img`, `note`, `email`, `num`, `merchantCode`, `passcode`, `key`, `verify`, `allow`) VALUES
(2, 'Nganluong', 'Thanh toán qua Ngân Lượng', '', '', '', 1, NULL, NULL, '', 3, '', '', '', NULL, 1),
(3, 'Tannoi', 'Thanh toán khi nhận hàng', '', '<p>Thanh toán khi nhận hàng</p>\n', '', 1, NULL, NULL, '', 1, '', '', '', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
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
  `tag_vn` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name_vn`, `name_en`, `code`, `price`, `price_sale`, `content_vn`, `content_en`, `num`, `img`, `img_thumb`, `cid`, `active`, `attr_vn`, `size`, `unique_key_vn`, `unique_key_en`, `title_vn`, `title_en`, `keyword_vn`, `keyword_en`, `des_vn`, `des_en`, `view`, `vote`, `short_vn`, `short_en`, `is_noindex`, `dated`, `des_vn_char`, `des_en_char`, `bestseller`, `not_in_widget`, `pin`, `categoriebranch`, `ext_url`, `new_tab`, `saleoff`, `tag_vn`) VALUES
(77, 'Bể chứa lắp ghép Aquatank hình trụ tròn 2 tầng', NULL, 'AQUATANK-TRON-2-TANG', 0, 0, '<p><strong>Bể chứa công nghiệp lắp ghép Aquatank hình tròn 2 tầng</strong>&nbsp;sử dụng công nghệ lắp ghép 2 lớp, với lớp vật liệu bên ngoài là thép&nbsp;<strong>cacbon</strong>&nbsp;có phủ sơn&nbsp;<strong>epoxy</strong>&nbsp;bảo vệ, lớp bên trong là thép không gỉ.</p>\r\n\r\n<p><strong>Bể chứa lắp ghép Aquatank&nbsp;<strong>hình tròn 2 tầng</strong></strong>&nbsp;là sự lựa chọn hàng đầu cho các giải pháp lưu trữ nước đô thị và công nghiệp, nước thải và chất lỏng công nghiệp.&nbsp;<strong>Bể chứa công nghiệp AquaTank</strong>&nbsp;có tuổi thọ và độ bền hơn hẳn các loại bể chứa khác.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Bể chứa công nghiệp lắp ghép Aquatank\" height=\"317\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Be-chua-aquatank-1.jpg\" width=\"600\" /></p>\r\n\r\n<p><u><strong>NHỮNG ƯU ĐIỂM VƯỢT TRỘI CỦA BỂ CHỨA CÔNG NGHIỆP LẮP GHÉP AQUATANK&nbsp;<strong>HÌNH TRÒN 2 TẦNG</strong></strong></u></p>\r\n\r\n<ul>\r\n	<li>Giảm thiểu công tác bảo trì trong suốt thời gian sử dụng.</li>\r\n	<li>Không bị ăn mòn hoặc gỉ sét.</li>\r\n	<li>Chất lượng bể chứa được bảo hành.</li>\r\n	<li>Thực hiện dịch vụ trọn gói từ phê duyệt bản vẽ đến công tác thử nghiệm.</li>\r\n	<li>Quy trình lắp dựng đơn giản, không cần cần cẩu hoặc các thiết bị lớn khác.</li>\r\n	<li>Dễ dàng lắp đặt thi công tại các khu vực xa hoặc tách biệt.</li>\r\n	<li>Giảm thiểu tác động đến môi trường khi xây dựng.</li>\r\n	<li>Giảm thiểu thời gian đình trệ thi công do các yếu tố liên quan đến thời tiết tại hiện trường.</li>\r\n	<li>Thiết kế dễ dàng cho việc mở rộng dung tích hoặc di dời.</li>\r\n	<li>Tháo dỡ dễ dàng.</li>\r\n	<li>Chi phí đầu tư và vận hành tối ưu nhất.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><img alt=\"BỂ CHỨA LẮP GHÉP AQUATANK\" height=\"338\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Be-chua-aquatank.jpg\" width=\"600\" /></p>\r\n\r\n<p><em>Bể chứa công nghiệp Aquatank</em></p>\r\n\r\n<p><strong>THÀNH BỂ</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Thành bể: Gồm 2 lớp vật liệu. Bên ngoài là lớp thép&nbsp;<strong>cacbon</strong>&nbsp;chịu lực kết cấu, bên trong là lớp thép không gỉ. Thành bể là những tấm thép được lắp ghép với nhau bằng phương pháp bắt&nbsp;<strong>bulong</strong>&nbsp;và&nbsp;<strong>chất trám khe</strong>. Thép cacbon là lớp chịu bền kết cấu và bảo vệ thành bể, lớp thép không gỉ bên trong tiếp xúc với chất lỏng, bảo vệ thành bể.</p>\r\n\r\n<table align=\"center\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Bể chứa lắp ghép aqutank\" height=\"303\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Thanh-be-chua-aquatank-1.jpg\" width=\"400\" /></td>\r\n			<td><img alt=\"Mặt cắt dọc chi tiết A\" height=\"303\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Thanh-be-chua-aquatank-2.jpg\" width=\"400\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bể chứa lắp ghép AquaTank.</td>\r\n			<td>Mặt cắt dọc chi tiết A.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>ĐÁY BỂ</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Đáy bể: Tùy theo nhu cầu trữ các chất lỏng và yêu cầu khách hàng có thể dùng bệ đỡ&nbsp;<strong>beton</strong>&nbsp;làm đáy bể. Các yêu cầu cao hơn, đáy bể sẽ làm bằng vật liệu 1 lớp chống ăn mòn (inox 1mm, cao su EPDM/ Butyl…) được đặt trên bệ đỡ bể do bản thân móng bể đã chịu lực về mặt kết cấu.</p>\r\n\r\n<table cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Vật liệu chống ăn mòn\" height=\"369\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Day-be-chua-aquatank-1.jpg\" width=\"400\" /></td>\r\n			<td><img alt=\"Bệ đỡ beton  làm đáy\" height=\"369\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Day-be-chua-aquatank-2.jpg\" width=\"400\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vật liệu chống ăn mòn&nbsp;&nbsp;&nbsp;</td>\r\n			<td>Bệ đỡ beton&nbsp; làm đáy</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>MÁI CHE</strong>&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<table align=\"center\" cellpadding=\"2\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p><img alt=\"Mái che dạng vòm cho bể aquatank\" height=\"276\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/mai-che-dang-vom.jpg\" width=\"600\" /></p>\r\n\r\n			<p>Mái che dạng vòm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Mái che: Được làm bằng khung kèo thép lợp tole hoặc mái vòm, mái nón, mái TDR bằng nhôm, mái bể có cửa thông hơi và cửa thăm.</p>\r\n\r\n			<p><em>Một số dạng mái che phổ biến:</em></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Mái che dạng nón cho bể aquatank\" height=\"181\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Mai-che-dang-non.jpg\" width=\"600\" /></p>\r\n\r\n			<p>Mái che dạng nón</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p><img alt=\"Mái che dáng tdr cho bể chứa aquatank\" height=\"338\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Mai-che-dang-tdr.jpg\" width=\"600\" /></p>\r\n\r\n			<p>Mái che dạng TDR</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><img alt=\"BẢNG PHÂN TÍCH ƯU NHƯỢC ĐIỂM AQUATANK SO VỚI BỂ THÉP PHỦ THỦY TINH &amp; BỂ TÚI CAO SU\" height=\"855\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Bang-phan-tich-uu-nhuoc-diem-aquatank.jpg\" width=\"900\" /></p>\r\n\r\n<p>Bảng phân tích ưu nhược điểm bể chứa công nghiệp Aquatank so với bể phủ thép thủy tinh và bể túi cao su</p>\r\n\r\n<p><u><strong>PHẠM VI ỨNG DỤNG SẢN PHẨM</strong></u></p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" width=\"659\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Nước cấp đô thị</strong></p>\r\n\r\n			<p>&nbsp;- Các bồn chứa nổi trên mặt đất.</p>\r\n\r\n			<p>&nbsp;- Bồn chứa lắp ghép trên tháp (CET).</p>\r\n\r\n			<p>&nbsp;- Bồn chứa khử muối và mái che.</p>\r\n\r\n			<p>&nbsp;- Các ứng dụng trong công nghiệp và dân dụng.</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Dầu khí</strong></p>\r\n\r\n			<p>&nbsp;- Lưu trữ chất lỏng phục vụ công tác khoan, hóa chất lỏng.</p>\r\n\r\n			<p>&nbsp;- Lưu trữ nước gia áp, thu hồi và xử lý chất thải.</p>\r\n\r\n			<p>&nbsp;- Lưu trữ cát gia áp và trong qui trình chế biến.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Phòng cháy chữa cháy</strong></p>\r\n\r\n			<p>&nbsp;- Bồn chứa nước cho hệ thống phun tưới.</p>\r\n\r\n			<p>&nbsp;- Ứng dụng trong các trạm nước chữa cháy cho công nghiệp và dân dụng.</p>\r\n\r\n			<p>&nbsp;- Các bể nước kết hợp nước cấp đô thị và nước chữa cháy.</p>\r\n\r\n			<p>&nbsp;- Các giải pháp bể chứa hình trụ.</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Năng lượng điện</strong></p>\r\n\r\n			<p>&nbsp;- Lưu giữ nước khử khoáng.</p>\r\n\r\n			<p>&nbsp;- Quá trình hóa học FGD và bể chứa.</p>\r\n\r\n			<p>&nbsp;- Bể chứa lưu giữ nhiên liệu lỏng và silo.</p>\r\n\r\n			<p>&nbsp;- Lưu trữ nước trong qui trình sản xuất và nước thải.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Năng lượng sinh học</strong></p>\r\n\r\n			<p>&nbsp;- Hệ thống hoàn chỉnh gồm bồn chứa và mái che trong các quy trình phân loại chất thải và tạo khí gas.</p>\r\n\r\n			<p>&nbsp;- Bể chứa lưu trữ và tháp chứa nhiên liệu sinh học.</p>\r\n\r\n			<p>&nbsp;- Silo và các hệ thống phân tách trong qui trình tái chế và phản ứng sinh học.</p>\r\n\r\n			<p>&nbsp;- Các hệ thống màng đôi và bể khí sinh học bằng thép.</p>\r\n\r\n			<p>&nbsp;- Cung cấp giải pháp thiết kế để đáp ứng các yêu cầu về cải tiến và phát triển công nghệ sinh học.</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Nông nghiệp</strong></p>\r\n\r\n			<p>&nbsp;- Các Silo chứa lương thực và thức ăn dự trữ cho gia súc.</p>\r\n\r\n			<p>&nbsp;- Thiết bị xuất liệu trong công đoạn phát thức ăn cho gia súc.</p>\r\n\r\n			<p>&nbsp;- Bồn chứa bùn và các bồn công nghệ.</p>\r\n\r\n			<p>&nbsp;- Các bồn chứa cho các chất phụ gia và phân bón khô và lỏng</p>\r\n\r\n			<p>&nbsp;- Bồn chứa và mái che cho các hệ thống phân hủy và sản xuất khí sinh học.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bồn trữ nguyên liệu khô</strong></p>\r\n\r\n			<p>&nbsp;- Bồn chứa thép lắp ghép được dùng rộng rãi trong ngành khai thác mỏ, khoáng sản và nguyên liệu khô nông nghiệp với trữ lượng lớn.</p>\r\n\r\n			<p>&nbsp;- Silo với hệ thống xuất liệu cho xe tải hoặc sử dụng các toa xe và đường ray.</p>\r\n\r\n			<p>&nbsp;- Hệ thống xuất liệu cho các bồn chứa vật liệu khô.</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Xử lý nước thải và chất lỏng công nghiệp</strong></p>\r\n\r\n			<p>&nbsp;- Bể chứa cho các công đoạn lắng, lọc, sục khí, phân dòng và chứa bùn.</p>\r\n\r\n			<p>&nbsp;- Bể phản ứng (SBR).</p>\r\n\r\n			<p>&nbsp;- Bể chứa dự phòng nước lũ.</p>\r\n\r\n			<p>&nbsp;- Bồn chứa thép lắp ghép bằng bu-lông cho các ứng dụng trong lưu giữ chất lỏng công nghiệp.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Bảng thông số kỹ thuật của bể chứa lắp ghép aquatank - 2 tầng\" height=\"1032\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/btskt-aquatank-2-tang.jpg\" width=\"900\" /></p>\r\n\r\n<p>Bảng thông số kỹ thuật bể chứa công nghiệp lắp ghép Aquatank 2 tầng</p>\r\n\r\n<p><strong>Ghi chú:</strong></p>\r\n\r\n<p>-&nbsp;&nbsp; &nbsp;Đường kính bể là đường kính thực của bể chứa, đường kính bệ đỡ beton sẽ lớn hơn đường kính thực 1m.</p>\r\n\r\n<p>-&nbsp;&nbsp; &nbsp;Chiều cao bể là chiều cao hiệu dụng của bể chứa, tổng chiều cao bể lớn hơn chiều cao hiệu dụng 0,5m.</p>\r\n\r\n<p><strong>Cách đọc model bể chứa AquaTank:</strong></p>\r\n\r\n<p>-&nbsp;&nbsp; &nbsp;Model của bể AquaTank là cách đọc số tầng và số tấm theo bảng trên.</p>\r\n\r\n<p>-&nbsp;&nbsp; &nbsp;Ví dụ:&nbsp;2L3</p>\r\n\r\n<p>-&nbsp;&nbsp; &nbsp;Trong đó:</p>\r\n\r\n<p>+ 2L3: Kết cấu bể chứa gồm 2 tầng và mỗi tầng có 3 tấm.</p>\r\n\r\n<p>+ Thể tích của bể chứa được tra theo bảng trên, với model&nbsp;2L3&nbsp;thể tích là 13 mét khối (m<sup>3</sup>)</p>\r\n\r\n<p><u><strong>THI CÔNG LẮP ĐẶT</strong></u></p>\r\n\r\n<p>Năng lực cung cấp các loại&nbsp;<strong>bể chứa, bể lắng, bể lọc, bể oxy hóa, bể 2in1, mái che</strong>&nbsp;đến khách hàng không chỉ đơn thuần kết thúc ở việc sản xuất và phân phối sản phẩm, đội ngũ lắp đặt của&nbsp;<strong>Nước Lành</strong>&nbsp;còn có thể cung cấp dịch vụ lắp đặt và bảo trì trong suốt quá trình sử dụng sản phẩm.</p>\r\n\r\n<ul>\r\n	<li><strong>Phương pháp lắp đặt dùng kích:</strong></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>B1: Các tấm thép ở vòng đầu tiên và mái che được lắp với nhau an toàn trên nền đất.</li>\r\n	<li>B2: Thành bồn và mái được nâng lên bằng hệ thống nâng chuyên dụng và vòng kế tiếp được lắp ráp tiếp vào phía dưới.</li>\r\n	<li>B3: Sau khi vòng cuối cùng được lắp ráp, bồn chứa được hạ xuống để thi công phần liên kết với nền móng.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Thi công, lắp đặt dùng kích\" height=\"936\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Thi-cong-lap-dat-dung-kich.jpg\" width=\"900\" /></p>\r\n\r\n<p align=\"center\"><em>Thi công, lắp đặt dùng kích</em></p>\r\n\r\n<ul>\r\n	<li><strong>&nbsp;&nbsp; Phương pháp lắp đặt dùng giàn giáo hoặc cẩu:</strong></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>B1. Các tấm thép ở vòng đầu tiên được lắp đặt chính xác vào nền móng.</li>\r\n	<li>B2. Các vòng kế tiếp được lắp ráp với vòng phía dưới bằng cần cẩu.</li>\r\n	<li>B3. Mái che được lắp đặt hoàn chỉnh trên mặt đất và cẩu vào đúng vị trí liên kết với thành bồn hoặc có thể lắp trực tiếp trên mái.</li>\r\n</ul>\r\n\r\n<p><strong>Thiết kế móng bồn:&nbsp; &nbsp;</strong></p>\r\n\r\n<p>Thiết kế nền móng được thực hiện trước và sau đó có thể được điều chỉnh cho phù hợp với yêu cầu của khách hàng hoặc các ứng dụng lưu trữ khác nhau. Tùy thuộc vào thiết kế kĩ thuật của bồn chứa, cấu tạo móng có các loại điển hình như sau:</p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><img alt=\"Dạng miệng rãnh (Slot Mount)\" height=\"348\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Dang-mieng-go.jpg\" width=\"400\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>- Dạng miệng rãnh (Slot Mount): dùng cho bể chứa thấp. Rất phù hợp sử dụng cho xử lý nước thải, nước cấp</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><img alt=\"Dạng miệng gờ (Curb Mount)\" height=\"348\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Dang-mieng-ranh.jpg\" width=\"400\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>- Dạng miệng gờ (Curb Mount): Dùng cho các bể chứa thấp, rất thích hợp cho các bồn chứa lắp đặt trên tháp cao.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Phụ kiện lắp đặt</strong></p>\r\n\r\n<ul>\r\n	<li>Bộ phận thông hơi</li>\r\n	<li>Cửa thăm: thép tráng kẽm</li>\r\n	<li>Cầu thang lên bể: bằng ống thép tráng kẽm</li>\r\n</ul>\r\n', NULL, 0, 'Be-chua-lap-ghep-mai-non-hinh-tron-2-tang.jpg', '[{\"file_name\":\"Be-chua-lap-ghep-mai-tdr-hinh-tron-2-tang.jpg\"},{\"file_name\":\"Be-chua-lap-ghep-mai-vom-hinh-tron-2-tang.jpg\"}]', 318, 1, '{\"chi\\u1ec1u cao\":\"2.4m\",\"Nh\\u00e0 s\\u1ea3n xu\\u1ea5t\":\"C\\u00f4ng Ty C\\u1ed5 Ph\\u1ea7n N\\u01b0\\u1edbc L\\u00e0nh\",\"S\\u1ed1 t\\u1ea7ng\":\"02 t\\u1ea7ng\",\"\\u0110\\u01b0\\u1eddng k\\u00ednh b\\u1ec3\":\"T\\u1eeb 2.69m \\u0111\\u1ebfn 30.45m\",\"Th\\u1ec3 t\\u00edch\":\"T\\u1eeb 13 m kh\\u1ed1i \\u0111\\u1ebfn 1746 m kh\\u1ed1i\",\"S\\u1ed1 t\\u1ea5m c\\u1ee7a v\\u00f2ng b\\u1ec3\":\"T\\u1eeb 3 t\\u1ea5m \\u0111\\u1ebfn 34 t\\u1ea5m\"}', '', 'Be-chua-lap-ghep-Aquatank-hinh-tru-tron-2-tang', NULL, 'Bể chứa lắp ghép Aquatank hình trụ tròn 2 tầng', NULL, NULL, NULL, 'Bể chứa công nghiệp lắp ghép Aquatank hình trụ tròn 2 tầng là thương hiệu độc quyền của các dòng sản phẩm bể chứa được cung cấp bởi Nước Lành', NULL, 41, 0, 'Bể chứa công nghiệp lắp ghép Aquatank hình trụ tròn 2 tầng là thương hiệu độc quyền của các dòng sản phẩm bể chứa được cung cấp bởi Nước Lành', NULL, 1, '2019-10-02 03:57:44', 0, 0, 0, 0, 0, '', '', 0, 0, '[{\"name_tag\":\"B\\u1ec3 ch\\u1ee9a l\\u1eafp gh\\u00e9p Aquatank h\\u00ecnh tr\\u1ee5 tr\\u00f2n 2 t\\u1ea7ng\",\"unique_key_tag\":\"be-chua-lap-ghep-aquatank-hinh-tru-tron-2-tang\",\"cid_url\":\"Bon-chua-cong-nghiep\"}]'),
(78, 'Bể chứa lắp ghép Aquatank hình trụ tròn 3 tầng', NULL, '', 1000000000, 100000, '<p><strong>Bể chứa công nghiệp lắp ghép Aquatank hình tròn 2 tầng</strong>&nbsp;sử dụng công nghệ lắp ghép 2 lớp, với lớp vật liệu bên ngoài là thép&nbsp;<strong>cacbon</strong>&nbsp;có phủ sơn&nbsp;<strong>epoxy</strong>&nbsp;bảo vệ, lớp bên trong là thép không gỉ.</p>\r\n\r\n<p><strong>Bể chứa lắp ghép Aquatank&nbsp;<strong>hình tròn 2 tầng</strong></strong>&nbsp;là sự lựa chọn hàng đầu cho các giải pháp lưu trữ nước đô thị và công nghiệp, nước thải và chất lỏng công nghiệp.&nbsp;<strong>Bể chứa công nghiệp AquaTank</strong>&nbsp;có tuổi thọ và độ bền hơn hẳn các loại bể chứa khác.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Bể chứa công nghiệp lắp ghép Aquatank\" height=\"317\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Be-chua-aquatank-1.jpg\" width=\"600\" /></p>\r\n\r\n<p><u><strong>NHỮNG ƯU ĐIỂM VƯỢT TRỘI CỦA BỂ CHỨA CÔNG NGHIỆP LẮP GHÉP AQUATANK&nbsp;<strong>HÌNH TRÒN 2 TẦNG</strong></strong></u></p>\r\n\r\n<ul>\r\n	<li>Giảm thiểu công tác bảo trì trong suốt thời gian sử dụng.</li>\r\n	<li>Không bị ăn mòn hoặc gỉ sét.</li>\r\n	<li>Chất lượng bể chứa được bảo hành.</li>\r\n	<li>Thực hiện dịch vụ trọn gói từ phê duyệt bản vẽ đến công tác thử nghiệm.</li>\r\n	<li>Quy trình lắp dựng đơn giản, không cần cần cẩu hoặc các thiết bị lớn khác.</li>\r\n	<li>Dễ dàng lắp đặt thi công tại các khu vực xa hoặc tách biệt.</li>\r\n	<li>Giảm thiểu tác động đến môi trường khi xây dựng.</li>\r\n	<li>Giảm thiểu thời gian đình trệ thi công do các yếu tố liên quan đến thời tiết tại hiện trường.</li>\r\n	<li>Thiết kế dễ dàng cho việc mở rộng dung tích hoặc di dời.</li>\r\n	<li>Tháo dỡ dễ dàng.</li>\r\n	<li>Chi phí đầu tư và vận hành tối ưu nhất.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><img alt=\"BỂ CHỨA LẮP GHÉP AQUATANK\" height=\"338\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Be-chua-aquatank.jpg\" width=\"600\" /></p>\r\n\r\n<p><em>Bể chứa công nghiệp Aquatank</em></p>\r\n\r\n<p><strong>THÀNH BỂ</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Thành bể: Gồm 2 lớp vật liệu. Bên ngoài là lớp thép&nbsp;<strong>cacbon</strong>&nbsp;chịu lực kết cấu, bên trong là lớp thép không gỉ. Thành bể là những tấm thép được lắp ghép với nhau bằng phương pháp bắt&nbsp;<strong>bulong</strong>&nbsp;và&nbsp;<strong>chất trám khe</strong>. Thép cacbon là lớp chịu bền kết cấu và bảo vệ thành bể, lớp thép không gỉ bên trong tiếp xúc với chất lỏng, bảo vệ thành bể.</p>\r\n\r\n<table align=\"center\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Bể chứa lắp ghép aqutank\" height=\"303\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Thanh-be-chua-aquatank-1.jpg\" width=\"400\" /></td>\r\n			<td><img alt=\"Mặt cắt dọc chi tiết A\" height=\"303\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Thanh-be-chua-aquatank-2.jpg\" width=\"400\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bể chứa lắp ghép AquaTank.</td>\r\n			<td>Mặt cắt dọc chi tiết A.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>ĐÁY BỂ</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Đáy bể: Tùy theo nhu cầu trữ các chất lỏng và yêu cầu khách hàng có thể dùng bệ đỡ&nbsp;<strong>beton</strong>&nbsp;làm đáy bể. Các yêu cầu cao hơn, đáy bể sẽ làm bằng vật liệu 1 lớp chống ăn mòn (inox 1mm, cao su EPDM/ Butyl…) được đặt trên bệ đỡ bể do bản thân móng bể đã chịu lực về mặt kết cấu.</p>\r\n\r\n<table cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Vật liệu chống ăn mòn\" height=\"369\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Day-be-chua-aquatank-1.jpg\" width=\"400\" /></td>\r\n			<td><img alt=\"Bệ đỡ beton  làm đáy\" height=\"369\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Day-be-chua-aquatank-2.jpg\" width=\"400\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vật liệu chống ăn mòn&nbsp;&nbsp;&nbsp;</td>\r\n			<td>Bệ đỡ beton&nbsp; làm đáy</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>MÁI CHE</strong>&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<table align=\"center\" cellpadding=\"2\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p><img alt=\"Mái che dạng vòm cho bể aquatank\" height=\"276\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/mai-che-dang-vom.jpg\" width=\"600\" /></p>\r\n\r\n			<p>Mái che dạng vòm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Mái che: Được làm bằng khung kèo thép lợp tole hoặc mái vòm, mái nón, mái TDR bằng nhôm, mái bể có cửa thông hơi và cửa thăm.</p>\r\n\r\n			<p><em>Một số dạng mái che phổ biến:</em></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Mái che dạng nón cho bể aquatank\" height=\"181\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Mai-che-dang-non.jpg\" width=\"600\" /></p>\r\n\r\n			<p>Mái che dạng nón</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p><img alt=\"Mái che dáng tdr cho bể chứa aquatank\" height=\"338\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Mai-che-dang-tdr.jpg\" width=\"600\" /></p>\r\n\r\n			<p>Mái che dạng TDR</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><img alt=\"BẢNG PHÂN TÍCH ƯU NHƯỢC ĐIỂM AQUATANK SO VỚI BỂ THÉP PHỦ THỦY TINH &amp; BỂ TÚI CAO SU\" height=\"855\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Bang-phan-tich-uu-nhuoc-diem-aquatank.jpg\" width=\"900\" /></p>\r\n\r\n<p>Bảng phân tích ưu nhược điểm bể chứa công nghiệp Aquatank so với bể phủ thép thủy tinh và bể túi cao su</p>\r\n\r\n<p><u><strong>PHẠM VI ỨNG DỤNG SẢN PHẨM</strong></u></p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" width=\"659\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Nước cấp đô thị</strong></p>\r\n\r\n			<p>&nbsp;- Các bồn chứa nổi trên mặt đất.</p>\r\n\r\n			<p>&nbsp;- Bồn chứa lắp ghép trên tháp (CET).</p>\r\n\r\n			<p>&nbsp;- Bồn chứa khử muối và mái che.</p>\r\n\r\n			<p>&nbsp;- Các ứng dụng trong công nghiệp và dân dụng.</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Dầu khí</strong></p>\r\n\r\n			<p>&nbsp;- Lưu trữ chất lỏng phục vụ công tác khoan, hóa chất lỏng.</p>\r\n\r\n			<p>&nbsp;- Lưu trữ nước gia áp, thu hồi và xử lý chất thải.</p>\r\n\r\n			<p>&nbsp;- Lưu trữ cát gia áp và trong qui trình chế biến.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Phòng cháy chữa cháy</strong></p>\r\n\r\n			<p>&nbsp;- Bồn chứa nước cho hệ thống phun tưới.</p>\r\n\r\n			<p>&nbsp;- Ứng dụng trong các trạm nước chữa cháy cho công nghiệp và dân dụng.</p>\r\n\r\n			<p>&nbsp;- Các bể nước kết hợp nước cấp đô thị và nước chữa cháy.</p>\r\n\r\n			<p>&nbsp;- Các giải pháp bể chứa hình trụ.</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Năng lượng điện</strong></p>\r\n\r\n			<p>&nbsp;- Lưu giữ nước khử khoáng.</p>\r\n\r\n			<p>&nbsp;- Quá trình hóa học FGD và bể chứa.</p>\r\n\r\n			<p>&nbsp;- Bể chứa lưu giữ nhiên liệu lỏng và silo.</p>\r\n\r\n			<p>&nbsp;- Lưu trữ nước trong qui trình sản xuất và nước thải.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Năng lượng sinh học</strong></p>\r\n\r\n			<p>&nbsp;- Hệ thống hoàn chỉnh gồm bồn chứa và mái che trong các quy trình phân loại chất thải và tạo khí gas.</p>\r\n\r\n			<p>&nbsp;- Bể chứa lưu trữ và tháp chứa nhiên liệu sinh học.</p>\r\n\r\n			<p>&nbsp;- Silo và các hệ thống phân tách trong qui trình tái chế và phản ứng sinh học.</p>\r\n\r\n			<p>&nbsp;- Các hệ thống màng đôi và bể khí sinh học bằng thép.</p>\r\n\r\n			<p>&nbsp;- Cung cấp giải pháp thiết kế để đáp ứng các yêu cầu về cải tiến và phát triển công nghệ sinh học.</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Nông nghiệp</strong></p>\r\n\r\n			<p>&nbsp;- Các Silo chứa lương thực và thức ăn dự trữ cho gia súc.</p>\r\n\r\n			<p>&nbsp;- Thiết bị xuất liệu trong công đoạn phát thức ăn cho gia súc.</p>\r\n\r\n			<p>&nbsp;- Bồn chứa bùn và các bồn công nghệ.</p>\r\n\r\n			<p>&nbsp;- Các bồn chứa cho các chất phụ gia và phân bón khô và lỏng</p>\r\n\r\n			<p>&nbsp;- Bồn chứa và mái che cho các hệ thống phân hủy và sản xuất khí sinh học.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bồn trữ nguyên liệu khô</strong></p>\r\n\r\n			<p>&nbsp;- Bồn chứa thép lắp ghép được dùng rộng rãi trong ngành khai thác mỏ, khoáng sản và nguyên liệu khô nông nghiệp với trữ lượng lớn.</p>\r\n\r\n			<p>&nbsp;- Silo với hệ thống xuất liệu cho xe tải hoặc sử dụng các toa xe và đường ray.</p>\r\n\r\n			<p>&nbsp;- Hệ thống xuất liệu cho các bồn chứa vật liệu khô.</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Xử lý nước thải và chất lỏng công nghiệp</strong></p>\r\n\r\n			<p>&nbsp;- Bể chứa cho các công đoạn lắng, lọc, sục khí, phân dòng và chứa bùn.</p>\r\n\r\n			<p>&nbsp;- Bể phản ứng (SBR).</p>\r\n\r\n			<p>&nbsp;- Bể chứa dự phòng nước lũ.</p>\r\n\r\n			<p>&nbsp;- Bồn chứa thép lắp ghép bằng bu-lông cho các ứng dụng trong lưu giữ chất lỏng công nghiệp.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Bảng thông số kỹ thuật của bể chứa lắp ghép aquatank - 2 tầng\" height=\"1032\" src=\"/ckfinder/upload/images/du-an/btskt-aquatank-3-tang.jpg\" width=\"900\" /></p>\r\n\r\n<p>Bảng thông số kỹ thuật bể chứa công nghiệp lắp ghép Aquatank 2 tầng</p>\r\n\r\n<p><strong>Ghi chú:</strong></p>\r\n\r\n<p>-&nbsp;&nbsp; &nbsp;Đường kính bể là đường kính thực của bể chứa, đường kính bệ đỡ beton sẽ lớn hơn đường kính thực 1m.</p>\r\n\r\n<p>-&nbsp;&nbsp; &nbsp;Chiều cao bể là chiều cao hiệu dụng của bể chứa, tổng chiều cao bể lớn hơn chiều cao hiệu dụng 0,5m.</p>\r\n\r\n<p><strong>Cách đọc model bể chứa AquaTank:</strong></p>\r\n\r\n<p>-&nbsp;&nbsp; &nbsp;Model của bể AquaTank là cách đọc số tầng và số tấm theo bảng trên.</p>\r\n\r\n<p>-&nbsp;&nbsp; &nbsp;Ví dụ:&nbsp;2L3</p>\r\n\r\n<p>-&nbsp;&nbsp; &nbsp;Trong đó:</p>\r\n\r\n<p>+ 2L3: Kết cấu bể chứa gồm 2 tầng và mỗi tầng có 3 tấm.</p>\r\n\r\n<p>+ Thể tích của bể chứa được tra theo bảng trên, với model&nbsp;2L3&nbsp;thể tích là 13 mét khối (m<sup>3</sup>)</p>\r\n\r\n<p><u><strong>THI CÔNG LẮP ĐẶT</strong></u></p>\r\n\r\n<p>Năng lực cung cấp các loại&nbsp;<strong>bể chứa, bể lắng, bể lọc, bể oxy hóa, bể 2in1, mái che</strong>&nbsp;đến khách hàng không chỉ đơn thuần kết thúc ở việc sản xuất và phân phối sản phẩm, đội ngũ lắp đặt của&nbsp;<strong>Nước Lành</strong>&nbsp;còn có thể cung cấp dịch vụ lắp đặt và bảo trì trong suốt quá trình sử dụng sản phẩm.</p>\r\n\r\n<ul>\r\n	<li><strong>Phương pháp lắp đặt dùng kích:</strong></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>B1: Các tấm thép ở vòng đầu tiên và mái che được lắp với nhau an toàn trên nền đất.</li>\r\n	<li>B2: Thành bồn và mái được nâng lên bằng hệ thống nâng chuyên dụng và vòng kế tiếp được lắp ráp tiếp vào phía dưới.</li>\r\n	<li>B3: Sau khi vòng cuối cùng được lắp ráp, bồn chứa được hạ xuống để thi công phần liên kết với nền móng.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Thi công, lắp đặt dùng kích\" height=\"936\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Thi-cong-lap-dat-dung-kich.jpg\" width=\"900\" /></p>\r\n\r\n<p align=\"center\"><em>Thi công, lắp đặt dùng kích</em></p>\r\n\r\n<ul>\r\n	<li><strong>&nbsp;&nbsp; Phương pháp lắp đặt dùng giàn giáo hoặc cẩu:</strong></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>B1. Các tấm thép ở vòng đầu tiên được lắp đặt chính xác vào nền móng.</li>\r\n	<li>B2. Các vòng kế tiếp được lắp ráp với vòng phía dưới bằng cần cẩu.</li>\r\n	<li>B3. Mái che được lắp đặt hoàn chỉnh trên mặt đất và cẩu vào đúng vị trí liên kết với thành bồn hoặc có thể lắp trực tiếp trên mái.</li>\r\n</ul>\r\n\r\n<p><strong>Thiết kế móng bồn:&nbsp; &nbsp;</strong></p>\r\n\r\n<p>Thiết kế nền móng được thực hiện trước và sau đó có thể được điều chỉnh cho phù hợp với yêu cầu của khách hàng hoặc các ứng dụng lưu trữ khác nhau. Tùy thuộc vào thiết kế kĩ thuật của bồn chứa, cấu tạo móng có các loại điển hình như sau:</p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><img alt=\"Dạng miệng rãnh (Slot Mount)\" height=\"348\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Dang-mieng-go.jpg\" width=\"400\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>- Dạng miệng rãnh (Slot Mount): dùng cho bể chứa thấp. Rất phù hợp sử dụng cho xử lý nước thải, nước cấp</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><img alt=\"Dạng miệng gờ (Curb Mount)\" height=\"348\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Dang-mieng-ranh.jpg\" width=\"400\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>- Dạng miệng gờ (Curb Mount): Dùng cho các bể chứa thấp, rất thích hợp cho các bồn chứa lắp đặt trên tháp cao.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Phụ kiện lắp đặt</strong></p>\r\n\r\n<ul>\r\n	<li>Bộ phận thông hơi</li>\r\n	<li>Cửa thăm: thép tráng kẽm</li>\r\n	<li>Cầu thang lên bể: bằng ống thép tráng kẽm</li>\r\n</ul>\r\n', NULL, 0, 'Be-chua-lap-ghep-mai-non-hinh-tron-3-tang.jpg', '[{\"file_name\":\"Be-chua-lap-ghep-mai-tdr-hinh-tron-3-tang.jpg\"},{\"file_name\":\"Be-chua-lap-ghep-mai-vom-hinh-tron-3-tang.jpg\"}]', 318, 1, '{\"chi\\u1ec1u cao\":\"3.79m\",\"Nh\\u00e0 s\\u1ea3n xu\\u1ea5t\":\"C\\u00f4ng Ty C\\u1ed5 Ph\\u1ea7n N\\u01b0\\u1edbc L\\u00e0nh\",\"S\\u1ed1 t\\u1ea7ng\":\"03 t\\u1ea7ng\",\"\\u0110\\u01b0\\u1eddng k\\u00ednh b\\u1ec3\":\"T\\u1eeb 2.69m \\u0111\\u1ebfn 30.45m\",\"Th\\u1ec3 t\\u00edch\":\"T\\u1eeb 21 m kh\\u1ed1i \\u0111\\u1ebfn 2764 m kh\\u1ed1i\",\"S\\u1ed1 t\\u1ea5m c\\u1ee7a v\\u00f2ng b\\u1ec3\":\"T\\u1eeb 3 t\\u1ea5m \\u0111\\u1ebfn 34 t\\u1ea5m\"}', '', 'Be-chua-lap-ghep-Aquatank-hinh-tru-tron-3-tang', NULL, 'Bể chứa lắp ghép Aquatank hình trụ tròn 3 tầng', NULL, NULL, NULL, 'Bể chứa công nghiệp lắp ghép Aquatank hình trụ tròn 3 tầng là thương hiệu độc quyền của các dòng sản phẩm bể chứa được cung cấp bởi Công Ty Cổ Phần Nước Lành', NULL, 10, 0, 'Bể chứa công nghiệp lắp ghép Aquatank hình trụ tròn 3 tầng là thương hiệu độc quyền của các dòng sản phẩm bể chứa được cung cấp bởi Công Ty Cổ Phần Nước Lành', NULL, 1, '2019-10-05 06:47:40', 0, 0, 0, 0, 0, '', '', 0, 0, '[{\"name_tag\":\"B\\u1ec3 ch\\u1ee9a l\\u1eafp gh\\u00e9p Aquatank h\\u00ecnh tr\\u1ee5 tr\\u00f2n 3 t\\u1ea7ng\",\"unique_key_tag\":\"be-chua-lap-ghep-aquatank-hinh-tru-tron-3-tang\",\"cid_url\":\"Bon-chua-cong-nghiep\"}]'),
(79, 'Bể chứa lắp ghép Aquatank hình trụ tròn 4 tầng', NULL, '', 9000000, 0, '<p><strong>Bể chứa công nghiệp lắp ghép Aquatank hình tròn 2 tầng</strong>&nbsp;sử dụng công nghệ lắp ghép 2 lớp, với lớp vật liệu bên ngoài là thép&nbsp;<strong>cacbon</strong>&nbsp;có phủ sơn&nbsp;<strong>epoxy</strong>&nbsp;bảo vệ, lớp bên trong là thép không gỉ.</p>\r\n\r\n<p><strong>Bể chứa lắp ghép Aquatank&nbsp;<strong>hình tròn 2 tầng</strong></strong>&nbsp;là sự lựa chọn hàng đầu cho các giải pháp lưu trữ nước đô thị và công nghiệp, nước thải và chất lỏng công nghiệp.&nbsp;<strong>Bể chứa công nghiệp AquaTank</strong>&nbsp;có tuổi thọ và độ bền hơn hẳn các loại bể chứa khác.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Bể chứa công nghiệp lắp ghép Aquatank\" height=\"317\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Be-chua-aquatank-1.jpg\" width=\"600\" /></p>\r\n\r\n<p><u><strong>NHỮNG ƯU ĐIỂM VƯỢT TRỘI CỦA BỂ CHỨA CÔNG NGHIỆP LẮP GHÉP AQUATANK&nbsp;<strong>HÌNH TRÒN 2 TẦNG</strong></strong></u></p>\r\n\r\n<ul>\r\n	<li>Giảm thiểu công tác bảo trì trong suốt thời gian sử dụng.</li>\r\n	<li>Không bị ăn mòn hoặc gỉ sét.</li>\r\n	<li>Chất lượng bể chứa được bảo hành.</li>\r\n	<li>Thực hiện dịch vụ trọn gói từ phê duyệt bản vẽ đến công tác thử nghiệm.</li>\r\n	<li>Quy trình lắp dựng đơn giản, không cần cần cẩu hoặc các thiết bị lớn khác.</li>\r\n	<li>Dễ dàng lắp đặt thi công tại các khu vực xa hoặc tách biệt.</li>\r\n	<li>Giảm thiểu tác động đến môi trường khi xây dựng.</li>\r\n	<li>Giảm thiểu thời gian đình trệ thi công do các yếu tố liên quan đến thời tiết tại hiện trường.</li>\r\n	<li>Thiết kế dễ dàng cho việc mở rộng dung tích hoặc di dời.</li>\r\n	<li>Tháo dỡ dễ dàng.</li>\r\n	<li>Chi phí đầu tư và vận hành tối ưu nhất.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><img alt=\"BỂ CHỨA LẮP GHÉP AQUATANK\" height=\"338\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Be-chua-aquatank.jpg\" width=\"600\" /></p>\r\n\r\n<p><em>Bể chứa công nghiệp Aquatank</em></p>\r\n\r\n<p><strong>THÀNH BỂ</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Thành bể: Gồm 2 lớp vật liệu. Bên ngoài là lớp thép&nbsp;<strong>cacbon</strong>&nbsp;chịu lực kết cấu, bên trong là lớp thép không gỉ. Thành bể là những tấm thép được lắp ghép với nhau bằng phương pháp bắt&nbsp;<strong>bulong</strong>&nbsp;và&nbsp;<strong>chất trám khe</strong>. Thép cacbon là lớp chịu bền kết cấu và bảo vệ thành bể, lớp thép không gỉ bên trong tiếp xúc với chất lỏng, bảo vệ thành bể.</p>\r\n\r\n<table align=\"center\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Bể chứa lắp ghép aqutank\" height=\"303\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Thanh-be-chua-aquatank-1.jpg\" width=\"400\" /></td>\r\n			<td><img alt=\"Mặt cắt dọc chi tiết A\" height=\"303\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Thanh-be-chua-aquatank-2.jpg\" width=\"400\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bể chứa lắp ghép AquaTank.</td>\r\n			<td>Mặt cắt dọc chi tiết A.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>ĐÁY BỂ</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Đáy bể: Tùy theo nhu cầu trữ các chất lỏng và yêu cầu khách hàng có thể dùng bệ đỡ&nbsp;<strong>beton</strong>&nbsp;làm đáy bể. Các yêu cầu cao hơn, đáy bể sẽ làm bằng vật liệu 1 lớp chống ăn mòn (inox 1mm, cao su EPDM/ Butyl…) được đặt trên bệ đỡ bể do bản thân móng bể đã chịu lực về mặt kết cấu.</p>\r\n\r\n<table cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Vật liệu chống ăn mòn\" height=\"369\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Day-be-chua-aquatank-1.jpg\" width=\"400\" /></td>\r\n			<td><img alt=\"Bệ đỡ beton  làm đáy\" height=\"369\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Day-be-chua-aquatank-2.jpg\" width=\"400\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vật liệu chống ăn mòn&nbsp;&nbsp;&nbsp;</td>\r\n			<td>Bệ đỡ beton&nbsp; làm đáy</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>MÁI CHE</strong>&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<table align=\"center\" cellpadding=\"2\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p><img alt=\"Mái che dạng vòm cho bể aquatank\" height=\"276\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/mai-che-dang-vom.jpg\" width=\"600\" /></p>\r\n\r\n			<p>Mái che dạng vòm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Mái che: Được làm bằng khung kèo thép lợp tole hoặc mái vòm, mái nón, mái TDR bằng nhôm, mái bể có cửa thông hơi và cửa thăm.</p>\r\n\r\n			<p><em>Một số dạng mái che phổ biến:</em></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Mái che dạng nón cho bể aquatank\" height=\"181\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Mai-che-dang-non.jpg\" width=\"600\" /></p>\r\n\r\n			<p>Mái che dạng nón</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p><img alt=\"Mái che dáng tdr cho bể chứa aquatank\" height=\"338\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Mai-che-dang-tdr.jpg\" width=\"600\" /></p>\r\n\r\n			<p>Mái che dạng TDR</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><img alt=\"BẢNG PHÂN TÍCH ƯU NHƯỢC ĐIỂM AQUATANK SO VỚI BỂ THÉP PHỦ THỦY TINH &amp; BỂ TÚI CAO SU\" height=\"855\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Bang-phan-tich-uu-nhuoc-diem-aquatank.jpg\" width=\"900\" /></p>\r\n\r\n<p>Bảng phân tích ưu nhược điểm bể chứa công nghiệp Aquatank so với bể phủ thép thủy tinh và bể túi cao su</p>\r\n\r\n<p><u><strong>PHẠM VI ỨNG DỤNG SẢN PHẨM</strong></u></p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" width=\"659\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Nước cấp đô thị</strong></p>\r\n\r\n			<p>&nbsp;- Các bồn chứa nổi trên mặt đất.</p>\r\n\r\n			<p>&nbsp;- Bồn chứa lắp ghép trên tháp (CET).</p>\r\n\r\n			<p>&nbsp;- Bồn chứa khử muối và mái che.</p>\r\n\r\n			<p>&nbsp;- Các ứng dụng trong công nghiệp và dân dụng.</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Dầu khí</strong></p>\r\n\r\n			<p>&nbsp;- Lưu trữ chất lỏng phục vụ công tác khoan, hóa chất lỏng.</p>\r\n\r\n			<p>&nbsp;- Lưu trữ nước gia áp, thu hồi và xử lý chất thải.</p>\r\n\r\n			<p>&nbsp;- Lưu trữ cát gia áp và trong qui trình chế biến.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Phòng cháy chữa cháy</strong></p>\r\n\r\n			<p>&nbsp;- Bồn chứa nước cho hệ thống phun tưới.</p>\r\n\r\n			<p>&nbsp;- Ứng dụng trong các trạm nước chữa cháy cho công nghiệp và dân dụng.</p>\r\n\r\n			<p>&nbsp;- Các bể nước kết hợp nước cấp đô thị và nước chữa cháy.</p>\r\n\r\n			<p>&nbsp;- Các giải pháp bể chứa hình trụ.</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Năng lượng điện</strong></p>\r\n\r\n			<p>&nbsp;- Lưu giữ nước khử khoáng.</p>\r\n\r\n			<p>&nbsp;- Quá trình hóa học FGD và bể chứa.</p>\r\n\r\n			<p>&nbsp;- Bể chứa lưu giữ nhiên liệu lỏng và silo.</p>\r\n\r\n			<p>&nbsp;- Lưu trữ nước trong qui trình sản xuất và nước thải.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Năng lượng sinh học</strong></p>\r\n\r\n			<p>&nbsp;- Hệ thống hoàn chỉnh gồm bồn chứa và mái che trong các quy trình phân loại chất thải và tạo khí gas.</p>\r\n\r\n			<p>&nbsp;- Bể chứa lưu trữ và tháp chứa nhiên liệu sinh học.</p>\r\n\r\n			<p>&nbsp;- Silo và các hệ thống phân tách trong qui trình tái chế và phản ứng sinh học.</p>\r\n\r\n			<p>&nbsp;- Các hệ thống màng đôi và bể khí sinh học bằng thép.</p>\r\n\r\n			<p>&nbsp;- Cung cấp giải pháp thiết kế để đáp ứng các yêu cầu về cải tiến và phát triển công nghệ sinh học.</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Nông nghiệp</strong></p>\r\n\r\n			<p>&nbsp;- Các Silo chứa lương thực và thức ăn dự trữ cho gia súc.</p>\r\n\r\n			<p>&nbsp;- Thiết bị xuất liệu trong công đoạn phát thức ăn cho gia súc.</p>\r\n\r\n			<p>&nbsp;- Bồn chứa bùn và các bồn công nghệ.</p>\r\n\r\n			<p>&nbsp;- Các bồn chứa cho các chất phụ gia và phân bón khô và lỏng</p>\r\n\r\n			<p>&nbsp;- Bồn chứa và mái che cho các hệ thống phân hủy và sản xuất khí sinh học.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bồn trữ nguyên liệu khô</strong></p>\r\n\r\n			<p>&nbsp;- Bồn chứa thép lắp ghép được dùng rộng rãi trong ngành khai thác mỏ, khoáng sản và nguyên liệu khô nông nghiệp với trữ lượng lớn.</p>\r\n\r\n			<p>&nbsp;- Silo với hệ thống xuất liệu cho xe tải hoặc sử dụng các toa xe và đường ray.</p>\r\n\r\n			<p>&nbsp;- Hệ thống xuất liệu cho các bồn chứa vật liệu khô.</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Xử lý nước thải và chất lỏng công nghiệp</strong></p>\r\n\r\n			<p>&nbsp;- Bể chứa cho các công đoạn lắng, lọc, sục khí, phân dòng và chứa bùn.</p>\r\n\r\n			<p>&nbsp;- Bể phản ứng (SBR).</p>\r\n\r\n			<p>&nbsp;- Bể chứa dự phòng nước lũ.</p>\r\n\r\n			<p>&nbsp;- Bồn chứa thép lắp ghép bằng bu-lông cho các ứng dụng trong lưu giữ chất lỏng công nghiệp.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Bảng thông số kỹ thuật của bể chứa lắp ghép aquatank - 2 tầng\" height=\"1032\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/btskt-aquatank-4-tang.jpg\" width=\"900\" /></p>\r\n\r\n<p>Bảng thông số kỹ thuật bể chứa công nghiệp lắp ghép Aquatank 2 tầng</p>\r\n\r\n<p><strong>Ghi chú:</strong></p>\r\n\r\n<p>-&nbsp;&nbsp; &nbsp;Đường kính bể là đường kính thực của bể chứa, đường kính bệ đỡ beton sẽ lớn hơn đường kính thực 1m.</p>\r\n\r\n<p>-&nbsp;&nbsp; &nbsp;Chiều cao bể là chiều cao hiệu dụng của bể chứa, tổng chiều cao bể lớn hơn chiều cao hiệu dụng 0,5m.</p>\r\n\r\n<p><strong>Cách đọc model bể chứa AquaTank:</strong></p>\r\n\r\n<p>-&nbsp;&nbsp; &nbsp;Model của bể AquaTank là cách đọc số tầng và số tấm theo bảng trên.</p>\r\n\r\n<p>-&nbsp;&nbsp; &nbsp;Ví dụ:&nbsp;2L3</p>\r\n\r\n<p>-&nbsp;&nbsp; &nbsp;Trong đó:</p>\r\n\r\n<p>+ 2L3: Kết cấu bể chứa gồm 2 tầng và mỗi tầng có 3 tấm.</p>\r\n\r\n<p>+ Thể tích của bể chứa được tra theo bảng trên, với model&nbsp;2L3&nbsp;thể tích là 13 mét khối (m<sup>3</sup>)</p>\r\n\r\n<p><u><strong>THI CÔNG LẮP ĐẶT</strong></u></p>\r\n\r\n<p>Năng lực cung cấp các loại&nbsp;<strong>bể chứa, bể lắng, bể lọc, bể oxy hóa, bể 2in1, mái che</strong>&nbsp;đến khách hàng không chỉ đơn thuần kết thúc ở việc sản xuất và phân phối sản phẩm, đội ngũ lắp đặt của&nbsp;<strong>Nước Lành</strong>&nbsp;còn có thể cung cấp dịch vụ lắp đặt và bảo trì trong suốt quá trình sử dụng sản phẩm.</p>\r\n\r\n<ul>\r\n	<li><strong>Phương pháp lắp đặt dùng kích:</strong></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>B1: Các tấm thép ở vòng đầu tiên và mái che được lắp với nhau an toàn trên nền đất.</li>\r\n	<li>B2: Thành bồn và mái được nâng lên bằng hệ thống nâng chuyên dụng và vòng kế tiếp được lắp ráp tiếp vào phía dưới.</li>\r\n	<li>B3: Sau khi vòng cuối cùng được lắp ráp, bồn chứa được hạ xuống để thi công phần liên kết với nền móng.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Thi công, lắp đặt dùng kích\" height=\"936\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Thi-cong-lap-dat-dung-kich.jpg\" width=\"900\" /></p>\r\n\r\n<p align=\"center\"><em>Thi công, lắp đặt dùng kích</em></p>\r\n\r\n<ul>\r\n	<li><strong>&nbsp;&nbsp; Phương pháp lắp đặt dùng giàn giáo hoặc cẩu:</strong></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>B1. Các tấm thép ở vòng đầu tiên được lắp đặt chính xác vào nền móng.</li>\r\n	<li>B2. Các vòng kế tiếp được lắp ráp với vòng phía dưới bằng cần cẩu.</li>\r\n	<li>B3. Mái che được lắp đặt hoàn chỉnh trên mặt đất và cẩu vào đúng vị trí liên kết với thành bồn hoặc có thể lắp trực tiếp trên mái.</li>\r\n</ul>\r\n\r\n<p><strong>Thiết kế móng bồn:&nbsp; &nbsp;</strong></p>\r\n\r\n<p>Thiết kế nền móng được thực hiện trước và sau đó có thể được điều chỉnh cho phù hợp với yêu cầu của khách hàng hoặc các ứng dụng lưu trữ khác nhau. Tùy thuộc vào thiết kế kĩ thuật của bồn chứa, cấu tạo móng có các loại điển hình như sau:</p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><img alt=\"Dạng miệng rãnh (Slot Mount)\" height=\"348\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Dang-mieng-go.jpg\" width=\"400\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>- Dạng miệng rãnh (Slot Mount): dùng cho bể chứa thấp. Rất phù hợp sử dụng cho xử lý nước thải, nước cấp</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><img alt=\"Dạng miệng gờ (Curb Mount)\" height=\"348\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Dang-mieng-ranh.jpg\" width=\"400\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>- Dạng miệng gờ (Curb Mount): Dùng cho các bể chứa thấp, rất thích hợp cho các bồn chứa lắp đặt trên tháp cao.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Phụ kiện lắp đặt</strong></p>\r\n\r\n<ul>\r\n	<li>Bộ phận thông hơi</li>\r\n	<li>Cửa thăm: thép tráng kẽm</li>\r\n	<li>Cầu thang lên bể: bằng ống thép tráng kẽm</li>\r\n</ul>\r\n', NULL, 0, 'Be-chua-lap-ghep-mai-non-hinh-tron-4-tang.jpg', '[{\"file_name\":\"Be-chua-lap-ghep-mai-tdr-hinh-tron-4-tang.jpg\"},{\"file_name\":\"Be-chua-lap-ghep-mai-vom-hinh-tron-4-tang.jpg\"}]', 318, 1, '{\"chi\\u1ec1u cao\":\"5.19m\",\"Nh\\u00e0 s\\u1ea3n xu\\u1ea5t\":\"C\\u00f4ng Ty C\\u1ed5 Ph\\u1ea7n N\\u01b0\\u1edbc L\\u00e0nh\",\"S\\u1ed1 t\\u1ea7ng\":\"04 t\\u1ea7ng\",\"\\u0110\\u01b0\\u1eddng k\\u00ednh b\\u1ec3\":\"T\\u1eeb 2.69m \\u0111\\u1ebfn 30.45m\",\"Th\\u1ec3 t\\u00edch\":\"T\\u1eeb 29 m kh\\u1ed1i \\u0111\\u1ebfn 3782 m kh\\u1ed1i\",\"S\\u1ed1 t\\u1ea5m c\\u1ee7a v\\u00f2ng b\\u1ec3\":\"T\\u1eeb 3 t\\u1ea5m \\u0111\\u1ebfn 34 t\\u1ea5m\"}', '', 'Be-chua-lap-ghep-Aquatank-hinh-tru-tron-4-tang', NULL, 'Bể chứa lắp ghép Aquatank hình trụ tròn 4 tầng', NULL, NULL, NULL, 'Bể chứa công nghiệp lắp ghép Aquatank hình trụ tròn 4 tầng là thương hiệu độc quyền của các dòng sản phẩm bể chứa được cung cấp bởi CTCP Nước Lành', NULL, 8, 0, 'Bể chứa công nghiệp lắp ghép Aquatank hình trụ tròn 4 tầng là thương hiệu độc quyền của các dòng sản phẩm bể chứa được cung cấp bởi CTCP Nước Lành', NULL, 1, '2019-10-05 09:21:46', 0, 0, 0, 0, 0, '', '', 0, 0, '[{\"name_tag\":\"B\\u1ec3 ch\\u1ee9a l\\u1eafp gh\\u00e9p Aquatank h\\u00ecnh tr\\u1ee5 tr\\u00f2n 4 t\\u1ea7ng\",\"unique_key_tag\":\"be-chua-lap-ghep-aquatank-hinh-tru-tron-4-tang\",\"cid_url\":\"Bon-chua-cong-nghiep\"}]');
INSERT INTO `products` (`id`, `name_vn`, `name_en`, `code`, `price`, `price_sale`, `content_vn`, `content_en`, `num`, `img`, `img_thumb`, `cid`, `active`, `attr_vn`, `size`, `unique_key_vn`, `unique_key_en`, `title_vn`, `title_en`, `keyword_vn`, `keyword_en`, `des_vn`, `des_en`, `view`, `vote`, `short_vn`, `short_en`, `is_noindex`, `dated`, `des_vn_char`, `des_en_char`, `bestseller`, `not_in_widget`, `pin`, `categoriebranch`, `ext_url`, `new_tab`, `saleoff`, `tag_vn`) VALUES
(80, 'Bể chứa lắp ghép Aquatank hình trụ tròn 4 tầng', NULL, '', 0, 0, '<p><strong>Bể chứa công nghiệp lắp ghép Aquatank hình tròn 2 tầng</strong>&nbsp;sử dụng công nghệ lắp ghép 2 lớp, với lớp vật liệu bên ngoài là thép&nbsp;<strong>cacbon</strong>&nbsp;có phủ sơn&nbsp;<strong>epoxy</strong>&nbsp;bảo vệ, lớp bên trong là thép không gỉ.</p>\r\n\r\n<p><strong>Bể chứa lắp ghép Aquatank&nbsp;<strong>hình tròn 2 tầng</strong></strong>&nbsp;là sự lựa chọn hàng đầu cho các giải pháp lưu trữ nước đô thị và công nghiệp, nước thải và chất lỏng công nghiệp.&nbsp;<strong>Bể chứa công nghiệp AquaTank</strong>&nbsp;có tuổi thọ và độ bền hơn hẳn các loại bể chứa khác.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Bể chứa công nghiệp lắp ghép Aquatank\" height=\"317\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Be-chua-aquatank-1.jpg\" width=\"600\" /></p>\r\n\r\n<p><u><strong>NHỮNG ƯU ĐIỂM VƯỢT TRỘI CỦA BỂ CHỨA CÔNG NGHIỆP LẮP GHÉP AQUATANK&nbsp;<strong>HÌNH TRÒN 2 TẦNG</strong></strong></u></p>\r\n\r\n<ul>\r\n	<li>Giảm thiểu công tác bảo trì trong suốt thời gian sử dụng.</li>\r\n	<li>Không bị ăn mòn hoặc gỉ sét.</li>\r\n	<li>Chất lượng bể chứa được bảo hành.</li>\r\n	<li>Thực hiện dịch vụ trọn gói từ phê duyệt bản vẽ đến công tác thử nghiệm.</li>\r\n	<li>Quy trình lắp dựng đơn giản, không cần cần cẩu hoặc các thiết bị lớn khác.</li>\r\n	<li>Dễ dàng lắp đặt thi công tại các khu vực xa hoặc tách biệt.</li>\r\n	<li>Giảm thiểu tác động đến môi trường khi xây dựng.</li>\r\n	<li>Giảm thiểu thời gian đình trệ thi công do các yếu tố liên quan đến thời tiết tại hiện trường.</li>\r\n	<li>Thiết kế dễ dàng cho việc mở rộng dung tích hoặc di dời.</li>\r\n	<li>Tháo dỡ dễ dàng.</li>\r\n	<li>Chi phí đầu tư và vận hành tối ưu nhất.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><img alt=\"BỂ CHỨA LẮP GHÉP AQUATANK\" height=\"338\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Be-chua-aquatank.jpg\" width=\"600\" /></p>\r\n\r\n<p><em>Bể chứa công nghiệp Aquatank</em></p>\r\n\r\n<p><strong>THÀNH BỂ</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Thành bể: Gồm 2 lớp vật liệu. Bên ngoài là lớp thép&nbsp;<strong>cacbon</strong>&nbsp;chịu lực kết cấu, bên trong là lớp thép không gỉ. Thành bể là những tấm thép được lắp ghép với nhau bằng phương pháp bắt&nbsp;<strong>bulong</strong>&nbsp;và&nbsp;<strong>chất trám khe</strong>. Thép cacbon là lớp chịu bền kết cấu và bảo vệ thành bể, lớp thép không gỉ bên trong tiếp xúc với chất lỏng, bảo vệ thành bể.</p>\r\n\r\n<table align=\"center\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Bể chứa lắp ghép aqutank\" height=\"303\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Thanh-be-chua-aquatank-1.jpg\" width=\"400\" /></td>\r\n			<td><img alt=\"Mặt cắt dọc chi tiết A\" height=\"303\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Thanh-be-chua-aquatank-2.jpg\" width=\"400\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bể chứa lắp ghép AquaTank.</td>\r\n			<td>Mặt cắt dọc chi tiết A.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>ĐÁY BỂ</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Đáy bể: Tùy theo nhu cầu trữ các chất lỏng và yêu cầu khách hàng có thể dùng bệ đỡ&nbsp;<strong>beton</strong>&nbsp;làm đáy bể. Các yêu cầu cao hơn, đáy bể sẽ làm bằng vật liệu 1 lớp chống ăn mòn (inox 1mm, cao su EPDM/ Butyl…) được đặt trên bệ đỡ bể do bản thân móng bể đã chịu lực về mặt kết cấu.</p>\r\n\r\n<table cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Vật liệu chống ăn mòn\" height=\"369\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Day-be-chua-aquatank-1.jpg\" width=\"400\" /></td>\r\n			<td><img alt=\"Bệ đỡ beton  làm đáy\" height=\"369\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Day-be-chua-aquatank-2.jpg\" width=\"400\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vật liệu chống ăn mòn&nbsp;&nbsp;&nbsp;</td>\r\n			<td>Bệ đỡ beton&nbsp; làm đáy</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>MÁI CHE</strong>&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<table align=\"center\" cellpadding=\"2\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p><img alt=\"Mái che dạng vòm cho bể aquatank\" height=\"276\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/mai-che-dang-vom.jpg\" width=\"600\" /></p>\r\n\r\n			<p>Mái che dạng vòm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Mái che: Được làm bằng khung kèo thép lợp tole hoặc mái vòm, mái nón, mái TDR bằng nhôm, mái bể có cửa thông hơi và cửa thăm.</p>\r\n\r\n			<p><em>Một số dạng mái che phổ biến:</em></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Mái che dạng nón cho bể aquatank\" height=\"181\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Mai-che-dang-non.jpg\" width=\"600\" /></p>\r\n\r\n			<p>Mái che dạng nón</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p><img alt=\"Mái che dáng tdr cho bể chứa aquatank\" height=\"338\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Mai-che-dang-tdr.jpg\" width=\"600\" /></p>\r\n\r\n			<p>Mái che dạng TDR</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><img alt=\"BẢNG PHÂN TÍCH ƯU NHƯỢC ĐIỂM AQUATANK SO VỚI BỂ THÉP PHỦ THỦY TINH &amp; BỂ TÚI CAO SU\" height=\"855\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Bang-phan-tich-uu-nhuoc-diem-aquatank.jpg\" width=\"900\" /></p>\r\n\r\n<p>Bảng phân tích ưu nhược điểm bể chứa công nghiệp Aquatank so với bể phủ thép thủy tinh và bể túi cao su</p>\r\n\r\n<p><u><strong>PHẠM VI ỨNG DỤNG SẢN PHẨM</strong></u></p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" width=\"659\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Nước cấp đô thị</strong></p>\r\n\r\n			<p>&nbsp;- Các bồn chứa nổi trên mặt đất.</p>\r\n\r\n			<p>&nbsp;- Bồn chứa lắp ghép trên tháp (CET).</p>\r\n\r\n			<p>&nbsp;- Bồn chứa khử muối và mái che.</p>\r\n\r\n			<p>&nbsp;- Các ứng dụng trong công nghiệp và dân dụng.</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Dầu khí</strong></p>\r\n\r\n			<p>&nbsp;- Lưu trữ chất lỏng phục vụ công tác khoan, hóa chất lỏng.</p>\r\n\r\n			<p>&nbsp;- Lưu trữ nước gia áp, thu hồi và xử lý chất thải.</p>\r\n\r\n			<p>&nbsp;- Lưu trữ cát gia áp và trong qui trình chế biến.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Phòng cháy chữa cháy</strong></p>\r\n\r\n			<p>&nbsp;- Bồn chứa nước cho hệ thống phun tưới.</p>\r\n\r\n			<p>&nbsp;- Ứng dụng trong các trạm nước chữa cháy cho công nghiệp và dân dụng.</p>\r\n\r\n			<p>&nbsp;- Các bể nước kết hợp nước cấp đô thị và nước chữa cháy.</p>\r\n\r\n			<p>&nbsp;- Các giải pháp bể chứa hình trụ.</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Năng lượng điện</strong></p>\r\n\r\n			<p>&nbsp;- Lưu giữ nước khử khoáng.</p>\r\n\r\n			<p>&nbsp;- Quá trình hóa học FGD và bể chứa.</p>\r\n\r\n			<p>&nbsp;- Bể chứa lưu giữ nhiên liệu lỏng và silo.</p>\r\n\r\n			<p>&nbsp;- Lưu trữ nước trong qui trình sản xuất và nước thải.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Năng lượng sinh học</strong></p>\r\n\r\n			<p>&nbsp;- Hệ thống hoàn chỉnh gồm bồn chứa và mái che trong các quy trình phân loại chất thải và tạo khí gas.</p>\r\n\r\n			<p>&nbsp;- Bể chứa lưu trữ và tháp chứa nhiên liệu sinh học.</p>\r\n\r\n			<p>&nbsp;- Silo và các hệ thống phân tách trong qui trình tái chế và phản ứng sinh học.</p>\r\n\r\n			<p>&nbsp;- Các hệ thống màng đôi và bể khí sinh học bằng thép.</p>\r\n\r\n			<p>&nbsp;- Cung cấp giải pháp thiết kế để đáp ứng các yêu cầu về cải tiến và phát triển công nghệ sinh học.</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Nông nghiệp</strong></p>\r\n\r\n			<p>&nbsp;- Các Silo chứa lương thực và thức ăn dự trữ cho gia súc.</p>\r\n\r\n			<p>&nbsp;- Thiết bị xuất liệu trong công đoạn phát thức ăn cho gia súc.</p>\r\n\r\n			<p>&nbsp;- Bồn chứa bùn và các bồn công nghệ.</p>\r\n\r\n			<p>&nbsp;- Các bồn chứa cho các chất phụ gia và phân bón khô và lỏng</p>\r\n\r\n			<p>&nbsp;- Bồn chứa và mái che cho các hệ thống phân hủy và sản xuất khí sinh học.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bồn trữ nguyên liệu khô</strong></p>\r\n\r\n			<p>&nbsp;- Bồn chứa thép lắp ghép được dùng rộng rãi trong ngành khai thác mỏ, khoáng sản và nguyên liệu khô nông nghiệp với trữ lượng lớn.</p>\r\n\r\n			<p>&nbsp;- Silo với hệ thống xuất liệu cho xe tải hoặc sử dụng các toa xe và đường ray.</p>\r\n\r\n			<p>&nbsp;- Hệ thống xuất liệu cho các bồn chứa vật liệu khô.</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Xử lý nước thải và chất lỏng công nghiệp</strong></p>\r\n\r\n			<p>&nbsp;- Bể chứa cho các công đoạn lắng, lọc, sục khí, phân dòng và chứa bùn.</p>\r\n\r\n			<p>&nbsp;- Bể phản ứng (SBR).</p>\r\n\r\n			<p>&nbsp;- Bể chứa dự phòng nước lũ.</p>\r\n\r\n			<p>&nbsp;- Bồn chứa thép lắp ghép bằng bu-lông cho các ứng dụng trong lưu giữ chất lỏng công nghiệp.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Bảng thông số kỹ thuật của bể chứa lắp ghép aquatank - 2 tầng\" height=\"1032\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/btskt-aquatank-4-tang.jpg\" width=\"900\" /></p>\r\n\r\n<p>Bảng thông số kỹ thuật bể chứa công nghiệp lắp ghép Aquatank 2 tầng</p>\r\n\r\n<p><strong>Ghi chú:</strong></p>\r\n\r\n<p>-&nbsp;&nbsp; &nbsp;Đường kính bể là đường kính thực của bể chứa, đường kính bệ đỡ beton sẽ lớn hơn đường kính thực 1m.</p>\r\n\r\n<p>-&nbsp;&nbsp; &nbsp;Chiều cao bể là chiều cao hiệu dụng của bể chứa, tổng chiều cao bể lớn hơn chiều cao hiệu dụng 0,5m.</p>\r\n\r\n<p><strong>Cách đọc model bể chứa AquaTank:</strong></p>\r\n\r\n<p>-&nbsp;&nbsp; &nbsp;Model của bể AquaTank là cách đọc số tầng và số tấm theo bảng trên.</p>\r\n\r\n<p>-&nbsp;&nbsp; &nbsp;Ví dụ:&nbsp;2L3</p>\r\n\r\n<p>-&nbsp;&nbsp; &nbsp;Trong đó:</p>\r\n\r\n<p>+ 2L3: Kết cấu bể chứa gồm 2 tầng và mỗi tầng có 3 tấm.</p>\r\n\r\n<p>+ Thể tích của bể chứa được tra theo bảng trên, với model&nbsp;2L3&nbsp;thể tích là 13 mét khối (m<sup>3</sup>)</p>\r\n\r\n<p><u><strong>THI CÔNG LẮP ĐẶT</strong></u></p>\r\n\r\n<p>Năng lực cung cấp các loại&nbsp;<strong>bể chứa, bể lắng, bể lọc, bể oxy hóa, bể 2in1, mái che</strong>&nbsp;đến khách hàng không chỉ đơn thuần kết thúc ở việc sản xuất và phân phối sản phẩm, đội ngũ lắp đặt của&nbsp;<strong>Nước Lành</strong>&nbsp;còn có thể cung cấp dịch vụ lắp đặt và bảo trì trong suốt quá trình sử dụng sản phẩm.</p>\r\n\r\n<ul>\r\n	<li><strong>Phương pháp lắp đặt dùng kích:</strong></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>B1: Các tấm thép ở vòng đầu tiên và mái che được lắp với nhau an toàn trên nền đất.</li>\r\n	<li>B2: Thành bồn và mái được nâng lên bằng hệ thống nâng chuyên dụng và vòng kế tiếp được lắp ráp tiếp vào phía dưới.</li>\r\n	<li>B3: Sau khi vòng cuối cùng được lắp ráp, bồn chứa được hạ xuống để thi công phần liên kết với nền móng.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Thi công, lắp đặt dùng kích\" height=\"936\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Thi-cong-lap-dat-dung-kich.jpg\" width=\"900\" /></p>\r\n\r\n<p align=\"center\"><em>Thi công, lắp đặt dùng kích</em></p>\r\n\r\n<ul>\r\n	<li><strong>&nbsp;&nbsp; Phương pháp lắp đặt dùng giàn giáo hoặc cẩu:</strong></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>B1. Các tấm thép ở vòng đầu tiên được lắp đặt chính xác vào nền móng.</li>\r\n	<li>B2. Các vòng kế tiếp được lắp ráp với vòng phía dưới bằng cần cẩu.</li>\r\n	<li>B3. Mái che được lắp đặt hoàn chỉnh trên mặt đất và cẩu vào đúng vị trí liên kết với thành bồn hoặc có thể lắp trực tiếp trên mái.</li>\r\n</ul>\r\n\r\n<p><strong>Thiết kế móng bồn:&nbsp; &nbsp;</strong></p>\r\n\r\n<p>Thiết kế nền móng được thực hiện trước và sau đó có thể được điều chỉnh cho phù hợp với yêu cầu của khách hàng hoặc các ứng dụng lưu trữ khác nhau. Tùy thuộc vào thiết kế kĩ thuật của bồn chứa, cấu tạo móng có các loại điển hình như sau:</p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><img alt=\"Dạng miệng rãnh (Slot Mount)\" height=\"348\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Dang-mieng-go.jpg\" width=\"400\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>- Dạng miệng rãnh (Slot Mount): dùng cho bể chứa thấp. Rất phù hợp sử dụng cho xử lý nước thải, nước cấp</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><img alt=\"Dạng miệng gờ (Curb Mount)\" height=\"348\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Dang-mieng-ranh.jpg\" width=\"400\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>- Dạng miệng gờ (Curb Mount): Dùng cho các bể chứa thấp, rất thích hợp cho các bồn chứa lắp đặt trên tháp cao.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Phụ kiện lắp đặt</strong></p>\r\n\r\n<ul>\r\n	<li>Bộ phận thông hơi</li>\r\n	<li>Cửa thăm: thép tráng kẽm</li>\r\n	<li>Cầu thang lên bể: bằng ống thép tráng kẽm</li>\r\n</ul>\r\n', NULL, 0, 'Be-chua-lap-ghep-mai-non-hinh-tron-5-tang.jpg', '', 318, 1, '{\"chi\\u1ec1u cao\":\"\",\"Nh\\u00e0 s\\u1ea3n xu\\u1ea5t\":\"C\\u00f4ng Ty C\\u1ed5 Ph\\u1ea7n N\\u01b0\\u1edbc L\\u00e0nh\",\"S\\u1ed1 t\\u1ea7ng\":\"\",\"\\u0110\\u01b0\\u1eddng k\\u00ednh b\\u1ec3\":\"\",\"Th\\u1ec3 t\\u00edch\":\"\",\"S\\u1ed1 t\\u1ea5m c\\u1ee7a v\\u00f2ng b\\u1ec3\":\"\"}', '', 'Be-chua-lap-ghep-Aquatank-hinh-tru-tron-4-tang', NULL, 'Bể chứa lắp ghép Aquatank hình trụ tròn 4 tầng', NULL, NULL, NULL, 'Bể chứa công nghiệp lắp ghép Aquatank hình trụ tròn 4 tầng là thương hiệu độc quyền của các dòng sản phẩm bể chứa được cung cấp bởi CTCP Nước Lành', NULL, 0, 0, 'Bể chứa công nghiệp lắp ghép Aquatank hình trụ tròn 4 tầng là thương hiệu độc quyền của các dòng sản phẩm bể chứa được cung cấp bởi CTCP Nước Lành', NULL, 1, '2019-10-16 09:22:56', 0, 0, 0, 0, 0, '', '', 0, 0, '[{\"name_tag\":\"\",\"unique_key_tag\":\"\",\"cid_url\":\"Bon-chua-cong-nghiep\"}]'),
(81, 'Bể chứa lắp ghép Aquatank hình trụ tròn 6 tầng', NULL, '', 0, 0, '<p><strong>Bể chứa công nghiệp lắp ghép Aquatank hình tròn 2 tầng</strong>&nbsp;sử dụng công nghệ lắp ghép 2 lớp, với lớp vật liệu bên ngoài là thép&nbsp;<strong>cacbon</strong>&nbsp;có phủ sơn&nbsp;<strong>epoxy</strong>&nbsp;bảo vệ, lớp bên trong là thép không gỉ.</p>\r\n\r\n<p><strong>Bể chứa lắp ghép Aquatank&nbsp;<strong>hình tròn 2 tầng</strong></strong>&nbsp;là sự lựa chọn hàng đầu cho các giải pháp lưu trữ nước đô thị và công nghiệp, nước thải và chất lỏng công nghiệp.&nbsp;<strong>Bể chứa công nghiệp AquaTank</strong>&nbsp;có tuổi thọ và độ bền hơn hẳn các loại bể chứa khác.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Bể chứa công nghiệp lắp ghép Aquatank\" height=\"317\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Be-chua-aquatank-1.jpg\" width=\"600\" /></p>\r\n\r\n<p><u><strong>NHỮNG ƯU ĐIỂM VƯỢT TRỘI CỦA BỂ CHỨA CÔNG NGHIỆP LẮP GHÉP AQUATANK&nbsp;<strong>HÌNH TRÒN 2 TẦNG</strong></strong></u></p>\r\n\r\n<ul>\r\n	<li>Giảm thiểu công tác bảo trì trong suốt thời gian sử dụng.</li>\r\n	<li>Không bị ăn mòn hoặc gỉ sét.</li>\r\n	<li>Chất lượng bể chứa được bảo hành.</li>\r\n	<li>Thực hiện dịch vụ trọn gói từ phê duyệt bản vẽ đến công tác thử nghiệm.</li>\r\n	<li>Quy trình lắp dựng đơn giản, không cần cần cẩu hoặc các thiết bị lớn khác.</li>\r\n	<li>Dễ dàng lắp đặt thi công tại các khu vực xa hoặc tách biệt.</li>\r\n	<li>Giảm thiểu tác động đến môi trường khi xây dựng.</li>\r\n	<li>Giảm thiểu thời gian đình trệ thi công do các yếu tố liên quan đến thời tiết tại hiện trường.</li>\r\n	<li>Thiết kế dễ dàng cho việc mở rộng dung tích hoặc di dời.</li>\r\n	<li>Tháo dỡ dễ dàng.</li>\r\n	<li>Chi phí đầu tư và vận hành tối ưu nhất.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><img alt=\"BỂ CHỨA LẮP GHÉP AQUATANK\" height=\"338\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Be-chua-aquatank.jpg\" width=\"600\" /></p>\r\n\r\n<p><em>Bể chứa công nghiệp Aquatank</em></p>\r\n\r\n<p><strong>THÀNH BỂ</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Thành bể: Gồm 2 lớp vật liệu. Bên ngoài là lớp thép&nbsp;<strong>cacbon</strong>&nbsp;chịu lực kết cấu, bên trong là lớp thép không gỉ. Thành bể là những tấm thép được lắp ghép với nhau bằng phương pháp bắt&nbsp;<strong>bulong</strong>&nbsp;và&nbsp;<strong>chất trám khe</strong>. Thép cacbon là lớp chịu bền kết cấu và bảo vệ thành bể, lớp thép không gỉ bên trong tiếp xúc với chất lỏng, bảo vệ thành bể.</p>\r\n\r\n<table align=\"center\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Bể chứa lắp ghép aqutank\" height=\"303\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Thanh-be-chua-aquatank-1.jpg\" width=\"400\" /></td>\r\n			<td><img alt=\"Mặt cắt dọc chi tiết A\" height=\"303\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Thanh-be-chua-aquatank-2.jpg\" width=\"400\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bể chứa lắp ghép AquaTank.</td>\r\n			<td>Mặt cắt dọc chi tiết A.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>ĐÁY BỂ</strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Đáy bể: Tùy theo nhu cầu trữ các chất lỏng và yêu cầu khách hàng có thể dùng bệ đỡ&nbsp;<strong>beton</strong>&nbsp;làm đáy bể. Các yêu cầu cao hơn, đáy bể sẽ làm bằng vật liệu 1 lớp chống ăn mòn (inox 1mm, cao su EPDM/ Butyl…) được đặt trên bệ đỡ bể do bản thân móng bể đã chịu lực về mặt kết cấu.</p>\r\n\r\n<table cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Vật liệu chống ăn mòn\" height=\"369\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Day-be-chua-aquatank-1.jpg\" width=\"400\" /></td>\r\n			<td><img alt=\"Bệ đỡ beton  làm đáy\" height=\"369\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Day-be-chua-aquatank-2.jpg\" width=\"400\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Vật liệu chống ăn mòn&nbsp;&nbsp;&nbsp;</td>\r\n			<td>Bệ đỡ beton&nbsp; làm đáy</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>MÁI CHE</strong>&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<table align=\"center\" cellpadding=\"2\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p><img alt=\"Mái che dạng vòm cho bể aquatank\" height=\"276\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/mai-che-dang-vom.jpg\" width=\"600\" /></p>\r\n\r\n			<p>Mái che dạng vòm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Mái che: Được làm bằng khung kèo thép lợp tole hoặc mái vòm, mái nón, mái TDR bằng nhôm, mái bể có cửa thông hơi và cửa thăm.</p>\r\n\r\n			<p><em>Một số dạng mái che phổ biến:</em></p>\r\n			</td>\r\n			<td>\r\n			<p><img alt=\"Mái che dạng nón cho bể aquatank\" height=\"181\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Mai-che-dang-non.jpg\" width=\"600\" /></p>\r\n\r\n			<p>Mái che dạng nón</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p><img alt=\"Mái che dáng tdr cho bể chứa aquatank\" height=\"338\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Mai-che-dang-tdr.jpg\" width=\"600\" /></p>\r\n\r\n			<p>Mái che dạng TDR</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><img alt=\"BẢNG PHÂN TÍCH ƯU NHƯỢC ĐIỂM AQUATANK SO VỚI BỂ THÉP PHỦ THỦY TINH &amp; BỂ TÚI CAO SU\" height=\"855\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Bang-phan-tich-uu-nhuoc-diem-aquatank.jpg\" width=\"900\" /></p>\r\n\r\n<p>Bảng phân tích ưu nhược điểm bể chứa công nghiệp Aquatank so với bể phủ thép thủy tinh và bể túi cao su</p>\r\n\r\n<p><u><strong>PHẠM VI ỨNG DỤNG SẢN PHẨM</strong></u></p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\" width=\"659\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Nước cấp đô thị</strong></p>\r\n\r\n			<p>&nbsp;- Các bồn chứa nổi trên mặt đất.</p>\r\n\r\n			<p>&nbsp;- Bồn chứa lắp ghép trên tháp (CET).</p>\r\n\r\n			<p>&nbsp;- Bồn chứa khử muối và mái che.</p>\r\n\r\n			<p>&nbsp;- Các ứng dụng trong công nghiệp và dân dụng.</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Dầu khí</strong></p>\r\n\r\n			<p>&nbsp;- Lưu trữ chất lỏng phục vụ công tác khoan, hóa chất lỏng.</p>\r\n\r\n			<p>&nbsp;- Lưu trữ nước gia áp, thu hồi và xử lý chất thải.</p>\r\n\r\n			<p>&nbsp;- Lưu trữ cát gia áp và trong qui trình chế biến.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Phòng cháy chữa cháy</strong></p>\r\n\r\n			<p>&nbsp;- Bồn chứa nước cho hệ thống phun tưới.</p>\r\n\r\n			<p>&nbsp;- Ứng dụng trong các trạm nước chữa cháy cho công nghiệp và dân dụng.</p>\r\n\r\n			<p>&nbsp;- Các bể nước kết hợp nước cấp đô thị và nước chữa cháy.</p>\r\n\r\n			<p>&nbsp;- Các giải pháp bể chứa hình trụ.</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Năng lượng điện</strong></p>\r\n\r\n			<p>&nbsp;- Lưu giữ nước khử khoáng.</p>\r\n\r\n			<p>&nbsp;- Quá trình hóa học FGD và bể chứa.</p>\r\n\r\n			<p>&nbsp;- Bể chứa lưu giữ nhiên liệu lỏng và silo.</p>\r\n\r\n			<p>&nbsp;- Lưu trữ nước trong qui trình sản xuất và nước thải.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Năng lượng sinh học</strong></p>\r\n\r\n			<p>&nbsp;- Hệ thống hoàn chỉnh gồm bồn chứa và mái che trong các quy trình phân loại chất thải và tạo khí gas.</p>\r\n\r\n			<p>&nbsp;- Bể chứa lưu trữ và tháp chứa nhiên liệu sinh học.</p>\r\n\r\n			<p>&nbsp;- Silo và các hệ thống phân tách trong qui trình tái chế và phản ứng sinh học.</p>\r\n\r\n			<p>&nbsp;- Các hệ thống màng đôi và bể khí sinh học bằng thép.</p>\r\n\r\n			<p>&nbsp;- Cung cấp giải pháp thiết kế để đáp ứng các yêu cầu về cải tiến và phát triển công nghệ sinh học.</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Nông nghiệp</strong></p>\r\n\r\n			<p>&nbsp;- Các Silo chứa lương thực và thức ăn dự trữ cho gia súc.</p>\r\n\r\n			<p>&nbsp;- Thiết bị xuất liệu trong công đoạn phát thức ăn cho gia súc.</p>\r\n\r\n			<p>&nbsp;- Bồn chứa bùn và các bồn công nghệ.</p>\r\n\r\n			<p>&nbsp;- Các bồn chứa cho các chất phụ gia và phân bón khô và lỏng</p>\r\n\r\n			<p>&nbsp;- Bồn chứa và mái che cho các hệ thống phân hủy và sản xuất khí sinh học.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Bồn trữ nguyên liệu khô</strong></p>\r\n\r\n			<p>&nbsp;- Bồn chứa thép lắp ghép được dùng rộng rãi trong ngành khai thác mỏ, khoáng sản và nguyên liệu khô nông nghiệp với trữ lượng lớn.</p>\r\n\r\n			<p>&nbsp;- Silo với hệ thống xuất liệu cho xe tải hoặc sử dụng các toa xe và đường ray.</p>\r\n\r\n			<p>&nbsp;- Hệ thống xuất liệu cho các bồn chứa vật liệu khô.</p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Xử lý nước thải và chất lỏng công nghiệp</strong></p>\r\n\r\n			<p>&nbsp;- Bể chứa cho các công đoạn lắng, lọc, sục khí, phân dòng và chứa bùn.</p>\r\n\r\n			<p>&nbsp;- Bể phản ứng (SBR).</p>\r\n\r\n			<p>&nbsp;- Bể chứa dự phòng nước lũ.</p>\r\n\r\n			<p>&nbsp;- Bồn chứa thép lắp ghép bằng bu-lông cho các ứng dụng trong lưu giữ chất lỏng công nghiệp.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Bảng thông số kỹ thuật của bể chứa lắp ghép aquatank - 2 tầng\" height=\"1032\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/btskt-aquatank-4-tang.jpg\" width=\"900\" /></p>\r\n\r\n<p>Bảng thông số kỹ thuật bể chứa công nghiệp lắp ghép Aquatank 2 tầng</p>\r\n\r\n<p><strong>Ghi chú:</strong></p>\r\n\r\n<p>-&nbsp;&nbsp; &nbsp;Đường kính bể là đường kính thực của bể chứa, đường kính bệ đỡ beton sẽ lớn hơn đường kính thực 1m.</p>\r\n\r\n<p>-&nbsp;&nbsp; &nbsp;Chiều cao bể là chiều cao hiệu dụng của bể chứa, tổng chiều cao bể lớn hơn chiều cao hiệu dụng 0,5m.</p>\r\n\r\n<p><strong>Cách đọc model bể chứa AquaTank:</strong></p>\r\n\r\n<p>-&nbsp;&nbsp; &nbsp;Model của bể AquaTank là cách đọc số tầng và số tấm theo bảng trên.</p>\r\n\r\n<p>-&nbsp;&nbsp; &nbsp;Ví dụ:&nbsp;2L3</p>\r\n\r\n<p>-&nbsp;&nbsp; &nbsp;Trong đó:</p>\r\n\r\n<p>+ 2L3: Kết cấu bể chứa gồm 2 tầng và mỗi tầng có 3 tấm.</p>\r\n\r\n<p>+ Thể tích của bể chứa được tra theo bảng trên, với model&nbsp;2L3&nbsp;thể tích là 13 mét khối (m<sup>3</sup>)</p>\r\n\r\n<p><u><strong>THI CÔNG LẮP ĐẶT</strong></u></p>\r\n\r\n<p>Năng lực cung cấp các loại&nbsp;<strong>bể chứa, bể lắng, bể lọc, bể oxy hóa, bể 2in1, mái che</strong>&nbsp;đến khách hàng không chỉ đơn thuần kết thúc ở việc sản xuất và phân phối sản phẩm, đội ngũ lắp đặt của&nbsp;<strong>Nước Lành</strong>&nbsp;còn có thể cung cấp dịch vụ lắp đặt và bảo trì trong suốt quá trình sử dụng sản phẩm.</p>\r\n\r\n<ul>\r\n	<li><strong>Phương pháp lắp đặt dùng kích:</strong></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>B1: Các tấm thép ở vòng đầu tiên và mái che được lắp với nhau an toàn trên nền đất.</li>\r\n	<li>B2: Thành bồn và mái được nâng lên bằng hệ thống nâng chuyên dụng và vòng kế tiếp được lắp ráp tiếp vào phía dưới.</li>\r\n	<li>B3: Sau khi vòng cuối cùng được lắp ráp, bồn chứa được hạ xuống để thi công phần liên kết với nền móng.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Thi công, lắp đặt dùng kích\" height=\"936\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Thi-cong-lap-dat-dung-kich.jpg\" width=\"900\" /></p>\r\n\r\n<p align=\"center\"><em>Thi công, lắp đặt dùng kích</em></p>\r\n\r\n<ul>\r\n	<li><strong>&nbsp;&nbsp; Phương pháp lắp đặt dùng giàn giáo hoặc cẩu:</strong></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>B1. Các tấm thép ở vòng đầu tiên được lắp đặt chính xác vào nền móng.</li>\r\n	<li>B2. Các vòng kế tiếp được lắp ráp với vòng phía dưới bằng cần cẩu.</li>\r\n	<li>B3. Mái che được lắp đặt hoàn chỉnh trên mặt đất và cẩu vào đúng vị trí liên kết với thành bồn hoặc có thể lắp trực tiếp trên mái.</li>\r\n</ul>\r\n\r\n<p><strong>Thiết kế móng bồn:&nbsp; &nbsp;</strong></p>\r\n\r\n<p>Thiết kế nền móng được thực hiện trước và sau đó có thể được điều chỉnh cho phù hợp với yêu cầu của khách hàng hoặc các ứng dụng lưu trữ khác nhau. Tùy thuộc vào thiết kế kĩ thuật của bồn chứa, cấu tạo móng có các loại điển hình như sau:</p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><img alt=\"Dạng miệng rãnh (Slot Mount)\" height=\"348\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Dang-mieng-go.jpg\" width=\"400\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>- Dạng miệng rãnh (Slot Mount): dùng cho bể chứa thấp. Rất phù hợp sử dụng cho xử lý nước thải, nước cấp</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><img alt=\"Dạng miệng gờ (Curb Mount)\" height=\"348\" src=\"/ckfinder/upload/images/san-pham/bon-chua-cong-nghiep/Dang-mieng-ranh.jpg\" width=\"400\" /></p>\r\n			</td>\r\n			<td>\r\n			<p>- Dạng miệng gờ (Curb Mount): Dùng cho các bể chứa thấp, rất thích hợp cho các bồn chứa lắp đặt trên tháp cao.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Phụ kiện lắp đặt</strong></p>\r\n\r\n<ul>\r\n	<li>Bộ phận thông hơi</li>\r\n	<li>Cửa thăm: thép tráng kẽm</li>\r\n	<li>Cầu thang lên bể: bằng ống thép tráng kẽm</li>\r\n</ul>\r\n', NULL, 0, 'Be-chua-lap-ghep-mai-non-hinh-tron-6-tang.jpg', '', 318, 1, '{\"chi\\u1ec1u cao\":\"\",\"Nh\\u00e0 s\\u1ea3n xu\\u1ea5t\":\"C\\u00f4ng Ty C\\u1ed5 Ph\\u1ea7n N\\u01b0\\u1edbc L\\u00e0nh\",\"S\\u1ed1 t\\u1ea7ng\":\"\",\"\\u0110\\u01b0\\u1eddng k\\u00ednh b\\u1ec3\":\"\",\"Th\\u1ec3 t\\u00edch\":\"\",\"S\\u1ed1 t\\u1ea5m c\\u1ee7a v\\u00f2ng b\\u1ec3\":\"\"}', '', 'Be-chua-lap-ghep-Aquatank-hinh-tru-tron-6-tang', NULL, 'Bể chứa lắp ghép Aquatank hình trụ tròn 6 tầng', NULL, NULL, NULL, 'Bể chứa công nghiệp lắp ghép Aquatank hình trụ tròn 4 tầng là thương hiệu độc quyền của các dòng sản phẩm bể chứa được cung cấp bởi CTCP Nước Lành', NULL, 0, 0, 'Bể chứa công nghiệp lắp ghép Aquatank hình trụ tròn 4 tầng là thương hiệu độc quyền của các dòng sản phẩm bể chứa được cung cấp bởi CTCP Nước Lành', NULL, 1, '2019-10-16 09:23:43', 0, 0, 0, 0, 0, '', '', 0, 0, '[{\"name_tag\":\"\",\"unique_key_tag\":\"\",\"cid_url\":\"Bon-chua-cong-nghiep\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `products_customfields`
--

CREATE TABLE `products_customfields` (
  `id` int(11) NOT NULL,
  `name_vn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `num` int(14) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products_customfields`
--

INSERT INTO `products_customfields` (`id`, `name_vn`, `value`, `active`, `num`) VALUES
(28, 'Đường kính bể', '', 1, 0),
(25, 'chiều cao', '', 1, 1),
(26, 'Nhà sản xuất', 'Công Ty Cổ Phần Nước Lành', 1, 0),
(27, 'Số tầng', '', 1, 0),
(29, 'Thể tích', '', 1, 0),
(30, 'Số tấm của vòng bể', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name_tag` text COLLATE utf8_unicode_ci,
  `unique_key_tag` text COLLATE utf8_unicode_ci,
  `id_post` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name_tag`, `unique_key_tag`, `id_post`) VALUES
(401, 'tin trong nước', 'tin-trong-nuoc', 3219),
(405, 'tin trong nước', 'tin-trong-nuoc', 3217),
(406, 'tin trong nước', 'tin-trong-nuoc', 3217),
(407, 'tin nước ngoài', 'tin-nuoc-ngoai', 3217),
(531, 'aaa', 'aaa', 3220),
(532, 'aaa', 'aaa', 3220);

-- --------------------------------------------------------

--
-- Table structure for table `tags_advance`
--

CREATE TABLE `tags_advance` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `links` text COLLATE utf8_unicode_ci,
  `show_at_all_page` tinyint(4) NOT NULL DEFAULT '0',
  `show_in_body` tinyint(4) NOT NULL DEFAULT '1',
  `active` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags_advance`
--

INSERT INTO `tags_advance` (`id`, `name`, `content`, `links`, `show_at_all_page`, `show_in_body`, `active`) VALUES
(1, 'Analytics', '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-137876358-1\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-137876358-1\');\r\n</script>\r\n', '', 1, 1, 1),
(3, 'Webmaster Tool', '<meta name=\"google-site-verification\" content=\"13f1FeM0GZEqkGCxaMYOdkzl0DdJ5qTt7BkbfmcTxjw\" />', '', 0, 1, 0),
(2, 'HTML tag', '<meta name=\"google-site-verification\" content=\"13f1FeM0GZEqkGCxaMYOdkzl0DdJ5qTt7BkbfmcTxjw\" />', '<meta name=\"google-site-verification\" content=\"Ie5rrYRH5JRFjecOIIIw3haV0STAfO06mgZvPwjmXVs\" />', 1, 1, 1),
(4, 'Zalo', '<script src=\"https://sp.zalo.me/plugins/sdk.js\"></script>\r\n', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tags_art`
--

CREATE TABLE `tags_art` (
  `id` int(11) NOT NULL,
  `idtag` int(11) DEFAULT NULL,
  `idart` int(11) DEFAULT NULL,
  `post_in` text COLLATE utf8_unicode_ci,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tags_art`
--

INSERT INTO `tags_art` (`id`, `idtag`, `idart`, `post_in`, `active`) VALUES
(1, 1, 168, 'articles', 1),
(2, 2, 169, 'articles', 1),
(4, 0, 170, 'articles', 1),
(5, 3, 171, 'articles', 1),
(6, 4, 172, 'articles', 1),
(7, 5, 173, 'articles', 1),
(8, 6, 174, 'articles', 1),
(9, 7, 175, 'articles', 1),
(10, 8, 176, 'articles', 1),
(11, 9, 177, 'articles', 1),
(12, 10, 178, 'articles', 1),
(13, 11, 179, 'articles', 1),
(14, 12, 179, 'articles', 1),
(15, 13, 180, 'articles', 1),
(16, 14, 181, 'articles', 1),
(17, 15, 182, 'articles', 1),
(18, 16, 183, 'articles', 1),
(19, 17, 184, 'articles', 1),
(20, 18, 185, 'articles', 1),
(21, 19, 185, 'articles', 1),
(22, 20, 186, 'articles', 1),
(23, 21, 187, 'articles', 1),
(24, 22, 188, 'articles', 1),
(25, 23, 189, 'articles', 1),
(26, 24, 190, 'articles', 1),
(28, 25, 191, 'articles', 1),
(29, 26, 192, 'articles', 1),
(30, 27, 193, 'articles', 1),
(31, 28, 194, 'articles', 1),
(32, 29, 195, 'articles', 1),
(33, 30, 196, 'articles', 1),
(34, 31, 197, 'articles', 1),
(35, 32, 198, 'articles', 1),
(36, 33, 199, 'articles', 1),
(37, 34, 200, 'articles', 1),
(38, 35, 201, 'articles', 1),
(39, 36, 202, 'articles', 1),
(40, 37, 203, 'articles', 1),
(41, 38, 204, 'articles', 1),
(42, 39, 204, 'articles', 1),
(43, 40, 205, 'articles', 1),
(44, 41, 206, 'articles', 1),
(45, 42, 207, 'articles', 1),
(46, 43, 208, 'articles', 1),
(47, 44, 209, 'articles', 1),
(48, 45, 210, 'articles', 1),
(49, 46, 210, 'articles', 1),
(50, 47, 211, 'articles', 1),
(51, 48, 212, 'articles', 1),
(52, 49, 217, 'articles', 1),
(53, 50, 218, 'articles', 1),
(54, 51, 219, 'articles', 1),
(55, 52, 220, 'articles', 1),
(56, 53, 221, 'articles', 1),
(57, 54, 222, 'articles', 1),
(58, 55, 222, 'articles', 1),
(59, 56, 223, 'articles', 1),
(60, 57, 224, 'articles', 1),
(61, 58, 225, 'articles', 1),
(62, 59, 226, 'articles', 1),
(63, 60, 227, 'articles', 1),
(64, 61, 228, 'articles', 1),
(65, 62, 229, 'articles', 1),
(66, 63, 230, 'articles', 1),
(67, 64, 230, 'articles', 1),
(68, 65, 231, 'articles', 1),
(69, 66, 232, 'articles', 1),
(70, 67, 233, 'articles', 1),
(71, 68, 233, 'articles', 1),
(72, 69, 234, 'articles', 1),
(73, 70, 234, 'articles', 1),
(74, 71, 235, 'articles', 1),
(75, 72, 236, 'articles', 1),
(76, 73, 237, 'articles', 1),
(77, 74, 238, 'articles', 1),
(78, 75, 239, 'articles', 1),
(79, 76, 240, 'articles', 1),
(80, 77, 241, 'articles', 1),
(81, 78, 242, 'articles', 1),
(82, 79, 243, 'articles', 1),
(83, 80, 244, 'articles', 1),
(84, 81, 245, 'articles', 1),
(85, 82, 246, 'articles', 1),
(86, 83, 247, 'articles', 1),
(87, 84, 248, 'articles', 1),
(88, 85, 249, 'articles', 1),
(89, 86, 250, 'articles', 1),
(90, 87, 251, 'articles', 1),
(91, 88, 252, 'articles', 1),
(92, 89, 253, 'articles', 1),
(93, 90, 254, 'articles', 1),
(94, 91, 255, 'articles', 1),
(95, 92, 256, 'articles', 1),
(96, 93, 257, 'articles', 1),
(97, 94, 258, 'articles', 1),
(98, 95, 259, 'articles', 1),
(99, 96, 260, 'articles', 1),
(100, 97, 261, 'articles', 1),
(101, 98, 262, 'articles', 1),
(102, 99, 263, 'articles', 1),
(103, 100, 264, 'articles', 1),
(104, 101, 265, 'articles', 1),
(105, 102, 266, 'articles', 1),
(106, 103, 267, 'articles', 1),
(107, 104, 268, 'articles', 1),
(108, 105, 269, 'articles', 1),
(109, 106, 270, 'articles', 1),
(110, 107, 267, 'articles', 1),
(111, 108, 271, 'articles', 1),
(112, 109, 271, 'articles', 1),
(113, 110, 272, 'articles', 1),
(114, 111, 273, 'articles', 1),
(115, 112, 273, 'articles', 1),
(116, 113, 274, 'articles', 1),
(117, 114, 274, 'articles', 1),
(118, 115, 275, 'articles', 1),
(119, 116, 275, 'articles', 1),
(120, 117, 276, 'articles', 1),
(121, 118, 277, 'articles', 1),
(122, 119, 278, 'articles', 1),
(123, 120, 279, 'articles', 1),
(124, 121, 280, 'articles', 1),
(125, 122, 281, 'articles', 1),
(126, 123, 282, 'articles', 1),
(127, 124, 283, 'articles', 1),
(128, 125, 284, 'articles', 1),
(129, 126, 285, 'articles', 1),
(130, 127, 286, 'articles', 1),
(131, 128, 286, 'articles', 1),
(132, 129, 287, 'articles', 1),
(133, 130, 288, 'articles', 1),
(134, 131, 288, 'articles', 1),
(135, 132, 289, 'articles', 1),
(136, 133, 290, 'articles', 1),
(137, 134, 291, 'articles', 1),
(138, 135, 291, 'articles', 1),
(139, 136, 292, 'articles', 1),
(140, 137, 293, 'articles', 1),
(141, 138, 294, 'articles', 1),
(142, 139, 295, 'articles', 1),
(143, 139, 295, 'articles', 1),
(144, 140, 295, 'articles', 1),
(145, 141, 298, 'articles', 1),
(147, 142, 300, 'articles', 1),
(148, 143, 300, 'articles', 1),
(149, 144, 301, 'articles', 1),
(150, 145, 301, 'articles', 1),
(151, 146, 302, 'articles', 1),
(152, 147, 303, 'articles', 1),
(153, 148, 304, 'articles', 1),
(154, 149, 305, 'articles', 1),
(155, 150, 306, 'articles', 1),
(156, 151, 306, 'articles', 1),
(157, 152, 306, 'articles', 1),
(158, 153, 306, 'articles', 1),
(159, 154, 306, 'articles', 1),
(160, 155, 307, 'articles', 1),
(161, 156, 308, 'articles', 1),
(162, 157, 309, 'articles', 1),
(163, 158, 310, 'articles', 1),
(164, 159, 311, 'articles', 1),
(165, 160, 311, 'articles', 1),
(166, 161, 312, 'articles', 1),
(167, 162, 313, 'articles', 0),
(168, 163, 313, 'articles', 0),
(169, 164, 313, 'articles', 1),
(170, 165, 313, 'articles', 1),
(171, 166, 313, 'articles', 1),
(172, 167, 314, 'articles', 1),
(173, 168, 314, 'articles', 1),
(174, 169, 315, 'articles', 1),
(175, 170, 316, 'articles', 1),
(176, 171, 317, 'articles', 1),
(177, 172, 317, 'articles', 1),
(178, 173, 317, 'articles', 1),
(179, 174, 317, 'articles', 1),
(180, 175, 318, 'articles', 1),
(181, 176, 319, 'articles', 1),
(182, 177, 320, 'articles', 1),
(183, 178, 321, 'articles', 1),
(184, 179, 322, 'articles', 1),
(185, 180, 322, 'articles', 1),
(186, 181, 323, 'articles', 1),
(187, 182, 324, 'articles', 1),
(188, 183, 324, 'articles', 1),
(189, 184, 325, 'articles', 1),
(190, 185, 325, 'articles', 1),
(191, 186, 326, 'articles', 1),
(192, 187, 326, 'articles', 1),
(193, 188, 327, 'articles', 1),
(194, 189, 328, 'articles', 1),
(195, 190, 329, 'articles', 1),
(196, 191, 330, 'articles', 1),
(197, 192, 331, 'articles', 1),
(198, 193, 331, 'articles', 1),
(199, 194, 332, 'articles', 1),
(200, 195, 332, 'articles', 1),
(201, 196, 333, 'articles', 1),
(202, 197, 334, 'articles', 1),
(203, 198, 335, 'articles', 1),
(204, 199, 335, 'articles', 1),
(205, 200, 336, 'articles', 1),
(206, 201, 336, 'articles', 1),
(207, 202, 337, 'articles', 1),
(208, 203, 337, 'articles', 1),
(209, 204, 338, 'articles', 1),
(210, 205, 338, 'articles', 1),
(211, 206, 339, 'articles', 1),
(212, 207, 339, 'articles', 1),
(213, 208, 340, 'articles', 1),
(214, 209, 340, 'articles', 1),
(215, 210, 341, 'articles', 1),
(216, 211, 342, 'articles', 1),
(217, 212, 343, 'articles', 1),
(218, 213, 344, 'articles', 1),
(219, 214, 345, 'articles', 1),
(220, 215, 345, 'articles', 1),
(221, 216, 346, 'articles', 1),
(222, 217, 346, 'articles', 1),
(223, 218, 347, 'articles', 1),
(224, 219, 349, 'articles', 1),
(225, 220, 350, 'articles', 1),
(226, 221, 351, 'articles', 1),
(227, 222, 351, 'articles', 1),
(228, 223, 352, 'articles', 1),
(229, 224, 353, 'articles', 1),
(230, 225, 354, 'articles', 1),
(231, 226, 354, 'articles', 1),
(232, 227, 355, 'articles', 1),
(233, 228, 356, 'articles', 1),
(234, 229, 356, 'articles', 1),
(235, 230, 357, 'articles', 1),
(236, 231, 357, 'articles', 1),
(237, 232, 358, 'articles', 1),
(238, 233, 358, 'articles', 1),
(239, 234, 359, 'articles', 1),
(240, 235, 360, 'articles', 1),
(241, 236, 361, 'articles', 1),
(242, 237, 361, 'articles', 1),
(243, 238, 362, 'articles', 1),
(244, 239, 363, 'articles', 1),
(245, 240, 364, 'articles', 1),
(246, 241, 364, 'articles', 1),
(247, 242, 365, 'articles', 1),
(248, 243, 366, 'articles', 1),
(249, 244, 367, 'articles', 1),
(250, 245, 368, 'articles', 1),
(251, 246, 369, 'articles', 1),
(252, 247, 369, 'articles', 1),
(253, 248, 370, 'articles', 1),
(254, 249, 371, 'articles', 1),
(255, 250, 372, 'articles', 1),
(256, 251, 373, 'articles', 1),
(257, 252, 374, 'articles', 1),
(258, 253, 375, 'articles', 1),
(259, 254, 375, 'articles', 1),
(260, 255, 376, 'articles', 1),
(261, 256, 376, 'articles', 1),
(262, 257, 377, 'articles', 1),
(263, 258, 378, 'articles', 1),
(264, 259, 379, 'articles', 1),
(265, 260, 380, 'articles', 1),
(266, 261, 381, 'articles', 1),
(267, 262, 381, 'articles', 1),
(268, 263, 382, 'articles', 1),
(269, 264, 383, 'articles', 1),
(270, 265, 384, 'articles', 1),
(271, 266, 385, 'articles', 1),
(272, 267, 386, 'articles', 1),
(273, 268, 387, 'articles', 1),
(274, 269, 388, 'articles', 1),
(275, 270, 388, 'articles', 1),
(276, 271, 389, 'articles', 1),
(277, 272, 389, 'articles', 1),
(278, 273, 390, 'articles', 1),
(279, 274, 391, 'articles', 1),
(280, 275, 392, 'articles', 1),
(281, 276, 392, 'articles', 1),
(282, 277, 393, 'articles', 1),
(283, 278, 393, 'articles', 1),
(284, 279, 394, 'articles', 1),
(285, 280, 395, 'articles', 1),
(286, 281, 396, 'articles', 0),
(287, 282, 397, 'articles', 1),
(288, 283, 398, 'articles', 1),
(289, 284, 399, 'articles', 1),
(290, 285, 400, 'articles', 1),
(291, 286, 401, 'articles', 1),
(292, 287, 402, 'articles', 1),
(293, 288, 403, 'articles', 1),
(294, 289, 404, 'articles', 1),
(295, 290, 405, 'articles', 1),
(296, 291, 406, 'articles', 1),
(297, 292, 406, 'articles', 1),
(298, 293, 407, 'articles', 1),
(299, 294, 407, 'articles', 1),
(300, 295, 408, 'articles', 1),
(301, 296, 408, 'articles', 1),
(302, 297, 409, 'articles', 1),
(303, 298, 409, 'articles', 1),
(304, 299, 409, 'articles', 1),
(305, 300, 409, 'articles', 1),
(306, 301, 410, 'articles', 1),
(307, 302, 411, 'articles', 1),
(308, 303, 412, 'articles', 1),
(309, 304, 412, 'articles', 1),
(310, 305, 412, 'articles', 1),
(311, 306, 413, 'articles', 0),
(312, 307, 413, 'articles', 1),
(313, 0, 0, 'articles', 1),
(314, 0, 0, 'articles', 1),
(315, 0, 0, 'articles', 1),
(316, 0, 0, 'articles', 1),
(317, 0, 0, 'articles', 1),
(318, 0, 0, 'articles', 1),
(319, 0, 0, 'articles', 1),
(320, 308, 414, 'articles', 1),
(321, 309, 414, 'articles', 1),
(322, 0, 0, 'articles', 1),
(323, 0, 415, 'articles', 1),
(324, 310, 416, 'articles', 1),
(325, 311, 417, 'articles', 1),
(326, 312, 418, 'articles', 1),
(327, 313, 418, 'articles', 1),
(328, 314, 419, 'articles', 1),
(329, 315, 419, 'articles', 1),
(330, 316, 420, 'articles', 1),
(331, 317, 422, 'articles', 1),
(332, 318, 423, 'articles', 1),
(333, 319, 423, 'articles', 1),
(334, 320, 424, 'articles', 1),
(335, 321, 425, 'articles', 1),
(336, 322, 425, 'articles', 1),
(337, 323, 426, 'articles', 1),
(338, 324, 427, 'articles', 1),
(339, 325, 427, 'articles', 1),
(340, 326, 428, 'articles', 1),
(341, 327, 429, 'articles', 1),
(342, 328, 430, 'articles', 1),
(343, 329, 430, 'articles', 1),
(344, 330, 431, 'articles', 1),
(345, 331, 431, 'articles', 1),
(346, 332, 433, 'articles', 1),
(347, 333, 434, 'articles', 1),
(348, 334, 435, 'articles', 1),
(349, 335, 436, 'articles', 1),
(350, 336, 437, 'articles', 1),
(351, 337, 438, 'articles', 1),
(352, 338, 439, 'articles', 1),
(353, 339, 439, 'articles', 1),
(354, 340, 440, 'articles', 1),
(355, 341, 441, 'articles', 1),
(356, 342, 442, 'articles', 1),
(357, 343, 442, 'articles', 1),
(358, 344, 443, 'articles', 1),
(359, 345, 444, 'articles', 1),
(360, 346, 444, 'articles', 1),
(361, 347, 445, 'articles', 1),
(362, 348, 445, 'articles', 1),
(363, 349, 445, 'articles', 1),
(364, 350, 446, 'articles', 1),
(365, 351, 447, 'articles', 1),
(366, 352, 448, 'articles', 1),
(367, 353, 448, 'articles', 1),
(368, 354, 449, 'articles', 1),
(369, 355, 449, 'articles', 1),
(370, 356, 450, 'articles', 1),
(371, 357, 450, 'articles', 1),
(372, 358, 396, 'articles', 1),
(373, 359, 396, 'articles', 1),
(374, 360, 1170, 'articles', 1),
(375, 361, 1227, 'articles', 1),
(376, 298, 1227, 'articles', 1),
(377, 299, 1227, 'articles', 1),
(378, 362, 1227, 'articles', 1),
(379, 363, 1227, 'articles', 1),
(380, 364, 1227, 'articles', 1),
(381, 365, 1227, 'articles', 1),
(382, 366, 1227, 'articles', 1),
(383, 367, 1227, 'articles', 1),
(384, 368, 1227, 'articles', 1),
(385, 369, 1256, 'articles', 1),
(386, 370, 1259, 'articles', 1),
(387, 371, 1260, 'articles', 1),
(388, 372, 1432, 'articles', 1),
(389, 373, 1519, 'articles', 1),
(390, 374, 1560, 'articles', 1),
(391, 375, 1852, 'articles', 1),
(392, 376, 1852, 'articles', 1),
(393, 377, 1852, 'articles', 1),
(394, 378, 1852, 'articles', 1),
(395, 379, 2069, 'articles', 1),
(396, 380, 2075, 'articles', 1),
(397, 381, 2076, 'articles', 1),
(398, 382, 2082, 'articles', 1),
(399, 358, 2082, 'articles', 1),
(400, 383, 2082, 'articles', 1),
(401, 384, 2082, 'articles', 1),
(402, 385, 2082, 'articles', 1),
(403, 386, 2082, 'articles', 1),
(404, 387, 2082, 'articles', 1),
(405, 388, 2100, 'articles', 1),
(406, 389, 2101, 'articles', 1),
(407, 390, 2119, 'articles', 1),
(408, 391, 2768, 'articles', 1),
(409, 392, 2769, 'articles', 1),
(410, 393, 2815, 'articles', 1),
(411, 394, 2815, 'articles', 1),
(412, 395, 2829, 'articles', 1),
(413, 396, 2829, 'articles', 1),
(414, 397, 2920, 'articles', 1);

-- --------------------------------------------------------

--
-- Table structure for table `useronline`
--

CREATE TABLE `useronline` (
  `timestamp` int(15) NOT NULL DEFAULT '0',
  `ip` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `useronline`
--

INSERT INTO `useronline` (`timestamp`, `ip`, `file`) VALUES
(1561610515, '123.17.81.96', 'guiq7unpvmar5p9s1urge3n3b4'),
(1561610526, '123.17.81.96', 'guiq7unpvmar5p9s1urge3n3b4'),
(1561610530, '123.19.232.96', 'rndf94jg15f7j5dn57lfloet07'),
(1561610535, '123.19.232.96', 'rndf94jg15f7j5dn57lfloet07'),
(1561610544, '123.17.81.96', 'guiq7unpvmar5p9s1urge3n3b4'),
(1561610546, '123.17.81.96', 'guiq7unpvmar5p9s1urge3n3b4'),
(1561610563, '123.19.232.96', 'rndf94jg15f7j5dn57lfloet07'),
(1561610564, '123.19.232.96', 'rndf94jg15f7j5dn57lfloet07'),
(1561610565, '123.19.232.96', 'rndf94jg15f7j5dn57lfloet07'),
(1561610567, '117.6.44.61', 'lk14tse5ijqbitl18pm78qcpc4'),
(1561610616, '117.6.44.61', '254tno8le7ktk836r2froo6jt7'),
(1561610659, '123.17.81.96', 'guiq7unpvmar5p9s1urge3n3b4'),
(1561610661, '123.17.81.96', 'guiq7unpvmar5p9s1urge3n3b4'),
(1561610673, '27.67.15.220', '0g560tt116kuhooj9e4p0hvsr3'),
(1561610674, '27.67.15.220', '0g560tt116kuhooj9e4p0hvsr3'),
(1561610687, '117.6.44.61', '8atd0713a2utivuebnpi9hh735'),
(1561610710, '123.17.81.96', 'guiq7unpvmar5p9s1urge3n3b4'),
(1561610712, '123.17.81.96', 'guiq7unpvmar5p9s1urge3n3b4'),
(1561610736, '117.6.44.61', 'm5bfr637m4kpko0mjh5oae8uq1'),
(1561610761, '54.36.150.138', 'jsnb1q3usdsges16vmlgf461a4'),
(1561610808, '117.6.44.61', 'cmmhen145or5isg9ovfgvqivd5'),
(1561610811, '123.17.81.96', 'guiq7unpvmar5p9s1urge3n3b4'),
(1561610812, '113.161.31.17', 'ft0od8rcouj45a1hnnl15s4pi3'),
(1561610816, '113.161.31.17', 'ft0od8rcouj45a1hnnl15s4pi3'),
(1561610826, '123.17.81.96', 'guiq7unpvmar5p9s1urge3n3b4'),
(1561610828, '123.17.81.96', 'guiq7unpvmar5p9s1urge3n3b4'),
(1561610834, '113.161.31.17', 'ft0od8rcouj45a1hnnl15s4pi3'),
(1561610835, '113.161.31.17', 'ft0od8rcouj45a1hnnl15s4pi3'),
(1561610837, '123.17.81.96', 'guiq7unpvmar5p9s1urge3n3b4'),
(1561610839, '123.17.81.96', 'guiq7unpvmar5p9s1urge3n3b4'),
(1561610848, '113.161.31.17', 'ft0od8rcouj45a1hnnl15s4pi3'),
(1561610849, '113.161.31.17', 'ft0od8rcouj45a1hnnl15s4pi3'),
(1561610857, '117.6.44.61', '17trfd148spje4gqmo1hfga022'),
(1561610859, '123.17.81.96', 'guiq7unpvmar5p9s1urge3n3b4'),
(1561610862, '123.17.81.96', 'guiq7unpvmar5p9s1urge3n3b4'),
(1561610872, '123.17.81.96', 'guiq7unpvmar5p9s1urge3n3b4'),
(1561610875, '123.17.81.96', 'guiq7unpvmar5p9s1urge3n3b4'),
(1561610884, '123.17.81.96', 'guiq7unpvmar5p9s1urge3n3b4'),
(1561610887, '123.17.81.96', 'guiq7unpvmar5p9s1urge3n3b4'),
(1561610929, '117.6.44.61', 'foo2a2f6rjnk4s8csgk7b0j4q2'),
(1561610935, '115.75.56.154', 'f10ovp3g75ufssfkuqugpstfe2'),
(1561610936, '115.75.56.154', 'f10ovp3g75ufssfkuqugpstfe2'),
(1561610977, '117.6.44.61', '67skmm2t9faj48k1he03t4vbg4'),
(1561610980, '123.17.81.96', 'guiq7unpvmar5p9s1urge3n3b4'),
(1561610981, '123.17.81.96', 'guiq7unpvmar5p9s1urge3n3b4'),
(1561610983, '123.17.81.96', 'guiq7unpvmar5p9s1urge3n3b4'),
(1561610986, '123.17.81.96', 'guiq7unpvmar5p9s1urge3n3b4'),
(1561610987, '123.17.81.96', 'guiq7unpvmar5p9s1urge3n3b4'),
(1561610999, '203.113.152.5', 'mon6n9j5aj9sb52mm7lpcecoh3'),
(1561611041, '46.229.168.139', 'b6kduqcvch70rlajmvravifku4'),
(1561611049, '117.6.44.61', '1nefe79bdd9bqubc1ork1piht2'),
(1561611098, '117.6.44.61', 'i52didetdcc7r2ka7h9bccieq7');

-- --------------------------------------------------------

--
-- Table structure for table `user_activity_log`
--

CREATE TABLE `user_activity_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` text CHARACTER SET utf8,
  `insert_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` text CHARACTER SET utf8
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_activity_log`
--

INSERT INTO `user_activity_log` (`id`, `user_id`, `username`, `note`, `insert_date`, `ip_address`) VALUES
(3754, 0, 'admin', 'sửa widget trang chủ : Sản phẩm', '2019-10-16 04:59:33', NULL),
(3755, 0, 'admin', 'thêm sản phẩm : Bể chứa lắp ghép Aquatank hình trụ tròn 4 tầng', '2019-10-16 09:22:56', NULL),
(3756, 0, 'admin', 'thêm sản phẩm : Bể chứa lắp ghép Aquatank hình trụ tròn 6 tầng', '2019-10-16 09:23:43', NULL),
(3757, 0, 'admin', 'thêm danh mục : a', '2019-10-17 04:38:04', NULL),
(3758, 0, 'admin', 'xóa danh mục : a', '2019-10-17 04:38:28', NULL),
(3759, 0, 'admin', 'cập nhật cấu hình chung : ', '2019-10-17 08:04:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `name_vn` text COLLATE utf8_unicode_ci,
  `name_en` text COLLATE utf8_unicode_ci,
  `url` text COLLATE utf8_unicode_ci,
  `url_upload` text COLLATE utf8_unicode_ci,
  `slide` int(11) NOT NULL DEFAULT '0',
  `num` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `img` text COLLATE utf8_unicode_ci,
  `unique_key_vn` text COLLATE utf8_unicode_ci,
  `unique_key_en` text COLLATE utf8_unicode_ci,
  `title_vn` text COLLATE utf8_unicode_ci,
  `title_en` text COLLATE utf8_unicode_ci,
  `keyword_vn` text COLLATE utf8_unicode_ci,
  `keyword_en` text COLLATE utf8_unicode_ci,
  `des_vn` text COLLATE utf8_unicode_ci,
  `des_en` text COLLATE utf8_unicode_ci,
  `des_vn_char` tinyint(4) NOT NULL DEFAULT '0',
  `des_en_char` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `name_vn`, `name_en`, `url`, `url_upload`, `slide`, `num`, `cid`, `active`, `img`, `unique_key_vn`, `unique_key_en`, `title_vn`, `title_en`, `keyword_vn`, `keyword_en`, `des_vn`, `des_en`, `des_vn_char`, `des_en_char`) VALUES
(16, 'Du lịch Sapa 2017- Sapa Travel Viet Nam 2017', '', 'https://www.youtube.com/watch?v=XRUq0SFRa9I', NULL, 1, 0, 265, 1, './upload/images/video-1561424660.jpg', '', '', '', '', '', '', '', '', 0, 0),
(11, 'Khám phá thành phố Đà Lạt - SCTV12', '', 'https://www.youtube.com/watch?v=Ppc2KQAEs4c', NULL, 1, 0, 265, 1, './upload/images/video-1561424163.jpg', '', '', '', '', '', '', '', '', 0, 0),
(18, 'Top 10 công trình Việt Nam nổi tiếng toàn thế giới - Tự hào khi là người Việt', '', 'https://www.youtube.com/watch?v=15dz78CS0zA', NULL, 1, 0, 265, 1, './upload/images/video-1561424724.jpg', '', '', '', '', '', '', '', '', 0, 0),
(15, 'Lâm Vỹ Dạ giả làm thí sinh để lật mặt Hứa Minh Đạt mê gái quên vợ', '', 'https://www.youtube.com/watch?v=f26EBxB0Rqo', NULL, 1, 0, 265, 1, './upload/images/video-1561424589.jpg', '', '', '', '', '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `video_upload`
--

CREATE TABLE `video_upload` (
  `id` int(11) NOT NULL,
  `name_vn` text COLLATE utf8_unicode_ci,
  `name_en` text COLLATE utf8_unicode_ci,
  `url` text COLLATE utf8_unicode_ci,
  `num` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `img` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int(11) NOT NULL,
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
  `num_type_tab_1` tinyint(4) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `name_vn`, `name_en`, `content_vn`, `content_en`, `comp`, `cid`, `is_deleted`, `type`, `ptype`, `num`, `active`, `qlimit`, `is_show_title`, `qlimit_tincon`, `active_tincon`, `tab`, `type_tab`, `num_type_tab`, `name_tab1`, `name_tab2`, `type_tab_1`, `num_type_tab_1`) VALUES
(1, 'Widget cột trái', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 1, 0, 1, 3, 0, 0, 3, 6, NULL, NULL, 0, 0),
(2, 'Widget cột phải', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 2, 1, 0, 1, 3, 0, 0, 3, 6, NULL, NULL, 0, 0),
(3, 'Widget trang chủ', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 1, 0, 1, 3, 0, 0, 3, 6, NULL, NULL, 0, 0),
(4, 'Widget footer', NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 1, 0, 1, 3, 0, 0, 3, 6, NULL, NULL, 0, 0),
(123, 'Về chúng tôi', NULL, '<p><strong>NƯỚC LÀNH - GOOD WATER</strong></p>\r\n\r\n<p>Sản xuất bồn chứa công nghiệp</p>\r\n\r\n<p><strong>Nước Lành</strong>&nbsp;là công ty chuyên về các giải pháp cho hệ thống bồn chứa, hệ thống cấp thoát nước và mái che tiên tiến. Một sự kết hợp hoàn hảo giữa công nghệ bồn thép tiền chế và các hệ thống mái che.</p>\r\n', NULL, 7, 4, 1, 1, '\"0\"', 0, 1, 0, 0, 3, 0, 0, 3, 6, NULL, NULL, 0, 0),
(124, 'Chính sách', NULL, '<p>Chính sách bảo hành</p>\r\n\r\n<p>Chính sách và quy định chung</p>\r\n\r\n<p>Chính sách bảo mật</p>\r\n\r\n<p>Đổi trả sản phẩm</p>\r\n', NULL, 7, 4, 1, 1, '\"0\"', 1, 1, 4, 0, 3, 0, 0, 3, 6, NULL, NULL, 0, 0),
(125, 'Liên hệ', NULL, '<p><strong>CÔNG TY CỔ PHẦN NƯỚC LÀNH - GOOD WATER JSC</strong></p>\r\n\r\n<p><strong>TS:</strong>&nbsp;21 Đoàn Kết, Phường Tân Sơn Nhì, Quận Tân Phú, Thành Phố Hồ Chí Minh</p>\r\n\r\n<p><strong>VP:</strong>&nbsp;18 Nguyễn Trường Tộ, Phường Tân Thành, Quận Tân Phú, Thành Phố.&nbsp;Hồ Chí Minh</p>\r\n\r\n<p><strong>XSX:</strong>&nbsp;1A6 Tỉnh Lộ 10, Ấp 1, Xã Phạm Văn Hai, Huyện Bình Chánh, Thành Phố&nbsp;Hồ Chí Minh</p>\r\n\r\n<p><strong>MST:</strong>&nbsp;0310717823</p>\r\n\r\n<p><strong>Website:</strong>&nbsp;goodwater.vn;&nbsp;<strong>Email:</strong>&nbsp;info@goodwater.vn</p>\r\n\r\n<p><strong>Điện thoại:&nbsp;</strong>&nbsp;84.028.38129.050;&nbsp;<strong>Fax:</strong>&nbsp;028.38129.050</p>\r\n\r\n<p><strong>Hotline:&nbsp;</strong>0913.726.283</p>\r\n', NULL, 7, 4, 1, 1, '\"0\"', 3, 1, 0, 0, 3, 0, 0, 3, 6, NULL, NULL, 0, 0),
(126, 'Facebook', NULL, '', NULL, 7, 4, 1, 1, '\"0\"', 4, 1, 4, 0, 3, 0, 0, 3, 6, NULL, NULL, 0, 0),
(120, 'Nước Lành', NULL, '<p style=\"text-align: center;\"><span style=\"color:#c0392b\"><span style=\"font-size:14px\"><strong>V&igrave; sao kh&aacute;ch h&agrave;ng chọn&nbsp;Nước L&agrave;nh - Good Water&nbsp;l&agrave;m đối t&aacute;c...?</strong></span></span></p>\r\n\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n\r\n<table align=\"center\" cellpadding=\"2\" cellspacing=\"2\" style=\"width:100%;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p style=\"text-align:center\"><img alt=\"gioi thieu\" height=\"200\" src=\"/ckfinder/upload/images/trang-chu/Gioi-thieu.png\" width=\"200\" /></p>\r\n\r\n			<p style=\"text-align: center;\"><strong>GIỚI THIỆU</strong></p>\r\n\r\n			<p style=\"text-align: center;\"><strong>Nước L&agrave;nh</strong>&nbsp;sản xuất bồn chứa c&ocirc;ng nghiệp, cung cấp giải ph&aacute;p lắp gh&eacute;p bồn chứa c&ocirc;ng nghiệp, thiết bị xử l&yacute; nước</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\"><img alt=\"nhan luc\" height=\"200\" src=\"/ckfinder/upload/images/trang-chu/Nhan-su.png\" width=\"200\" /></p>\r\n\r\n			<p style=\"text-align: center;\"><strong>NH&Acirc;N LỰC</strong></p>\r\n\r\n			<p style=\"text-align: center;\">&ldquo;<strong>Nh&acirc;n vi&ecirc;n</strong>&nbsp;l&agrave; t&agrave;i sản qu&yacute; gi&aacute; nhất của C&ocirc;ng ty&rdquo;. Tạo m&ocirc;i trường l&agrave;m việc kỷ luật, an to&agrave;n, văn minh, th&acirc;n thiện v&agrave; đo&agrave;n kết.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\"><img alt=\"san pham\" height=\"200\" src=\"/ckfinder/upload/images/trang-chu/San-pham.png\" width=\"200\" /></p>\r\n\r\n			<p style=\"text-align: center;\"><strong>SẢN PHẨM CHỦ LỰC</strong></p>\r\n\r\n			<p style=\"text-align: center;\"><strong>Nước L&agrave;nh</strong>&nbsp;l&agrave; c&ocirc;ng ty chuy&ecirc;n về c&aacute;c giải ph&aacute;p cho hệ thống bồn chứa, hệ thống cấp tho&aacute;t nước v&agrave; m&aacute;i che ti&ecirc;n tiến.</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p style=\"text-align:center\"><img alt=\"\" height=\"200\" src=\"/ckfinder/upload/images/trang-chu/Co-so-vat-chat.png\" width=\"200\" /></p>\r\n\r\n			<p style=\"text-align: center;\"><strong>CƠ SỞ VẬT CHẤT</strong></p>\r\n\r\n			<p style=\"text-align: center;\"><strong>C&ocirc;ng Ty Cổ Phần Nước L&agrave;nh - Good Water</strong>&nbsp; l&agrave; nh&agrave; sản xuất chuy&ecirc;n nghiệp,&nbsp; sử dụng trang thiết bị c&ocirc;ng nghệ hiện đại, ti&ecirc;n tiến</p>\r\n\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n\r\n<p style=\"text-align: center;\"><iframe align=\"middle\" frameborder=\"0\" height=\"480\" scrolling=\"no\" src=\"https://www.youtube.com/embed/h72q2k64yAc\" width=\"100%\"></iframe></p>\r\n', NULL, 7, 3, 1, 1, '\"0\"', 0, 1, 4, 1, 3, 0, 0, 3, 6, NULL, NULL, 0, 0),
(119, 'sản phẩm', NULL, '', NULL, 2, 2, 1, 3, '\"0\"', 0, 1, 5, 0, 3, 0, 0, 3, 6, NULL, NULL, 0, 0),
(83, 'Tin mới', '', '', '', 3, 2, 1, 2, '\"0\"', 0, 1, 4, 0, 3, 0, 0, 3, 6, '', '', 0, 0),
(121, 'Dự án', NULL, '', NULL, 3, 3, 1, 3, '[\"313\"]', 2, 0, 4, 0, 3, 0, 0, 3, 6, NULL, NULL, 0, 0),
(122, 'Sản phẩm', NULL, '', NULL, 2, 3, 1, 3, '[\"318\"]', 1, 0, 4, 0, 3, 0, 0, 3, 6, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `widgets_categories`
--

CREATE TABLE `widgets_categories` (
  `id` int(11) NOT NULL,
  `widgetid` int(11) DEFAULT NULL,
  `catid` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `widgets_categories`
--

INSERT INTO `widgets_categories` (`id`, `widgetid`, `catid`, `active`) VALUES
(96, 64, 227, 0),
(95, 64, 253, 0),
(94, 97, 260, 0),
(93, 97, 266, 1),
(91, 92, 253, 1),
(90, 92, 252, 1),
(20, 64, 216, 1),
(22, 69, 217, 0),
(23, 69, 218, 1),
(24, 69, 229, 1),
(25, 69, 228, 1),
(26, 69, 230, 1),
(27, 69, 231, 1),
(28, 69, 216, 0),
(29, 70, 227, 0),
(30, 70, 222, 0),
(31, 70, 233, 1),
(32, 70, 257, 0),
(33, 70, 216, 0),
(34, 70, 261, 0),
(35, 70, 229, 0),
(36, 70, 238, 0),
(37, 70, 217, 0),
(38, 70, 218, 0),
(39, 70, 219, 0),
(40, 75, 220, 0),
(101, 79, 269, 0),
(42, 77, 222, 0),
(89, 92, 251, 1),
(44, 79, 224, 0),
(45, 80, 225, 0),
(46, 81, 226, 0),
(47, 82, 227, 0),
(48, 77, 217, 0),
(49, 77, 244, 1),
(50, 77, 245, 1),
(51, 77, 246, 1),
(52, 77, 247, 1),
(53, 77, 248, 1),
(54, 70, 232, 1),
(55, 70, 234, 1),
(56, 70, 235, 1),
(57, 70, 236, 1),
(58, 75, 237, 1),
(59, 75, 238, 1),
(60, 75, 239, 1),
(100, 79, 267, 1),
(99, 79, 270, 1),
(98, 82, 272, 1),
(97, 82, 271, 1),
(65, 79, 254, 1),
(66, 79, 255, 1),
(67, 79, 256, 0),
(68, 80, 257, 1),
(69, 80, 258, 1),
(70, 81, 260, 1),
(71, 81, 261, 1),
(72, 81, 262, 1),
(73, 82, 263, 1),
(74, 82, 264, 1),
(75, 80, 259, 1),
(88, 92, 249, 1),
(84, 84, 243, 1),
(83, 84, 242, 1),
(82, 84, 241, 1),
(81, 84, 240, 1),
(102, 79, 268, 1),
(103, 92, 250, 1);

-- --------------------------------------------------------

--
-- Table structure for table `widgets_not_display_categories`
--

CREATE TABLE `widgets_not_display_categories` (
  `id` int(11) NOT NULL,
  `widgetid` int(11) DEFAULT NULL,
  `catid` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessed`
--
ALTER TABLE `accessed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_groups`
--
ALTER TABLE `admin_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_groups_detail`
--
ALTER TABLE `admin_groups_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_art_cat` (`cid`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banned_ip`
--
ALTER TABLE `banned_ip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ct_ct` (`pid`),
  ADD KEY `fk_ct_comp` (`comp`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`cmt_id`);

--
-- Indexes for table `component`
--
ALTER TABLE `component`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `component_cms`
--
ALTER TABLE `component_cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirmation`
--
ALTER TABLE `confirmation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `confirmation_code` (`confirmation_code`);

--
-- Indexes for table `contact_logs`
--
ALTER TABLE `contact_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customfields`
--
ALTER TABLE `customfields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flags`
--
ALTER TABLE `flags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img_group`
--
ALTER TABLE `img_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interfaces`
--
ALTER TABLE `interfaces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laytin`
--
ALTER TABLE `laytin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules_widget`
--
ALTER TABLE `modules_widget`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nicks`
--
ALTER TABLE `nicks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `optin`
--
ALTER TABLE `optin`
  ADD PRIMARY KEY (`otn_id`);

--
-- Indexes for table `optin_type`
--
ALTER TABLE `optin_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `option_widget`
--
ALTER TABLE `option_widget`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pro_cat` (`cid`);

--
-- Indexes for table `products_customfields`
--
ALTER TABLE `products_customfields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_advance`
--
ALTER TABLE `tags_advance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_art`
--
ALTER TABLE `tags_art`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `useronline`
--
ALTER TABLE `useronline`
  ADD PRIMARY KEY (`timestamp`),
  ADD KEY `ip` (`ip`),
  ADD KEY `file` (`file`);

--
-- Indexes for table `user_activity_log`
--
ALTER TABLE `user_activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_upload`
--
ALTER TABLE `video_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widgets_categories`
--
ALTER TABLE `widgets_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widgets_not_display_categories`
--
ALTER TABLE `widgets_not_display_categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessed`
--
ALTER TABLE `accessed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1012;

--
-- AUTO_INCREMENT for table `admin_groups`
--
ALTER TABLE `admin_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_groups_detail`
--
ALTER TABLE `admin_groups_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3230;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banned_ip`
--
ALTER TABLE `banned_ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `component`
--
ALTER TABLE `component`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `component_cms`
--
ALTER TABLE `component_cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `confirmation`
--
ALTER TABLE `confirmation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact_logs`
--
ALTER TABLE `contact_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `customfields`
--
ALTER TABLE `customfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `img`
--
ALTER TABLE `img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `img_group`
--
ALTER TABLE `img_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `infos`
--
ALTER TABLE `infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `interfaces`
--
ALTER TABLE `interfaces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `laytin`
--
ALTER TABLE `laytin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `modules_widget`
--
ALTER TABLE `modules_widget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nicks`
--
ALTER TABLE `nicks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `optin`
--
ALTER TABLE `optin`
  MODIFY `otn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `optin_type`
--
ALTER TABLE `optin_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `option_widget`
--
ALTER TABLE `option_widget`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `products_customfields`
--
ALTER TABLE `products_customfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=533;

--
-- AUTO_INCREMENT for table `tags_advance`
--
ALTER TABLE `tags_advance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tags_art`
--
ALTER TABLE `tags_art`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=415;

--
-- AUTO_INCREMENT for table `user_activity_log`
--
ALTER TABLE `user_activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3760;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `video_upload`
--
ALTER TABLE `video_upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `widgets_categories`
--
ALTER TABLE `widgets_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `widgets_not_display_categories`
--
ALTER TABLE `widgets_not_display_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
