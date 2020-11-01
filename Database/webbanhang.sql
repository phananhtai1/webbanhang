-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Nov 01, 2020 at 11:38 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webbanhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_29_101731_tbl_users', 1),
(5, '2020_10_29_101820_tbl_categories', 1),
(6, '2020_10_29_101915_tbl_products', 1),
(7, '2020_10_29_101936_tbl_comment', 1),
(8, '2020_10_29_102023_tbl_shipping', 1),
(9, '2020_10_29_110321_tbl_order', 1),
(10, '2020_10_29_120328_tbl_order_details', 1),
(11, '2020_10_30_171549_tbl_users', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `cat_id` int(10) UNSIGNED NOT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`cat_id`, `cat_name`, `cat_slug`, `created_at`, `updated_at`) VALUES
(1, 'iPhone', 'iphone', NULL, NULL),
(2, 'Samsung', 'samsung', NULL, NULL),
(3, 'LG', 'lg', '2020-10-29 22:56:09', '2020-10-29 22:56:09'),
(4, 'Sony', 'sony', '2020-10-29 22:56:15', '2020-10-29 22:56:15'),
(5, 'Huawei', 'huawei', '2020-10-29 22:56:18', '2020-10-29 22:56:18'),
(6, 'Lenovo', 'lenovo', '2020-10-29 22:56:26', '2020-10-29 22:56:26'),
(7, 'Oppo', 'oppo', '2020-10-29 22:56:31', '2020-10-29 22:56:31'),
(8, 'Nokia', 'nokia', '2020-10-29 22:57:19', '2020-10-29 22:57:19'),
(9, 'Xiaomi', 'xiaomi', '2020-10-29 22:57:40', '2020-10-29 22:57:40'),
(10, 'Realme', 'realme', '2020-10-29 22:57:43', '2020-10-29 22:57:43'),
(12, 'Vivo', 'vivo', '2020-10-29 22:58:01', '2020-10-29 22:58:01'),
(13, 'Asus', 'asus', '2020-10-29 22:58:10', '2020-10-29 22:58:10'),
(14, 'Vsmart', 'vsmart', '2020-10-29 23:17:43', '2020-10-29 23:17:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `com_id` int(10) UNSIGNED NOT NULL,
  `com_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `com_product` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`com_id`, `com_email`, `com_name`, `com_content`, `com_product`, `created_at`, `updated_at`) VALUES
(1, 'phananhtai868@gmail.com', 'Phan Anh Tài', 'Sản phẩm còn bán không vậy ạ???', 21, '2020-10-31 03:50:33', '2020-10-31 03:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `order_shipping` int(10) UNSIGNED NOT NULL,
  `order_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `order_shipping`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 2, '18,000,000.00', 'Đang xử lý', NULL, NULL),
(2, 3, '38,200,000.00', 'Đang xử lý', NULL, NULL),
(3, 4, '23,000,000.00', 'Đang xử lý', NULL, NULL),
(4, 5, '61,070,000.00', 'Đang xử lý', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `prod_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `prod_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 13, 1, NULL, NULL),
(2, 2, 32, 1, NULL, NULL),
(3, 2, 36, 2, NULL, NULL),
(4, 2, 4, 1, NULL, NULL),
(5, 3, 6, 1, NULL, NULL),
(6, 3, 38, 1, NULL, NULL),
(7, 4, 8, 3, NULL, NULL),
(8, 4, 11, 1, NULL, NULL),
(9, 4, 14, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `prod_id` int(10) UNSIGNED NOT NULL,
  `prod_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_price` int(11) NOT NULL,
  `prod_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_warranty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_accessories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_condition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_promotion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_status` tinyint(4) NOT NULL,
  `prod_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_featured` tinyint(4) NOT NULL,
  `prod_cat` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`prod_id`, `prod_name`, `prod_slug`, `prod_price`, `prod_img`, `prod_warranty`, `prod_accessories`, `prod_condition`, `prod_promotion`, `prod_status`, `prod_description`, `prod_featured`, `prod_cat`, `created_at`, `updated_at`) VALUES
