-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Nov 08, 2020 at 08:38 PM
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
(1, 'phananhtai868@gmail.com', 'Phan Anh Tài', 'Sản phẩm còn bán không vậy ạ???', 21, '2020-10-31 03:50:33', '2020-10-31 03:50:33'),
(2, 'phananhtai868@gmail.com', 'Phan Anh Tài', 'Sản phẩm còn hàng không vậy shop??', 14, '2020-11-06 09:48:40', '2020-11-06 09:48:40'),
(3, '1751010128tai@ou.edu.vn', 'Nguyễn Ngọc Diễm', 'Sản phẩm còn màu khác không vậy ạ', 13, '2020-11-06 09:49:22', '2020-11-06 09:49:22'),
(4, 'ngocdiem123@gmail.com', 'Diễm', 'Sản phẩm rất đáng giá nha mọi người :)))', 10, '2020-11-06 09:50:08', '2020-11-06 09:50:08'),
(5, 'ngocnghia123@gmail.com', 'Nghĩa', 'Một sản phẩm tuyệt vời trong tầm giá', 10, '2020-11-06 09:50:41', '2020-11-06 09:50:41'),
(6, 'nguyenha@gmail.com', 'Hà', 'Sản phẩm còn màu khác không vậy ạ??', 15, '2020-11-06 09:51:27', '2020-11-06 09:51:27'),
(7, 'leloc123@gmail.com', 'Lộc', 'Sản phẩm mẫu mã đẹp giá lại rẻ.', 12, '2020-11-06 09:52:49', '2020-11-06 09:52:49'),
(8, 'lephuc123@gmail.com', 'Phúc', 'Sản phẩm có loại 528Gb không ạ.', 7, '2020-11-06 09:53:21', '2020-11-06 09:53:21'),
(9, 'lelang1@gmail.com', 'Lang', 'Sản phẩm xịn sò, đáng đồng tiền', 4, '2020-11-06 09:54:00', '2020-11-06 09:54:00'),
(10, 'nguyenquoc@gmail.com', 'Quốc', 'Sản phẩm chơi game mượt không vậy ạ??', 3, '2020-11-06 09:58:05', '2020-11-06 09:58:05'),
(11, 'tai.phananh2101@gmail.com', 'Anh Tài', 'Sản phẩm chơi game mượt không shop', 15, '2020-11-06 10:12:09', '2020-11-06 10:12:09'),
(12, 'phananhtai868@gmail.com', 'Admin', 'Sản phẩm còn nha bạn', 21, '2020-11-07 21:50:13', '2020-11-07 21:50:13'),
(14, 'ngocnghia123@gmail.com', 'Nghĩa', 'Sản phẩm còn không vậy ạ', 9, '2020-11-07 21:56:53', '2020-11-07 21:56:53'),
(15, 'phananhtai868@gmail.com', 'Admin', 'Cảm ơn bạn đã ủng hộ cửa hàng', 10, '2020-11-07 22:21:32', '2020-11-07 22:21:32');

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
(4, 5, '61,070,000.00', 'Đang xử lý', NULL, NULL),
(5, 6, '24,000,000.00', 'Đang xử lý', NULL, NULL),
(6, 7, '50,000,000.00', 'Đang xử lý', NULL, NULL),
(7, 8, '25,000,000.00', 'Đang xử lý', NULL, NULL);

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
(9, 4, 14, 1, NULL, NULL),
(10, 5, 38, 1, NULL, NULL),
(11, 5, 22, 1, NULL, NULL),
(12, 6, 33, 2, NULL, NULL),
(13, 6, 15, 2, NULL, NULL),
(14, 7, 15, 1, NULL, NULL),
(15, 7, 3, 1, NULL, NULL);

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
(1, 'Samsung Galaxy A51', 'samsung-galaxy-a51', 7900000, 'samsung-galaxy-a51.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>M&aacute;y c&oacute; thiết kế mỏng nhẹ thuộc h&agrave;ng top trong ph&acirc;n kh&uacute;c, chỉ 7.9 mm. Mặt lưng với họa tiết cắt kim cương đa sắc nổi bật, đi k&egrave;m l&agrave; 3 t&ugrave;y chọn m&agrave;u sắc s&agrave;nh điệu: Xanh Crush Đa Sắc, Trắng Crush Lấp L&aacute;nh, Đen Crush Kim Cương.</p>\r\n\r\n<p>M&agrave;n h&igrave;nh của điện thoại&nbsp;Galaxy A51 hứa hẹn mang đến trải nghiệm h&igrave;nh ảnh tuyệt vời nhờ m&agrave;n h&igrave;nh tr&agrave;n viền v&ocirc; cực Infinity-O&nbsp;6.5 inch. Độ ph&acirc;n giải FullHD+ t&aacute;i hiện h&igrave;nh ảnh r&otilde; r&agrave;ng sắc n&eacute;t. B&ecirc;n cạnh đ&oacute; tấm nền super AMOLED&nbsp;cho m&agrave;u đen s&acirc;u, c&oacute; t&ugrave;y chọn m&agrave;u sắc tươi s&aacute;ng hoặc ti&ecirc;u chuẩn theo sở th&iacute;ch người d&ugrave;ng.</p>\r\n\r\n<p>Mặc d&ugrave; sở hữu m&agrave;n h&igrave;nh lớn, nhưng việc cầm nắm Galaxy A51 kh&ocirc;ng trở n&ecirc;n kh&oacute; khăn nhờ viền m&agrave;n h&igrave;nh được l&agrave;m mỏng đến tối đa.</p>\r\n\r\n<p>M&aacute;y cũng sở hữu cảm biến v&acirc;n tay&nbsp;nh&uacute;ng trực tiếp trong m&agrave;n h&igrave;nh hiện đại, vị tr&iacute; đặt cảm biến dễ thao t&aacute;c v&agrave; nhận dạng được cả khi tay đang ướt.</p>', 1, 2, '2020-10-29 22:48:00', '2020-11-06 07:57:30'),
(2, 'Samsung Galaxy A50s', 'samsung-galaxy-a50s', 9000000, 'samsung-galaxy-a50s.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Nằm trong sứ mệnh n&acirc;ng cao khả năng cạnh tranh với c&aacute;c smartphone&nbsp;đến từ nhiều nh&agrave; sản xuất Trung Quốc, mới đ&acirc;y Samsung tiếp tục giới thiệu phi&ecirc;n bản&nbsp;Samsung Galaxy A50s&nbsp;với nhiều t&iacute;nh năng m&agrave; trước đ&acirc;y chỉ xuất hiện tr&ecirc;n d&ograve;ng cao cấp.</p>\r\n\r\n<p>Kh&ocirc;ng nhiều chiếc điện thoại tầm trung&nbsp;tr&ecirc;n thị trường sở hữu cụm camera chất lượng như&nbsp;Galaxy A50s.Cảm biến ch&iacute;nh được n&acirc;ng l&ecirc;n độ ph&acirc;n giải 48 MP gi&uacute;p những h&igrave;nh ảnh bạn chụp c&oacute; nhiều chi tiết hơn.Ch&uacute;ng ta cũng c&oacute; thể chụp lại những bức ảnh g&oacute;c rộng khi thấy một phong cảnh n&agrave;o đ&oacute; ấn tượng với camera thứ hai - g&oacute;c si&ecirc;u rộng 8 MP.</p>\r\n\r\n<p>Mặt lưng đổi m&agrave;u gradient kh&ocirc;ng chỉ c&oacute; mặt tr&ecirc;n những thiết bị cao cấp m&agrave; c&ograve;n dần được phổ cập nhiều hơn xuống những smartphone ph&acirc;n kh&uacute;c dưới v&agrave; điển h&igrave;nh l&agrave;&nbsp;Galaxy A50s. Samsung đ&atilde; sử dụng thiết kế 3D Glasstic tr&ecirc;n chiếc smartphone n&agrave;y gi&uacute;p mặt lưng tạo ra nhiều hiệu ứng m&agrave;u sắc kh&aacute;c nhau khi &aacute;nh s&aacute;ng chiếu v&agrave;o v&agrave; l&agrave;m tăng th&ecirc;m vẻ cao cấp.</p>\r\n\r\n<p>V&acirc;n tay t&iacute;ch hợp b&ecirc;n trong m&agrave;n h&igrave;nh đang l&agrave; c&ocirc;ng nghệ của tương lai v&agrave; hiện tại kh&ocirc;ng nhiều smartphone được trang bị c&ocirc;ng nghệ n&agrave;y.&nbsp;Vi&ecirc;n pin dung lượng l&ecirc;n tới 4000 mAh cũng sẽ cung cấp đủ thời gian sử dụng một c&aacute;ch thoải m&aacute;i nhất trong v&ograve;ng một ng&agrave;y cho người d&ugrave;ng.&nbsp;B&ecirc;n cạnh đ&oacute; m&aacute;y cũng hỗ trợ c&ocirc;ng nghệ sac nhanh&nbsp;15W gi&uacute;p bạn r&uacute;t ngắn được đ&aacute;ng kể thời gian chờ nạp đầy năng lượng cho m&aacute;y.</p>\r\n\r\n<p>&nbsp;</p>', 1, 2, '2020-10-29 22:50:06', '2020-11-06 08:02:46'),
(3, 'Iphone 11 red', 'iphone-11-red', 12000000, 'iphone-11-red.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Năm nay Apple cũng đ&atilde; n&acirc;ng cấp độ ph&acirc;n giải camera trước n&ecirc;n 12 MP thay v&igrave; 7 MP như thế hệ trước đ&oacute;.&nbsp;Camera trước cũng c&oacute; một t&iacute;nh năng th&ocirc;ng minh, khi bạn xoay ngang điện thoại n&oacute; sẽ tự k&iacute;ch hoạt chế độ selfie g&oacute;c rộng để bạn c&oacute; thể chụp với nhiều người hơn.&nbsp;Ngo&agrave;i ra Apple cũng giới thiệu t&iacute;nh năng quay video slow motion d&agrave;nh cho camera trước, điều m&agrave; Apple chưa từng trang bị cho những chiếc iPhone trước đ&acirc;y.</p>\r\n\r\n<p>Mỗi lần ra iPhone mới l&agrave; mỗi lần Apple mang đến cho người d&ugrave;ng một trải nghiệm về hiệu năng &quot;chưa từng c&oacute;&quot;.&nbsp;Tr&ecirc;n iPhone 11 mới Apple n&acirc;ng cấp con chip của m&igrave;nh l&ecirc;n thế hệ Apple A13 Bionic&nbsp;rất mạnh mẽ.&nbsp;Chiếc iPhone n&agrave;y cũng được n&acirc;ng cấp dung lượng ram l&ecirc;n th&agrave;nh 4 GB thay v&igrave; 3 GB như thế hệ trước đ&oacute;.</p>\r\n\r\n<p>Ở mức cấu h&igrave;nh tr&ecirc;n gi&uacute;p điện thoại chơi game&nbsp;tốt với c&aacute;c tựa game phổ biến hiện nay một c&aacute;ch mượt m&agrave;, ổn định. Mọi thao t&aacute;c tr&ecirc;n iPhone mới cũng cho tốc độ phản hồi nhanh m&agrave; bạn gần như sẽ kh&ocirc;ng cảm nhận được sự giật lag cho d&ugrave; c&oacute; sử dụng trong một thời gian d&agrave;i.</p>\r\n\r\n<p>Ch&uacute;ng ta sẽ c&oacute; một mặt lưng ho&agrave;n thiện dưới dạng k&iacute;nh v&agrave; Apple n&oacute;i rằng họ đ&atilde; sử dụng loại k&iacute;nh bền nhất từ trước tới nay cho chiếc iPhone n&agrave;y.&nbsp;Camera k&eacute;p tr&ecirc;n iPhone mới cũng được thiết kế lại v&agrave; tin vui l&agrave; n&oacute; sẽ bớt lồi hơn so với tr&ecirc;n tr&ecirc;n iPhone Xr trước đ&acirc;y.&nbsp;Điểm nhấn về cụm camera to bản ở mặt sau sẽ gi&uacute;p người kh&aacute;c dễ d&agrave;ng nhận biết bạn đang sử dụng một chiếc iPhone 11 tr&ecirc;n tay.</p>\r\n\r\n<p>Khi n&oacute;i đến thời lượng pin iPhone 11, hẳn nhiều người đ&atilde; ước ao rằng m&aacute;y sẽ c&oacute; vi&ecirc;n pin tốt giống như iPhone Xr (c&oacute; thời lượng pin tốt nhất so với bất kỳ iPhone hiện đại n&agrave;o).</p>', 1, 1, '2020-10-29 22:54:38', '2020-11-06 08:07:15'),
(4, 'iPhone 12 Pro', 'iphone-12-pro', 23000000, 'iphone-12-pro.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Apple &iacute;t khi đ&aacute;p trả trực tiếp đến người d&ugrave;ng v&agrave; iFan nhưng c&oacute; đồng nghĩa l&agrave; họ kh&ocirc;ng quan t&acirc;m<strong> </strong>đến c&aacute;c kỳ vọng của người d&ugrave;ng. Ta c&oacute; thể thấy được qua mỗi năm iPhone mới đều c&oacute; những thay đổi nhỏ thỏa m&atilde;n người d&ugrave;ng. V&agrave; iPhone 12 năm nay đ&atilde; cho thấy điều đ&oacute;.</p>\r\n\r\n<p><strong><em>iPhone 12&nbsp;</em></strong>mang thiết kế được thừa hưởng từ c&aacute;c thế hệ iPhone 4 v&agrave; 5, với phần viền nh&ocirc;m được thiết kế phẳng, kh&ocirc;ng c&ograve;n những đường cong mềm mại như trước v&agrave; thay v&agrave;o đ&oacute; l&agrave; những đường n&eacute;t v&ocirc; c&ugrave;ng mạnh mẽ, nam t&iacute;nh.</p>\r\n\r\n<p>Thế hệ iPhone 12 lần n&agrave;y được Apple c&ocirc;ng bố l&agrave; mỏng hơn đến 11% so với thế hệ cũ l&agrave; iPhone 11.&nbsp;Việc thay đổi về thiết kế n&agrave;y ắt hẳn sẽ khiến sản phẩm trở n&ecirc;n đặc biệt v&agrave; thu h&uacute;t người d&ugrave;ng hơn</p>\r\n\r\n<p>Apple đ&atilde; trang bị cho&nbsp;<strong><em>iPhone 12</em></strong>&nbsp;m&agrave;n h&igrave;nh sử dụng tấm nền OLED thay v&igrave; LCD như iPhone 11, m&agrave;n h&igrave;nh n&agrave;y c&oacute; k&iacute;ch thước 6.1 inch với phần viền được v&aacute;t cực mỏng nhằm tối ưu diện t&iacute;ch hiển thị</p>\r\n\r\n<p>Hơn nữa, độ s&aacute;ng m&agrave;n h&igrave;nh l&ecirc;n đến 1200 nits sẽ gi&uacute;p cho mọi chi tiết cũng như m&agrave;u sắc hiển thị r&otilde; r&agrave;ng, ch&acirc;n thực nhất bất chấp mọi điều kiện &aacute;nh s&aacute;ng. M&agrave;n h&igrave;nh giờ đ&acirc;y kh&ocirc;ng c&ograve;n l&agrave; giới hạn tr&ecirc;n c&aacute;c model gi&aacute; rẻ của Apple</p>\r\n\r\n<p>Apple cũng thay đổi ho&agrave;n to&agrave;n chất liệu k&iacute;nh bảo vệ tr&ecirc;n iPhone 12 với c&ocirc;ng nghệ Ceramic Shield cho một độ bền, độ chống chịu cực cao</p>', 1, 1, '2020-10-29 22:55:58', '2020-11-06 08:10:53'),
(5, 'Oppo Reno4', 'oppo-reno4', 5000000, 'oppo-reno4.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Đầu ti&ecirc;n, OPPO Reno 4 có sự n&acirc;ng cấp to&agrave;n diện so với người anh em Reno3, khi sử dụng ch&acirc;́t li&ecirc;̣u nh&ocirc;m nguy&ecirc;n kh&ocirc;́i và được bọc kính cường lực Gorilla Glass 3&nbsp;ở phần mặt trước v&agrave; vỏ nhựa giả k&iacute;nh mặt lưng&nbsp;góp ph&acirc;̀n tăng đ&ocirc;̣ cứng cáp l&acirc;̃n nét sang trọng cho máy.&nbsp;</p>\r\n\r\n<p>Tiếp đến là m&agrave;n h&igrave;nh hyperbol kích thước 6.4 inch c&oacute; phần viền benzel được l&agrave;m si&ecirc;u mỏng, đ&ocirc;̣ ph&acirc;n giải Full HD+ (1080 x 2400 Pixels) tr&ecirc;n n&ecirc;̀n màu AMOLED mang đến chất lượng h&igrave;nh ảnh r&otilde; n&eacute;t, sống động, trải nghiệm giải tr&iacute; chơi game tr&ecirc;n thiết bị n&agrave;y sẽ cực lỳ th&iacute;ch.</p>\r\n\r\n<p>Camera ch&iacute;nh tr&ecirc;n OPPO Reno4 c&oacute; khả năng l&acirc;́y nét tự đ&ocirc;̣ng Laser AF và tính năng ch&ocirc;́ng rung điện tử EIS giúp cho ảnh chụp và video ghi lại vững hơn &amp; kh&ocirc;ng bị nhòe.</p>\r\n\r\n<p>Camera g&oacute;c rộng với độ mở 120&deg; sẽ hỗ trợ người d&ugrave;ng chụp phong cảnh, kiến tr&uacute;c, ảnh nh&oacute;m tốt m&agrave; kh&ocirc;ng cần phải l&ugrave;i ra qu&aacute; xa. Ngo&agrave;i ra m&aacute;y cũng hỗ trợ t&iacute;nh năng zoom gi&uacute;p bạn c&oacute; thể chụp cận những cảnh vật ở khoảng c&aacute;ch xa hơn.</p>\r\n\r\n<p>OPPO đã trang bị cho Reno4 b&ocirc;̣ vi xử lý Qualcomm Snapdragon 720G 8 nh&acirc;n, k&ecirc;́t hợp cùng chip GPU Adreno 618 cho t&ocirc;́c đ&ocirc;̣ xử lý c&acirc;́u hình nhanh hơn 10% và hi&ecirc;̣u năng mạnh mẽ, mang lại đ&ocirc;̀ họa game sắc nét đỉnh cao.&nbsp;</p>\r\n\r\n<p>OPPO Reno4 được trang bị dung lượng RAM 8 GB cho bạn thoải m&aacute;i sử dụng đa nhiệm nhiều ứng dụng m&agrave; kh&ocirc;ng phải lo lắng đến t&iacute;nh trạng giật lag. C&oacute; thể n&oacute;i, OPPO Reno4 l&agrave; một phi&ecirc;n bản n&acirc;ng cấp to&agrave;n diện so với người anh em OPPO Reno3 về thiết kế, cấu h&igrave;nh, v&agrave; camera đồng thời cũng được trang bị nhiều t&iacute;nh năng v&ocirc; c&ugrave;ng &ldquo;hot&rdquo; hiện nay. Đ&acirc;y sẽ l&agrave; sản phẩm m&agrave; những người y&ecirc;u th&iacute;ch chụp ảnh, quay video chắc chắn kh&ocirc;ng thể bỏ qua.</p>', 0, 7, '2020-10-29 23:04:53', '2020-11-06 08:14:10'),
(6, 'Oppo A92', 'oppo-a92', 8000000, 'oppo-a92.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>OPPO A92 được trang bị cho m&igrave;nh con chip Snapdragon 665 mạnh mẽ cho hiệu năng cao, điện thoại chơi game&nbsp;tốt c&aacute;c tựa game mobile hiện h&agrave;nh cũng như&nbsp;xử l&yacute; đa nhiệm mượt m&agrave;.</p>\r\n\r\n<p>Đi k&egrave;m với đ&oacute; l&agrave; GPU Adreno 610 gi&uacute;p m&aacute;y vừa xử l&yacute; th&ocirc;ng tin, dữ liệu nhanh ch&oacute;ng vừa đảm bảo tiết kiệm điện năng tối đa.&nbsp;Dung lượng RAM 8 GB v&agrave; 128 GB bộ nhớ trong qu&aacute; đủ để người d&ugrave;ng thoải m&aacute;i lưu trữ dữ liệu, tải c&aacute;c ứng dụng nặng về m&aacute;y sử dụng.</p>\r\n\r\n<p>M&aacute;y được c&agrave;i đặt sẵn hệ điều h&agrave;nh Android 10 tr&ecirc;n giao diện Color OS 7.1 kh&ocirc;ng chỉ mang đến giao diện người d&ugrave;ng tối giản v&agrave; c&aacute;c biểu tượng mới, m&agrave; c&ograve;n một số t&iacute;nh năng nổi bật n&acirc;ng cao trải nghiệm người d&ugrave;ng.</p>\r\n\r\n<p>Thấu hiểu t&acirc;m l&yacute; người d&ugrave;ng muốn sử dụng điện thoại ng&agrave;y c&agrave;ng nhiều, OPPO trang bị tr&ecirc;n A92 vi&ecirc;n pin dung lượng cực &ldquo;khủng&rdquo; 5.000 mAh gi&uacute;p bạn c&oacute; thể thoải m&aacute;i trải nghiệm c&aacute;c t&aacute;c vụ trong hai ng&agrave;y xứng&nbsp;đ&aacute;ng l&agrave; chiếc điện thoại pin tr&acirc;u.</p>\r\n\r\n<p>Điện thoại Oppo A92 nổi bật với bộ tứ camera sau thiết kế trong một&nbsp;module h&igrave;nh chữ nhật, sắp xếp theo h&igrave;nh chữ L đẹp mắt bao gồm: camera ch&iacute;nh: 48 MP, ống k&iacute;nh&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-goc-rong\" target=\"_blank\">g&oacute;c rộng</a>&nbsp;8 MP, cảm biến chiều s&acirc;u 2 MP cuối c&ugrave;ng camera macro 2 MP.</p>\r\n\r\n<p>Trong tầm gi&aacute; điện thoại tầm trung, c&oacute; thể n&oacute;i A92 l&agrave; thiết bị điện thoại th&ocirc;ng minh &ldquo;ngon, bổ, rẻ&rdquo; khi được trang bị thiết kế hiện đại, cấu h&igrave;nh vượt trội, camera ấn tượng, rất đ&aacute;ng để bạn xuất hầu bao chi&ecirc;u mộ.&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 0, 7, '2020-10-29 23:05:56', '2020-11-06 08:16:27'),
(7, 'iPhone 7 plus', 'iphone-7-plus', 6900000, 'iphone-xs-gold.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>iPhone 7 Plus l&agrave;&nbsp;chiếc iPhone đầu ti&ecirc;n được trang bị camera k&eacute;p c&oacute; c&ugrave;ng độ ph&acirc;n giải 12 MP, đem lại khả năng chụp ảnh ở hai ti&ecirc;u cự kh&aacute;c nhau.&nbsp;</p>\r\n\r\n<p>Camera ch&iacute;nh chụp h&igrave;nh g&oacute;c rộng, c&ograve;n camera phụ c&oacute; ti&ecirc;u cự ph&ugrave; hợp để chụp ch&acirc;n dung, c&oacute; t&iacute;nh năng chụp ch&acirc;n dung x&oacute;a ph&ocirc;ng (l&agrave;m mờ hậu cảnh).&nbsp;Với 1 chạm nhanh ch&oacute;ng bạn c&oacute; thể chuyển đổi giữa chế độ 1x v&agrave; zoom 2x, hoặc bạn c&oacute; thể k&eacute;o thanh trượt hay d&ugrave;ng 2 ng&oacute;n tay đến zoom. Apple đ&atilde; th&ecirc;m t&iacute;nh năng zoom kỹ thuật số l&ecirc;n đến 10x.</p>\r\n\r\n<p>Camera trước n&acirc;ng cấp độ ph&acirc;n giải 7MP với khẩu độ mở lớn f/2.2 hỗ trợ chụp trong điều kiện thiếu s&aacute;ng tuyệt vời với c&ocirc;ng nghệ Retina Flash, Auto HDR.</p>\r\n\r\n<p>&ldquo;T&aacute;o khuyết&rdquo; cũng kh&ocirc;ng qu&ecirc;n nhấn mạnh iPhone 7 Plus sẽ nhanh hơn iPhone đời đầu tới&hellip; 140 lần. Những ai m&ecirc; chơi game tr&ecirc;n di động cũng sẽ &ldquo;phải l&ograve;ng&rdquo; iPhone mới khi c&oacute; chip xử l&yacute; đồ họa được n&acirc;ng tầm đ&uacute;ng chất &ldquo;m&aacute;y chơi game&rdquo; gi&uacute;p điện thoại chơi game&nbsp;một c&aacute;ch mượt m&agrave;, ổn định.</p>\r\n\r\n<p>M&agrave;n h&igrave;nh Retina tr&ecirc;n 7 Plus hỗ trợ DCI-P3 gam m&agrave;u rộng, nghĩa l&agrave; ch&uacute;ng c&oacute; khả năng t&aacute;i tạo m&agrave;u sắc trong phạm vi của sRGB.&nbsp;N&oacute;i đơn giản, ch&uacute;ng c&oacute; thể hiển thị sống động hơn, sắc th&aacute;i h&igrave;nh ảnh tốt hơn trước đ&oacute;. Độ ph&acirc;n giải, mật độ điểm ảnh v&agrave; k&iacute;ch thước m&agrave;n h&igrave;nh vẫn giữ nguy&ecirc;n so với iPhone 6s Plus.</p>\r\n\r\n<p>iPhone 7 Plus thật sự l&agrave; một lựa chọn hợp l&yacute; trong tầm gi&aacute;.</p>', 0, 1, '2020-10-29 23:11:21', '2020-11-06 08:20:28'),
(8, 'LG G8x', 'lg-g8x', 4690000, 'lg-g8x-thinq.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Với LG G8X ThinQ, LG tập trung v&agrave;o cải thiện trải nghiệm người d&ugrave;ng v&agrave; trảii nghiệm sử dụng camera. Đ&acirc;y cũng l&agrave; chiếc smartphone đầu ti&ecirc;n của LG được t&iacute;ch hợp cảm biến v&acirc;n tay dưới m&agrave;n h&igrave;nh.</p>\r\n\r\n<p>Về thiết kế, l&agrave; một phi&ecirc;n bản n&acirc;ng cấp của chiếc LG G8 trước đ&oacute;, G8X ThinQ c&oacute; một số thay đổi nhỏ trong thiết kế. Đ&aacute;ng ch&uacute; &yacute; nhất c&oacute; thể kể tới l&agrave; m&agrave;n h&igrave;nh của m&aacute;y, giờ đ&acirc;y LG G8X ThinQ được trang bị m&agrave;n h&igrave;nh &ldquo;giọt nước&rdquo; với k&iacute;ch thước 6.4 inch, thay v&igrave; m&agrave;n h&igrave;nh tai thỏ như thế hệ trước.</p>\r\n\r\n<p>M&agrave;n h&igrave;nh n&agrave;y cũng c&oacute; k&iacute;ch thước lớn hơn LG G8 v&agrave; sử dụng tấm nền OLED, độ ph&acirc;n giải giảm chỉ c&ograve;n Full HD+, được bảo vệ bởi k&iacute;nh cường lực Gorilla Glass 5.</p>\r\n\r\n<p>Viền m&agrave;n h&igrave;nh của m&aacute;y cũng tương tự như c&aacute;c mẫu smartphone Android kh&aacute;c với c&aacute;c cạnh b&ecirc;n v&agrave; cạnh tr&ecirc;n được l&agrave;m mỏng, nhưng cạnh dưới vẫn hơi d&agrave;y. Ngo&agrave;i ra, viền bezel tr&ecirc;n của LG G8X ThinQ được t&iacute;ch hợp một dải loa thoại thay v&igrave; sử dụng c&ocirc;ng nghệ &acirc;m thanh trong m&agrave;n h&igrave;nh như thế hệ tiền nhiệm. Như vậy l&agrave; G8X ThinQ sẽ c&oacute; 2 loa với c&ocirc;ng suất 1.2W tương đương nhau, cho trải nghiệm giải tr&iacute; tốt hơn.</p>\r\n\r\n<p>Về camera, m&aacute;y c&oacute; một camera ch&iacute;nh 12MP k&egrave;m camera g&oacute;c si&ecirc;u rộng 13MP, sẽ kh&ocirc;ng c&oacute; camera tele hay camera đo chiều s&acirc;u. Đ&acirc;y l&agrave; truyền thống của LG kể từ đời G4, trong khi nhiều mẫu smartphone kh&aacute;c giờ đ&atilde; c&oacute; tới 3 hoặc 4 camera ch&iacute;nh th&igrave; LG vẫn trung th&agrave;nh với camera k&eacute;p k&egrave;m ống k&iacute;nh g&oacute;c rộng.</p>', 1, 3, '2020-10-29 23:12:23', '2020-11-06 08:22:42'),
(9, 'LG V50', 'lg-v50', 65000000, 'lg-v50.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>V&ecirc;̀ t&ocirc;̉ng th&ecirc;̉ điện thoại&nbsp;<strong>V50&nbsp;</strong>kh&ocirc;ng có quá nhi&ecirc;̀u khác bi&ecirc;̣t so với người ti&ecirc;̀n nhi&ecirc;̣m <strong>LG V40</strong>. Tuy nhi&ecirc;n l&acirc;̀n này LG cải ti&ecirc;́n thi&ecirc;́t bị trở n&ecirc;n hoàn thi&ecirc;̣n hơn.&nbsp;</p>\r\n\r\n<p>Sự thay đ&ocirc;̉i đáng chú ý nh&acirc;́t chính là trọng lượng máy nặng hơn và th&acirc;n máy dày hơn. Chính vì dày hơn n&ecirc;n LG đã n&acirc;ng mặt kính phía sau l&ecirc;n, giúp cho cụm camera sau kh&ocirc;ng c&ograve;n lồi v&agrave; flagship trở n&ecirc;n ho&agrave;n mỹ hơn.</p>\r\n\r\n<p>Đi&ecirc;̣n thoại&nbsp;<strong>LG V50 </strong>&nbsp;giá rẻ&nbsp;được trang bị màn hình OLED 6.4 inch đ&ocirc;̣ ph&acirc;n giải QHD+ v&agrave;&nbsp;v&acirc;̃n giữ nguy&ecirc;n notch tai thỏ. Ch&acirc;́t lượng hi&ecirc;̉n thị của màn hình&nbsp;v&ocirc; cùng sắc nét, màu sắc ch&acirc;n th&acirc;̣t, đ&ocirc;̣ chi ti&ecirc;́t cao....M&agrave;n h&igrave;nh V50 ThinQ 5G to, sắc n&eacute;t v&agrave; đáp ứng t&ocirc;́t các nhu c&acirc;̀u giải trí, xem phim của người dùng.</p>\r\n\r\n<p>B&ecirc;n cạnh đó,&nbsp;<strong>LG</strong>&nbsp;đã trang bị&nbsp;<strong>&ocirc;́p lưng Dual View</strong>&nbsp;cho LG V50 ThinQ, đ&acirc;y là &ocirc;́p lưng folio có th&ecirc;m màn hình OLED 6,2 inch. Khi lắp vào đi&ecirc;̣n thoại, phụ ki&ecirc;̣n này có trục bản l&ecirc;̀ đ&ecirc;̉ giữ cho 2 màn hình gắn với nhau. Bản l&ecirc;̀ này được thi&ecirc;́t k&ecirc;́ khá th&ocirc;ng mình và d&ecirc;̃ dàng sử dụng, mang đ&ecirc;́n nhi&ecirc;̀u trải nghi&ecirc;̣m hơn cho người dùng.</p>\r\n\r\n<p><strong>LG V50 H&agrave;n Quốc</strong>&nbsp;chỉ c&oacute; duy nhất t&ugrave;y chọn ROM 128GB. Khe thẻ nhớ ngo&agrave;i cho ph&eacute;p người d&ugrave;ng mở rộng kh&ocirc;ng gian lưu trữ tối đa 512GB. Đi&ecirc;̉m khi&ecirc;́n cho sản ph&acirc;̉m này trở n&ecirc;n n&ocirc;̉i b&acirc;̣t hơn giữa đám đ&ocirc;ng chính là modem&nbsp;<strong>Snapdragon X50 5G</strong>&nbsp;và chạy tr&ecirc;n n&ecirc;̀n tảng h&ecirc;̣ đi&ecirc;̀u hành Android 9 Pie.&nbsp;</p>\r\n\r\n<p>B&ecirc;n cạnh những đi&ecirc;̉m n&ocirc;̉i b&acirc;̣t tr&ecirc;n thì&nbsp;<strong>LG V50 gi&aacute; rẻ</strong>&nbsp;còn được trang bị th&ecirc;m m&ocirc;̣t s&ocirc;́ tính năng được nhi&ecirc;̀u người mong đợi như: Pin 4000mAh, loa Boombox, camera AI, sạc nhanh Quick Charge 3.0, Google Lens và Hi-Fi Quad DAC 32 bit.&nbsp;</p>', 0, 3, '2020-10-29 23:13:35', '2020-11-06 08:24:43'),
(10, 'Samsung Galaxy A11', 'samsung-galaxy-a11', 5990000, 'samsung-galaxy-a11.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Về thiết kế,&nbsp;<strong>Samsung Galaxy A11</strong>&nbsp;c&oacute; thiết kế hiện đại. Giống với hầu hết c&aacute;c điện thoại gi&aacute; rẻ kh&aacute;c của h&atilde;ng, m&aacute;y c&oacute; được l&agrave;m bằng nhựa. Tuy vậy, c&aacute;c cạnh m&aacute;y được l&agrave;m mỏng đ&aacute;ng kể. Ở mặt lưng, c&aacute;c cạnh cũng được l&agrave;m cong để mang đến cảm gi&aacute;c mềm mại hơn khi sử dụng. Cảm biến v&acirc;n tay cũng được đặt ở mặt lưng để bảo mật, g&oacute;p phần bảo vệ điện thoại được tốt hơn.</p>\r\n\r\n<p>D&ugrave; c&oacute; gi&aacute; rẻ nhưng Galaxy A11 vẫn sở hữu thiết kế Infinity-O thời thượng. M&agrave;n h&igrave;nh c&oacute; thiết kế dạng đục lỗ để chứa camera selfie.&nbsp;Với Galaxy A11, Samsung kh&ocirc;ng trang bị cho m&aacute;y m&agrave;n h&igrave;nh AMOLED thường thấy, thay v&agrave;o đ&oacute;, &ocirc;ng vua c&ocirc;ng nghệ H&agrave;n Quốc trang bị cho A11 m&agrave;n h&igrave;nh PLS TFT với độ ph&acirc;n giải HD+. M&agrave;n h&igrave;nh n&agrave;y kh&aacute; rộng, l&ecirc;n đến 6.4 inch, th&iacute;ch hợp để sử dụng khi xem phim, lướt web thoải m&aacute;i.</p>\r\n\r\n<p>Với khả năng chụp ảnh, Galaxy A11 được trang bị 3 camera sau, gồm c&aacute;c cảm biến 13MP + 5MP + 2MP. Ở mặt trước, m&aacute;y c&oacute; camera selfie với độ ph&acirc;n giải 8MP để người d&ugrave;ng chụp ảnh tự sướng v&agrave; gọi video.</p>\r\n\r\n<p>Cung cấp sức mạnh cho&nbsp;<strong>Galaxy A11</strong>&nbsp;l&agrave; con chip Snapdragon 450 8 nh&acirc;n tốc độ 1.8 GHz. Đi k&egrave;m l&agrave; RAM 3GB v&agrave; 32GB bộ nhớ trong. Ngo&agrave;i ra, người d&ugrave;ng c&oacute; thể mở rộng bằng thẻ nhớ MicroSD l&ecirc;n đến 512GB, cho kh&ocirc;ng gian lưu trữ thoải m&aacute;i.</p>\r\n\r\n<p>Cung cấp năng lượng cho Galaxy A11 l&agrave; vi&ecirc;n pin c&oacute; dung lượng cao, l&ecirc;n đến 4.000 mAh. Đi k&egrave;m l&agrave; sạc nhanh 15W, gi&uacute;p nạp lại đầy pin cho điện thoại nhanh. Vi&ecirc;n pin n&agrave;y đủ để sử dụng li&ecirc;n tục trong cả ng&agrave;y d&agrave;i, do đ&oacute;, người d&ugrave;ng c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m khi trải nghiệm m&aacute;y.</p>', 1, 2, '2020-10-29 23:27:37', '2020-11-06 08:31:04'),
(11, 'Samsung Galaxy note 20 Untral', 'samsung-galaxy-note-20-untral', 23000000, 'samsung-galaxy-note-20-ultra.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Galaxy Note 20 Ultra 256GB vẫn giữ nguy&ecirc;n thiết kế nam t&iacute;nh. M&aacute;y sở hữu thiết kế vu&ocirc;ng vức, sang trọng b&ecirc;n ngo&agrave;i m&aacute;y được phủ một lớp sơn mờ chống dấu v&acirc;n t&acirc;y. Điện thoại c&oacute; ba phi&ecirc;n bản m&agrave;u sắc l&agrave; Đồng &Aacute;nh Kim, Trắng Huyền B&iacute; v&agrave; Đen Huyền B&iacute;. Trong đ&oacute; m&agrave;u đen v&agrave; trắng sử dụng chất liệu k&iacute;nh b&oacute;ng bẩy. B&ecirc;n cạnh đ&oacute; m&agrave;u đồng được phủ th&ecirc;m lớp nh&aacute;m mờ.</p>\r\n\r\n<p>Mặt trước ch&uacute;ng ta sẽ c&oacute; một chiếc m&agrave;n h&igrave;nh lớn l&ecirc;n tới 6.9 inch v&agrave; phải n&oacute;i đ&acirc;y l&agrave; một m&agrave;n h&igrave;nh rất lớn đấy. Chiếc m&agrave;n h&igrave;nh tr&agrave;n viền của Note 20 Ultra c&oacute; độ ph&acirc;n giải QHD+ (3088 x 1440 px) v&agrave; sử dụng c&ocirc;ng nghệ Dynamic AMOLED 2x cho độ s&aacute;ng tăng th&ecirc;m 25%.&nbsp;M&agrave;n h&igrave;nh của m&aacute;y được bảo vệ bởi k&iacute;nh cường lực Corning Gorilla Glass 7.</p>\r\n\r\n<p>Samsung Galaxy Note 20 Ultra 256GB sẽ c&oacute;&nbsp;chung con chip Exynos 990 với Note 20. Phi&ecirc;n bản 4G sẽ c&oacute; RAM 8 GB, t&ugrave;y chọn ROM 256 GB hoặc 512 GB.</p>\r\n\r\n<p>Với camera ch&iacute;nh l&ecirc;n đến 108MP hứa hẹn sẽ mang đến cho người d&ugrave;ng những h&igrave;nh ảnh chất lượng tốt, sắc n&eacute;t. Ngo&agrave;i ra, camera của m&aacute;y c&ograve;n hỗ trợ zoom quang 50x cho chất lượng ảnh ra tốt hơn so với thế hệ trước.</p>\r\n\r\n<p>Galaxy Note 20 Ultra 256GB được trang bị vi&ecirc;n pin 5000mAh. Điện thoại được trang bị c&ocirc;ng nghệ sạc nhanh 45W, gi&uacute;p tiết kiệm được thời gian sạc tối đa cho người d&ugrave;ng. Với nhu cầu th&ocirc;ng thường như lướt web, xem phim, mạng x&atilde; hội th&igrave; m&aacute;y c&oacute; thể trụ được l&ecirc;n đến 2 ng&agrave;y cho một lần sạc.</p>', 1, 2, '2020-10-29 23:30:01', '2020-11-06 08:32:48'),
(12, 'Samsung Galaxy S10', 'samsung-galaxy-s10', 6900000, 'samsung-galaxy-s10.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p><strong>Samsung Galaxy S10 5G</strong>&nbsp;vẫn trung th&agrave;nh với c&aacute;c chất liệu quen thuộc như phần khung kim loại.&nbsp;M&aacute;y c&oacute; m&agrave;n h&igrave;nh cũng pin lớn hơn cả S10 Plus v&agrave; sẽ tạm thời được Verizon Wireless ph&acirc;n phối độc quyền.</p>\r\n\r\n<p><strong>Galaxy S10 5G</strong>&nbsp;c&oacute; thiết kế đột ph&aacute; hơn nhiều so với c&aacute;c thế hệ trước. Kh&ocirc;ng gian hiển thị được mở rộng tối đa với thiết kế tr&agrave;n viền bao phủ to&agrave;n bộ mặt trước. M&agrave;n h&igrave;nh được l&agrave;m cong nhẹ về hai ph&iacute;a nhưng vẫn nối liền ph&iacute;a sau cho cảm gi&aacute;c sử dụng tốt hơn. Lần đầu ti&ecirc;n, c&ocirc;ng nghệ v&acirc;n tay si&ecirc;u &acirc;m xuất hiện tr&ecirc;n thiết bị Samsung.</p>\r\n\r\n<p>Nhờ thiết kế m&agrave;n h&igrave;nh Infinity-O mới, Galaxy S10 5G gần như kh&ocirc;ng bị b&oacute; buộc bởi cạnh viền 4 ph&iacute;a. D&ugrave; c&oacute; k&iacute;ch thước kh&aacute; lớn nhưng m&aacute;y vẫn nằm gọn trong l&ograve;ng b&agrave;n tay. M&aacute;y c&oacute; tổng cộng 6 camera: 2 camera selfie được đặt gọn trong nốt ruồi. Galaxy S10 5G cũng l&agrave; thiết bị đầu ti&ecirc;n được trang bị tận 4 camera ch&iacute;nh ở mặt lưng.</p>\r\n\r\n<p>Galaxy S10 5G&nbsp;được ưu &aacute;i trang bị m&agrave;n h&igrave;nh k&iacute;ch thước kh&aacute; lớn l&ecirc;n tới 6,7 inch. Ngo&agrave;i ra, Samsung c&ograve;n sử dụng thiết kế m&agrave;n h&igrave;nh mới: Infinity-O. Với thiết kế n&agrave;y, nội dung hiển thị rộng hơn bao giờ hết, gần như kh&ocirc;ng bị giới hạn bởi c&aacute;c viền rộng xung quanh.</p>\r\n\r\n<p>Samsung Galaxy S10 5G chỉ duy nhất một phi&ecirc;n bản với bộ nhớ trong 256GB + 8GB RAM. Rất tiếc, kh&aacute;c với c&aacute;c mẫu S10 c&ograve;n lại, m&aacute;y kh&ocirc;ng c&oacute; khe cắm thẻ nhớ microSD để mở rộng kh&ocirc;ng gian lưu trữ.</p>\r\n\r\n<p>Phi&ecirc;n bản Galaxy S10 5G n&agrave;y được bổ sung th&ecirc;m 2 camera: camera 3D Depth ở cả mặt trước v&agrave; mặt sau sẽ gi&uacute;p n&acirc;ng cao khả năng AR v&agrave; hỗ trợ c&aacute;c t&iacute;nh năng kh&aacute;c như Video Live Focus v&agrave; Quick Measure, n&acirc;ng tổng số camera l&ecirc;n đến 6 (4 sau, 2 trước).</p>', 0, 1, '2020-10-29 23:33:19', '2020-11-06 08:34:22'),
(13, 'Samsung Galaxy Z Fold 2', 'samsung-galaxy-z-fold-2', 18000000, 'samsung-galaxy-z-fold-2.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Được trang bị tấm nền OLED với độ tương phản HDR10+ c&ugrave;ng độ ph&acirc;n giải&nbsp;2260 x 816 ở m&agrave;n h&igrave;nh phụ v&agrave;&nbsp;2208 x 1768 tại m&agrave;n h&igrave;nh ch&iacute;nh&nbsp;gi&uacute;p cho từng h&igrave;nh ảnh m&agrave; bạn xem sống động tr&ecirc;n từng chi tiết, sắc n&eacute;t tr&ecirc;n từng chuyển động của h&igrave;nh ảnh mang đến m&agrave;u sắc như thật đ&aacute;ng k&iacute;nh ngạc khiến bạn đắm ch&igrave;m như ch&iacute;nh m&igrave;nh đang được trải nghiệm trong từng khung cảnh. B&ecirc;n cạnh đ&oacute;, Galaxy Z Fold 2 5G sẽ được b&aacute;n ra với nhiều phi&ecirc;n bản m&agrave;u sắc kh&aacute;c nhau.</p>\r\n\r\n<p><strong>Samsung Z Fold 2</strong>&nbsp;được trạng bị cụm 3 camera sau, với camera ch&iacute;nh 12Mp, b&ecirc;n cạnh đ&oacute; l&agrave; camera tele với khả năng zoom quang 5x. Với độ ph&acirc;n giải camera cao cho ph&eacute;p người d&ugrave;ng chụp được những khoảnh khắc tuyệt vời nhất với độ ph&acirc;n giải cao. Camera selfie 10MP cho h&igrave;nh ảnh tự sướng chất lượng. Z&nbsp;Fold 2 ho&agrave;n to&agrave;n c&oacute; thể cho bạn khả năng chụp ảnh chuy&ecirc;n nghiệp.</p>\r\n\r\n<p>Bộ vi xử l&iacute; Snapdragon 865+ 8 nh&acirc;n gi&uacute;p cho Samsung Galaxy Z Fold 2 5G trở n&ecirc;n cực k&igrave; mạnh mẽ như một &ldquo;chiến binh&rdquo;. Mọi t&aacute;c vụ của bạn đều được xử l&iacute; v&ocirc; c&ugrave;ng th&ocirc;ng minh với tốc độ cực k&igrave; nhanh ch&oacute;ng, mang lại cho bạn trải nghiệm sử dụng v&ocirc; c&ugrave;ng thoải m&aacute;i. Bạn sẽ ho&agrave;n to&agrave;n h&agrave;i l&ograve;ng bởi mọi y&ecirc;u cầu của bạn đều được thực hiện trơn tru v&agrave; kh&ocirc;ng mất thời gian chờ đợi.</p>\r\n\r\n<p>Một trong những điểm đ&aacute;ng ch&uacute; &yacute; v&agrave; đ&aacute;ng gi&aacute; của&nbsp;<strong>Galaxy Z Fold 2</strong>&nbsp;ch&iacute;nh l&agrave; dung lượng pin l&ecirc;n đến 4500 mAh cho thời gian sử dụng d&agrave;i v&agrave; bền bỉ cả một ng&agrave;y d&agrave;i.</p>\r\n\r\n<p>Kh&ocirc;ng chỉ vậy, Samsung Z Fold 2 c&ograve;n c&oacute; khả năng sạc nhanh, sạc kh&ocirc;ng d&acirc;y v&agrave; c&ograve;n c&oacute; thể sử dụng như một thiết bị cung cấp năng lượng cho thiết bị kh&aacute;c. Đ&oacute; ch&iacute;nh l&agrave; một trong những đặc điểm khiến cho chiếc điện thoại m&agrave;n h&igrave;nh gập n&agrave;y c&oacute; gi&aacute; trị đẳng cấp đến như vậy.</p>', 1, 2, '2020-10-29 23:37:42', '2020-11-06 08:35:52'),
(14, 'iPhone 11 Pro max', 'iphone-11-pro-max', 24000000, 'iphone-11-pro-max-512gb-gold.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p><strong>iPhone 11 Pro Max 64GB ch&iacute;nh h&atilde;ng</strong>&nbsp;c&oacute; vẻ ngo&agrave;i sang trọng, hiện đại nhưng kh&ocirc;ng k&eacute;m phần bắt mắt. Thiết kế tai thỏ vẫn tiếp tục được Apple sử dụng cho m&agrave;n h&igrave;nh 6,5 inch của m&igrave;nh. C&ocirc;ng thức quen thuộc với khung viền th&eacute;p kh&ocirc;ng gỉ bo cong 4 g&oacute;c kết hợp c&ugrave;ng mặt k&iacute;nh trước v&agrave; sau.</p>\r\n\r\n<p>Mặt sau l&agrave; nơi c&oacute; sự thay đổi lớn về thiết kế của m&aacute;y. Cụm camera ch&iacute;nh xếp dọc được thay thế bằng 3 camera đặt vu&ocirc;ng vức với nhau. C&oacute; thể n&oacute;i c&aacute;ch sắp xếp độc đ&aacute;o n&agrave;y gi&uacute;p điện thoại nổi bật hơn giữa thị trường smartphone b&ugrave;ng nổ gần đ&acirc;y. Apple vẫn trang bị cho điện thoại chuẩn chống nước IP68 mới nhất để người d&ugrave;ng c&oacute; thể thỏa m&aacute;i sử dụng trong bất kỳ m&ocirc;i trường n&agrave;o.</p>\r\n\r\n<p>Apple chăm ch&uacute;t về khả năng hiển thị tr&ecirc;n điện thoại hơn khi đem nhiều c&ocirc;ng nghệ, n&acirc;ng cấp phần cứng tr&ecirc;n điện thoại. Theo đ&oacute;, iPhone 11 Pro Max sở hữu tấm m&agrave;n OLED cao cấp c&ocirc;ng nghệ Super Retina XDR. Kh&ocirc;ng chỉ gi&uacute;p điện thoại truyền tải nội dung sắc n&eacute;t, dải m&agrave;u rộng hơn m&agrave; mật độ điểm ảnh l&ecirc;n tới 458 ppi.</p>\r\n\r\n<p>Mỗi năm, Apple lu&ocirc;n giới thiệu iPhone của m&igrave;nh với sự n&acirc;ng cấp kh&ocirc;ng hề nhỏ về mặt xử l&yacute;. Năm nay,&nbsp;<strong>iPhone 11 Pro Max 64GB ch&iacute;nh h&atilde;ng</strong>&nbsp;được trang bị con chip A13 Bionic c&ugrave;ng Neutral Engine thế hệ thứ ba. Hiệu năng của chip c&ograve;n vượt xa A12 năm ngo&aacute;i với điểm số Antutu v&agrave;o khoảng 462098 điểm.</p>\r\n\r\n<p>B&ecirc;n cạnh việc bảo mật điện thoại, người d&ugrave;ng c&oacute; thể tạo những ảnh động vui nhộn với Memoji hay Animoji. Ngo&agrave;i ra, việc quay v&agrave; chỉnh sửa video tr&ecirc;n điện thoại dễ d&agrave;ng hơn bao giờ hết với c&aacute;c t&ugrave;y chọn như quay c&ugrave;ng l&uacute;c với 4 camera hay chuyển đổi camera khi đang quay v&agrave; người d&ugrave;ng c&oacute; thể quay video Slow Motion với độ ph&acirc;n giải 4K bằng camera trước.</p>', 1, 1, '2020-10-29 23:39:06', '2020-11-06 08:50:56'),
(15, 'iPhone 12 Pro 128gb', 'iphone-12-pro-128gb', 13000000, 'iphone-12-128gb.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p><em>Trong khi sức hút đ&ecirc;́n từ b&ocirc;̣ ba iPhone 11 v&acirc;̃n chưa ngu&ocirc;̣i đi, hãng Apple vừa qua đã cho ra mắt &ldquo;si&ecirc;u ph&acirc;̉m&rdquo; mới nh&acirc;́t 2020 mang t&ecirc;n&nbsp;<strong>iPhone 12</strong></em><em>. Với những n&acirc;ng c&acirc;́p đáng k&ecirc;̉ cho màn hình và hi&ecirc;̣u năng, đ&acirc;y sẽ là smartphone thu&ocirc;̣c ph&acirc;n khúc cao c&acirc;́p đáng chú ý trong năm nay.</em></p>\r\n\r\n<p>Apple đã quy&ecirc;́t định giữ nguy&ecirc;n thi&ecirc;́t k&ecirc;́ notch &ldquo;tai thỏ&rdquo; quen thu&ocirc;̣c cho màn hình iPhone 12, nhưng ph&acirc;̀n notch đã được tinh giản nhỏ gọn lại nhằm tạo th&ecirc;m tỷ l&ecirc;̣ hi&ecirc;̉n thị hình ảnh tr&ecirc;n màn hình. V&ecirc;̀ kích thước, màn hình&nbsp;của m&aacute;y đ&ocirc;̣ ph&acirc;n giải&nbsp;2532x&nbsp;1170pixels v&agrave; c&oacute; k&iacute;ch thước 6.1 inch, nhỏ hơn so với iPhone 12 Pro Max (6.7 inch).</p>\r\n\r\n<p>Đặc bi&ecirc;̣t, Apple đã thay th&ecirc;́ c&ocirc;ng ngh&ecirc;̣ LCD bằng c&ocirc;ng ngh&ecirc;̣ Super Retina OLED. Cùng với tính năng Dolby Vision và True-tone, iPhone 12 sẽ hi&ecirc;̉n thị hình ảnh sắc nét, mượt mà &amp; có màu rực rỡ hơn các đời iPhone trước.</p>\r\n\r\n<p>iPhone 12 được trang bị cụm camera hai &ocirc;́ng kính ở mặt sau, với hai &ocirc;́ng kính có cùng đ&ocirc;̣ ph&acirc;n giải 12MP. Cụm camera sau kh&ocirc;ng chỉ có tính năng ch&ocirc;́ng rung OIS, chụp góc si&ecirc;u r&ocirc;̣ng và panorama, mà còn h&ocirc;̃ trợ quay video với định dạng l&ecirc;n đ&ecirc;́n 4K 60fps hoặc 1080p 240fps cùng &acirc;m thanh stereo s&ocirc;́ng đ&ocirc;̣ng.</p>\r\n\r\n<p>Ở ph&acirc;̀n notch mặt trước của&nbsp;điện thoại&nbsp;iPhone 12 còn có camera selfie đ&ocirc;̣ ph&acirc;n giải 12MP. Tương tự như iPhone 11, camera selfie của iPhone có th&ecirc;m tính năng gyro-EIS và cảm bi&ecirc;́n đo chi&ecirc;̀u s&acirc;u sinh trắc học SL 3D hi&ecirc;̣n đại, mang đ&ecirc;́n ch&acirc;́t lượng hình ảnh rõ nét &amp; hoàn mỹ.</p>\r\n\r\n<p>Điện thoại iPhone 12 cũng được n&acirc;ng c&acirc;́p v&ecirc;̀ dung lượng pin so với người ti&ecirc;̀n nhi&ecirc;̣m iPhone 11. Cụ thể, m&aacute;y sẽ mang đ&ecirc;́n cho người dùng hơn 17 giờ xem video, hơn và l&ecirc;n đ&ecirc;́n 65 giờ nghe nhạc li&ecirc;n tục.</p>', 0, 1, '2020-10-29 23:44:45', '2020-11-06 08:52:16'),
(16, 'Vivo IQOO 3', 'vivo-iqoo-3', 7990000, 'vivo-iqoo-3-5g-3.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>iQOO 3 sở hữu cấu h&igrave;nh cao cấp h&agrave;ng đầu 2020, bao gồm vi xử l&yacute;&nbsp;<strong>Snapdragon 865</strong>, đi k&egrave;m dung lượng<strong>&nbsp;RAM</strong>&nbsp;6<strong>&nbsp;GB</strong>&nbsp;v&agrave; bộ nhớ trong 128 GB, hứa hẹn một hiệu năng vượt trội.</p>\r\n\r\n<p>L&agrave; một chiếc gaming phone, b&ecirc;n cạnh cấu h&igrave;nh &ldquo;khủng long&rdquo;,&nbsp; iQOO 3 c&ograve;n được trang bị nhiều t&iacute;nh năng, chế độ tiện lợi, đảm bảo cung cấp trải nghiệm chơi game mượt m&agrave;, chuy&ecirc;n nghiệp nhất.</p>\r\n\r\n<p>Sức mạnh của&nbsp; iQOO 3 c&ograve;n được tối ưu hơn nữa nhờ hệ thống thống l&agrave;m m&aacute;t ba chiều to&agrave;n diện, gi&uacute;p tản nhiệt tốt hơn từ đ&oacute; đảm bảo hiệu suất cao nhất cho m&aacute;y.</p>\r\n\r\n<p>Kh&ocirc;ng nằm ngo&agrave;i kỷ nguy&ecirc;n 5G, iQOO 3 đem đến c&ocirc;ng nghệ 5G k&eacute;p Netcom cho tốc độ&nbsp;<strong>tải xuống</strong>&nbsp;l&ecirc;n tới&nbsp;<strong>3.3 Gbps</strong>, hỗ trợ đa chế độ với v&ugrave;ng phủ s&oacute;ng rộng v&agrave; t&iacute;n hiệu ổn định hơn.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, iQOO 3 c&ograve;n hỗ trợ nhiều chuẩn kết nối mới, điển h&igrave;nh l&agrave; WiFi 6 v&agrave; Bluetooth 5.1.</p>\r\n\r\n<p>M&agrave;n h&igrave;nh n&agrave;y hỗ trợ&nbsp;<strong>c&ocirc;ng nghệ HDR10+</strong>&nbsp;c&ugrave;ng nhiều th&ocirc;ng số nổi bật như độ s&aacute;ng&nbsp;<strong>1200 nits</strong>, độ tương phản 2.000.000:1, cảm biến v&acirc;n tay dưới m&agrave;n h&igrave;nh,...</p>\r\n\r\n<p>Đặc biệt, tốc độ lấy mẫu cảm ứng 180 Hz đảm bảo độ nhạy tuyệt đối cho m&agrave;n h&igrave;nh, mọi thao t&aacute;c chạm, vuốt của bạn sẽ được phản hồi ngay lập tức, gần như kh&ocirc;ng c&oacute; độ trễ.</p>\r\n\r\n<p>Một ưu điểm kh&ocirc;ng thể kh&ocirc;ng nhắc đến của iQOO 3 l&agrave; c&ocirc;ng nghệ&nbsp;<a href=\"https://www.thegioididong.com/dtdd?f=sac-pin-nhanh\" target=\"_blank\">sạc nhanh</a>&nbsp;Vivo Super Flash Charge 2.0 ti&ecirc;n tiến c&oacute; c&ocirc;ng suất sạc l&ecirc;n đến&nbsp;<strong>55 W</strong>.</p>\r\n\r\n<p>&nbsp;</p>', 0, 12, '2020-10-29 23:46:28', '2020-11-06 08:53:48'),
(17, 'Vivo Y12s', 'vivo-y12s', 6000000, 'vivo-y12s.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Vivo Y12s được thiết kế theo phong c&aacute;ch hiện đại, nguy&ecirc;n khối, mặt lưng của m&aacute;y được bo cong 2.5D, sắc m&agrave;u gradient thời thượng, kết hợp với th&acirc;n m&aacute;y mỏng nhẹ tạo cảm gi&aacute;c thoải m&aacute;i v&agrave; cao cấp khi cầm tr&ecirc;n tay.</p>\r\n\r\n<p>Trọng lượng m&aacute;y nhẹ (chỉ khoảng 191 g) c&ugrave;ng với đ&oacute; l&agrave; khả năng chống b&aacute;m mồ h&ocirc;i v&agrave; dấu v&acirc;n tay tốt.</p>\r\n\r\n<p>M&aacute;y được thiết kế với&nbsp;<a href=\"https://www.thegioididong.com/dtdd-bao-mat-van-tay\" target=\"_blank\">cảm biến v&acirc;n tay</a>&nbsp;t&iacute;ch hợp n&uacute;t nguồn đặt ở cạnh b&ecirc;n, tối ưu h&oacute;a cho thao t&aacute;c mở kh&oacute;a với tốc độ chỉ 0.22 gi&acirc;y.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, Vivo Y12s cũng được trang bị nhận diện khu&ocirc;n mặt mang đến cho người d&ugrave;ng một t&ugrave;y chọn kh&aacute;c để mở kh&oacute;a điện thoại trong t&iacute;ch tắc.</p>\r\n\r\n<p>Ngo&agrave;i ra, m&agrave;n h&igrave;nh tr&ecirc;n Vivo Y12s c&ograve;n được t&iacute;ch hợp c&ocirc;ng nghệ In-cell mới nhất. Trong nhiều điều kiện sử dụng kh&aacute;c nhau như chơi game hay xem video th&igrave; m&agrave;u sắc hiển thị đều rực rỡ v&agrave; chi tiết, nhưng vẫn đảm bảo giảm lượng &aacute;nh s&aacute;ng xanh c&oacute; hại v&agrave; bảo vệ thị lực của bạn.</p>\r\n\r\n<p>Vivo Y12s được trang bị bộ đ&ocirc;i camera c&oacute; độ ph&acirc;n giải lần lượt l&agrave; 13 MP v&agrave; 2 MP t&iacute;ch hợp nhiều t&iacute;nh năng chụp ảnh, l&agrave;m đẹp th&ocirc;ng minh bao gồm nhận diện khu&ocirc;n mặt, tự động lấy n&eacute;t, gi&uacute;p người d&ugrave;ng c&oacute; thể ghi lại những bức ảnh th&uacute; vị hằng ng&agrave;y một c&aacute;ch dễ d&agrave;ng.&nbsp;</p>\r\n\r\n<p>Vivo Y12s mang trong m&igrave;nh sức mạnh của con chip MediaTek Helio P35 với tốc độ xử l&yacute; l&ecirc;n đến 2.3 GHz, mượt m&agrave; giải tr&iacute;, bung x&otilde;a với nhiều t&aacute;c vụ.</p>\r\n\r\n<p>Vivo Y12s trang bị dung lượng pin khủng 5000mAh đ&aacute;p ứng được những nhu cầu sử dụng hằng ng&agrave;y như học tập, giải tr&iacute;, chơi game...</p>', 1, 12, '2020-10-29 23:48:39', '2020-11-06 08:55:11'),
(18, 'Vivo Y20S Xanh', 'vivo-y20s-xanh', 11000000, 'vivo-y20s-xanh.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Điểm nhấn trong thiết kế của Vivo Y20s đến từ hiệu ứng chuyển s&aacute;ng đồng t&acirc;m ấn tượng ph&aacute;t ra từ cụm camera sau, gi&uacute;p cho Vivo Y20s trở th&agrave;nh một m&oacute;n trang sức cao cấp, tỏa s&aacute;ng theo từng chuyển động của bạn.</p>\r\n\r\n<p>C&aacute;c cạnh viền được bo cong kết hợp c&ugrave;ng m&agrave;n h&igrave;nh nổi 2.5D cho cảm gi&aacute;c cầm nắm, sử dụng thoải m&aacute;i. C&aacute;c chi tiết c&oacute; độ ho&agrave;n thiện cao, th&acirc;n m&aacute;y mỏng gọn cứng c&aacute;p tạo n&ecirc;n sự cao cấp tr&ecirc;n một thiết bị tầm trung.</p>\r\n\r\n<p>Cảm biến v&acirc;n tay&nbsp;cũng được Vivo kh&eacute;o l&eacute;o dời ra cạnh b&ecirc;n, điều n&agrave;y vừa gi&uacute;p cho thao t&aacute;c mở kh&oacute;a dễ d&agrave;ng, thuận tiện hơn vừa tăng th&ecirc;m t&iacute;nh thẩm mỹ cho thiết kế so với c&aacute;ch đặt cảm biến v&acirc;n tay ở mặt lưng như trước kia.</p>\r\n\r\n<p>M&agrave;n h&igrave;nh tr&agrave;n viền&nbsp;của Vivo Y20s c&oacute; r&atilde;nh giọt nước v&agrave; c&aacute;c cạnh viền si&ecirc;u nhỏ, k&iacute;ch thước 6.51 inch mang đến kh&ocirc;ng gian rộng r&atilde;i cho ph&eacute;p hiển thị đầy đủ th&ocirc;ng tin, tỷ lệ khung h&igrave;nh 20:9 tối ưu h&oacute;a trải nghiệm của bạn từ xem phim, đọc b&aacute;o, chơi game đều sẽ v&ocirc; c&ugrave;ng th&iacute;ch th&uacute;.</p>\r\n\r\n<p>Vivo Y20s trang bị vi xử l&yacute; Snapdragon 460 với 8 nh&acirc;n xung nhịp l&ecirc;n đến 1.8 GHz đ&aacute;p ứng mọi nhu cầu giải tr&iacute; h&agrave;ng ng&agrave;y của bạn một c&aacute;ch mượt m&agrave;, đồng thời cũng đủ sức gi&uacute;p điện thoại chơi gane&nbsp;mượt ở những tựa game phổ biến hiện nay. Khi đo bằng ứng dụng kiểm tra hiệu năng Antutu th&igrave; Vivo Y20s đạt được 153.444 điểm.</p>', 0, 12, '2020-10-29 23:50:45', '2020-11-06 08:57:08'),
(19, 'Vsmart Aris Pro', 'vsmart-aris-pro', 18000000, 'vsmart-aris-pro.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p><strong>Vsmart Aris Pro&nbsp;5G</strong>&nbsp;c&oacute; thiết kế tổng thể kh&ocirc;ng c&oacute; nhiều thay đổi so với Vsmart Aris. Điện thoại sử dụng khung kim loại nguy&ecirc;n khối, mặt lưng của m&aacute;y được bo cong nhẹ nh&agrave;ng, logo Vsmart nổi bật. Cảm biến v&acirc;n tay được t&iacute;ch hợp v&agrave;o n&uacute;t nguồn. Thiết kế n&agrave;y gi&uacute;p việc mở kh&oacute;a m&aacute;y được thuận tiện v&agrave; nhanh ch&oacute;ng hơn.</p>\r\n\r\n<p>Vsmart Aris Pro&nbsp; sẽ được trang bị chip Snapdragon 765G k&egrave;m hỗ trợ mạng 5G. Aris 5G Pro sẽ là m&ocirc;̣t trong những chi&ecirc;́c smartphone đ&acirc;̀u ti&ecirc;n của Vi&ecirc;̣t Nam có khả năng k&ecirc;́t n&ocirc;́i mạng 5G ti&ecirc;n ti&ecirc;́n.</p>\r\n\r\n<p>Được trang bị h&ecirc;̣ th&ocirc;́ng AI Qualcomm th&ecirc;́ h&ecirc;̣ 5, Snapdragon 765G sẽ t&ocirc;́i ưu hóa t&ocirc;́c đ&ocirc;̣ k&ecirc;́t n&ocirc;́i 5G, giúp người dùng lu&ocirc;n k&ecirc;́t n&ocirc;́i internet nhanh chóng cho mọi tác vụ. Ngoài ra, k&ecirc;́t hợp với chip GPU Adreno 620 và Qualcomm Kryo 475, hi&ecirc;̣u năng của Vsmart Aris 5G Pro sẽ mang đ&ecirc;́n trải nghi&ecirc;̣m gaming và đa nhi&ecirc;̣m tuy&ecirc;̣t đỉnh.</p>\r\n\r\n<p>Kết hợp với vi xử l&yacute; n&agrave;y l&agrave; bộ nhớ RAM 8GB và ROM t&ocirc;́i thi&ecirc;̉u là 128 GB. Có khả năng Vsmart sẽ tung ra nhi&ecirc;̀u phi&ecirc;n bản với b&ocirc;̣ nhớ ROM khác nhau nhằm đáp ứng nhu c&acirc;̀u của người dùng. Điện thoại sẽ chạy tr&ecirc;n h&ecirc;̣ đi&ecirc;̀u hành VOS mới nh&acirc;́t tr&ecirc;n n&ecirc;̀n tảng Android 10.</p>\r\n\r\n<p><strong>Điện thoại&nbsp;Vsmart Aris Pro&nbsp;5G</strong>&nbsp;được trang bị t&acirc;̣n ba camera sau. Hệ thống camera sau bao gồm camera chính đ&ocirc;̣ ph&acirc;n giải 48 MP, camera phụ 8 MP h&ocirc;̃ trợ chụp góc r&ocirc;̣ng, và camera phụ 2 MP h&ocirc;̃ trợ chụp xóa ph&ocirc;ng. Ch&ecirc;́ đ&ocirc;̣ chụp ảnh góc si&ecirc;u r&ocirc;̣ng và chụp chuy&ecirc;n nghi&ecirc;̣p (cho phép tùy chỉnh th&ocirc;ng s&ocirc;́ máy ảnh) cũng được Vsmart tích hợp tr&ecirc;n camera nhằm cho phép người dùng t&ocirc;́i ưu ch&acirc;́t lượng ảnh chụp.</p>\r\n\r\n<p>Vsmart Aris Pro&nbsp;5G&nbsp;được trang bị vi&ecirc;n pin dung lượng 5000mAh. Sở dĩ Aris 5G Pro có dung lượng pin lớn hơn là vì Vsmart mu&ocirc;́n chi&ecirc;́c smartphone này có th&ecirc;̉ vừa v&acirc;̣n hành mạng 5G và màn hình lớn, vừa duy trì thời lượng pin ngày dài cho người dùng xem phim, làm vi&ecirc;̣c và giải trí hi&ecirc;̣u quả. B&ecirc;n cạnh đ&oacute; m&aacute;y cũng được trang bị c&ocirc;ng ngh&ecirc;̣ sạc nhanh cho thời lượng sạc pin nhanh hơn.</p>', 1, 14, '2020-10-29 23:51:22', '2020-11-06 08:58:06'),
(20, 'Vsmart Joy 4', 'vsmart-joy-4', 5480000, 'vsmart-joy-4.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p><strong>Vsmart Joy 4</strong>&nbsp;sở hữu thiết kế trẻ trung. Mặt lưng v&agrave; khung viền của m&aacute;y được l&agrave;m bằng chất liệu nhựa mang đến một vẻ ngo&agrave;i cực kỳ bắt mắt.&nbsp;</p>\r\n\r\n<p>Ở mặt lưng, Vsmart Joy 4 cũng được trang bị cụm ba camera sau được xếp theo chiều dọc. B&ecirc;n dưới l&agrave; đ&egrave;n flash LED. Ở b&ecirc;n cạnh l&agrave; cảm biến v&acirc;n tay để bảo mật. Dưới cảm biến l&agrave; logo nhận diện thương hiệu, dưới c&ugrave;ng l&agrave; logo Vsmart.</p>\r\n\r\n<p>Trang bị cho&nbsp;<strong>điện thoại&nbsp;Vsmart Joy 4</strong>&nbsp;l&agrave; m&agrave;n h&igrave;nh 6.67 inch với tấm nền IPS LCD. Độ ph&acirc;n giải m&agrave;n h&igrave;nh ở mức HD+. M&agrave;n h&igrave;nh của m&aacute;y sử dụng thiết kế giọt nước hiện đại, k&egrave;m 1 chiếc m&agrave;n h&igrave;nh tr&agrave;n viền cho trải nghiệm lớn hơn. Với m&agrave;n h&igrave;nh n&agrave;y h&igrave;nh ảnh hiển thị tr&ecirc;n m&aacute;y sẽ mang lại chi tiết v&ocirc; c&ugrave;ng sắc n&eacute;t.&nbsp;</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, c&ocirc;ng nghệ m&agrave;n h&igrave;nh IPS của m&aacute;y sẽ cho g&oacute;c nh&igrave;n đa điểm. Ngo&agrave;i ra người d&ugrave;ng c&oacute; thể nh&igrave;n được m&agrave;n h&igrave;nh thoải m&aacute;i khi sử dụng điện thoại giữa trời nắng.</p>\r\n\r\n<p><strong>Vsmart Joy 4</strong>&nbsp;được trang bị con chip Adreno 610. GPU n&agrave;y tập trung cho khả năng chơi game của m&aacute;y, th&ecirc;m t&iacute;nh ch&acirc;n thực cao khi chơi game. Với vi xử l&yacute; n&agrave;y cho khả năng xung nhịp cao xử l&yacute; mọi t&aacute;c vụ nhanh ch&oacute;ng.</p>\r\n\r\n<p>Vsmart Joy 4 được trang bị hệ thống ba camera sau. Cụm camera sau bao gồm: camera ch&iacute;nh độ ph&acirc;n giải l&ecirc;n đến 48MP, camera phụ g&oacute;c rộng 8MP v&agrave; một ống k&iacute;nh macro độ ph&acirc;n giải 2MP.</p>\r\n\r\n<p><strong>Vsmart Joy 4</strong>&nbsp;được trang bị vi&ecirc;n pin 5000mAh. Với vi&ecirc;n pin n&agrave;y người d&ugrave;ng c&oacute; thể thoải m&aacute;i sử dụng suốt cả một ng&agrave;y d&agrave;i m&agrave; kh&ocirc;ng lo hết pin.</p>', 0, 14, '2020-10-29 23:56:29', '2020-11-06 09:02:05'),
(21, 'Vsmart Live 4', 'vsmart-live-4', 7860000, 'vsmart-live-4.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p><strong>Vsmart Live 4</strong>&nbsp;sở hữu thiết kế thời trang với m&agrave;n h&igrave;nh viền si&ecirc;u mỏng kết hợp. Điện thoại sở hữu đường bo cong mềm mại. Cạnh phải của m&aacute;y được t&iacute;ch hợp n&uacute;t nguồn lớn đi k&egrave;m cảm biến v&acirc;n tay b&ecirc;n trong.</p>\r\n\r\n<p>Ph&iacute;a tr&ecirc;n n&uacute;t nguồn l&agrave; khay chứa SIM. B&ecirc;n cạnh đ&oacute; mặt lưng của m&aacute;y được l&agrave;m nh&aacute;m chứ kh&ocirc;ng c&ograve;n b&oacute;ng bẩy như tr&ecirc;n Vsmart Live.</p>\r\n\r\n<p><strong>Vsmart Live 4</strong>&nbsp;được trang bị m&agrave;n h&igrave;nh 6,5 inch Super AMOLED cao cấp. M&agrave;n h&igrave;nh m&aacute;y c&oacute; độ ph&acirc;n giải Full HD+ sắc n&eacute;t. Vsmart Live 4 sẽ c&oacute; m&agrave;n h&igrave;nh đục lỗ chứa camera selfie đơn ở g&oacute;c tr&ecirc;n b&ecirc;n tr&aacute;i. B&ecirc;n cạnh đ&oacute;, điện thoại được ho&agrave;n thiện dạng viền mỏng, bo cong 4 g&oacute;c tuyệt đẹp.</p>\r\n\r\n<p><strong>Điện thoại Vsmart Live 4</strong>&nbsp;được trang bị hệ thống 4 camera sau. Cụm camera sau được xếp dọc th&agrave;nh một cụm h&igrave;nh chữ nhật. Hệ thống camera sau bao gồm: Camera ch&iacute;nh c&oacute; độ ph&acirc;n giải 48MP, camera hỗ trợ chụp ảnh x&oacute;a ph&ocirc;ng với độ ph&acirc;n giải 8MP, camera g&oacute;c rộng 5MP v&agrave; camera tele 2MP.</p>\r\n\r\n<p>Ở mặt trước Vsmart Live 4 được trang bị một camera selfie với độ ph&acirc;n giải l&ecirc;n tới 13 MP. Camera trước của m&aacute;y c&oacute; khả năng x&oacute;a ph&ocirc;ng, hiệu ứng l&agrave;m đẹp bằng tr&iacute; tuệ nh&acirc;n tạo v&agrave; những h&igrave;nh AR Sticker ngộ nghĩnh. Với camera trước của m&aacute;y sẽ gi&uacute;p người d&ugrave;ng chụp ảnh &ldquo;tự sướng&rdquo; v&agrave; gọi video call.</p>\r\n\r\n<p>Vsmart Live 4 được trang bị bộ vi xử l&yacute; Snapdragon 675 mạnh mẽ, đi c&ugrave;ng GPU đồ họa Adreno 612 chuy&ecirc;n xử l&yacute; 3D. Kết hợp với bộ vi xử l&yacute; n&agrave;y l&agrave; RAM 6GB, bộ nhớ trong 64GB. Với bộ vi xử l&yacute; n&agrave;y Vsmart Live kh&ocirc;ng chỉ hoạt động cực nhanh ở những t&aacute;c vụ thường nhật m&agrave; c&ograve;n l&agrave; một &ldquo;cỗ m&aacute;y chiến game&rdquo; đ&iacute;ch thực. Mọi thao t&aacute;c, y&ecirc;u cầu của bạn đều được xử l&yacute; ngay lập tức, kh&ocirc;ng cần phải chờ đợi.</p>\r\n\r\n<p>Vsmart Live 4 mang tr&ecirc;n m&igrave;nh vi&ecirc;n pin dung lượng 5000mAh. Vi&ecirc;n pin n&agrave;y c&oacute; dung lượng lớn hơn so với người tiền nhiệm đ&atilde; ra mắt trước đ&oacute; l&agrave; 4000mAh. Với dung lượng 5000mAh, Vsmart Live 4 sẽ đ&aacute;p ứng tốt nhu cầu sử dụng trong suốt cả ng&agrave;y của người d&ugrave;ng.</p>', 0, 14, '2020-10-29 23:56:51', '2020-11-06 09:03:19');
INSERT INTO `tbl_products` (`prod_id`, `prod_name`, `prod_slug`, `prod_price`, `prod_img`, `prod_warranty`, `prod_accessories`, `prod_condition`, `prod_promotion`, `prod_status`, `prod_description`, `prod_featured`, `prod_cat`, `created_at`, `updated_at`) VALUES
(22, 'Huawei Y6P Xanh', 'huawei-y6p-xanh', 9000000, 'huawei-y6p-xanh.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Mặt lưng của Huawei Y6p được thiết kế ấn tượng bằng chất liệu nhựa giả k&iacute;nh cao cấp với họa tiết c&aacute;c đường &aacute;nh s&aacute;ng cong mượt m&agrave; thay đổi dưới nhiều g&oacute;c độ kh&aacute;c nhau.</p>\r\n\r\n<p>C&aacute;c cạnh viền được bo cong nhẹ nh&agrave;ng cho cảm gi&aacute;c cầm nắm tốt, cảm biến v&acirc;n tay&nbsp;của m&aacute;y được đặt ở mặt lưng, dễ d&agrave;ng mở kh&oacute;a với tốc độ&nbsp;v&ocirc; c&ugrave;ng nhanh.</p>\r\n\r\n<p>Huawei l&agrave; h&atilde;ng điện thoại lu&ocirc;n được biết đến với camera ấn tượng, theo đ&oacute; Huawei Y6p cũng sở hữu bộ 3 camera chất lượng bao gồm camera ch&iacute;nh 13 MP, camera g&oacute;c si&ecirc;u rộng&nbsp;5 MP v&agrave; camera đo độ s&acirc;u 2 MP.</p>\r\n\r\n<p>Huawei Y6p sở hữu cho m&igrave;nh m&agrave;n h&igrave;nh giọt sương 6.3 inch chiếm đến 88.4% so với th&acirc;n m&aacute;y, đem lại nhiều kh&ocirc;ng gian hơn để hiển thị h&igrave;nh ảnh, cho trải nghiệm xem phim, chơi game,... thoải m&aacute;i, đ&atilde; mắt hơn.</p>\r\n\r\n<p>D&ugrave; chỉ được trang bị m&agrave;n h&igrave;nh độ ph&acirc;n giải HD+&nbsp;(720 x 1600 Pixels) nhưng trải nghiệm m&agrave; Huawei Y6p đem lại tốt đến bất ngờ với chất lượng h&igrave;nh ảnh sắc n&eacute;t, độ s&aacute;ng cao c&ugrave;ng c&aacute;c thao t&aacute;c được phản hồi một c&aacute;ch mượt m&agrave;.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; chiếc điện thoại tầm trung&nbsp;đầu ti&ecirc;n (t&iacute;nh đến th&aacute;ng 5/2020) được Huawei trang bị vi&ecirc;n&nbsp;<a href=\"https://www.thegioididong.com/pin\" target=\"_blank\">pin</a>&nbsp;với dung lượng lớn l&ecirc;n đến 5.000 mAh mang tới trải nghiệm sử dụng li&ecirc;n tục cho người d&ugrave;ng. B&ecirc;n cạnh đ&oacute; m&aacute;y c&ograve;n hỗ trợ t&iacute;nh năng&nbsp;si&ecirc;u tiết kiệm pin, đảm bảo m&aacute;y c&oacute; thể sử dụng được l&acirc;u hơn.</p>', 1, 5, '2020-10-29 23:57:31', '2020-11-06 09:04:39'),
(23, 'Huawei Nova I7 Pink', 'huawei-nova-i7-pink', 8700000, 'huawei-nova-7i-pink.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p><strong>Cho cuộc sống của bạn th&ecirc;m phần th&uacute; vị với 5 camera tr&ecirc;n Huawei nova 7i. Một Studio thu nhỏ nằm ngay trong t&uacute;i bạn, lu&ocirc;n tr&agrave;n đầy năng lượng để c&ugrave;ng bạn kh&aacute;m ph&aacute; thế giới.</strong></p>\r\n\r\n<p>Huawei nova 7i c&oacute; khả năng chụp ảnh chuy&ecirc;n nghiệp khi trang bị tới 4 camera sau. Bạn c&oacute; thể chụp ảnh đủ s&aacute;ng, thiếu s&aacute;ng, chụp ảnh g&oacute;c si&ecirc;u rộng, chụp x&oacute;a ph&ocirc;ng, chụp si&ecirc;u cận cảnh macro. D&ugrave; ở ho&agrave;n cảnh n&agrave;o đi nữa, nova 7i cũng cung cấp cho bạn t&iacute;nh năng chụp ảnh tối ưu nhất. Hơn nữa, sức mạnh từ bộ vi xử l&yacute; v&agrave; phần mềm th&ocirc;ng minh gi&uacute;p bạn c&oacute; thể chỉnh ảnh v&agrave; chia sẻ nhanh ch&oacute;ng. Dường như c&oacute; một studio đ&iacute;ch thực ngay trong t&uacute;i của bạn.</p>\r\n\r\n<p>Nhờ cảm biến camera ch&iacute;nh cao cấp với độ ph&acirc;n giải 48MP v&agrave; khẩu độ lớn f/1.8, Huawei nova 7i c&oacute; khả năng chụp đ&ecirc;m xuất sắc, dễ d&agrave;ng để bạn lưu giữ lại vẻ đẹp lung linh trong m&agrave;n đ&ecirc;m. Kh&ocirc;ng chỉ camera ch&iacute;nh, camera selfie với chế độ chụp đ&ecirc;m Super Night Selfie 2.0 cũng gi&uacute;p bạn c&oacute; thể tự tin chụp ảnh selfie ngay cả trong đ&ecirc;m tối, để bạn lu&ocirc;n đẹp nổi bật đậm chất c&aacute; t&iacute;nh ri&ecirc;ng.</p>\r\n\r\n<p>Ống k&iacute;nh bokeh chuy&ecirc;n dụng sẽ c&oacute; nhiệm vụ đo độ s&acirc;u trường ảnh, kết hợp c&ugrave;ng camera ch&iacute;nh v&agrave; tr&iacute; tuệ nh&acirc;n tạo AI, gi&uacute;p bạn chụp được những bức ảnh x&oacute;a ph&ocirc;ng sắc n&eacute;t, ch&iacute;nh x&aacute;c v&agrave; chuy&ecirc;n nghiệp. Để bạn lu&ocirc;n nổi bật, l&agrave; t&acirc;m điểm của mọi &aacute;nh nh&igrave;n, Huawei nova 7i thấu hiểu vẻ đẹp của bạn.</p>\r\n\r\n<p>Huawei nova 7i v&ocirc; c&ugrave;ng mạnh mẽ khi sở hữu bộ vi xử l&yacute; Kirin 810, sản xuất tr&ecirc;n tiến tr&igrave;nh 7nm cao cấp. Mọi t&aacute;c vụ đều diễn ra cực nhanh, kể cả những tựa game đồ họa cao đ&ograve;i hỏi qu&aacute; tr&igrave;nh xử l&yacute; phức tạp. Hơn nữa, nova 7i c&ograve;n trang bị tới 8GB RAM v&agrave; 128GB bộ nhớ trong, sẵn s&agrave;ng cho hoạt động đa nhiệm cũng như lưu trữ với kh&ocirc;ng gian bộ nhớ rộng lớn.</p>\r\n\r\n<p>Vi&ecirc;n pin dung lượng cao tới 4200 mAh cho ph&eacute;p bạn c&oacute; thể trải nghiệm thoải m&aacute;i trong suốt ng&agrave;y d&agrave;i m&agrave; kh&ocirc;ng lo hết pin. Tuy nhi&ecirc;n ấn tượng hơn phải kể đến c&ocirc;ng nghệ sạc nhanh Huawei SuperCharge 40W. Chỉ mất 30 ph&uacute;t để bạn sạc từ 0 l&ecirc;n 70% pin. Huawei nova 7i lu&ocirc;n tr&agrave;n đầy năng lượng để c&ugrave;ng bạn đương đầu những thữ th&aacute;ch.</p>', 1, 5, '2020-10-30 00:01:38', '2020-11-06 09:08:16'),
(24, 'Lenovo K5', 'lenovo-k5', 6000000, 'lenovo-k5.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Lenovo K5 Smartphone gi&aacute; rẻ được Lenovo tập trung nhất v&agrave;o thiết kế của sản phẩm. Sản phẩm được ho&agrave;n thiện bới 2 mặt k&iacute;nh 2.5D b&oacute;ng bẩy v&agrave; đặc biệt l&agrave; c&oacute; thể đổi m&agrave;u ở c&aacute;c g&oacute;c nh&igrave;n kh&aacute;c nhau.</p>\r\n\r\n<p>Lenovo K5 c&oacute; m&agrave;n h&igrave;nh rộng 5.72&rsquo; nhưng chỉ c&oacute; độ ph&acirc;n giả HD tỉ lệ m&agrave;n h&igrave;nh l&agrave; 18:9. PPI tr&ecirc;n m&agrave;n h&igrave;nh n&agrave;y c&oacute; được l&agrave; khoảng 288, nếu ở khoảng c&aacute;c b&igrave;nh thường sử dụng bạn sẽ kh&ocirc;ng thấy qu&aacute; l&agrave; bị rỗ tr&ecirc;n thiết bị n&agrave;y.</p>\r\n\r\n<p>Nhưng b&ugrave; lại tầm nền được sử dụng tr&ecirc;n thiết bị l&agrave; tấm nền IPS LCD đem lại m&agrave;u sắc tốt v&agrave; g&oacute;c nh&igrave;n rộng. M&agrave;u sắc tr&ecirc;n Lenovo thể hiện nổi bật, với độ tương phản cao, trải nghiệm tr&ecirc;n m&agrave;n h&igrave;nh l&agrave; kh&ocirc;ng hệ tệ ch&uacute;t n&agrave;o.</p>\r\n\r\n<p>MediaTek MT6750 được trang bị tr&ecirc;n Lenovo K5. Con chip n&agrave;y kh&aacute; quen thuộc với c&aacute;c sản phẩm điện thoại gi&aacute; rẻ bởi hiệu năng mang lại kh&aacute; tốt, đ&aacute;p ứng được mọi nhu cầu cơ bản một c&aacute;c b&igrave;nh thường. C&ograve;n về chơi game th&igrave; sản phẩm ho&agrave;n to&agrave;n vẫn chiến được tốt những game như Li&ecirc;n qu&acirc;n ở Setting trung b&igrave;nh.</p>\r\n\r\n<p>Camera ch&iacute;nh của sản phẩm l&agrave; camera k&eacute;p với khả năng xo&aacute; ph&ocirc;ng, th&ocirc;ng số camera ch&iacute;nh l&agrave; 13MP v&agrave; một camera để đo độ sau trường ảnh tạo ra nhưng bức ảnh xo&aacute; ph&ocirc;ng ảo diệu.</p>\r\n\r\n<p>Camera trước chỉ c&oacute; độ ph&acirc;n giải 2MP n&ecirc;n nếu l&agrave; một người mua điện thoại để chuy&ecirc;n Selfie th&igrave; kh&ocirc;ng n&ecirc;n lựa chọn sản phẩm n&agrave;y.</p>', 0, 6, '2020-10-30 00:02:56', '2020-11-06 09:10:17'),
(26, 'Lenovo Z6', 'lenovo-z6', 18770000, 'lenovo-z6.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Lenovo Z6&nbsp;l&agrave; một trong &iacute;t smartphone sử dụng con chip mới của Qualcomm l&agrave;&nbsp;Snapdragon 730 được sản xuất dựa tr&ecirc;n tiến tr&igrave;nh 8nm gi&uacute;p tiết kiệm điện năng đ&aacute;ng kể.</p>\r\n\r\n<p>Đặc biệt con chip n&agrave;y được tối ưu h&oacute;a cho việc chơi game n&ecirc;n chắc chắn sẽ l&agrave;m h&agrave;i l&ograve;ng c&aacute;c game thủ game mobile.</p>\r\n\r\n<p>Với con chip mạnh mẽ n&agrave;y th&igrave; việc trải nghiệm tốt c&aacute;c tựa game c&oacute; dung lượng lớn (như PUBG, Li&ecirc;n Qu&acirc;n Mobile, ZingSpeed Mobile,...) chỉ l&agrave; chuyện nhỏ.</p>\r\n\r\n<p>Lenovo Z6 c&ograve;n c&oacute; t&iacute;nh năng Game Turbo - gi&uacute;p tối ưu c&aacute;c tựa game v&agrave; cải thiện tốc độ c&aacute;c ứng dụng nhạy hơn, mượt hơn, tốt hơn.</p>\r\n\r\n<p>Ngo&agrave;i ra,&nbsp;smartphone&nbsp;được c&agrave;i sẵn giao diện ZUI 11 tr&ecirc;n nền tảng hệ điều h&agrave;nh Android 9 Pie mới mẻ v&agrave; được tối ưu hiệu quả.</p>\r\n\r\n<p>Lenovo Z6 l&agrave; chiếc điện thoại pin tr&acirc;u&nbsp;sở hữu dung lượng pin của m&aacute;y l&ecirc;n tới 4.000 mAh v&agrave; đặc biệt m&aacute;y c&ograve;n hỗ trợ sạc nhanh c&ocirc;ng suất 15W cho bạn r&uacute;t ngắn thời gian sạc pin đ&aacute;ng kể.</p>', 0, 6, '2020-10-30 00:04:07', '2020-11-06 09:11:41'),
(27, 'Nokia 53', 'nokia-53', 4000000, 'nokia-53.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Nokia 5.3 g&acirc;y ấn tượng bởi m&agrave;n h&igrave;nh cực rộng l&ecirc;n đến 6.55 inch cung cấp một kh&ocirc;ng gian hiển thị tho&aacute;ng đ&atilde;ng cho bạn thoải m&aacute;i chơi game hay xem video. Tấm nền LCD IPS, độ ph&acirc;n giải HD+, gi&uacute;p Nokia 5.3 hiển thị c&aacute;c nội dung với chi tiết mịn m&agrave;ng, m&agrave;u sắc trung thực c&ugrave;ng hiệu ứng chuyển cảnh hay xem video mượt m&agrave;.</p>\r\n\r\n<p>Model mới của Nokia&nbsp;sở hữu một thiết kế nguy&ecirc;n khối, độ ho&agrave;n thiện tinh xảo với mặt k&iacute;nh cong 2.5D c&ugrave;ng mặt lưng được gia c&ocirc;ng bằng chất liệu composite độ bền cao, chống trầy xước, giữ m&aacute;y lu&ocirc;n bền, mới qua năm th&aacute;ng.</p>\r\n\r\n<p>Thiết kế cụm camera tr&ecirc;n Nokia 5.3 theo dạng tr&ograve;n ấn tượng với t&acirc;m điểm l&agrave; đ&egrave;n flash v&agrave; hệ 4 camera được xếp xung quanh, gi&uacute;p m&aacute;y trở n&ecirc;n nổi bật hơn hẳn, kh&ocirc;ng lẫn v&agrave;o những smartphone kh&aacute;c tr&ecirc;n thị trường.</p>\r\n\r\n<p>Nokia 5.3 được trang bị dung lượng pin l&ecirc;n đến&nbsp;<strong>4.000 mAh</strong>, với nhu cầu sử dụng ở mức vừa phải, m&aacute;y sẽ lu&ocirc;n đủ pin để đồng h&agrave;nh c&ugrave;ng bạn đến tận ng&agrave;y h&ocirc;m sau.</p>', 0, 8, '2020-10-30 00:04:54', '2020-11-06 09:13:31'),
(28, 'Nokia 83', 'nokia-83', 9990000, 'nokia-83.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Nokia 8.3 được trang bị con chip Snapdragon 765G t&iacute;ch hợp modem 5G hỗ trợ đa băng tần, gi&uacute;p Nokia 8.3 trở th&agrave;nh thiết bị đầu ti&ecirc;n c&oacute; khả năng kết nối 5G tr&ecirc;n to&agrave;n cầu (theo Nokia).</p>\r\n\r\n<p>ề hiệu năng, Snapdragon 765G tr&ecirc;n Nokia 8.3 gi&uacute;p điện thoại chơi game&nbsp;một c&aacute;ch mượt m&agrave; với xung nhịp l&ecirc;n tới 2.36 GHz, kết hợp với dung lượng RAM 8 GB, đảm bảo đ&aacute;p ứng nhanh nhạy mọi thao t&aacute;c sử dụng thường ng&agrave;y cũng như&nbsp;đa nhiệm một c&aacute;ch&nbsp;ổn&nbsp;định.</p>\r\n\r\n<p>Về phần mềm, Nokia 8.3 sở hữu nền tảng Android 10 phi&ecirc;n bản Android One, được tinh chỉnh, tối ưu đơn giản c&ugrave;ng những bản cập nhật nhanh nhất từ Google, hỗ trợ n&acirc;ng cấp l&acirc;u d&agrave;i trong &iacute;t nhất 2 năm.</p>\r\n\r\n<p>Bằng phần cứng camera chất lượng, kết hợp với nhiều chế độ chụp chuy&ecirc;n nghiệp, mọi khoảnh khắc thường ng&agrave;y sẽ được bạn ghi lại nhanh ch&oacute;ng v&agrave; r&otilde; n&eacute;t với Nokia 8.3.</p>\r\n\r\n<p>Ở điều kiện &aacute;nh s&aacute;ng ban ng&agrave;y, Nokia 8.3 cho ra những bức ảnh c&oacute; độ chi tiết cao, m&agrave;u sắc ch&iacute;nh x&aacute;c. Trong khi ban đ&ecirc;m, camera ch&iacute;nh sẽ hỗ trợ chụp đ&ecirc;m ấn tượng đảm bảo bức ảnh thiếu s&aacute;ng được giảm nhiễu, cho độ ổn định, sắc n&eacute;t ấn tượng.</p>\r\n\r\n<p>Nokia 8.3 sở hữu m&agrave;n h&igrave;nh PureDisplay k&iacute;ch thước lớn, l&ecirc;n tới 6.81 inch Full HD+, hỗ trợ nội dung HDR sống động, c&ugrave;ng thiết kế nốt ruồi chứa camera selfie hiện đại.</p>\r\n\r\n<p>Nokia 8.3 l&agrave; chiếc điện thoại pin tr&acirc;u sở hữu vi&ecirc;n pin 4.500 mAh v&agrave; hỗ trợ sạc nhanh 18W th&ocirc;ng qua cổng USB Type - C đảm bảo thời gian sử dụng m&aacute;y d&agrave;i l&acirc;u, đ&aacute;p ứng nhu cầu c&ocirc;ng việc, giải tr&iacute; trong ng&agrave;y.</p>', 1, 8, '2020-10-30 00:05:38', '2020-11-06 09:16:48'),
(29, 'Realme 6 Pro', 'realme-6-pro', 8990000, 'realme-6-pro-600x600-2-600x600.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Realme l&agrave; thương hiệu điện thoại th&ocirc;ng minh nhắm đến ph&acirc;n kh&uacute;c gi&aacute; rẻ. C&aacute;c sản phẩm điện thoại th&ocirc;ng minh mang thương hiệu Realme c&oacute; thiết kế tinh tế, bắt kịp xu hướng c&ugrave;ng với hiệu năng tuyệt vời. Người d&ugrave;ng cũng đ&aacute;nh gi&aacute; c&aacute;c sản phẩm của Realme tốt hơn nhiều so với thương hiệu trong c&ugrave;ng ph&acirc;n kh&uacute;c. Sau hơn 2 năm hoạt động, Realme đ&atilde; x&acirc;y dựng được một hệ thống c&aacute;c nh&agrave; ph&acirc;n phối sản phẩm ch&iacute;nh h&atilde;ng tr&ecirc;n to&agrave;n quốc. Ho&agrave;ng H&agrave; Mobile tự h&agrave;o l&agrave; một trong những nh&agrave; ph&acirc;n phối c&aacute;c sản phẩm mang thương hiệu Realme với mức gi&aacute; tốt nhất thị trường.</p>\r\n\r\n<p>Realme 6 Series ch&iacute;nh thức ra mắt thị trường trong qu&yacute; 1 năm 2020. Trong đ&oacute;, Realme 6 Pro 8GB/1288GB được đ&aacute;nh gi&aacute; l&agrave; nằm trong ph&acirc;n kh&uacute;c cận cao cấp. Đ&acirc;y l&agrave; một bước tiến tiếp theo của Realme tr&ecirc;n con đường khẳng định thương hiệu của m&igrave;nh</p>\r\n\r\n<p>Quả thực, Realme đ&atilde; chuẩn bị rất kĩ c&agrave;ng cho sự trở lại của cặp đ&ocirc;i Realme 6 v&agrave; Realme 6 Pro trong năm nay. Trong khi Realme 6 sở hữu bộ vi xử l&yacute; chuy&ecirc;n d&ugrave;ng cho c&aacute;c game thủ, Realme 6 Pro 8GB/128GB cũng được trang bị con chip Snapdragon 720G ho&agrave;n to&agrave;n mới của Qualcomm.</p>\r\n\r\n<p>Trong khi nhiều mẫu điện thoại th&ocirc;ng minh mới ra mắt vẫn lặp đi lặp lại kiểu thiết kế m&agrave;n h&igrave;nh cũ, Realme 6 Pro 8GB/128GB nhanh ch&oacute;ng theo xu hướng &ldquo;đục lỗ&rdquo; h&igrave;nh vi&ecirc;n thuốc tr&ecirc;n nhiều flagship smartphone. M&agrave;n h&igrave;nh của Realme 6 Pro 8GB/128GB trang bị tấm nền IPS với k&iacute;ch thước 6.6 icnh. Thiết bị c&oacute; độ ph&acirc;n giải m&agrave;n h&igrave;nh full HD+ 1080x2400 pixels. Tốc độ l&agrave;m mới m&agrave;n h&igrave;nh tr&ecirc;n Realme 6 Pro 8GB/128GB đạt tới 90Hz, nhờ đ&oacute; m&aacute;y c&oacute; thể hiển thị h&igrave;nh ảnh si&ecirc;u mượt sau mỗi lần chạm của người d&ugrave;ng.</p>\r\n\r\n<p>Thị trường smartphone ng&agrave;y c&agrave;ng cạnh tranh gay gắt, c&aacute;c nh&agrave; sản xuất lu&ocirc;n phải t&igrave;m ra kh&aacute;c biệt nổi trội cho sản phẩm của m&igrave;nh. Trong nhiều năm qua, thiết lập camera tr&ecirc;n điện thoại th&ocirc;ng minh ng&agrave;y c&agrave;ng được đầu tư ph&aacute;t triển. Điển h&igrave;nh l&agrave; xu hướng tăng l&ecirc;n về ống k&iacute;nh. Từ những ống k&iacute;nh đơn, k&eacute;p đến thiết lập bốn hoặc năm camera. Realme cũng rất nhanh nhạy khi trang bị cho Realme 6 Pro 8GB/128GB thiết lập bốn camera sau.</p>', 1, 10, '2020-10-30 00:07:20', '2020-11-06 09:17:46'),
(30, 'Realme 7', 'realme-7', 6000000, 'realme-7-pro.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Mặt sau của m&aacute;y lấy cảm hứng từ kh&ocirc;ng gian gương trong tự nhi&ecirc;n, Realme 7 c&oacute; thiết kế gương rực rỡ. Sự chia cắt t&aacute;o bạo mang đến một t&aacute;c động thị gi&aacute;c mới với hiệu ứng &aacute;nh s&aacute;ng tuyệt đẹp, vẻ đẹp tự nhi&ecirc;n c&acirc;n bằng được bộc lộ.</p>\r\n\r\n<p>Mặt trước c&oacute; thiết dạng đục lỗ nơi chứa camera selfie tỉ lệ hiển thị đến 90.5% so với th&acirc;n m&aacute;y cho kh&ocirc;ng gian hiển thị rộng lớn, trải nghiệm người d&ugrave;ng th&iacute;ch hơn.</p>\r\n\r\n<p>Realme 7 được trang bị m&agrave;n h&igrave;nh IPS LCD với độ ph&acirc;n giải Full HD+ sở hữu m&agrave;n h&igrave;nh rộng 6.5 inch v&agrave; c&oacute; tốc độ l&agrave;m mới 90 Hz.&nbsp;M&agrave;n h&igrave;nh Realme 7 được bảo vệ bởi k&iacute;nh cường lực Corning Gorilla Glass 3 hạn chế trầy xước cũng như sự va đập trong qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<p>Tỉ lệ khung h&igrave;nh 20:9 tạo cảm gi&aacute;c thon gọn v&agrave; tăng khả năng xử l&iacute; một tay dễ d&agrave;ng. Với tốc độ l&agrave;m mới 90 Hz, tấm nền IPS LCD cho cảm gi&aacute;c mượt v&agrave; nhạy hơn. Mật độ điểm ảnh lớn 405 ppi gi&uacute;p cho văn bản, h&igrave;nh ảnh đồ hoạ tr&ocirc;ng r&otilde; r&agrave;ng v&agrave; sắc n&eacute;t.</p>\r\n\r\n<p>Realme 7 sở hữu cho m&igrave;nh 4 camera ở mặt sau lần lượt l&agrave; cảm biến ch&iacute;nh 64 MP, camera g&oacute;c si&ecirc;u rộng 8 MP, camera macro 2 MP hỗ trợ chụp ảnh cận cảnh v&agrave; camera đo chiều s&acirc;u 2 MP hỗ trợ cho việc xo&aacute; ph&ocirc;ng.</p>\r\n\r\n<p>Realme 7 chiếc điện thoại pin tr&acirc;u&nbsp;sở hữu vi&ecirc;n pin cực khủng l&ecirc;n đến 5000 mAh, thời gian sử dụng c&oacute; thể l&ecirc;n đến 2 ng&agrave;y v&agrave; c&oacute; khả năng chờ l&ecirc;n đến 1 th&aacute;ng.</p>', 0, 10, '2020-10-30 00:07:40', '2020-11-06 09:22:31'),
(31, 'Realme 7 Pro', 'realme-7-pro', 9000000, 'realme-7.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Realme 7 Pro sở hữu cụm 4 camera được thiết kế nằm dọc ở sau mặt lưng với cảm biến ch&iacute;nh 64 MP được t&iacute;ch hợp c&aacute;c t&iacute;nh năng đa dụng như camera x&oacute;a ph&ocirc;ng, chụp to&agrave;n cảnh (Paronama), HDR,... mang đến độ sắc n&eacute;t, chất lượng cho mỗi bức ảnh.</p>\r\n\r\n<p>Cảm biến ch&iacute;nh 64 MP c&ograve;n hỗ trợ chụp đ&ecirc;m ấn tượng nhờ tận dụng khả năng xử l&yacute; AI v&agrave; khử nhiễu đa khung h&igrave;nh gi&uacute;p người d&ugrave;ng chụp được những bức ảnh r&otilde; n&eacute;t v&agrave; tươi s&aacute;ng hơn.</p>\r\n\r\n<p>Ba ống k&iacute;nh c&ograve;n lại bao gồm&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-goc-rong\" target=\"_blank\">c</a>amera g&oacute;c rộng&nbsp;8 MP, cảm biến đo độ s&acirc;u 2 MP v&agrave; cuối c&ugrave;ng l&agrave; camera maco&nbsp;chụp cận cảnh 2 MP.</p>\r\n\r\n<p>Lấy cảm hứng từ kh&ocirc;ng gian gương tự nhi&ecirc;n, Realme 7 Pro c&oacute; thiết kế rực rỡ, với hiệu ứng &aacute;nh s&aacute;ng tuyệt đẹp, b&oacute;ng bẩy to&aacute;t l&ecirc;n d&aacute;ng vẻ của một sản phẩm sang trọng cao cấp. Hơn nữa việc l&agrave;m cong 3D c&aacute;c g&oacute;c m&aacute;y c&ograve;n gi&uacute;p cho cảm gi&aacute;c cầm nắm dễ d&agrave;ng hơn tr&ecirc;n tay.</p>\r\n\r\n<p>Về phần hiệu năng th&igrave; Realme 7 Pro sở hữu con chip Snapdragon 720G 8 nh&acirc;n gi&uacute;p bạn thoải m&aacute;i lướt web, xem phim hay chơi c&aacute;c d&ograve;ng game hot hiện nay như PUBG Mobile, Li&ecirc;n Qu&acirc;n Mobile, FreeFire,... vẫn đảm bảo ổn định.</p>\r\n\r\n<p>Về phần hiệu năng th&igrave; Realme 7 Pro sở hữu con chip Snapdragon 720G 8 nh&acirc;n gi&uacute;p bạn thoải m&aacute;i lướt web, xem phim hay chơi c&aacute;c d&ograve;ng game hot hiện nay như PUBG Mobile, Li&ecirc;n Qu&acirc;n Mobile, FreeFire,... vẫn đảm bảo ổn định.</p>', 1, 10, '2020-10-30 00:09:10', '2020-11-06 09:26:20'),
(32, 'Realme C12 Red', 'realme-c12-red', 13000000, 'realme-c12-red.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Trong khi mặt sau được sử dụng hiệu ứng chuyển m&agrave;u với những đường cắt tinh tế đem lại vẻ đẹp sang trọng v&agrave; tinh tế. M&aacute;y cũng được trang bị cảm biến v&acirc;n tay ở mặt sau v&agrave; cụm camera h&igrave;nh vu&ocirc;ng với 3 cảm biến v&agrave; 1 đ&egrave;n flash b&ecirc;n trong. Điểm nhấn quan trọng nhất của mặt lưng đ&oacute; l&agrave; Realme đ&atilde; sử dụng c&ocirc;ng nghệ đ&aacute;nh b&oacute;ng, khắc radium sau đ&oacute; phun c&aacute;t l&ecirc;n bề mặt gi&uacute;p tạo được hiệu ứng rất tuyệt.</p>\r\n\r\n<p>&nbsp;Ngo&agrave;i pin khủng 6.000mAh hiếm thấy, m&aacute;y c&ograve;n được Realme trang bị th&ecirc;m t&iacute;nh năng APP Quick Freeze gi&uacute;p giảm mức ti&ecirc;u thụ năng lượng của ứng dụng n&ecirc;n khi kh&ocirc;ng d&ugrave;ng. Chưa hết, t&iacute;nh năng n&agrave;y c&ograve;n c&oacute; khả năng tối ưu h&oacute;a pin khi ở chế độ chờ v&agrave; m&agrave;n h&igrave;nh, gi&uacute;p cho tuổi thọ pin của C12 được l&acirc;u hơn.</p>\r\n\r\n<p>Realme C12 được trang bị tới 3 camera sau &ndash; một con số kh&aacute; lớn so với nhiều smartphone c&ugrave;ng ph&acirc;n kh&uacute;c. C&aacute;c camera n&agrave;y gồm: cảm biến ch&iacute;nh 13MP khẩu độ f/2.2 được t&iacute;ch hợp c&ocirc;ng nghệ AI gi&uacute;p thu s&aacute;ng tốt hơn v&agrave; 2 camera phụ 2MP. M&aacute;y được trang bị chế độ chụp đ&ecirc;m gi&uacute;p người d&ugrave;ng c&oacute; thể chụp được những bức ảnh thiếu s&aacute;ng đủ chi tiết, kh&ocirc;ng bị ch&aacute;y s&aacute;ng.</p>\r\n\r\n<p>Trong khi đ&oacute; camera selfie c&oacute; độ ph&acirc;n giải l&agrave; 5MP, khẩu độ f/2.4 đủ để c&oacute; được những bức h&igrave;nh ch&acirc;n dung đẹp nhờ chế độ AI Beauty. Ngo&agrave;i ra, camera n&agrave;y cũng được hỗ trợ t&iacute;nh năng d&ugrave;ng cử chỉ để chụp ảnh.</p>', 1, 10, '2020-10-30 00:09:40', '2020-11-06 09:28:04'),
(33, 'Asus Rog 3', 'asus-rog-3', 12000000, 'asus-rog-phone3-1.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p><strong>Asus ROG Phone 3&nbsp;</strong>c&ograve;n được trang bị một hệ thống tản nhiệt mới ho&agrave;n to&agrave;n nhằm duy tr&igrave; nhiệt độ của m&aacute;y ở mức ổn định. Asus sử dụng c&ocirc;ng nghệ tản nhiệt kết hợp giữa tản nhiệt chất lỏng v&agrave; tản nhiệt cưỡng bức th&ocirc;ng qua quạt gi&oacute;. Ngo&agrave;i ra th&igrave; m&aacute;y c&ograve;n c&oacute; k&egrave;m bộ phụ kiện ngo&agrave;i cho ph&eacute;p bạn th&ecirc;m 1 lớp tản nhiệt nữa.</p>\r\n\r\n<p>Thiết kế hầm hố cũng ch&iacute;nh l&agrave; một trong những yếu tố l&agrave;m n&ecirc;n smartphone gaming. V&agrave;<strong>&nbsp;ROG Phone 3</strong>&nbsp;được trang bị những đường cắt xẻ mạnh mẽ v&agrave; vật liệu kim loại cứng c&aacute;p để lộ ra vẻ cơ bắp, cứng c&aacute;p đậm chất gaming. Ngo&agrave;i ra những đường xẻ v&agrave; vật liệu cũng hỗ trợ cho m&aacute;y tản nhiệt tốt hơn v&agrave; cảm gi&aacute;c cầm nắm thoải m&aacute;i hơn.</p>\r\n\r\n<p>M&agrave;n h&igrave;nh l&agrave; thứ bạn thao t&aacute;c nhiều nh&acirc;t khi chơi game v&agrave; ch&iacute;nh v&igrave; thế m&agrave;n h&igrave;nh<strong>&nbsp;ROG Phone 3</strong>&nbsp;cũng c&oacute; chất lượng ấn tượng kh&ocirc;ng k&eacute;m hiệu năng. Tấm nền AMOLED của&nbsp;ROG Phone 3&nbsp;sẽ mang lại trải nghiệm ho&agrave;n hảo. M&agrave;u sắc, độ tương phản c&ugrave;ng độ s&aacute;ng của m&agrave;n h&igrave;nh m&aacute;y cho ph&eacute;p những h&igrave;nh ảnh, chi tiết được hiển thị r&otilde; r&agrave;ng, tăng th&ecirc;m khả năng quan s&aacute;t cho game thủ.</p>\r\n\r\n<p>Cụm camera&nbsp;<strong>ROG Phone 3&nbsp;</strong>ngo&agrave;i chức năng chụp ảnh th&ocirc;ng thường th&igrave; n&oacute; cũng c&oacute; nhiệm vụ quan trọng trong việc hỗ trợ m&aacute;y sử dụng c&aacute;c t&iacute;nh năng thực tế ảo tăng cường. Bộ cảm biến camera với độ ph&acirc;n giải cao c&ograve;n dược đi k&egrave;m với cảm biến Lidar với chức năng m&ocirc; phỏng lại vật thể trong kh&ocirc;ng gian ảo phục vụ cho c&aacute;c tựa game AR.</p>\r\n\r\n<p>Sở hữu dung lượng pin kh&ocirc;̉ng l&ocirc;̀ 6000 mAh là m&ocirc;̣t trong những y&ecirc;́u t&ocirc;́ ti&ecirc;́p theo giúp&nbsp;ROG Phone 3&nbsp;trở n&ecirc;n n&ocirc;̉i b&acirc;̣t hơn. Kh&ocirc;ng những v&acirc;̣y, máy còn được h&ocirc;̃ trợ c&ocirc;ng ngh&ecirc;̣ sạc nhanh QuickCharge 4+ cho t&ocirc;́c đ&ocirc;̣ phục h&ocirc;̀i năng lượng cực kì nhanh chóng.</p>', 1, 13, '2020-10-30 20:55:49', '2020-11-06 09:30:38'),
(34, 'Asus ZenForm 3', 'asus-zenform-3', 9990000, 'asus-zenfone-3png.png', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>ZenFone 3 ZE520KL c&oacute; thiết kế lột x&aacute;c ho&agrave;n to&agrave;n so với những người tiền nhiệm: khung kim loại v&agrave; 2 mặt k&iacute;nh cường lực được l&agrave;m cong 2.5D.</p>\r\n\r\n<p>Mặt k&iacute;nh của m&aacute;y phản chiếu &aacute;nh s&aacute;ng khi nghi&ecirc;ng ở những g&oacute;c nh&igrave;n kh&aacute;c nhau rất bắt mắt, kết hợp với những những đường cắt kim cương bao quanh khung viền đ&atilde; tạo n&ecirc;n một vẻ đẹp đầy quyến rũ cho sản phẩm của Asus.</p>\r\n\r\n<p>ZenFone 3 ZE520KL được trang bị m&agrave;n h&igrave;nh k&iacute;ch thước 5.2 inch, nhỏ hơn một ch&uacute;t so với bản ZE552KL (5.5 inch), độ ph&acirc;n giải đạt mức Full HD v&agrave; sử dụng c&ocirc;ng nghệ Super IPS+ cho khả năng hiển thị h&igrave;nh ảnh sắc n&eacute;t, m&agrave;u sắc trung thực, độ s&aacute;ng cao (l&ecirc;n đến hơn 600 nit), g&oacute;c nh&igrave;n rộng, kh&ocirc;ng gặp hiện tượng biến đổi m&agrave;u khi nh&igrave;n ở g&oacute;c nghi&ecirc;ng.</p>\r\n\r\n<p>Chiếc điện thoại Asus&nbsp;n&agrave;y t&iacute;ch hợp vi xử l&yacute; Snapdragon 625 t&aacute;m nh&acirc;n tốc độ 2.0 GHz. Đ&acirc;y l&agrave; con chip dựa tr&ecirc;n tiến tr&igrave;nh 14 nm hiện đại mang lại hiệu suất ti&ecirc;u thụ điện năng ấn tượng.</p>\r\n\r\n<p>ZenFone 3 ZE520KL sở hữu t&iacute;nh năng nh&aacute;y đ&uacute;p l&ecirc;n m&agrave;n h&igrave;nh để bật s&aacute;ng m&agrave;n h&igrave;nh/kh&oacute;a m&aacute;y, giảm thiểu rủi ro chai m&ograve;n khi sử dụng n&uacute;t nguồn trong thời gian d&agrave;i.</p>\r\n\r\n<p>Camera ch&iacute;nh của ZenFone 3 ZE520KL c&oacute; độ ph&acirc;n giải l&ecirc;n đến 16 MP, khẩu độ lớn (f/2.0), hỗ trợ bởi c&ocirc;ng nghệ lấy n&eacute;t bằng laser v&agrave; chống rung 4 trục, trong khi camera phụ cũng được n&acirc;ng cấp l&ecirc;n 8 MP, g&oacute;c rộng 85 độ, mang lại cho người d&ugrave;ng những bức ảnh rất chất lượng.</p>', 0, 13, '2020-10-30 20:56:42', '2020-11-06 09:31:56'),
(35, 'Sony S20A', 'sony-s20a', 8700000, 'sony-s20a.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Sony S20A được liệt k&ecirc; với chip 4 nh&acirc;n tốc độ 1.3GHz v&agrave; chạy tr&ecirc;n nền tảng Android 6. Nh&igrave;n v&agrave;o m&aacute;y, dường như n&oacute; được nằm trong 1 bộ ốp lưng bảo vệ. Thế n&ecirc;n c&aacute;c c&acirc;u hỏi về thiết kế vẫn c&ograve;n đ&oacute;.</p>\r\n\r\n<p>Cũng c&oacute; thể Sony S20A l&agrave; một smartphone với thiết kế bền bỉ, chống va đập. Tuy nhi&ecirc;n, m&aacute;y c&oacute; m&agrave;n h&igrave;nh độ ph&acirc;n giải chỉ 480 x 960 px, rất thấp nếu ở thời điểm n&agrave;y. Ngo&agrave;i ra, m&aacute;y cũng hỗ trợ LTE với 3 băng tần kh&aacute;c nhau.</p>\r\n\r\n<p>Tất cả những chi tiết tr&ecirc;n khiến ch&uacute;ng ta nghĩ về 1 smartphone ở thời điểm năm 2016, nhưng bộ 3 m&aacute;y ảnh mặt sau chắc chắn sẽ khiến bạn phải nghĩ lại, ngay cả khi cảm biến ch&iacute;nh c&oacute; độ ph&acirc;n giải chỉ l&agrave; 5MP.</p>\r\n\r\n<p>Thị trường smartphone Trung Quốc kh&aacute; bất thường so với những thị trường kh&aacute;c tr&ecirc;n thế giới, thế n&ecirc;n cũng kh&ocirc;ng ngạc nhi&ecirc;n khi một smartphone gi&aacute; rẻ nhắm tới một ph&acirc;n kh&uacute;c thấp hơn, những người đi t&igrave;m kiếm 1 sản phẩm gi&aacute; thấp, nhưng bền bỉ v&agrave; c&oacute; 3 camera&nbsp;&ldquo;thời thượng&rdquo; chẳng hạn.</p>', 0, 4, '2020-10-31 03:46:16', '2020-11-06 09:39:17'),
(36, 'Sony Xpreria 1', 'sony-xpreria-1', 1100000, 'sony-xpreria-1.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p><strong>Sony Xperia 1</strong>&nbsp;sử dụng thiết kế vu&ocirc;ng vức m&agrave; trước giờ ch&uacute;ng ta vẫn thấy tr&ecirc;n c&aacute;c mẫu smartphone kh&aacute;c của Sony. Nhưng kh&ocirc;ng v&igrave; thế h&atilde;ng bỏ qua sự thoải m&aacute;i khi sử dụng của người d&ugrave;ng. Tr&ecirc;n thực tế c&aacute;c cạnh v&agrave; viền Xperia 1 vẫn c&oacute; những đường bo cong nhẹ, đủ để tạo ra một thế cầm chắc chắn v&agrave; thoải m&aacute;i nhưng vẫn kh&ocirc;ng l&agrave;m mất đi ng&ocirc;n ngữ thiết kế mạnh mẽ, cứng c&aacute;p của Sony.</p>\r\n\r\n<p>Thiết kế khung kim loại v&agrave; 2 mặt k&iacute;nh tr&ecirc;n một mẫu flagship như Sony Xperia 1 kh&ocirc;ng phải l&agrave; hiếm nhưng n&oacute; đem lại sự sang trọng v&agrave; hiện đại tương xứng với gi&aacute; trị của m&aacute;y. Đặc biệt hơn c&aacute;c đường vật liệu được v&aacute;t cong nhẹ tạo vẻ liền lạc, nguy&ecirc;n khối nhưng m&agrave; vẫn đảm bảo được h&igrave;nh ảnh chủ chốt của chiếc<strong>&nbsp;Sony Xperia 1.</strong></p>\r\n\r\n<p>M&agrave;n h&igrave;nh OLED của&nbsp;<strong>Sony Xperia 1&nbsp;</strong>cũng l&agrave; một điểm đặc biệt m&agrave; rất &iacute;t mẫu smartphone tr&ecirc;n thị trường hiện tai đạt được. M&agrave;n h&igrave;nh 6.5 inch n&agrave;y c&oacute; độ ph&acirc;n giải tối đa l&ecirc;n đến 4K v&agrave; hỗ trợ HDR. Đặc biệt nhất l&agrave; chuẩn CinemaWide cho tỷ lệ m&agrave;n h&igrave;nh 21:9 - tỷ lệ n&agrave;y tương đương với m&agrave;n h&igrave;nh trong c&aacute;c rạp chiếu phim chuy&ecirc;n nghiệp.</p>\r\n\r\n<p>Sony sử dụng con chip Snapdragon 855 cho&nbsp;<strong>Xperia 1</strong>, con chip n&agrave;y thuộc d&ograve;ng chip d&agrave;nh cho c&aacute;c mẫu smartphone flagship n&ecirc;n sẽ lu&ocirc;n đảm bảo được hiệu năng sử dụng cho bạn. Đặc biệt với nhu cầu chơi game giải tr&iacute; th&igrave;&nbsp;<strong>Sony Xperia 1</strong>&nbsp;ho&agrave;n to&agrave;n c&oacute; thể đ&aacute;p ứng được tất cả c&aacute;c tựa game mới nhất trong thời điểm hiện tại với mức fps cao.</p>\r\n\r\n<p>Cụm camera của&nbsp;<strong>Sony Xperia 1</strong>&nbsp;l&agrave; một cụm camera ba ống k&iacute;nh, 12 MP + 12 MP + 12 MP, 16 mm g&oacute;c si&ecirc;u rộng, 52 mm chụp tele, Thu ph&oacute;ng quang học 2x, Camera trước 8 MP. Cụm camera n&agrave;y hỗ trợ mọi t&iacute;ch năng chụp ảnh hiện đại c&oacute; mặt tr&ecirc;n c&aacute;c mẫu flagship hiện đại. Ngo&agrave;i ra m&aacute;y c&ograve;n c&oacute; th&ecirc;m 1 camera trước 8MP phục vụ cho t&iacute;nh năng selfie v&agrave; video call.</p>\r\n\r\n<p>Dung lượng<strong>&nbsp;pin Xperia 1</strong>&nbsp;đạt mức 3330mAh - đ&acirc;y kh&ocirc;ng phải l&agrave; con số qu&aacute; cao tr&ecirc;n ti&ecirc;u chuẩn smartphone hiện nay nhưng m&agrave; điều n&agrave;y nhằm đ&aacute;nh đổi với đổ mỏng thời trang của m&aacute;y. Ngo&agrave;i ra t&iacute;nh năng sạc nhanh cũng đồng thời hộ trợ chiếc Xperia 1 nhanh ch&oacute;ng nạp lại đầy pin để tiếp tục phục vụ c&aacute;c nhu cầu của người d&ugrave;ng.</p>', 0, 4, '2020-10-31 03:46:39', '2020-11-06 09:37:47'),
(37, 'Xiaomi redmi 9c', 'xiaomi-redmi-9c', 6500000, 'xiaomi-redmi-9c.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Xiaomi Redmi 9C sở hữu trong m&igrave;nh thiết kế bo tr&ograve;n mềm mại ở c&aacute;c cạnh mang lại cảm gi&aacute;c thoải m&aacute;i khi cầm nắm, c&aacute;c nh&agrave; sản xuất ho&agrave;n thiện rất tỉ mỉ từ đ&oacute; mang lại sự sang trọng v&agrave; tinh tế cho sản phẩm.</p>\r\n\r\n<p>Smartphone n&agrave;y được thiết kế m&agrave;n h&igrave;nh giọt nước, tr&agrave;n viền m&agrave;n h&igrave;nh mỏng l&ecirc;n đến 6.53 inch. B&ecirc;n cạnh đ&oacute;, Xiaomi Redmi 9C c&ograve;n trang bị m&agrave;n h&igrave;nh IPS LCD&nbsp;với độ ph&acirc;n giải HD+ mang lại cho người d&ugrave;ng h&igrave;nh ảnh sắc n&eacute;t v&agrave; ch&acirc;n thật nhất.</p>\r\n\r\n<p>Theo h&atilde;ng cho biết th&igrave; Xiaomi Redmi 9C sẽ mang trong m&igrave;nh chip mới mang t&ecirc;n&nbsp;MediaTek Helio G35 v&agrave; nh&agrave; cung cấp cho biết chip mới n&agrave;y&nbsp;sẽ tập trung gi&uacute;p điện thoại chơi game ổn định hơn, hứa hẹn mang lại cho người d&ugrave;ng những trận game nảy lửa c&ugrave;ng bạn b&egrave;.</p>\r\n\r\n<p>Kh&ocirc;ng chỉ mạnh mẽ nhờ phần bộ vi xử lý m&agrave; Xiaomi Redmi 9C còn được trang bị hệ điều h&agrave;nh Android 10 th&ocirc;ng minh, giao diện đẹp v&agrave; th&acirc;n thiện với người d&ugrave;ng.</p>\r\n\r\n<p>Ngoài ra, RAM 2 GB đi k&egrave;m với dung lượng lưu trữ của máy l&ecirc;n tới 32 GB cho người d&ugrave;ng một kh&ocirc;ng gian lưu trữ r&ocirc;̣ng rãi c&ugrave;ng với thao t&aacute;c đa nhiệm mượt m&agrave;.</p>\r\n\r\n<p>Nếu bạn đang cần 1 chiếc điện thoại pin tr&acirc;u&nbsp;th&igrave; Xiaomi Redmi 9C l&agrave; 1 lựa chọn kh&ocirc;ng thể bỏ qua trong tầm gi&aacute;, m&aacute;y được trang bị vi&ecirc;n pin l&ecirc;n đến 5000 mAh, cho người d&ugrave;ng trải nghiệm l&acirc;u bền. Cạnh đ&oacute; m&aacute;y c&ograve;n được trang bị t&iacute;nh năng tiết kiệm pin gi&uacute;p người d&ugrave;ng c&oacute; th&ecirc;m nhiều hơn thời gian trải nghiệm.</p>', 0, 9, '2020-10-31 03:47:46', '2020-11-06 09:41:26'),
(38, 'Xiaomi mi T9 pro', 'xiaomi-mi-t9-pro', 15000000, 'xiaomi-mi-10t-pro.jpg', '12 tháng', 'Sạc, cáp, tai nghe', '100% hàng mới', 'Dán cường lực', 1, '<p>Sau xu thế m&agrave;n h&igrave;nh tai thỏ hay m&agrave;n h&igrave;nh giọt nước th&igrave; giờ đ&acirc;y c&aacute;c h&atilde;ng lại chạy đua nhau để mang lại một trải nghiệm m&agrave;n h&igrave;nh thực thụ v&agrave;&nbsp;Mi 9T l&agrave; một chiếc m&aacute;y như vậy.</p>\r\n\r\n<p>Nhờ sử dụng camera trước th&ograve; thụt n&ecirc;n chiếc smartphone mới tới từ Xiaomi n&agrave;y mang lại cho người d&ugrave;ng một trải nghiệm rất th&iacute;ch mắt khi m&agrave;n h&igrave;nh c&oacute; cảm gi&aacute;c tr&agrave;n ra cả 4 cạnh.</p>\r\n\r\n<p>M&aacute;y c&oacute; m&agrave;n h&igrave;nh k&iacute;ch thước l&ecirc;n đến 6.39 inch độ ph&acirc;n giải Full HD+, sử dụng tấm nền AMOLED cho trải nghiệm h&igrave;nh ảnh v&agrave; m&agrave;u sắc rực rỡ, ph&ugrave; hợp với nhu cầu giải tr&iacute; c&aacute; nh&acirc;n.</p>\r\n\r\n<p>M&agrave;n h&igrave;nh n&agrave;y cũng sở hữu độ s&aacute;ng kh&aacute; cao gi&uacute;p bạn kh&ocirc;ng gặp bất cứ kh&oacute; khăn n&agrave;o khi sử dụng ngo&agrave;i trời.</p>\r\n\r\n<p>Tốc độ mở kh&oacute;a của cảm biến n&agrave;y kh&aacute; nhanh, kh&ocirc;ng hề thua k&eacute;m c&aacute;c loại cảm biến v&acirc;n tay truyền thống kh&aacute;c.</p>\r\n\r\n<p>Xiaomi Mi 9T sở hữu cụm camera &quot;th&ograve; thụt&quot; ở mặt trước với độ ph&acirc;n giải khủng l&ecirc;n tới 20 MP.&nbsp;Một điểm nhấn kh&aacute;c l&agrave;&nbsp;Mi 9T sử dụng&nbsp;hệ thống 3 camera bao gồm camera 48 MP cảm biến Sony IMX582, camera 13 MP với ống k&iacute;nh g&oacute;c rộng v&agrave; camera tele 8 MP.</p>\r\n\r\n<p>Cung cấp sức mạnh cho Xiaomi Mi 9T ch&iacute;nh l&agrave; con chip Snapdragon 730 với 6 GB RAM v&agrave; 64 GB bộ nhớ trong.</p>\r\n\r\n<p>Xiaomi Mi 9T c&ograve;n hỗ trợ chế độ Game Turbo 2.0 gi&uacute;p ph&acirc;n phối t&agrave;i nguy&ecirc;n hợp l&yacute; khi chơi game đảm bảo bạn c&oacute; được những trải nghiệm tối ưu nhất.</p>\r\n\r\n<p>&nbsp;</p>', 1, 9, '2020-10-31 03:48:43', '2020-11-06 09:48:08');

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
(5, 'Nguyễn Ái Quốc', 9, '71 Nguyễn Du', '0935812621', 'phananhtai868@gmail.com', NULL, NULL),
(6, 'Nguyễn Ngọc Diễm', 1, '785/8 Nguyễn Kiệm', '0348668653', 'phananhtai868@gmail.com', NULL, NULL),
(7, 'Lê Nhất', 5, '785/8 Nguyễn Kiệm', '01653815141', 'phananhtai868@gmail.com', NULL, NULL),
(8, 'Phan Anh Tài', 1, '785/8 Nguyễn Kiệm', '0348668653', 'phananhtai868@gmail.com', NULL, NULL);

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
(1, 'Phan Anh Tài', 'phananhtai1', '$2y$10$15ZYdpxvl3yjbYGiELI5IObLInfdBCz0ws2mzGHe0XwYVU7yH5KBy', 'phananhtai868@gmail.com', '2131231412', 1, NULL, NULL, '2020-11-07 03:23:38'),
(4, 'Ngọc Nghĩa', 'ngocnghia1', '$2y$10$ICl3EN1K9LS.hwEw6aqIBetc2F5Jn7T4lVfhKfRMqWa8g83QcMUN6', 'ngocnghia123@gmail.com', '12312415161', 0, NULL, NULL, '2020-11-06 11:18:49'),
(5, 'Nguyễn Ngọc Diễm', 'ngocdiem1', '$2y$10$xPHzYswOXcNkLz8ulTQDYOeA/hmCcqwzUzTQX1XGDVxz.OKUEAJrC', 'ngocdiem123@gmail.com', '12312415161', 0, NULL, NULL, '2020-11-06 11:06:31'),
(6, 'Trung Quân', 'trungquan1', '$2y$10$64TfYuMn75.Ck1/P7UkuHeguMXVS2lKTBoGj.nxL1xngrHVt9pwHm', 'trungquan123@gmail.com', '12312415161', 1, NULL, NULL, '2020-11-06 11:19:19'),
(7, 'Anh Tài', 'admin1', '$2y$10$EkaUn/rKYio/GYEonWpsWer9gGSStruir3mjsa8ZhpRuhkkhhNlQu', 'anhtai123@gmail.com', '12312415161', 1, NULL, NULL, '2020-11-06 11:19:34'),
(8, 'Trần Nghĩa', 'trannghia1', '$2y$10$aXFGsLO9GuVAUC7rZuKtPOYitBvRjDN6BgRTYpbzqgzk0n6BtHnB2', 'trannghia123@gmail.com', '12312415161', 0, NULL, NULL, '2020-11-06 11:19:52'),
(9, 'Trần Trung', 'trantrung1', '$2y$10$O/TM82lRrfurMeefZNijkuIsXHGBIL0kze0jJFR5OXexn0bBnx6.a', 'trantrung123@gmail.com', '12312415161', 0, NULL, NULL, '2020-11-06 11:20:07');

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
  MODIFY `com_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `prod_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
