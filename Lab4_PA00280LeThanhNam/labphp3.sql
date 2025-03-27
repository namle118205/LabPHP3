-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 27, 2025 at 08:59 AM
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
-- Database: `labphp3`
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
-- Table structure for table `dienthoai`
--

CREATE TABLE `dienthoai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tenDT` varchar(30) NOT NULL,
  `moTa` varchar(1000) DEFAULT NULL,
  `ngayCapNhat` datetime NOT NULL,
  `gia` double NOT NULL,
  `giaKM` double NOT NULL DEFAULT 0,
  `urlHinh` varchar(200) DEFAULT NULL,
  `soLuongTonKho` int(11) NOT NULL DEFAULT 0,
  `hot` tinyint(1) NOT NULL DEFAULT 0,
  `anHien` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `baiViet` text DEFAULT NULL,
  `ghiChu` varchar(500) DEFAULT NULL,
  `idLoai` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dienthoai`
--

INSERT INTO `dienthoai` (`id`, `tenDT`, `moTa`, `ngayCapNhat`, `gia`, `giaKM`, `urlHinh`, `soLuongTonKho`, `hot`, `anHien`, `created_at`, `updated_at`, `baiViet`, `ghiChu`, `idLoai`) VALUES
(1, 'Nokia Pro pAE4P', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 273161, 71838, 'no-image.jpg', 42, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(2, 'Oppo XA PrP7w', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 798219, 337447, 'no-image.jpg', 72, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(3, 'iPhone XS Max zAwLG', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 687811, 507762, 'no-image.jpg', 85, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 1),
(4, 'Nokia Pro zVC9K', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 362398, 196441, 'no-image.jpg', 100, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(5, 'iPhone XS Max QSNjm', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 637116, 505875, 'no-image.jpg', 97, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(6, 'Oppo XA LBRwO', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 941590, 145329, 'no-image.jpg', 81, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(7, 'Nokia Pro VSNKG', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 329834, 228822, 'no-image.jpg', 33, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(8, 'Nokia Pro CThLQ', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 376770, 259824, 'no-image.jpg', 20, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(9, 'Oppo XA 72pPE', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 709912, 235430, 'no-image.jpg', 26, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(10, 'Nokia Pro aO6Bi', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 270244, 65710, 'no-image.jpg', 43, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(11, 'Oppo XA rdCju', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 895424, 174911, 'no-image.jpg', 15, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(12, 'Nokia Pro pKZ2H', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 338240, 186382, 'no-image.jpg', 100, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(13, 'Nokia Pro 6jU4X', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 284004, 40206, 'no-image.jpg', 15, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(14, 'Oppo XA WkjaC', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 945611, 528681, 'no-image.jpg', 51, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(15, 'Oppo XA gLBnU', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 878216, 330939, 'no-image.jpg', 69, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(16, 'Nokia Pro 7fWW0', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 292634, 146236, 'no-image.jpg', 37, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(17, 'iPhone XS Max UX5yF', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 776801, 354078, 'no-image.jpg', 49, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 1),
(18, 'Nokia Pro fcd4M', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 270761, 53374, 'no-image.jpg', 71, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(19, 'iPhone XS Max zXIu5', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 785591, 348808, 'no-image.jpg', 30, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 1),
(20, 'Nokia Pro SlGJQ', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 484190, 274315, 'no-image.jpg', 60, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(21, 'iPhone XS Max IR91v', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 787760, 172664, 'no-image.jpg', 93, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 1),
(22, 'Oppo XA qWUbk', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 775922, 178965, 'no-image.jpg', 56, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(23, 'Oppo XA 6adK9', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 823457, 546768, 'no-image.jpg', 41, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(24, 'Nokia Pro qFhLS', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 305465, 188307, 'no-image.jpg', 34, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(25, 'iPhone XS Max cYIAY', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 525653, 281646, 'no-image.jpg', 31, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(26, 'iPhone XS Max Qcqsm', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 563522, 170106, 'no-image.jpg', 18, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 3),
(27, 'Oppo XA IjPV7', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 945323, 152554, 'no-image.jpg', 21, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(28, 'Oppo XA 6OnB0', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 990565, 657707, 'no-image.jpg', 57, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(29, 'Nokia Pro 6j1PP', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 396609, 77717, 'no-image.jpg', 26, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(30, 'Nokia Pro bKT0w', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 292054, 13387, 'no-image.jpg', 56, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(31, 'iPhone XS Max bGTWY', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 512235, 196477, 'no-image.jpg', 19, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(32, 'iPhone XS Max abDXF', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 647924, 506311, 'no-image.jpg', 82, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 3),
(33, 'iPhone XS Max AGGfv', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 674943, 93666, 'no-image.jpg', 80, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 3),
(34, 'Oppo XA SEoui', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 827450, 449094, 'no-image.jpg', 55, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(35, 'Oppo XA lmnqr', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 728921, 145294, 'no-image.jpg', 69, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(36, 'Nokia Pro 8AfBn', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 466829, 263368, 'no-image.jpg', 55, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(37, 'iPhone XS Max snh8W', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 622700, 396471, 'no-image.jpg', 76, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 3),
(38, 'iPhone XS Max r0Y90', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 658196, 326806, 'no-image.jpg', 82, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 1),
(39, 'Oppo XA nM4EQ', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 752066, 125334, 'no-image.jpg', 45, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(40, 'iPhone XS Max ztPbs', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 529021, 30968, 'no-image.jpg', 44, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 3),
(41, 'Nokia Pro W2k2A', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 323769, 123032, 'no-image.jpg', 34, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(42, 'Oppo XA rH5Jm', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 896395, 584582, 'no-image.jpg', 33, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(43, 'Oppo XA e6gbt', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 722805, 299079, 'no-image.jpg', 99, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(44, 'Nokia Pro u4qYV', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 396343, 132112, 'no-image.jpg', 31, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(45, 'Oppo XA hJ7PM', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 955982, 846296, 'no-image.jpg', 90, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(46, 'Nokia Pro hFpoL', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 299569, 138995, 'no-image.jpg', 88, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(47, 'iPhone XS Max MJlcb', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 660193, 75093, 'no-image.jpg', 64, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 3),
(48, 'Nokia Pro FVZ93', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 343262, 105612, 'no-image.jpg', 55, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(49, 'Oppo XA pDXA0', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 879137, 128529, 'no-image.jpg', 65, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(50, 'Nokia Pro uywRC', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 478796, 318972, 'no-image.jpg', 39, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(51, 'Nokia Pro F7YCp', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 330372, 89173, 'no-image.jpg', 64, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(52, 'Oppo XA chKB7', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 971858, 294985, 'no-image.jpg', 90, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(53, 'Nokia Pro we2YD', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 399746, 174383, 'no-image.jpg', 79, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(54, 'Nokia Pro 7Obod', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 416592, 227350, 'no-image.jpg', 81, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(55, 'Oppo XA QH50S', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 896431, 665750, 'no-image.jpg', 55, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(56, 'Nokia Pro D2S83', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 343770, 144867, 'no-image.jpg', 62, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(57, 'Oppo XA wWVAU', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 828856, 193025, 'no-image.jpg', 66, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(58, 'Oppo XA Q4ZHv', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 999038, 474649, 'no-image.jpg', 46, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(59, 'Nokia Pro x2UMU', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 382978, 16369, 'no-image.jpg', 25, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(60, 'iPhone XS Max QXaJN', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 675342, 217806, 'no-image.jpg', 94, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(61, 'Nokia Pro hv4RW', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 427533, 133098, 'no-image.jpg', 46, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(62, 'iPhone XS Max ZkzGS', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 708443, 489519, 'no-image.jpg', 62, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 3),
(63, 'Oppo XA IvGCu', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 722885, 605932, 'no-image.jpg', 95, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(64, 'Nokia Pro 37sws', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 352217, 52116, 'no-image.jpg', 77, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(65, 'iPhone XS Max 7Cssk', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 631061, 60995, 'no-image.jpg', 19, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(66, 'iPhone XS Max 6S5Kf', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 657364, 365459, 'no-image.jpg', 37, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 3),
(67, 'Nokia Pro 46M3j', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 421944, 1268, 'no-image.jpg', 42, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(68, 'Nokia Pro hqgnK', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 333129, 34981, 'no-image.jpg', 18, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(69, 'Oppo XA YGosF', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 983199, 193646, 'no-image.jpg', 87, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(70, 'iPhone XS Max 9j2pc', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 775093, 498604, 'no-image.jpg', 70, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(71, 'Nokia Pro vfKCn', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 292260, 133839, 'no-image.jpg', 41, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(72, 'iPhone XS Max xgOUT', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 721201, 466746, 'no-image.jpg', 12, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 1),
(73, 'Oppo XA kjTeZ', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 953465, 833815, 'no-image.jpg', 11, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(74, 'Oppo XA TOie0', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 893544, 668150, 'no-image.jpg', 58, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(75, 'Oppo XA u6vo9', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 952784, 758265, 'no-image.jpg', 20, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(76, 'iPhone XS Max G5fj7', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 628288, 153510, 'no-image.jpg', 70, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(77, 'Nokia Pro BPw6N', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 369329, 56742, 'no-image.jpg', 83, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(78, 'Nokia Pro O91IB', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 330750, 16708, 'no-image.jpg', 94, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(79, 'Oppo XA TfyrT', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 971121, 763575, 'no-image.jpg', 47, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(80, 'Nokia Pro 1XjZH', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 286668, 110605, 'no-image.jpg', 40, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(81, 'Oppo XA BI1dv', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 786227, 345452, 'no-image.jpg', 45, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(82, 'iPhone XS Max NiCyv', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 501337, 127549, 'no-image.jpg', 14, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 1),
(83, 'Nokia Pro OzkVh', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 444282, 8266, 'no-image.jpg', 34, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(84, 'Oppo XA 2Zind', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 956471, 834293, 'no-image.jpg', 90, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(85, 'Oppo XA EP0DI', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 841195, 382020, 'no-image.jpg', 69, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(86, 'Nokia Pro OV0oe', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 309198, 7565, 'no-image.jpg', 35, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(87, 'Oppo XA nH1iM', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 762537, 51086, 'no-image.jpg', 76, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(88, 'Nokia Pro abuUD', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 451161, 46420, 'no-image.jpg', 67, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(89, 'iPhone XS Max Pvfed', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 572730, 756, 'no-image.jpg', 42, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 1),
(90, 'Oppo XA SD2q2', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 743584, 108498, 'no-image.jpg', 50, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(91, 'Oppo XA uSGgO', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 793059, 594029, 'no-image.jpg', 74, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(92, 'iPhone XS Max Fr8sn', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 739642, 221793, 'no-image.jpg', 47, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 1),
(93, 'Oppo XA bMqhU', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 809683, 144535, 'no-image.jpg', 71, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(94, 'Nokia Pro Pex9N', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 433433, 217223, 'no-image.jpg', 85, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(95, 'Nokia Pro AaxpD', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 340906, 107509, 'no-image.jpg', 31, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(96, 'Oppo XA vmRI4', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 706717, 376536, 'no-image.jpg', 28, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(97, 'Oppo XA lOFYK', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 727092, 116866, 'no-image.jpg', 78, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(98, 'Nokia Pro f5GLM', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 253361, 51816, 'no-image.jpg', 31, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(99, 'Nokia Pro iEK1U', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 252163, 145314, 'no-image.jpg', 64, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(100, 'iPhone XS Max POCvv', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 711161, 423760, 'no-image.jpg', 18, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 1),
(101, 'Oppo XA psf5g', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 780322, 289471, 'no-image.jpg', 84, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(102, 'iPhone XS Max enn1h', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 578944, 141621, 'no-image.jpg', 27, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 3),
(103, 'iPhone XS Max 3K4pn', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 744031, 369594, 'no-image.jpg', 77, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 3),
(104, 'Oppo XA Dfu5l', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 993565, 210895, 'no-image.jpg', 55, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(105, 'Oppo XA xupCV', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 965078, 68403, 'no-image.jpg', 87, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(106, 'iPhone XS Max NfcvM', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 523514, 325373, 'no-image.jpg', 52, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 1),
(107, 'Oppo XA 0PZxg', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 705415, 203848, 'no-image.jpg', 92, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(108, 'Nokia Pro JVB3s', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 329116, 92057, 'no-image.jpg', 71, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(109, 'Oppo XA 0CKSa', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 955772, 595129, 'no-image.jpg', 61, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(110, 'Oppo XA Vc3EE', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 740388, 631869, 'no-image.jpg', 15, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(111, 'iPhone XS Max OK6m9', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 613797, 363062, 'no-image.jpg', 42, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(112, 'Nokia Pro l7JPA', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 493842, 96965, 'no-image.jpg', 24, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(113, 'Nokia Pro BWcTg', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 291717, 125739, 'no-image.jpg', 13, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(114, 'Oppo XA 5nPCi', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 982199, 856159, 'no-image.jpg', 24, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(115, 'Oppo XA vPEpr', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 791804, 602660, 'no-image.jpg', 68, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(116, 'Oppo XA zepZX', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 990316, 622431, 'no-image.jpg', 50, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(117, 'Oppo XA zPuiI', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 855736, 425653, 'no-image.jpg', 68, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(118, 'Nokia Pro fcowG', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 290580, 160296, 'no-image.jpg', 34, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(119, 'iPhone XS Max 46SkS', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 741341, 596604, 'no-image.jpg', 66, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 1),
(120, 'iPhone XS Max ttPpc', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 790915, 607387, 'no-image.jpg', 44, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(121, 'Nokia Pro 11sWA', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 329416, 118812, 'no-image.jpg', 56, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(122, 'Oppo XA aZBy0', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 715276, 252258, 'no-image.jpg', 67, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(123, 'iPhone XS Max WuwwS', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 620711, 200560, 'no-image.jpg', 89, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(124, 'Oppo XA 59epv', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 910642, 483917, 'no-image.jpg', 84, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(125, 'iPhone XS Max n7JzA', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 603508, 269518, 'no-image.jpg', 64, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 3),
(126, 'Nokia Pro 6BGqv', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 496063, 213881, 'no-image.jpg', 27, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(127, 'Nokia Pro TlxHZ', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 278927, 43452, 'no-image.jpg', 70, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(128, 'iPhone XS Max SHInt', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 696043, 5909, 'no-image.jpg', 30, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 1),
(129, 'Nokia Pro WkNc3', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 454572, 14170, 'no-image.jpg', 39, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(130, 'iPhone XS Max C5Dnt', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 626793, 483912, 'no-image.jpg', 32, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(131, 'Oppo XA k2HHR', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 888046, 348189, 'no-image.jpg', 28, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(132, 'iPhone XS Max 9sFt4', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 577302, 113722, 'no-image.jpg', 84, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(133, 'iPhone XS Max nkDYq', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 722835, 425739, 'no-image.jpg', 53, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 3),
(134, 'Nokia Pro O1QNv', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 257533, 6026, 'no-image.jpg', 55, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(135, 'Oppo XA BTdgm', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 735992, 500002, 'no-image.jpg', 50, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(136, 'iPhone XS Max 0eRtw', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 545337, 347564, 'no-image.jpg', 88, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(137, 'Nokia Pro 0i4CJ', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 259241, 124593, 'no-image.jpg', 84, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(138, 'Nokia Pro gx3N7', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 388591, 255614, 'no-image.jpg', 24, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(139, 'Nokia Pro PQpWc', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 334973, 35195, 'no-image.jpg', 21, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(140, 'Oppo XA 1i9KL', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 947706, 775295, 'no-image.jpg', 12, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(141, 'Oppo XA xeiBZ', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 998185, 512793, 'no-image.jpg', 68, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(142, 'iPhone XS Max VvTfj', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 797625, 685893, 'no-image.jpg', 26, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 3),
(143, 'iPhone XS Max UA0ZV', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 618584, 77183, 'no-image.jpg', 93, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 1),
(144, 'Nokia Pro XW55e', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 383250, 3705, 'no-image.jpg', 75, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(145, 'Oppo XA tJ7WU', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 850710, 698138, 'no-image.jpg', 64, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(146, 'iPhone XS Max Rjb2Z', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 743963, 630113, 'no-image.jpg', 56, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 1),
(147, 'Nokia Pro z5L8d', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 393945, 29821, 'no-image.jpg', 69, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(148, 'Oppo XA uuXz5', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 884657, 388945, 'no-image.jpg', 13, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(149, 'Nokia Pro uXJZ5', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 442579, 76154, 'no-image.jpg', 76, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(150, 'Oppo XA JMzF0', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 716176, 97030, 'no-image.jpg', 25, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(151, 'iPhone XS Max VtsjC', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 710002, 181659, 'no-image.jpg', 55, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(152, 'Nokia Pro GUe1a', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 471358, 69596, 'no-image.jpg', 76, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(153, 'Oppo XA 3GEzO', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 805405, 169705, 'no-image.jpg', 67, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(154, 'iPhone XS Max em6SQ', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 794098, 515770, 'no-image.jpg', 72, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 3),
(155, 'iPhone XS Max dNeQB', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 636452, 281516, 'no-image.jpg', 75, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(156, 'Oppo XA wpjVm', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 728949, 100217, 'no-image.jpg', 48, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(157, 'Nokia Pro nwxhc', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 418147, 38570, 'no-image.jpg', 27, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(158, 'Oppo XA e3iBK', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 882547, 245002, 'no-image.jpg', 92, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(159, 'Oppo XA Lj7Nj', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 922616, 433089, 'no-image.jpg', 98, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(160, 'iPhone XS Max NeUig', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 690344, 441939, 'no-image.jpg', 86, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 3),
(161, 'iPhone XS Max bL8Q2', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 606891, 185036, 'no-image.jpg', 18, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 3),
(162, 'iPhone XS Max dZgqC', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 530775, 82505, 'no-image.jpg', 79, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(163, 'Nokia Pro tuPgt', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 427403, 214842, 'no-image.jpg', 19, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(164, 'Nokia Pro P5vnM', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 467357, 207121, 'no-image.jpg', 76, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(165, 'Oppo XA Jd2QB', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 896954, 172714, 'no-image.jpg', 56, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(166, 'Oppo XA xNRZS', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 864915, 327993, 'no-image.jpg', 62, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(167, 'Oppo XA 6Dbs4', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 724261, 206342, 'no-image.jpg', 17, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(168, 'Nokia Pro LPK0Y', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 426387, 196330, 'no-image.jpg', 74, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(169, 'iPhone XS Max Biv0Q', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 758574, 396124, 'no-image.jpg', 85, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(170, 'Nokia Pro Ww8ZP', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 318096, 31748, 'no-image.jpg', 13, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(171, 'iPhone XS Max kmPYE', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 566652, 321107, 'no-image.jpg', 20, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 1),
(172, 'Nokia Pro kVzmv', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 334754, 174733, 'no-image.jpg', 56, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(173, 'Nokia Pro PdGL6', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 467293, 328103, 'no-image.jpg', 47, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(174, 'Nokia Pro KZT0g', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 402454, 143491, 'no-image.jpg', 83, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(175, 'iPhone XS Max l91YM', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 716689, 434748, 'no-image.jpg', 27, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 1),
(176, 'iPhone XS Max UGFwY', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 534252, 236989, 'no-image.jpg', 44, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(177, 'iPhone XS Max mpmom', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 529140, 317052, 'no-image.jpg', 75, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(178, 'iPhone XS Max 0g18Q', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 522219, 183135, 'no-image.jpg', 97, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 3),
(179, 'iPhone XS Max n9pgG', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 559518, 363235, 'no-image.jpg', 76, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 1),
(180, 'Nokia Pro 1PnQm', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 403900, 220297, 'no-image.jpg', 76, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(181, 'iPhone XS Max TxAc0', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 529817, 313047, 'no-image.jpg', 94, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(182, 'iPhone XS Max SEXxn', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 509918, 116185, 'no-image.jpg', 13, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 3),
(183, 'Nokia Pro rKzgY', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 285223, 13011, 'no-image.jpg', 56, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(184, 'Oppo XA JKVs5', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 822486, 43197, 'no-image.jpg', 55, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(185, 'Nokia Pro XMY9s', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 272242, 4146, 'no-image.jpg', 53, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(186, 'Oppo XA ljikZ', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 838585, 199914, 'no-image.jpg', 73, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(187, 'Oppo XA FY585', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 717993, 65155, 'no-image.jpg', 52, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(188, 'Oppo XA QybK2', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 955199, 53973, 'no-image.jpg', 61, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(189, 'Nokia Pro edBT7', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 262563, 88835, 'no-image.jpg', 29, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(190, 'Nokia Pro A8qgJ', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 296197, 189090, 'no-image.jpg', 50, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(191, 'Oppo XA vIiTZ', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 703272, 219076, 'no-image.jpg', 99, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(192, 'Nokia Pro jKyrN', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 499389, 265109, 'no-image.jpg', 13, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(193, 'Oppo XA nhHac', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 757128, 132894, 'no-image.jpg', 89, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(194, 'Oppo XA 8aBH2', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 965413, 462113, 'no-image.jpg', 55, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(195, 'iPhone XS Max JGLHp', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 574927, 44871, 'no-image.jpg', 11, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(196, 'Nokia Pro 3KAbR', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 279082, 19708, 'no-image.jpg', 31, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(197, 'iPhone XS Max CwrdN', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 760982, 209262, 'no-image.jpg', 28, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(198, 'Nokia Pro lMnLK', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 387502, 39548, 'no-image.jpg', 11, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(199, 'Nokia Pro szLoZ', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 263798, 16274, 'no-image.jpg', 87, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(200, 'Nokia Pro ZYMIq', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 467240, 126686, 'no-image.jpg', 16, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(201, 'Nokia Pro fx72a', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 344748, 29720, 'no-image.jpg', 21, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(202, 'iPhone XS Max TMz6f', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 558690, 247736, 'no-image.jpg', 40, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 1),
(203, 'Oppo XA LSDwK', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 875796, 693164, 'no-image.jpg', 15, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(204, 'Oppo XA i27Vo', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 804135, 101290, 'no-image.jpg', 11, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(205, 'Nokia Pro ZOmkt', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 317952, 91501, 'no-image.jpg', 75, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(206, 'iPhone XS Max 4fYHm', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 519888, 323035, 'no-image.jpg', 15, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(207, 'Oppo XA pAiO8', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 967423, 294915, 'no-image.jpg', 29, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(208, 'Nokia Pro kvohb', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 308266, 149289, 'no-image.jpg', 20, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(209, 'iPhone XS Max E0CjF', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 768248, 313293, 'no-image.jpg', 36, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 3),
(210, 'Oppo XA lXMDk', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 705695, 356098, 'no-image.jpg', 38, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(211, 'iPhone XS Max isVPL', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 695753, 492400, 'no-image.jpg', 100, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 1),
(212, 'iPhone XS Max Wzg4P', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 667258, 45850, 'no-image.jpg', 59, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 3),
(213, 'Oppo XA dmQSO', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 917556, 603986, 'no-image.jpg', 84, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(214, 'iPhone XS Max Nap9X', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 742310, 251441, 'no-image.jpg', 76, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 3),
(215, 'Oppo XA HpxJr', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 946219, 346061, 'no-image.jpg', 54, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(216, 'iPhone XS Max MOC9c', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 795003, 677712, 'no-image.jpg', 42, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 3),
(217, 'Oppo XA kbJAH', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 791703, 1841, 'no-image.jpg', 32, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(218, 'iPhone XS Max k4jo1', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 665789, 183447, 'no-image.jpg', 17, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 1),
(219, 'Oppo XA 4kabL', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 850861, 248133, 'no-image.jpg', 98, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(220, 'Nokia Pro 2Q6Q2', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 456655, 90578, 'no-image.jpg', 15, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(221, 'Oppo XA w02WV', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 710979, 191170, 'no-image.jpg', 88, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(222, 'iPhone XS Max bNCg8', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 619903, 187142, 'no-image.jpg', 93, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(223, 'Oppo XA 0NJ3k', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 972087, 111650, 'no-image.jpg', 83, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(224, 'Nokia Pro Pw6ZR', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 345999, 156849, 'no-image.jpg', 68, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(225, 'iPhone XS Max NNpKy', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 673640, 458465, 'no-image.jpg', 34, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(226, 'Nokia Pro xdkLH', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 367017, 29704, 'no-image.jpg', 96, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(227, 'Oppo XA RGJpr', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 914062, 120005, 'no-image.jpg', 27, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(228, 'iPhone XS Max e94Ho', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 675085, 476295, 'no-image.jpg', 63, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(229, 'Nokia Pro fBUae', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 373038, 270324, 'no-image.jpg', 33, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(230, 'Nokia Pro 58MKT', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 269180, 108728, 'no-image.jpg', 74, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(231, 'Oppo XA 5DML6', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 852529, 148834, 'no-image.jpg', 34, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(232, 'Oppo XA DQRdN', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 952582, 625299, 'no-image.jpg', 49, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(233, 'iPhone XS Max TfNpG', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 504862, 273457, 'no-image.jpg', 77, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(234, 'Nokia Pro Q1hx9', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 350642, 221683, 'no-image.jpg', 94, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(235, 'Nokia Pro 9jaLf', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 369972, 196963, 'no-image.jpg', 78, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(236, 'Oppo XA 4Roel', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 808362, 382699, 'no-image.jpg', 96, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(237, 'iPhone XS Max 8m4O3', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 502391, 163061, 'no-image.jpg', 55, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(238, 'Nokia Pro ZFRZZ', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 446623, 243815, 'no-image.jpg', 73, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(239, 'Oppo XA A5J80', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 867731, 297082, 'no-image.jpg', 64, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(240, 'iPhone XS Max p5cO2', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 595117, 429249, 'no-image.jpg', 85, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 3),
(241, 'Nokia Pro a0uHC', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 298149, 171853, 'no-image.jpg', 27, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(242, 'iPhone XS Max uDJjR', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 614367, 112100, 'no-image.jpg', 18, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(243, 'Oppo XA 4VKpy', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 762162, 346388, 'no-image.jpg', 79, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(244, 'Oppo XA C69Uu', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 920270, 588778, 'no-image.jpg', 91, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(245, 'iPhone XS Max sBuNH', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 533277, 26926, 'no-image.jpg', 12, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(246, 'Oppo XA KgfBg', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 932460, 118581, 'no-image.jpg', 23, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(247, 'iPhone XS Max gqzaV', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 793946, 619495, 'no-image.jpg', 82, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 1),
(248, 'iPhone XS Max RXfJV', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 648226, 269275, 'no-image.jpg', 94, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(249, 'iPhone XS Max iZFJE', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 567686, 216035, 'no-image.jpg', 65, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(250, 'Oppo XA hB7XK', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 889430, 603745, 'no-image.jpg', 31, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(251, 'iPhone XS Max 1cCdw', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 742867, 471642, 'no-image.jpg', 26, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 1),
(252, 'Oppo XA Oa5QQ', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 942435, 153745, 'no-image.jpg', 55, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(253, 'iPhone XS Max aACGW', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 780948, 559288, 'no-image.jpg', 77, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 3),
(254, 'Oppo XA YvlN2', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 930349, 465619, 'no-image.jpg', 20, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(255, 'Nokia Pro epvVR', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 359460, 133865, 'no-image.jpg', 79, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(256, 'Oppo XA KPUFR', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 935193, 308336, 'no-image.jpg', 97, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2);
INSERT INTO `dienthoai` (`id`, `tenDT`, `moTa`, `ngayCapNhat`, `gia`, `giaKM`, `urlHinh`, `soLuongTonKho`, `hot`, `anHien`, `created_at`, `updated_at`, `baiViet`, `ghiChu`, `idLoai`) VALUES
(257, 'iPhone XS Max 9fe4z', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 506802, 277544, 'no-image.jpg', 91, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(258, 'Nokia Pro GdZBf', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 273882, 120190, 'no-image.jpg', 48, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(259, 'iPhone XS Max jCwfF', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 798490, 17984, 'no-image.jpg', 93, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(260, 'Oppo XA BPJJq', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 783431, 465204, 'no-image.jpg', 93, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(261, 'Nokia Pro 9Uuc6', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 462001, 282667, 'no-image.jpg', 91, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(262, 'iPhone XS Max uMwQV', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 631106, 400751, 'no-image.jpg', 77, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 1),
(263, 'Oppo XA yi8Pr', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 864869, 654018, 'no-image.jpg', 10, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(264, 'Nokia Pro ibuN1', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 407685, 134722, 'no-image.jpg', 32, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(265, 'iPhone XS Max BTA0z', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 630307, 493140, 'no-image.jpg', 65, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(266, 'Nokia Pro OmJTJ', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 464793, 39093, 'no-image.jpg', 73, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(267, 'Nokia Pro mL8Me', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 277087, 164183, 'no-image.jpg', 60, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(268, 'Nokia Pro P4DLM', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 470841, 107333, 'no-image.jpg', 55, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 2),
(269, 'iPhone XS Max FqFxY', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 557309, 72088, 'no-image.jpg', 10, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 3),
(270, 'iPhone XS Max 3e2iA', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 682284, 285375, 'no-image.jpg', 38, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 3),
(271, 'Oppo XA GZf4M', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 910231, 326026, 'no-image.jpg', 92, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(272, 'Nokia Pro hNsom', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 481138, 274279, 'no-image.jpg', 11, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(273, 'Nokia Pro ZDCYa', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 444382, 67381, 'no-image.jpg', 76, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(274, 'Oppo XA MoXet', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 871468, 715392, 'no-image.jpg', 12, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(275, 'iPhone XS Max 7iiH0', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 668010, 207232, 'no-image.jpg', 16, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 3),
(276, 'Oppo XA 5fetX', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 784503, 663971, 'no-image.jpg', 12, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(277, 'iPhone XS Max Njpys', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 530053, 387130, 'no-image.jpg', 34, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(278, 'Oppo XA Atcpu', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 932022, 381329, 'no-image.jpg', 73, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(279, 'Nokia Pro 6eM5A', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 305608, 6413, 'no-image.jpg', 29, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(280, 'Oppo XA ZfYcO', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 899530, 288660, 'no-image.jpg', 10, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(281, 'Nokia Pro xJncM', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 399332, 290785, 'no-image.jpg', 33, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(282, 'Oppo XA zmqVy', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 729923, 576338, 'no-image.jpg', 33, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(283, 'Oppo XA gEBr4', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 862711, 638327, 'no-image.jpg', 48, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(284, 'Oppo XA slgYu', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 892632, 612127, 'no-image.jpg', 95, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(285, 'iPhone XS Max ZZ765', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 587827, 334176, 'no-image.jpg', 46, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(286, 'Nokia Pro tUto5', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 412372, 39143, 'no-image.jpg', 62, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(287, 'Oppo XA IeTMr', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 760514, 489803, 'no-image.jpg', 40, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(288, 'Oppo XA zOMyX', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 729937, 469934, 'no-image.jpg', 60, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(289, 'Oppo XA 6uroI', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 878297, 757376, 'no-image.jpg', 19, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(290, 'iPhone XS Max USDwk', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 564780, 50611, 'no-image.jpg', 34, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(291, 'Oppo XA VuZ5L', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 743690, 435863, 'no-image.jpg', 90, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 3),
(292, 'Nokia Pro xpfPi', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 264348, 77138, 'no-image.jpg', 18, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(293, 'iPhone XS Max pKUor', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 714047, 44450, 'no-image.jpg', 95, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(294, 'iPhone XS Max azKwX', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 555388, 26265, 'no-image.jpg', 61, 1, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 2),
(295, 'Nokia Pro cHre0', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 437797, 36336, 'no-image.jpg', 90, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1),
(296, 'Oppo XA 57KDK', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 911831, 645380, 'no-image.jpg', 34, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 1),
(297, 'Oppo XA yIsba', 'Mô tả sản phẩm Oppo XA', '2025-03-27 02:27:52', 740096, 547899, 'no-image.jpg', 40, 0, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Oppo XA', 'Ghi chú Oppo XA', 2),
(298, 'iPhone XS Max 4eDhj', 'Mô tả sản phẩm iPhone XS Max', '2025-03-27 02:27:52', 653603, 516095, 'no-image.jpg', 17, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm iPhone XS Max', 'Ghi chú iPhone XS Max', 3),
(299, 'Nokia Pro 9l6c5', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 448335, 51426, 'no-image.jpg', 23, 0, 1, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 3),
(300, 'Nokia Pro S74jf', 'Mô tả sản phẩm Nokia Pro', '2025-03-27 02:27:52', 371254, 104958, 'no-image.jpg', 91, 1, 0, NULL, NULL, 'Chi tiết bài viết sản phẩm Nokia Pro', 'Ghi chú Nokia Pro', 1);

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
-- Table structure for table `loaisp`
--

CREATE TABLE `loaisp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tenLoai` varchar(30) NOT NULL,
  `thuTu` int(11) NOT NULL DEFAULT 0,
  `anHien` tinyint(1) NOT NULL DEFAULT 1,
  `urlHinh` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loaisp`
