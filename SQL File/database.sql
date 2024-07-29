-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th7 29, 2024 lúc 10:59 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `la_multishop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `color` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `quantity`, `color`, `size`, `created_at`, `updated_at`, `deleted_at`) VALUES
(21, 1, 49, 1, 'Burgundy', 's', '2024-07-12 02:23:52', '2024-07-19 09:18:30', '2024-07-19 09:18:30'),
(28, 1, 19, 2, 'Black', 's', '2024-07-16 08:06:14', '2024-07-19 09:19:33', '2024-07-19 09:19:33'),
(39, 2, 19, 1, 'Black', 's', '2024-07-18 01:20:21', '2024-07-21 01:19:39', '2024-07-21 01:19:39'),
(40, 1, 28, 1, 'Black', 's', '2024-07-19 09:18:54', '2024-07-19 09:19:33', '2024-07-19 09:19:33'),
(41, 1, 26, 1, 'Black', 's', '2024-07-19 21:01:37', '2024-07-20 01:57:55', '2024-07-20 01:57:55'),
(42, 1, 52, 1, 'White', 'xs', '2024-07-19 22:31:30', '2024-07-20 01:57:55', '2024-07-20 01:57:55'),
(43, 1, 19, 1, 'Black', 's', '2024-07-20 00:52:35', '2024-07-20 00:52:55', '2024-07-20 00:52:55'),
(44, 1, 20, 1, 'Black', 's', '2024-07-20 05:42:27', '2024-07-20 06:12:46', '2024-07-20 06:12:46'),
(45, 1, 22, 1, 'cream', 's', '2024-07-20 05:52:51', '2024-07-20 06:12:46', '2024-07-20 06:12:46'),
(46, 1, 54, 1, 'Charcoal', 'xs', '2024-07-20 05:53:07', '2024-07-20 06:12:46', '2024-07-20 06:12:46'),
(47, 1, 44, 1, 'Black', 'xs', '2024-07-20 20:39:18', '2024-07-20 20:40:48', '2024-07-20 20:40:48'),
(48, 1, 37, 2, 'Vintage Blue Wash', '30', '2024-07-20 20:39:22', '2024-07-20 20:40:48', '2024-07-20 20:40:48'),
(49, 1, 43, 2, 'white/combo', 's', '2024-07-20 21:19:14', '2024-07-20 21:19:47', '2024-07-20 21:19:47'),
(50, 1, 38, 2, 'Burgundy', '30', '2024-07-20 22:22:54', '2024-07-20 22:23:19', '2024-07-20 22:23:19'),
(51, 1, 29, 3, 'black/grey', 's', '2024-07-21 00:56:55', '2024-07-21 00:57:29', '2024-07-21 00:57:29'),
(52, 1, 45, 1, 'Black', 's', '2024-07-21 01:02:41', '2024-07-21 01:03:57', '2024-07-21 01:03:57'),
(53, 1, 68, 1, 'Black', 'xs', '2024-07-22 07:31:26', '2024-07-22 08:37:14', '2024-07-22 08:37:14'),
(54, 1, 26, 1, 'Black', 's', '2024-07-25 20:11:49', '2024-07-28 02:17:10', '2024-07-28 02:17:10'),
(55, 1, 28, 1, 'Black', 's', '2024-07-25 20:11:53', '2024-07-28 02:17:10', '2024-07-28 02:17:10'),
(56, 1, 68, 1, 'Black', 'xs', '2024-07-25 20:11:57', '2024-07-28 02:17:10', '2024-07-28 02:17:10'),
(57, 1, 38, 1, 'Burgundy', '30', '2024-07-28 20:16:57', '2024-07-28 20:16:57', NULL),
(58, 15, 58, 1, 'Black', 'xs', '2024-07-29 00:55:28', '2024-07-29 00:57:31', '2024-07-29 00:57:31'),
(59, 15, 51, 1, 'Black', 'xs', '2024-07-29 00:55:32', '2024-07-29 00:57:31', '2024-07-29 00:57:31'),
(60, 15, 55, 1, 'Black', 'xs', '2024-07-29 00:55:36', '2024-07-29 00:57:31', '2024-07-29 00:57:31'),
(61, 15, 49, 1, 'Burgundy', 's', '2024-07-29 00:55:39', '2024-07-29 00:57:31', '2024-07-29 00:57:31'),
(62, 15, 61, 1, 'pink', 's', '2024-07-29 00:55:52', '2024-07-29 00:57:31', '2024-07-29 00:57:31'),
(63, 15, 67, 1, 'Black', 'xs', '2024-07-29 00:55:57', '2024-07-29 00:57:31', '2024-07-29 00:57:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `status`, `deleted_at`) VALUES
(25, 'Men', 'men', 0, '2024-06-28 08:09:09', '2024-07-19 07:32:03', 1, NULL),
(26, 'Men\'s tops', 'mens-tops', 25, '2024-06-28 08:12:19', '2024-06-28 08:13:48', 1, NULL),
(27, 'Men\'s T-shirts', 'mens-t-shirts', 26, '2024-06-28 08:14:53', '2024-06-28 08:16:38', 1, NULL),
(28, 'Men\'s sweaters', 'mens-sweaters', 26, '2024-06-28 08:16:29', '2024-06-28 21:53:00', 1, NULL),
(29, 'Men\'s Jackets & Coats', 'mens-jackets-coats', 26, '2024-06-28 08:17:09', '2024-07-19 07:44:24', 1, NULL),
(30, 'Men\'s pants', 'mens-pants', 25, '2024-06-28 08:17:37', '2024-06-28 08:17:37', 1, NULL),
(31, 'Men Jeans', 'men-jeans', 30, '2024-06-28 08:18:50', '2024-06-28 08:21:14', 1, NULL),
(32, 'Men\'s Trousers', 'mens-trousers', 30, '2024-06-28 08:21:06', '2024-06-28 08:21:06', 1, NULL),
(33, 'Men\'s shorts', 'mens-shorts', 30, '2024-06-28 08:21:56', '2024-06-28 08:21:56', 1, NULL),
(34, 'Men\'s polos', 'mens-polos', 27, '2024-06-28 08:24:27', '2024-07-19 09:56:34', 1, NULL),
(35, 'Men\'s tank tops', 'mens-tank-tops', 27, '2024-06-28 08:24:56', '2024-06-28 08:24:56', 1, NULL),
(36, 'Women', 'women', 0, '2024-06-28 08:26:55', '2024-06-28 08:26:55', 1, NULL),
(37, 'Women\'s tops', 'womens-tops', 36, '2024-06-28 08:27:10', '2024-06-28 08:27:10', 1, NULL),
(38, 'Women\'s crop tops', 'womens-crop-tops', 37, '2024-06-28 08:29:02', '2024-06-28 08:29:02', 1, NULL),
(39, 'Women\'s shirts & blouses', 'womens-shirts-blouses', 37, '2024-06-28 08:30:08', '2024-06-28 08:30:08', 1, NULL),
(40, 'Women\'s sweaters', 'womens-sweaters', 37, '2024-06-28 08:30:51', '2024-06-28 08:30:51', 1, NULL),
(41, 'Women\'s bottoms', 'womens-bottoms', 36, '2024-06-28 08:33:04', '2024-06-28 08:33:04', 1, NULL),
(42, 'Women\'s skirts', 'womens-skirts', 41, '2024-06-28 08:35:23', '2024-06-28 08:38:37', 1, NULL),
(43, 'Women\'s pants', 'womens-pants', 41, '2024-06-28 08:35:39', '2024-06-28 08:35:39', 1, NULL),
(44, 'Women\'s pleated skirts', 'womens-pleated-skirts', 42, '2024-06-28 08:38:16', '2024-06-28 08:38:16', 1, NULL),
(45, 'Women\'s long skirts', 'womens-long-skirts', 42, '2024-06-28 08:38:56', '2024-06-28 08:38:56', 1, NULL),
(46, 'Women\'s trousers', 'womens-trousers', 43, '2024-06-28 08:39:50', '2024-06-28 08:39:50', 1, NULL),
(47, 'Women\'s jeans', 'womens-jeans', 43, '2024-06-28 08:41:06', '2024-06-28 08:41:06', 1, NULL),
(48, 'Women\'s joggers', 'womens-joggers', 43, '2024-06-28 08:41:58', '2024-06-28 08:42:13', 1, NULL),
(49, 'Men\'s hoodies', 'mens-hoodies', 26, '2024-06-28 08:44:44', '2024-07-19 20:58:19', 1, NULL),
(50, 'Swim', 'swim', 0, '2024-06-28 08:51:36', '2024-06-28 08:51:36', 1, NULL),
(51, 'Men\'s swim', 'mens-swim', 50, '2024-06-28 08:52:36', '2024-06-28 08:52:36', 1, NULL),
(52, 'Men\'s solid swim trunks', 'mens-solid-swim-trunks', 51, '2024-06-28 08:53:18', '2024-06-28 08:54:28', 1, NULL),
(53, 'Classic 7\'\' Inseam Swim Trunks', 'classic-7-inseam-swim-trunks', 51, '2024-06-28 08:56:00', '2024-06-28 08:56:00', 1, NULL),
(54, 'Women\'s swim', 'womens-swim', 50, '2024-06-28 08:56:20', '2024-06-28 08:56:20', 1, NULL),
(55, 'Three Piece Bikini Sets', 'three-piece-bikini-sets', 54, '2024-06-28 08:59:01', '2024-06-28 08:59:01', 1, NULL),
(56, 'Cover-ups bikini', 'cover-ups-bikini', 54, '2024-06-28 08:59:36', '2024-06-28 08:59:36', 1, NULL),
(57, 'Bikini Tops', 'bikini-tops', 54, '2024-06-28 09:00:06', '2024-06-28 09:00:06', 1, NULL),
(58, 'Men\'s everyday tees', 'mens-everyday-tees', 27, '2024-06-28 09:14:13', '2024-07-19 07:44:22', 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `colors`
--

INSERT INTO `colors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'White', '2024-06-24 22:13:34', '2024-06-24 22:13:34'),
(2, 'Black', '2024-06-24 22:13:34', '2024-06-24 22:13:34'),
(3, 'Yellow', '2024-06-24 22:23:30', '2024-06-24 22:23:30'),
(4, 'red', '2024-06-24 23:34:38', '2024-06-24 23:34:38'),
(5, 'Navy', '2024-06-25 00:36:26', '2024-06-25 00:36:26'),
(6, 'Orange', '2024-06-25 00:36:26', '2024-06-25 00:36:26'),
(13, '2', '2024-06-25 07:34:16', '2024-06-25 07:34:16'),
(14, '1', '2024-06-25 07:34:16', '2024-06-25 07:34:16'),
(15, '6', '2024-06-25 07:34:16', '2024-06-25 07:34:16'),
(16, 'pink', '2024-06-25 08:13:34', '2024-06-25 08:13:34'),
(17, 'navi', '2024-06-28 09:26:01', '2024-06-28 09:26:01'),
(18, 'olive', '2024-06-28 09:26:01', '2024-06-28 09:26:01'),
(19, 'tan', '2024-06-28 09:26:01', '2024-06-28 09:26:01'),
(20, 'brown', '2024-06-28 09:43:10', '2024-06-28 09:43:10'),
(21, 'cream', '2024-06-28 09:43:10', '2024-06-28 09:43:10'),
(22, 'grey', '2024-06-28 09:51:28', '2024-06-28 09:51:28'),
(23, 'khaki', '2024-06-28 09:51:28', '2024-06-28 09:51:28'),
(24, 'light blue', '2024-06-28 10:01:53', '2024-06-28 10:01:53'),
(25, 'off white', '2024-06-28 10:08:47', '2024-06-28 10:08:47'),
(26, 'blue', '2024-06-28 10:13:40', '2024-06-28 10:13:40'),
(27, 'green', '2024-06-28 10:21:34', '2024-06-28 10:21:34'),
(28, 'Burgundy', '2024-06-28 10:29:51', '2024-06-28 10:29:51'),
(29, 'Charcoal', '2024-06-28 10:29:51', '2024-06-28 10:29:51'),
(30, 'back/combo', '2024-06-28 10:35:13', '2024-06-28 10:35:13'),
(31, 'black/grey', '2024-06-28 10:35:13', '2024-06-28 10:35:13'),
(32, 'black/red', '2024-06-28 10:35:13', '2024-06-28 10:35:13'),
(33, 'dark brown', '2024-06-28 21:33:55', '2024-06-28 21:33:55'),
(34, 'red/combo', '2024-06-28 21:33:55', '2024-06-28 21:33:55'),
(35, 'tan/multi', '2024-06-28 21:33:55', '2024-06-28 21:33:55'),
(36, 'indigo', '2024-06-28 21:44:32', '2024-06-28 21:44:32'),
(37, 'black/combo', '2024-06-28 21:59:57', '2024-06-28 21:59:57'),
(38, 'camel/combo', '2024-06-28 21:59:57', '2024-06-28 21:59:57'),
(39, 'Heather Grey', '2024-06-28 21:59:57', '2024-06-28 21:59:57'),
(40, 'white/combo', '2024-06-28 21:59:57', '2024-06-28 21:59:57'),
(41, 'light wash', '2024-06-28 22:08:55', '2024-06-28 22:08:55'),
(42, 'Vintage Blue Wash', '2024-06-28 22:16:41', '2024-06-28 22:16:41'),
(43, 'Light Blue Wash', '2024-06-28 22:16:41', '2024-06-28 22:16:41'),
(44, 'Mauve', '2024-06-28 22:21:46', '2024-06-28 22:21:46'),
(45, 'hunter', '2024-06-28 22:21:46', '2024-06-28 22:21:46'),
(46, 'Chocolate', '2024-06-28 22:28:49', '2024-06-28 22:28:49'),
(47, 'ice blue', '2024-06-28 22:33:30', '2024-06-28 22:33:30'),
(48, 'Oatmeal', '2024-06-28 22:33:30', '2024-06-28 22:33:30'),
(49, 'Taupe/combo', '2024-06-28 22:40:24', '2024-06-28 22:40:24'),
(50, 'Fuchsia', '2024-06-28 23:47:30', '2024-06-28 23:47:30'),
(51, 'Mustard', '2024-06-28 23:51:33', '2024-06-28 23:51:33'),
(52, 'sage', '2024-06-28 23:51:33', '2024-06-28 23:51:33'),
(53, 'Ivory/combo', '2024-06-28 23:55:33', '2024-06-28 23:55:33'),
(54, 'White/Black', '2024-06-28 23:55:33', '2024-06-28 23:55:33'),
(55, 'HeatherGrey', '2024-06-29 00:04:20', '2024-06-29 00:04:20'),
(56, 'Citron', '2024-06-29 00:17:30', '2024-06-29 00:17:30'),
(57, 'taupe', '2024-06-29 00:23:37', '2024-06-29 00:23:37'),
(58, 'Acid Wash Grey', '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(59, 'Dark Wash', '2024-06-29 00:33:02', '2024-06-29 00:33:02'),
(60, 'Vintage Wash', '2024-06-29 00:33:02', '2024-06-29 00:33:02'),
(61, 'nany', '2024-06-29 00:36:47', '2024-06-29 00:36:47'),
(62, 'maroon', '2024-06-29 00:41:00', '2024-06-29 00:41:00'),
(63, 'coral', '2024-06-29 00:45:55', '2024-06-29 00:45:55'),
(64, 'pink/blue', '2024-06-29 00:50:30', '2024-06-29 00:50:30'),
(65, 'stone', '2024-06-29 00:59:43', '2024-06-29 00:59:43'),
(66, 'neon pink', '2024-06-29 00:59:43', '2024-06-29 00:59:43'),
(67, 'neon yellow', '2024-06-29 00:59:43', '2024-06-29 00:59:43'),
(68, 'purple', '2024-06-29 00:59:43', '2024-06-29 00:59:43'),
(69, 'purle', '2024-06-29 01:17:18', '2024-06-29 01:17:18'),
(70, 'lime', '2024-06-29 01:22:36', '2024-06-29 01:22:36'),
(71, 'kelly green', '2024-06-29 01:22:36', '2024-06-29 01:22:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_06_18_060812_create_categories_table', 1),
(6, '2024_06_18_072228_add_status_column_to_categories_table', 2),
(7, '2024_06_20_051033_add_deleted_at_column_to_categories_table', 3),
(8, '2014_10_12_100000_create_password_resets_table', 4),
(9, '2024_06_23_084612_add_role_to_users_table', 4),
(10, '2024_06_23_113828_create_brands_table', 5),
(11, '2024_06_23_114352_create_products_table', 6),
(12, '2024_06_23_114529_create_colors_table', 7),
(13, '2024_06_23_114658_create_product_colors_table', 7),
(14, '2024_06_23_115843_create_product_images_table', 8),
(15, '2024_06_23_120519_create_sizes_table', 9),
(16, '2024_06_23_120749_create_product_sizes_table', 9),
(17, '2024_06_25_150429_add_deleted_at_column_to_products_table', 10),
(18, '2024_06_26_043325_add_cate_soft_deleted_to_products_table', 11),
(19, '2024_06_27_131244_add_deleted_at_column_to_users_table', 12),
(20, '2024_06_27_151814_create_sliders_table', 13),
(21, '2024_07_02_043234_create_reviews_table', 14),
(22, '2024_07_04_031127_create_wishlists_table', 15),
(23, '2024_07_11_120806_create_carts_table', 16),
(24, '2024_07_17_132507_create_oders_table', 17),
(25, '2024_07_17_132527_create_oder_items_table', 17),
(26, '2024_07_17_134029_create_order_items_table', 18),
(27, '2024_07_19_131416_add_deleted_at_to_wishlists_table', 19),
(28, '2024_07_19_131458_add_deleted_at_to_carts_table', 19),
(29, '2024_07_19_131528_add_deleted_at_to_orders_table', 19),
(30, '2024_07_20_134635_create_notifications_table', 20),
(31, '2024_07_21_022227_create_notifications_table', 21),
(32, '2024_07_24_023623_create_settings_table', 22),
(33, '2024_07_25_080915_add_deleted_at_column_to_settings_table', 23);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('258d88ca-1850-4368-b75b-195cac416f4e', 'App\\Notifications\\ReviewNotification', 'App\\Models\\User', 2, '{\"type\":\"review\",\"id\":94,\"message\":\"Mai Ng\\u00f4 reviewed the product Move Up Plaid Shacket\"}', NULL, '2024-07-28 07:32:52', '2024-07-28 07:32:52'),
('49321aed-db82-4e6b-b858-3acb4e78e16b', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 15, '{\"type\":\"order\",\"id\":20,\"message\":\"Nguy\\u1ec5n V\\u0103n B has placed an order.\"}', NULL, '2024-07-29 00:57:31', '2024-07-29 00:57:31'),
('7144b15c-f4c3-459f-b269-484e1ce83ec9', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 1, '{\"type\":\"order\",\"id\":19,\"message\":\"Admin has placed an order.\"}', NULL, '2024-07-28 02:17:10', '2024-07-28 02:17:10'),
('9a660409-e580-45d0-9f38-7e9e2ce33ecf', 'App\\Notifications\\ReviewNotification', 'App\\Models\\User', 2, '{\"type\":\"review\",\"id\":92,\"message\":\"Mai Ng\\u00f4 reviewed the product Montez Swim Trunk Classic\"}', NULL, '2024-07-21 01:04:45', '2024-07-21 01:04:45'),
('ab70adfb-cd96-4ad4-9081-380404016923', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 1, '{\"type\":\"order\",\"id\":17,\"message\":\"Admin has placed an order.\"}', '2024-07-21 06:17:05', '2024-07-21 01:03:58', '2024-07-21 06:17:05'),
('b98cbc68-637e-4114-b7a3-9ec06bca94af', 'App\\Notifications\\OrderNotification', 'App\\Models\\User', 2, '{\"type\":\"order\",\"id\":18,\"message\":\"Mai Ng\\u00f4 has placed an order.\"}', '2024-07-23 21:02:28', '2024-07-21 01:19:39', '2024-07-23 21:02:28'),
('f9986bfe-c5c0-4421-817d-b095840698f3', 'App\\Notifications\\ReviewNotification', 'App\\Models\\User', 1, '{\"type\":\"review\",\"id\":93,\"message\":\"Admin reviewed the product Tyson Oversized Heavyweight Zip Up\"}', NULL, '2024-07-21 01:17:09', '2024-07-21 01:17:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `total` decimal(10,2) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment` varchar(255) NOT NULL DEFAULT 'COD',
  `shipping` decimal(10,2) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status`, `total`, `fullname`, `phone`, `address`, `note`, `created_at`, `updated_at`, `payment`, `shipping`, `code`, `deleted_at`) VALUES
(7, 2, 'cancelled', 17.00, 'Mai Ngô 2', '1223343434', 'Thành phố Hồ Chí Minh', 'good', '2024-07-17 21:56:44', '2024-07-22 08:08:50', 'COD', 2.00, 'ORD-UYJXB6G', '2024-07-22 08:08:50'),
(9, 1, 'processing', 23.00, 'Nguyễn Văn Admin', '012345678', 'Khu 2 Hoàng Thương, Thanh Ba, Phú Thọ', 'Gói hàng cẩn thận', '2024-07-20 01:57:55', '2024-07-28 08:07:33', 'COD', 2.00, 'ORD-9OGRK', NULL),
(10, 1, 'confirmed', 46.00, 'Đàm Vĩnh Hưng', '012345678', 'Thành phố Hồ Chí Minh', 'Gói hàng cẩn thận', '2024-07-20 02:02:00', '2024-07-28 08:07:50', 'COD', 2.00, 'ORD-IUF52', NULL),
(11, 1, 'pending', 39.40, 'Nguyễn Quang Hải', '123456789', 'Thành phố Hồ Chí Minh', 'cảm ơn shop', '2024-07-20 06:12:46', '2024-07-22 08:21:18', 'COD', 2.00, 'ORD-EXMVJ', '2024-07-22 08:21:18'),
(12, 1, 'pending', 18.00, 'Nguyễn Văn B', '0123456789', 'Thành phố Hồ Chí Minh', 'thanks', '2024-07-20 07:25:52', '2024-07-20 07:25:52', 'COD', 2.00, 'ORD-IMMUP', NULL),
(13, 1, 'delivered', 48.20, 'Nguyễn Văn A', '0123456789', 'Tân Chánh Hiệp 18, Phường Tân Chánh Hiệp, Quận 12, HCM', 'Gói hàng cẩn thận, Cảm ơn shop.', '2024-07-20 20:40:48', '2024-07-28 08:08:09', 'COD', 2.00, 'ORD-VGGX0', NULL),
(14, 1, 'delivered', 30.80, 'Nguyễn Văn A', '1234567890', 'Thành phố Hồ Chí Minh', 'thanks', '2024-07-20 21:19:47', '2024-07-28 08:07:59', 'COD', 2.00, 'ORD-IGCNR', NULL),
(15, 1, 'delivered', 72.00, 'Nguyễn Văn A', '0123456789', 'Thành phố Hồ Chí Minh', 'thanks', '2024-07-20 22:23:19', '2024-07-28 08:07:24', 'COD', 2.00, 'ORD-70DJU', NULL),
(16, 1, 'pending', 89.00, 'Lê Mai Ngô', '0123456789', 'Khu 2 Hoàng Thương, Thanh Ba, Phú Thọ', 'thanks', '2024-07-21 00:57:29', '2024-07-21 00:57:29', 'COD', 2.00, 'ORD-EJKGM', NULL),
(17, 1, 'cancelled', 8.00, 'Nguyễn Văn A', '0123456789', 'Khu 2 Hoàng Thương, Thanh Ba, Phú Thọ', NULL, '2024-07-21 01:03:57', '2024-07-28 08:10:24', 'COD', 2.00, 'ORD-CB03W', NULL),
(18, 2, 'cancelled', 23.00, 'Mai Ngô', '0123456789', 'Khu 2 Hoàng Thương, Thanh Ba, Phú Thọ', NULL, '2024-07-21 01:19:39', '2024-07-28 08:07:42', 'COD', 2.00, 'ORD-E25MS', NULL),
(19, 1, 'pending', 12.00, 'Nguyễn Văn A', '0123456789', 'Khu 2 Hoàng Thương, Thanh Ba, Phú Thọ', 'Thanks', '2024-07-28 02:17:10', '2024-07-28 02:17:10', 'COD', 2.00, 'ORD-97HBM', NULL),
(20, 15, 'pending', 92.60, 'Nguyễn Văn B', '0123456789', '70 Đ. Tô Ký, Tân Chánh Hiệp, Quận 12, Hồ Chí Minh, Việt Nam', 'Gói hàng cẩn thận, cảm ơn shop!', '2024-07-29 00:57:31', '2024-07-29 00:57:31', 'COD', 2.00, 'ORD-DQN2E', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `color` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`, `color`, `size`, `created_at`, `updated_at`) VALUES
(12, 7, 26, 1, 15.00, 'Black', 's', '2024-07-17 21:56:44', '2024-07-17 21:56:44'),
(15, 9, 19, 1, 21.00, 'Black', 's', '2024-07-20 01:57:55', '2024-07-20 01:57:55'),
(16, 10, 28, 2, 22.00, 'olive', 'xxxl', '2024-07-20 02:02:00', '2024-07-20 02:02:00'),
(17, 11, 54, 1, 17.40, 'Charcoal', 'xs', '2024-07-20 06:12:46', '2024-07-20 06:12:46'),
(18, 11, 22, 1, 8.00, 'cream', 's', '2024-07-20 06:12:46', '2024-07-20 06:12:46'),
(19, 11, 20, 1, 12.00, 'Black', 's', '2024-07-20 06:12:46', '2024-07-20 06:12:46'),
(20, 12, 22, 2, 8.00, 'cream', 's', '2024-07-20 07:25:52', '2024-07-20 07:25:52'),
(21, 13, 37, 2, 18.00, 'Vintage Blue Wash', '30', '2024-07-20 20:40:48', '2024-07-20 20:40:48'),
(22, 13, 44, 1, 10.20, 'Black', 'xs', '2024-07-20 20:40:48', '2024-07-20 20:40:48'),
(23, 14, 43, 2, 14.40, 'white/combo', 's', '2024-07-20 21:19:47', '2024-07-20 21:19:47'),
(24, 15, 38, 2, 35.00, 'Burgundy', '30', '2024-07-20 22:23:19', '2024-07-20 22:23:19'),
(25, 16, 29, 3, 29.00, 'black/grey', 's', '2024-07-21 00:57:29', '2024-07-21 00:57:29'),
(26, 17, 45, 1, 6.00, 'Black', 's', '2024-07-21 01:03:57', '2024-07-21 01:03:57'),
(27, 18, 19, 1, 21.00, 'Black', 's', '2024-07-21 01:19:39', '2024-07-21 01:19:39'),
(28, 19, 68, 1, 10.00, 'Black', 'xs', '2024-07-28 02:17:10', '2024-07-28 02:17:10'),
(29, 20, 67, 1, 14.40, 'Black', 'xs', '2024-07-29 00:57:31', '2024-07-29 00:57:31'),
(30, 20, 61, 1, 14.40, 'pink', 's', '2024-07-29 00:57:31', '2024-07-29 00:57:31'),
(31, 20, 49, 1, 11.40, 'Burgundy', 's', '2024-07-29 00:57:31', '2024-07-29 00:57:31'),
(32, 20, 55, 1, 21.00, 'Black', 'xs', '2024-07-29 00:57:31', '2024-07-29 00:57:31'),
(33, 20, 51, 1, 14.40, 'Black', 'xs', '2024-07-29 00:57:31', '2024-07-29 00:57:31'),
(34, 20, 58, 1, 15.00, 'Black', 'xs', '2024-07-29 00:57:31', '2024-07-29 00:57:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$12$SdyHj1ratwAj/X15P.RoqOsXtc7DiIoHODyWMNy3KeDSrNt3yYKcy', '2024-07-28 07:18:21'),
('user1@gmail.com', '$2y$12$d0rwARnd4/ZU66gOc98c1OWv2.ucaNp34VDtO9cRasZ5GbjmxHiHu', '2024-07-24 03:41:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` bigint(20) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `feature_img_path` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_feature` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `discount`, `feature_img_path`, `slug`, `is_feature`, `description`, `status`, `category_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(17, 'Oversized Heavyweight Short Sleeve Tee', 10, NULL, '/storage/product/RA4vSGlkzuXT1YMRi6Rt.webp', 'oversized-heavyweight-short-sleeve-tee', 1, '<ul>\r\n	<li>Model Height: 6&#39;4 - Wearing Large</li>\r\n	<li>Big &amp; Tall Height : 6&#39;3 - Wearing XXXL</li>\r\n	<li>Available In Olive.</li>\r\n	<li>T-Shirt</li>\r\n	<li>Crew Neck</li>\r\n	<li>Short Sleeve</li>\r\n	<li>7oz Weight</li>\r\n	<li>100% Cotton</li>\r\n	<li>Imported</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://cdn.shopify.com/s/files/1/0293/9277/files/prop65.png?3935589063942738854\" />California Proposition 65<br />\r\n<br />\r\nWARNING: Cancer and Reproductive Harm - www.P65Warnings.ca.gov.</p>', 1, 58, 1, '2024-06-29 09:26:01', '2024-07-19 07:44:28', NULL),
(18, 'Painless Short Sleeve Tee', 17, 40, '/storage/product/GIVsA0nmAZFgtwhWfSK7.webp', 'painless-short-sleeve-tee', NULL, '<ul>\r\n	<li>Model Height: 6&#39;4 - Wearing Large</li>\r\n	<li>Big &amp; Tall Height : 6&#39;3 - Wearing XXXL</li>\r\n	<li>Available In Red</li>\r\n	<li>Crew Neck</li>\r\n	<li>Short Sleeve</li>\r\n	<li>Disclaimer: Due To The Printing Process A Difference In Saturation May Occur. Each Garment Is Unique</li>\r\n	<li>100% Cotton</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 58, 1, '2024-06-27 08:37:46', '2024-06-28 09:37:46', NULL),
(19, 'Jaxton Textured Polo', 30, 30, '/storage/product/DuDlqhPWhwJT8wk5Vr21.webp', 'jaxton-textured-polo', 1, '<ul>\r\n	<li>Available In Cream.</li>\r\n	<li>Fold Down Collar</li>\r\n	<li>Short Sleeve</li>\r\n	<li>52% Acrylic 28% Nylon 20% Polyester</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 34, 1, '2024-06-29 09:43:10', '2024-07-19 09:56:37', NULL),
(20, 'Wilson Short Sleeve Polo', 12, NULL, '/storage/product/f5NinT09DLxMITnT577R.webp', 'wilson-short-sleeve-polo', 1, '<ul>\r\n	<li>Model Height: 6&#39;4 - Wearing Large</li>\r\n	<li>Big &amp; Tall Height : 6&#39;3 - Wearing XXXL</li>\r\n	<li>Available In Black, White, Grey, Pink, Red, Navy, Neon Pink, Neon Yellow, Green, Yellow, Light Blue, Coral, Royal Blue, Burgundy, Purple, Pink/Pink, Charcoal, Olive, Khaki, Sage, Mustard, Sand, Orange And Blue.</li>\r\n	<li>Fold Down Collar</li>\r\n	<li>3 Button Closure</li>\r\n	<li>Short Sleeve</li>\r\n	<li>100% Cotton</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 34, 1, '2024-06-27 09:51:28', '2024-06-28 09:51:28', NULL),
(21, 'Essential Tank Top', 6, NULL, '/storage/product/dcY2S3hKLTwFWZzXzztU.webp', 'essential-tank-top', NULL, '<ul>\r\n	<li>Model Height: 6&#39;4 - Wearing Large</li>\r\n	<li>Big &amp; Tall Height : 6&#39;3 - Wearing XXXL</li>\r\n	<li>Available In Black, Charcoal, Grey, Mint, Navy, Olive, Red And White</li>\r\n	<li>Scoop Neck</li>\r\n	<li>Sleeveless</li>\r\n	<li>100% Cotton</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 35, 1, '2024-06-28 09:55:21', '2024-06-28 09:55:21', NULL),
(22, 'Rope Textured Tank', 20, 60, '/storage/product/M43ZzqjKyjPOJFlhQ94U.webp', 'rope-textured-tank', 1, '<ul>\r\n	<li>Available In Olive, Cream, Light Blue, Navy</li>\r\n	<li>Scoop Neck</li>\r\n	<li>Sleeveless</li>\r\n	<li>95% Polyester, 5% Spandex</li>\r\n	<li>Imported</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://cdn.shopify.com/s/files/1/0293/9277/files/prop65.png?3935589063942738854\" />California Proposition 65<br />\r\n<br />\r\nWARNING: Cancer and Reproductive Harm - www.P65Warnings.ca.gov.</p>', 1, 35, 1, '2024-06-27 10:01:53', '2024-06-28 10:01:53', NULL),
(23, 'Erickson Faux Leather Tank', 24, 40, '/storage/product/wy0wRgCj1NQxumnzPsXp.webp', 'erickson-faux-leather-tank', NULL, '<ul>\r\n	<li>Available In Black.</li>\r\n	<li>Scoop Neck</li>\r\n	<li>Sleeveless</li>\r\n	<li>100% Polyester With PU</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 35, 1, '2024-06-28 10:08:47', '2024-06-28 10:08:47', NULL),
(24, 'Kam Textured Polo', 30, 40, '/storage/product/Dc6v8TaguyvPcsDwrvWV.webp', 'kam-textured-polo', 1, '<ul>\r\n	<li>Available In Tan/Multi and Blue/Combo</li>\r\n	<li>Fold Down Collar</li>\r\n	<li>Short Sleeve</li>\r\n	<li>60% Cotton, 39% Polyester, 1% Spandex</li>\r\n	<li>Pair With &quot;Kam Textured Shorts&quot;</li>\r\n	<li>Pair With &quot;Kam Textured Tank&quot;</li>\r\n	<li>Disclaimer: Stripe Placement Will Vary.</li>\r\n	<li>Imported</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://cdn.shopify.com/s/files/1/0293/9277/files/prop65.png?3935589063942738854\" />California Proposition 65<br />\r\n<br />\r\nWARNING: Cancer and Reproductive Harm - www.P65Warnings.ca.gov.</p>', 1, 34, 1, '2024-06-27 10:13:40', '2024-06-28 10:13:40', NULL),
(25, 'Kina Textured Boxy Tee', 21, 35, '/storage/product/7vVbDKo29DxwP7PtoUTC.jpg', 'kina-textured-boxy-tee', NULL, '<ul>\r\n	<li>Available In Tan.</li>\r\n	<li>Crew Neck</li>\r\n	<li>Short Sleeve</li>\r\n	<li>Boxy Fit</li>\r\n	<li>Pair With &quot;Kina Textured Knit Pants&quot;</li>\r\n	<li>Pair With &quot;Kina Textured Knit Shorts&quot;</li>\r\n	<li>97% Polyester 3% Spandex</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 58, 1, '2024-06-28 10:21:34', '2024-06-28 10:21:34', NULL),
(26, 'Tyson Hoodie', 25, 40, '/storage/product/Mqo6BUAh1T7WOYQKlLaW.webp', 'tyson-hoodie', 1, '<ul>\r\n	<li>Model Height: 6&#39;1 Wearing Large</li>\r\n	<li>Big &amp; Tall: Height 6&#39;3 - Wearing XXXL</li>\r\n	<li>Hood With Drawstring</li>\r\n	<li>Long Sleeve</li>\r\n	<li>Ribbing On Cuffs And Hem</li>\r\n	<li>Kangaroo Pocket</li>\r\n	<li>80% Cotton 20% Polyester</li>\r\n	<li>Imported</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://cdn.shopify.com/s/files/1/0293/9277/files/prop65.png?3935589063942738854\" />California Proposition 65<br />\r\n<br />\r\nWARNING: Cancer and Reproductive Harm - www.P65Warnings.ca.gov.</p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: 39px; top: 38px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', 1, 49, 1, '2024-06-27 10:29:51', '2024-07-19 09:56:38', NULL),
(27, 'Tyson Opposite Forces Oversize Hoodie', 40, 40, '/storage/product/7qrub4IGpLLyeCnxbEw5.webp', 'tyson-opposite-forces-oversize-hoodie', NULL, '<ul>\r\n	<li>Available In Black/Grey, Black/Red, Black/combo and Chocolate/combo</li>\r\n	<li>Long Sleeve</li>\r\n	<li>Kangaroo Pocket</li>\r\n	<li>Colorblock Detail</li>\r\n	<li>Pair With &quot;Tyson Opposite Forces Straight Sweatpants&quot;</li>\r\n	<li>60% Cotton 40% Polyester</li>\r\n	<li>Domestic</li>\r\n</ul>', 1, 49, 1, '2024-06-28 10:35:13', '2024-06-28 10:35:13', NULL),
(28, 'Tyson Oversized Heavyweight Zip Up', 22, NULL, '/storage/product/KKiu9PL5dcIRbO88dDBK.webp', 'tyson-oversized-heavyweight-zip-up', 1, '<ul>\r\n	<li>Available.</li>\r\n	<li>Hood With Drawstring</li>\r\n	<li>Full Zip Fastening</li>\r\n	<li>Side Pockets</li>\r\n	<li>60% Cotton 40% Polyester</li>\r\n	<li>Imported</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://cdn.shopify.com/s/files/1/0293/9277/files/prop65.png?3935589063942738854\" />California Proposition 65<br />\r\n<br />\r\nWARNING: Cancer and Reproductive Harm - www.P65Warnings.ca.gov.</p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: 135px; top: -6px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: 135px; top: -6px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', 1, 49, 1, '2024-06-27 10:40:29', '2024-07-20 05:36:48', NULL),
(29, 'Move Up Plaid Shacket', 29, NULL, '/storage/product/80ReYc2otk4WJPmnf6h9.webp', 'move-up-plaid-shacket', NULL, '<ul>\r\n	<li>Model Height: 6&#39;2 - Wearing Large</li>\r\n	<li>Big &amp; Tall: Height 6&#39;3- Wearing XXXL</li>\r\n	<li>Available In Tan/Multi.</li>\r\n	<li>Fold Down Collar</li>\r\n	<li>Long Sleeve</li>\r\n	<li>Front Button Closure</li>\r\n	<li>Disclaimer: Plaid Placement Will Vary.</li>\r\n	<li>90% Polyester 10% Wool</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 29, 1, '2024-06-25 21:33:55', '2024-06-28 21:33:55', NULL),
(30, 'Bordeaux Cropped Chore Jacket', 49, 40, '/storage/product/Wry393w2QuNXkNK9tiDQ.webp', 'bordeaux-cropped-chore-jacket', 1, '<ul>\r\n	<li>Fold Down Collar</li>\r\n	<li>Front Zipper Closure</li>\r\n	<li>Chest Pocket Detail</li>\r\n	<li>Side Hand Pockets</li>\r\n	<li>Shell: 98% Cotton 2% Spandex</li>\r\n	<li>Lining; 100% Polyester</li>\r\n	<li>Imported</li>\r\n	<br />\r\n	<br />\r\n	&nbsp;\r\n</ul>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: 31px; top: -6px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', 1, 29, 1, '2024-06-26 21:39:42', '2024-07-19 07:44:27', NULL),
(31, 'Can\'t Replace Nylon Hooded Bomber Jacket', 49, 40, '/storage/product/uY0vizm8myGeko1iPqmB.webp', 'cant-replace-nylon-hooded-bomber-jacket', NULL, '<ul>\r\n	<li>Available In Indigo.</li>\r\n	<li>Hoodie</li>\r\n	<li>Front Button Closure</li>\r\n	<li>Side Hand Pockets</li>\r\n	<li>Ribbed Cuff&#39;s And Bottom Hem</li>\r\n	<li>Shell: 100% Nylon</li>\r\n	<li>Padding: 100% Polyester</li>\r\n	<li>Lining: 100% Polyester</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 29, 1, '2024-06-26 21:44:32', '2024-06-28 21:44:32', NULL),
(32, 'DeAngelo Turtleneck Sweater', 29, 40, '/storage/product/pOH9qvBVclI6tqmqwom6.webp', 'deangelo-turtleneck-sweater', 1, '<ul>\r\n	<li>Model Height: 6&#39;2 - Wearing Large</li>\r\n	<li>Big &amp; Tall: Height 6&#39;3- Wearing XXXL</li>\r\n	<li>Available In Black, Off White, Burgundy, And Olive.</li>\r\n	<li>Turtleneck</li>\r\n	<li>Long Sleeve</li>\r\n	<li>Ribbed Cuff And Bottom Hem</li>\r\n	<li>100% Acrylic</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 28, 1, '2024-06-26 21:56:36', '2024-06-28 21:56:36', NULL),
(33, 'Cody Cable Knit Sweater', 34, 40, '/storage/product/TvuReaFPTTkWMJLvYW59.webp', 'cody-cable-knit-sweater', NULL, '<ul>\r\n	<li>Model Height: 6&#39;2 - Wearing Large</li>\r\n	<li>Big &amp; Tall: Height 6&#39;3- Wearing XXXL</li>\r\n	<li>Available In Black/combo, Heather Grey, And White/combo.</li>\r\n	<li>Crew Neck</li>\r\n	<li>Long Sleeve</li>\r\n	<li>Colorblock Detail</li>\r\n	<li>Ribbed Cuff And Bottom Hem</li>\r\n	<li>85% Acrylic 15% Nylon</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 28, 1, '2024-06-25 21:59:57', '2024-06-28 21:59:57', NULL),
(34, 'Drew Cable Knit Sweater', 32, 40, '/storage/product/rkNJNtmc3jrqhbGf13Xf.jpg', 'drew-cable-knit-sweater', 1, '<ul>\r\n	<li>Model Height: 6&#39;2 - Wearing Large</li>\r\n	<li>Big &amp; Tall: Height 6&#39;3- Wearing XXXL</li>\r\n	<li>Available In White, Black, And Heather Grey.</li>\r\n	<li>Crew Neck</li>\r\n	<li>Long Sleeve</li>\r\n	<li>Ribbed Cuff And Bottom Hem</li>\r\n	<li>100% Acrylic</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 28, 1, '2024-06-26 22:03:20', '2024-06-28 22:03:20', NULL),
(35, 'Ghost Slim Jeans', 39, 40, '/storage/product/12CYi94EIaXLiLso8jyP.webp', 'ghost-slim-jeans', NULL, '<ul>\r\n	<li>Slim Fit</li>\r\n	<li>Zip Fly</li>\r\n	<li>Button Closure</li>\r\n	<li>5 Pocket Detail</li>\r\n	<li>Distressed Detail</li>\r\n	<li>98% Cotton 2% Spandex</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 31, 1, '2024-06-27 22:08:55', '2024-06-28 22:08:55', NULL),
(36, 'Stoney Point Stacked Slim Flare Jeans', 41, 40, '/storage/product/qjEZqE6Ql6kxjTAly26h.webp', 'stoney-point-stacked-slim-flare-jeans', 1, '<ul>\r\n	<li>Stacked Slim Flare Fit</li>\r\n	<li>Zip Fly</li>\r\n	<li>Button Closure</li>\r\n	<li>5 Pocket Detail</li>\r\n	<li>Stretch Denim</li>\r\n	<li>Distressed Detail</li>\r\n	<li>Fray Detail</li>\r\n	<li>Open Hem</li>\r\n	<li>60% Cotton 35% Polyester 4% Viscose 1% Spandex</li>\r\n	<li>Disclaimer: Due To The Distressing Process, Each Garment Is Unique.</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 31, 1, '2024-06-26 22:11:49', '2024-06-28 22:11:49', NULL),
(37, 'Cornell Slim Jeans', 18, NULL, '/storage/product/UzQGwY7edsRKhlRYH4PW.webp', 'cornell-slim-jeans', NULL, '<ul>\r\n	<li>Available In Black, Dark Wash and Light Blue Wash And Medium Blue Wash</li>\r\n	<li>Zip Fly</li>\r\n	<li>Button Front Closure</li>\r\n	<li>Five Pockets</li>\r\n	<li>Slim Fit</li>\r\n	<li>32 Inseam</li>\r\n	<li>Disclaimer: Due To The Specialized Wash Process, Each Garment Is Unique</li>\r\n	<li>99% Cotton 1% Spandex</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 31, 1, '2024-06-25 22:16:41', '2024-06-28 22:16:41', NULL),
(38, 'The Modern Stretch Slim Trouser', 35, NULL, '/storage/product/5eYkwmsRI0LJHRprFRPW.webp', 'the-modern-stretch-slim-trouser', 1, '<ul>\r\n	<li>Button Closure</li>\r\n	<li>Zip Fly</li>\r\n	<li>Side Hand Pockets</li>\r\n	<li>Slim Fit</li>\r\n	<li>Inseam is 33 , can be tailored</li>\r\n	<li>Pair with The Modern Stretch Suit Jacket</li>\r\n	<li>Shell: 65% Polyester 33% Viscose 2% Spandex Lining: 100% Polyester</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 32, 1, '2024-06-26 22:21:46', '2024-06-28 22:21:46', NULL),
(39, 'Mac Slim Slit Trousers', 20, NULL, '/storage/product/VKWceYPBvCFdetBs7Q6g.webp', 'mac-slim-slit-trousers', 1, '<ul>\r\n	<li>Model Height: 6&#39;4 - Waist Size: 34 - Wearing Large</li>\r\n	<li>Zip Fly</li>\r\n	<li>Button Closure</li>\r\n	<li>Side Hand Pockets</li>\r\n	<li>Back Pockets</li>\r\n	<li>Slit At Hem</li>\r\n	<li>98% Cotton 2% Spandex</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 32, 1, '2024-06-28 22:25:10', '2024-06-28 22:25:10', NULL),
(40, 'Show Up Slim Slit Pants', 20, NULL, '/storage/product/5W4NavRX5liDM6L9Fqkg.webp', 'show-up-slim-slit-pants', NULL, '<ul>\r\n	<li>Model Height: 6&#39;1 - Waist 32 - Wearing Large</li>\r\n	<li>Available In Off White.</li>\r\n	<li>Elastic Waist Band</li>\r\n	<li>Drawstring</li>\r\n	<li>Side Hand Pockets</li>\r\n	<li>96% Polyester, 4% Elastane</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 32, 1, '2024-06-26 22:28:49', '2024-06-28 22:28:49', NULL),
(41, 'Bahamas Linen Cargo Shorts', 34, 40, '/storage/product/nvBv3yKBTImKYxz1nX7R.webp', 'bahamas-linen-cargo-shorts', NULL, '<ul>\r\n	<li>Fixed Waist</li>\r\n	<li>Zip Fly</li>\r\n	<li>Button Closure</li>\r\n	<li>Side Pockets</li>\r\n	<li>Back Pockets</li>\r\n	<li>Cargo Pockets</li>\r\n	<li>Pair With &quot;Bahamas Linen Chore Jacket&quot;</li>\r\n	<li>Pair With &quot;Bahamas Linen Shirt&quot;</li>\r\n	<li>Pair With &quot;Bahamas Linen Classic Button Up Shirt&quot;</li>\r\n	<li>Pair With &quot;Bahamas Linen Cuban Shirt&quot;</li>\r\n	<li>Shell: 55% Linen 45% Cotton</li>\r\n	<li>Lining: 100% Polyester</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 33, 1, '2024-06-26 22:33:30', '2024-06-28 22:33:30', NULL),
(42, 'Tyson Heavy Wash Relaxed Shorts', 29, 40, '/storage/product/RoonBP7b68qqkxBu4vY2.webp', 'tyson-heavy-wash-relaxed-shorts', 1, '<ul>\r\n	<li>Elastic Waist</li>\r\n	<li>Side Pockets</li>\r\n	<li>Drawstring</li>\r\n	<li>Pair With &quot;Tyson Heavy Wash Boxy Tee&quot;</li>\r\n	<li>Disclaimer: Due To The Specialized Wash Process, Each Garment Is Unique.</li>\r\n	<li>80% Cotton, 20% Polyester</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 33, 1, '2024-06-26 22:36:12', '2024-06-28 22:36:12', NULL),
(43, 'Fargo Printed Stripes Shorts', 24, 40, '/storage/product/pdBgYRQ8jpyfk5PIaIJX.webp', 'fargo-printed-stripes-shorts', NULL, '<ul>\r\n	<li>Striped At Hem</li>\r\n	<li>Side Pockets</li>\r\n	<li>Drawstring</li>\r\n	<li>Elastic Waist</li>\r\n	<li>Pair With &quot;Fargo Printed Striped Cropped Shirt&quot;</li>\r\n	<li>Disclaimer: Due To The Nature Of The Sublimation Print Process, Each Garment Is Unique.</li>\r\n	<li>98% Polyester, 2% Spandex</li>\r\n	<li>Lining: 100% Polyester</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 33, 1, '2024-06-28 22:40:24', '2024-06-28 22:40:24', NULL),
(44, 'Wet Dream Ribbed Top', 17, 40, '/storage/product/RrMYmFwYE7PvebFvIgVZ.webp', 'wet-dream-ribbed-top', 1, '<ul>\r\n	<li>Tank Top</li>\r\n	<li>Crew Neck</li>\r\n	<li>Sleeveless</li>\r\n	<li>Front Screen</li>\r\n	<li>Ribbed</li>\r\n	<li>Cropped</li>\r\n	<li>Stretch</li>\r\n	<li>Disclaimer: Due To The Printing Process A Difference In Saturation May Occur. Each Garment Is Unique.</li>\r\n	<li>50% Cotton 50% Polyester</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 38, 1, '2024-06-26 23:43:00', '2024-06-28 23:43:00', NULL),
(45, 'Judia Crew Neck Top', 6, NULL, '/storage/product/rfcTf0rEguX6UL5RCfkK.webp', 'judia-crew-neck-top', NULL, '<ul>\r\n	<li>Available In White, Black, Blue, Fuchsia, And Heather Grey.</li>\r\n	<li>Short Sleeve</li>\r\n	<li>Cropped</li>\r\n	<li>60% Cotton 35% Rayon 5% Spandex</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 38, 1, '2024-06-26 23:47:30', '2024-06-28 23:47:30', NULL),
(46, 'Aurora Woven Top', 12, NULL, '/storage/product/QozHCo0h17TMLcyxAT0Z.webp', 'aurora-woven-top', 1, '<ul>\r\n	<li>Available In Sage And Chocolate.</li>\r\n	<li>Woven Top</li>\r\n	<li>Long Sleeve</li>\r\n	<li>Button Up</li>\r\n	<li>Pockets</li>\r\n	<li>100% Rayon</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 39, 1, '2024-06-26 23:51:33', '2024-06-28 23:51:33', NULL),
(47, 'Bayside Satin Shirt', 22, 40, '/storage/product/caRmH1cIwxYyuKFOR7gw.webp', 'bayside-satin-shirt', NULL, '<ul>\r\n	<li>Available In Red/combo, White/Black, And Green/combo.</li>\r\n	<li>Satin Shirt</li>\r\n	<li>Long Sleeve</li>\r\n	<li>Button Down</li>\r\n	<li>Collar</li>\r\n	<li>Striped</li>\r\n	<li>Non Stretch</li>\r\n	<li>100% Polyester</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 39, 1, '2024-06-27 23:55:33', '2024-06-28 23:55:33', NULL),
(48, 'Always Distressing Me Out Sweater', 244, 40, '/storage/product/V5vqgJUxbCUBz0M82FeD.webp', 'always-distressing-me-out-sweater', NULL, '<ul>\r\n	<li>Available In Multiple Colors</li>\r\n	<li>Pullover Sweater</li>\r\n	<li>V Neck</li>\r\n	<li>Long Sleeve</li>\r\n	<li>Distressed</li>\r\n	<li>Disclaimer: Due To The Distressing Process, Each Garment Is Unique.</li>\r\n	<li>100% Acrylic&nbsp;</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 40, 1, '2024-06-26 23:59:24', '2024-06-28 23:59:24', NULL),
(49, 'Tara Turtle Neck Sweater', 19, 40, '/storage/product/GfyKnSAWeumodJVnSMgw.webp', 'tara-turtle-neck-sweater', 1, '<ul>\r\n	<li>Available In Multiple Colors</li>\r\n	<li>Pullover Sweater</li>\r\n	<li>Turtleneck</li>\r\n	<li>Long Sleeve</li>\r\n	<li>80% Rayon 20% Polyester</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 40, 1, '2024-06-27 00:04:20', '2024-07-19 09:13:06', NULL),
(50, 'When Good Meets Bad Pleated Mini Skort', 29, 40, '/storage/product/9gE684ej1GMdnHP93rqt.webp', 'when-good-meets-bad-pleated-mini-skort', NULL, '<ul>\r\n	<li>Available In Khaki And Navy.</li>\r\n	<li>Skort</li>\r\n	<li>Mini</li>\r\n	<li>Pleated</li>\r\n	<li>High Waist</li>\r\n	<li>Stretch</li>\r\n	<li>Lined Shorts</li>\r\n	<li>67% Viscose 28% Nylon 5% Spandex</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 44, 1, '2024-06-27 00:01:45', '2024-06-29 00:07:45', NULL),
(51, 'When Good Meets Bad Pleated Micro Mini Skort', 24, 40, '/storage/product/CsXfS7MGcn4CjId4QBzd.webp', 'when-good-meets-bad-pleated-micro-mini-skort', NULL, '<ul>\r\n	<li>Skort</li>\r\n	<li>Micro Mini Skirt</li>\r\n	<li>Pleated</li>\r\n	<li>Low Waist</li>\r\n	<li>Stretch</li>\r\n	<li>Lined Shorts</li>\r\n	<li>9.5&quot; Front Length</li>\r\n	<li>Self: 67% Viscose 28% Nylon 5% Spandex</li>\r\n	<li>Contrast: 95% Polyester 5% Spandex</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 44, 1, '2024-06-28 00:11:43', '2024-06-29 00:11:43', NULL),
(52, 'Lily Maxi Skirt', 244, 40, '/storage/product/mMyqRoPEkzjGm4Ev56z0.webp', 'lily-maxi-skirt', 1, '<ul>\r\n	<li>Available In White And Pink.</li>\r\n	<li>Maxi Skirt</li>\r\n	<li>High Rise</li>\r\n	<li>Elastic Waist</li>\r\n	<li>Ruffle Detail</li>\r\n	<li>Lined</li>\r\n	<li>Crinkled Fabric</li>\r\n	<li>Self 20% Polyester 80% Rayon</li>\r\n	<li>Lining 100% Polyester</li>\r\n	<li>Non Stretch</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 45, 1, '2024-06-27 00:14:28', '2024-06-29 00:14:28', NULL),
(53, 'Abbey Snatched Maxi Skirt', 24, 60, '/storage/product/IA2QUjarKE81h2NvaxQy.webp', 'abbey-snatched-maxi-skirt', NULL, '<ul>\r\n	<li>Maxi Skirt</li>\r\n	<li>Ruched Front&nbsp;</li>\r\n	<li>High Slit</li>\r\n	<li>Stretch</li>\r\n	<li>Compression Rib</li>\r\n	<li>86% Rayon 14% Spandex</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 45, 1, '2024-06-27 00:17:30', '2024-06-29 00:17:30', NULL),
(54, 'Heidi Wide Leg Trouser Pant', 29, 40, '/storage/product/hYB0kqELLVEXh7czpyG1.webp', 'heidi-wide-leg-trouser-pant', NULL, '<ul>\r\n	<li>Available In Taupe And Slate Blue.</li>\r\n	<li>Trouser Pant</li>\r\n	<li>High Rise</li>\r\n	<li>Button &amp; Zip Closure</li>\r\n	<li>Wide Leg</li>\r\n	<li>Pintuck Front</li>\r\n	<li>Stretch</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 46, 1, '2024-06-28 00:23:37', '2024-06-29 00:23:37', NULL),
(55, 'Talia Belted Pants', 21, NULL, '/storage/product/AptlSPH4XPwRkTpFYdKQ.webp', 'talia-belted-pants', NULL, '<ul>\r\n	<li>Skinny Trousers</li>\r\n	<li>Belted</li>\r\n	<li>High Waist</li>\r\n	<li>Stretch</li>\r\n	<li>Pair With The Celine Blazer</li>\r\n	<li>Shell: 95% Polyester 5% Spandex</li>\r\n	<li>Lining: 100% Polyester</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 46, 1, '2024-06-27 00:26:26', '2024-06-29 00:26:26', NULL),
(56, 'It\'s Giving High Stretch Curvy Skinny Jeans', 29, 60, '/storage/product/nLU5dLkUennIgXALdpon.webp', 'its-giving-high-stretch-curvy-skinny-jeans', 1, '<ul>\r\n	<li>Available In Multiple Colors.</li>\r\n	<li>Skinny Jean</li>\r\n	<li>5 Pocket</li>\r\n	<li>29 &quot; Inseam</li>\r\n	<li>11. 25&quot; High Rise</li>\r\n	<li>High Stretch</li>\r\n	<li>Acid Wash</li>\r\n	<li>Disclaimer: Due To The Specialized Wash Process, Each Garment Is Unique.</li>\r\n	<li>70% Cotton 28% Polyester 2% Spandex</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 47, 1, '2024-06-28 00:30:07', '2024-06-29 00:30:07', NULL),
(57, 'Calling It Off Baggy Jeans', 299, 40, '/storage/product/huqD0Om4YbRxKUSUazBS.webp', 'calling-it-off-baggy-jeans', NULL, '<ul>\r\n	<li>Available In Vintage Wash And Dark Wash.</li>\r\n	<li>Wide Leg Jean</li>\r\n	<li>Drop Waist</li>\r\n	<li>11&quot; Rise</li>\r\n	<li>32.5&quot; Inseam</li>\r\n	<li>Disclaimer: Due To The Specialized Wash Process, Each Garment Is Unique.</li>\r\n	<li>90% Cotton 10% Polyester</li>\r\n	<li>Non Stretch</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 47, 1, '2024-06-28 00:33:02', '2024-06-29 00:33:02', NULL),
(58, 'Relaxed Vibe Joggers', 15, NULL, '/storage/product/6CZusDnROlDBeKQFn6Oc.webp', 'relaxed-vibe-joggers', NULL, '<ul>\r\n	<li>Available In A Variety of Colors.</li>\r\n	<li>Fleece Jogger</li>\r\n	<li>Drawstring/Elasticized Waistband</li>\r\n	<li>Mid-Rise</li>\r\n	<li>Functional Front &amp; Back Pockets</li>\r\n	<li>Elasticized Ankle Hem</li>\r\n	<li>Pair With Our &quot;Relaxed Vibe Solid Hoodie&quot;</li>\r\n	<li>60% Cotton, 40% Polyester.</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 48, 1, '2024-06-28 00:36:47', '2024-06-29 00:36:47', NULL),
(59, 'Analissa Jogger', 19, 40, '/storage/product/j2iaIlalaPXswVetb1Mj.webp', 'analissa-jogger', NULL, '<ul>\r\n	<li>Available in Black, Maroon, Mustard, and Red</li>\r\n	<li>Pair with Analissa Pullover Hoodie</li>\r\n	<li>Jogger</li>\r\n	<li>Drawstring</li>\r\n	<li>Back Pockets</li>\r\n	<li>Colorblock</li>\r\n	<li>Disclaimer: Plus Size Runs Small, Shop One Size Up.</li>\r\n	<li>60% Cotton 40% Polyester</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 48, 1, '2024-06-27 00:41:00', '2024-06-29 00:41:00', NULL),
(60, 'Montez Stretch Swim Trunk Short', 15, NULL, '/storage/product/PBXZpMChGA29BOEXM3EW.webp', 'montez-stretch-swim-trunk-short', NULL, '<ul>\r\n	<li>4&quot; Inseam</li>\r\n	<li>Elastic Waist</li>\r\n	<li>Drawstring</li>\r\n	<li>Side Hand Pockets</li>\r\n	<li>Back Pocket</li>\r\n	<li>Mesh Lining</li>\r\n	<li>Shell: 92% Nylon 8% Spandex</li>\r\n	<li>Lining: 100% Nylon</li>\r\n	<li>Imported</li>\r\n	<li>Final Sale</li>\r\n</ul>', 1, 52, 1, '2024-06-28 00:45:55', '2024-06-29 00:45:55', NULL),
(61, 'Valley Swim Trunks', 24, 40, '/storage/product/FTKhlmGKrFPTajCLDQku.webp', 'valley-swim-trunks', 1, '<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>6&quot; Inseam</li>\r\n	<li>Elastic Waist</li>\r\n	<li>Drawstring</li>\r\n	<li>Side Hand Pockets</li>\r\n	<li>Back Pocket</li>\r\n	<li>Pair With &quot;Valley Shirt&quot;</li>\r\n	<li>Shell: 92% Polyester 8% Spandex</li>\r\n	<li>Lining: 89% Polyester 11% Spandex</li>\r\n	<li>Imported</li>\r\n	<li>Final Sale</li>\r\n</ul>', 1, 53, 1, '2024-06-28 00:50:30', '2024-06-29 00:51:43', NULL),
(62, 'Aloha Snoopy Swim Trunk2', 29, 40, '/storage/product/7Fovg9sc3Kbv9cLAeNsx.webp', 'aloha-snoopy-swim-trunk2', NULL, '<ul>\r\n	<li>Available In Blue.</li>\r\n	<li>Elastic Waist</li>\r\n	<li>Drawstring</li>\r\n	<li>Side Hand Pockets</li>\r\n	<li>Back Pocket</li>\r\n	<li>Screen Print</li>\r\n	<li>Final Sale</li>\r\n	<li>100% Polyester</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 53, 1, '2024-06-27 00:54:29', '2024-06-29 00:54:29', NULL),
(63, 'Montez Swim Trunk Classic', 12, NULL, '/storage/product/ZAQggNmlPZwuVS3XjWuG.webp', 'montez-swim-trunk-classic', NULL, '<ul>\r\n	<li>Model Height: 6&#39;2 Wearing Large</li>\r\n	<li>Big &amp; Tall: Height 6&#39;5 - Wearing XXL</li>\r\n	<li>Available InBlue, Neon Pink, Neon Yellow, Orange, Pink, Purple, Black, Red, Navy, Light Blue, Pink Pink, Mint, And Yellow</li>\r\n	<li>7&quot; Inseam</li>\r\n	<li>Elastic Waist</li>\r\n	<li>Drawstring</li>\r\n	<li>Side Hand Pockets</li>\r\n	<li>Back Pocket</li>\r\n	<li>Mesh Lining</li>\r\n	<li>Final Sale</li>\r\n	<li>Shell: 100% Polyester</li>\r\n	<li>Lining: 100% Polyester</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 52, 1, '2024-06-27 00:59:43', '2024-06-29 00:59:43', NULL),
(64, 'Balmy Beach Club 3 Piece Bikini Set', 26, 40, '/storage/product/aQtT62DnJfIDQFzFPt8n.webp', 'balmy-beach-club-3-piece-bikini-set', 1, '<p>&nbsp;</p>\r\n\r\n<p>Available In Black.</p>\r\n\r\n<ul>\r\n	<li>3 Piece Bikini Set</li>\r\n	<li>Bralette Bikini Top</li>\r\n	<li>Asymmetrical</li>\r\n	<li>One Shoulder</li>\r\n	<li>Adjustable Straps</li>\r\n	<li>Removable Cups</li>\r\n	<li>Ruching</li>\r\n	<li>Bikini Bottom</li>\r\n	<li>Cheeky</li>\r\n	<li>Matching Mesh Sarong</li>\r\n	<li>Full Stretch</li>\r\n	<li>Final Sale</li>\r\n	<li>Self/Lining: Self:82% Nylon 18% Spandex</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 55, 1, '2024-06-28 01:03:43', '2024-06-29 01:03:43', NULL),
(65, 'Maui Dreams 3 Piece Bikini Set', 29, 40, '/storage/product/gyMO0jVAWySDIaOTRuqq.webp', 'maui-dreams-3-piece-bikini-set', 1, '<ul>\r\n	<li>Available In Brown/combo And Blue/combo.</li>\r\n	<li>3 Piece Bikini Set</li>\r\n	<li>Bandeau Padded Top</li>\r\n	<li>Adjustable Halter Tie</li>\r\n	<li>Cut Out Detail</li>\r\n	<li>Thong Bottom</li>\r\n	<li>Minimal Back Coverage</li>\r\n	<li>Cover Up Skirt</li>\r\n	<li>Adjustable Side Tie</li>\r\n	<li>Full Stretch</li>\r\n	<li>Disclaimer: Print Placement May Vary</li>\r\n	<li>Final Sale</li>\r\n	<li>89% Polyester 11% Spandex</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 55, 1, '2024-06-29 03:06:46', '2024-06-29 01:06:46', NULL),
(66, 'Summers By The Pool Fishnet Cover Up Top', 14, 40, '/storage/product/2TU4ZxuMe7nChdKIGERj.webp', 'summers-by-the-pool-fishnet-cover-up-top', NULL, '<ul>\r\n	<li>Available In Yellow And Purple.</li>\r\n	<li>Cover Up Top</li>\r\n	<li>Fishnet</li>\r\n	<li>Sheer</li>\r\n	<li>Crew Neck</li>\r\n	<li>Short Sleeve</li>\r\n	<li>Full Stretch</li>\r\n	<li>Final Sale</li>\r\n	<li>90% Polyester 10% Spandex</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 56, 1, '2024-06-28 01:09:59', '2024-06-29 01:09:59', NULL),
(67, 'Breezy Paradise Linen Crochet Trim Cover Up Kimono', 24, 40, '/storage/product/PPsH3V4jUP7PA5rnQ4Tq.webp', 'breezy-paradise-linen-crochet-trim-cover-up-kimono', NULL, '<ul>\r\n	<li>Swim Cover Up Kimono</li>\r\n	<li>Linen</li>\r\n	<li>Crochet Trim</li>\r\n	<li>Short Sleeves</li>\r\n	<li>Open Front</li>\r\n	<li>Tie Waist</li>\r\n	<li>Sheer</li>\r\n	<li>Full Stretch</li>\r\n	<li>Final Sale</li>\r\n	<li>100% Viscose</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 56, 1, '2024-06-27 01:12:30', '2024-06-29 01:12:30', NULL),
(68, 'Maui Mix And Match Tank Bikini Top', 10, NULL, '/storage/product/YTyrACvoZO7AUqy5axPc.webp', 'maui-mix-and-match-tank-bikini-top', NULL, '<ul>\r\n	<li>Mix And Match Bikini Top</li>\r\n	<li>Pair with any style from our Maui Mix and Match Swim Collection to complete the look!</li>\r\n	<li>Separate Top</li>\r\n	<li>Square Neck</li>\r\n	<li>Adjustable Straps</li>\r\n	<li>Full Stretch</li>\r\n	<li>Final Sale</li>\r\n	<li>Shell: 82% Nylon 18% Spandex</li>\r\n	<li>Lining: 92% Polyester 8% Spandex</li>\r\n	<li>Imported</li>\r\n</ul>', 1, 57, 1, '2024-06-29 01:17:18', '2024-06-29 01:17:18', NULL),
(69, 'Maui Mix And Match Triangle Bikini Top', 10, NULL, '/storage/product/bvDUZNSOO9HSbwwZlxD4.webp', 'maui-mix-and-match-triangle-bikini-top', NULL, '<ul>\r\n	<li>Mix And Match Bikini Top</li>\r\n	<li>Pair with any style from our Maui Mix and Match Swim Collection to complete the look!</li>\r\n	<li>Separate Bikini Top</li>\r\n	<li>Triangle Top with Tunnel Bottom Ties so you can adjust your coverage for your preference</li>\r\n	<li>Tie Straps</li>\r\n	<li>Full Stretch</li>\r\n	<li>Shell: 82% Nylon 18% Spandex</li>\r\n	<li>Lining: 92% Polyester 8% Spandex</li>\r\n	<li>Imported</li>\r\n	<li>Final Sale</li>\r\n</ul>', 1, 57, 1, '2024-06-27 01:01:36', '2024-06-29 01:22:36', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_colors`
--

INSERT INTO `product_colors` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(33, 17, 2, '2024-06-28 09:26:01', '2024-06-28 09:26:01'),
(34, 17, 17, '2024-06-28 09:26:01', '2024-06-28 09:26:01'),
(35, 17, 18, '2024-06-28 09:26:01', '2024-06-28 09:26:01'),
(36, 17, 1, '2024-06-28 09:26:01', '2024-06-28 09:26:01'),
(37, 17, 19, '2024-06-28 09:26:01', '2024-06-28 09:26:01'),
(38, 18, 3, '2024-06-28 09:37:46', '2024-06-28 09:37:46'),
(39, 18, 4, '2024-06-28 09:37:46', '2024-06-28 09:37:46'),
(40, 18, 2, '2024-06-28 09:37:46', '2024-06-28 09:37:46'),
(41, 19, 2, '2024-06-28 09:43:10', '2024-06-28 09:43:10'),
(42, 19, 5, '2024-06-28 09:43:10', '2024-06-28 09:43:10'),
(43, 19, 20, '2024-06-28 09:43:10', '2024-06-28 09:43:10'),
(44, 19, 21, '2024-06-28 09:43:10', '2024-06-28 09:43:10'),
(45, 20, 2, '2024-06-28 09:51:28', '2024-06-28 09:51:28'),
(46, 20, 22, '2024-06-28 09:51:28', '2024-06-28 09:51:28'),
(47, 20, 4, '2024-06-28 09:51:28', '2024-06-28 09:51:28'),
(48, 20, 1, '2024-06-28 09:51:28', '2024-06-28 09:51:28'),
(49, 20, 23, '2024-06-28 09:51:28', '2024-06-28 09:51:28'),
(50, 20, 16, '2024-06-28 09:51:28', '2024-06-28 09:51:28'),
(51, 21, 1, '2024-06-28 09:55:21', '2024-06-28 09:55:21'),
(52, 21, 2, '2024-06-28 09:55:21', '2024-06-28 09:55:21'),
(53, 21, 4, '2024-06-28 09:55:21', '2024-06-28 09:55:21'),
(54, 21, 22, '2024-06-28 09:55:21', '2024-06-28 09:55:21'),
(55, 21, 5, '2024-06-28 09:55:21', '2024-06-28 09:55:21'),
(56, 22, 21, '2024-06-28 10:01:53', '2024-06-28 10:01:53'),
(57, 22, 24, '2024-06-28 10:01:53', '2024-06-28 10:01:53'),
(58, 22, 5, '2024-06-28 10:01:53', '2024-06-28 10:01:53'),
(59, 22, 18, '2024-06-28 10:01:53', '2024-06-28 10:01:53'),
(60, 23, 2, '2024-06-28 10:08:47', '2024-06-28 10:08:47'),
(61, 23, 25, '2024-06-28 10:08:47', '2024-06-28 10:08:47'),
(62, 23, 4, '2024-06-28 10:08:47', '2024-06-28 10:08:47'),
(63, 24, 26, '2024-06-28 10:13:40', '2024-06-28 10:13:40'),
(64, 24, 19, '2024-06-28 10:13:40', '2024-06-28 10:13:40'),
(65, 25, 2, '2024-06-28 10:21:35', '2024-06-28 10:21:35'),
(66, 25, 27, '2024-06-28 10:21:35', '2024-06-28 10:21:35'),
(67, 25, 25, '2024-06-28 10:21:35', '2024-06-28 10:21:35'),
(68, 25, 19, '2024-06-28 10:21:35', '2024-06-28 10:21:35'),
(69, 26, 2, '2024-06-28 10:29:51', '2024-06-28 10:29:51'),
(70, 26, 26, '2024-06-28 10:29:51', '2024-06-28 10:29:51'),
(71, 26, 28, '2024-06-28 10:29:51', '2024-06-28 10:29:51'),
(72, 26, 29, '2024-06-28 10:29:51', '2024-06-28 10:29:51'),
(73, 26, 3, '2024-06-28 10:29:51', '2024-06-28 10:29:51'),
(74, 27, 30, '2024-06-28 10:35:13', '2024-06-28 10:35:13'),
(75, 27, 31, '2024-06-28 10:35:13', '2024-06-28 10:35:13'),
(76, 27, 32, '2024-06-28 10:35:13', '2024-06-28 10:35:13'),
(77, 28, 2, '2024-06-28 10:40:29', '2024-06-28 10:40:29'),
(78, 28, 22, '2024-06-28 10:40:29', '2024-06-28 10:40:29'),
(79, 28, 18, '2024-06-28 10:40:29', '2024-06-28 10:40:29'),
(80, 29, 31, '2024-06-28 21:33:55', '2024-06-28 21:33:55'),
(81, 29, 33, '2024-06-28 21:33:55', '2024-06-28 21:33:55'),
(82, 29, 34, '2024-06-28 21:33:55', '2024-06-28 21:33:55'),
(83, 29, 35, '2024-06-28 21:33:55', '2024-06-28 21:33:55'),
(84, 30, 5, '2024-06-28 21:39:42', '2024-06-28 21:39:42'),
(85, 30, 2, '2024-06-28 21:39:42', '2024-06-28 21:39:42'),
(86, 30, 27, '2024-06-28 21:39:42', '2024-06-28 21:39:42'),
(87, 30, 25, '2024-06-28 21:39:42', '2024-06-28 21:39:42'),
(88, 30, 4, '2024-06-28 21:39:42', '2024-06-28 21:39:42'),
(89, 31, 2, '2024-06-28 21:44:32', '2024-06-28 21:44:32'),
(90, 31, 27, '2024-06-28 21:44:32', '2024-06-28 21:44:32'),
(91, 31, 36, '2024-06-28 21:44:32', '2024-06-28 21:44:32'),
(92, 31, 25, '2024-06-28 21:44:32', '2024-06-28 21:44:32'),
(93, 32, 2, '2024-06-28 21:56:36', '2024-06-28 21:56:36'),
(94, 32, 28, '2024-06-28 21:56:36', '2024-06-28 21:56:36'),
(95, 32, 25, '2024-06-28 21:56:36', '2024-06-28 21:56:36'),
(96, 33, 37, '2024-06-28 21:59:57', '2024-06-28 21:59:57'),
(97, 33, 38, '2024-06-28 21:59:57', '2024-06-28 21:59:57'),
(98, 33, 39, '2024-06-28 21:59:57', '2024-06-28 21:59:57'),
(99, 33, 40, '2024-06-28 21:59:57', '2024-06-28 21:59:57'),
(100, 34, 2, '2024-06-28 22:03:20', '2024-06-28 22:03:20'),
(101, 34, 39, '2024-06-28 22:03:20', '2024-06-28 22:03:20'),
(102, 34, 25, '2024-06-28 22:03:20', '2024-06-28 22:03:20'),
(103, 35, 2, '2024-06-28 22:08:55', '2024-06-28 22:08:55'),
(104, 35, 22, '2024-06-28 22:08:55', '2024-06-28 22:08:55'),
(105, 35, 41, '2024-06-28 22:08:55', '2024-06-28 22:08:55'),
(106, 36, 41, '2024-06-28 22:11:49', '2024-06-28 22:11:49'),
(107, 36, 2, '2024-06-28 22:11:49', '2024-06-28 22:11:49'),
(108, 37, 42, '2024-06-28 22:16:41', '2024-06-28 22:16:41'),
(109, 37, 43, '2024-06-28 22:16:41', '2024-06-28 22:16:41'),
(110, 37, 1, '2024-06-28 22:16:41', '2024-06-28 22:16:41'),
(111, 38, 28, '2024-06-28 22:21:46', '2024-06-28 22:21:46'),
(112, 38, 26, '2024-06-28 22:21:46', '2024-06-28 22:21:46'),
(113, 38, 44, '2024-06-28 22:21:46', '2024-06-28 22:21:46'),
(114, 38, 45, '2024-06-28 22:21:46', '2024-06-28 22:21:46'),
(115, 39, 20, '2024-06-28 22:25:10', '2024-06-28 22:25:10'),
(116, 39, 2, '2024-06-28 22:25:10', '2024-06-28 22:25:10'),
(117, 39, 22, '2024-06-28 22:25:10', '2024-06-28 22:25:10'),
(118, 39, 19, '2024-06-28 22:25:10', '2024-06-28 22:25:10'),
(119, 40, 25, '2024-06-28 22:28:49', '2024-06-28 22:28:49'),
(120, 40, 46, '2024-06-28 22:28:49', '2024-06-28 22:28:49'),
(121, 40, 4, '2024-06-28 22:28:49', '2024-06-28 22:28:49'),
(122, 40, 2, '2024-06-28 22:28:49', '2024-06-28 22:28:49'),
(123, 41, 47, '2024-06-28 22:33:30', '2024-06-28 22:33:30'),
(124, 41, 48, '2024-06-28 22:33:30', '2024-06-28 22:33:30'),
(125, 41, 27, '2024-06-28 22:33:30', '2024-06-28 22:33:30'),
(126, 42, 2, '2024-06-28 22:36:12', '2024-06-28 22:36:12'),
(127, 42, 33, '2024-06-28 22:36:12', '2024-06-28 22:36:12'),
(128, 42, 27, '2024-06-28 22:36:12', '2024-06-28 22:36:12'),
(129, 43, 40, '2024-06-28 22:40:24', '2024-06-28 22:40:24'),
(130, 43, 49, '2024-06-28 22:40:24', '2024-06-28 22:40:24'),
(131, 43, 37, '2024-06-28 22:40:24', '2024-06-28 22:40:24'),
(132, 44, 2, '2024-06-28 23:43:00', '2024-06-28 23:43:00'),
(133, 44, 1, '2024-06-28 23:43:00', '2024-06-28 23:43:00'),
(134, 45, 2, '2024-06-28 23:47:30', '2024-06-28 23:47:30'),
(135, 45, 26, '2024-06-28 23:47:30', '2024-06-28 23:47:30'),
(136, 45, 50, '2024-06-28 23:47:30', '2024-06-28 23:47:30'),
(137, 45, 39, '2024-06-28 23:47:30', '2024-06-28 23:47:30'),
(138, 46, 2, '2024-06-28 23:51:33', '2024-06-28 23:51:33'),
(139, 46, 46, '2024-06-28 23:51:33', '2024-06-28 23:51:33'),
(140, 46, 51, '2024-06-28 23:51:33', '2024-06-28 23:51:33'),
(141, 46, 25, '2024-06-28 23:51:33', '2024-06-28 23:51:33'),
(142, 46, 52, '2024-06-28 23:51:33', '2024-06-28 23:51:33'),
(143, 47, 53, '2024-06-28 23:55:33', '2024-06-28 23:55:33'),
(144, 47, 34, '2024-06-28 23:55:33', '2024-06-28 23:55:33'),
(145, 47, 54, '2024-06-28 23:55:33', '2024-06-28 23:55:33'),
(146, 48, 2, '2024-06-28 23:59:24', '2024-06-28 23:59:24'),
(147, 48, 27, '2024-06-28 23:59:24', '2024-06-28 23:59:24'),
(148, 48, 51, '2024-06-28 23:59:24', '2024-06-28 23:59:24'),
(149, 49, 28, '2024-06-29 00:04:20', '2024-06-29 00:04:20'),
(150, 49, 4, '2024-06-29 00:04:20', '2024-06-29 00:04:20'),
(151, 49, 51, '2024-06-29 00:04:20', '2024-06-29 00:04:20'),
(152, 49, 55, '2024-06-29 00:04:20', '2024-06-29 00:04:20'),
(153, 49, 23, '2024-06-29 00:04:20', '2024-06-29 00:04:20'),
(154, 50, 2, '2024-06-29 00:07:45', '2024-06-29 00:07:45'),
(155, 50, 21, '2024-06-29 00:07:45', '2024-06-29 00:07:45'),
(156, 50, 23, '2024-06-29 00:07:45', '2024-06-29 00:07:45'),
(157, 51, 2, '2024-06-29 00:11:43', '2024-06-29 00:11:43'),
(158, 51, 21, '2024-06-29 00:11:43', '2024-06-29 00:11:43'),
(159, 51, 50, '2024-06-29 00:11:43', '2024-06-29 00:11:43'),
(160, 51, 52, '2024-06-29 00:11:43', '2024-06-29 00:11:43'),
(161, 52, 1, '2024-06-29 00:14:28', '2024-06-29 00:14:28'),
(162, 52, 16, '2024-06-29 00:14:28', '2024-06-29 00:14:28'),
(163, 53, 56, '2024-06-29 00:17:30', '2024-06-29 00:17:30'),
(164, 53, 46, '2024-06-29 00:17:30', '2024-06-29 00:17:30'),
(165, 53, 29, '2024-06-29 00:17:30', '2024-06-29 00:17:30'),
(166, 53, 2, '2024-06-29 00:17:30', '2024-06-29 00:17:30'),
(167, 54, 29, '2024-06-29 00:23:37', '2024-06-29 00:23:37'),
(168, 54, 51, '2024-06-29 00:23:37', '2024-06-29 00:23:37'),
(169, 54, 5, '2024-06-29 00:23:37', '2024-06-29 00:23:37'),
(170, 54, 4, '2024-06-29 00:23:37', '2024-06-29 00:23:37'),
(171, 54, 57, '2024-06-29 00:23:37', '2024-06-29 00:23:37'),
(172, 55, 2, '2024-06-29 00:26:27', '2024-06-29 00:26:27'),
(173, 55, 28, '2024-06-29 00:26:27', '2024-06-29 00:26:27'),
(174, 55, 22, '2024-06-29 00:26:27', '2024-06-29 00:26:27'),
(175, 55, 5, '2024-06-29 00:26:27', '2024-06-29 00:26:27'),
(176, 55, 4, '2024-06-29 00:26:27', '2024-06-29 00:26:27'),
(177, 56, 58, '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(178, 56, 6, '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(179, 56, 16, '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(180, 56, 3, '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(181, 57, 59, '2024-06-29 00:33:02', '2024-06-29 00:33:02'),
(182, 57, 41, '2024-06-29 00:33:02', '2024-06-29 00:33:02'),
(183, 57, 60, '2024-06-29 00:33:02', '2024-06-29 00:33:02'),
(184, 58, 2, '2024-06-29 00:36:47', '2024-06-29 00:36:47'),
(185, 58, 46, '2024-06-29 00:36:47', '2024-06-29 00:36:47'),
(186, 58, 22, '2024-06-29 00:36:47', '2024-06-29 00:36:47'),
(187, 58, 61, '2024-06-29 00:36:47', '2024-06-29 00:36:47'),
(188, 58, 18, '2024-06-29 00:36:47', '2024-06-29 00:36:47'),
(189, 59, 2, '2024-06-29 00:41:00', '2024-06-29 00:41:00'),
(190, 59, 62, '2024-06-29 00:41:00', '2024-06-29 00:41:00'),
(191, 59, 4, '2024-06-29 00:41:00', '2024-06-29 00:41:00'),
(192, 60, 2, '2024-06-29 00:45:55', '2024-06-29 00:45:55'),
(193, 60, 63, '2024-06-29 00:45:55', '2024-06-29 00:45:55'),
(194, 60, 6, '2024-06-29 00:45:55', '2024-06-29 00:45:55'),
(195, 60, 19, '2024-06-29 00:45:55', '2024-06-29 00:45:55'),
(196, 61, 16, '2024-06-29 00:50:30', '2024-06-29 00:50:30'),
(197, 61, 26, '2024-06-29 00:50:30', '2024-06-29 00:50:30'),
(198, 61, 64, '2024-06-29 00:50:30', '2024-06-29 00:50:30'),
(199, 62, 26, '2024-06-29 00:54:29', '2024-06-29 00:54:29'),
(200, 63, 65, '2024-06-29 00:59:43', '2024-06-29 00:59:43'),
(201, 63, 2, '2024-06-29 00:59:43', '2024-06-29 00:59:43'),
(202, 63, 66, '2024-06-29 00:59:43', '2024-06-29 00:59:43'),
(203, 63, 67, '2024-06-29 00:59:43', '2024-06-29 00:59:43'),
(204, 63, 6, '2024-06-29 00:59:43', '2024-06-29 00:59:43'),
(205, 63, 68, '2024-06-29 00:59:43', '2024-06-29 00:59:43'),
(206, 64, 2, '2024-06-29 01:03:43', '2024-06-29 01:03:43'),
(207, 64, 3, '2024-06-29 01:03:43', '2024-06-29 01:03:43'),
(208, 64, 6, '2024-06-29 01:03:43', '2024-06-29 01:03:43'),
(209, 65, 2, '2024-06-29 01:06:46', '2024-06-29 01:06:46'),
(210, 65, 26, '2024-06-29 01:06:46', '2024-06-29 01:06:46'),
(211, 65, 20, '2024-06-29 01:06:46', '2024-06-29 01:06:46'),
(212, 65, 1, '2024-06-29 01:06:46', '2024-06-29 01:06:46'),
(213, 66, 68, '2024-06-29 01:09:59', '2024-06-29 01:09:59'),
(214, 66, 3, '2024-06-29 01:09:59', '2024-06-29 01:09:59'),
(215, 67, 2, '2024-06-29 01:12:30', '2024-06-29 01:12:30'),
(216, 67, 18, '2024-06-29 01:12:30', '2024-06-29 01:12:30'),
(217, 67, 1, '2024-06-29 01:12:30', '2024-06-29 01:12:30'),
(218, 68, 2, '2024-06-29 01:17:18', '2024-06-29 01:17:18'),
(219, 68, 69, '2024-06-29 01:17:18', '2024-06-29 01:17:18'),
(220, 68, 4, '2024-06-29 01:17:18', '2024-06-29 01:17:18'),
(221, 68, 26, '2024-06-29 01:17:18', '2024-06-29 01:17:18'),
(222, 68, 1, '2024-06-29 01:17:18', '2024-06-29 01:17:18'),
(223, 68, 3, '2024-06-29 01:17:18', '2024-06-29 01:17:18'),
(224, 69, 6, '2024-06-29 01:22:36', '2024-06-29 01:22:36'),
(225, 69, 18, '2024-06-29 01:22:36', '2024-06-29 01:22:36'),
(226, 69, 70, '2024-06-29 01:22:36', '2024-06-29 01:22:36'),
(227, 69, 71, '2024-06-29 01:22:36', '2024-06-29 01:22:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image_path`, `created_at`, `updated_at`) VALUES
(32, 17, '/storage/product/ycRzVPVh4w4FAUo0I6VU.webp', '2024-06-28 09:26:01', '2024-06-28 09:26:01'),
(33, 17, '/storage/product/gqIQniSFQuv1JYt5Lw4n.webp', '2024-06-28 09:26:01', '2024-06-28 09:26:01'),
(34, 17, '/storage/product/1lQBRm0JmoXa7Tc8fxZ8.webp', '2024-06-28 09:26:01', '2024-06-28 09:26:01'),
(35, 17, '/storage/product/c2iJFyyzPzofGYlJudNn.webp', '2024-06-28 09:26:01', '2024-06-28 09:26:01'),
(36, 17, '/storage/product/0zaXdG6POiWRH4gJkyYQ.webp', '2024-06-28 09:26:01', '2024-06-28 09:26:01'),
(37, 18, '/storage/product/od3dOW9gCOhk90LkCX2E.webp', '2024-06-28 09:37:46', '2024-06-28 09:37:46'),
(38, 18, '/storage/product/KZ3vaQJWsIoteRb4r42A.webp', '2024-06-28 09:37:46', '2024-06-28 09:37:46'),
(39, 18, '/storage/product/z6A9eUtenKxxHAIRz8ZD.webp', '2024-06-28 09:37:46', '2024-06-28 09:37:46'),
(40, 19, '/storage/product/pN6SbvkT6bWmbB8ZwMPR.webp', '2024-06-28 09:43:10', '2024-06-28 09:43:10'),
(41, 19, '/storage/product/5V8N7n6kxNFQ69eWvQpr.webp', '2024-06-28 09:43:10', '2024-06-28 09:43:10'),
(42, 19, '/storage/product/eJYLEDfu5rwSukRfXIzD.webp', '2024-06-28 09:43:10', '2024-06-28 09:43:10'),
(43, 19, '/storage/product/sjmQAYGxCBdVekWCC6WN.webp', '2024-06-28 09:43:10', '2024-06-28 09:43:10'),
(44, 20, '/storage/product/smAnxM9PdxZRCHPz1SaD.webp', '2024-06-28 09:51:28', '2024-06-28 09:51:28'),
(45, 20, '/storage/product/0cKrjn03zb5COvXyRPlk.webp', '2024-06-28 09:51:28', '2024-06-28 09:51:28'),
(46, 20, '/storage/product/J6BtXjPWVmawEYo25NtY.webp', '2024-06-28 09:51:28', '2024-06-28 09:51:28'),
(47, 20, '/storage/product/yECq3wAYciTTFIlDRLL5.webp', '2024-06-28 09:51:28', '2024-06-28 09:51:28'),
(48, 20, '/storage/product/sKoRTSNjaxyRBSHYoo8F.webp', '2024-06-28 09:51:28', '2024-06-28 09:51:28'),
(49, 20, '/storage/product/22L2Y5lOmwZYpoyrXMAK.webp', '2024-06-28 09:51:28', '2024-06-28 09:51:28'),
(50, 21, '/storage/product/b7LOSCVyUAGL2yUSlnup.webp', '2024-06-28 09:55:21', '2024-06-28 09:55:21'),
(51, 21, '/storage/product/OmyGddFsfufnqeSUoVoQ.webp', '2024-06-28 09:55:21', '2024-06-28 09:55:21'),
(52, 21, '/storage/product/MSZ9LHSBctn1RAk4JUsu.webp', '2024-06-28 09:55:21', '2024-06-28 09:55:21'),
(53, 21, '/storage/product/1ahhLkecFloFB2w6jkK8.webp', '2024-06-28 09:55:21', '2024-06-28 09:55:21'),
(54, 21, '/storage/product/Cbqf45Mwohp4CZj6wgQL.webp', '2024-06-28 09:55:21', '2024-06-28 09:55:21'),
(55, 22, '/storage/product/hkvIbyCW103LJZiB78w1.webp', '2024-06-28 10:01:53', '2024-06-28 10:01:53'),
(56, 22, '/storage/product/DgWUNEQx6CPTAfbVi7wc.webp', '2024-06-28 10:01:53', '2024-06-28 10:01:53'),
(57, 22, '/storage/product/KyxIdWb8vWADg5P99988.webp', '2024-06-28 10:01:53', '2024-06-28 10:01:53'),
(58, 22, '/storage/product/Fad46hjIltTY3VmJaZ3J.webp', '2024-06-28 10:01:53', '2024-06-28 10:01:53'),
(59, 23, '/storage/product/QTd0ivC80KrzJaWOFbLn.webp', '2024-06-28 10:08:47', '2024-06-28 10:08:47'),
(60, 23, '/storage/product/YxfF1UIWIniw97zJKQ5t.webp', '2024-06-28 10:08:47', '2024-06-28 10:08:47'),
(61, 23, '/storage/product/rnKPIrI2UjLjnTiwkoAY.webp', '2024-06-28 10:08:47', '2024-06-28 10:08:47'),
(62, 24, '/storage/product/LBvVmwOBSpigrlFu8HUh.webp', '2024-06-28 10:13:40', '2024-06-28 10:13:40'),
(63, 24, '/storage/product/hrmcOkdM1JyBPjJB6j6m.webp', '2024-06-28 10:13:40', '2024-06-28 10:13:40'),
(64, 25, '/storage/product/Dx0GP4OUiVgZui1jKYpE.jpg', '2024-06-28 10:21:34', '2024-06-28 10:21:34'),
(65, 25, '/storage/product/QfNgbGg7NdVIlbbG84J3.webp', '2024-06-28 10:21:34', '2024-06-28 10:21:34'),
(66, 25, '/storage/product/fL3uzyzdyAjSnBI5tI6V.webp', '2024-06-28 10:21:34', '2024-06-28 10:21:34'),
(67, 25, '/storage/product/hHp3UYLcJQzjyRgsNHIU.jpg', '2024-06-28 10:21:34', '2024-06-28 10:21:34'),
(68, 26, '/storage/product/MLKbzDNOPEtLo9DB2TAu.webp', '2024-06-28 10:29:51', '2024-06-28 10:29:51'),
(69, 26, '/storage/product/pKqxXqNMFG5NRlWvfErk.webp', '2024-06-28 10:29:51', '2024-06-28 10:29:51'),
(70, 26, '/storage/product/5dKnxA4LXNcJHW0uMoDN.webp', '2024-06-28 10:29:51', '2024-06-28 10:29:51'),
(71, 26, '/storage/product/96xyercCIkfDVt0mQ59c.jpg', '2024-06-28 10:29:51', '2024-06-28 10:29:51'),
(72, 26, '/storage/product/khFrhcGJnscbk7LbNx2L.webp', '2024-06-28 10:29:51', '2024-06-28 10:29:51'),
(73, 27, '/storage/product/8tGr6RoqljlaLAsjMtuQ.webp', '2024-06-28 10:35:13', '2024-06-28 10:35:13'),
(74, 27, '/storage/product/6LNhxbV07FQN2HuOegOv.webp', '2024-06-28 10:35:13', '2024-06-28 10:35:13'),
(75, 27, '/storage/product/mRvwJljU4kYQ6hfSbxgG.webp', '2024-06-28 10:35:13', '2024-06-28 10:35:13'),
(76, 28, '/storage/product/9adizExRvQoqr8bo4SHU.webp', '2024-06-28 10:40:29', '2024-06-28 10:40:29'),
(77, 28, '/storage/product/e7Z57dKp6Rs9ugaeKEwx.webp', '2024-06-28 10:40:29', '2024-06-28 10:40:29'),
(78, 28, '/storage/product/oEScbQUh20FCUgUTBMtp.webp', '2024-06-28 10:40:29', '2024-06-28 10:40:29'),
(79, 29, '/storage/product/2HtdW7AEz3lAKpJkMvJH.webp', '2024-06-28 21:33:55', '2024-06-28 21:33:55'),
(80, 29, '/storage/product/NrhpRS2bE44bfv2I16uq.webp', '2024-06-28 21:33:55', '2024-06-28 21:33:55'),
(81, 29, '/storage/product/c2pyeOh1dcyU5B2cdRpK.webp', '2024-06-28 21:33:55', '2024-06-28 21:33:55'),
(82, 29, '/storage/product/vHOSgPivEg23UuLjo6wD.webp', '2024-06-28 21:33:55', '2024-06-28 21:33:55'),
(83, 30, '/storage/product/hAA8kaAmxYNQgg1fEWQ3.webp', '2024-06-28 21:39:42', '2024-06-28 21:39:42'),
(84, 30, '/storage/product/p7wKJ4o5oW0cXdL8gB3s.webp', '2024-06-28 21:39:42', '2024-06-28 21:39:42'),
(85, 30, '/storage/product/RkQoU04LnET1DmE1pDoE.webp', '2024-06-28 21:39:42', '2024-06-28 21:39:42'),
(86, 30, '/storage/product/LVewUjSjieEEyxIxXsAY.webp', '2024-06-28 21:39:42', '2024-06-28 21:39:42'),
(87, 30, '/storage/product/aHd5fAtdlG4vXBrbwzb9.webp', '2024-06-28 21:39:42', '2024-06-28 21:39:42'),
(88, 31, '/storage/product/05cdUUOrFP9Bm3HD8dDj.webp', '2024-06-28 21:44:32', '2024-06-28 21:44:32'),
(89, 31, '/storage/product/vGqBVwgpIiMeWkruGD2i.webp', '2024-06-28 21:44:32', '2024-06-28 21:44:32'),
(90, 31, '/storage/product/AITv2rkqyTnZDX4xrgkn.webp', '2024-06-28 21:44:32', '2024-06-28 21:44:32'),
(91, 31, '/storage/product/bp43jd3QEbLfvwjEQOkK.webp', '2024-06-28 21:44:32', '2024-06-28 21:44:32'),
(92, 32, '/storage/product/vrnVIRNPtOzvOsagqQvZ.webp', '2024-06-28 21:56:36', '2024-06-28 21:56:36'),
(93, 32, '/storage/product/HancpSLQpUPPpOf9nu8G.jpg', '2024-06-28 21:56:36', '2024-06-28 21:56:36'),
(94, 32, '/storage/product/Iw243GdsFM0xns8tO1on.webp', '2024-06-28 21:56:36', '2024-06-28 21:56:36'),
(95, 33, '/storage/product/SQo5ImIOyjC9WVDZAToz.webp', '2024-06-28 21:59:57', '2024-06-28 21:59:57'),
(96, 33, '/storage/product/3xOD75ZVxgeS9xzO6V9S.webp', '2024-06-28 21:59:57', '2024-06-28 21:59:57'),
(97, 33, '/storage/product/EsDtej6g2490zeFmrhkT.webp', '2024-06-28 21:59:57', '2024-06-28 21:59:57'),
(98, 33, '/storage/product/siYdKAPzs7FH0lFM9gbm.webp', '2024-06-28 21:59:57', '2024-06-28 21:59:57'),
(99, 34, '/storage/product/Y6rXEBURbX5WG4ANggjX.webp', '2024-06-28 22:03:20', '2024-06-28 22:03:20'),
(100, 34, '/storage/product/vQSy9KIR94E37DFZtkSs.jpg', '2024-06-28 22:03:20', '2024-06-28 22:03:20'),
(101, 34, '/storage/product/ucwxsjP4q76sg6iixENH.webp', '2024-06-28 22:03:20', '2024-06-28 22:03:20'),
(102, 35, '/storage/product/Th2NmuUsViuNY6Afz0Yq.webp', '2024-06-28 22:08:55', '2024-06-28 22:08:55'),
(103, 35, '/storage/product/2BuV4wBi4KqDM6Api3jb.webp', '2024-06-28 22:08:55', '2024-06-28 22:08:55'),
(104, 35, '/storage/product/PI7DKXEQARunxuRZqjYN.webp', '2024-06-28 22:08:55', '2024-06-28 22:08:55'),
(105, 36, '/storage/product/2YDzKdk2rEXJAAVFZcVu.webp', '2024-06-28 22:11:49', '2024-06-28 22:11:49'),
(106, 36, '/storage/product/cBAVk2Uo0V66E8dVQyCQ.webp', '2024-06-28 22:11:49', '2024-06-28 22:11:49'),
(107, 37, '/storage/product/oih7z1GezNQn1whm0wkl.webp', '2024-06-28 22:16:41', '2024-06-28 22:16:41'),
(108, 37, '/storage/product/o14UmUGTmrvv3zY03cNT.webp', '2024-06-28 22:16:41', '2024-06-28 22:16:41'),
(109, 37, '/storage/product/6BOtQbplIEuQ8MVuHzrh.webp', '2024-06-28 22:16:41', '2024-06-28 22:16:41'),
(110, 38, '/storage/product/dCZBdHM0UueVEyE1jHyh.webp', '2024-06-28 22:21:46', '2024-06-28 22:21:46'),
(111, 38, '/storage/product/oPqzcFDNA0S1rNWDoArG.webp', '2024-06-28 22:21:46', '2024-06-28 22:21:46'),
(112, 38, '/storage/product/ewPvHHoHgJ10jsVcquve.webp', '2024-06-28 22:21:46', '2024-06-28 22:21:46'),
(113, 38, '/storage/product/vU0KSzvuB1qel79g7lJQ.webp', '2024-06-28 22:21:46', '2024-06-28 22:21:46'),
(114, 39, '/storage/product/NFL122njcGRIvTF6WUux.webp', '2024-06-28 22:25:10', '2024-06-28 22:25:10'),
(115, 39, '/storage/product/rCO39RxJ5qIC4dZwdduj.webp', '2024-06-28 22:25:10', '2024-06-28 22:25:10'),
(116, 39, '/storage/product/k4Eu5LIftpSrXW0waDhQ.webp', '2024-06-28 22:25:10', '2024-06-28 22:25:10'),
(117, 39, '/storage/product/uqsEqnb2lBevgBhkVFmw.webp', '2024-06-28 22:25:10', '2024-06-28 22:25:10'),
(118, 40, '/storage/product/3kr3duojtn3WtTsnn7E1.webp', '2024-06-28 22:28:49', '2024-06-28 22:28:49'),
(119, 40, '/storage/product/FCM2vroBa4HrdzjnWmkR.webp', '2024-06-28 22:28:49', '2024-06-28 22:28:49'),
(120, 40, '/storage/product/tV0lk25eciaWT0gyRnsQ.webp', '2024-06-28 22:28:49', '2024-06-28 22:28:49'),
(121, 40, '/storage/product/TcPFKO8hhmYYH2oeW6eB.webp', '2024-06-28 22:28:49', '2024-06-28 22:28:49'),
(122, 41, '/storage/product/boFbTulwV65zeuIbjdn3.webp', '2024-06-28 22:33:30', '2024-06-28 22:33:30'),
(123, 41, '/storage/product/x6wO74spBjI8resC7PJ7.webp', '2024-06-28 22:33:30', '2024-06-28 22:33:30'),
(124, 41, '/storage/product/YqOFiHg3u1XbwDgFVPoA.webp', '2024-06-28 22:33:30', '2024-06-28 22:33:30'),
(125, 42, '/storage/product/QrfSFv9YMs1OmGwR8pzc.webp', '2024-06-28 22:36:12', '2024-06-28 22:36:12'),
(126, 42, '/storage/product/yD6Dt6L64LwUfdE16Br9.webp', '2024-06-28 22:36:12', '2024-06-28 22:36:12'),
(127, 42, '/storage/product/2DHMiDtYd00den1RGWE3.webp', '2024-06-28 22:36:12', '2024-06-28 22:36:12'),
(128, 43, '/storage/product/DZIfW234YqcOzjIvYbiF.webp', '2024-06-28 22:40:24', '2024-06-28 22:40:24'),
(129, 43, '/storage/product/pgdmxmgRgEmcZcc8zvKw.webp', '2024-06-28 22:40:24', '2024-06-28 22:40:24'),
(130, 43, '/storage/product/hHE7e3MqeMtaf7Pk6XZv.webp', '2024-06-28 22:40:24', '2024-06-28 22:40:24'),
(131, 44, '/storage/product/8lZOX6oBMfIV83Vktotp.webp', '2024-06-28 23:43:00', '2024-06-28 23:43:00'),
(132, 44, '/storage/product/OhrjGrtPheYSW8vv5ONU.webp', '2024-06-28 23:43:00', '2024-06-28 23:43:00'),
(133, 45, '/storage/product/bvrqmT72ByTVgk5NUkzE.webp', '2024-06-28 23:47:30', '2024-06-28 23:47:30'),
(134, 45, '/storage/product/dNLClJeOEqAdvBNhSoDs.webp', '2024-06-28 23:47:30', '2024-06-28 23:47:30'),
(135, 45, '/storage/product/hn1hcPCadv4iMRi71JPQ.webp', '2024-06-28 23:47:30', '2024-06-28 23:47:30'),
(136, 45, '/storage/product/416QX22QxchoDnFfwgdH.webp', '2024-06-28 23:47:30', '2024-06-28 23:47:30'),
(137, 46, '/storage/product/Y83VYYmvxgVL5c5qc3oK.webp', '2024-06-28 23:51:33', '2024-06-28 23:51:33'),
(138, 46, '/storage/product/TnD1oW1oHuDbU4NQ4YIR.webp', '2024-06-28 23:51:33', '2024-06-28 23:51:33'),
(139, 46, '/storage/product/YSCSTKkAGAOYENadrmFp.webp', '2024-06-28 23:51:33', '2024-06-28 23:51:33'),
(140, 46, '/storage/product/X474gbsr05gJzc0RpAfz.webp', '2024-06-28 23:51:33', '2024-06-28 23:51:33'),
(141, 46, '/storage/product/attfq6Ytaoa5TRRonMn6.webp', '2024-06-28 23:51:33', '2024-06-28 23:51:33'),
(142, 47, '/storage/product/B9Rkf10oIrOUkylUj236.webp', '2024-06-28 23:55:33', '2024-06-28 23:55:33'),
(143, 47, '/storage/product/vIb8rHv2RijbW8N5vEnf.webp', '2024-06-28 23:55:33', '2024-06-28 23:55:33'),
(144, 47, '/storage/product/rjm4iWAFTkp58HiFbwaZ.webp', '2024-06-28 23:55:33', '2024-06-28 23:55:33'),
(145, 48, '/storage/product/o1ziEzhrq4IGsKGLxCKM.webp', '2024-06-28 23:59:24', '2024-06-28 23:59:24'),
(146, 48, '/storage/product/RQCeNPvA1lVfxXScVpxt.webp', '2024-06-28 23:59:24', '2024-06-28 23:59:24'),
(147, 48, '/storage/product/9DZNk5WVeS7dxbe2Y1Xi.webp', '2024-06-28 23:59:24', '2024-06-28 23:59:24'),
(148, 49, '/storage/product/jWXLivK4dMlMbug0Wp2x.webp', '2024-06-29 00:04:20', '2024-06-29 00:04:20'),
(149, 49, '/storage/product/S85Al9i2ZGKno0MjircM.webp', '2024-06-29 00:04:20', '2024-06-29 00:04:20'),
(150, 49, '/storage/product/jHK65VcrCAT7trMvNtgt.webp', '2024-06-29 00:04:20', '2024-06-29 00:04:20'),
(151, 49, '/storage/product/mV22j9ACWxaCdn19eTjC.webp', '2024-06-29 00:04:20', '2024-06-29 00:04:20'),
(152, 49, '/storage/product/2mm1YgsnIaX0Kmrvieph.webp', '2024-06-29 00:04:20', '2024-06-29 00:04:20'),
(153, 50, '/storage/product/Ja4oQv9LWdDRbuIxQaP1.webp', '2024-06-29 00:07:45', '2024-06-29 00:07:45'),
(154, 50, '/storage/product/T8tRSIY56kyQwSyxfVZa.webp', '2024-06-29 00:07:45', '2024-06-29 00:07:45'),
(155, 50, '/storage/product/jX4kmn61HhWHSN7KsvRh.webp', '2024-06-29 00:07:45', '2024-06-29 00:07:45'),
(156, 51, '/storage/product/TuQ0XXWFdzGEhbWIoxAI.webp', '2024-06-29 00:11:43', '2024-06-29 00:11:43'),
(157, 51, '/storage/product/YSomfRh4MQWpv4CNYmu5.webp', '2024-06-29 00:11:43', '2024-06-29 00:11:43'),
(158, 51, '/storage/product/MKi8GsvZTp5HtWvtSMyb.webp', '2024-06-29 00:11:43', '2024-06-29 00:11:43'),
(159, 51, '/storage/product/lr1oLR9iG9xUhthaxWHT.webp', '2024-06-29 00:11:43', '2024-06-29 00:11:43'),
(160, 52, '/storage/product/DmGz8J0GSHjKjtlZE4f0.webp', '2024-06-29 00:14:28', '2024-06-29 00:14:28'),
(161, 52, '/storage/product/GXrsFXz49wHnBE6V6T3K.webp', '2024-06-29 00:14:28', '2024-06-29 00:14:28'),
(162, 53, '/storage/product/0vwSkwMKSxhZKBZKYkXS.webp', '2024-06-29 00:17:30', '2024-06-29 00:17:30'),
(163, 53, '/storage/product/udmkWgqg2XumM9dsRl2o.webp', '2024-06-29 00:17:30', '2024-06-29 00:17:30'),
(164, 53, '/storage/product/oJotduHocyG5lAcDNgro.webp', '2024-06-29 00:17:30', '2024-06-29 00:17:30'),
(165, 53, '/storage/product/PEfiEbYmLzJ7TFFMRhoM.webp', '2024-06-29 00:17:30', '2024-06-29 00:17:30'),
(166, 54, '/storage/product/2fVuIMLcSyE9GJFkAvO0.webp', '2024-06-29 00:23:37', '2024-06-29 00:23:37'),
(167, 54, '/storage/product/Qk7H4I4WN2YssvpqRNdO.webp', '2024-06-29 00:23:37', '2024-06-29 00:23:37'),
(168, 54, '/storage/product/SOc5gzPA5bLpPl3dw3jG.webp', '2024-06-29 00:23:37', '2024-06-29 00:23:37'),
(169, 54, '/storage/product/DnFM9QWJi1WGdQT0KL78.webp', '2024-06-29 00:23:37', '2024-06-29 00:23:37'),
(170, 54, '/storage/product/nJGqPq7QPOAitwHfuouK.webp', '2024-06-29 00:23:37', '2024-06-29 00:23:37'),
(171, 55, '/storage/product/Ud0YghmVkDbya9TmOJ25.webp', '2024-06-29 00:26:26', '2024-06-29 00:26:26'),
(172, 55, '/storage/product/31OQVrx03baTxvQYnV2R.webp', '2024-06-29 00:26:26', '2024-06-29 00:26:26'),
(173, 55, '/storage/product/45F8LdsmXutZ4vbsnybV.webp', '2024-06-29 00:26:26', '2024-06-29 00:26:26'),
(174, 55, '/storage/product/r1QkFwHBbgl8LujPDBo5.webp', '2024-06-29 00:26:26', '2024-06-29 00:26:26'),
(175, 55, '/storage/product/3VRL2ktZ4zhdSMeLiQFw.webp', '2024-06-29 00:26:26', '2024-06-29 00:26:26'),
(176, 56, '/storage/product/BqbQCeQJjbyRQixyp2zt.webp', '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(177, 56, '/storage/product/6GM8j4IY9Rodn9juqdHa.webp', '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(178, 56, '/storage/product/e7GVVgbuv8A98Akby4WR.webp', '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(179, 56, '/storage/product/Eqqlu44kDiwdaSiDMFn7.webp', '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(180, 57, '/storage/product/5tFNZrhBsWjaR8ArBRNM.webp', '2024-06-29 00:33:02', '2024-06-29 00:33:02'),
(181, 57, '/storage/product/HzbcUre51c0G91u2TFNT.webp', '2024-06-29 00:33:02', '2024-06-29 00:33:02'),
(182, 57, '/storage/product/kyOA6nVAVtPWGaWbXQB9.webp', '2024-06-29 00:33:02', '2024-06-29 00:33:02'),
(183, 58, '/storage/product/Esmcyn55hAeiI3iAtKQg.webp', '2024-06-29 00:36:47', '2024-06-29 00:36:47'),
(184, 58, '/storage/product/EuqRZhTxDcQkTvIXRKvI.webp', '2024-06-29 00:36:47', '2024-06-29 00:36:47'),
(185, 58, '/storage/product/S5vagwg704QM4dM24RHl.webp', '2024-06-29 00:36:47', '2024-06-29 00:36:47'),
(186, 58, '/storage/product/wWox1deZBnMm52OrWmD3.webp', '2024-06-29 00:36:47', '2024-06-29 00:36:47'),
(187, 58, '/storage/product/6n25Dg33fG8rg2uCzdH4.webp', '2024-06-29 00:36:47', '2024-06-29 00:36:47'),
(188, 59, '/storage/product/iKeaYx7YXtVarx5LeGXU.webp', '2024-06-29 00:41:00', '2024-06-29 00:41:00'),
(189, 59, '/storage/product/bkf4SwSZ2jMXMuy4CMVx.webp', '2024-06-29 00:41:00', '2024-06-29 00:41:00'),
(190, 59, '/storage/product/vltq2R9p9L5Rcbt6yLYz.webp', '2024-06-29 00:41:00', '2024-06-29 00:41:00'),
(191, 60, '/storage/product/D3WhdhCzOKMzOqQx1TwW.webp', '2024-06-29 00:45:55', '2024-06-29 00:45:55'),
(192, 60, '/storage/product/Q45FlpDORhmnwNihtNce.webp', '2024-06-29 00:45:55', '2024-06-29 00:45:55'),
(193, 60, '/storage/product/O2zF7WvArVRWqG2Ohjsc.webp', '2024-06-29 00:45:55', '2024-06-29 00:45:55'),
(194, 60, '/storage/product/QkCkqqBkDxgsFW5JGhAC.webp', '2024-06-29 00:45:55', '2024-06-29 00:45:55'),
(195, 61, '/storage/product/Qre4iTZrM3XFRd5ImOCF.webp', '2024-06-29 00:50:30', '2024-06-29 00:50:30'),
(196, 61, '/storage/product/nuP4gZqrHDCThUV7QoY0.webp', '2024-06-29 00:50:30', '2024-06-29 00:50:30'),
(197, 61, '/storage/product/1FcJoTGaU2OE5XRUQ2Kn.webp', '2024-06-29 00:50:30', '2024-06-29 00:50:30'),
(198, 62, '/storage/product/TGB0spn6z18XGNXcNH4o.webp', '2024-06-29 00:54:29', '2024-06-29 00:54:29'),
(199, 62, '/storage/product/J2xTsYWO3Ri8ZY3ssg6N.webp', '2024-06-29 00:54:29', '2024-06-29 00:54:29'),
(200, 62, '/storage/product/8eLfZTezsgV2gBOS3g0C.webp', '2024-06-29 00:54:29', '2024-06-29 00:54:29'),
(201, 63, '/storage/product/a8ZtBD4PWfuwXmVSAcQg.webp', '2024-06-29 00:59:43', '2024-06-29 00:59:43'),
(202, 63, '/storage/product/Ojd9Z6gcH73kASgCFMhe.webp', '2024-06-29 00:59:43', '2024-06-29 00:59:43'),
(203, 63, '/storage/product/n8vkuMpWvsKlGmB0KXV1.webp', '2024-06-29 00:59:43', '2024-06-29 00:59:43'),
(204, 63, '/storage/product/VvBBAKj0iPnX1jIC8EFB.webp', '2024-06-29 00:59:43', '2024-06-29 00:59:43'),
(205, 63, '/storage/product/YdReuU4nfQRQm1qBhKmN.webp', '2024-06-29 00:59:43', '2024-06-29 00:59:43'),
(206, 63, '/storage/product/kqkjfZCzMKm09U08O5O1.webp', '2024-06-29 00:59:43', '2024-06-29 00:59:43'),
(207, 64, '/storage/product/5NxHWJJCBK1BLEzGwam7.webp', '2024-06-29 01:03:43', '2024-06-29 01:03:43'),
(208, 64, '/storage/product/mXTtBEawo0YjtNlMKb5u.webp', '2024-06-29 01:03:43', '2024-06-29 01:03:43'),
(209, 64, '/storage/product/Ce1WfBgYfD8CwiRzbb9r.webp', '2024-06-29 01:03:43', '2024-06-29 01:03:43'),
(210, 65, '/storage/product/BfZ5RiwBVTfV3v7R6PBP.webp', '2024-06-29 01:06:46', '2024-06-29 01:06:46'),
(211, 65, '/storage/product/jcpWTRCfTOk75GFehaZC.webp', '2024-06-29 01:06:46', '2024-06-29 01:06:46'),
(212, 65, '/storage/product/dJlyVUEesB3U9bT3VUwo.webp', '2024-06-29 01:06:46', '2024-06-29 01:06:46'),
(213, 65, '/storage/product/ONefmdPRXoVKN2l2IKdZ.webp', '2024-06-29 01:06:46', '2024-06-29 01:06:46'),
(214, 66, '/storage/product/U4WOWTFXgW6Uoh4OIV01.webp', '2024-06-29 01:09:59', '2024-06-29 01:09:59'),
(215, 66, '/storage/product/LVZCfxfNA3hguSsCyFsH.webp', '2024-06-29 01:09:59', '2024-06-29 01:09:59'),
(216, 67, '/storage/product/bN6Q9Dk6EVqzNSrzTidn.webp', '2024-06-29 01:12:30', '2024-06-29 01:12:30'),
(217, 67, '/storage/product/lPT74Inepxj9bkG6mQPU.webp', '2024-06-29 01:12:30', '2024-06-29 01:12:30'),
(218, 67, '/storage/product/ICmFY1SITfUsyhwisNi1.webp', '2024-06-29 01:12:30', '2024-06-29 01:12:30'),
(219, 68, '/storage/product/i6MoLYXWKxjgGL3PMBZM.webp', '2024-06-29 01:17:18', '2024-06-29 01:17:18'),
(220, 68, '/storage/product/rAe8iagl5tRl1hH8Y7MO.webp', '2024-06-29 01:17:18', '2024-06-29 01:17:18'),
(221, 68, '/storage/product/ygvnK7PGPW1qYBqG8c9w.webp', '2024-06-29 01:17:18', '2024-06-29 01:17:18'),
(222, 68, '/storage/product/SIB6TvhuSP3t4xkzYEaX.webp', '2024-06-29 01:17:18', '2024-06-29 01:17:18'),
(223, 68, '/storage/product/FTFPNhQHFk3hI6afaHAX.webp', '2024-06-29 01:17:18', '2024-06-29 01:17:18'),
(224, 68, '/storage/product/pqQjND9BDlo3IGKJfglG.webp', '2024-06-29 01:17:18', '2024-06-29 01:17:18'),
(225, 69, '/storage/product/B0ele69jYsHSx3KH2iC6.webp', '2024-06-29 01:22:36', '2024-06-29 01:22:36'),
(226, 69, '/storage/product/rEcjL2wQd2Dxmj2SIPRg.webp', '2024-06-29 01:22:36', '2024-06-29 01:22:36'),
(227, 69, '/storage/product/UXt5xbsbAiOXZgubxGMs.webp', '2024-06-29 01:22:36', '2024-06-29 01:22:36'),
(228, 69, '/storage/product/1bVTqLBIlVNsaKG89l2m.webp', '2024-06-29 01:22:36', '2024-06-29 01:22:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(17, 17, 7, '2024-06-28 09:26:01', '2024-06-28 09:26:01'),
(18, 17, 1, '2024-06-28 09:26:01', '2024-06-28 09:26:01'),
(19, 17, 2, '2024-06-28 09:26:01', '2024-06-28 09:26:01'),
(20, 17, 8, '2024-06-28 09:26:01', '2024-06-28 09:26:01'),
(21, 17, 3, '2024-06-28 09:26:01', '2024-06-28 09:26:01'),
(22, 17, 9, '2024-06-28 09:26:01', '2024-06-28 09:26:01'),
(23, 18, 7, '2024-06-28 09:37:46', '2024-06-28 09:37:46'),
(24, 18, 1, '2024-06-28 09:37:46', '2024-06-28 09:37:46'),
(25, 18, 2, '2024-06-28 09:37:46', '2024-06-28 09:37:46'),
(26, 18, 8, '2024-06-28 09:37:46', '2024-06-28 09:37:46'),
(27, 18, 3, '2024-06-28 09:37:46', '2024-06-28 09:37:46'),
(28, 18, 9, '2024-06-28 09:37:46', '2024-06-28 09:37:46'),
(29, 19, 7, '2024-06-28 09:43:10', '2024-06-28 09:43:10'),
(30, 19, 1, '2024-06-28 09:43:10', '2024-06-28 09:43:10'),
(31, 19, 2, '2024-06-28 09:43:10', '2024-06-28 09:43:10'),
(32, 19, 8, '2024-06-28 09:43:10', '2024-06-28 09:43:10'),
(33, 19, 3, '2024-06-28 09:43:10', '2024-06-28 09:43:10'),
(34, 19, 9, '2024-06-28 09:43:10', '2024-06-28 09:43:10'),
(35, 20, 7, '2024-06-28 09:51:28', '2024-06-28 09:51:28'),
(36, 20, 1, '2024-06-28 09:51:28', '2024-06-28 09:51:28'),
(37, 20, 2, '2024-06-28 09:51:28', '2024-06-28 09:51:28'),
(38, 20, 8, '2024-06-28 09:51:28', '2024-06-28 09:51:28'),
(39, 20, 3, '2024-06-28 09:51:28', '2024-06-28 09:51:28'),
(40, 20, 9, '2024-06-28 09:51:28', '2024-06-28 09:51:28'),
(41, 21, 7, '2024-06-28 09:55:21', '2024-06-28 09:55:21'),
(42, 21, 1, '2024-06-28 09:55:21', '2024-06-28 09:55:21'),
(43, 21, 2, '2024-06-28 09:55:21', '2024-06-28 09:55:21'),
(44, 21, 8, '2024-06-28 09:55:21', '2024-06-28 09:55:21'),
(45, 21, 3, '2024-06-28 09:55:21', '2024-06-28 09:55:21'),
(46, 21, 9, '2024-06-28 09:55:21', '2024-06-28 09:55:21'),
(47, 22, 7, '2024-06-28 10:01:53', '2024-06-28 10:01:53'),
(48, 22, 1, '2024-06-28 10:01:53', '2024-06-28 10:01:53'),
(49, 22, 2, '2024-06-28 10:01:53', '2024-06-28 10:01:53'),
(50, 22, 8, '2024-06-28 10:01:53', '2024-06-28 10:01:53'),
(51, 22, 3, '2024-06-28 10:01:53', '2024-06-28 10:01:53'),
(52, 22, 9, '2024-06-28 10:01:53', '2024-06-28 10:01:53'),
(53, 23, 7, '2024-06-28 10:08:47', '2024-06-28 10:08:47'),
(54, 23, 1, '2024-06-28 10:08:47', '2024-06-28 10:08:47'),
(55, 23, 2, '2024-06-28 10:08:47', '2024-06-28 10:08:47'),
(56, 23, 8, '2024-06-28 10:08:47', '2024-06-28 10:08:47'),
(57, 23, 3, '2024-06-28 10:08:47', '2024-06-28 10:08:47'),
(58, 23, 9, '2024-06-28 10:08:47', '2024-06-28 10:08:47'),
(59, 24, 7, '2024-06-28 10:13:40', '2024-06-28 10:13:40'),
(60, 24, 1, '2024-06-28 10:13:40', '2024-06-28 10:13:40'),
(61, 24, 2, '2024-06-28 10:13:40', '2024-06-28 10:13:40'),
(62, 24, 8, '2024-06-28 10:13:40', '2024-06-28 10:13:40'),
(63, 24, 3, '2024-06-28 10:13:40', '2024-06-28 10:13:40'),
(64, 24, 9, '2024-06-28 10:13:40', '2024-06-28 10:13:40'),
(65, 25, 7, '2024-06-28 10:21:35', '2024-06-28 10:21:35'),
(66, 25, 1, '2024-06-28 10:21:35', '2024-06-28 10:21:35'),
(67, 25, 2, '2024-06-28 10:21:35', '2024-06-28 10:21:35'),
(68, 25, 8, '2024-06-28 10:21:35', '2024-06-28 10:21:35'),
(69, 25, 3, '2024-06-28 10:21:35', '2024-06-28 10:21:35'),
(70, 25, 9, '2024-06-28 10:21:35', '2024-06-28 10:21:35'),
(71, 26, 7, '2024-06-28 10:29:51', '2024-06-28 10:29:51'),
(72, 26, 1, '2024-06-28 10:29:51', '2024-06-28 10:29:51'),
(73, 26, 2, '2024-06-28 10:29:51', '2024-06-28 10:29:51'),
(74, 26, 8, '2024-06-28 10:29:51', '2024-06-28 10:29:51'),
(75, 26, 3, '2024-06-28 10:29:51', '2024-06-28 10:29:51'),
(76, 26, 9, '2024-06-28 10:29:51', '2024-06-28 10:29:51'),
(77, 27, 7, '2024-06-28 10:35:13', '2024-06-28 10:35:13'),
(78, 27, 1, '2024-06-28 10:35:13', '2024-06-28 10:35:13'),
(79, 27, 2, '2024-06-28 10:35:13', '2024-06-28 10:35:13'),
(80, 27, 8, '2024-06-28 10:35:13', '2024-06-28 10:35:13'),
(81, 27, 3, '2024-06-28 10:35:13', '2024-06-28 10:35:13'),
(82, 27, 9, '2024-06-28 10:35:13', '2024-06-28 10:35:13'),
(83, 28, 7, '2024-06-28 10:40:29', '2024-06-28 10:40:29'),
(84, 28, 1, '2024-06-28 10:40:29', '2024-06-28 10:40:29'),
(85, 28, 2, '2024-06-28 10:40:29', '2024-06-28 10:40:29'),
(86, 28, 8, '2024-06-28 10:40:29', '2024-06-28 10:40:29'),
(87, 28, 3, '2024-06-28 10:40:29', '2024-06-28 10:40:29'),
(88, 28, 9, '2024-06-28 10:40:29', '2024-06-28 10:40:29'),
(89, 29, 7, '2024-06-28 21:33:55', '2024-06-28 21:33:55'),
(90, 29, 1, '2024-06-28 21:33:55', '2024-06-28 21:33:55'),
(91, 29, 2, '2024-06-28 21:33:55', '2024-06-28 21:33:55'),
(92, 29, 8, '2024-06-28 21:33:55', '2024-06-28 21:33:55'),
(93, 29, 3, '2024-06-28 21:33:55', '2024-06-28 21:33:55'),
(94, 29, 9, '2024-06-28 21:33:55', '2024-06-28 21:33:55'),
(95, 30, 7, '2024-06-28 21:39:42', '2024-06-28 21:39:42'),
(96, 30, 1, '2024-06-28 21:39:42', '2024-06-28 21:39:42'),
(97, 30, 2, '2024-06-28 21:39:42', '2024-06-28 21:39:42'),
(98, 30, 8, '2024-06-28 21:39:42', '2024-06-28 21:39:42'),
(99, 30, 3, '2024-06-28 21:39:42', '2024-06-28 21:39:42'),
(100, 30, 9, '2024-06-28 21:39:42', '2024-06-28 21:39:42'),
(101, 31, 7, '2024-06-28 21:44:32', '2024-06-28 21:44:32'),
(102, 31, 1, '2024-06-28 21:44:32', '2024-06-28 21:44:32'),
(103, 31, 2, '2024-06-28 21:44:32', '2024-06-28 21:44:32'),
(104, 31, 8, '2024-06-28 21:44:32', '2024-06-28 21:44:32'),
(105, 31, 3, '2024-06-28 21:44:32', '2024-06-28 21:44:32'),
(106, 31, 9, '2024-06-28 21:44:32', '2024-06-28 21:44:32'),
(107, 32, 7, '2024-06-28 21:56:36', '2024-06-28 21:56:36'),
(108, 32, 1, '2024-06-28 21:56:36', '2024-06-28 21:56:36'),
(109, 32, 2, '2024-06-28 21:56:36', '2024-06-28 21:56:36'),
(110, 32, 8, '2024-06-28 21:56:36', '2024-06-28 21:56:36'),
(111, 32, 3, '2024-06-28 21:56:36', '2024-06-28 21:56:36'),
(112, 32, 9, '2024-06-28 21:56:36', '2024-06-28 21:56:36'),
(113, 33, 7, '2024-06-28 21:59:57', '2024-06-28 21:59:57'),
(114, 33, 1, '2024-06-28 21:59:57', '2024-06-28 21:59:57'),
(115, 33, 2, '2024-06-28 21:59:57', '2024-06-28 21:59:57'),
(116, 34, 7, '2024-06-28 22:03:20', '2024-06-28 22:03:20'),
(117, 34, 1, '2024-06-28 22:03:20', '2024-06-28 22:03:20'),
(118, 35, 10, '2024-06-28 22:08:55', '2024-06-28 22:08:55'),
(119, 35, 11, '2024-06-28 22:08:55', '2024-06-28 22:08:55'),
(120, 35, 12, '2024-06-28 22:08:55', '2024-06-28 22:08:55'),
(121, 35, 13, '2024-06-28 22:08:55', '2024-06-28 22:08:55'),
(122, 35, 14, '2024-06-28 22:08:55', '2024-06-28 22:08:55'),
(123, 35, 15, '2024-06-28 22:08:55', '2024-06-28 22:08:55'),
(124, 35, 16, '2024-06-28 22:08:55', '2024-06-28 22:08:55'),
(125, 36, 10, '2024-06-28 22:11:49', '2024-06-28 22:11:49'),
(126, 36, 11, '2024-06-28 22:11:49', '2024-06-28 22:11:49'),
(127, 36, 12, '2024-06-28 22:11:49', '2024-06-28 22:11:49'),
(128, 36, 13, '2024-06-28 22:11:49', '2024-06-28 22:11:49'),
(129, 36, 14, '2024-06-28 22:11:49', '2024-06-28 22:11:49'),
(130, 36, 15, '2024-06-28 22:11:49', '2024-06-28 22:11:49'),
(131, 36, 16, '2024-06-28 22:11:49', '2024-06-28 22:11:49'),
(132, 37, 10, '2024-06-28 22:16:41', '2024-06-28 22:16:41'),
(133, 37, 11, '2024-06-28 22:16:41', '2024-06-28 22:16:41'),
(134, 37, 12, '2024-06-28 22:16:41', '2024-06-28 22:16:41'),
(135, 37, 13, '2024-06-28 22:16:41', '2024-06-28 22:16:41'),
(136, 37, 14, '2024-06-28 22:16:41', '2024-06-28 22:16:41'),
(137, 37, 15, '2024-06-28 22:16:41', '2024-06-28 22:16:41'),
(138, 37, 16, '2024-06-28 22:16:41', '2024-06-28 22:16:41'),
(139, 38, 10, '2024-06-28 22:21:46', '2024-06-28 22:21:46'),
(140, 38, 11, '2024-06-28 22:21:46', '2024-06-28 22:21:46'),
(141, 38, 12, '2024-06-28 22:21:46', '2024-06-28 22:21:46'),
(142, 38, 13, '2024-06-28 22:21:46', '2024-06-28 22:21:46'),
(143, 38, 14, '2024-06-28 22:21:46', '2024-06-28 22:21:46'),
(144, 38, 15, '2024-06-28 22:21:46', '2024-06-28 22:21:46'),
(145, 38, 16, '2024-06-28 22:21:46', '2024-06-28 22:21:46'),
(146, 39, 10, '2024-06-28 22:25:10', '2024-06-28 22:25:10'),
(147, 39, 11, '2024-06-28 22:25:10', '2024-06-28 22:25:10'),
(148, 39, 12, '2024-06-28 22:25:10', '2024-06-28 22:25:10'),
(149, 39, 13, '2024-06-28 22:25:10', '2024-06-28 22:25:10'),
(150, 39, 14, '2024-06-28 22:25:10', '2024-06-28 22:25:10'),
(151, 39, 15, '2024-06-28 22:25:10', '2024-06-28 22:25:10'),
(152, 39, 16, '2024-06-28 22:25:10', '2024-06-28 22:25:10'),
(153, 40, 7, '2024-06-28 22:28:49', '2024-06-28 22:28:49'),
(154, 40, 1, '2024-06-28 22:28:49', '2024-06-28 22:28:49'),
(155, 40, 2, '2024-06-28 22:28:49', '2024-06-28 22:28:49'),
(156, 40, 9, '2024-06-28 22:28:49', '2024-06-28 22:28:49'),
(157, 41, 10, '2024-06-28 22:33:30', '2024-06-28 22:33:30'),
(158, 41, 11, '2024-06-28 22:33:30', '2024-06-28 22:33:30'),
(159, 41, 12, '2024-06-28 22:33:30', '2024-06-28 22:33:30'),
(160, 41, 13, '2024-06-28 22:33:30', '2024-06-28 22:33:30'),
(161, 41, 14, '2024-06-28 22:33:30', '2024-06-28 22:33:30'),
(162, 41, 15, '2024-06-28 22:33:30', '2024-06-28 22:33:30'),
(163, 41, 16, '2024-06-28 22:33:30', '2024-06-28 22:33:30'),
(164, 42, 7, '2024-06-28 22:36:12', '2024-06-28 22:36:12'),
(165, 42, 1, '2024-06-28 22:36:12', '2024-06-28 22:36:12'),
(166, 42, 2, '2024-06-28 22:36:12', '2024-06-28 22:36:12'),
(167, 42, 8, '2024-06-28 22:36:12', '2024-06-28 22:36:12'),
(168, 42, 3, '2024-06-28 22:36:12', '2024-06-28 22:36:12'),
(169, 42, 9, '2024-06-28 22:36:12', '2024-06-28 22:36:12'),
(170, 43, 7, '2024-06-28 22:40:24', '2024-06-28 22:40:24'),
(171, 43, 1, '2024-06-28 22:40:24', '2024-06-28 22:40:24'),
(172, 43, 2, '2024-06-28 22:40:24', '2024-06-28 22:40:24'),
(173, 43, 8, '2024-06-28 22:40:24', '2024-06-28 22:40:24'),
(174, 43, 3, '2024-06-28 22:40:24', '2024-06-28 22:40:24'),
(175, 43, 9, '2024-06-28 22:40:24', '2024-06-28 22:40:24'),
(176, 44, 17, '2024-06-28 23:43:00', '2024-06-28 23:43:00'),
(177, 44, 8, '2024-06-28 23:43:00', '2024-06-28 23:43:00'),
(178, 45, 7, '2024-06-28 23:47:30', '2024-06-28 23:47:30'),
(179, 45, 1, '2024-06-28 23:47:30', '2024-06-28 23:47:30'),
(180, 45, 2, '2024-06-28 23:47:30', '2024-06-28 23:47:30'),
(181, 45, 18, '2024-06-28 23:47:30', '2024-06-28 23:47:30'),
(182, 45, 19, '2024-06-28 23:47:30', '2024-06-28 23:47:30'),
(183, 45, 20, '2024-06-28 23:47:30', '2024-06-28 23:47:30'),
(184, 46, 17, '2024-06-28 23:51:33', '2024-06-28 23:51:33'),
(185, 46, 7, '2024-06-28 23:51:33', '2024-06-28 23:51:33'),
(186, 46, 8, '2024-06-28 23:51:33', '2024-06-28 23:51:33'),
(187, 47, 17, '2024-06-28 23:55:33', '2024-06-28 23:55:33'),
(188, 47, 7, '2024-06-28 23:55:33', '2024-06-28 23:55:33'),
(189, 47, 1, '2024-06-28 23:55:33', '2024-06-28 23:55:33'),
(190, 47, 2, '2024-06-28 23:55:33', '2024-06-28 23:55:33'),
(191, 47, 8, '2024-06-28 23:55:33', '2024-06-28 23:55:33'),
(192, 47, 18, '2024-06-28 23:55:33', '2024-06-28 23:55:33'),
(193, 47, 19, '2024-06-28 23:55:33', '2024-06-28 23:55:33'),
(194, 47, 20, '2024-06-28 23:55:33', '2024-06-28 23:55:33'),
(195, 48, 17, '2024-06-28 23:59:24', '2024-06-28 23:59:24'),
(196, 48, 18, '2024-06-28 23:59:24', '2024-06-28 23:59:24'),
(197, 48, 20, '2024-06-28 23:59:24', '2024-06-28 23:59:24'),
(198, 49, 7, '2024-06-29 00:04:20', '2024-06-29 00:04:20'),
(199, 49, 1, '2024-06-29 00:04:20', '2024-06-29 00:04:20'),
(200, 49, 18, '2024-06-29 00:04:20', '2024-06-29 00:04:20'),
(201, 49, 19, '2024-06-29 00:04:20', '2024-06-29 00:04:20'),
(202, 50, 17, '2024-06-29 00:07:45', '2024-06-29 00:07:45'),
(203, 50, 7, '2024-06-29 00:07:45', '2024-06-29 00:07:45'),
(204, 50, 1, '2024-06-29 00:07:45', '2024-06-29 00:07:45'),
(205, 50, 2, '2024-06-29 00:07:45', '2024-06-29 00:07:45'),
(206, 50, 8, '2024-06-29 00:07:45', '2024-06-29 00:07:45'),
(207, 50, 18, '2024-06-29 00:07:45', '2024-06-29 00:07:45'),
(208, 50, 19, '2024-06-29 00:07:45', '2024-06-29 00:07:45'),
(209, 50, 20, '2024-06-29 00:07:45', '2024-06-29 00:07:45'),
(210, 51, 17, '2024-06-29 00:11:43', '2024-06-29 00:11:43'),
(211, 51, 7, '2024-06-29 00:11:43', '2024-06-29 00:11:43'),
(212, 51, 1, '2024-06-29 00:11:43', '2024-06-29 00:11:43'),
(213, 51, 2, '2024-06-29 00:11:43', '2024-06-29 00:11:43'),
(214, 51, 8, '2024-06-29 00:11:43', '2024-06-29 00:11:43'),
(215, 51, 18, '2024-06-29 00:11:43', '2024-06-29 00:11:43'),
(216, 51, 19, '2024-06-29 00:11:43', '2024-06-29 00:11:43'),
(217, 51, 20, '2024-06-29 00:11:43', '2024-06-29 00:11:43'),
(218, 52, 17, '2024-06-29 00:14:28', '2024-06-29 00:14:28'),
(219, 52, 7, '2024-06-29 00:14:28', '2024-06-29 00:14:28'),
(220, 52, 1, '2024-06-29 00:14:28', '2024-06-29 00:14:28'),
(221, 52, 2, '2024-06-29 00:14:28', '2024-06-29 00:14:28'),
(222, 52, 8, '2024-06-29 00:14:28', '2024-06-29 00:14:28'),
(223, 52, 18, '2024-06-29 00:14:28', '2024-06-29 00:14:28'),
(224, 52, 19, '2024-06-29 00:14:28', '2024-06-29 00:14:28'),
(225, 52, 20, '2024-06-29 00:14:28', '2024-06-29 00:14:28'),
(226, 53, 1, '2024-06-29 00:17:30', '2024-06-29 00:17:30'),
(227, 53, 2, '2024-06-29 00:17:30', '2024-06-29 00:17:30'),
(228, 53, 8, '2024-06-29 00:17:30', '2024-06-29 00:17:30'),
(229, 54, 17, '2024-06-29 00:23:37', '2024-06-29 00:23:37'),
(230, 54, 7, '2024-06-29 00:23:37', '2024-06-29 00:23:37'),
(231, 54, 1, '2024-06-29 00:23:37', '2024-06-29 00:23:37'),
(232, 54, 2, '2024-06-29 00:23:37', '2024-06-29 00:23:37'),
(233, 54, 8, '2024-06-29 00:23:37', '2024-06-29 00:23:37'),
(234, 54, 18, '2024-06-29 00:23:37', '2024-06-29 00:23:37'),
(235, 54, 19, '2024-06-29 00:23:37', '2024-06-29 00:23:37'),
(236, 54, 20, '2024-06-29 00:23:37', '2024-06-29 00:23:37'),
(237, 55, 17, '2024-06-29 00:26:27', '2024-06-29 00:26:27'),
(238, 55, 7, '2024-06-29 00:26:27', '2024-06-29 00:26:27'),
(239, 55, 1, '2024-06-29 00:26:27', '2024-06-29 00:26:27'),
(240, 55, 2, '2024-06-29 00:26:27', '2024-06-29 00:26:27'),
(241, 55, 8, '2024-06-29 00:26:27', '2024-06-29 00:26:27'),
(242, 55, 18, '2024-06-29 00:26:27', '2024-06-29 00:26:27'),
(243, 55, 19, '2024-06-29 00:26:27', '2024-06-29 00:26:27'),
(244, 55, 20, '2024-06-29 00:26:27', '2024-06-29 00:26:27'),
(245, 56, 21, '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(246, 56, 6, '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(247, 56, 22, '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(248, 56, 23, '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(249, 56, 24, '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(250, 56, 25, '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(251, 56, 26, '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(252, 56, 27, '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(253, 56, 28, '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(254, 56, 29, '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(255, 56, 30, '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(256, 56, 31, '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(257, 56, 32, '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(258, 56, 33, '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(259, 57, 21, '2024-06-29 00:33:02', '2024-06-29 00:33:02'),
(260, 57, 6, '2024-06-29 00:33:02', '2024-06-29 00:33:02'),
(261, 57, 22, '2024-06-29 00:33:02', '2024-06-29 00:33:02'),
(262, 57, 23, '2024-06-29 00:33:02', '2024-06-29 00:33:02'),
(263, 57, 24, '2024-06-29 00:33:02', '2024-06-29 00:33:02'),
(264, 57, 25, '2024-06-29 00:33:02', '2024-06-29 00:33:02'),
(265, 57, 26, '2024-06-29 00:33:02', '2024-06-29 00:33:02'),
(266, 57, 27, '2024-06-29 00:33:02', '2024-06-29 00:33:02'),
(267, 57, 28, '2024-06-29 00:33:02', '2024-06-29 00:33:02'),
(268, 57, 29, '2024-06-29 00:33:02', '2024-06-29 00:33:02'),
(269, 57, 30, '2024-06-29 00:33:02', '2024-06-29 00:33:02'),
(270, 57, 31, '2024-06-29 00:33:02', '2024-06-29 00:33:02'),
(271, 57, 32, '2024-06-29 00:33:02', '2024-06-29 00:33:02'),
(272, 57, 33, '2024-06-29 00:33:02', '2024-06-29 00:33:02'),
(273, 58, 17, '2024-06-29 00:36:47', '2024-06-29 00:36:47'),
(274, 58, 7, '2024-06-29 00:36:47', '2024-06-29 00:36:47'),
(275, 58, 1, '2024-06-29 00:36:47', '2024-06-29 00:36:47'),
(276, 58, 2, '2024-06-29 00:36:47', '2024-06-29 00:36:47'),
(277, 58, 8, '2024-06-29 00:36:47', '2024-06-29 00:36:47'),
(278, 58, 18, '2024-06-29 00:36:47', '2024-06-29 00:36:47'),
(279, 58, 19, '2024-06-29 00:36:47', '2024-06-29 00:36:47'),
(280, 58, 20, '2024-06-29 00:36:47', '2024-06-29 00:36:47'),
(281, 59, 17, '2024-06-29 00:41:00', '2024-06-29 00:41:00'),
(282, 59, 18, '2024-06-29 00:41:00', '2024-06-29 00:41:00'),
(283, 59, 19, '2024-06-29 00:41:00', '2024-06-29 00:41:00'),
(284, 59, 20, '2024-06-29 00:41:00', '2024-06-29 00:41:00'),
(285, 60, 7, '2024-06-29 00:45:55', '2024-06-29 00:45:55'),
(286, 60, 1, '2024-06-29 00:45:55', '2024-06-29 00:45:55'),
(287, 60, 2, '2024-06-29 00:45:55', '2024-06-29 00:45:55'),
(288, 60, 8, '2024-06-29 00:45:55', '2024-06-29 00:45:55'),
(289, 60, 3, '2024-06-29 00:45:55', '2024-06-29 00:45:55'),
(290, 60, 9, '2024-06-29 00:45:55', '2024-06-29 00:45:55'),
(291, 61, 7, '2024-06-29 00:50:30', '2024-06-29 00:50:30'),
(292, 61, 1, '2024-06-29 00:50:30', '2024-06-29 00:50:30'),
(293, 62, 7, '2024-06-29 00:54:29', '2024-06-29 00:54:29'),
(294, 62, 1, '2024-06-29 00:54:29', '2024-06-29 00:54:29'),
(295, 62, 2, '2024-06-29 00:54:29', '2024-06-29 00:54:29'),
(296, 62, 8, '2024-06-29 00:54:29', '2024-06-29 00:54:29'),
(297, 62, 3, '2024-06-29 00:54:29', '2024-06-29 00:54:29'),
(298, 62, 9, '2024-06-29 00:54:29', '2024-06-29 00:54:29'),
(299, 63, 7, '2024-06-29 00:59:43', '2024-06-29 00:59:43'),
(300, 63, 1, '2024-06-29 00:59:43', '2024-06-29 00:59:43'),
(301, 63, 2, '2024-06-29 00:59:43', '2024-06-29 00:59:43'),
(302, 63, 8, '2024-06-29 00:59:43', '2024-06-29 00:59:43'),
(303, 63, 3, '2024-06-29 00:59:43', '2024-06-29 00:59:43'),
(304, 63, 9, '2024-06-29 00:59:43', '2024-06-29 00:59:43'),
(305, 64, 1, '2024-06-29 01:03:43', '2024-06-29 01:03:43'),
(306, 64, 2, '2024-06-29 01:03:43', '2024-06-29 01:03:43'),
(307, 64, 8, '2024-06-29 01:03:43', '2024-06-29 01:03:43'),
(308, 65, 17, '2024-06-29 01:06:46', '2024-06-29 01:06:46'),
(309, 65, 7, '2024-06-29 01:06:46', '2024-06-29 01:06:46'),
(310, 65, 1, '2024-06-29 01:06:46', '2024-06-29 01:06:46'),
(311, 65, 2, '2024-06-29 01:06:46', '2024-06-29 01:06:46'),
(312, 65, 8, '2024-06-29 01:06:46', '2024-06-29 01:06:46'),
(313, 66, 17, '2024-06-29 01:09:59', '2024-06-29 01:09:59'),
(314, 66, 7, '2024-06-29 01:09:59', '2024-06-29 01:09:59'),
(315, 66, 1, '2024-06-29 01:09:59', '2024-06-29 01:09:59'),
(316, 66, 2, '2024-06-29 01:09:59', '2024-06-29 01:09:59'),
(317, 66, 8, '2024-06-29 01:09:59', '2024-06-29 01:09:59'),
(318, 66, 18, '2024-06-29 01:09:59', '2024-06-29 01:09:59'),
(319, 66, 19, '2024-06-29 01:09:59', '2024-06-29 01:09:59'),
(320, 67, 17, '2024-06-29 01:12:30', '2024-06-29 01:12:30'),
(321, 67, 7, '2024-06-29 01:12:30', '2024-06-29 01:12:30'),
(322, 67, 1, '2024-06-29 01:12:30', '2024-06-29 01:12:30'),
(323, 67, 2, '2024-06-29 01:12:30', '2024-06-29 01:12:30'),
(324, 67, 8, '2024-06-29 01:12:30', '2024-06-29 01:12:30'),
(325, 67, 18, '2024-06-29 01:12:30', '2024-06-29 01:12:30'),
(326, 67, 19, '2024-06-29 01:12:30', '2024-06-29 01:12:30'),
(327, 67, 20, '2024-06-29 01:12:30', '2024-06-29 01:12:30'),
(328, 68, 17, '2024-06-29 01:17:18', '2024-06-29 01:17:18'),
(329, 68, 7, '2024-06-29 01:17:18', '2024-06-29 01:17:18'),
(330, 68, 2, '2024-06-29 01:17:18', '2024-06-29 01:17:18'),
(331, 68, 8, '2024-06-29 01:17:18', '2024-06-29 01:17:18'),
(332, 68, 18, '2024-06-29 01:17:18', '2024-06-29 01:17:18'),
(333, 68, 19, '2024-06-29 01:17:18', '2024-06-29 01:17:18'),
(334, 68, 20, '2024-06-29 01:17:18', '2024-06-29 01:17:18'),
(335, 69, 17, '2024-06-29 01:22:36', '2024-06-29 01:22:36'),
(336, 69, 7, '2024-06-29 01:22:36', '2024-06-29 01:22:36'),
(337, 69, 1, '2024-06-29 01:22:36', '2024-06-29 01:22:36'),
(338, 69, 2, '2024-06-29 01:22:36', '2024-06-29 01:22:36'),
(339, 69, 8, '2024-06-29 01:22:36', '2024-06-29 01:22:36'),
(340, 69, 18, '2024-06-29 01:22:36', '2024-06-29 01:22:36'),
(341, 69, 19, '2024-06-29 01:22:36', '2024-06-29 01:22:36'),
(342, 69, 20, '2024-06-29 01:22:36', '2024-06-29 01:22:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `rating` tinyint(3) UNSIGNED NOT NULL,
  `review` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `rating`, `review`, `created_at`, `updated_at`) VALUES
(8, 31, 1, 4, 'Good', '2024-07-02 03:00:06', '2024-07-02 03:00:06'),
(9, 26, 1, 4, 'Pretty good', '2024-07-02 05:05:28', '2024-07-02 05:05:28'),
(11, 31, 2, 3, 'pretty good', '2024-07-02 05:22:50', '2024-07-02 05:22:50'),
(14, 31, 2, 5, 'good', '2024-07-02 05:37:52', '2024-07-02 05:37:52'),
(15, 31, 2, 4, 'good', '2024-07-02 05:38:07', '2024-07-02 05:38:07'),
(16, 31, 2, 1, 'bad', '2024-07-02 05:38:21', '2024-07-02 05:38:21'),
(18, 28, 2, 4, 'pretty good', '2024-07-02 05:38:59', '2024-07-02 05:38:59'),
(64, 24, 2, 5, 'Good', '2024-07-03 18:33:42', '2024-07-03 18:33:42'),
(65, 24, 2, 5, 'Good', '2024-07-03 18:33:49', '2024-07-03 18:33:49'),
(66, 24, 2, 5, 'good', '2024-07-03 18:33:58', '2024-07-03 18:33:58'),
(68, 24, 2, 2, 'bad', '2024-07-03 18:51:51', '2024-07-03 18:51:51'),
(71, 17, 1, 5, 'good', '2024-07-03 18:54:54', '2024-07-03 18:54:54'),
(72, 17, 1, 1, 'bad', '2024-07-03 19:02:27', '2024-07-03 19:02:27'),
(73, 26, 13, 4, 'not bad', '2024-07-03 19:28:49', '2024-07-03 19:28:49'),
(76, 17, 2, 4, 'awesome :))', '2024-07-09 22:41:56', '2024-07-09 22:41:56'),
(81, 26, 2, 5, 'not bad', '2024-07-16 21:39:06', '2024-07-16 21:39:06'),
(82, 19, 2, 4, 'pretty good', '2024-07-16 21:44:26', '2024-07-16 21:44:26'),
(83, 20, 1, 5, 'this polo is very gud <3', '2024-07-20 05:52:27', '2024-07-20 05:52:27'),
(84, 22, 1, 4, 'not bad', '2024-07-20 18:59:05', '2024-07-20 18:59:05'),
(87, 19, 1, 4, 'pretty good', '2024-07-20 19:45:34', '2024-07-20 19:45:34'),
(91, 23, 2, 5, 'Good, i like this.', '2024-07-21 00:56:23', '2024-07-21 00:56:23'),
(94, 29, 2, 5, 'Sản phẩm chất lượng tuyệt vời! Vải mềm mại và thoáng khí, mặc rất thoải mái. Tôi rất hài lòng với kiểu dáng và màu sắc. Chắc chắn sẽ mua thêm từ shop này.', '2024-07-28 07:32:52', '2024-07-28 07:32:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'instagram', 'instagram.com', '2024-07-24 07:18:56', '2024-07-24 07:18:56', NULL),
(4, 'twitter', 'twitter.com', '2024-07-24 08:58:09', '2024-07-24 08:58:09', NULL),
(5, 'facebook', 'facebook.com', '2024-07-25 00:10:02', '2024-07-25 00:10:02', NULL),
(9, 'helps', '<h3>Trang Trợ Gi&uacute;p - C&acirc;u Hỏi Thường Gặp</h3>\r\n\r\n<p>Ch&agrave;o mừng đến với Trang Trợ Gi&uacute;p của ch&uacute;ng t&ocirc;i! Dưới đ&acirc;y l&agrave; một số c&acirc;u hỏi thường gặp v&agrave; c&acirc;u trả lời để bạn c&oacute; thể t&igrave;m hiểu th&ecirc;m về c&aacute;ch sử dụng dịch vụ của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<p>1. L&agrave;m thế n&agrave;o để đặt h&agrave;ng tr&ecirc;n trang web của bạn?</p>\r\n\r\n<p>Để đặt h&agrave;ng tr&ecirc;n trang web của ch&uacute;ng t&ocirc;i, bạn c&oacute; thể l&agrave;m theo c&aacute;c bước sau:</p>\r\n\r\n<ul>\r\n	<li><strong>Bước 1:</strong> T&igrave;m kiếm sản phẩm bằng c&aacute;ch sử dụng thanh t&igrave;m kiếm hoặc duyệt qua danh mục sản phẩm.</li>\r\n	<li><strong>Bước 2:</strong> Nhấp v&agrave;o sản phẩm để xem chi tiết v&agrave; chọn c&aacute;c thuộc t&iacute;nh như m&agrave;u sắc, k&iacute;ch cỡ.</li>\r\n	<li><strong>Bước 3:</strong> Th&ecirc;m sản phẩm v&agrave;o giỏ h&agrave;ng bằng c&aacute;ch nhấn v&agrave;o n&uacute;t &quot;Th&ecirc;m v&agrave;o giỏ h&agrave;ng&quot; hoặc &quot;Mua ngay&quot;.</li>\r\n	<li><strong>Bước 4:</strong> Tiếp tục thanh to&aacute;n v&agrave; điền th&ocirc;ng tin giao h&agrave;ng.</li>\r\n	<li><strong>Bước 5:</strong> X&aacute;c nhận đơn h&agrave;ng v&agrave; chờ nhận h&agrave;ng tại địa chỉ bạn đ&atilde; cung cấp.</li>\r\n</ul>\r\n\r\n<p>2. L&agrave;m thế n&agrave;o để theo d&otilde;i đơn h&agrave;ng của t&ocirc;i?</p>\r\n\r\n<p>Bạn c&oacute; thể theo d&otilde;i đơn h&agrave;ng của m&igrave;nh bằng c&aacute;ch đăng nhập v&agrave;o t&agrave;i khoản của bạn v&agrave; truy cập v&agrave;o phần &quot;Đơn h&agrave;ng của t&ocirc;i&quot;. Tại đ&acirc;y, bạn sẽ thấy th&ocirc;ng tin chi tiết về t&igrave;nh trạng của đơn h&agrave;ng hiện tại của bạn.</p>\r\n\r\n<p>3. L&agrave;m thế n&agrave;o để đổi/trả h&agrave;ng?</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i hỗ trợ quy định đổi/trả h&agrave;ng linh hoạt để đảm bảo sự h&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng. Nếu bạn muốn đổi hoặc trả h&agrave;ng, vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua trang Li&ecirc;n hệ v&agrave; cung cấp th&ocirc;ng tin về đơn h&agrave;ng của bạn để ch&uacute;ng t&ocirc;i c&oacute; thể hỗ trợ bạn.</p>\r\n\r\n<p>4. L&agrave;m thế n&agrave;o để li&ecirc;n hệ với ch&uacute;ng t&ocirc;i?</p>\r\n\r\n<p>Nếu bạn c&oacute; bất kỳ c&acirc;u hỏi n&agrave;o kh&aacute;c hoặc cần hỗ trợ th&ecirc;m, bạn c&oacute; thể li&ecirc;n hệ với ch&uacute;ng t&ocirc;i qua c&aacute;c c&aacute;ch sau:</p>\r\n\r\n<ul>\r\n	<li><strong>Gọi điện:</strong> (+84) 123 456 789</li>\r\n	<li><strong>Email:</strong> support@example.com</li>\r\n	<li><strong>Trang Li&ecirc;n hệ:</strong> Li&ecirc;n hệ</li>\r\n</ul>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i rất vui l&ograve;ng được hỗ trợ bạn!</p>', '2024-07-25 01:20:30', '2024-07-25 01:20:30', NULL),
(10, 'about', '<h3><strong>Ch&agrave;o mừng đến với LA Shop!</strong></h3>\r\n\r\n<p>Tại LA Shop, ch&uacute;ng t&ocirc;i tự h&agrave;o l&agrave; một trong những địa chỉ mua sắm thời trang h&agrave;ng đầu, mang đến cho bạn những bộ sưu tập quần &aacute;o phong c&aacute;ch v&agrave; chất lượng cao nhất. Với sứ mệnh kh&ocirc;ng ngừng l&agrave;m mới v&agrave; n&acirc;ng cao trải nghiệm mua sắm của kh&aacute;ch h&agrave;ng, ch&uacute;ng t&ocirc;i cam kết cung cấp những sản phẩm thời trang đa dạng, từ những m&oacute;n đồ cơ bản h&agrave;ng ng&agrave;y đến những thiết kế mới lạ v&agrave; xu hướng nhất.</p>\r\n\r\n<p><strong>Ch&uacute;ng T&ocirc;i L&agrave; Ai?</strong></p>\r\n\r\n<p>LA Shop được th&agrave;nh lập với niềm đam m&ecirc; s&acirc;u sắc về thời trang v&agrave; mong muốn mang đến cho kh&aacute;ch h&agrave;ng những sản phẩm kh&ocirc;ng chỉ đẹp m&agrave; c&ograve;n ph&ugrave; hợp với phong c&aacute;ch v&agrave; c&aacute; t&iacute;nh ri&ecirc;ng. Đội ngũ thiết kế v&agrave; nh&acirc;n vi&ecirc;n của ch&uacute;ng t&ocirc;i l&agrave; những người d&agrave;y dạn kinh nghiệm trong ng&agrave;nh thời trang, lu&ocirc;n nỗ lực kh&ocirc;ng ngừng để mang đến những bộ sưu tập đ&aacute;p ứng tốt nhất nhu cầu v&agrave; sở th&iacute;ch của bạn.</p>\r\n\r\n<p><strong>Cam Kết Chất Lượng</strong></p>\r\n\r\n<p>Chất lượng sản phẩm l&agrave; ưu ti&ecirc;n h&agrave;ng đầu của ch&uacute;ng t&ocirc;i. Mỗi m&oacute;n đồ được chọn lọc v&agrave; kiểm tra kỹ lưỡng để đảm bảo đạt ti&ecirc;u chuẩn cao nhất về chất lượng v&agrave; độ bền. Ch&uacute;ng t&ocirc;i l&agrave;m việc với c&aacute;c nh&agrave; cung cấp v&agrave; nh&agrave; sản xuất uy t&iacute;n để mang đến cho bạn những sản phẩm tốt nhất với gi&aacute; cả hợp l&yacute;.</p>\r\n\r\n<p><strong>Dịch Vụ Kh&aacute;ch H&agrave;ng</strong></p>\r\n\r\n<p>Tại LA Shop, ch&uacute;ng t&ocirc;i coi trọng mỗi kh&aacute;ch h&agrave;ng v&agrave; lu&ocirc;n sẵn s&agrave;ng lắng nghe &yacute; kiến của bạn. Đội ngũ dịch vụ kh&aacute;ch h&agrave;ng của ch&uacute;ng t&ocirc;i được đ&agrave;o tạo chuy&ecirc;n nghiệp v&agrave; tận t&acirc;m, lu&ocirc;n sẵn s&agrave;ng hỗ trợ bạn với bất kỳ c&acirc;u hỏi hoặc y&ecirc;u cầu n&agrave;o. Nếu bạn cần hỗ trợ về đơn h&agrave;ng, đổi trả h&agrave;ng h&oacute;a, hoặc bất kỳ vấn đề n&agrave;o kh&aacute;c, đừng ngần ngại li&ecirc;n hệ với ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<p><strong>Tầm Nh&igrave;n v&agrave; Sứ Mệnh</strong></p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i hướng tới việc trở th&agrave;nh điểm đến y&ecirc;u th&iacute;ch của mọi t&iacute;n đồ thời trang, nơi bạn c&oacute; thể t&igrave;m thấy những sản phẩm thời trang chất lượng với mức gi&aacute; hợp l&yacute;. Sứ mệnh của ch&uacute;ng t&ocirc;i l&agrave; l&agrave;m cho việc mua sắm trở n&ecirc;n dễ d&agrave;ng v&agrave; th&uacute; vị hơn bao giờ hết.</p>\r\n\r\n<p>Cảm ơn bạn đ&atilde; lựa chọn LA Shop. Ch&uacute;ng t&ocirc;i rất mong được phục vụ bạn v&agrave; gi&uacute;p bạn t&igrave;m thấy những sản phẩm thời trang ưng &yacute; nhất!</p>', '2024-07-25 01:42:49', '2024-07-25 01:42:49', NULL),
(11, 'contact', '<h3>Li&ecirc;n Hệ Với Ch&uacute;ng T&ocirc;i</h3>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i lu&ocirc;n sẵn s&agrave;ng lắng nghe &yacute; kiến của bạn v&agrave; hỗ trợ bạn với bất kỳ c&acirc;u hỏi hoặc y&ecirc;u cầu n&agrave;o. Dưới đ&acirc;y l&agrave; c&aacute;c c&aacute;ch để bạn li&ecirc;n hệ với ch&uacute;ng t&ocirc;i:</p>\r\n\r\n<p><strong>Th&ocirc;ng Tin Li&ecirc;n Hệ</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Địa chỉ cửa h&agrave;ng:</strong><br />\r\n	123 Phố Thời Trang, Quận..., TP.HCM</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Điện thoại:</strong><br />\r\n	(+84) 123 456 789</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Email:</strong><br />\r\n	support@lashop.com.vn</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Giờ l&agrave;m việc:</strong><br />\r\n	Thứ Hai - Thứ S&aacute;u: 9:00 AM - 6:00 PM<br />\r\n	Thứ Bảy - Chủ Nhật: 10:00 AM - 4:00 PM</p>\r\n	</li>\r\n</ul>', '2024-07-25 01:45:29', '2024-07-25 01:45:29', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'M', '2024-06-24 23:23:46', '2024-06-24 23:23:46'),
(2, 'L', '2024-06-24 23:23:46', '2024-06-24 23:23:46'),
(3, 'XXL', '2024-06-24 23:34:38', '2024-06-24 23:34:38'),
(6, '1', '2024-06-25 07:34:16', '2024-06-25 07:34:16'),
(7, 's', '2024-06-28 09:26:01', '2024-06-28 09:26:01'),
(8, 'xl', '2024-06-28 09:26:01', '2024-06-28 09:26:01'),
(9, 'xxxl', '2024-06-28 09:26:01', '2024-06-28 09:26:01'),
(10, '30', '2024-06-28 22:08:55', '2024-06-28 22:08:55'),
(11, '32', '2024-06-28 22:08:55', '2024-06-28 22:08:55'),
(12, '34', '2024-06-28 22:08:55', '2024-06-28 22:08:55'),
(13, '36', '2024-06-28 22:08:55', '2024-06-28 22:08:55'),
(14, '38', '2024-06-28 22:08:55', '2024-06-28 22:08:55'),
(15, '40', '2024-06-28 22:08:55', '2024-06-28 22:08:55'),
(16, '42', '2024-06-28 22:08:55', '2024-06-28 22:08:55'),
(17, 'xs', '2024-06-28 23:43:00', '2024-06-28 23:43:00'),
(18, '1x', '2024-06-28 23:47:30', '2024-06-28 23:47:30'),
(19, '2x', '2024-06-28 23:47:30', '2024-06-28 23:47:30'),
(20, '3x', '2024-06-28 23:47:30', '2024-06-28 23:47:30'),
(21, '0', '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(22, '3', '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(23, '5', '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(24, '7', '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(25, '9', '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(26, '11', '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(27, '13', '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(28, '15', '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(29, '14plus', '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(30, '16plus', '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(31, '18plus', '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(32, '20plus', '2024-06-29 00:30:07', '2024-06-29 00:30:07'),
(33, '22plus', '2024-06-29 00:30:07', '2024-06-29 00:30:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `content`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 'Welcome to LA Shop', 'Discover the latest fashion collections and the most impressive styles with us.', '/storage/slider/DERk3wkkhQWp2jNWWMW5.jpg', NULL, '2024-06-29 09:14:14', '2024-07-19 06:30:16'),
(5, 'Summer Collection', 'Embrace summer with fresh, breezy, and colorful designs.', '/storage/slider/LW3AcWdW9WrVWC83kldb.jpg', NULL, '2024-06-29 09:16:28', '2024-06-29 09:16:28'),
(6, 'Fall Trends', 'Explore the latest fall fashion trends, from cozy coats to elegant dresses.', '/storage/slider/PWJqrlYjUbZS41lpMBfW.jpg', NULL, '2024-06-29 09:17:08', '2024-06-29 09:17:08'),
(7, 'Special Offers', 'Get 40% off your first purchase at LA Shop. Applies to all products.', '/storage/slider/oFp6qviyN84nZut5VogT.jpg', NULL, '2024-06-29 09:17:45', '2024-06-29 09:17:45'),
(8, 'New Arrivals', 'Stay ahead of the trends with our latest arrivals, updated weekly.', '/storage/slider/PupO9ZdLfryNaztQCotW.jpg', NULL, '2024-06-29 09:19:21', '2024-06-29 09:19:21'),
(9, 'Style Inspiration', 'Get inspired by our style guides and lookbooks, curated just for you.', '/storage/slider/Gtcz7Mgwy6qDmiZsbpsq.jpg', NULL, '2024-06-29 09:20:14', '2024-06-29 09:20:14'),
(10, 'Classic Style', 'Don’t miss out on our exclusive limited edition pieces. Once they\'re gone, they\'re gone!', '/storage/slider/KxrgOSwcU0cX6Hlt34kC.jpg', NULL, '2024-06-29 09:21:13', '2024-07-19 07:44:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `role` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT '/storage/user/user.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `status`, `role`, `deleted_at`, `image`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$.0bklNYqHAw2vM64aT88V.HxKIpa6D680KI9J4OzI4EhPQrP1Pi/G', NULL, '2024-06-23 01:48:35', '2024-06-27 05:43:33', 1, 1, NULL, '/storage/user/user.png'),
(2, 'Mai Ngô', 'user1@gmail.com', NULL, '$2y$12$thlzaiC25BkD8QkNP.ukEuwhY0Wb4L0D8nuGetbp2tA6VNJhCVlkq', NULL, '2024-07-26 03:12:36', '2024-07-29 00:53:06', 1, 0, NULL, '/storage/user/lseGhlaqRSRtUe0giUfw.png'),
(3, 'Nguyễn Văn User', 'user@gmail.com', NULL, '$2y$12$IjDIW2RLV7zTJqYW0mIEyumwYXqJjvwqw4CuUGmdjq0gnRz6k5XN.', NULL, '2024-07-25 00:30:58', '2024-06-27 06:46:58', 1, 1, NULL, '/storage/user/user.png'),
(13, 'user 2', 'user2@gmail.com', NULL, '$2y$12$qFMGyEC/VF9OalzOBWopj.wRwLTlpTnlS2oQLpuu61B72hCf6hB8u', NULL, '2024-07-26 02:09:32', '2024-07-19 06:41:45', 1, 0, '2024-07-19 06:41:45', '/storage/user/user.png'),
(14, 'Huỳnh Tấn Vương', 'huyntanvuong@gmail.com', NULL, '$2y$12$stcsAuBnN2KT4TW6MEGsM.eAhyW5dist54o4D3l.1Vanmpqg.UQi6', NULL, '2024-07-27 09:14:30', '2024-07-27 09:14:30', 1, 0, NULL, '/storage/user/user.png'),
(15, 'Nguyễn Văn B', 'nguyenvanb@gmail.com', NULL, '$2y$12$dP4I4rUDr9sEa7PvikkSK.ZiiSl97dvVeynAWwlE4M6b1qzLXLISe', NULL, '2024-07-29 00:54:52', '2024-07-29 00:54:52', 1, 0, NULL, '/storage/user/user.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(68, 1, 20, '2024-07-06 21:24:59', '2024-07-19 21:39:39', '2024-07-19 21:39:39'),
(84, 2, 48, '2024-07-07 07:32:17', '2024-07-07 07:32:17', NULL),
(85, 2, 51, '2024-07-09 02:51:47', '2024-07-09 02:51:47', NULL),
(106, 2, 33, '2024-07-12 02:22:08', '2024-07-12 02:22:08', NULL),
(107, 2, 37, '2024-07-12 02:22:12', '2024-07-12 02:22:12', NULL),
(108, 2, 39, '2024-07-12 02:22:14', '2024-07-12 02:22:14', NULL),
(109, 1, 38, '2024-07-12 02:23:04', '2024-07-12 02:23:04', NULL),
(110, 1, 43, '2024-07-12 02:23:12', '2024-07-12 02:23:12', NULL),
(111, 1, 45, '2024-07-12 02:23:15', '2024-07-12 02:23:15', NULL),
(112, 1, 51, '2024-07-12 02:23:23', '2024-07-12 02:23:23', NULL),
(117, 2, 22, '2024-07-16 21:31:27', '2024-07-16 21:31:27', NULL),
(118, 2, 68, '2024-07-16 21:31:37', '2024-07-16 21:31:37', NULL),
(119, 1, 19, '2024-07-19 09:13:35', '2024-07-19 21:51:30', '2024-07-19 21:51:30'),
(120, 1, 26, '2024-07-19 21:04:53', '2024-07-19 21:11:15', '2024-07-19 21:11:15'),
(121, 1, 26, '2024-07-19 21:11:33', '2024-07-19 21:14:15', '2024-07-19 21:14:15'),
(122, 1, 26, '2024-07-19 21:15:15', '2024-07-19 21:17:46', '2024-07-19 21:17:46'),
(123, 1, 26, '2024-07-19 21:17:59', '2024-07-19 21:24:46', '2024-07-19 21:24:46'),
(124, 1, 26, '2024-07-19 21:24:50', '2024-07-19 21:30:24', '2024-07-19 21:30:24'),
(125, 1, 26, '2024-07-19 21:30:26', '2024-07-19 21:30:28', '2024-07-19 21:30:28'),
(126, 1, 26, '2024-07-19 21:30:31', '2024-07-19 21:33:52', '2024-07-19 21:33:52'),
(127, 1, 26, '2024-07-19 21:34:39', '2024-07-19 21:35:40', '2024-07-19 21:35:40'),
(128, 1, 18, '2024-07-19 21:38:19', '2024-07-19 21:51:25', '2024-07-19 21:51:25'),
(129, 1, 26, '2024-07-19 21:40:43', '2024-07-25 03:21:15', '2024-07-25 03:21:15'),
(130, 1, 19, '2024-07-19 21:51:32', '2024-07-19 21:54:10', '2024-07-19 21:54:10'),
(131, 1, 19, '2024-07-19 21:54:13', '2024-07-19 21:55:38', '2024-07-19 21:55:38'),
(132, 1, 30, '2024-07-19 21:55:54', '2024-07-21 00:09:19', '2024-07-21 00:09:19'),
(133, 1, 67, '2024-07-19 22:31:02', '2024-07-19 22:31:04', '2024-07-19 22:31:04'),
(134, 1, 19, '2024-07-19 22:31:11', '2024-07-19 22:31:15', '2024-07-19 22:31:15'),
(135, 1, 52, '2024-07-19 22:31:27', '2024-07-19 22:31:29', '2024-07-19 22:31:29'),
(136, 1, 19, '2024-07-19 23:23:59', '2024-07-19 23:24:03', '2024-07-19 23:24:03'),
(137, 1, 19, '2024-07-20 01:27:14', '2024-07-20 01:27:29', '2024-07-20 01:27:29'),
(138, 1, 20, '2024-07-20 05:51:36', '2024-07-20 05:51:50', '2024-07-20 05:51:50'),
(139, 1, 26, '2024-07-25 03:21:19', '2024-07-25 03:21:19', NULL),
(140, 1, 65, '2024-07-28 03:29:20', '2024-07-28 03:29:33', '2024-07-28 03:29:33'),
(141, 2, 29, '2024-07-28 07:33:16', '2024-07-28 07:33:16', NULL),
(142, 2, 19, '2024-07-28 07:42:57', '2024-07-28 07:42:59', '2024-07-28 07:42:59');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oders_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_colors_color_id_foreign` (`color_id`),
  ADD KEY `product_colors_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_sizes_size_id_foreign` (`size_id`),
  ADD KEY `product_sizes_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Chỉ mục cho bảng `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT cho bảng `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=343;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `oders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_colors`
--
ALTER TABLE `product_colors`
  ADD CONSTRAINT `product_colors_color_id_foreign` FOREIGN KEY (`color_id`) REFERENCES `colors` (`id`),
  ADD CONSTRAINT `product_colors_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD CONSTRAINT `product_sizes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_sizes_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`);

--
-- Các ràng buộc cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