(1, 'Samsung Galaxy A51', 'samsung-galaxy-a51', 7900000, 'samsung-galaxy-a51.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Sản phẩm được đổi trả trong 30 ng&agrave;y</p>', 1, 2, '2020-10-29 22:48:00', '2020-10-29 22:48:00'),
(2, 'Samsung Galaxy A50s', 'samsung-galaxy-a50s', 9000000, 'samsung-galaxy-a50s.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Sản phẩm được đổi trả trong 30 ng&agrave;y</p>', 1, 2, '2020-10-29 22:50:06', '2020-10-29 22:50:06'),
(3, 'Iphone 11 red', 'iphone-11-red', 12000000, 'iphone-11-red.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Sản phẩm được đổi trả trong 30 ng&agrave;y</p>', 1, 1, '2020-10-29 22:54:38', '2020-10-29 22:54:38'),
(4, 'iPhone 12 Pro', 'iphone-12-pro', 23000000, 'iphone-12-pro.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Sản phẩm được đổi trả trong 30 ng&agrave;y</p>', 1, 1, '2020-10-29 22:55:58', '2020-10-29 22:55:58'),
(5, 'Oppo Reno4', 'oppo-reno4', 5000000, 'oppo-reno4.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Sản phẩm được đổi trả trong 30 ng&agrave;y</p>', 0, 7, '2020-10-29 23:04:53', '2020-10-29 23:08:07'),
(6, 'Oppo A92', 'oppo-a92', 8000000, 'oppo-a92.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Sản phẩm được đổi trả trong 30 ng&agrave;y</p>', 0, 7, '2020-10-29 23:05:56', '2020-10-29 23:08:42'),
(7, 'iPhone 7 plus', 'iphone-7-plus', 6900000, 'iphone-xs-gold.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Sản phẩm được đổi trả trong 30 ng&agrave;y</p>', 0, 1, '2020-10-29 23:11:21', '2020-10-29 23:11:21'),
(8, 'LG G8x', 'lg-g8x', 4690000, 'lg-g8x-thinq.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Sản phẩm được đổi trả trong 30 ng&agrave;y</p>', 1, 3, '2020-10-29 23:12:23', '2020-10-29 23:14:11'),
(9, 'LG V50', 'lg-v50', 65000000, 'lg-v50.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Sản phẩm được đổi trả trong 30 ng&agrave;y</p>', 0, 3, '2020-10-29 23:13:35', '2020-10-29 23:14:30'),
(10, 'Samsung Galaxy A11', 'samsung-galaxy-a11', 5990000, 'samsung-galaxy-a11.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Đổi trả trong v&ograve;ng 30 ng&agrave;y do lỗi của nh&agrave; sản suất</p>', 1, 2, '2020-10-29 23:27:37', '2020-10-29 23:27:37'),
(11, 'Samsung Galaxy note 20 Untral', 'samsung-galaxy-note-20-untral', 23000000, 'samsung-galaxy-note-20-ultra.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Bảo h&agrave;nh đổi trả trong 30 ng&agrave;y</p>', 1, 2, '2020-10-29 23:30:01', '2020-10-29 23:30:01'),
(12, 'Samsung Galaxy S10', 'samsung-galaxy-s10', 6900000, 'samsung-galaxy-s10.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Bảo h&agrave;nh đổi trả trong 30 ng&agrave;y</p>', 0, 1, '2020-10-29 23:33:19', '2020-10-29 23:33:19'),
(13, 'Samsung Galaxy Z Fold 2', 'samsung-galaxy-z-fold-2', 18000000, 'samsung-galaxy-z-fold-2.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Bảo h&agrave;nh đổi trả trong 30 ng&agrave;y</p>', 1, 2, '2020-10-29 23:37:42', '2020-10-29 23:37:42'),
(14, 'iPhone 11 Pro max', 'iphone-11-pro-max', 24000000, 'iphone-11-pro-max-512gb-gold.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Bảo h&agrave;nh đổi trả trong 30 ng&agrave;y</p>', 1, 1, '2020-10-29 23:39:06', '2020-10-29 23:39:06'),
(15, 'iPhone 12 Pro 128gb', 'iphone-12-pro-128gb', 13000000, 'iphone-12-128gb.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Bảo h&agrave;nh đổi trả trong 30 ng&agrave;y</p>', 0, 1, '2020-10-29 23:44:45', '2020-10-29 23:44:45'),
(16, 'Vivo Iqoo 3', 'vivo-iqoo-3', 7990000, 'vivo-iqoo-3-5g-3.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Bảo h&agrave;nh đổi trả trong 30 ng&agrave;y</p>', 0, 12, '2020-10-29 23:46:28', '2020-10-29 23:46:28'),
(17, 'Vivo Y12s', 'vivo-y12s', 6000000, 'vivo-y12s.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>csrf_</p>', 1, 12, '2020-10-29 23:48:39', '2020-10-29 23:48:39'),
(18, 'Vivo Y20S Xanh', 'vivo-y20s-xanh', 11000000, 'vivo-y20s-xanh.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Bảo h&agrave;nh đổi trả trong 30 ng&agrave;y</p>', 0, 12, '2020-10-29 23:50:45', '2020-10-29 23:50:45'),
(19, 'Vsmart Aris Pro', 'vsmart-aris-pro', 18000000, 'vsmart-aris-pro.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Bảo h&agrave;nh đổi trả trong 30 ng&agrave;y</p>', 1, 14, '2020-10-29 23:51:22', '2020-10-29 23:51:22'),
(20, 'Vsmart Joy 4', 'vsmart-joy-4', 5480000, 'vsmart-joy-4.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Bảo h&agrave;nh đổi trả trong 30 ng&agrave;y</p>', 0, 14, '2020-10-29 23:56:29', '2020-10-29 23:56:29'),
(21, 'Vsmart Live 4', 'vsmart-live-4', 7860000, 'vsmart-live-4.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Bảo h&agrave;nh đổi trả trong 30 ng&agrave;y</p>', 0, 14, '2020-10-29 23:56:51', '2020-10-29 23:56:51'),
(22, 'Huawei Y6P Xanh', 'huawei-y6p-xanh', 9000000, 'huawei-y6p-xanh.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Bảo h&agrave;nh đổi trả trong 30 ng&agrave;y</p>', 1, 5, '2020-10-29 23:57:31', '2020-10-29 23:57:31'),
(23, 'Huawei Nova I7 Pink', 'huawei-nova-i7-pink', 8700000, 'huawei-nova-7i-pink.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Bảo h&agrave;nh đổi trả trong 30 ng&agrave;y</p>', 1, 5, '2020-10-30 00:01:38', '2020-10-30 00:01:38'),
(24, 'Lenovo K5', 'lenovo-k5', 6000000, 'lenovo-k5.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Bảo h&agrave;nh đổi trả trong 30 ng&agrave;y</p>', 0, 6, '2020-10-30 00:02:56', '2020-10-30 00:02:56'),
(26, 'Lenovo Z6', 'lenovo-z6', 18770000, 'lenovo-z6.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Bảo h&agrave;nh đổi trả trong 30 ng&agrave;y</p>', 0, 6, '2020-10-30 00:04:07', '2020-10-30 00:04:07'),
(27, 'Nokia 53', 'nokia-53', 4000000, 'nokia-53.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Bảo h&agrave;nh đổi trả trong 30 ng&agrave;y</p>', 0, 8, '2020-10-30 00:04:54', '2020-10-30 00:04:54'),
(28, 'Nokia 83', 'nokia-83', 9990000, 'nokia-83.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Bảo h&agrave;nh đổi trả trong 30 ng&agrave;y</p>', 1, 8, '2020-10-30 00:05:38', '2020-10-30 00:05:38'),
(29, 'Realme 6 Pro', 'realme-6-pro', 8990000, 'realme-6-pro-600x600-2-600x600.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Bảo h&agrave;nh đổi trả trong 30 ng&agrave;y</p>', 1, 10, '2020-10-30 00:07:20', '2020-10-30 00:07:20'),
(30, 'Realme 7', 'realme-7', 6000000, 'realme-7-pro.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Bảo h&agrave;nh đổi trả trong 30 ng&agrave;y</p>', 0, 10, '2020-10-30 00:07:40', '2020-10-30 00:07:40'),
(31, 'Realme 7 Pro', 'realme-7-pro', 9000000, 'realme-7.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Bảo h&agrave;nh đổi trả trong 30 ng&agrave;y</p>', 1, 10, '2020-10-30 00:09:10', '2020-10-30 00:09:10'),
(32, 'Realme C12 Red', 'realme-c12-red', 13000000, 'realme-c12-red.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Bảo h&agrave;nh đổi trả trong 30 ng&agrave;y</p>', 1, 10, '2020-10-30 00:09:40', '2020-10-30 00:09:40'),
(33, 'Asus Rog 3', 'asus-rog-3', 12000000, 'asus-rog-phone3-1.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Bảo h&agrave;nh 12thang v&agrave; đổi trả trong&nbsp;30 ng&agrave;y</p>', 1, 13, '2020-10-30 20:55:49', '2020-10-31 03:41:53'),
(34, 'Asus ZenForm 3', 'asus-zenform-3', 9990000, 'asus-zenfone-3png.png', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Bảo h&agrave;nh 12 th&aacute;ng&nbsp;v&agrave; đổi trả trong 30 ng&agrave;y</p>', 0, 13, '2020-10-30 20:56:42', '2020-10-31 03:45:07'),
(35, 'Sony S20A', 'sony-s20a', 8700000, 'sony-s20a.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Bảo h&agrave;nh 12 th&aacute;ng v&agrave; đổi trả trong 30 ng&agrave;y</p>', 0, 4, '2020-10-31 03:46:16', '2020-10-31 03:46:16'),
(36, 'Sony Xpreria 1', 'sony-xpreria-1', 1100000, 'sony-xpreria-1.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Bảo h&agrave;nh 12 th&aacute;ng v&agrave; đổi trả trong 30 ng&agrave;y</p>', 0, 4, '2020-10-31 03:46:39', '2020-10-31 03:46:39'),
(37, 'Xiaomi redmi 9c', 'xiaomi-redmi-9c', 6500000, 'xiaomi-redmi-9c.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Bảo h&agrave;nh 12 th&aacute;ng v&agrave; đổi trả trong 30 ng&agrave;y</p>', 0, 9, '2020-10-31 03:47:46', '2020-10-31 03:47:46'),
(38, 'Xiaomi mi T9 pro', 'xiaomi-mi-t9-pro', 15000000, 'xiaomi-mi-10t-pro.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Bảo h&agrave;nh 12 th&aacute;ng v&agrave; đổi trả trong 30 ng&agrave;y</p>', 1, 9, '2020-10-31 03:48:43', '2020-10-31 03:48:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_user` int(10) UNSIGNED NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `shipping_name`, `shipping_user`, `shipping_address`, `shipping_phone`, `shipping_email`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Ngọc Diễm', 5, '785/8 Nguyễn Kiệm', '03475861231', 'phananhtai868@gmail.com', NULL, NULL),
(2, 'Nguyễn Ngọc Diễm', 5, '785/8 Nguyễn Kiệm', '03475861231', 'phananhtai868@gmail.com', NULL, NULL),
(3, 'Lê Trung Quân', 6, '371 Trưng Vương, TP Tuy Hòa', '0936182101', 'phananhtai868@gmail.com', NULL, NULL),
(4, 'Lê Trung Hiếu', 1, '52 Hai Bà Trưng, Quận 1, TP HCM', '0384618210', 'phananhtai868@gmail.com', NULL, NULL),
(5, 'Nguyễn Ái Quốc', 9, '71 Nguyễn Du', '0935812621', 'phananhtai868@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `username`, `password`, `email`, `phone`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'AnhTai', 'phananhtai1', '$2y$10$15ZYdpxvl3yjbYGiELI5IObLInfdBCz0ws2mzGHe0XwYVU7yH5KBy', 'phananhtai868@gmail.com', '0348668653', 1, NULL, NULL, NULL),
(4, 'Ngọc Nghĩa', 'ngocnghia1', '$2y$10$ICl3EN1K9LS.hwEw6aqIBetc2F5Jn7T4lVfhKfRMqWa8g83QcMUN6', 'ngocnghia123@gmail.com', '12386141241', 0, NULL, NULL, '2020-10-30 10:31:54'),
(5, 'Nguyễn Ngọc Diễm', 'ngocdiem1', '$2y$10$A5JJQ/Ee.azlAwdNuP.JC.fJfCa9//Q/Bo6dD/xfo9u0LxHQBVe4W', 'ngocdiem123@gmail.com', '12312415161', 0, NULL, NULL, NULL),
(6, 'Lê Trung Quân', 'trungquan1', '$2y$10$64TfYuMn75.Ck1/P7UkuHeguMXVS2lKTBoGj.nxL1xngrHVt9pwHm', 'trungquan123@gmail.com', '018619247', 0, NULL, NULL, NULL),
(7, 'Anh Tài', 'admin1', '$2y$10$EkaUn/rKYio/GYEonWpsWer9gGSStruir3mjsa8ZhpRuhkkhhNlQu', 'admin123@gmail.com', '12310172123', 1, NULL, NULL, NULL),
(8, 'Trần Nghĩa', 'trannghia1', '$2y$10$aXFGsLO9GuVAUC7rZuKtPOYitBvRjDN6BgRTYpbzqgzk0n6BtHnB2', 'trannghia123@gmail.com', '096153151', 0, NULL, NULL, NULL),
(9, 'Trần Trung', 'trantrung1', '$2y$10$O/TM82lRrfurMeefZNijkuIsXHGBIL0kze0jJFR5OXexn0bBnx6.a', 'trantrung123@gmail.com', '081251906', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `tbl_comment_com_product_foreign` (`com_product`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `tbl_order_order_shipping_foreign` (`order_shipping`);

--
-- Indexes for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`),
  ADD KEY `tbl_order_details_order_id_foreign` (`order_id`),
  ADD KEY `tbl_order_details_prod_id_foreign` (`prod_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `tbl_products_prod_cat_foreign` (`prod_cat`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`),
  ADD KEY `tbl_shipping_shipping_user_foreign` (`shipping_user`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `cat_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `com_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `prod_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD CONSTRAINT `tbl_comment_com_product_foreign` FOREIGN KEY (`com_product`) REFERENCES `tbl_products` (`prod_id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_order_shipping_foreign` FOREIGN KEY (`order_shipping`) REFERENCES `tbl_shipping` (`shipping_id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD CONSTRAINT `tbl_order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_order_details_prod_id_foreign` FOREIGN KEY (`prod_id`) REFERENCES `tbl_products` (`prod_id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD CONSTRAINT `tbl_products_prod_cat_foreign` FOREIGN KEY (`prod_cat`) REFERENCES `tbl_categories` (`cat_id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD CONSTRAINT `tbl_shipping_shipping_user_foreign` FOREIGN KEY (`shipping_user`) REFERENCES `tbl_users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