--

INSERT INTO `loaisp` (`id`, `tenLoai`, `thuTu`, `anHien`, `urlHinh`, `created_at`, `updated_at`) VALUES
(1, 'Điện thoại', 1, 1, 'dienthoai.jpg', NULL, NULL),
(2, 'Máy tính bảng', 2, 1, 'maytinhbang.jpg', NULL, NULL),
(3, 'Phụ kiện', 3, 1, 'phukien.jpg', NULL, NULL);

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
(5, '0001_01_01_000000_create_users_table', 1),
(6, '0001_01_01_000001_create_cache_table', 1),
(7, '0001_01_01_000002_create_jobs_table', 1),
(8, '2025_03_16_154738_create_tins_table', 1),
(9, '2025_03_26_181924_create_dienthoai_table', 2),
(10, '2025_03_26_181925_create_thanhvien_table', 2),
(11, '2025_03_26_181926_create_loaisp_table', 2),
(12, '2025_03_27_021841_update_dienthoai_table', 2);

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
('zjcEVBajZQvBYuZUuia6Bk9aZfq508qUvlf7cjSW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36 Edg/134.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTUpMQ2RKQnJqM1Z6ZlJPb3pNTnhLVHdNWE9sUTduTkZqYk12RjVZeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1742621085);

-- --------------------------------------------------------

--
-- Table structure for table `thanhvien`
--

CREATE TABLE `thanhvien` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hoTen` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `randomKey` varchar(100) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `idGroup` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thanhvien`
--

INSERT INTO `thanhvien` (`id`, `hoTen`, `password`, `email`, `randomKey`, `active`, `idGroup`, `created_at`, `updated_at`) VALUES
(1, 'Trần Thị Duy', '$2y$12$m53vxE4dg7OLVp0FogM3juUOTA9qYobVLHUlmlPh7/6HZLE8QRsRS', 'xvP9KtzN@gmail.com', 'tpmkFb6NCi', 0, 0, NULL, NULL),
(2, 'Nguyễn Minh Anh', '$2y$12$IcMVkc2PemZFeS728d8LB.jQWKwjUaxrptcbaExJX8LH0c.YgGzVe', 'iFbjEdHy@gmail.com', 'VvTIrtwU7x', 1, 0, NULL, NULL),
(3, 'Trần Thị Hải', '$2y$12$Z8C9W3Jo/MNWrQ5vHFxOSOpDp4LZ6nQK1JGGktbhSuUE16BDW/3p.', 'lRe8PBsg@gmail.com', 'zIpPvwrhJb', 0, 0, NULL, NULL),
(4, 'Phạm Hữu Hưng', '$2y$12$7VkeTagOEC3xasVd16Tqsu2aoRVZwDP5GIcAbo.JCuTAWEbKkQiT.', 'soZ7vVoT@gmail.com', 'ef1ZFYQAkq', 1, 0, NULL, NULL),
(5, 'Hoàng Hữu Hưng', '$2y$12$CvSwpp9KTQ9dzMtEcyGFQep9BB45yfAndc.jVrk7lwxb9QMcCjus6', '6YSQEeO9@gmail.com', 'kF50ckwQbw', 0, 0, NULL, NULL),
(6, 'Trần Thị Duy', '$2y$12$D2nZxqzsQkTm0gT//WYYHunYSH6FtapIuv/i7gLUNn9wYNV2oVfxu', 'Frnz2qDF@gmail.com', 'R4CSaSZIh5', 1, 1, NULL, NULL),
(7, 'Nguyễn Quang Duy', '$2y$12$9uCPztc19Y6abZuFJ4hkIedb/geDoGRQps/4MGcESThv3yD9NizIq', 'cPF9TZH8@gmail.com', 'Y1FOilYakg', 1, 1, NULL, NULL),
(8, 'Trần Minh Linh', '$2y$12$dyfoVWEr5oKuA..QKz.f8uD91JGZ0AMz3cMAdwgFb8zjhaqRjqjsC', 'bbWaaNxa@gmail.com', 'eONZZY4I4I', 0, 1, NULL, NULL),
(9, 'Hoàng Văn Anh', '$2y$12$WSpiIcg9PtOZ7MRClKyJteP6nEYiedixEarZJ5uUG0Xln5z8m.EWK', '0xHrHouK@gmail.com', 'PsTyifjIUz', 0, 1, NULL, NULL),
(10, 'Hoàng Thị Anh', '$2y$12$/sY7JLrPYm11xYSpifW1N.ZCiQ0gEbHu7lC8yUkrEqQd0X8rRn0Ea', 'LcxPJME3@gmail.com', 'S2PXHTfr7k', 1, 0, NULL, NULL),
(11, 'Nguyễn Thị Hải', '$2y$12$uqKwVJnni7lN1O/S5gWebu.KQ8AYKRbUPGkt0.KOgo6tb3ifVBeme', 'zK0lSxF1@gmail.com', 'K008xwPp8S', 0, 0, NULL, NULL),
(12, 'Hoàng Hữu Anh', '$2y$12$L4xaJ3mza8UnjUyCXdiccujSOtz6WHQEXnAwycuA0utsl9f/2p67K', '1MvBk9R7@gmail.com', 'xVtVvrxG5G', 0, 0, NULL, NULL),
(13, 'Nguyễn Thị Hưng', '$2y$12$BwF/XXEO/pGNGnGAWEcdq.5Uehv9CG.fXYjIheVIvxtg8juw90I6i', 'ViTBFZJ9@gmail.com', 'LNtqelSWKF', 0, 1, NULL, NULL),
(14, 'Hoàng Quang Hưng', '$2y$12$68StlPlUtKtdgRZpNPUQnuOmF0Li4IOIfKAhXWzlvhKI6OIQvXl3q', 'MoI2gMmf@gmail.com', 'hgeebqhVOl', 0, 1, NULL, NULL),
(15, 'Lê Thị Anh', '$2y$12$o7cSFDbwzyAi/86H8bHAfenGKkRjyS1lCetq.Ge1QV0CxRIs4JQIC', '1vqNsss2@gmail.com', 'lkMXGEZYU5', 1, 0, NULL, NULL),
(16, 'Phạm Thị Linh', '$2y$12$8G3MYWX4X0jTSryyYLdMtORhomLMyaN1GYO27Jp4wqTRgQ1eU8NbC', 'ipET5IZl@gmail.com', 'oi2vWq27xb', 1, 0, NULL, NULL),
(17, 'Phạm Quang Hưng', '$2y$12$aQRL20ybW8XT1B0Qb.RSxuC/6AUBWE6gqnBZt8F7SS4/93DPv/Nfq', 'clUtyASj@gmail.com', 'l4cVOo5Oin', 0, 0, NULL, NULL),
(18, 'Nguyễn Quang Duy', '$2y$12$BdwQ3IYrhVGTvPWe4KajR.sqqxVhuhXDVmq4ZmklGrmGO5eIcoFYS', '2HeSSDFd@gmail.com', 'uvo7ToxwIx', 1, 1, NULL, NULL),
(19, 'Trần Quang Linh', '$2y$12$7hunvIgUbE/R6PX6SgfIOucCNoCOlNDWcuPUDV/qddPTFwiYygMRO', 'SFwe63Ot@gmail.com', 'ZTnZUMKX9i', 1, 0, NULL, NULL),
(20, 'Trần Quang Anh', '$2y$12$fSsH/X2jd2r9NWoxW3rim.y9W74jDIaDBazRGXFV2ju02rAS325ly', '4w0KccpQ@gmail.com', 'E7k9Z1shpP', 1, 0, NULL, NULL),
(21, 'Trần Thị Hải', '$2y$12$2GRQ9pM9uBdiOVdy0i2xGOkOuUmSSHWkvbDRf52qYNSHNqO9R7cIe', 'XlaLgTpI@gmail.com', 'LorXeHsWBE', 0, 0, NULL, NULL),
(22, 'Nguyễn Quang Hưng', '$2y$12$aYPF.wVBaZFbRMVFOYd4GefogoWIIMdoaT00DhzaxUmJidGsceKrq', 'X4BGbtFF@gmail.com', 'Q2QwdL5loL', 1, 0, NULL, NULL),
(23, 'Nguyễn Quang Hưng', '$2y$12$bCg.kbEjyrIwytvoQZAQBOmcyU6MxQEJthvwyS0uIvd0Ks2oTksOq', 'iqbZk7Fk@gmail.com', 'OFmGq9Y048', 1, 0, NULL, NULL),
(24, 'Phạm Văn Duy', '$2y$12$H/TU/AWlbVTxbDR9d5tupeez38vvr.bWnXcLkLo3d6oD0UjU35jkO', 'WI1vXuUi@gmail.com', 'OCozXiIffy', 1, 1, NULL, NULL),
(25, 'Hoàng Văn Linh', '$2y$12$TgSRvVocJbgSvR2cH1jxeu8r02axFIP.4Tsk.9TZCQ4K.TjVUMp12', 'v3BAW5tE@gmail.com', 'SeVek5hAwV', 0, 1, NULL, NULL),
(26, 'Phạm Minh Duy', '$2y$12$XePj9WENkyptK/Fz8FiPtun9LPMBcFwaIDyPXL7mcCQeo51ILKReW', 'Y3H2opTn@gmail.com', 'X5y3PGVdHd', 0, 1, NULL, NULL),
(27, 'Lê Minh Hải', '$2y$12$RO1OKE8MoPhSKnsaArFeVuPy/jbcvFMh41hjZ.Xv0QWN.Vvj/sKOO', 'fwWHBWLX@gmail.com', 'zNbLPHQdVj', 1, 0, NULL, NULL),
(28, 'Phạm Văn Duy', '$2y$12$Yi/4ofl0zInuhlX9RuK1fewXN3P39iEcxTXCBXXeuc07J01YujiOq', 'OjuJe61X@gmail.com', 'StQP4HY0d5', 0, 1, NULL, NULL),
(29, 'Phạm Quang Hải', '$2y$12$D92ot4fPZCS6S0rmVwNJG..Zy70AhB8A.HAEq611hZncvJMcGp4cS', 'rtZbRVoO@gmail.com', '5z1dWre17G', 0, 0, NULL, NULL),
(30, 'Hoàng Minh Hưng', '$2y$12$NTiQ5LquDmm7OBydQpDmW.J4u4Mzo63xTTAq4d/XG0J82SgkeT1J2', 'FCWDc87l@gmail.com', '8fFhKNpx52', 0, 0, NULL, NULL),
(31, 'Lê Văn Duy', '$2y$12$JSVo1.hsedRAI37UwYy4AullbI1.X3nCHyS15CWJd.kqJJkYt7eO6', '0zJskPqv@gmail.com', 'HyARDM7U9i', 0, 1, NULL, NULL),
(32, 'Nguyễn Hữu Duy', '$2y$12$O6mdBAe.NXfvxhu/d/ZKs.tmS54DGr9XSYpmrFMkJ9mHdb.gAo7fq', 'ZXuURQPc@gmail.com', 'tYbY3d8mGH', 1, 1, NULL, NULL),
(33, 'Phạm Hữu Hưng', '$2y$12$6HMfQDAw7vJ.xWfQOKwqt.t9C6326eQPvhLIP9oUYsgDR2IrB19T6', 'jO40kERY@gmail.com', '7AIUFfrXrW', 1, 1, NULL, NULL),
(34, 'Lê Hữu Linh', '$2y$12$7aszJniO9fky1yiUZfeQ1e6HCxRASGdXmGBD.NfJxcgVZlF2mHkGG', 'rVBM7KYJ@gmail.com', 'cVkHlUIa2U', 1, 1, NULL, NULL),
(35, 'Hoàng Minh Linh', '$2y$12$/R015J01a8M1m8Wt/rUe5e3AedVrpExOx6ISpavMiM/ruqLp74nn.', 'l1Vmjaun@gmail.com', 'SdI8V5X0o3', 1, 1, NULL, NULL),
(36, 'Hoàng Minh Hưng', '$2y$12$j/J8Qa3DfUnA3lSd9pHveu8UPZjhsfgsVpRF4fmZjG2w4QDFx9PRK', 'hbWzLQXL@gmail.com', 'YUeDUEavNk', 0, 0, NULL, NULL),
(37, 'Lê Quang Anh', '$2y$12$clLtGDgWujPzIBYe9XCAtupwhyiE70RGmcqKhaf6X4jH5iwbwCOvu', 'WUt3fgUM@gmail.com', '5p8jRKX1f5', 1, 0, NULL, NULL),
(38, 'Lê Minh Linh', '$2y$12$GhjSasgkPtnFT3Vb96Pnr.CgoOmQvTqb/WCiLSQ173onm/Yad4Yq6', 'uXqCSEjO@gmail.com', 'qS5roYNCgw', 1, 1, NULL, NULL),
(39, 'Nguyễn Thị Linh', '$2y$12$x7eSYlXt/68rvr.UJZjlP.Tt7jskk3bf20LGIftVvhCNKTteZN17.', 'zhigzP9G@gmail.com', 'h4qYdNsahf', 1, 0, NULL, NULL),
(40, 'Hoàng Văn Linh', '$2y$12$wLrFupvj8mfO.Egl1vprtOGmyaDG7spE4XLUXJqzD76RLi1nikSO2', 'cDGgfLez@gmail.com', 'X1LNIItqtn', 0, 0, NULL, NULL),
(41, 'Hoàng Văn Linh', '$2y$12$TDEdJFzBVk72AzsC3NnKHOHS0GouNF38u1mgK2Zi90jnzJNhARxwi', 'jXa8czER@gmail.com', 'P0gBFA52gY', 0, 1, NULL, NULL),
(42, 'Lê Minh Hưng', '$2y$12$lwQpzVQwb79gWH1gUROxl.vAXMa/luF6DL0Q8D9706E9qECTm9e2.', 'HlQePjHA@gmail.com', '56xEzQzq2y', 1, 0, NULL, NULL),
(43, 'Phạm Thị Duy', '$2y$12$Pq9/WnB9vmjGvlhu.ed3COz3h5MDtQiuCS/qfjRb6WR7e3DoX.RGC', '4QqBiE3Z@gmail.com', '22maLyDLzO', 1, 0, NULL, NULL),
(44, 'Lê Văn Linh', '$2y$12$dq/mBOt73rX4/WKdGnkzqeLaYrEzj9nXmwUfABDnEOERgkMSCozby', 'CaIWWlnL@gmail.com', 'dBPz651AlF', 1, 0, NULL, NULL),
(45, 'Hoàng Quang Hưng', '$2y$12$FUuP4GUvgOp4JzvQ6Q2F9uZksaXZ/CWSp0GPnGtutbCk6B3V5W7BC', 'BUyKwPMH@gmail.com', '8haX7pGUKa', 1, 0, NULL, NULL),
(46, 'Lê Minh Linh', '$2y$12$LeNIZDawnqe8KE4wXSP1ruhYM84yYx53AzfM5kHWBPsgW1WhQlYoK', 'PK6NYzFf@gmail.com', 'dRafIoIzlB', 0, 0, NULL, NULL),
(47, 'Trần Quang Hải', '$2y$12$062H3kQDrprDkxjtT3AvzuYBoNBgdFw0p8EQdtwUOtXJ45A.Owx2y', 'a0Ooo1tO@gmail.com', '8xmT5iLMsC', 1, 1, NULL, NULL),
(48, 'Lê Quang Hưng', '$2y$12$ik87BBVk4BBisj20YglUre2xUXuU1Gko2mzjpmZLjoJ5Q42ShpFzK', 'YOpSTLo0@gmail.com', 'e0mMeN8c8d', 0, 0, NULL, NULL),
(49, 'Hoàng Quang Hưng', '$2y$12$pT4el7p4GC3Fn4fHMtH5..al3n3TAoZHZxa1WtLRUg4iauuQ1.FWW', 'gTuDrTqm@gmail.com', 'GXRnwArYih', 0, 1, NULL, NULL),
(50, 'Phạm Văn Anh', '$2y$12$bTGW.qiGJGp1Web/pa6X/OL8kPvlgebcTjWRX8h8Pg8zaOtHZzP4.', 'MAu5LZlA@gmail.com', '3aIX4f2pkO', 1, 1, NULL, NULL),
(51, 'Hoàng Minh Linh', '$2y$12$GweHU2HuuJk47KE2mG3Nbuk2w1a2b6sYE49a6oqiXKNGUIuVz5n/q', 'phP7mqcN@gmail.com', 'jclnYwrvYO', 1, 0, NULL, NULL),
(52, 'Phạm Minh Hưng', '$2y$12$zGotsL4bdQ6WxYo0jyevcuwYD1vufi.iOIixLCxW42eQrFWMq832u', 'dXQFz6FP@gmail.com', 'gj7TyueGsd', 1, 0, NULL, NULL),
(53, 'Phạm Quang Anh', '$2y$12$aYjNgkXhV6HXtCTw4UGna.UTWP5TDntzaCBkAI7LTGF7z7E9YNRr.', 'azNg9cQM@gmail.com', 'bLX2zoqqrE', 0, 1, NULL, NULL),
(54, 'Lê Quang Linh', '$2y$12$tjiVKVeKzq01G7sf.bBa0O9oH3oHSBkM84Y4nSSEWZ6Q8E/.M6hKW', 'LwWHCehM@gmail.com', 'pOuCYyNT6J', 0, 1, NULL, NULL),
(55, 'Lê Văn Duy', '$2y$12$mKfleNCC8heDGDdCZIdD6eA63fDpSPorumIALHbSQtvGPq9edKyu2', '2omLHa9Q@gmail.com', 'muySk29r0c', 1, 1, NULL, NULL),
(56, 'Trần Thị Hải', '$2y$12$4OQSl/NxKGVlS9FeMvUHCOHoxrhRbforVwNUpqPxE35Bu1BESGneq', 'zG29FqTZ@gmail.com', 'gE8KXflVn9', 0, 1, NULL, NULL),
(57, 'Trần Minh Duy', '$2y$12$ApAOUM62BFSyVH4bRbr.CejwvBlgs.lQk1sIFm1WiaxJviVzH3xa.', 'fmesmZAg@gmail.com', 'Avl4JVgKnG', 0, 1, NULL, NULL),
(58, 'Hoàng Thị Anh', '$2y$12$MGGH.ffN8NLSggUEWrQeH.qb5Nxj0zsoQY3/Ki7GDr35v3kyuZCZG', 'DtlAQrW2@gmail.com', 'lXwJXZG9Bw', 1, 0, NULL, NULL),
(59, 'Hoàng Quang Linh', '$2y$12$WOY1CLSy0XUpF5sN1aRUEe013S5fr3bQdyDvPLUiuUmxjQkNlUW.u', 'dUQr2Yj4@gmail.com', 'eJQwAoNBZZ', 1, 1, NULL, NULL),
(60, 'Hoàng Hữu Duy', '$2y$12$j0G.WpTNJiARoK2AorGl/.WuSYAwkSbUkkZKQK6gNQHkhOwvtiSqa', '0ubxd9Ss@gmail.com', 'gB0W5dZV5v', 1, 1, NULL, NULL),
(61, 'Hoàng Quang Linh', '$2y$12$oM0rBJWsQ41r2fPOiZTBhuED1O0XshXGWtNuTuqxDDNYWY2EZm58y', '4V39OVpD@gmail.com', 'ElGCt3BOwu', 0, 1, NULL, NULL),
(62, 'Lê Minh Linh', '$2y$12$ycU0I2aI61ujnOvn8JHiAu5CyOQTfdvliGvA/6kWwHwENtiOVlNB.', 'TV8eGKvp@gmail.com', 'iPPI0dyZxS', 0, 0, NULL, NULL),
(63, 'Nguyễn Văn Linh', '$2y$12$ogmeHHGeYThw3Du8FzQHb.nA0UC5BNhLgThQsZT9CmgjmDn9V2UzS', 'ygVFF5vl@gmail.com', 'NR68VRGwlz', 0, 0, NULL, NULL),
(64, 'Trần Thị Hưng', '$2y$12$XjKp21B15Q6PUGBhIUHch.U/PPv9pBjTg1oKLeQp.KH/LxYZhXCo2', 'QhY6F2HR@gmail.com', 'zxp4mq35kG', 0, 0, NULL, NULL),
(65, 'Hoàng Văn Anh', '$2y$12$huPVGfPfsol6uBTXwGB.8OvvcbMBiHR6Nm7OjHygDHwc0tOo79mk.', 'IrILy0YO@gmail.com', '3XStxdcKFb', 0, 1, NULL, NULL),
(66, 'Hoàng Quang Hải', '$2y$12$T72bnG.f9noWm2Ce0ztfGuxNWJqkwxP1oqCfDeM5n6hkLGQwwy7Hy', 'yStEnQMm@gmail.com', 'AkXqtMIoSG', 1, 0, NULL, NULL),
(67, 'Phạm Thị Hải', '$2y$12$iexhqY3VYVfqAMgzN9XeC.KB4maw20uKXvzfmIkc5AJV8sIMgJui2', 'zcv2dUFf@gmail.com', '6WP7mGlY9r', 0, 1, NULL, NULL),
(68, 'Hoàng Thị Hải', '$2y$12$ifCOTY4p882AYpfyEr9IE./o28.nqWE0pkwh6Vd3E1AI5WMM.4wl2', '9PF8cDHP@gmail.com', 'IRkDrPPZxe', 0, 1, NULL, NULL),
(69, 'Phạm Quang Hải', '$2y$12$GZ9YEpA/usW2nDiI8w3i2eeZrD7rMsCFgF5LzOty4D1jhwFyseA7a', '980KuFUD@gmail.com', 'uy64J4v8eo', 1, 0, NULL, NULL),
(70, 'Nguyễn Hữu Duy', '$2y$12$Jh/lqu0OHp7Or6uPzbyMqukkUpCRYtluMkjUdOPyxPacYFftiPmwa', 'hievBUJH@gmail.com', 'PZJmL7apAk', 1, 0, NULL, NULL),
(71, 'Nguyễn Hữu Linh', '$2y$12$8MXMPxalO.vHOVUu.KttpOioroD0.W/4i4YBKCmJaIfVYT6Tz4/MG', 'IZL4BXds@gmail.com', 'CgUMbhQqGJ', 1, 1, NULL, NULL),
(72, 'Lê Thị Duy', '$2y$12$5NJx83rR8oi8Yxn/6C3iAuqbhMsSWu08MDsha0FF.2HD9Dac3GzlK', 'xvzjp8G9@gmail.com', 'KhN9O9vg5y', 0, 0, NULL, NULL),
(73, 'Phạm Thị Duy', '$2y$12$OvnjyQrSSA2gzQvx.mVsseFpfATXtV880fBPbpxuPzt/aeBSDYHqq', 'KpEau3F6@gmail.com', 'uj2z9p1OeP', 0, 0, NULL, NULL),
(74, 'Lê Hữu Duy', '$2y$12$e3bm.vJ7r4Jc5YkDiGmbyuwPFDwrd4KCOvCYfCmr48X6.0.bIABMS', 'pLLgvIbg@gmail.com', 'VV0rvNP26h', 0, 0, NULL, NULL),
(75, 'Nguyễn Quang Linh', '$2y$12$Y8mx3IpmgCCS5EhoeZhX4.STqWfnnAZW2hc4.gAZY6bCStIXSna06', 'H3Hcsflj@gmail.com', 'x0N9XYelm8', 0, 0, NULL, NULL),
(76, 'Trần Hữu Linh', '$2y$12$3PL.upZNq4LxBxYEg8pHheQk0gQn/byzuBUot0IFG9CPYcGPrntse', 'r1dXy0rK@gmail.com', 'QmKzeiOlmc', 0, 1, NULL, NULL),
(77, 'Trần Quang Anh', '$2y$12$DyCKvyiuh.Szu79Ip60JtObBBcy0zlvItdHgsR8F4icigBsoFg9/W', 'Y7QeVdrv@gmail.com', '2unK7ZfttM', 0, 1, NULL, NULL),
(78, 'Trần Văn Anh', '$2y$12$aQSJxLxnEJDSHwfPq0zmWeVZgN0UCN3cUnPGfHbJuOmtieAoROXqW', 'Z2VQ9tPb@gmail.com', 'tKqmKFUwEU', 0, 0, NULL, NULL),
(79, 'Nguyễn Hữu Linh', '$2y$12$vqV9ioNhEi.bsODrwfvRROSkRJj6OoKPVlGSo5celFjSotPWM.xqG', 'Ks5WHKVM@gmail.com', 'EpXFwiTZUV', 0, 0, NULL, NULL),
(80, 'Trần Thị Hải', '$2y$12$BQRBg.6J.WMlJjpbmveXluqv.l2lrpNBPGtpb4WZ6g9IpbCCM2Up2', 'YvdJcMAq@gmail.com', '5os1W1HGlO', 0, 1, NULL, NULL),
(81, 'Lê Hữu Anh', '$2y$12$uHxb1zuckB46y.fCznfQ/e3sLyEU8Z7.IXdl54EOgXj8.EZyjXi8e', 'QwdgAZvE@gmail.com', '0PBWb0rahb', 0, 0, NULL, NULL),
(82, 'Nguyễn Hữu Linh', '$2y$12$nNH78KG5uI8.FBYxlLPkH.PivE7hFogi.wiaGOEc4a/T.nB7dtCli', 'pCVYe7zV@gmail.com', 'BHXa9sZMma', 1, 1, NULL, NULL),
(83, 'Nguyễn Minh Duy', '$2y$12$QAgXBQfcKUaekNAo5T7vL.DmFweWMiSwJMPeU7E5/MZnM/3vMfUCi', 'goLeLBf4@gmail.com', 'QfbsiuyPO2', 0, 1, NULL, NULL),
(84, 'Nguyễn Quang Hải', '$2y$12$6M.ObA3f9HmtrWN10R6zCecjhKqmcKVbzqtTPV3SfGMWyuFiNsEx2', 'jaSVLcsd@gmail.com', 'aawVUGATig', 1, 0, NULL, NULL),
(85, 'Phạm Văn Hưng', '$2y$12$SOCTPvf00OpSdZ38UVx3wOGc.UYsW0kNMuqEyVItuXdv0xmYQSD/m', '6nCSfbJx@gmail.com', 'yzN8yOW2SN', 0, 0, NULL, NULL),
(86, 'Hoàng Minh Linh', '$2y$12$cqT54fpT.fD4FedYv1Je7..oO0Z86rEKSAsH.mfnXF6cTcyM99nje', 'UXyqRW7H@gmail.com', 'PznYiITv9C', 0, 0, NULL, NULL),
(87, 'Phạm Quang Hưng', '$2y$12$HA6BQOGGmJv.0C8ks0j6BOsgz/rK8iL5Ng.bCyBMm7e1LU3AuJH7G', 'VXxQRmN8@gmail.com', 'xTJ0b4k2VE', 1, 0, NULL, NULL),
(88, 'Phạm Minh Hưng', '$2y$12$CtV.oGdVO7xo48Y55qoxSeZccvPz2EA1ELD9OenVO3gTUhOCwXn96', 'fE4tSKRS@gmail.com', 'GpOfD3TjAh', 0, 0, NULL, NULL),
(89, 'Trần Minh Duy', '$2y$12$roFOkPb2mHOjhjWEQqeHjupCwmK1AcPjdEO.2KwOAbrnhrYJgrmfW', 'fHCfiGjR@gmail.com', 'j6XgT1LQXh', 0, 1, NULL, NULL),
(90, 'Nguyễn Minh Hải', '$2y$12$idqb2OC5CDvsv/nGngwpKel9qKh./dkgY96cjFh8ZtOtO5k6/Rn2y', '0M6ELFQr@gmail.com', 'RYqi3T04Sq', 1, 1, NULL, NULL),
(91, 'Hoàng Hữu Anh', '$2y$12$ZPOc.NAGr/B6kQ13dpEvdOZ19aJvHKMCRy3oGNEroKMRWknP.5oki', 'UhilImKZ@gmail.com', 'fTX1BoaMYj', 1, 0, NULL, NULL),
(92, 'Hoàng Minh Hải', '$2y$12$D8dd1b9zcgiwghSeA1zrPeOouXNajeq8Dds3iIUQ86uFanvTp9u2e', 'ApR1sfc9@gmail.com', 'we07g4XCi7', 1, 0, NULL, NULL),
(93, 'Nguyễn Quang Duy', '$2y$12$geVsUuh7codNu/wLzfIlH.9WzO.o96gwFtKZ1jFHSFA/JTuWIi4GO', 'fVFppcQO@gmail.com', 'QilnKnTBDW', 1, 0, NULL, NULL),
(94, 'Trần Quang Duy', '$2y$12$Bsyx4MxyFgO3hLXHUVE11ummHdZCeFYma9V5Ht0vmW10Z.HrEfXa6', 'GKZpRDb2@gmail.com', '1Uycmc3IZX', 0, 1, NULL, NULL),
(95, 'Nguyễn Quang Hải', '$2y$12$GNonpAzCYRhPHFJc4JK1weOb0AjwzlKy3eEXftEb2Ssalb4PL7E7m', 'xteoPCpX@gmail.com', 'lqzeSvALJM', 0, 1, NULL, NULL),
(96, 'Trần Minh Linh', '$2y$12$u64rIE810IjmmwfJyNtxZ./TW.iAgsS5yj1FpPokRWJtj6THvw3.6', 'Icp3bdQj@gmail.com', 'sbB7GcGAD6', 1, 1, NULL, NULL),
(97, 'Trần Hữu Duy', '$2y$12$bcJEwfkI6DC0D6WO4pO3EeJwIe3hjrpN527eP3BA4abV4lLkfOPpG', 'qMvVUiMF@gmail.com', 'Xm9FaNJmNk', 0, 1, NULL, NULL),
(98, 'Trần Minh Linh', '$2y$12$cSCUzkH9KdUN5JyRJudPRuv0u7UXXCvOYggS0AIq59rG7bgQlsAgy', 'LlDR5oQC@gmail.com', 'sNeah8hVYg', 1, 1, NULL, NULL),
(99, 'Phạm Quang Hưng', '$2y$12$Er5RtreDpyNbK8uZafaBNO5vH.hLBUyxpuPF0nIYmESZyD6q342Qe', 'jzT7kDfL@gmail.com', 'YPvAYc9LcL', 1, 1, NULL, NULL),
(100, 'Hoàng Minh Hưng', '$2y$12$rvPLbXYH.6OnZIhJ9/JBtumtGFQmXjPxcA4DdYfSL/6FwKj/ob5he', 'i5XtGp0O@gmail.com', 'ocZL4Mv4w0', 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tins`
--

CREATE TABLE `tins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `TieuDe` varchar(255) NOT NULL,
  `TomTat` text DEFAULT NULL,
  `NoiDung` longtext DEFAULT NULL,
  `SoXem` int(11) NOT NULL DEFAULT 0,
  `idLoaiTin` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tins`
--

INSERT INTO `tins` (`id`, `TieuDe`, `TomTat`, `NoiDung`, `SoXem`, `idLoaiTin`, `created_at`, `updated_at`) VALUES
(1, 'Thời tiết hôm nay nắng nóng kỷ lục', 'Nắng nóng gay gắt kéo dài ở miền Bắc và Trung Bộ', 'Theo Trung tâm Dự báo Khí tượng Thủy văn Quốc gia, hôm nay miền Bắc và Trung Bộ tiếp tục chịu ảnh hưởng của đợt nắng nóng gay gắt, với nền nhiệt phổ biến từ 36 - 39 độ C, có nơi trên 40 độ C.', 250, 1, '2025-03-17 10:01:38', '2025-03-17 10:01:38'),
(2, 'Việt Nam giành HCV Olympic Toán quốc tế', 'Đội tuyển Việt Nam xuất sắc giành 1 HCV tại kỳ thi Olympic Toán quốc tế 2025', 'Theo thông tin từ Bộ GD-ĐT, đội tuyển Việt Nam tham dự Olympic Toán quốc tế 2025 đã giành được 1 HCV, 3 HCB và 2 HCĐ, xếp thứ 5 toàn đoàn trên tổng số 110 quốc gia tham dự.', 400, 2, '2025-03-17 10:01:38', '2025-03-17 10:01:38'),
(3, 'Giá xăng dầu hôm nay tiếp tục tăng mạnh', 'Giá xăng RON95 và dầu diesel tăng lần thứ 5 liên tiếp', 'Theo Liên Bộ Công Thương - Tài chính, từ 15h chiều nay, giá xăng RON95 tăng thêm 1.000 đồng/lít, dầu diesel tăng 850 đồng/lít. Đây là lần thứ 5 giá nhiên liệu trong nước điều chỉnh tăng kể từ đầu năm.', 320, 3, '2025-03-17 10:01:38', '2025-03-17 10:01:38'),
(4, 'Hà Nội khánh thành tuyến đường sắt đô thị Cát Linh - Hà Đông', 'Sau nhiều năm chờ đợi, tuyến metro đầu tiên tại Hà Nội chính thức đi vào hoạt động', 'Sáng nay, tuyến đường sắt đô thị Cát Linh - Hà Đông chính thức khánh thành và đưa vào sử dụng. Đây là tuyến metro đầu tiên tại Hà Nội với chiều dài 13km, 12 ga, kết nối trung tâm Hà Nội và quận Hà Đông.', 500, 1, '2025-03-17 10:01:38', '2025-03-17 10:01:38'),
(5, 'Cảnh báo bệnh sốt xuất huyết bùng phát mạnh', 'Bộ Y tế cảnh báo nguy cơ sốt xuất huyết bùng phát tại các tỉnh phía Nam', 'Số ca mắc sốt xuất huyết tại các tỉnh phía Nam đang gia tăng nhanh chóng do thời tiết nóng ẩm, mưa nhiều. Bộ Y tế khuyến cáo người dân thực hiện các biện pháp phòng chống bệnh, diệt lăng quăng, muỗi gây bệnh.', 150, 2, '2025-03-17 10:01:38', '2025-03-17 10:01:38');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `dienthoai`
--
ALTER TABLE `dienthoai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dienthoai_tendt_unique` (`tenDT`),
  ADD KEY `dienthoai_idloai_foreign` (`idLoai`);

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
-- Indexes for table `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `loaisp_tenloai_unique` (`tenLoai`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `thanhvien_email_unique` (`email`);

--
-- Indexes for table `tins`
--
ALTER TABLE `tins`
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
-- AUTO_INCREMENT for table `dienthoai`
--
ALTER TABLE `dienthoai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

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
-- AUTO_INCREMENT for table `loaisp`
--
ALTER TABLE `loaisp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `tins`
--
ALTER TABLE `tins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dienthoai`
--
ALTER TABLE `dienthoai`
  ADD CONSTRAINT `dienthoai_idloai_foreign` FOREIGN KEY (`idLoai`) REFERENCES `loaisp` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
