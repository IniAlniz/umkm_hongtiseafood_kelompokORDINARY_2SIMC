-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2024 at 10:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_umkm_hongtiseafood`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '0001_01_01_000000_create_users_table', 1),
(5, '0001_01_01_000001_create_cache_table', 1),
(6, '0001_01_01_000002_create_jobs_table', 1),
(7, '2024_06_06_081340_create_product_categories_table', 2),
(9, '2024_06_07_054111_create_products_table', 3),
(10, '2024_06_07_151803_create_comments_table', 4),
(11, '2024_06_07_153502_add_product_category_id_to_comments_table', 5),
(12, '2024_06_08_063405_create_product_images_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `price` double DEFAULT NULL,
  `product_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `description`, `price`, `product_category_id`, `created_at`, `updated_at`) VALUES
(4, 'Zhi Bao Ji', 'zhi-bao-ji', 'Ayam kampoeng pepper baked-chicken', 170000, 5, '2024-06-09 01:28:02', '2024-06-09 01:28:02'),
(5, 'Rice Bowl With Thai Sauce Chicken Set', 'rice-bowl-with-thai-sauce-chicken-set', 'Nasi + Ayam Saos Thailand + Sayur + Telur', 32000, 5, '2024-06-10 23:13:44', '2024-06-11 04:38:11'),
(6, 'Ayam Goreng Bawang Putih', 'ayam-goreng-bawang-putih', 'Ayam ras, pakai paha ayam', 45000, 5, '2024-06-10 23:23:27', '2024-06-11 04:36:28'),
(7, 'Ikan Goreng Yiucam', 'ikan-goreng-yiucam', '500gr ( ikan kakap, ikan bawal emas, ikan krapu, ikan ciakap ) dll', 28000, 5, '2024-06-10 23:24:12', '2024-06-11 04:37:16'),
(8, 'Rice Bowl With Thai Sauce Chicken Set', 'rice-bowl-with-thai-sauce-chicken-set', 'Nasi + Ayam Saos Thailand + Sayur + Telur', 32000, 7, '2024-06-10 23:25:25', '2024-06-10 23:25:52'),
(9, 'Rice Bowl With Black Pepper Sauce Chicken Set', 'rice-bowl-with-black-pepper-sauce-chicken-set', 'Nasi + Ayam Lada Hitam + Sayur + Telur', 32000, 7, '2024-06-10 23:28:21', '2024-06-10 23:28:21'),
(10, 'Rice Bowl With Sweet Tomato Sauce Chicken Set', 'rice-bowl-with-sweet-tomato-sauce-chicken-set', 'Nasi + Ayam Saos Tomat + Sayur + Telur', 32000, 7, '2024-06-10 23:28:50', '2024-06-10 23:28:50'),
(11, 'Rice Bowl With Salted Egg Chicken Set', 'rice-bowl-with-salted-egg-chicken-set', 'Nasi + Ayam Telur Asin + Sayur + Telur', 32000, 7, '2024-06-10 23:31:48', '2024-06-10 23:31:48'),
(12, 'Rice Bowl With Garlic Fried Chicken Set', 'rice-bowl-with-garlic-fried-chicken-set', 'Nasi + Ayam + Sayur + Telur', 32000, 7, '2024-06-10 23:32:08', '2024-06-10 23:32:08'),
(13, 'Rice Bowl With Thai Sauce Fish Set', 'rice-bowl-with-thai-sauce-fish-set', 'Nasi + Ikan Saos Thailand + Sayur + Telur', 32000, 8, '2024-06-10 23:32:32', '2024-06-10 23:32:32'),
(14, 'Rice Bowl With Black Pepper Sauce Fish Set', 'rice-bowl-with-black-pepper-sauce-fish-set', 'Nasi + Ikan Lada Hitam + Sayur + Telur', 32000, 8, '2024-06-10 23:33:09', '2024-06-10 23:33:09'),
(15, 'Rice Bowl With Sweet Tomato Sauce Fish Set', 'rice-bowl-with-sweet-tomato-sauce-fish-set', 'Nasi + Ikan Saos Tomat + Sayur + Telur', 32000, 8, '2024-06-10 23:33:39', '2024-06-10 23:33:39'),
(16, 'Rice Bowl With Salted Egg Fish Set', 'rice-bowl-with-salted-egg-fish-set', 'Nasi + Ikan Telur Asin + Sayur + Telur', 32000, 8, '2024-06-10 23:34:07', '2024-06-10 23:34:07'),
(17, 'Mie Siram', 'mie-siram', 'Ayam, bakso, udang, sotong, sayur', 40000, 9, '2024-06-10 23:38:47', '2024-06-10 23:38:47'),
(18, 'Bihun Siram', 'bihun-siram', 'Ayam, bakso, udang, sotong, sayur', 35000, 9, '2024-06-10 23:39:09', '2024-06-10 23:39:09'),
(19, 'Kwetiau Goreng', 'kwetiau-goreng', 'Ayam, bakso, udang, sotong, sayur, telur, authentic chinese food', 35000, 9, '2024-06-10 23:39:33', '2024-06-11 04:43:28'),
(20, 'Mie Goreng', 'mie-goreng', 'Ayam, bakso, udang, sotong, sayur, telur.', 35000, 9, '2024-06-10 23:39:52', '2024-06-10 23:39:52'),
(21, 'Bihun Goreng', 'bihun-goreng', 'Ayam, bakso, udang, sotong, sayur, telur.', 35000, 9, '2024-06-10 23:40:27', '2024-06-10 23:40:27'),
(22, 'Nasi Goreng Seafood', 'nasi-goreng-seafood', 'Ayam, bakso, udang, sotong, telur', 35000, 9, '2024-06-10 23:40:58', '2024-06-10 23:40:58'),
(23, 'Nasi Goreng Nanas', 'nasi-goreng-nanas', 'nanas + telur + timun + ayam + udang + sotong', 40000, 9, '2024-06-10 23:41:28', '2024-06-11 04:45:15'),
(24, 'Kepiting Soka Telur Asin', 'kepiting-soka-telur-asin', 'Kepiting', 100000, 10, '2024-06-10 23:42:55', '2024-06-10 23:42:55'),
(25, 'Kepiting Soka Saos Thailand', 'kepiting-soka-saos-thailand', 'Kepiting', 100000, 10, '2024-06-10 23:43:31', '2024-06-10 23:43:31'),
(30, 'Sapo Ikan Keladi (menu Baru)', 'sapo-ikan-keladi-menu-baru', '500gr (ikan kakap, ikan bawal emas, ikan krapu, ikan ciakap) dll', 140000, 12, '2024-06-10 23:48:37', '2024-06-10 23:48:37'),
(31, 'Ikan Kari / Kepala Ikan Kari', 'ikan-kari-kepala-ikan-kari', '500gr ( ikan kakap, ikan bawal emas, ikan krapu, ikan ciakap ) dll', 140000, 12, '2024-06-10 23:49:00', '2024-06-10 23:49:00'),
(32, 'Ikan Stim Jahe / Stim Tio Ciu', 'ikan-stim-jahe-stim-tio-ciu', '500gr (ikan kakap, ikan bawal emas, ikan krapu, ikan ciakap ) dll', 140000, 12, '2024-06-10 23:49:31', '2024-06-10 23:49:31'),
(33, 'Ikan Stim Hongkong', 'ikan-stim-hongkong', '500gr ( ikan kakap, ikan bawal emas, ikan krapu, ikan ciakap ) dll', 140000, 12, '2024-06-10 23:49:59', '2024-06-10 23:49:59'),
(34, 'Ikan Stim Cai Pou', 'ikan-stim-cai-pou', '500gr ( ikan kakap, ikan bawal emas, ikan krapu, ikan ciakap) dll', 140000, 12, '2024-06-10 23:50:41', '2024-06-10 23:50:41'),
(35, 'Ikan Goreng Yiucam', 'ikan-goreng-yiucam', '500gr ( ikan kakap, ikan bawal emas, ikan krapu, ikan ciakap ) dll', 140000, 12, '2024-06-10 23:51:13', '2024-06-10 23:51:13'),
(36, 'Ikan Goreng Thailand', 'ikan-goreng-thailand', '500gr ( ikan kakap, ikan bawal emas, ikan krapu, ikan ciakap ) dll', 140000, 12, '2024-06-10 23:51:40', '2024-06-10 23:51:40'),
(37, 'Ikan Asam Manis', 'ikan-asam-manis', '500gr ( ikan kakap, ikan bawal emas, ikan krapu, ikan ciakap ) dll', 140000, 12, '2024-06-10 23:52:02', '2024-06-10 23:52:02'),
(38, 'Ikan Goreng Mangga', 'ikan-goreng-mangga', '500gr ( ikan kakap, ikan bawal emas, ikan krapu, ikan ciakap ) dll', 140000, 12, '2024-06-10 23:52:24', '2024-06-10 23:52:24'),
(39, 'Sup Ikan Keladi', 'sup-ikan-keladi', '500gr ( ikan kakap, ikan bawal emas, ikan krapu, ikan ciakap ) dll', 140000, 12, '2024-06-10 23:52:52', '2024-06-10 23:52:52'),
(40, 'Ikan Asam Pedas', 'ikan-asam-pedas', '500gr ( ikan kakap, ikan bawal emas, ikan krapu, ikan ciakap ) dll', 140000, 12, '2024-06-10 23:53:12', '2024-06-10 23:53:12'),
(41, 'Zhibaoji', 'zhibaoji', 'Ayam kampung di panggang dengan chinese herbal / ekor', 170000, 13, '2024-06-10 23:55:03', '2024-06-10 23:55:03'),
(42, 'Ayam Goreng Bawang Putih', 'ayam-goreng-bawang-putih', 'Ayam ras, pakai paha ayam', 45000, 13, '2024-06-10 23:59:00', '2024-06-10 23:59:10'),
(43, 'Ayam Telur Asin', 'ayam-telur-asin', 'Bagian paha ayam', 45000, 13, '2024-06-10 23:59:31', '2024-06-10 23:59:31'),
(44, 'Ayam Cabe Kering', 'ayam-cabe-kering', 'Ayam ras', 45000, 13, '2024-06-10 23:59:55', '2024-06-10 23:59:55'),
(45, 'Ayam Goreng Mentega', 'ayam-goreng-mentega', 'Ayam ras', 45000, 13, '2024-06-11 00:00:16', '2024-06-11 00:00:16'),
(46, 'Ayam Goreng Saos Manis', 'ayam-goreng-saos-manis', 'Ayam ras', 45000, 13, '2024-06-11 00:00:35', '2024-06-11 00:00:46'),
(47, 'Ayam Goreng Saos Thailand', 'ayam-goreng-saos-thailand', 'Ayam ras', 45000, 13, '2024-06-11 00:01:10', '2024-06-11 00:01:10'),
(48, 'Udang Nestum', 'udang-nestum', 'Porsi kecil', 60000, 14, '2024-06-11 00:02:31', '2024-06-11 00:02:31'),
(49, 'Udang Telur Asin', 'udang-telur-asin', 'Porsi kecil', 60000, 14, '2024-06-11 00:02:51', '2024-06-11 00:03:06'),
(50, 'Udang Saos Pedas', 'udang-saos-pedas', 'Porsi kecil', 60000, 14, '2024-06-11 00:03:22', '2024-06-11 00:03:22'),
(51, 'Udang Goreng Saos Thailand', 'udang-goreng-saos-thailand', 'Porsi kecil', 60000, 14, '2024-06-11 00:03:56', '2024-06-11 00:03:56'),
(52, 'Udang Lada Hitam', 'udang-lada-hitam', 'Porsi kecil', 60000, 14, '2024-06-11 00:04:17', '2024-06-11 00:04:17'),
(53, 'Udang Goreng Tepung', 'udang-goreng-tepung', 'Porsi kecil', 60000, 14, '2024-06-11 00:05:06', '2024-06-11 00:05:06'),
(54, 'Udang Goreng Mentega', 'udang-goreng-mentega', 'Porsi kecil', 60000, 14, '2024-06-11 00:05:23', '2024-06-11 00:05:23'),
(55, 'Sotong Goreng Mentega', 'sotong-goreng-mentega', 'Porsi kecil', 45000, 15, '2024-06-11 00:06:35', '2024-06-11 00:06:35'),
(56, 'Sotong Telur Asin', 'sotong-telur-asin', 'Porsi kecil', 45000, 15, '2024-06-11 00:06:50', '2024-06-11 00:06:50'),
(57, 'Sotong Saos Pedas', 'sotong-saos-pedas', 'Porsi kecil', 45000, 15, '2024-06-11 00:07:05', '2024-06-11 00:07:05'),
(58, 'Sotong Goreng Tepung', 'sotong-goreng-tepung', 'Porsi kecil', 45000, 15, '2024-06-11 00:07:28', '2024-06-11 00:07:28'),
(59, 'Petei Bilis', 'petei-bilis', 'Porsi kecil', 50000, 16, '2024-06-11 00:08:40', '2024-06-11 00:08:40'),
(60, 'Petei Udang', 'petei-udang', 'Porsi kecil', 50000, 16, '2024-06-11 00:08:58', '2024-06-11 00:08:58'),
(61, 'Petei Sotong', 'petei-sotong', 'Porsi kecil', 50000, 16, '2024-06-11 00:09:19', '2024-06-11 00:09:19'),
(62, 'Sup Kelapa Tomyam', 'sup-kelapa-tomyam', 'Porsi 1 biji sup tomyam kelapa , bisa untuk 4 orang sampai 5 orang.', 120000, 17, '2024-06-11 00:10:00', '2024-06-11 00:10:00'),
(63, 'Sup Tomyam', 'sup-tomyam', 'Tomyam', 55000, 17, '2024-06-11 00:11:16', '2024-06-11 04:39:46'),
(64, 'Sup Hepio', 'sup-hepio', 'Sup bakso + selada', 60000, 17, '2024-06-11 00:11:38', '2024-06-11 04:40:25'),
(65, 'Sup Ikan', 'sup-ikan', 'Ikan', 35000, 17, '2024-06-11 00:11:55', '2024-06-11 04:40:40'),
(66, 'Sup Seafood', 'sup-seafood', 'Ikan + bakso + udang + ayam +sotong', 45000, 17, '2024-06-11 00:12:19', '2024-06-11 04:41:28'),
(67, 'Sup Tahu', 'sup-tahu', 'tahu + ikan + udang', 50000, 17, '2024-06-11 00:12:47', '2024-06-11 04:41:53'),
(68, 'Sup Bakso Ikan', 'sup-bakso-ikan', 'bakso ikan', 40000, 17, '2024-06-11 00:13:12', '2024-06-11 04:42:15'),
(69, 'Lala Kari', 'lala-kari', '500gr', 55000, 18, '2024-06-11 00:14:34', '2024-06-11 00:14:34'),
(70, 'Kerang Cabe Rawit', 'kerang-cabe-rawit', '500gr', 55000, 18, '2024-06-11 00:15:07', '2024-06-11 00:15:07'),
(71, 'Lala Saos Pedas', 'lala-saos-pedas', '500gr', 55000, 18, '2024-06-11 00:15:34', '2024-06-11 00:15:34'),
(72, 'Tahu Stim', 'tahu-stim', 'Tahu kotak, daging ayam cincang', 45000, 19, '2024-06-11 00:16:38', '2024-06-11 00:16:38'),
(73, 'Tahu Hot Plate', 'tahu-hot-plate', 'Tahu, udang, sotong, bakso, brokoli, wartel, dll.', 45000, 19, '2024-06-11 00:17:03', '2024-06-11 00:17:03'),
(74, 'Kangkung Terasi', 'kangkung-terasi', '-', 30000, 20, '2024-06-11 00:17:57', '2024-06-11 00:17:57'),
(75, 'Sawi Minyak Polos', 'sawi-minyak-polos', '=', 30000, 20, '2024-06-11 00:18:17', '2024-06-11 00:18:17'),
(76, 'Baby Kailan Polos', 'baby-kailan-polos', '-', 30000, 20, '2024-06-11 00:18:33', '2024-06-11 00:18:33'),
(77, 'Capcai', 'capcai', '-', 40000, 20, '2024-06-11 00:18:51', '2024-06-11 00:18:51'),
(78, 'Sawi Minyak Saos Hongkong', 'sawi-minyak-saos-hongkong', '-', 40000, 20, '2024-06-11 00:19:39', '2024-06-11 00:19:39'),
(79, 'Toge Ikan Asin', 'toge-ikan-asin', '-', 30000, 20, '2024-06-11 00:19:58', '2024-06-11 00:19:58'),
(80, 'Kangkung Polos', 'kangkung-polos', '-', 30000, 20, '2024-06-11 00:20:11', '2024-06-11 00:20:11'),
(81, 'Sayur Xiang Mai', 'sayur-xiang-mai', '-', 45000, 20, '2024-06-11 00:20:41', '2024-06-11 00:20:41'),
(82, 'Xiau Bai Cai Cha Udang', 'xiau-bai-cai-cha-udang', '-', 65000, 20, '2024-06-11 00:21:14', '2024-06-11 00:21:14'),
(83, 'Okera Tumis', 'okera-tumis', '-', 35000, 20, '2024-06-11 00:21:44', '2024-06-11 00:21:44'),
(84, 'Kecipir Terasi', 'kecipir-terasi', '-', 35000, 20, '2024-06-11 00:22:02', '2024-06-11 00:22:02'),
(85, 'Fu Yong Hai', 'fu-yong-hai', '-', 35000, 21, '2024-06-11 00:22:40', '2024-06-11 00:22:40'),
(86, 'Telur Pare', 'telur-pare', 'Telur + Pare', 40000, 21, '2024-06-11 00:23:10', '2024-06-11 04:35:12'),
(87, 'Telur Dadar Bombay', 'telur-dadar-bombay', '-', 25000, 21, '2024-06-11 00:23:50', '2024-06-11 01:34:48'),
(88, 'Telur Dadar Udang', 'telur-dadar-udang', '-', 35000, 21, '2024-06-11 00:24:32', '2024-06-11 00:24:32'),
(89, 'Nasi Putih', 'nasi-putih', 'Ya nasi', 9000, 22, '2024-06-11 00:25:10', '2024-06-11 00:25:10'),
(90, 'Minuman Kaleng', 'minuman-kaleng', 'Cola, sprite, pocari, sunkist, teh bunga, 100plus, green tea, sarsi', 11000, 24, '2024-06-11 00:26:44', '2024-06-11 00:26:44'),
(91, 'Aqua', 'aqua', 'Aqua, Le Mineral, Sanford', 7000, 24, '2024-06-11 00:27:01', '2024-06-11 04:33:54'),
(92, 'Teh Obeng', 'teh-obeng', 'Teh Obeng, Teh Tawar, Teh Tarik', 10000, 24, '2024-06-11 00:27:19', '2024-06-11 04:34:47');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(5, 'Recommend', 'recommend', '2024-06-09 01:27:02', '2024-06-09 01:27:02'),
(7, 'Rice Bowl (Chicken)', 'rice-bowl-chicken', '2024-06-10 23:08:43', '2024-06-10 23:08:43'),
(8, 'Rice Bowl (Fish)', 'rice-bowl-fish', '2024-06-10 23:09:05', '2024-06-10 23:09:05'),
(9, 'Menu Personal', 'menu-personal', '2024-06-10 23:09:19', '2024-06-10 23:09:19'),
(10, 'Kepiting', 'kepiting', '2024-06-10 23:09:36', '2024-06-10 23:09:36'),
(12, 'Ikan', 'ikan', '2024-06-10 23:10:10', '2024-06-10 23:10:10'),
(13, 'Ayam', 'ayam', '2024-06-10 23:10:23', '2024-06-10 23:10:23'),
(14, 'Udang', 'udang', '2024-06-10 23:10:37', '2024-06-10 23:10:37'),
(15, 'Sotong', 'sotong', '2024-06-10 23:10:43', '2024-06-10 23:10:43'),
(16, 'Petai', 'petai', '2024-06-10 23:11:24', '2024-06-11 04:32:08'),
(17, 'Sup', 'sup', '2024-06-10 23:11:30', '2024-06-10 23:11:30'),
(18, 'Kerang', 'kerang', '2024-06-10 23:11:42', '2024-06-10 23:11:42'),
(19, 'Tahu', 'tahu', '2024-06-10 23:11:49', '2024-06-10 23:11:49'),
(20, 'Sayuran', 'sayuran', '2024-06-10 23:12:20', '2024-06-10 23:12:20'),
(21, 'Telur', 'telur', '2024-06-10 23:12:25', '2024-06-10 23:12:25'),
(22, 'Nasi', 'nasi', '2024-06-10 23:12:31', '2024-06-10 23:12:31'),
(24, 'Minuman', 'minuman', '2024-06-11 00:25:57', '2024-06-11 00:25:57');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `indexing` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `image_url`, `product_id`, `indexing`, `created_at`, `updated_at`) VALUES
(1, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/1b0dde6f-ddb7-4d8a-8fc2-b991617abf60_Go-Biz_20230812_135053.jpeg?auto=format', 1, 1, '2024-06-08 03:03:26', '2024-06-10 23:03:22'),
(3, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/12113fad-4a9b-4deb-a6cd-0f61def4f55f_Go-Biz_20230812_135820.jpeg?auto=format', 3, 1, '2024-06-08 07:19:59', '2024-06-10 23:04:25'),
(4, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/9dbc5ac5-8fd3-44e4-ab51-5e7937bc35db_Go-Biz_20230812_185153.jpeg?auto=format', 4, 1, '2024-06-09 01:29:01', '2024-06-10 23:01:46'),
(6, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/38d04578-b4e7-41da-b4eb-871ac72a6913_Go-Biz_20230812_132142.jpeg?auto=format', 5, 1, '2024-06-11 00:28:14', '2024-06-11 00:28:22'),
(7, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/1ec263b3-f269-4ace-958b-bad273617138_Go-Biz_20230812_185005.jpeg?auto=format', 6, 1, '2024-06-11 00:33:48', '2024-06-11 00:33:48'),
(8, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/9cf15e0f-bc3e-432f-b909-30aee7929c2a_Go-Biz_20230812_211102.jpeg?auto=format', 7, 1, '2024-06-11 00:34:23', '2024-06-11 00:34:23'),
(9, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/38d04578-b4e7-41da-b4eb-871ac72a6913_Go-Biz_20230812_132142.jpeg?auto=format', 8, 1, '2024-06-11 00:36:23', '2024-06-11 00:36:23'),
(10, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/528a56c9-a0d7-4d06-a52b-840751ca0014_Go-Biz_20230812_131357.jpeg?auto=format', 9, 1, '2024-06-11 00:36:49', '2024-06-11 00:36:49'),
(11, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/59d3b0c7-da85-4260-83b7-274f24eeacbb_Go-Biz_20230812_131448.jpeg?auto=format', 10, 1, '2024-06-11 00:37:18', '2024-06-11 00:37:18'),
(12, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/17743d3e-fdbf-41e3-ae80-f550471d0bab_Go-Biz_20230812_131956.jpeg?auto=format', 11, 1, '2024-06-11 00:38:17', '2024-06-11 00:38:17'),
(13, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/67c83e16-2921-47c5-8f9b-3bfab4f726b9_Go-Biz_20230812_132103.jpeg?auto=format', 12, 1, '2024-06-11 00:38:39', '2024-06-11 00:38:39'),
(14, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/bcf6d201-04d2-4d95-8c70-046d65296b0a_Go-Biz_20230812_132229.jpeg?auto=format', 13, 1, '2024-06-11 00:40:15', '2024-06-11 00:40:15'),
(15, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/ae90c5e5-106c-43b3-972e-ca645faf551f_Go-Biz_20230812_132254.jpeg?auto=format', 14, 1, '2024-06-11 00:40:36', '2024-06-11 00:40:36'),
(16, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/b31cc50a-b611-48fa-bb33-299b06acffab_Go-Biz_20230812_132441.jpeg?auto=format', 15, 1, '2024-06-11 00:40:57', '2024-06-11 00:41:45'),
(17, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/67c83e16-2921-47c5-8f9b-3bfab4f726b9_Go-Biz_20230812_132103.jpeg?auto=format', 16, 1, '2024-06-11 00:41:24', '2024-06-11 00:41:24'),
(18, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/1c19a771-cdeb-4b1f-999e-a8d94a1ac047_4dd4e986-d23b-47a3-a3d2-47367810c01b_Go-Biz_20191011_211329.jpeg?auto=format', 17, 1, '2024-06-11 00:43:04', '2024-06-11 00:43:04'),
(19, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/ba93a5f7-40ef-4fd4-ab05-eb3dc8bcaab1_Go-Biz_20200901_173402.jpeg?auto=format', 18, 1, '2024-06-11 00:43:23', '2024-06-11 00:43:23'),
(20, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/1b0dde6f-ddb7-4d8a-8fc2-b991617abf60_Go-Biz_20230812_135053.jpeg?auto=format', 19, 1, '2024-06-11 00:43:39', '2024-06-11 00:43:39'),
(21, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/b90b0d03-83b2-48b5-9030-63a800e6c6e8_Go-Biz_20230812_140312.jpeg?auto=format', 20, 1, '2024-06-11 00:43:59', '2024-06-11 00:43:59'),
(22, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/e612df00-8984-4015-b0cf-95741f37093d_Go-Biz_20200829_121316.jpeg?auto=format', 21, 1, '2024-06-11 00:44:32', '2024-06-11 00:44:32'),
(23, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/12113fad-4a9b-4deb-a6cd-0f61def4f55f_Go-Biz_20230812_135820.jpeg?auto=format', 22, 1, '2024-06-11 00:44:52', '2024-06-11 00:44:52'),
(24, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/11780147-f2c8-4c38-82b1-e04fd9248c1c_Go-Biz_20230812_140614.jpeg?auto=format', 23, 1, '2024-06-11 00:45:12', '2024-06-11 00:45:12'),
(25, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/c2844cb4-c149-49df-87e7-dbca4918f2c9_Go-Biz_20230812_134243.jpeg?auto=format', 24, 1, '2024-06-11 00:46:34', '2024-06-11 00:46:34'),
(26, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/8bc51802-597f-4805-8121-2f9580b7b913_Go-Biz_20230812_134301.jpeg?auto=format', 25, 1, '2024-06-11 00:46:58', '2024-06-11 00:46:58'),
(27, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/c01d69ab-3716-443d-ba82-961fd3b533b1_Go-Biz_20230812_205727.jpeg?auto=format', 30, 1, '2024-06-11 00:51:03', '2024-06-11 00:51:03'),
(28, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/176d590f-bf43-49d4-a970-5359e98dd24c_Go-Biz_20230812_205959.jpeg?auto=format', 31, 1, '2024-06-11 00:51:26', '2024-06-11 00:51:26'),
(29, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/808a3ed3-e8da-43ad-b60f-307644d8c908_Go-Biz_20230812_210535.jpeg?auto=format', 32, 1, '2024-06-11 00:51:45', '2024-06-11 00:51:45'),
(30, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/1b61ada3-3806-467e-b380-2bc0223898d5_Go-Biz_20230812_210920.jpeg?auto=format', 33, 1, '2024-06-11 00:52:05', '2024-06-11 00:52:05'),
(31, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/1cc9fb0b-2634-45b2-a598-a4b0feaa2098_Go-Biz_20230812_211031.jpeg?auto=format', 34, 1, '2024-06-11 00:52:34', '2024-06-11 00:52:34'),
(32, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/9cf15e0f-bc3e-432f-b909-30aee7929c2a_Go-Biz_20230812_211102.jpeg?auto=format', 35, 1, '2024-06-11 00:53:05', '2024-06-11 00:53:05'),
(33, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/e24a4afc-6f7d-402c-94af-abba43cbae99_Go-Biz_20230812_211158.jpeg?auto=format', 36, 1, '2024-06-11 00:53:32', '2024-06-11 00:53:32'),
(34, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/2551d62c-07aa-45a3-a417-99e86118dc17_Go-Biz_20230812_211255.jpeg?auto=format', 37, 1, '2024-06-11 00:54:23', '2024-06-11 00:54:23'),
(35, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/2101a837-db39-4fd1-b9eb-b8f5322b8ce5_Go-Biz_20230812_211317.jpeg?auto=format', 38, 1, '2024-06-11 00:54:52', '2024-06-11 00:54:52'),
(36, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/7768fff7-d0f6-4f56-afd5-dc30c2f18753_Go-Biz_20230812_211401.jpeg?auto=format', 39, 1, '2024-06-11 00:55:15', '2024-06-11 00:55:15'),
(37, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/e95635ef-0036-4a00-9b5a-ca5614a31ba0_Go-Biz_20230812_211438.jpeg?auto=format', 40, 1, '2024-06-11 00:55:32', '2024-06-11 00:55:32'),
(38, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/9dbc5ac5-8fd3-44e4-ab51-5e7937bc35db_Go-Biz_20230812_185153.jpeg?auto=format', 41, 1, '2024-06-11 00:57:00', '2024-06-11 00:57:00'),
(39, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/1ec263b3-f269-4ace-958b-bad273617138_Go-Biz_20230812_185005.jpeg?auto=format', 42, 1, '2024-06-11 00:57:17', '2024-06-11 00:57:17'),
(40, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/bb1ffdb1-15af-4629-9668-8461be08c850_Go-Biz_20230812_185018.jpeg?auto=format', 43, 1, '2024-06-11 00:57:42', '2024-06-11 00:57:42'),
(41, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/4353edff-52a5-470a-9416-56b52dda01c4_Go-Biz_20230812_185035.jpeg?auto=format', 44, 1, '2024-06-11 00:58:19', '2024-06-11 00:58:19'),
(42, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/fce4987d-5209-46cc-81e8-97d470254640_Go-Biz_20230812_185100.jpeg?auto=format', 45, 1, '2024-06-11 00:58:50', '2024-06-11 00:58:50'),
(43, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/8d29a806-4a34-427e-b53e-e684bdb333cf_Go-Biz_20230812_185114.jpeg?auto=format', 46, 1, '2024-06-11 00:59:37', '2024-06-11 00:59:37'),
(44, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/96ef8b6a-30ac-4bac-bf04-42bd196862ea_Go-Biz_20230812_185131.jpeg?auto=format', 47, 1, '2024-06-11 00:59:53', '2024-06-11 00:59:53'),
(45, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/231ba66a-ce3e-42ee-a5ca-1a836e9b431c_Go-Biz_20230812_185551.jpeg?auto=format', 48, 1, '2024-06-11 01:04:50', '2024-06-11 01:04:50'),
(46, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/906733ee-fe33-40c6-8370-c4009afb6e76_Go-Biz_20230812_185604.jpeg?auto=format', 49, 1, '2024-06-11 01:05:06', '2024-06-11 01:05:06'),
(47, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/863ecd6b-e3bd-41c9-9f6a-c8150fe1f765_Go-Biz_20230812_185616.jpeg?auto=format', 50, 1, '2024-06-11 01:05:42', '2024-06-11 01:05:42'),
(48, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/61f1dc7f-ce44-425f-a646-e805a955639c_Go-Biz_20230812_185639.jpeg?auto=format', 51, 1, '2024-06-11 01:06:08', '2024-06-11 01:06:08'),
(49, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/850854f8-e15d-45e4-91bf-c5e1d193fc21_Go-Biz_20230812_185652.jpeg?auto=format', 52, 1, '2024-06-11 01:06:37', '2024-06-11 01:06:37'),
(50, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/b91d5045-c1a8-42a5-8455-6c56b364e227_Go-Biz_20230812_185704.jpeg?auto=format', 53, 1, '2024-06-11 01:06:57', '2024-06-11 01:06:57'),
(51, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/5df9c296-48cb-44e0-947a-cdd8d4386849_Go-Biz_20230812_185720.jpeg?auto=format', 54, 1, '2024-06-11 01:07:19', '2024-06-11 01:07:19'),
(52, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/6178ef32-e2f8-4b61-b265-d25a3088acd5_Go-Biz_20230812_213900.jpeg?auto=format', 55, 1, '2024-06-11 01:08:47', '2024-06-11 01:08:47'),
(53, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/c7349baf-683b-499c-9822-4c2202e15180_Go-Biz_20230812_213918.jpeg?auto=format', 56, 1, '2024-06-11 01:09:15', '2024-06-11 01:09:15'),
(54, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/25cd0481-3044-4dab-afb2-acf36ee7465a_Go-Biz_20230812_213940.jpeg?auto=format', 57, 1, '2024-06-11 01:09:37', '2024-06-11 01:09:37'),
(55, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/baec3db7-9db4-4f73-9dea-6f67b613803d_Go-Biz_20230812_213957.jpeg?auto=format', 58, 1, '2024-06-11 01:10:00', '2024-06-11 01:10:00'),
(56, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/b9c66b5c-9240-4dd2-861d-a1db9666ea80_Go-Biz_20230812_224717.jpeg?auto=format', 59, 1, '2024-06-11 01:11:39', '2024-06-11 01:11:39'),
(57, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/204d5b34-961c-47d5-947e-3cf1765ea6b5_Go-Biz_20230812_224739.jpeg?auto=format', 60, 1, '2024-06-11 01:11:55', '2024-06-11 01:11:55'),
(58, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/a9bdf4e2-0cc1-40a5-8fc3-b467a0221f9a_Go-Biz_20230812_224754.jpeg?auto=format', 61, 1, '2024-06-11 01:12:25', '2024-06-11 01:12:39'),
(59, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/e954634e-d4c7-436a-ada4-9afcc9d6ab45_Go-Biz_20230812_184638.jpeg?auto=format', 62, 1, '2024-06-11 01:14:00', '2024-06-11 01:14:00'),
(60, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/52faf793-4b6e-40bd-bce0-afd51fbe40a1_Go-Biz_20230812_184659.jpeg?auto=format', 63, 1, '2024-06-11 01:14:17', '2024-06-11 01:14:17'),
(61, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/aced42f6-ed36-4e5d-83be-606c980f6f97_Go-Biz_20230812_184716.jpeg?auto=format', 64, 1, '2024-06-11 01:14:35', '2024-06-11 01:14:35'),
(62, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/666c978f-780f-493a-8997-0f4e7d9010cd_Go-Biz_20230812_184731.jpeg?auto=format', 65, 1, '2024-06-11 01:15:03', '2024-06-11 01:15:03'),
(63, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/6fe27dd6-5427-4ee1-9013-d3a7bfc86690_Go-Biz_20230812_184746.jpeg?auto=format', 66, 1, '2024-06-11 01:15:23', '2024-06-11 01:15:23'),
(64, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/5f9f2cec-881f-4632-b09a-9c6deaec26da_Go-Biz_20230812_184803.jpeg?auto=format', 67, 1, '2024-06-11 01:15:46', '2024-06-11 01:15:46'),
(65, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/4bb7e9b1-c650-4531-8e4d-576523435238_Go-Biz_20230812_184845.jpeg?auto=format', 68, 1, '2024-06-11 01:16:02', '2024-06-11 01:16:02'),
(66, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/a74376c5-10b1-44e5-b320-3c45c72b124e_Go-Biz_20230812_232412.jpeg?auto=format', 69, 1, '2024-06-11 01:18:59', '2024-06-11 01:18:59'),
(67, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/88f8e127-4fce-49aa-a477-a5d887c0fa25_Go-Biz_20230812_232424.jpeg?auto=format', 70, 1, '2024-06-11 01:19:19', '2024-06-11 01:19:19'),
(68, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/24acc7c9-54cf-4c33-8345-8dbce6d8bc57_Go-Biz_20230812_232438.jpeg?auto=format', 71, 1, '2024-06-11 01:19:40', '2024-06-11 01:19:40'),
(69, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/f21ff30a-48cd-4eae-af8d-fcdf2cd5ff82_Go-Biz_20230812_204821.jpeg?auto=format', 72, 1, '2024-06-11 01:20:13', '2024-06-11 01:20:13'),
(70, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/f3c96500-d480-452f-af07-a141d3e810ef_Go-Biz_20230812_205233.jpeg?auto=format', 73, 1, '2024-06-11 01:20:35', '2024-06-11 01:20:35'),
(71, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/feb87c53-cdd2-4976-a1dc-a2ca29a8f35f_Go-Biz_20230812_231702.jpeg?auto=format', 74, 1, '2024-06-11 01:26:24', '2024-06-11 01:26:24'),
(72, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/7b64bdf8-933e-4db8-9c06-eeb417935f17_Go-Biz_20230812_231714.jpeg?auto=format', 75, 1, '2024-06-11 01:27:03', '2024-06-11 01:27:03'),
(73, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/146333dc-6dbc-4f7b-87e6-6d1a7eaf7c9d_Go-Biz_20230812_231729.jpeg?auto=format', 76, 1, '2024-06-11 01:27:31', '2024-06-11 01:27:31'),
(74, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/1b4cc8c8-536f-4626-9fee-31577512d573_Go-Biz_20230812_231745.jpeg?auto=format', 77, 1, '2024-06-11 01:28:18', '2024-06-11 01:28:18'),
(75, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/aa8a9125-bfa5-47d5-a55c-7f931c391500_Go-Biz_20230812_231811.jpeg?auto=format', 78, 1, '2024-06-11 01:28:45', '2024-06-11 01:28:45'),
(76, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/8354beeb-c51d-4c8f-81c6-535dba4f1941_Go-Biz_20230812_231826.jpeg?auto=format', 79, 1, '2024-06-11 01:29:11', '2024-06-11 01:29:11'),
(77, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/d8fadeb2-6850-4605-9a88-23ce690ab9b5_Go-Biz_20230812_231842.jpeg?auto=format', 80, 1, '2024-06-11 01:29:43', '2024-06-11 01:29:43'),
(79, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/1e20cdc0-33dd-49ac-b2f7-c700b57bfdf5_Go-Biz_20230813_011649.jpeg?auto=format', 81, 1, '2024-06-11 01:30:41', '2024-06-11 01:30:41'),
(80, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/66cd7136-7956-4332-8fd8-35f7c89551db_Go-Biz_20230813_011841.jpeg?auto=format', 82, 1, '2024-06-11 01:31:02', '2024-06-11 01:31:02'),
(81, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/7307a54a-32b3-48ea-8b44-f656946b9a36_Go-Biz_20230812_231628.jpeg?auto=format', 83, 1, '2024-06-11 01:31:25', '2024-06-11 01:31:25'),
(82, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/dc5d2a18-a6cb-49bd-b7b9-befc7d12284b_Go-Biz_20230812_231644.jpeg?auto=format', 84, 1, '2024-06-11 01:31:43', '2024-06-11 01:31:43'),
(83, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/4f430e14-bc76-42b3-9436-ee3abcf480a5_Go-Biz_20230812_233213.jpeg?auto=format', 85, 1, '2024-06-11 01:32:32', '2024-06-11 01:32:32'),
(84, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/8a8e0673-1706-438b-af68-eae670a89767_Go-Biz_20230812_233237.jpeg?auto=format', 86, 1, '2024-06-11 01:33:07', '2024-06-11 01:33:07'),
(85, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/5071c44e-6d08-47b7-8cb7-4ad1e931d225_Go-Biz_20230812_233249.jpeg?auto=format', 87, 1, '2024-06-11 01:33:34', '2024-06-11 01:33:34'),
(86, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/3f13d8e8-4cb0-40c7-9a92-8dab01903917_Go-Biz_20230812_233303.jpeg?auto=format', 88, 1, '2024-06-11 01:35:48', '2024-06-11 01:35:48'),
(87, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/a7c2ffe2-e266-4ea5-aafe-a7dbe66c7e92_28e7933a-4729-4c04-84c1-77aa5f4f0d00_Go-Biz_20191015_121903.jpeg?auto=format', 89, 1, '2024-06-11 01:36:31', '2024-06-11 01:36:31'),
(88, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/8a84e755-978e-492a-a053-0c6afaff73ef_78cc06df-4bed-4d34-8d7c-a5895bba60df_Go-Biz_20191115_005841.jpeg?auto=format', 90, 1, '2024-06-11 01:36:50', '2024-06-11 01:36:50'),
(89, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/20d7a879-1544-44ba-85b3-1c2797ee0475_3f089bfd-7bd1-440b-a190-f1daf9212a08_Go-Biz_20191115_005342.jpeg?auto=format', 91, 1, '2024-06-11 01:37:31', '2024-06-11 01:37:31'),
(90, 'https://i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/065dd146-7969-4879-b643-1f3afee4f99b_af3eb916-b549-4396-96eb-e6c2daf5d014_Go-Biz_20191115_005317.jpeg?auto=format', 92, 1, '2024-06-11 01:37:45', '2024-06-11 01:37:45');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('9V633FbC8N9bMnjeXc4hJ3wL82pzHcV1vjyhvid2', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiV0NzbUc5NmU1QWJGbUlNTXczT1RjcDRDZTVvdWs0blVYaEh1SUU4RiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi9wcm9kdWN0cyI7fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1718110957);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(100) NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@test.com', NULL, '$2y$12$6zduW3TYUbUdAZ8AX0h6gO0UyxaC4UEHFNNW/atfDGwz4//D1wT3m', 'user', NULL, '2024-06-06 02:52:49', '2024-06-06 02:52:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
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
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_product_category_id_index` (`product_category_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_index` (`product_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
