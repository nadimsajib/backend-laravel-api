-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 03, 2023 at 07:30 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 8.0.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `innos`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0099716bdb494c8ce6ea4689c6acd6473161ddd7b22a56cfdddf03675089f09f33252058020be2c1', 7, 1, 'API Token', '[]', 0, '2023-07-03 12:54:27', '2023-07-03 12:54:27', '2024-07-03 18:54:27'),
('09592ace8734b2096ece7e826d7faadc814c758f4973ca283a81506b4c328700034dbcfd1fc8ae02', 8, 1, 'API Token', '[]', 0, '2023-07-03 13:09:00', '2023-07-03 13:09:00', '2024-07-03 19:09:00'),
('0d1a3f7f676998da93e4d6b89de9ba160d4272cf0f5a61acce53a5f12060fcebf1cec33f9d21e7ba', 8, 1, 'API Token', '[]', 0, '2023-07-03 12:48:53', '2023-07-03 12:48:53', '2024-07-03 18:48:53'),
('15ab28593bac1c332b9dcc70e5c554e487276a6097165f570dbca826a7439833cdcbc926d5c07a6b', 7, 1, 'API Token', '[]', 0, '2023-07-03 12:39:11', '2023-07-03 12:39:11', '2024-07-03 18:39:11'),
('2a6de84dbc1fb5cf5345cc4770838e42b2bc88bbb3d1e607488e0925f8771f63956fab2dd291914a', 6, 1, 'API Token', '[]', 0, '2023-06-27 10:58:02', '2023-06-27 10:58:02', '2024-06-27 16:58:02'),
('2d8d9c1cf006c0ba44f8245b8b29b7805f374dd2bedce4e4f60fa8c3caa07c0c0c08166bd00a9d3a', 6, 1, 'API Token', '[]', 0, '2023-07-03 12:23:29', '2023-07-03 12:23:29', '2024-07-03 18:23:29'),
('54782ea4e41f73beede5e5d9057e325f2f12effb9ccfeb0a9346936dc5666df37c21536b5e7111d9', 6, 1, 'API Token', '[]', 0, '2023-06-28 13:15:27', '2023-06-28 13:15:27', '2024-06-28 19:15:27'),
('5bd2b2d289458fc6d92d444415d20e68e320088e536da709db33d22338cd61c423c71e361accbd6f', 9, 1, 'API Token', '[]', 0, '2023-07-03 12:50:38', '2023-07-03 12:50:38', '2024-07-03 18:50:38'),
('64743b59da08dada3f56f6447c21600843c7fa0f1c956be072dc775e74d137829039d07fe88a0a6a', 6, 1, 'API Token', '[]', 0, '2023-06-25 13:14:43', '2023-06-25 13:14:43', '2024-06-25 19:14:43'),
('70d69529233fa23dac3f1822a213e26ba0485ced4add1ba19ad5fe7dabe9b7471d68d0a49545229d', 6, 1, 'API Token', '[]', 0, '2023-06-28 13:22:39', '2023-06-28 13:22:39', '2024-06-28 19:22:39'),
('7c7f29dce4344bb294fb2dc43703faee59c8bd975ad94997f9daaf585fdb27daa17183fcdb80acc5', 7, 1, 'API Token', '[]', 0, '2023-07-03 13:07:47', '2023-07-03 13:07:47', '2024-07-03 19:07:47'),
('83549e4b88334c2d5864e46f8d12768de59c91c091f20a3d56497ccac20a2f15507d5556450a1334', 6, 1, 'API Token', '[]', 0, '2023-06-27 00:32:09', '2023-06-27 00:32:09', '2024-06-27 06:32:09'),
('85fe4c42a99afb8182b3be7a9f044feef2b4204eda63ca0776c0c7356448e529f5a0d81af770db5b', 6, 1, 'API Token', '[]', 0, '2023-06-28 13:25:54', '2023-06-28 13:25:54', '2024-06-28 19:25:54'),
('893ceea4d8a6c8856164b2701e47a1287e4930337b6ba8d0b413bbc6e0e7091617014865b4560610', 6, 1, 'API Token', '[]', 0, '2023-06-28 13:29:16', '2023-06-28 13:29:16', '2024-06-28 19:29:16'),
('8f180424fa12a16bf30cdf47e1ecd0374881c1a8d6a2dde9f322bdc22cd435436548309a3d7b0dd6', 6, 1, 'API Token', '[]', 0, '2023-06-28 13:33:24', '2023-06-28 13:33:24', '2024-06-28 19:33:24'),
('9dbf3535a0534460db80f23cd2a9b845d361fd1f0abe90ca31cf3280fdace67fbe69e4d4375f5c96', 6, 1, 'API Token', '[]', 0, '2023-06-27 04:37:25', '2023-06-27 04:37:25', '2024-06-27 10:37:25'),
('a219a64d4f083dea5772cd4e93fb791c0f0ca9bca77dd5fcad4777739c798c5e556dca7bfdb471b1', 7, 1, 'API Token', '[]', 0, '2023-07-03 13:16:19', '2023-07-03 13:16:19', '2024-07-03 19:16:19'),
('a3818ab8c7088e91695f101298a06205ecb8d88d1007907b218aac1f4240a0f2bacbf1b853359e05', 6, 1, 'API Token', '[]', 0, '2023-06-28 13:34:43', '2023-06-28 13:34:43', '2024-06-28 19:34:43'),
('b069154f76f014253e0b521a575bff707cf16da8f085adafbbc8d14fa10426a03b1366c18d00dc6b', 6, 1, 'API Token', '[]', 0, '2023-06-28 13:18:55', '2023-06-28 13:18:55', '2024-06-28 19:18:55'),
('bb08c5c02e57ebdb706a8c1e95f843a30cf3b8a134b5102e3e5604059eb701a50a8faaab27bbdb07', 6, 1, 'API Token', '[]', 0, '2023-06-25 13:19:44', '2023-06-25 13:19:44', '2024-06-25 19:19:44'),
('bb8b7dbbfa5037f70d9e1047383d46971f7838af82a374b37400a22c2f82c68b848fcc9ad0e39d15', 6, 1, 'API Token', '[]', 0, '2023-06-28 13:32:47', '2023-06-28 13:32:47', '2024-06-28 19:32:47'),
('c0cf49d625c0dbf522ea9beb3385eb874eefee2a41f65bab3dad9e80395096a0c24735b906891f86', 6, 1, 'API Token', '[]', 0, '2023-06-28 13:19:11', '2023-06-28 13:19:11', '2024-06-28 19:19:11'),
('c536218603042c0fe26d257935998463d45b32c07c7427827aa911fc15e24987cd2c0e60442c071f', 5, 1, 'API Token', '[]', 0, '2023-06-25 13:14:10', '2023-06-25 13:14:10', '2024-06-25 19:14:10'),
('d84eb0e8f27472d23b766251df45899bc2a2bca556479da2af5677d26db08db6ab90fe8a8766cd4a', 7, 1, 'API Token', '[]', 0, '2023-07-03 12:37:57', '2023-07-03 12:37:57', '2024-07-03 18:37:57'),
('e0b6548b15c997b8ff6be62c61dbda711205d1e1d1082e278cd0450759d745e58c6643043494e771', 6, 1, 'API Token', '[]', 0, '2023-06-28 13:18:45', '2023-06-28 13:18:45', '2024-06-28 19:18:45'),
('eed5217dedbb7cb62512513bfe10af26cb358a745a2274175f435d2532ee2c84cb3c7326a824896e', 6, 1, 'API Token', '[]', 0, '2023-06-28 13:34:10', '2023-06-28 13:34:10', '2024-06-28 19:34:10'),
('fa8d82e72a4d8938c7809f2622fda0d4813f91939110be5866d542e5386c23600bc1610f9101b9a0', 6, 1, 'API Token', '[]', 0, '2023-06-28 13:18:29', '2023-06-28 13:18:29', '2024-06-28 19:18:29'),
('fdccea1368efa5010d16ca8ab14925708f25c77e78e014d5bf7cae16185815588df18013449afb3f', 8, 1, 'API Token', '[]', 0, '2023-07-03 12:56:33', '2023-07-03 12:56:33', '2024-07-03 18:56:33'),
('ffe6c24349c0694b2c8356426e7ee41ad90e1590cc3615c41c3868735d7b8595e69b9f39a85da1ec', 6, 1, 'API Token', '[]', 0, '2023-06-28 13:32:05', '2023-06-28 13:32:05', '2024-06-28 19:32:05');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '0zbtQvz9H4wv3zktfDOs9hW9eOmqY3iutslDxAp2', NULL, 'http://localhost', 1, 0, 0, '2023-06-25 12:41:12', '2023-06-25 12:41:12'),
(2, NULL, 'Laravel Password Grant Client', 'irQkIordhxRBL0wG2aeyN0ZhBvGYR6mAsmCGvYfR', 'users', 'http://localhost', 0, 1, 0, '2023-06-25 12:41:12', '2023-06-25 12:41:12');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-06-25 12:41:12', '2023-06-25 12:41:12');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'API Token', 'ba508e815bb21e38867bd3ae27c79817c9b61518a46a1470977e6acfce39d06c', '[\"*\"]', NULL, '2023-06-25 12:57:21', '2023-06-25 12:57:21'),
(2, 'App\\Models\\User', 3, 'API Token', '0402a39ba8f2e893c493bbecb1b5179e31d0fe69c6d1612d018cd9e4974df338', '[\"*\"]', NULL, '2023-06-25 13:07:13', '2023-06-25 13:07:13'),
(3, 'App\\Models\\User', 4, 'API Token', '6bbf20e8607f8a3f8a481840fd8bb7b18fe8e1af2e0e496945ae8cd0df27646d', '[\"*\"]', NULL, '2023-06-25 13:10:23', '2023-06-25 13:10:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'john', 'nhsajib@gmai.com', NULL, '$2y$10$3y1zhfYiOwEyPleAvFVqxObUwKZDxOgE1WH3IcWkt755b4LMuYz3y', NULL, '2023-06-25 12:57:21', '2023-06-25 12:57:21'),
(2, 'john', 'nhsajiasasb@gmai.com', NULL, '$2y$10$HTu1qxwochx02uig.CMwyuSZ3RE5W6cPLpnRQWWmMPa7uyjc2Pjni', NULL, '2023-06-25 13:05:37', '2023-06-25 13:05:37'),
(3, 'john', 'nhsajiasasasdasdb@gmai.com', NULL, '$2y$10$0zRENshQ9CgbrYNtlxbjlObv7mATyGOJJ5LJ05kErFTaxmQghTWfy', NULL, '2023-06-25 13:07:13', '2023-06-25 13:07:13'),
(4, 'john', 'nhsajiasasasdas@gmai.com', NULL, '$2y$10$xh54SZQboKp7OJOd8WUbDOXl0z8zLD6d1FOI3.ZjuKEyjqlbFpJK6', NULL, '2023-06-25 13:10:23', '2023-06-25 13:10:23'),
(5, 'john', 'nhsajiasasdas@gmai.com', NULL, '$2y$10$nZoTWwTOVOuazm1QrlqFtOu3rEnNXZs3YYDfawf8YxBf65d3UhAnq', NULL, '2023-06-25 13:14:10', '2023-06-25 13:14:10'),
(6, 'john', 'nhsajiasa123sdas@gmai.com', NULL, '$2y$10$TlTA5qM7adb2YNZXVDR.YeL/1Mdo.DtYTS2QRoHr1dXmWFxUSgWYe', NULL, '2023-06-25 13:14:43', '2023-06-25 13:14:43'),
(7, 'Nadim', 'nhsajib@gmail.com', NULL, '$2y$10$Rxkrjffk9jJLJxi/DCNa6.IG9zmr47EKZ9Y0F41sOE7k9eLUfrMO.', NULL, '2023-07-03 12:37:57', '2023-07-03 12:37:57'),
(8, 'Nadim2', 'nhsajib2@gmail.com', NULL, '$2y$10$G31irLaFheut.sIVqQADe.YZNuG2QmlVjqc83iJE2z/9lvXQR93S.', NULL, '2023-07-03 12:48:53', '2023-07-03 12:48:53'),
(9, 'Nadim3', 'nhsajib3@gmail.com', NULL, '$2y$10$uvxl1trmEQZm764pJZ6sF..LT7um7OeVx5tGCcEo062PNeJX9z0TK', NULL, '2023-07-03 12:50:38', '2023-07-03 12:50:38');

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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
