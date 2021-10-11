-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2021 at 07:36 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop5`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nametwo` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `link`, `image`, `is_active`, `created_at`, `updated_at`, `nametwo`) VALUES
(1, 'Mặt hàng mới', 'cua-hang', 'Mặt_hàng_mới.png', 1, '2021-06-14 20:50:55', '2021-07-29 23:18:53', 'Mùa xuân <br > Mùa đông'),
(2, 'Khuyến mãi mới', 'cua-hang', 'Khuyến_mãi.png', 1, '2021-06-14 20:52:15', '2021-07-29 23:19:31', 'Đăng kí <br> tham gia'),
(3, 'Ngôi nhà nhỏ', 'cua-hang?category_id=6', 'Ngôi_nhà_nhỏ.png', 1, '2021-06-14 20:56:34', '2021-07-29 23:20:50', 'Bàn ghế <br> Nhỏ nhắn');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `created_at`, `updated_at`, `is_active`) VALUES
(1, 'Nhãn hiệu 1', '2021-06-12 09:27:08', '2021-06-12 09:27:08', 1),
(2, 'Nhãn hiệu 2', '2021-06-12 09:27:21', '2021-06-12 09:27:21', 1),
(3, 'Nhãn hiệu 3', '2021-06-12 09:27:31', '2021-06-12 09:27:31', 0),
(4, 'Nhãn hiệu 4', '2021-06-12 22:19:31', '2021-06-12 22:19:31', 1),
(5, 'Nhãn hiệu 5', '2021-06-12 22:19:47', '2021-06-12 22:19:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `product_name`, `product_code`, `product_color`, `price`, `size`, `quantity`, `user_email`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 6, 'Ghế gỗ đẹp', 'KL-GE-8', '', 450000, '', 1, '', 'POYuuP3GgvRUjtavCoHH3h7ps2BTO8Qx7xXXk6c7', NULL, NULL),
(2, 9, 'Băng ghế gỗ', 'KL-Ge-7', '', 2000000, '', 1, '', 'HikCOTX3KpQ14yshHllOARgxttOPhQwYbGJfmp68', NULL, NULL),
(3, 11, 'Ghế gỗ', 'KL-GE-6', '', 177760, '', 1, '', 'HikCOTX3KpQ14yshHllOARgxttOPhQwYbGJfmp68', NULL, NULL),
(4, 7, 'Sofa da', 'KL-SO-5', '', 2800000, '', 1, '', 'HikCOTX3KpQ14yshHllOARgxttOPhQwYbGJfmp68', NULL, NULL),
(5, 18, 'Ghế nhựa trắng', 'KL-GE-1', '', 400000, '', 1, '', 'Iy4zFXrXk6bJAGXVteGDjn4kh5JOoU1e18heg9A6', NULL, NULL),
(6, 16, 'Ghế không tay vàng', 'KL-GE-3', '', 200000, '', 1, '', 'Iy4zFXrXk6bJAGXVteGDjn4kh5JOoU1e18heg9A6', NULL, NULL),
(7, 12, 'Ghế bành', 'KL-GE-5', '', 810000, '', 1, '', 'Iy4zFXrXk6bJAGXVteGDjn4kh5JOoU1e18heg9A6', NULL, NULL),
(8, 6, 'Ghế gỗ đẹp', 'KL-GE-8', '', 450000, '', 1, '', 'Iy4zFXrXk6bJAGXVteGDjn4kh5JOoU1e18heg9A6', NULL, NULL),
(9, 9, 'Băng ghế gỗ', 'KL-Ge-7', '', 2000000, '', 1, '', 'atOSzsmgbDhKnSPGf1szSspRzEblkVuiGKF33Kzo', NULL, NULL),
(10, 11, 'Ghế gỗ', 'KL-GE-6', '', 177760, '', 1, '', 'atOSzsmgbDhKnSPGf1szSspRzEblkVuiGKF33Kzo', NULL, NULL),
(11, 18, 'Ghế nhựa trắng', 'KL-GE-1', '', 400000, '', 10, '', 'AE8DKIafdcI5BoRvtUOTCt5aWIfcGUKFUGvIGi6w', NULL, NULL),
(12, 17, 'Ghế nhựa đen', 'KL-GE-2', '', 300000, '', 1, '', 'hGTT4ptfNyYbuhz9yKv5lr0XE0wsYvgGvrsqQ30H', NULL, NULL),
(13, 18, 'Ghế nhựa trắng', 'KL-GE-1', '', 400000, '', 1, '', 'hGTT4ptfNyYbuhz9yKv5lr0XE0wsYvgGvrsqQ30H', NULL, NULL),
(14, 3, 'Sản phẩm trong nha 2', 'KL-NT-1', '', 24000000, '', 1, '', 'arQatdwYQFV2zJY3BpjWJWdPpZcYzLOPJZ6z2plm', NULL, NULL),
(15, 2, 'Sản phẩm trong nha 3', 'KL-VH-1', '', 540000, '', 1, '', '3NmQ383boLTYpALnO9arzx5J5MDGXHl0XWjxDIzJ', NULL, NULL),
(16, 14, 'Sofa đơn', 'KL-SO-2', '', 40000, '10x10m', 10, 'admin@admin.com', 'EETdmfewxO2F7FNmLE69FgQPPS00KepSZ4yj6S0N', NULL, NULL),
(17, 18, 'Ghế nhựa trắng', 'KL-GE-1', '', 400000, '', 1, 'admin@admin.com', 'EETdmfewxO2F7FNmLE69FgQPPS00KepSZ4yj6S0N', NULL, NULL),
(18, 16, 'Ghế không tay vàng', 'KL-GE-3', '', 200000, '', 1, 'admin@admin.com', 'EETdmfewxO2F7FNmLE69FgQPPS00KepSZ4yj6S0N', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `parent_id`, `featured`, `created_at`, `updated_at`, `is_active`, `image`) VALUES
(1, 'Nội thất trong nhà', 'Các sản phảm nội thất trong nhà đẹp,hiện đại', NULL, 1, '2021-06-12 09:02:27', '2021-08-01 23:20:19', 1, 'Nội_thất_trong_nhà.jpg'),
(2, 'Nội thất văn phòng', 'Các sản phẩm nội thất văn phòng hiện đại,tiện nghi', NULL, 1, '2021-06-12 09:03:50', '2021-07-30 03:17:38', 0, 'Nội_thất_văn_phòng.jpg'),
(3, 'Nội thất ngoài trời', 'Các sản phẩm nội thất ngoài trời', NULL, 0, '2021-06-12 09:05:02', '2021-07-30 03:17:52', 0, 'Nội_thất_ngoài_trời.jpg'),
(4, 'Nội thất ánh sáng', 'Hiện đại,tiện nghi,đẹp', NULL, 1, '2021-06-12 09:06:26', '2021-07-30 03:17:58', 0, 'Nội_thất_ánh_sáng.jpg'),
(5, 'Nội thất treo tường', 'Mẫu mã đa dạng', NULL, 0, '2021-06-12 09:07:29', '2021-07-30 03:18:02', 0, 'Nội_thất_treo_tường.jpg'),
(6, 'Nội thất bếp', 'Nhiều mẫu mã mới hiện đại', NULL, 0, '2021-06-12 09:09:44', '2021-07-30 03:18:06', 0, 'Nội_thất_bếp.jpg'),
(7, 'Ghế 1', NULL, 15, 1, '2021-06-14 22:23:22', '2021-08-01 22:07:36', 1, NULL),
(8, 'Sofa 1', NULL, 17, 1, '2021-06-14 22:23:45', '2021-08-01 23:19:05', 1, NULL),
(9, 'sofa 1.1', NULL, 8, 1, '2021-06-14 22:24:05', '2021-08-01 23:19:39', 1, NULL),
(10, 'ghe 1.1.1', NULL, 16, 1, '2021-06-14 22:24:54', '2021-08-01 23:18:38', 1, NULL),
(11, 'sofa 2', NULL, 17, 1, '2021-06-14 22:25:18', '2021-08-01 23:20:08', 1, NULL),
(12, 'Bếp 1', NULL, 6, 1, '2021-06-14 22:25:52', '2021-06-14 22:25:52', 1, NULL),
(13, 'Bếp 1.1', NULL, 12, 1, '2021-06-14 22:26:21', '2021-06-14 22:26:21', 1, NULL),
(14, 'Bếp 1.2', NULL, 12, 1, '2021-06-14 22:26:42', '2021-06-14 22:26:42', 1, NULL),
(15, 'Ghế', NULL, NULL, 1, '2021-06-15 22:38:52', '2021-07-30 02:27:44', 1, NULL),
(16, 'ghe 1.1', NULL, 7, 1, '2021-06-26 03:17:17', '2021-08-01 23:18:05', 1, NULL),
(17, 'Sofa', NULL, NULL, 1, '2021-06-26 03:17:39', '2021-07-30 02:38:55', 1, NULL),
(18, 'trong nha 2.2', NULL, 8, 1, '2021-06-26 03:18:07', '2021-06-26 03:18:07', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_features`
--

CREATE TABLE `category_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_type` tinyint(4) NOT NULL COMMENT '1 => text, 2 => color',
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_features`
--

INSERT INTO `category_features` (`id`, `field_title`, `field_type`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Blue', 2, 1, '2021-06-13 03:10:37', '2021-06-13 03:10:37'),
(2, 'Red', 2, 1, '2021-06-13 03:10:37', '2021-06-13 03:10:37'),
(3, 'Width', 1, 2, '2021-06-13 04:07:49', '2021-06-13 04:07:49'),
(4, 'Height', 1, 2, '2021-06-13 04:07:49', '2021-06-13 04:07:49'),
(5, 'Red', 2, 2, '2021-06-13 04:07:50', '2021-06-13 04:07:50'),
(6, 'Yellow', 2, 2, '2021-06-13 04:07:50', '2021-06-13 04:07:50'),
(17, 'Red', 2, 4, '2021-06-18 11:43:47', '2021-06-18 11:43:47'),
(18, 'Blue', 2, 4, '2021-06-18 11:43:47', '2021-06-18 11:43:47'),
(19, 'Black', 2, 4, '2021-06-18 11:43:47', '2021-06-18 11:43:47'),
(20, '60x80', 1, 4, '2021-06-18 11:43:47', '2021-06-18 11:43:47'),
(21, '90x100', 1, 4, '2021-06-18 11:43:47', '2021-06-18 11:43:47'),
(22, 'Size L', 1, 5, '2021-07-10 10:53:26', '2021-07-10 10:53:26'),
(23, 'Size M', 1, 5, '2021-07-10 10:53:26', '2021-07-10 10:53:26'),
(24, 'Size 4x5m', 1, 5, '2021-07-10 10:53:26', '2021-07-10 10:53:26'),
(25, 'Yellow', 2, 7, '2021-08-08 03:22:35', '2021-08-08 03:22:35'),
(26, 'Red', 2, 7, '2021-08-08 03:22:36', '2021-08-08 03:22:36'),
(27, 'Size', 1, 7, '2021-08-08 03:22:36', '2021-08-08 03:22:36'),
(58, 'blue', 2, 15, '2021-09-02 05:31:07', '2021-09-02 05:31:07'),
(59, 'red', 2, 15, '2021-09-02 05:31:07', '2021-09-02 05:31:07'),
(60, 'yellow', 2, 15, '2021-09-02 05:31:07', '2021-09-02 05:31:07'),
(61, '30x50', 1, 15, '2021-09-02 05:31:07', '2021-09-02 05:31:07'),
(62, '50x100', 1, 15, '2021-09-02 05:31:07', '2021-09-02 05:31:07'),
(63, '3x5m', 1, 17, '2021-09-02 05:34:57', '2021-09-02 05:34:57'),
(64, '10x10m', 1, 17, '2021-09-02 05:34:57', '2021-09-02 05:34:57'),
(65, 'green', 2, 17, '2021-09-02 05:34:57', '2021-09-02 05:34:57'),
(66, 'pink', 2, 17, '2021-09-02 05:34:57', '2021-09-02 05:34:57'),
(67, 'black', 2, 17, '2021-09-02 05:34:57', '2021-09-02 05:34:57');

-- --------------------------------------------------------

--
-- Table structure for table `cat_news`
--

CREATE TABLE `cat_news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cat_news`
--

INSERT INTO `cat_news` (`id`, `title`, `description`, `parent_id`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Danh mục tin tức 1', 'Đang cập nhật', NULL, NULL, 1, '2021-06-14 09:37:19', '2021-06-14 09:37:19'),
(2, 'Danh mục tin tức 2', 'Đang cập nhật', NULL, NULL, 1, '2021-06-14 09:37:42', '2021-06-14 09:37:42'),
(3, 'Danh mục tin tức 3', 'Đang cập nhật', NULL, NULL, 1, '2021-06-14 09:38:16', '2021-06-14 09:38:16'),
(4, 'Danh mục tin tức 4', 'Đang cập nhật', NULL, NULL, 1, '2021-06-14 09:38:30', '2021-06-14 09:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'TP HCM', NULL, NULL),
(2, 'Hà Nội', NULL, NULL),
(3, 'Hải Phòng', NULL, NULL),
(4, 'Đà Nẵng', NULL, NULL),
(5, 'An Giang', NULL, NULL),
(6, 'Bà Rịa - Vũng Tàu', NULL, NULL),
(7, 'Bắc Giang', NULL, NULL),
(8, 'Bắc Kạn', NULL, NULL),
(9, 'Bạc Liêu', NULL, NULL),
(10, 'Bắc Ninh', NULL, NULL),
(11, 'Bến Tre', NULL, NULL),
(12, 'Bình Định', NULL, NULL),
(13, 'Bình Dương', NULL, NULL),
(14, 'Bình Phước', NULL, NULL),
(15, 'Bình Thuận', NULL, NULL),
(16, 'Cà Mau', NULL, NULL),
(17, 'Cao Bằng', NULL, NULL),
(18, 'Cần Thơ', NULL, NULL),
(19, 'Đắk Lắk', NULL, NULL),
(20, 'Đắk Nông', NULL, NULL),
(21, 'Điện Biên', NULL, NULL),
(22, 'Đồng Nai', NULL, NULL),
(23, 'Đồng Tháp', NULL, NULL),
(24, 'Gia Lai', NULL, NULL),
(25, 'Hà Giang', NULL, NULL),
(26, 'Hà Nam', NULL, NULL),
(27, 'Hà Tĩnh', NULL, NULL),
(28, 'Hải Dương', NULL, NULL),
(29, 'Hậu Giang', NULL, NULL),
(30, 'Hòa Bình', NULL, NULL),
(31, 'Hưng Yên', NULL, NULL),
(32, 'Khánh Hòa', NULL, NULL),
(33, 'Kiên Giang', NULL, NULL),
(34, 'Kon Tum', NULL, NULL),
(35, 'Lai Châu', NULL, NULL),
(36, 'Lâm Đồng', NULL, NULL),
(37, 'Lạng Sơn', NULL, NULL),
(38, 'Lào Cai', NULL, NULL),
(39, 'Long An', NULL, NULL),
(40, 'Nam Định', NULL, NULL),
(41, 'Nghệ An', NULL, NULL),
(42, 'Ninh Bình', NULL, NULL),
(43, 'Ninh Thuận', NULL, NULL),
(44, 'Phú Thọ', NULL, NULL),
(45, 'Quảng Bình', NULL, NULL),
(46, 'Quảng Nam', NULL, NULL),
(47, 'Quảng Ngãi', NULL, NULL),
(48, 'Quảng Ninh', NULL, NULL),
(49, 'Quảng Trị', NULL, NULL),
(50, 'Sóc Trăng', NULL, NULL),
(51, 'Sơn La', NULL, NULL),
(52, 'Tây Ninh', NULL, NULL),
(53, 'Thái Bình', NULL, NULL),
(54, 'Thái Nguyên', NULL, NULL),
(55, 'Thanh Hóa', NULL, NULL),
(56, 'Thừa Thiên Huế', NULL, NULL),
(57, 'Tiền Giang', NULL, NULL),
(58, 'Trà Vinh', NULL, NULL),
(59, 'Tuyên Quang', NULL, NULL),
(60, 'Vĩnh Long', NULL, NULL),
(61, 'Vĩnh Phúc', NULL, NULL),
(62, 'Yên Bái', NULL, NULL),
(63, 'Phú Yên', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `mobile`, `email`, `message`, `created_at`, `updated_at`, `status`) VALUES
(1, 'cuong', '1234567890', 'cuong@gmail.com', 'test', '2021-06-27 02:47:33', '2021-06-27 02:59:48', 1),
(2, 'do khac lam', '898090', 'lam@gmail.com', 'test queue job', '2021-07-25 11:13:21', '2021-07-25 11:13:21', 0),
(3, 'chau', 'i8980', 'chau@gmail.com', 'queue job', '2021-07-25 11:27:05', '2021-07-25 11:27:05', 0),
(4, 'chau', '90-9-', 'chau@gmail.com', 'test job', '2021-07-25 11:31:39', '2021-07-25 11:31:39', 0),
(5, 'chau', '0-890', 'chau@gmail.com', 'test job', '2021-07-25 11:34:03', '2021-07-25 11:34:03', 0),
(6, 'le minh chau', '0980', 'chau@gmail.com', 'tes job', '2021-07-25 11:40:44', '2021-07-25 11:40:44', 0),
(7, 'chau', '543', 'chau@gmail.com', 'tes job', '2021-07-25 11:51:56', '2021-07-25 11:51:56', 0),
(8, 'do khac lam', '545', 'chau@gmail.com', 'test job', '2021-07-25 12:01:42', '2021-07-25 12:01:42', 0),
(9, 'cuong', '8790', 'cuong@gmail.com', 'jkljkll', '2021-07-25 12:11:12', '2021-07-25 12:11:12', 0),
(10, 'dafda', '454', 'fdafda@gmail.com', 'fdafda', '2021-07-25 12:19:53', '2021-07-25 12:19:53', 0),
(11, 'fdaf', '5432', 'fad@gmail.com', 'fdasfads', '2021-07-25 23:01:52', '2021-07-25 23:01:52', 0),
(12, 'fdafda', '5432', 'dokhaclam@gmail.com', 'fdafad', '2021-07-25 23:06:16', '2021-07-25 23:06:16', 0),
(13, 'fdas', '80980', 'chau@gmail.com', 'dafdfd', '2021-07-25 23:08:19', '2021-07-25 23:08:19', 0),
(14, 'fa', '543', 'chau@gmail.com', 'fadfda', '2021-07-25 23:35:39', '2021-07-25 23:35:39', 0),
(15, 'chau', '653563', 'chau@gmail.com', 'gdsafd', '2021-07-25 23:47:20', '2021-07-25 23:47:20', 0),
(16, 'chau', '343', 'chau@gmail.com', 'est', '2021-07-26 04:11:39', '2021-07-26 04:11:39', 0),
(17, 'do khac lam', 'ddddddddd', 'chau@gmail.com', 'ddddddddddd', '2021-07-26 04:19:17', '2021-07-26 04:19:17', 0),
(18, 'chau le minh', '3333333333', 'admin@admin.com', '3333333333', '2021-07-26 04:25:36', '2021-07-26 04:25:36', 0),
(19, 'chau le minh', '3333333333', 'admin@admin.com', '3333333333', '2021-07-26 04:26:06', '2021-07-26 04:26:06', 0),
(20, 'do khac lam', '454', 'chau@gmail.com', 'ttrtrwtrew', '2021-07-26 04:29:49', '2021-07-26 04:29:49', 0),
(21, 'le minh chau', '56565', 'chau@gmail.com', '65654654', '2021-07-26 04:31:53', '2021-07-26 04:31:53', 0),
(22, 'chau', '4543', 'chau@gmail.com', 'fdafdafda', '2021-07-26 04:38:04', '2021-07-26 04:38:04', 0),
(23, 'cuong', '45454', 'cuong@gmail.com', '545454', '2021-07-26 04:44:33', '2021-07-26 04:44:33', 0),
(24, 'chau le minh', '5656565', 'admin@admin.com', '6565656', '2021-07-26 04:46:35', '2021-07-26 04:46:35', 0),
(25, 'cuong', '4444444444444', 'cuong@gmail.com', '55555555555555', '2021-07-26 05:00:29', '2021-07-26 05:00:29', 0),
(26, 'cuong', '4444444444444', 'cuong@gmail.com', '55555555555555', '2021-07-26 05:01:19', '2021-07-26 05:01:19', 0),
(27, 'cuong', '4444444444444', 'cuong@gmail.com', '55555555555555', '2021-07-26 05:01:56', '2021-07-26 05:01:56', 0),
(28, 'do khac lam', '77777777', 'chau@gmail.com', '6666666666', '2021-07-26 05:05:04', '2021-07-26 05:05:04', 0),
(29, 'do khac lam', '565', 'chau@gmail.com', '6546456', '2021-07-26 05:06:40', '2021-07-26 05:06:40', 0),
(30, 'chau', '454', 'chau@gmail.com', '888888888', '2021-07-26 05:08:12', '2021-07-26 05:08:12', 0),
(31, 'le minh chau', '444', 'chau@gmail.com', '4444', '2021-07-26 05:34:03', '2021-07-26 05:34:03', 0),
(32, 'le minh chau', '444', 'chau@gmail.com', '4444', '2021-07-26 05:34:40', '2021-07-26 05:34:40', 0),
(33, 'le minh chau', '444', 'chau@gmail.com', '4444', '2021-07-26 05:35:38', '2021-07-26 05:35:38', 0),
(34, 'le minh chau', '88888', 'chau@gmail.com', '777777', '2021-07-26 05:44:26', '2021-07-26 05:44:26', 0),
(35, 'chau', '4543', 'chau@gmail.com', '45454', '2021-07-26 09:50:20', '2021-07-26 09:50:20', 0),
(36, 'chau', '33333333333', 'chau@gmail.com', '222222222222222', '2021-07-26 09:53:29', '2021-07-26 09:53:29', 0),
(37, 'cuong', '11111111111', 'cuong@gmail.com', '22222222222', '2021-07-26 09:57:42', '2021-07-26 09:57:42', 0),
(38, 'do khanh thy', '234', 'test@gmail.com', '456', '2021-07-26 10:05:47', '2021-07-26 10:05:47', 0),
(39, 'do khac lam', '5454', 'chau@gmail.com', '54354', '2021-07-27 23:46:28', '2021-07-27 23:46:28', 0),
(40, 'do khac lam', '545', 'chau@gmail.com', '56536', '2021-07-27 23:49:04', '2021-07-27 23:49:04', 0),
(41, 'do khac lam', '545', 'chau@gmail.com', '56536', '2021-07-27 23:50:10', '2021-07-27 23:50:10', 0),
(42, 'chau', '454', 'chau@gmail.com', 'fds', '2021-07-28 00:04:51', '2021-07-28 00:04:51', 0),
(43, 'chau', '454', 'chau@gmail.com', 'fds', '2021-07-28 00:05:15', '2021-07-28 00:05:15', 0),
(44, 'chau', '454', 'chau@gmail.com', 'fds', '2021-07-28 00:06:03', '2021-07-28 00:06:03', 0),
(45, 'chau', '454', 'chau@gmail.com', 'fds', '2021-07-28 00:09:24', '2021-07-28 00:09:24', 0),
(46, 'chau', '454', 'chau@gmail.com', 'fds', '2021-07-28 00:10:25', '2021-07-28 00:10:25', 0),
(47, 'chau', '454', 'chau@gmail.com', 'tret', '2021-07-28 00:11:42', '2021-07-28 00:11:42', 0),
(48, 'chau', '454', 'chau@gmail.com', 'tret', '2021-07-28 00:13:02', '2021-07-28 00:13:02', 0),
(49, 'chau', '454', 'chau@gmail.com', 'tret', '2021-07-28 00:14:22', '2021-07-28 00:14:22', 0),
(50, 'chau', '454', 'chau@gmail.com', 'tret', '2021-07-28 00:14:53', '2021-07-28 00:14:53', 0),
(51, 'chau', '454', 'chau@gmail.com', 'tret', '2021-07-28 00:16:36', '2021-07-28 00:16:36', 0),
(52, 'chau', '454', 'chau@gmail.com', 'tret', '2021-07-28 00:17:30', '2021-07-28 00:17:30', 0),
(53, 'chau', '454', 'chau@gmail.com', 'tret', '2021-07-28 00:18:27', '2021-07-28 00:18:27', 0),
(54, 'chau', '454', 'chau@gmail.com', 'tret', '2021-07-28 00:19:00', '2021-07-28 00:19:00', 0),
(55, 'chau', '454', 'chau@gmail.com', 'tret', '2021-07-28 00:19:39', '2021-07-28 00:19:39', 0),
(56, 'chau', '454', 'chau@gmail.com', 'tret', '2021-07-28 00:20:22', '2021-07-28 00:20:22', 0),
(57, 'chau', '454', 'chau@gmail.com', 'tret', '2021-07-28 00:20:55', '2021-07-28 00:20:55', 0),
(58, 'chau', '454', 'chau@gmail.com', 'tret', '2021-07-28 00:22:05', '2021-07-28 00:22:05', 0),
(59, 'do khac lam', '5425', 'cuong@gmail.com', '54254', '2021-07-28 00:22:53', '2021-07-28 00:22:53', 0),
(60, 'chau le minh', '875', 'chau@gmail.com', '8787587', '2021-07-28 00:25:32', '2021-07-28 00:25:32', 0),
(61, 'do khanh thy', '542', 'test@gmail.com', '542542', '2021-07-28 00:34:11', '2021-07-30 03:05:21', 1),
(62, 'thy shop 5', '09000', 'thy1@gmail.com', 'test shop5', '2021-08-13 03:14:07', '2021-08-13 03:14:07', 0),
(63, 'thy 2 shop 5', '980980980', 'thy2@gmail.com', 'tét', '2021-08-13 03:16:21', '2021-08-13 03:16:21', 0);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `amount`, `amount_type`, `expiry_date`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'KL-10', 10, 'Phần trăm', '2021-08-31', 1, '2021-06-19 21:11:11', '2021-08-09 21:38:33');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_address`
--

CREATE TABLE `delivery_address` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_address`
--

INSERT INTO `delivery_address` (`id`, `user_id`, `user_email`, `name`, `address`, `city`, `state`, `mobile`, `postal_code`, `created_at`, `updated_at`) VALUES
(1, 3, 'chaucuong@gmail.com', 'do chi cuong', '1111', 'TP HCM', '11', '99999', NULL, '2021-06-20 05:39:32', '2021-06-24 10:52:44'),
(2, 2, 'cuonggh@gmail.com', 'cuong do', '123 lạc long quân 111111', 'Hà Nội', '1', '654564111111', NULL, '2021-08-15 09:07:15', '2021-08-15 09:08:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '6fdb06a2-75da-457a-8f4f-965ed0f8fb62', 'database', 'default', '{\"uuid\":\"6fdb06a2-75da-457a-8f4f-965ed0f8fb62\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":10:{s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'ErrorException: Undefined variable: request in C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php:41\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php(41): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'C:\\\\xampp\\\\htdocs...\', 41, Array)\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 {main}', '2021-07-25 11:18:24'),
(2, '839a72b6-9474-4ef1-879b-4494f0653a05', 'database', 'default', '{\"uuid\":\"839a72b6-9474-4ef1-879b-4494f0653a05\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":11:{s:10:\\\"\\u0000*\\u0000request\\\";a:5:{s:6:\\\"_token\\\";s:40:\\\"eKAwBc6nLeYnAApLobToaUk0CSkpX6WJywfPJ1az\\\";s:4:\\\"name\\\";s:4:\\\"chau\\\";s:5:\\\"email\\\";s:14:\\\"chau@gmail.com\\\";s:6:\\\"mobile\\\";s:5:\\\"0-890\\\";s:7:\\\"message\\\";s:8:\\\"test job\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Error: Call to a member function get() on array in C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php:42\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#6 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#10 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#14 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 {main}', '2021-07-25 11:37:07'),
(3, '990d95c0-7d41-4758-a24d-320d18f5574c', 'database', 'default', '{\"uuid\":\"990d95c0-7d41-4758-a24d-320d18f5574c\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":11:{s:7:\\\"request\\\";a:5:{s:6:\\\"_token\\\";s:40:\\\"eKAwBc6nLeYnAApLobToaUk0CSkpX6WJywfPJ1az\\\";s:4:\\\"name\\\";s:4:\\\"chau\\\";s:5:\\\"email\\\";s:14:\\\"chau@gmail.com\\\";s:6:\\\"mobile\\\";s:3:\\\"543\\\";s:7:\\\"message\\\";s:7:\\\"tes job\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Error: Call to a member function get() on array in C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php:43\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#6 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#10 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#14 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 {main}', '2021-07-25 11:55:00'),
(4, '5afdbd53-8882-48cd-858d-42999c1a2f41', 'database', 'default', '{\"uuid\":\"5afdbd53-8882-48cd-858d-42999c1a2f41\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":11:{s:7:\\\"request\\\";a:5:{s:6:\\\"_token\\\";s:40:\\\"eKAwBc6nLeYnAApLobToaUk0CSkpX6WJywfPJ1az\\\";s:4:\\\"name\\\";s:11:\\\"do khac lam\\\";s:5:\\\"email\\\";s:14:\\\"chau@gmail.com\\\";s:6:\\\"mobile\\\";s:3:\\\"545\\\";s:7:\\\"message\\\";s:8:\\\"test job\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Error: Call to a member function get() on array in C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php:43\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#6 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#10 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#14 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 {main}', '2021-07-25 12:04:43'),
(5, '2e870e5b-be6c-4019-b8f8-2027c683b53e', 'database', 'default', '{\"uuid\":\"2e870e5b-be6c-4019-b8f8-2027c683b53e\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":10:{s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_RfcComplianceException: Address in mailbox given [dokhaclam] does not comply with RFC 2822, 3.6.2. in C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php:355\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php(272): Swift_Mime_Headers_MailboxHeader->assertValidAddress(\'dokhaclam\')\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php(117): Swift_Mime_Headers_MailboxHeader->normalizeMailboxes(Array)\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php(74): Swift_Mime_Headers_MailboxHeader->setNameAddresses(Array)\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\SimpleMimeEntity.php(600): Swift_Mime_Headers_MailboxHeader->setFieldBodyModel(Array)\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\SimpleMessage.php(213): Swift_Mime_SimpleMimeEntity->setHeaderFieldModel(\'From\', Array)\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Message.php(50): Swift_Mime_SimpleMessage->setFrom(\'dokhaclam\', NULL)\n#6 C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php(48): Illuminate\\Mail\\Message->from(\'dokhaclam\')\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(271): App\\Jobs\\SendWelcomeEmail->App\\Jobs\\{closure}(Object(Illuminate\\Mail\\Message))\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(519): Illuminate\\Mail\\Mailer->send(\'mail\', Array, Object(Closure))\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(261): Illuminate\\Mail\\MailManager->__call(\'send\', Array)\n#10 C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php(50): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#34 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#35 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#36 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#37 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#38 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 {main}', '2021-07-25 12:14:16'),
(6, '751748a2-5d7f-4e98-91e3-8ef160be0fd6', 'database', 'default', '{\"uuid\":\"751748a2-5d7f-4e98-91e3-8ef160be0fd6\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":10:{s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2021-07-26 06:52:20.639243\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Illuminate\\Queue\\MaxAttemptsExceededException: App\\Jobs\\SendWelcomeEmail has been attempted too many times or run too long. The job may have previously timed out. in C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php:717\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(486): Illuminate\\Queue\\Worker->maxAttemptsExceededException(Object(Illuminate\\Queue\\Jobs\\DatabaseJob))\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(400): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), 1)\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#6 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#10 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#14 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#19 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 {main}', '2021-07-26 04:17:50');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(7, 'f6e47085-9a0d-4c11-9e34-2ff1ebc209b6', 'database', 'default', '{\"uuid\":\"f6e47085-9a0d-4c11-9e34-2ff1ebc209b6\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":10:{s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_RfcComplianceException: Address in mailbox given [dokhaclam] does not comply with RFC 2822, 3.6.2. in C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php:355\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php(272): Swift_Mime_Headers_MailboxHeader->assertValidAddress(\'dokhaclam\')\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php(117): Swift_Mime_Headers_MailboxHeader->normalizeMailboxes(Array)\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php(74): Swift_Mime_Headers_MailboxHeader->setNameAddresses(Array)\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\SimpleMimeEntity.php(600): Swift_Mime_Headers_MailboxHeader->setFieldBodyModel(Array)\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\SimpleMessage.php(213): Swift_Mime_SimpleMimeEntity->setHeaderFieldModel(\'From\', Array)\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Message.php(50): Swift_Mime_SimpleMessage->setFrom(\'dokhaclam\', NULL)\n#6 C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php(50): Illuminate\\Mail\\Message->from(\'dokhaclam\')\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(271): App\\Jobs\\SendWelcomeEmail->App\\Jobs\\{closure}(Object(Illuminate\\Mail\\Message))\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(519): Illuminate\\Mail\\Mailer->send(\'mail\', Array, Object(Closure))\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(261): Illuminate\\Mail\\MailManager->__call(\'send\', Array)\n#10 C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php(52): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#34 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#35 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#36 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#37 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#38 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 {main}', '2021-07-26 04:19:21'),
(8, '3ba4f233-95a4-4119-b420-65d9fcff0e51', 'database', 'default', '{\"uuid\":\"3ba4f233-95a4-4119-b420-65d9fcff0e51\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":10:{s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Swift_RfcComplianceException: Address in mailbox given [dokhaclam] does not comply with RFC 2822, 3.6.2. in C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php:355\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php(272): Swift_Mime_Headers_MailboxHeader->assertValidAddress(\'dokhaclam\')\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php(117): Swift_Mime_Headers_MailboxHeader->normalizeMailboxes(Array)\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\Headers\\MailboxHeader.php(74): Swift_Mime_Headers_MailboxHeader->setNameAddresses(Array)\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\SimpleMimeEntity.php(600): Swift_Mime_Headers_MailboxHeader->setFieldBodyModel(Array)\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\swiftmailer\\swiftmailer\\lib\\classes\\Swift\\Mime\\SimpleMessage.php(213): Swift_Mime_SimpleMimeEntity->setHeaderFieldModel(\'From\', Array)\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Message.php(50): Swift_Mime_SimpleMessage->setFrom(\'dokhaclam\', NULL)\n#6 C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php(50): Illuminate\\Mail\\Message->from(\'dokhaclam\')\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(271): App\\Jobs\\SendWelcomeEmail->App\\Jobs\\{closure}(Object(Illuminate\\Mail\\Message))\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(519): Illuminate\\Mail\\Mailer->send(\'mail\', Array, Object(Closure))\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(261): Illuminate\\Mail\\MailManager->__call(\'send\', Array)\n#10 C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php(52): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#34 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#35 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#36 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#37 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#38 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#39 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#41 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#42 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 {main}', '2021-07-26 04:29:51'),
(9, 'a09a5e2e-471f-400b-90ec-550c39589680', 'database', 'default', '{\"uuid\":\"a09a5e2e-471f-400b-90ec-550c39589680\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":11:{s:7:\\\"request\\\";a:5:{s:6:\\\"_token\\\";s:40:\\\"wKhRbb1rABz3u3K2eus70Xzns8ImdLpMKI33HxC7\\\";s:4:\\\"name\\\";s:5:\\\"cuong\\\";s:5:\\\"email\\\";s:15:\\\"cuong@gmail.com\\\";s:6:\\\"mobile\\\";s:5:\\\"45454\\\";s:7:\\\"message\\\";s:6:\\\"545454\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'ErrorException: Undefined variable: request in C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php:45\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php(45): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'C:\\\\xampp\\\\htdocs...\', 45, Array)\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 {main}', '2021-07-26 04:44:34'),
(10, '9e9437d0-1ccd-44a8-b147-778e7f0f7ae9', 'database', 'default', '{\"uuid\":\"9e9437d0-1ccd-44a8-b147-778e7f0f7ae9\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":11:{s:7:\\\"request\\\";a:5:{s:6:\\\"_token\\\";s:40:\\\"wKhRbb1rABz3u3K2eus70Xzns8ImdLpMKI33HxC7\\\";s:4:\\\"name\\\";s:12:\\\"chau le minh\\\";s:5:\\\"email\\\";s:15:\\\"admin@admin.com\\\";s:6:\\\"mobile\\\";s:7:\\\"5656565\\\";s:7:\\\"message\\\";s:7:\\\"6565656\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Error: Call to a member function get() on array in C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php:45\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#6 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#10 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#14 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 {main}', '2021-07-26 04:46:37'),
(11, '6756ab64-1f83-4c0e-b222-8ce64cb6936b', 'database', 'default', '{\"uuid\":\"6756ab64-1f83-4c0e-b222-8ce64cb6936b\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":11:{s:10:\\\"\\u0000*\\u0000request\\\";a:5:{s:6:\\\"_token\\\";s:40:\\\"wKhRbb1rABz3u3K2eus70Xzns8ImdLpMKI33HxC7\\\";s:4:\\\"name\\\";s:11:\\\"do khac lam\\\";s:5:\\\"email\\\";s:14:\\\"chau@gmail.com\\\";s:6:\\\"mobile\\\";s:8:\\\"77777777\\\";s:7:\\\"message\\\";s:10:\\\"6666666666\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Error: Call to a member function get() on array in C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php:45\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#6 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#10 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#14 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 {main}', '2021-07-26 05:05:06');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(12, 'c15b7aff-5734-4cce-a6e4-7c1595c3c78f', 'database', 'default', '{\"uuid\":\"c15b7aff-5734-4cce-a6e4-7c1595c3c78f\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":11:{s:10:\\\"\\u0000*\\u0000request\\\";a:5:{s:6:\\\"_token\\\";s:40:\\\"wKhRbb1rABz3u3K2eus70Xzns8ImdLpMKI33HxC7\\\";s:4:\\\"name\\\";s:11:\\\"do khac lam\\\";s:5:\\\"email\\\";s:14:\\\"chau@gmail.com\\\";s:6:\\\"mobile\\\";s:3:\\\"565\\\";s:7:\\\"message\\\";s:7:\\\"6546456\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'ErrorException: Undefined variable: email in C:\\xampp\\htdocs\\shop3\\storage\\framework\\views\\7bc192a4425607ce859272aef3ecd4a97337cfed.php:8\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\storage\\framework\\views\\7bc192a4425607ce859272aef3ecd4a97337cfed.php(8): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'C:\\\\xampp\\\\htdocs...\', 8, Array)\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Filesystem\\Filesystem.php(107): require(\'C:\\\\xampp\\\\htdocs...\')\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Filesystem\\Filesystem.php(108): Illuminate\\Filesystem\\Filesystem::Illuminate\\Filesystem\\{closure}()\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\PhpEngine.php(58): Illuminate\\Filesystem\\Filesystem->getRequire(\'C:\\\\xampp\\\\htdocs...\', Array)\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\CompilerEngine.php(61): Illuminate\\View\\Engines\\PhpEngine->evaluatePath(\'C:\\\\xampp\\\\htdocs...\', Array)\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\facade\\ignition\\src\\Views\\Engines\\CompilerEngine.php(37): Illuminate\\View\\Engines\\CompilerEngine->get(\'C:\\\\xampp\\\\htdocs...\', Array)\n#6 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(139): Facade\\Ignition\\Views\\Engines\\CompilerEngine->get(\'C:\\\\xampp\\\\htdocs...\', Array)\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(122): Illuminate\\View\\View->getContents()\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(91): Illuminate\\View\\View->renderContents()\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(382): Illuminate\\View\\View->render()\n#10 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(355): Illuminate\\Mail\\Mailer->renderView(\'mail\', Array)\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(273): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'mail\', NULL, NULL, Array)\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(519): Illuminate\\Mail\\Mailer->send(\'mail\', Array, Object(Closure))\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(261): Illuminate\\Mail\\MailManager->__call(\'send\', Array)\n#14 C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php(50): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#35 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#37 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#41 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 {main}\n\nNext Facade\\Ignition\\Exceptions\\ViewException: Undefined variable: email (View: C:\\xampp\\htdocs\\shop3\\resources\\views\\mail.blade.php) in C:\\xampp\\htdocs\\shop3\\resources\\views/mail.blade.php:8\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\resources\\views/mail.blade.php(8): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined varia...\', \'C:\\\\xampp\\\\htdocs...\', 8, Array)\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Filesystem\\Filesystem.php(107): require(\'C:\\\\xampp\\\\htdocs...\')\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Filesystem\\Filesystem.php(108): Illuminate\\Filesystem\\Filesystem::Illuminate\\Filesystem\\{closure}()\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\PhpEngine.php(58): Illuminate\\Filesystem\\Filesystem->getRequire(\'C:\\\\xampp\\\\htdocs...\', Array)\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\CompilerEngine.php(61): Illuminate\\View\\Engines\\PhpEngine->evaluatePath(\'C:\\\\xampp\\\\htdocs...\', Array)\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\facade\\ignition\\src\\Views\\Engines\\CompilerEngine.php(37): Illuminate\\View\\Engines\\CompilerEngine->get(\'C:\\\\xampp\\\\htdocs...\', Array)\n#6 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(139): Facade\\Ignition\\Views\\Engines\\CompilerEngine->get(\'C:\\\\xampp\\\\htdocs...\', Array)\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(122): Illuminate\\View\\View->getContents()\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(91): Illuminate\\View\\View->renderContents()\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(382): Illuminate\\View\\View->render()\n#10 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(355): Illuminate\\Mail\\Mailer->renderView(\'mail\', Array)\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(273): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'mail\', NULL, NULL, Array)\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\MailManager.php(519): Illuminate\\Mail\\Mailer->send(\'mail\', Array, Object(Closure))\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(261): Illuminate\\Mail\\MailManager->__call(\'send\', Array)\n#14 C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php(50): Illuminate\\Support\\Facades\\Facade::__callStatic(\'send\', Array)\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#35 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#37 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#41 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 {main}', '2021-07-26 05:06:43'),
(13, 'e8e643ed-1df8-4604-be4c-cefc74ee933e', 'database', 'default', '{\"uuid\":\"e8e643ed-1df8-4604-be4c-cefc74ee933e\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":11:{s:10:\\\"\\u0000*\\u0000request\\\";a:5:{s:6:\\\"_token\\\";s:40:\\\"wKhRbb1rABz3u3K2eus70Xzns8ImdLpMKI33HxC7\\\";s:4:\\\"name\\\";s:4:\\\"chau\\\";s:5:\\\"email\\\";s:14:\\\"chau@gmail.com\\\";s:6:\\\"mobile\\\";s:3:\\\"454\\\";s:7:\\\"message\\\";s:9:\\\"888888888\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'ErrorException: Trying to get property \'name\' of non-object in C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php:45\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php(45): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Trying to get p...\', \'C:\\\\xampp\\\\htdocs...\', 45, Array)\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 {main}', '2021-07-26 05:08:13'),
(14, '18e527b3-3513-4085-9c31-6fe19adc86a0', 'database', 'default', '{\"uuid\":\"18e527b3-3513-4085-9c31-6fe19adc86a0\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":11:{s:10:\\\"\\u0000*\\u0000request\\\";a:4:{s:5:\\\"email\\\";s:14:\\\"chau@gmail.com\\\";s:4:\\\"name\\\";s:12:\\\"le minh chau\\\";s:6:\\\"mobile\\\";s:5:\\\"88888\\\";s:10:\\\"user_query\\\";s:6:\\\"777777\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'ErrorException: Undefined index: message in C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php:48\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php(48): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined index...\', \'C:\\\\xampp\\\\htdocs...\', 48, Array)\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 {main}', '2021-07-26 05:44:29'),
(15, '9e5cc5ec-85b8-42fc-89ad-5c3e0ba4e7dd', 'database', 'default', '{\"uuid\":\"9e5cc5ec-85b8-42fc-89ad-5c3e0ba4e7dd\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":11:{s:10:\\\"\\u0000*\\u0000request\\\";a:4:{s:5:\\\"email\\\";s:14:\\\"chau@gmail.com\\\";s:4:\\\"name\\\";s:4:\\\"chau\\\";s:6:\\\"mobile\\\";s:4:\\\"4543\\\";s:10:\\\"user_query\\\";s:5:\\\"45454\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'ErrorException: Undefined index: message in C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php:48\nStack trace:\n#0 C:\\xampp\\htdocs\\shop3\\app\\Jobs\\SendWelcomeEmail.php(48): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined index...\', \'C:\\\\xampp\\\\htdocs...\', 48, Array)\n#1 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendWelcomeEmail->handle()\n#2 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#8 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#9 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(118): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#11 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#12 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#13 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#15 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(410): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(360): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(611): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#27 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Command\\Command.php(256): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(971): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(290): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\shop3\\vendor\\symfony\\console\\Application.php(166): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(92): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\shop3\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 C:\\xampp\\htdocs\\shop3\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 {main}', '2021-07-26 09:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"168f660c-03e4-492c-b3e6-9b2962caa127\",\"displayName\":\"App\\\\Listeners\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:22:\\\"App\\\\Listeners\\\\SendMail\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\LoginHistory\\\":2:{s:7:\\\"request\\\";a:4:{s:5:\\\"email\\\";s:14:\\\"thy1@gmail.com\\\";s:4:\\\"name\\\";s:10:\\\"thy shop 5\\\";s:6:\\\"mobile\\\";s:5:\\\"09000\\\";s:10:\\\"user_query\\\";s:10:\\\"test shop5\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1628849649, 1628849649),
(2, 'default', '{\"uuid\":\"ca5707e9-9694-4bb5-a616-929af9fbadc3\",\"displayName\":\"App\\\\Listeners\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":19:{s:5:\\\"class\\\";s:22:\\\"App\\\\Listeners\\\\SendMail\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\LoginHistory\\\":2:{s:7:\\\"request\\\";a:4:{s:5:\\\"email\\\";s:14:\\\"thy2@gmail.com\\\";s:4:\\\"name\\\";s:12:\\\"thy 2 shop 5\\\";s:6:\\\"mobile\\\";s:9:\\\"980980980\\\";s:10:\\\"user_query\\\";s:4:\\\"t\\u00e9t\\\";}s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1628849781, 1628849781);

-- --------------------------------------------------------

--
-- Table structure for table `login_history`
--

CREATE TABLE `login_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_history`
--

INSERT INTO `login_history` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'le thi minh chau', 'chau@gmail.com', '2021-07-27 22:29:12', '2021-07-27 22:29:12'),
(2, 'le thi minh chau', 'chau@gmail.com', '2021-07-27 22:30:03', '2021-07-27 22:30:03'),
(3, 'cuong', 'cuong@gmail.com', '2021-07-27 23:18:12', '2021-07-27 23:18:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_15_074346_create_categories_table', 1),
(5, '2021_04_15_074445_create_category_features_table', 1),
(6, '2021_04_15_074458_create_brands_table', 1),
(7, '2021_04_15_074509_create_products_table', 1),
(8, '2021_04_15_074520_create_product_gallery_table', 1),
(9, '2021_04_15_074532_create_product_features_table', 1),
(10, '2021_04_15_074547_create_shopping_cart_table', 1),
(11, '2021_04_15_074600_create_shipping_addresses_table', 1),
(12, '2021_04_15_074611_create_payment_methods_table', 1),
(13, '2021_04_15_074625_create_orders_table', 1),
(14, '2021_04_15_075024_create_order_details_table', 1),
(15, '2021_04_15_075358_add_is_super_admin_to_users_table', 1),
(16, '2021_04_15_081910_create_sliders_table', 1),
(17, '2021_04_15_082817_create_tags_table', 1),
(18, '2021_04_15_083020_create_product_tag_table', 1),
(19, '2021_04_15_154917_create_reviews_table', 1),
(20, '2021_04_15_180349_create_permission_tables', 1),
(21, '2021_04_15_181942_create_settings_table', 1),
(22, '2021_04_17_083013_add_column_to_users_table', 1),
(23, '2021_04_17_092235_add_column_image_to_users_table', 1),
(24, '2021_04_20_174144_add_column_is_active_to_categories_tables', 1),
(25, '2021_04_22_064327_add_column_is_active_to_brands_table', 1),
(26, '2021_04_22_174304_add_column_is_active_to_sliders_table', 1),
(27, '2021_04_22_174443_add_column_names_to_sliders_table', 1),
(28, '2021_04_23_160522_add_colunm_image_to_categories_table', 1),
(29, '2021_04_23_160615_add_colunm_is_active_to_settings_table', 1),
(30, '2021_04_23_170446_add_colunm_type_to_settings_table', 1),
(31, '2021_04_24_074228_add_column_is_active_to_products_table', 1),
(32, '2021_04_24_095459_add_column_image_to_products_table', 1),
(33, '2021_04_27_171122_create_coupon_table', 1),
(34, '2021_05_01_100133_add_column_namefour_to_sliders_table', 1),
(35, '2021_05_06_082553_add_column_new_to_products_table', 1),
(36, '2021_05_06_162729_add_column_additional_to_products_table', 1),
(37, '2021_05_07_075039_create_cart_table', 1),
(38, '2021_05_13_173237_add_column_info_address_to_users_table', 1),
(39, '2021_05_13_173711_add_column_mobile_to_users_table', 1),
(40, '2021_05_13_193054_create_city_table', 1),
(41, '2021_05_14_160953_create_delivery_address_table', 1),
(42, '2021_05_17_050030_add_column_extra_to_orders_table', 1),
(43, '2021_05_17_051803_create_orders_products_table', 1),
(44, '2021_05_17_100040_add_column_color_to_orders_products_table', 1),
(45, '2021_05_18_102058_add_column_ma_order_to_orders_table', 1),
(46, '2021_05_19_111035_add_column_rating_to_products_table', 1),
(47, '2021_05_19_124642_add_column_status_to_reviews_table', 1),
(48, '2021_05_25_103953_create_cat_news_controllers_table', 1),
(49, '2021_05_25_171301_create_news_table', 1),
(50, '2021_05_26_093117_create_taggable_table', 1),
(51, '2021_05_28_051539_create_contacts_table', 1),
(52, '2021_05_30_173850_add_column_noi_bat_to_products_table', 1),
(53, '2021_05_30_174008_add_column_product_id_to_orders_table', 1),
(54, '2021_06_03_123342_add_column_status_to_contacts_table', 1),
(55, '2021_06_03_174731_create_newsletters_table', 1),
(56, '2021_06_03_184827_add_column_status_to_newsletters_table', 1),
(57, '2021_06_12_092146_add_column_price_bigint_to_products_table', 2),
(58, '2021_06_14_172642_create_banners_table', 3),
(59, '2021_06_21_074625_create_orders_table', 4),
(60, '2021_06_21_102058_add_column_ma_order_to_orders_table', 5),
(61, '2021_06_25_174738_add_column_note_to_orders_table', 6),
(62, '2021_07_25_172454_create_jobs_table', 7),
(63, '2021_07_27_041442_create_notifications_table', 8),
(64, '2021_07_28_044206_create_login_history_table', 9),
(65, '2021_07_30_060221_add_column_nametwo_to_banners_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `cat_news_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `user_id`, `cat_news_id`, `title`, `description`, `content`, `image_path`, `image_name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Tin tức 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat. Duis aute irure dolor in rep rehenderit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat.', '<div class=\"blog-post-content-inner\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat. Duis aute irure dolor in rep rehenderit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat.</p>\r\n</div>\r\n<div class=\"single-post-content\">\r\n<p class=\"quate-speech\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Duis aute irure dolor in rep rehenderit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat. Duis aute irure dolor in rep rehenderit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat. Duis aute irure dolor in rep rehenderit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n<p><img src=\"/shop3/public/storage/photos/1/news/blog-13.jpg\" alt=\"\" width=\"450\" height=\"277\" /></p>\r\n<p>&nbsp;</p>\r\n</div>', NULL, 'Tin_tức_1.jpg', 1, '2021-06-14 09:46:25', '2021-06-14 09:47:44'),
(2, 1, 2, 'Thiết kế miễn phí', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat. Duis aute irure dolor in rep rehenderit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua', '<p>&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat. Duis aute irure dolor in rep rehenderit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat. Duis aute irure dolor in rep rehenderit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</p>', NULL, 'Tin_tức_2.jpg', 1, '2021-06-14 09:48:45', '2021-08-16 04:15:22'),
(3, 1, 3, 'Tin tức 3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat. Duis aute irure dolor in rep rehenderit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua.', '<p><br />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat. Duis aute irure dolor in rep rehenderit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. &nbsp; &nbsp;&nbsp;</p>', NULL, 'Tin_tức_3.jpg', 1, '2021-06-14 09:49:57', '2021-06-26 21:36:33'),
(4, 1, 4, 'Tin tức 4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat. Duis aute irure dolor in rep rehenderit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua.', '<p><br />Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit, do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim adminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commodo consequat. Duis aute irure dolor in rep rehenderit. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiumod tempor incididunt ut labore et dolore magna aliqua. &nbsp; &nbsp;&nbsp;</p>', NULL, 'Tin_tức_4.jpg', 1, '2021-06-14 09:50:30', '2021-06-26 21:36:46'),
(5, 1, 1, 'Giới thiệu', 'Đang cập nhật mô tả', '<p>nội dung đang cập nhật</p>\r\n<p><img src=\"/shop3/public/storage/photos/1/news/blog-13.jpg\" alt=\"\" width=\"450\" height=\"277\" /></p>', NULL, 'Giới_thiệu.jpg', 1, '2021-06-26 21:07:26', '2021-06-26 21:07:26');

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`, `status`) VALUES
(1, 'lam0@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(2, 'lam1@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(3, 'lam2@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(4, 'lam3@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(5, 'lam4@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(6, 'lam5@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(7, 'lam6@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(8, 'lam7@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(9, 'lam8@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(10, 'lam9@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(11, 'lam10@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(12, 'lam11@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(13, 'lam12@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(14, 'lam13@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(15, 'lam14@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(16, 'lam15@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(17, 'lam16@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(18, 'lam17@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(19, 'lam18@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(20, 'lam19@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(21, 'lam20@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(22, 'lam21@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(23, 'lam22@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(24, 'lam23@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(25, 'lam24@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(26, 'lam25@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(27, 'lam26@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(28, 'lam27@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(29, 'lam28@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(30, 'lam29@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(31, 'lam30@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(32, 'lam31@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(33, 'lam32@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(34, 'lam33@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(35, 'lam34@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(36, 'lam35@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(37, 'lam36@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(38, 'lam37@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(39, 'lam38@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(40, 'lam39@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(41, 'lam40@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(42, 'lam41@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(43, 'lam42@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(44, 'lam43@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(45, 'lam44@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(46, 'lam45@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(47, 'lam46@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(48, 'lam47@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(49, 'lam48@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(50, 'lam49@gmail.com', '2021-07-26 10:08:07', '2021-07-26 10:08:07', 0),
(51, 'thyletter@gmail.com', '2021-08-13 03:29:51', '2021-08-13 03:29:51', 0),
(52, 'thypopup@gmail.com', '2021-08-13 04:53:23', '2021-08-13 04:53:23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('1f7cd6a5-2b31-46c5-bd46-4afe774dbc8d', 'App\\Notifications\\OffersNotification', 'App\\Models\\User', 3, '{\"data\":\"KL-1QKCfCA2rKB\"}', '2021-07-26 23:23:39', '2021-07-26 23:07:18', '2021-07-26 23:23:39'),
('2c4a93ae-57be-43ee-846a-99ea8bea4983', 'App\\Notifications\\OffersNotification', 'App\\Models\\User', 2, '{\"data\":\"KL-8bIsg8RYWWq\"}', '2021-07-27 03:34:28', '2021-07-27 03:11:02', '2021-07-27 03:34:28'),
('53c99deb-2ade-4258-954e-533f3caf510e', 'App\\Notifications\\OffersNotification', 'App\\Models\\User', 3, '{\"data\":\"KL-G7kIEYJ7hoa\"}', '2021-07-26 23:23:39', '2021-07-26 23:02:01', '2021-07-26 23:23:39'),
('cc0e104c-c17b-4683-8380-2f75692a487a', 'App\\Notifications\\OffersNotification', 'App\\Models\\User', 2, '{\"data\":\"KL-ZrQ7qtOsaqM\"}', NULL, '2021-07-27 03:08:15', '2021-07-27 03:08:15');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `total_price` bigint(20) NOT NULL,
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charges` int(11) DEFAULT NULL,
  `coupon_code` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_amount` int(11) DEFAULT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ma_order` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status`, `total_price`, `user_email`, `name`, `address`, `city`, `state`, `mobile`, `postal_code`, `shipping_charges`, `coupon_code`, `coupon_amount`, `payment_method`, `created_at`, `updated_at`, `ma_order`, `product_id`, `note`) VALUES
(3, 2, 'Đang xử lý', 21950000, 'cuong@gmail.com', 'cuong', '345', 'TP HCM', '3', '0909090', NULL, 50000, '', 0, 'Sau khi nhận hàng', '2021-08-10 09:40:12', '2021-08-10 09:40:12', 'KL-rixrYJrvWGc', NULL, 'chus'),
(4, 2, 'Đang xử lý', 7321500, 'cuong@gmail.com', 'cuong', '345', 'TP HCM', '3', '0909090', NULL, 0, 'KL-10', 813500, 'Sau khi nhận hàng', '2021-08-10 09:43:32', '2021-08-10 09:43:32', 'KL-9lGRArBVC7r', NULL, NULL),
(5, 2, 'Đang xử lý', 50000, 'cuong@gmail.com', 'cuong', '345', 'TP HCM', '3', '0909090', NULL, 0, '', 0, 'Sau khi nhận hàng', '2021-08-10 09:55:27', '2021-08-10 09:55:27', 'KL-hbnWXLHk5gh', NULL, NULL),
(6, 2, 'Đang xử lý', 4035000, 'cuong@gmail.com', 'cuong', '345', 'TP HCM', '3', '0909090', NULL, 0, '', 0, 'Sau khi nhận hàng', '2021-08-10 10:02:37', '2021-08-10 10:02:37', 'KL-5gvkbacPyWy', NULL, NULL),
(7, 3, 'Đang xử lý', 11171000, 'chau@gmail.com', 'le thi minh chau', '111/222', 'Hà Nội', '1111', '999999', NULL, 0, '', 0, 'Sau khi nhận hàng', '2021-08-13 05:03:15', '2021-08-13 05:03:15', 'KL-cvyLlxmeEzT', NULL, NULL),
(8, 3, 'Đang xử lý', 100000000, 'chau@gmail.com', 'le thi minh chau', '111/222', 'Hà Nội', '1111', '999999', NULL, 0, '', 0, 'Sau khi nhận hàng', '2021-08-13 11:11:18', '2021-08-13 11:11:18', 'KL-3VhvYE1A8hE', NULL, NULL),
(9, 3, 'Đang xử lý', 100000000, 'chau@gmail.com', 'le thi minh chau', '111/222', 'Hà Nội', '1111', '999999', NULL, 0, '', 0, 'Sau khi nhận hàng', '2021-08-13 11:12:19', '2021-08-13 11:12:19', 'KL-WqOM9BDcWXF', NULL, NULL),
(10, 3, 'Đang xử lý', 355050000, 'chau@gmail.com', 'le thi minh chau', '111/222', 'Hà Nội', '1111', '999999', NULL, 0, '', 0, 'Sau khi nhận hàng', '2021-08-13 11:14:07', '2021-08-13 11:14:07', 'KL-i3dgx0u3ni5', NULL, NULL),
(11, 3, 'Đang xử lý', 1500000000, 'chau@gmail.com', 'le thi minh chau', '111/222', 'Hà Nội', '1111', '999999', NULL, 0, '', 0, 'Sau khi nhận hàng', '2021-08-13 11:15:38', '2021-08-13 11:15:38', 'KL-0qvbNF7QKHf', NULL, NULL),
(12, 3, 'Đang xử lý', 140000000, 'chau@gmail.com', 'le thi minh chau', '111/222', 'Hà Nội', '1111', '999999', NULL, 0, '', 0, 'Sau khi nhận hàng', '2021-08-13 11:16:39', '2021-08-13 11:16:39', 'KL-YroYPCFQXnv', NULL, NULL),
(13, 3, 'Đang xử lý', 900000, 'chau@gmail.com', 'le thi minh chau', '111/222', 'Hà Nội', '1111', '999999', NULL, 0, '', 0, 'Sau khi nhận hàng', '2021-09-02 05:02:04', '2021-09-02 05:02:04', 'KL-03nhuDFceDn', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` bigint(20) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_color` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`id`, `order_id`, `user_id`, `product_id`, `product_code`, `product_name`, `product_size`, `product_price`, `product_qty`, `created_at`, `updated_at`, `product_color`) VALUES
(1, 3, 2, 9, 'KL-Ge-7', 'Băng ghế gỗ', '', 2000000, 10, '2021-08-10 09:40:12', '2021-08-10 09:40:12', ''),
(2, 3, 2, 16, 'KL-GE-3', 'Ghế không tay vàng', '', 200000, 10, '2021-08-10 09:40:12', '2021-08-10 09:40:12', ''),
(3, 4, 2, 12, 'KL-GE-5', 'Ghế bành', '', 810000, 10, '2021-08-10 09:43:32', '2021-08-10 09:43:32', ''),
(4, 4, 2, 18, 'KL-GE-1', 'Ghế nhựa trắng', '30x50', 3500, 10, '2021-08-10 09:43:32', '2021-08-10 09:43:32', ''),
(5, 5, 2, 18, 'KL-GE-1', 'Ghế nhựa trắng', '50x100', 5000, 10, '2021-08-10 09:55:28', '2021-08-10 09:55:28', ''),
(6, 6, 2, 18, 'KL-GE-1', 'Ghế nhựa trắng', '30x50', 3500, 10, '2021-08-10 10:02:37', '2021-08-10 10:02:37', ''),
(7, 6, 2, 18, 'KL-GE-1', 'Ghế nhựa trắng', '', 400000, 10, '2021-08-10 10:02:37', '2021-08-10 10:02:37', 'Red'),
(8, 7, 3, 6, 'KL-GE-8', 'Ghế gỗ đẹp', '', 450000, 1, '2021-08-13 05:03:15', '2021-08-13 05:03:15', ''),
(9, 7, 3, 12, 'KL-GE-5', 'Ghế bành', '', 810000, 1, '2021-08-13 05:03:15', '2021-08-13 05:03:15', ''),
(10, 7, 3, 7, 'KL-SO-5', 'Sofa da', '', 2800000, 1, '2021-08-13 05:03:15', '2021-08-13 05:03:15', ''),
(11, 7, 3, 8, 'KL-SO-3', 'Sofa ngồi', '', 7101000, 1, '2021-08-13 05:03:15', '2021-08-13 05:03:15', ''),
(12, 7, 3, 4, 'KL-SO-7', 'Sofa ghế sợi vải', '', 10000, 1, '2021-08-13 05:03:15', '2021-08-13 05:03:15', ''),
(13, 9, 3, 9, 'KL-Ge-7', 'Băng ghế gỗ', '', 2000000, 50, '2021-08-13 11:12:19', '2021-08-13 11:12:19', ''),
(14, 10, 3, 8, 'KL-SO-3', 'Sofa ngồi', '', 7101000, 50, '2021-08-13 11:14:07', '2021-08-13 11:14:07', ''),
(15, 11, 3, 10, 'KL-SO-4', 'Sofa vàng', '', 30000000, 50, '2021-08-13 11:15:38', '2021-08-13 11:15:38', ''),
(16, 12, 3, 7, 'KL-SO-5', 'Sofa da', '', 2800000, 50, '2021-08-13 11:16:39', '2021-08-13 11:16:39', ''),
(17, 13, 3, 18, 'KL-GE-1', 'Ghế nhựa trắng', '', 400000, 1, '2021-09-02 05:02:04', '2021-09-02 05:02:04', ''),
(18, 13, 3, 17, 'KL-GE-2', 'Ghế nhựa đen', '', 300000, 1, '2021-09-02 05:02:04', '2021-09-02 05:02:04', ''),
(19, 13, 3, 16, 'KL-GE-3', 'Ghế không tay vàng', '', 200000, 1, '2021-09-02 05:02:04', '2021-09-02 05:02:04', '');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Paypal', 'paypal', NULL, NULL),
(2, 'Pay on delivery', 'cash', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'create_product', 'web', '2021-06-12 03:13:43', '2021-06-12 03:13:43'),
(2, 'edit_product', 'web', '2021-06-12 03:13:43', '2021-06-12 03:13:43'),
(3, 'delete_product', 'web', '2021-06-12 03:13:43', '2021-06-12 03:13:43'),
(4, 'list_product', 'web', '2021-06-12 03:13:43', '2021-06-12 03:13:43'),
(5, 'create_slider', 'web', '2021-06-12 03:13:43', '2021-06-12 03:13:43'),
(6, 'edit_slider', 'web', '2021-06-12 03:13:43', '2021-06-12 03:13:43'),
(7, 'delete_slider', 'web', '2021-06-12 03:13:43', '2021-06-12 03:13:43'),
(8, 'list_slider', 'web', '2021-06-12 03:13:43', '2021-06-12 03:13:43'),
(9, 'create_category', 'web', '2021-06-12 03:13:43', '2021-06-12 03:13:43'),
(10, 'edit_category', 'web', '2021-06-12 03:13:43', '2021-06-12 03:13:43'),
(11, 'delete_category', 'web', '2021-06-12 03:13:43', '2021-06-12 03:13:43'),
(12, 'list_category', 'web', '2021-06-12 03:13:43', '2021-06-12 03:13:43');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `amount` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `discount_start_date` date DEFAULT NULL,
  `discount_end_date` date DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new` tinyint(4) NOT NULL DEFAULT '1',
  `additional` text COLLATE utf8mb4_unicode_ci,
  `noi_bat` tinyint(4) NOT NULL DEFAULT '1',
  `price` bigint(20) NOT NULL,
  `pro_total_rating` int(11) NOT NULL DEFAULT '1' COMMENT 'Tổng số đánh giá',
  `pro_total_number` int(11) NOT NULL DEFAULT '1' COMMENT 'Tổng số đánh giá'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `amount`, `discount`, `discount_start_date`, `discount_end_date`, `created_by`, `category_id`, `brand_id`, `product_code`, `featured`, `created_at`, `updated_at`, `is_active`, `image`, `new`, `additional`, `noi_bat`, `price`, `pro_total_rating`, `pro_total_number`) VALUES
(1, 'Sản phẩm trong nhà 1', '<div id=\"des-details2\" class=\"tab-pane active\">\r\n<div class=\"product-anotherinfo-wrapper\">\r\n<ul>\r\n<li>Weight 400 g</li>\r\n<li>Dimensions10 x 10 x 15 cm</li>\r\n<li>Materials 60% cotton, 40% polyester</li>\r\n<li>Other Info American heirloom jean shorts pug seitan letterpress<img src=\"/shop3/public/storage/photos/1/product/7.jpg\" alt=\"\" width=\"800\" height=\"800\" /></li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>', 20, 10, '2021-06-18', '2021-06-23', 1, 1, 2, 'KL-TN-1', 1, '2021-06-12 09:31:16', '2021-08-16 22:43:54', 1, 'Sản_phẩm_trong_nhà_1.jpg', 1, 'Lorem ipsum dolor sit amet, consectetur adipisic elit eiusm tempor incidid ut labore et dolore magna aliqua. Ut enim ad minim venialo quis nostrud exercitation ullamco\r\n\r\n    - 0.5 mm Dail\r\n    - Inspired vector icons\r\n    - Very modern style', 1, 2000000, 8, 25),
(2, 'Sản phẩm trong nha 3', '<div id=\"des-details1\" class=\"tab-pane active\">\r\n<div class=\"product-description-wrapper\">\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt</p>\r\n<p>ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt</p>\r\n</div>\r\n</div>', 59, 10, NULL, NULL, 1, 1, 1, 'KL-VH-1', 1, '2021-06-12 21:34:12', '2021-08-16 22:01:50', 1, 'Sản_phẩm_trong_nha_3.jpg', 1, 'Weight 400 g\r\n    Dimensions10 x 10 x 15 cm\r\n    Materials 60% cotton, 40% polyester\r\n    Other Info American heirloom jean shorts pug seitan letterpress', 1, 600000, 1, 1),
(3, 'Sản phẩm trong nha 2', '<div id=\"des-details2\" class=\"tab-pane active\">\r\n<div class=\"product-anotherinfo-wrapper\">\r\n<ul>\r\n<li>Weight 400 g</li>\r\n<li>Dimensions10 x 10 x 15 cm</li>\r\n<li>Materials 60% cotton, 40% polyester</li>\r\n<li>Other Info American heirloom jean shorts pug seitan letterpress</li>\r\n</ul>\r\n</div>\r\n</div>', 50, 20, NULL, NULL, 1, 1, 3, 'KL-NT-1', 1, '2021-06-12 21:36:48', '2021-08-16 22:00:27', 1, 'Sản_phẩm_ngoài_trời_1.jpg', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n\r\nut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt', 1, 30000000, 1, 1),
(4, 'Sofa ghế sợi vải', '<div id=\"des-details1\" class=\"tab-pane active\">\r\n<div class=\"product-description-wrapper\">\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt</p>\r\n<p>ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt</p>\r\n</div>\r\n</div>', 80, 50, '2021-08-01', '2021-10-31', 1, 17, 1, 'KL-SO-7', 1, '2021-06-12 21:39:18', '2021-09-01 23:29:17', 1, 'Sofa_ghế_sợi_vải.png', 1, 'Weight 400 g\r\n    Dimensions10 x 10 x 15 cm\r\n    Materials 60% cotton, 40% polyester\r\n    Other Info American heirloom jean shorts pug seitan letterpress', 1, 20000, 1, 1),
(5, 'Sofa xếp', '<div id=\"des-details2\" class=\"tab-pane active\">\r\n<div class=\"product-anotherinfo-wrapper\">\r\n<ul>\r\n<li>Weight 400 g</li>\r\n<li>Dimensions10 x 10 x 15 cm</li>\r\n<li>Materials 60% cotton, 40% polyester</li>\r\n<li>Other Info American heirloom jean shorts pug seitan letterpress</li>\r\n</ul>\r\n</div>\r\n</div>', 80, 10, '2021-08-01', '2021-10-31', 1, 17, 2, 'KL-SO-6', 1, '2021-06-12 21:42:46', '2021-09-01 23:28:56', 1, 'Sofa_xếp.png', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n\r\nut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt', 1, 5550000, 1, 1),
(6, 'Ghế gỗ đẹp', '<div id=\"des-details1\" class=\"tab-pane active\">\r\n<div class=\"product-description-wrapper\">\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt</p>\r\n<p>ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt</p>\r\n</div>\r\n</div>', 90, 25, '2021-07-31', '2021-10-31', 1, 15, 1, 'KL-GE-8', 1, '2021-06-12 21:44:56', '2021-09-01 23:28:34', 1, 'Ghế_gỗ_đẹp.png', 1, 'Weight 400 g\r\n    Dimensions10 x 10 x 15 cm\r\n    Materials 60% cotton, 40% polyester\r\n    Other Info American heirloom jean shorts pug seitan letterpress', 1, 600000, 1, 1),
(7, 'Sofa da', '<div id=\"des-details2\" class=\"tab-pane active\">\r\n<div class=\"product-anotherinfo-wrapper\">\r\n<ul>\r\n<li>Weight 400 g</li>\r\n<li>Dimensions10 x 10 x 15 cm</li>\r\n<li>Materials 60% cotton, 40% polyester</li>\r\n<li>Other Info American heirloom jean shorts pug seitan letterpress</li>\r\n</ul>\r\n</div>\r\n</div>', 67, 60, NULL, NULL, 1, 17, 1, 'KL-SO-5', 1, '2021-06-12 22:18:56', '2021-07-30 02:53:05', 1, 'Sofa_da.jpg', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n\r\nut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt', 1, 7000000, 1, 1),
(8, 'Sofa ngồi', '<div id=\"des-details1\" class=\"tab-pane active\">\r\n<div class=\"product-description-wrapper\">\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt</p>\r\n<p>ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt</p>\r\n</div>\r\n</div>', 10, 10, NULL, NULL, 1, 17, 4, 'KL-SO-3', 1, '2021-06-12 22:21:56', '2021-07-30 02:49:48', 1, 'Sofa_ngồi.jpg', 1, 'Weight 400 g\r\n    Dimensions10 x 10 x 15 cm\r\n    Materials 60% cotton, 40% polyester\r\n    Other Info American heirloom jean shorts pug seitan letterpress', 1, 7890000, 1, 1),
(9, 'Băng ghế gỗ', '<div id=\"des-details2\" class=\"tab-pane active\">\r\n<div class=\"product-anotherinfo-wrapper\">\r\n<ul>\r\n<li>Weight 400 g</li>\r\n<li>Dimensions10 x 10 x 15 cm</li>\r\n<li>Materials 60% cotton, 40% polyester</li>\r\n<li>Other Info American heirloom jean shorts pug seitan letterpress</li>\r\n</ul>\r\n</div>\r\n</div>', 10, 0, NULL, NULL, 1, 15, 2, 'KL-Ge-7', 1, '2021-06-12 22:24:17', '2021-07-30 02:48:14', 1, 'Băng_ghế_gỗ.jpg', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n\r\nut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt', 1, 2000000, 1, 1),
(10, 'Sofa vàng', '<div id=\"des-details1\" class=\"tab-pane active\">\r\n<div class=\"product-description-wrapper\">\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt</p>\r\n<p>ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt</p>\r\n</div>\r\n</div>', 90, 40, NULL, NULL, 1, 17, 5, 'KL-SO-4', 1, '2021-06-12 22:26:35', '2021-07-30 02:51:50', 1, 'Sofa_vàng.jpg', 1, 'Weight 400 g\r\n    Dimensions10 x 10 x 15 cm\r\n    Materials 60% cotton, 40% polyester\r\n    Other Info American heirloom jean shorts pug seitan letterpress', 1, 50000000, 1, 1),
(11, 'Ghế gỗ', '<div id=\"des-details2\" class=\"tab-pane active\">\r\n<div class=\"product-anotherinfo-wrapper\">\r\n<ul>\r\n<li>Weight 400 g</li>\r\n<li>Dimensions10 x 10 x 15 cm</li>\r\n<li>Materials 60% cotton, 40% polyester</li>\r\n<li>Other Info American heirloom jean shorts pug seitan letterpress</li>\r\n</ul>\r\n<p><img src=\"/shop3/public/storage/photos/1/product/19.jpg\" alt=\"\" width=\"360\" height=\"360\" /></p>\r\n</div>\r\n</div>', 70, 80, NULL, NULL, 1, 15, 5, 'KL-GE-6', 1, '2021-06-12 22:30:17', '2021-07-30 02:44:26', 1, 'Ghế_gỗ.jpg', 0, 'Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n\r\nut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt', 1, 888800, 1, 1),
(12, 'Ghế bành', '<p>Lorem ipsum dolor sit amet, consectetur adipisic elit eiusm tempor incidid ut labore et dolore magna aliqua. Ut enim ad minim venialo quis nostrud exercitation ullamco</p>\r\n<div class=\"pro-details-list\">\r\n<ul>\r\n<li>- 0.5 mm Dail</li>\r\n<li>- Inspired vector icons</li>\r\n<li>- Very modern style</li>\r\n</ul>\r\n</div>', 90, 10, NULL, NULL, 1, 15, 1, 'KL-GE-5', 1, '2021-06-13 02:41:30', '2021-07-30 02:43:22', 1, 'Ghế_bành.jpg', 1, 'Weight 400 g\r\n    Dimensions10 x 10 x 15 cm\r\n    Materials 60% cotton, 40% polyester\r\n    Other Info American heirloom jean shorts pug seitan letterpress', 1, 900000, 2, 3),
(13, 'Sofa 2 ghế', '<div id=\"des-details2\" class=\"tab-pane active\">\r\n<div class=\"product-anotherinfo-wrapper\">\r\n<ul>\r\n<li>Weight 400 g</li>\r\n<li>Dimensions10 x 10 x 15 cm</li>\r\n<li>Materials 60% cotton, 40% polyester</li>\r\n<li>Other Info American heirloom jean shorts pug seitan letterpress</li>\r\n</ul>\r\n</div>\r\n</div>', 90, 0, NULL, NULL, 1, 17, 5, 'KL-SO-2', 1, '2021-06-13 02:44:07', '2021-07-30 02:41:18', 1, 'Sofa_2_ghế.jpg', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n\r\nut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt', 1, 400000, 1, 1),
(14, 'Sofa đơn', '<div id=\"des-details1\" class=\"tab-pane active\">\r\n<div class=\"product-description-wrapper\">\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt</p>\r\n<p>ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt</p>\r\n</div>\r\n</div>', 90, 0, NULL, NULL, 1, 17, 2, 'KL-SO-2', 1, '2021-06-13 02:47:01', '2021-07-30 02:41:45', 1, 'Sofa_đơn.jpg', 1, 'Weight 400 g\r\n    Dimensions10 x 10 x 15 cm\r\n    Materials 60% cotton, 40% polyester\r\n    Other Info American heirloom jean shorts pug seitan letterpress', 1, 45000, 1, 1),
(15, 'Ghế xếp trắng', '<div id=\"des-details2\" class=\"tab-pane active\">\r\n<div class=\"product-anotherinfo-wrapper\">\r\n<ul>\r\n<li>Weight 400 g</li>\r\n<li>Dimensions10 x 10 x 15 cm</li>\r\n<li>Materials 60% cotton, 40% polyester</li>\r\n<li>Other Info American heirloom jean shorts pug seitan letterpress</li>\r\n</ul>\r\n</div>\r\n</div>', 90, 0, NULL, NULL, 1, 15, 3, 'KL-GE-4', 1, '2021-06-13 02:49:21', '2021-07-30 02:37:14', 1, 'Ghế_xếp_trắng.jpg', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n\r\nut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt', 1, 89000, 2, 5),
(16, 'Ghế không tay vàng', '<p>Lorem ipsum dolor sit amet, consectetur adipisic elit eiusm tempor incidid ut labore et dolore magna aliqua. Ut enim ad minim venialo quis nostrud exercitation ullamco</p>\r\n<div class=\"pro-details-list\">\r\n<ul>\r\n<li>- 0.5 mm Dail</li>\r\n<li>- Inspired vector icons</li>\r\n<li>- Very modern style</li>\r\n</ul>\r\n</div>', 87, 90, NULL, NULL, 1, 15, 2, 'KL-GE-3', 1, '2021-06-13 04:11:23', '2021-07-30 02:35:30', 1, 'Ghế_không_tay_vàng.jpg', 1, 'Weight 400 g\r\n    Dimensions10 x 10 x 15 cm\r\n    Materials 60% cotton, 40% polyester\r\n    Other Info American heirloom jean shorts pug seitan letterpress', 1, 2000000, 4, 12),
(17, 'Ghế nhựa đen', '<div id=\"des-details2\" class=\"tab-pane active\">\r\n<div class=\"product-anotherinfo-wrapper\">\r\n<ul>\r\n<li>Weight 400 g</li>\r\n<li>Dimensions10 x 10 x 15 cm</li>\r\n<li>Materials 60% cotton, 40% polyester</li>\r\n<li>Other Info American heirloom jean shorts pug seitan letterpress</li>\r\n</ul>\r\n</div>\r\n</div>', 79, 50, NULL, NULL, 1, 15, 5, 'KL-GE-2', 1, '2021-06-13 04:13:33', '2021-07-30 02:32:26', 1, 'Ghế_nhựa_đen.jpg', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n\r\nut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt', 1, 600000, 1, 1),
(18, 'Ghế nhựa trắng', '<div id=\"des-details1\" class=\"tab-pane active\">\r\n<div class=\"product-description-wrapper\">\r\n<p><strong>Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do eiusmod tempor incididunt</strong></p>\r\n<p>ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo consequat. Duis aute irure dolor in reprehend in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt</p>\r\n</div>\r\n</div>', 889, 80, '2021-08-01', '2021-08-18', 1, 7, 4, 'KL-GE-1', 1, '2021-06-13 04:15:24', '2021-09-01 23:51:32', 1, 'Ghế_nhựa_trắng.jpg', 1, 'Weight 400 g\r\n    Dimensions10 x 10 x 15 cm\r\n    Materials 60% cotton, 40% polyester\r\n    Other Info American heirloom jean shorts pug seitan letterpress', 1, 2000000, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_features`
--

CREATE TABLE `product_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `field_id` bigint(20) UNSIGNED NOT NULL,
  `field_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_features`
--

INSERT INTO `product_features` (`id`, `product_id`, `field_id`, `field_value`, `created_at`, `updated_at`) VALUES
(53, 1, 1, '#0000ff', '2021-08-16 21:56:47', '2021-08-16 21:56:47'),
(54, 1, 2, '#ff0000', '2021-08-16 21:56:47', '2021-08-16 21:56:47'),
(65, 17, 58, '#0000ff', '2021-09-02 05:31:53', '2021-09-02 05:31:53'),
(66, 17, 59, '#ff0000', '2021-09-02 05:31:53', '2021-09-02 05:31:53'),
(67, 17, 60, '#ffff00', '2021-09-02 05:31:53', '2021-09-02 05:31:53'),
(68, 17, 61, '500000', '2021-09-02 05:31:53', '2021-09-02 05:31:53'),
(69, 17, 62, '700000', '2021-09-02 05:31:53', '2021-09-02 05:31:53'),
(70, 14, 63, '50000', '2021-09-02 05:35:48', '2021-09-02 05:35:48'),
(71, 14, 64, '40000', '2021-09-02 05:35:48', '2021-09-02 05:35:48'),
(72, 14, 65, '#00ff00', '2021-09-02 05:35:49', '2021-09-02 05:35:49'),
(73, 14, 66, '#ff00ff', '2021-09-02 05:35:49', '2021-09-02 05:35:49'),
(74, 14, 67, '#000000', '2021-09-02 05:35:49', '2021-09-02 05:35:49');

-- --------------------------------------------------------

--
-- Table structure for table `product_gallery`
--

CREATE TABLE `product_gallery` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_gallery`
--

INSERT INTO `product_gallery` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(79, '1624009055ede7e2b6d13a41ddf9f4bdef84fdc737.jpg', 4, '2021-06-18 02:37:35', '2021-06-18 02:37:35'),
(80, '162400905538913e1d6a7b94cb0f55994f679f5956.jpg', 4, '2021-06-18 02:37:35', '2021-06-18 02:37:35'),
(81, '16240090557eacb532570ff6858afd2723755ff790.jpg', 4, '2021-06-18 02:37:36', '2021-06-18 02:37:36'),
(82, '16240090551c9ac0159c94d8d0cbedc973445af2da.jpg', 4, '2021-06-18 02:37:36', '2021-06-18 02:37:36'),
(83, '16240091244ffce04d92a4d6cb21c1494cdfcd6dc1.jpg', 5, '2021-06-18 02:38:44', '2021-06-18 02:38:44'),
(84, '16240091246ecbdd6ec859d284dc13885a37ce8d81.jpg', 5, '2021-06-18 02:38:44', '2021-06-18 02:38:44'),
(85, '16240091242a79ea27c279e471f4d180b08d62b00a.jpg', 5, '2021-06-18 02:38:45', '2021-06-18 02:38:45'),
(86, '16240091242b24d495052a8ce66358eb576b8912c8.jpg', 5, '2021-06-18 02:38:45', '2021-06-18 02:38:45'),
(87, '16240091716da37dd3139aa4d9aa55b8d237ec5d4a.jpg', 6, '2021-06-18 02:39:31', '2021-06-18 02:39:31'),
(88, '16240091711543843a4723ed2ab08e18053ae6dc5b.jpg', 6, '2021-06-18 02:39:32', '2021-06-18 02:39:32'),
(89, '162400917182aa4b0af34c2313a562076992e50aa3.jpg', 6, '2021-06-18 02:39:32', '2021-06-18 02:39:32'),
(90, '1624009171ffeabd223de0d4eacb9a3e6e53e5448d.jpg', 6, '2021-06-18 02:39:33', '2021-06-18 02:39:33'),
(91, '1624016831903ce9225fca3e988c2af215d4e544d3.jpg', 7, '2021-06-18 04:47:11', '2021-06-18 04:47:11'),
(92, '1624016831f340f1b1f65b6df5b5e3f94d95b11daf.jpg', 7, '2021-06-18 04:47:12', '2021-06-18 04:47:12'),
(93, '16240168317a614fd06c325499f1680b9896beedeb.jpg', 7, '2021-06-18 04:47:13', '2021-06-18 04:47:13'),
(94, '1624016831c8fbbc86abe8bd6a5eb6a3b4d0411301.jpg', 7, '2021-06-18 04:47:13', '2021-06-18 04:47:13'),
(95, '16240168830d7de1aca9299fe63f3e0041f02638a3.jpg', 8, '2021-06-18 04:48:03', '2021-06-18 04:48:03'),
(96, '16240168832dace78f80bc92e6d7493423d729448e.jpg', 8, '2021-06-18 04:48:03', '2021-06-18 04:48:03'),
(97, '1624016883e2c0be24560d78c5e599c2a9c9d0bbd2.jpg', 8, '2021-06-18 04:48:04', '2021-06-18 04:48:04'),
(98, '162401688300ec53c4682d36f5c4359f4ae7bd7ba1.jpg', 8, '2021-06-18 04:48:04', '2021-06-18 04:48:04'),
(143, '1628090536f899139df5e1059396431415e770c6dd.jpg', 18, '2021-08-04 08:22:16', '2021-08-04 08:22:16'),
(144, '162809053676dc611d6ebaafc66cc0879c71b5db5c.jpg', 18, '2021-08-04 08:22:18', '2021-08-04 08:22:18'),
(145, '162809053602a32ad2669e6fe298e607fe7cc0e1a0.jpg', 18, '2021-08-04 08:22:18', '2021-08-04 08:22:18'),
(146, '16280905369b04d152845ec0a378394003c96da594.jpg', 18, '2021-08-04 08:22:19', '2021-08-04 08:22:19'),
(147, '1628090948c06d06da9666a219db15cf575aff2824.jpg', 17, '2021-08-04 08:29:08', '2021-08-04 08:29:08'),
(148, '162809094870c639df5e30bdee440e4cdf599fec2b.jpg', 17, '2021-08-04 08:29:09', '2021-08-04 08:29:09'),
(149, '1628090948ad13a2a07ca4b7642959dc0c4c740ab6.jpg', 17, '2021-08-04 08:29:10', '2021-08-04 08:29:10'),
(150, '16280909486855456e2fe46a9d49d3d3af4f57443d.jpg', 17, '2021-08-04 08:29:10', '2021-08-04 08:29:10'),
(152, '162809096507871915a8107172b3b5dc15a6574ad3.jpg', 16, '2021-08-04 08:29:25', '2021-08-04 08:29:25'),
(153, '1628090965285e19f20beded7d215102b49d5c09a0.jpg', 16, '2021-08-04 08:29:26', '2021-08-04 08:29:26'),
(154, '1628090965f1b6f2857fb6d44dd73c7041e0aa0f19.jpg', 16, '2021-08-04 08:29:27', '2021-08-04 08:29:27'),
(155, '162809096501386bd6d8e091c2ab4c7c7de644d37b.jpg', 16, '2021-08-04 08:29:28', '2021-08-04 08:29:28'),
(156, '162809104973278a4a86960eeb576a8fd4c9ec6997.jpg', 15, '2021-08-04 08:30:49', '2021-08-04 08:30:49'),
(157, '1628091049060ad92489947d410d897474079c1477.jpg', 15, '2021-08-04 08:30:50', '2021-08-04 08:30:50'),
(158, '16280910491141938ba2c2b13f5505d7c424ebae5f.jpg', 15, '2021-08-04 08:30:51', '2021-08-04 08:30:51'),
(159, '16280910493b3dbaf68507998acd6a5a5254ab2d76.jpg', 15, '2021-08-04 08:30:52', '2021-08-04 08:30:52'),
(160, '1628091480210f760a89db30aa72ca258a3483cc7f.jpg', 14, '2021-08-04 08:38:00', '2021-08-04 08:38:00'),
(161, '16280914806a10bbd480e4c5573d8f3af73ae0454b.jpg', 14, '2021-08-04 08:38:01', '2021-08-04 08:38:01'),
(162, '1628091480aeb3135b436aa55373822c010763dd54.jpg', 14, '2021-08-04 08:38:02', '2021-08-04 08:38:02'),
(163, '1628091480c6e19e830859f2cb9f7c8f8cacb8d2a6.jpg', 14, '2021-08-04 08:38:02', '2021-08-04 08:38:02'),
(164, '16280915274311359ed4969e8401880e3c1836fbe1.jpg', 13, '2021-08-04 08:38:47', '2021-08-04 08:38:47'),
(165, '1628091527cfecdb276f634854f3ef915e2e980c31.jpg', 13, '2021-08-04 08:38:48', '2021-08-04 08:38:48'),
(166, '16280915276081594975a764c8e3a691fa2b3a321d.jpg', 13, '2021-08-04 08:38:49', '2021-08-04 08:38:49'),
(167, '16280915279461cce28ebe3e76fb4b931c35a169b0.jpg', 13, '2021-08-04 08:38:49', '2021-08-04 08:38:49'),
(168, '1628094049758874998f5bd0c393da094e1967a72b.jpg', 12, '2021-08-04 09:20:49', '2021-08-04 09:20:49'),
(169, '1628094049db85e2590b6109813dafa101ceb2faeb.jpg', 12, '2021-08-04 09:20:50', '2021-08-04 09:20:50'),
(170, '162809404985422afb467e9456013a2a51d4dff702.jpg', 12, '2021-08-04 09:20:51', '2021-08-04 09:20:51'),
(171, '1628094049ce78d1da254c0843eb23951ae077ff5f.jpg', 12, '2021-08-04 09:20:52', '2021-08-04 09:20:52'),
(172, '16280905125d44ee6f2c3f71b73125876103c8f6c4.jpg', 11, '2021-08-04 08:21:52', '2021-08-04 08:21:52'),
(173, '162809051231839b036f63806cba3f47b93af8ccb5.jpg', 11, '2021-08-04 08:21:53', '2021-08-04 08:21:53'),
(174, '16280905123cec07e9ba5f5bb252d13f5f431e4bbb.jpg', 11, '2021-08-04 08:21:54', '2021-08-04 08:21:54'),
(175, '16280905128b6dd7db9af49e67306feb59a8bdc52c.jpg', 11, '2021-08-04 08:21:55', '2021-08-04 08:21:55'),
(176, '1628090561bd686fd640be98efaae0091fa301e613.jpg', 10, '2021-08-04 08:22:41', '2021-08-04 08:22:41'),
(177, '1628090561758874998f5bd0c393da094e1967a72b.jpg', 10, '2021-08-04 08:22:41', '2021-08-04 08:22:41'),
(178, '1628090561f76a89f0cb91bc419542ce9fa43902dc.jpg', 10, '2021-08-04 08:22:42', '2021-08-04 08:22:42'),
(179, '1628090561e96ed478dab8595a7dbda4cbcbee168f.jpg', 10, '2021-08-04 08:22:43', '2021-08-04 08:22:43'),
(180, '162809061138913e1d6a7b94cb0f55994f679f5956.jpg', 9, '2021-08-04 08:23:31', '2021-08-04 08:23:31'),
(181, '162809061161b4a64be663682e8cb037d9719ad8cd.jpg', 9, '2021-08-04 08:23:32', '2021-08-04 08:23:32'),
(182, '16280906115f0f5e5f33945135b874349cfbed4fb9.jpg', 9, '2021-08-04 08:23:33', '2021-08-04 08:23:33'),
(183, '1628090611d64a340bcb633f536d56e51874281454.jpg', 9, '2021-08-04 08:23:33', '2021-08-04 08:23:33'),
(187, '16291762078cb22bdd0b7ba1ab13d742e22eed8da2.jpg', 1, '2021-08-16 21:56:47', '2021-08-16 21:56:47'),
(188, '162917620707871915a8107172b3b5dc15a6574ad3.jpg', 1, '2021-08-16 21:56:48', '2021-08-16 21:56:48'),
(189, '162917620765ded5353c5ee48d0b7d48c591b8f430.jpg', 1, '2021-08-16 21:56:49', '2021-08-16 21:56:49'),
(190, '16291762070266e33d3f546cb5436a10798e657d97.jpg', 1, '2021-08-16 21:56:50', '2021-08-16 21:56:50'),
(191, '162917637884d9ee44e457ddef7f2c4f25dc8fa865.jpg', 3, '2021-08-16 21:59:38', '2021-08-16 21:59:38'),
(192, '1629176378f4f6dce2f3a0f9dada0c2b5b66452017.jpg', 3, '2021-08-16 21:59:39', '2021-08-16 21:59:39'),
(193, '1629176378502e4a16930e414107ee22b6198c578f.jpg', 3, '2021-08-16 21:59:40', '2021-08-16 21:59:40'),
(194, '1629176378aff1621254f7c1be92f64550478c56e6.jpg', 3, '2021-08-16 21:59:41', '2021-08-16 21:59:41'),
(195, '162917651074bba22728b6185eec06286af6bec36d.jpg', 2, '2021-08-16 22:01:50', '2021-08-16 22:01:50'),
(196, '16291765106766aa2750c19aad2fa1b32f36ed4aee.jpg', 2, '2021-08-16 22:01:51', '2021-08-16 22:01:51'),
(197, '16291765104ea06fbc83cdd0a06020c35d50e1e89a.jpg', 2, '2021-08-16 22:01:52', '2021-08-16 22:01:52'),
(198, '1629176510d81f9c1be2e08964bf9f24b15f0e4900.jpg', 2, '2021-08-16 22:01:52', '2021-08-16 22:01:52');

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tag_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rating` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `rating`, `comment`, `created_at`, `updated_at`, `status`) VALUES
(1, 16, 3, 3, 'sản phẩm bình thường', '2021-06-23 02:45:29', '2021-06-23 02:45:29', 0),
(2, 16, 2, 5, 'sản phẩm tuyệt vời', '2021-06-23 02:48:12', '2021-06-23 02:48:12', 0),
(3, 15, 2, 4, 'san pham tot', '2021-06-23 04:35:27', '2021-06-23 04:35:27', 0),
(4, 12, 2, 2, 'san pham tam duoc', '2021-06-23 05:09:20', '2021-06-23 05:09:20', 0),
(5, 16, 3, 3, 'test', '2021-07-12 23:20:03', '2021-07-12 23:20:03', 0),
(6, 1, 2, 5, 'TÉT', '2021-08-16 10:09:42', '2021-08-16 10:09:42', 0),
(7, 1, 3, 5, 'sản phẩm chất lượng', '2021-08-16 10:11:54', '2021-08-16 10:11:54', 0),
(8, 1, 3, 2, 'tam duoc', '2021-08-16 22:00:49', '2021-08-16 22:00:49', 0),
(9, 1, 3, 5, 'san pham tuyet voi', '2021-08-16 22:09:00', '2021-08-16 22:09:00', 0),
(10, 1, 3, 1, 'san pham khong tot', '2021-08-16 22:09:34', '2021-08-16 22:09:34', 0),
(11, 1, 3, 2, 'san pham tam duoc', '2021-08-16 22:11:10', '2021-08-16 22:11:10', 0),
(12, 1, 3, 4, 'san pham rat tot', '2021-08-16 22:43:54', '2021-08-16 22:43:54', 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `setting_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting_key`, `setting_value`, `created_at`, `updated_at`, `is_active`, `type`) VALUES
(1, 'Vận chuyển', 'Miễn phí vận chuyển hóa đơn trên 200 ngàn', '2021-06-18 09:15:04', '2021-06-18 09:15:04', 1, 'Textarea'),
(2, 'Đổi trả hàng', 'Đổi trả hàng lỗi trong 30 ngày', '2021-06-18 09:17:25', '2021-06-18 09:17:25', 1, 'Textarea'),
(3, 'Bảo mật', 'Chúng tôi bảo mật thông tin khách hàng khi thanh toán!', '2021-06-18 09:20:37', '2021-06-18 09:20:37', 1, 'Textarea');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_addresses`
--

CREATE TABLE `shipping_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(4) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `nametwo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namethree` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namefour` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `description`, `content`, `image_path`, `image_name`, `created_at`, `updated_at`, `is_active`, `nametwo`, `namethree`, `namefour`) VALUES
(1, 'Chất lượng hàng đầu', 'Đang cập nhật', '<p>Đang cập nhật</p>\r\n<p><img src=\"/shop3/public/storage/photos/1/sliders/7.jpg\" alt=\"\" width=\"800\" height=\"800\" /></p>', NULL, 'Chất_lượng_hàng_đầu.jpg', '2021-06-13 21:39:41', '2021-07-29 11:10:16', 1, 'Mẫu mới <br> Màu Hồng Nhạt', NULL, 'cua-hang'),
(2, 'Giảm 50', 'Đang cập nhật', '<p>Đang cập nhật</p>', NULL, 'Giảm_50.jpg', '2021-06-13 21:43:02', '2021-07-29 11:16:34', 1, 'Nội thất trong nhà <br> Giường ngủ', NULL, 'cua-hang'),
(3, 'Mẫu mã mới', 'Đang cập nhật', '<p>Đang cập nhật</p>\r\n<p><img src=\"/shop5/public/storage/photos/1/sliders/Slider_01_03.jpg\" alt=\"\" width=\"1400\" height=\"482\" /></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', NULL, 'Mẫu_mã_mới.jpg', '2021-07-29 11:21:23', '2021-08-02 02:38:31', 1, 'Chất lượng - Uy tín -Bảo hành <br>Khuyến mãi', NULL, 'cua-hang');

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`id`, `tag_id`, `taggable_type`, `taggable_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'App\\Models\\News', 1, '2021-06-14 09:46:25', '2021-06-14 09:46:25'),
(2, 2, 'App\\Models\\News', 1, '2021-06-14 09:46:25', '2021-06-14 09:46:25'),
(3, 3, 'App\\Models\\News', 2, '2021-06-14 09:48:46', '2021-06-14 09:48:46'),
(4, 2, 'App\\Models\\News', 2, '2021-06-14 09:48:46', '2021-06-14 09:48:46'),
(5, 4, 'App\\Models\\News', 3, '2021-06-14 09:49:57', '2021-06-14 09:49:57'),
(6, 5, 'App\\Models\\News', 3, '2021-06-14 09:49:57', '2021-06-14 09:49:57'),
(7, 1, 'App\\Models\\News', 4, '2021-06-14 09:50:30', '2021-06-14 09:50:30'),
(8, 2, 'App\\Models\\News', 4, '2021-06-14 09:50:30', '2021-06-14 09:50:30'),
(9, 3, 'App\\Models\\News', 4, '2021-06-14 09:50:30', '2021-06-14 09:50:30'),
(10, 6, 'App\\Models\\News', 5, '2021-06-26 21:07:27', '2021-06-26 21:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'đèn', '2021-06-14 09:46:25', '2021-06-14 09:46:25'),
(2, 'ghe', '2021-06-14 09:46:25', '2021-06-14 09:46:25'),
(3, 'bàn', '2021-06-14 09:48:45', '2021-06-14 09:48:45'),
(4, 'đồng hồ', '2021-06-14 09:49:57', '2021-06-14 09:49:57'),
(5, 'giường', '2021-06-14 09:49:57', '2021-06-14 09:49:57'),
(6, 'gioi-thieu', '2021-06-26 21:07:26', '2021-06-26 21:07:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_super_admin` tinyint(4) NOT NULL DEFAULT '0',
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_super_admin`, `is_active`, `image`, `address`, `country`, `city`, `postal_code`, `state`, `mobile`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$wDY6X5.xxXCIBKGmnKwjgufClU8UMiL.kp4BWzYebLN0Y3ulMCsHW', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'cuong sua', 'cuong@gmail.com', NULL, '$2y$10$m0cSIsoOlYDRaLuD.LUNUuWQotZFCQvTYkEkidS3SKWNyivkfAeLu', NULL, '2021-06-17 09:09:04', '2021-08-15 09:08:37', 0, 1, '1629046341_.png', '345 thái bình', NULL, 'Hà Nội', NULL, '32222', '0909090 222222'),
(3, 'le thi minh chau', 'chau@gmail.com', NULL, '$2y$10$jsTesBBUVIl3VeQb5Zn5q.pltrlWwDMceH9Wk2GlyyoHdnB/7NfUG', NULL, '2021-06-17 09:15:55', '2021-09-02 05:02:02', 0, 1, '1624513534_.png', '111/222', NULL, 'Hà Nội', NULL, '1111', '999999'),
(4, 'thy', 'thy@gmail.com', NULL, '$2y$10$HGgCjn7kZ8ppbirHfOGzpOing/pYfkDkNLNErahHLdXbxbtvbbxWO', NULL, '2021-08-04 04:00:20', '2021-08-04 04:00:20', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'thy', 'thy1@gmail.com', NULL, '$2y$10$/g88jQEXa.fYQpVDb4FFS.bLAUsuW0gJGWiRHFzpkYtFdQ/0jjpf6', NULL, '2021-08-04 04:12:16', '2021-08-04 04:12:16', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `category_features`
--
ALTER TABLE `category_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_features_category_id_foreign` (`category_id`);

--
-- Indexes for table `cat_news`
--
ALTER TABLE `cat_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_news_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_address`
--
ALTER TABLE `delivery_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `login_history`
--
ALTER TABLE `login_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_user_id_foreign` (`user_id`),
  ADD KEY `news_cat_news_id_foreign` (`cat_news_id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_methods_slug_unique` (`slug`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_created_by_foreign` (`created_by`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_features`
--
ALTER TABLE `product_features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_features_product_id_foreign` (`product_id`),
  ADD KEY `product_features_field_id_foreign` (`field_id`);

--
-- Indexes for table `product_gallery`
--
ALTER TABLE `product_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_gallery_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_tag_product_id_foreign` (`product_id`),
  ADD KEY `product_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_setting_key_unique` (`setting_key`);

--
-- Indexes for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipping_addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shopping_cart_user_id_foreign` (`user_id`),
  ADD KEY `shopping_cart_product_id_foreign` (`product_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taggables`
--
ALTER TABLE `taggables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taggables_tag_id_foreign` (`tag_id`),
  ADD KEY `taggables_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `category_features`
--
ALTER TABLE `category_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `cat_news`
--
ALTER TABLE `cat_news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery_address`
--
ALTER TABLE `delivery_address`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login_history`
--
ALTER TABLE `login_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_features`
--
ALTER TABLE `product_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `product_gallery`
--
ALTER TABLE `product_gallery`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_features`
--
ALTER TABLE `category_features`
  ADD CONSTRAINT `category_features_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cat_news`
--
ALTER TABLE `cat_news`
  ADD CONSTRAINT `cat_news_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `cat_news` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_cat_news_id_foreign` FOREIGN KEY (`cat_news_id`) REFERENCES `cat_news` (`id`),
  ADD CONSTRAINT `news_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_features`
--
ALTER TABLE `product_features`
  ADD CONSTRAINT `product_features_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `category_features` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_features_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_gallery`
--
ALTER TABLE `product_gallery`
  ADD CONSTRAINT `product_gallery_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD CONSTRAINT `product_tag_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  ADD CONSTRAINT `shipping_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD CONSTRAINT `shopping_cart_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shopping_cart_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `taggables`
--
ALTER TABLE `taggables`
  ADD CONSTRAINT `taggables_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
