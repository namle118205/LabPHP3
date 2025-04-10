-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 10, 2025 at 03:20 PM
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
-- Database: `asignmentphp3`
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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Tin Công Nghệ', '2025-03-20 15:24:56', '2025-04-08 08:54:06'),
(2, 'Tin Thể Thao', '2025-03-20 15:24:56', '2025-03-20 15:24:56'),
(3, 'Giải Trí', '2025-03-20 15:24:56', '2025-03-20 15:24:56'),
(4, 'Kinh Doanh', '2025-03-20 15:24:56', '2025-03-20 15:24:56'),
(6, 'Thời Sự', '2025-04-08 08:57:33', '2025-04-08 08:57:33');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'Thiếu hình ảnh với ngắn quá', 1, 3, '2025-03-20 08:35:59', '2025-03-20 08:35:59'),
(2, 'Thiếu ảnh', 1, 8, '2025-03-20 08:49:22', '2025-03-20 08:49:22'),
(3, 'Thiếu chữ', 1, 8, '2025-03-20 08:49:42', '2025-03-20 08:49:42'),
(4, 'Thiếu hình ảnh', 1, 5, '2025-03-23 05:54:46', '2025-03-23 05:54:46'),
(5, 'Thiếu chữ', 1, 8, '2025-03-23 06:35:57', '2025-03-23 06:35:57'),
(6, 'thiếu tin quá', 3, 4, '2025-03-24 08:51:58', '2025-03-24 08:51:58'),
(7, 'Cup này đẹp lắm', 8, 5, '2025-03-26 22:30:18', '2025-03-26 22:30:18'),
(8, 'Tin hơi ngắn', 3, 6, '2025-03-27 06:33:17', '2025-03-27 06:33:17');

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_19_141257_create_categories_table', 1),
(5, '2025_03_19_144306_create_posts_table', 1),
(6, '2025_03_19_144332_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('tholm@gmail.com', '$2y$12$.5beqRQg9V.y1Otl6ntFrePm7x23CQ/HMMa1zzNG9XSG1C35pB.KS', '2025-03-26 09:47:47');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` longtext NOT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `description`, `content`, `views`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Công nghệ AI bùng nổ năm 2025', 'ai-bung-no-2025', 'Tương lai AI đang phát triển mạnh', 'Trí tuệ nhân tạo (AI) đang phát triển với tốc độ chóng mặt, mang lại những thay đổi mạnh mẽ cho nhiều lĩnh vực như y tế, tài chính, sản xuất và giáo dục. Năm 2025 hứa hẹn sẽ chứng kiến sự bùng nổ của AI với các ứng dụng tiên tiến như AI sáng tạo nội dung, AI điều khiển robot, và AI hỗ trợ nghiên cứu khoa học. Bài viết này sẽ phân tích chi tiết những xu hướng AI nổi bật trong năm 2025, cách các doanh nghiệp đang tận dụng công nghệ này để nâng cao hiệu suất, cũng như những thách thức liên quan đến bảo mật và đạo đức AI.', 120, '5-AI-Advancements-to-Expect-in-the-Next-10-Years-scaled-1.jpg', 1, '2025-03-20 15:25:15', '2025-03-20 15:25:15'),
(2, 'World Cup 2026 chuẩn bị khởi tranh', 'world-cup-2026', 'Các đội bóng đang sẵn sàng', 'World Cup 2026 sẽ là một trong những kỳ World Cup đáng mong đợi nhất trong lịch sử bóng đá, với sự tham gia của 48 đội tuyển thay vì 32 như trước đây. Giải đấu sẽ được tổ chức tại ba quốc gia gồm Mỹ, Canada và Mexico, hứa hẹn mang đến những trận đấu kịch tính, những khoảnh khắc lịch sử và sự cạnh tranh khốc liệt giữa các đội bóng hàng đầu thế giới. Trong bài viết này, chúng tôi sẽ điểm qua các đội tuyển được đánh giá cao, lịch thi đấu quan trọng, những ngôi sao sáng giá và các yếu tố chiến thuật có thể ảnh hưởng đến kết quả chung cuộc.', 311, 'world-cup-2016.jpg', 2, '2025-03-20 15:25:15', '2025-03-20 12:25:36'),
(3, 'Phim bom tấn 2025: Kỷ nguyên mới', 'phim-bom-tan-2025', 'Danh sách phim hot năm 2025', 'Năm 2025 sẽ đánh dấu sự ra mắt của hàng loạt bộ phim bom tấn từ Hollywood, châu Á và châu Âu, mang đến cho khán giả những trải nghiệm điện ảnh mãn nhãn. Từ các bộ phim siêu anh hùng đình đám của Marvel và DC, đến những tác phẩm khoa học viễn tưởng với kỹ xảo đỉnh cao, danh sách phim năm 2025 hứa hẹn sẽ rất đa dạng và phong phú. Trong bài viết này, chúng tôi sẽ giới thiệu danh sách những bộ phim đáng mong đợi nhất, thông tin về dàn diễn viên, đạo diễn và nội dung sơ lược của từng tác phẩm.', 157, 'loat_phim_hollywood_duoc_mong_doi_nam_2025.jpg', 3, '2025-03-20 15:25:15', '2025-03-20 12:25:53'),
(4, 'Giải pháp công nghệ xanh 2025', 'giai-phap-cong-nghe-xanh-2025', 'Xu hướng công nghệ thân thiện môi trường', 'Các giải pháp công nghệ xanh đang trở thành xu hướng quan trọng nhằm giảm thiểu tác động tiêu cực đến môi trường. Năm 2025, các công ty công nghệ lớn trên thế giới đang tập trung vào việc phát triển những công nghệ thân thiện với môi trường như năng lượng tái tạo, vật liệu sinh học và hệ thống thông minh giúp tiết kiệm năng lượng. Bài viết này sẽ phân tích những công nghệ xanh nổi bật, cách chúng đang thay đổi cuộc sống và những thách thức cần vượt qua để áp dụng rộng rãi hơn.', 101, 'unnamed.jpg', 1, '2025-03-20 15:27:32', '2025-03-20 15:27:32'),
(5, 'Champions League 2025 gay cấn', 'champions-league-2025', 'Những trận đấu hấp dẫn', 'Champions League 2025 đang bước vào giai đoạn căng thẳng với sự tham gia của các đội bóng hàng đầu châu Âu như Real Madrid, Manchester City, Bayern Munich, PSG và Barcelona. Những trận đấu kịch tính giữa các đội bóng lớn không chỉ thu hút sự quan tâm của người hâm mộ mà còn tạo ra nhiều cuộc tranh luận về chiến thuật, phong độ cầu thủ và dự đoán kết quả. Trong bài viết này, chúng tôi sẽ điểm qua những trận đấu hấp dẫn nhất, đánh giá phong độ của các đội và dự đoán đội nào sẽ có cơ hội giành chức vô địch.', 229, 'messageImage_1686220343416.jpg', 2, '2025-03-20 15:27:32', '2025-03-20 15:27:32'),
(6, 'Oscar 2025: Những bộ phim đề cử', 'oscar-2025-de-cu', 'Danh sách phim được đề cử Oscar', 'Lễ trao giải Oscar 2025 đang đến gần, với danh sách đề cử đầy hấp dẫn từ những bộ phim xuất sắc nhất trong năm qua. Các hạng mục như Phim hay nhất, Đạo diễn xuất sắc nhất, Nam/Nữ diễn viên chính xuất sắc nhất luôn là tâm điểm của sự chú ý. Trong bài viết này, chúng tôi sẽ phân tích danh sách các bộ phim và diễn viên được đề cử, đánh giá cơ hội chiến thắng của từng ứng cử viên và điểm qua những bất ngờ có thể xảy ra tại Oscar năm nay.', 181, 'ung-vien-oscar-2025-phim-hay-nhat-4510-4182.jpg', 3, '2025-03-20 15:27:32', '2025-03-20 15:27:32'),
(7, 'Xu hướng AI trong giáo dục', 'xu-huong-ai-giao-duc', 'AI thay đổi cách học tập', 'Giáo dục đang thay đổi mạnh mẽ nhờ sự phát triển của công nghệ, đặc biệt là trí tuệ nhân tạo. Năm 2025, AI không chỉ giúp cải thiện phương pháp giảng dạy mà còn cá nhân hóa trải nghiệm học tập cho từng học sinh. Các nền tảng học tập trực tuyến sử dụng AI để phân tích thói quen học tập, đề xuất tài liệu phù hợp và thậm chí đánh giá tiến bộ của học viên. Bài viết này sẽ điểm qua những xu hướng công nghệ giáo dục mới nhất, tác động của AI đến giáo dục và cách các trường học có thể tận dụng công nghệ này.', 91, 'ung-dung-ai-trong-giao-duc-9.jpg', 1, '2025-03-20 15:27:32', '2025-03-20 15:27:32'),
(8, 'Euro 2028 chính thức tổ chức tại Ý', 'euro-2028-y', 'Châu Âu sôi động cùng Euro', 'Euro 2028 đã bắt đầu nóng lên với các thông tin về thể thức thi đấu, các đội bóng tiềm năng và những thay đổi quan trọng. Giải đấu lần này sẽ có sự góp mặt của các đội bóng mạnh nhất châu Âu, mang đến những trận đấu hấp dẫn và kịch tính. Trong bài viết này, chúng tôi sẽ cập nhật thông tin mới nhất về Euro 2028, bao gồm danh sách các đội đã giành vé tham dự, lịch thi đấu dự kiến và dự đoán về ứng viên sáng giá cho chức vô địch.', 280, 'GettyImages-1715822897.jpg', 2, '2025-03-20 15:27:32', '2025-03-21 00:35:47'),
(9, 'Lễ hội phim Cannes 2025', 'le-hoi-phim-cannes-2025', 'Những tác phẩm nghệ thuật đỉnh cao', 'Lễ hội phim Cannes 2025 hứa hẹn sẽ là một sự kiện điện ảnh hoành tráng, quy tụ những tác phẩm nghệ thuật xuất sắc nhất từ khắp nơi trên thế giới. Cannes không chỉ là nơi vinh danh các bộ phim đỉnh cao mà còn là dịp để các nhà làm phim giao lưu, chia sẻ kinh nghiệm và khám phá những xu hướng mới trong ngành công nghiệp điện ảnh. Bài viết này sẽ điểm qua những bộ phim được kỳ vọng nhất tại Cannes 2025, các đạo diễn danh tiếng sẽ tham gia, cũng như những khoảnh khắc đáng nhớ từ thảm đỏ lễ hội.', 142, 'cann.jpg', 3, '2025-03-20 15:27:32', '2025-03-20 15:27:32');

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
('DIk3WgGdtuqms2LvenuMYzzZvorrgW6iqk5MshxY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidHVJQ1VFbEIzTkg3bno3a01VdXJuOGlVdmtGTVJtQ0ZhY0dBZ2Y5QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1744272113),
('kqSXRHRDPioBXmwmEFc1lNRzZbe6zAYPgfF6Ra4H', 9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiYXBQN0xwRjFVbm1ST1d5eGlGWXd5R3dlejNGUE5aVllHYTh1YW1jayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMi9hZG1pbi9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YToxOntzOjg6ImludGVuZGVkIjtzOjM4OiJodHRwOi8vMTI3LjAuMC4xOjgwMDIvYWRtaW4vY2F0ZWdvcmllcyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjk7fQ==', 1744270207),
('unitavZRu4SLI5PDzD1J5d4HkgmxaTtLG4Ib8eEW', 9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVkFKcklDZmh2TE9VMU10QXZNdlRmYWw3R0RnQTlWVjlPWmE3aTBWRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMi9hZG1pbi9jYXRlZ29yaWVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6OTt9', 1744274550);

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
  `role` enum('client','admin') NOT NULL DEFAULT 'client',
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `activation_token` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `is_active`, `activation_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lê Thành Nam', 'nle118205@gmail.com', NULL, '$2y$12$GFuQj/fIuvDxplD7LqytIuZSme8xr7UHWOXEPMlDSTbxS7k.Y9zmO', 'client', 1, NULL, NULL, '2025-03-20 08:28:22', '2025-03-20 08:28:22'),
(3, 'Lê Thành Nam Minh', 'nle61144@gmail.com', NULL, '$2y$12$nntaf60Le18ZjPu/b2PY.Ox0uBeqGRt69m0Lw89qYbIHwM93XjcU2', 'client', 1, NULL, NULL, '2025-03-23 06:36:32', '2025-03-26 11:41:17'),
(4, 'Nam Lê', 'nle11082005@gmail.com', NULL, '$2y$12$GdowmdY0SVKggqh6iaeHtODF8IvR0.i8bo4PmjVDN2ac0gElXWKCW', 'client', 1, NULL, NULL, '2025-03-26 05:37:11', '2025-03-26 05:37:11'),
(5, 'tholmt', 'tholm@gmail.com', NULL, '$2y$12$ZL3LuNd2Hq7SqtBWpZav9.P/PjFgzbnNSRcX1bKwjbeYhtuTNIeU.', 'client', 1, NULL, NULL, '2025-03-26 08:37:19', '2025-03-26 08:37:19'),
(6, 'tholmt', 'tholm123@gmail.com', NULL, '$2y$12$R1c9dRHmUoK1dT3WEFYKjOuf3wb2f5jAkZUyXbK3WWUfl2j6CM46W', 'client', 1, NULL, NULL, '2025-03-26 09:39:31', '2025-03-26 09:39:31'),
(7, 'Nam Lê', 'nle112233@gmail.com', NULL, '$2y$12$.HVG18OXyxL1kxDwpYQ9X.HV0zg89QFxcuDvBp7.yGxSw7uc09K3q', 'client', 1, NULL, NULL, '2025-03-26 11:06:55', '2025-03-26 11:06:55'),
(8, 'Lê Minh Thọ', 'leminhtho762@gmail.com', NULL, '$2y$12$36YNVQiQ0GeXK8BcSGqKnuU8pFXVXYm36xlaVFU5QYSUAbVOoFbY.', 'client', 1, NULL, NULL, '2025-03-26 22:11:07', '2025-03-26 22:12:45'),
(9, 'admin', 'admin@gmail.com', NULL, '$2y$12$BWlTIh1rKTgRvYt/7s6ZAu.uLQ511pWofMt235nCUaP/ZnqS8VAvi', 'admin', 1, NULL, NULL, '2025-04-05 09:32:37', '2025-04-05 09:32:37');

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
