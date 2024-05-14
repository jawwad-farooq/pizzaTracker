-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2024 at 04:07 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pizzatracker`
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
(4, '2024_04_25_075026_create_pizzas_table', 2);

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
-- Table structure for table `pizzas`
--

CREATE TABLE `pizzas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `size` varchar(255) NOT NULL,
  `crust` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pizzas`
--

INSERT INTO `pizzas` (`id`, `user_id`, `size`, `crust`, `status`, `created_at`, `updated_at`) VALUES
(32, 4, 'medium', 'garlic', 'ordered', '2024-04-29 01:40:25', '2024-04-29 01:40:25'),
(109, 3, 'medium', 'noraml', 'ready', '2024-04-29 01:40:25', '2024-04-29 01:40:25'),
(152, 7, 'large', 'noraml', 'ordered', '2024-04-29 01:40:25', '2024-04-29 01:40:25'),
(195, 2, 'large', 'thin', 'ready', '2024-04-29 01:40:25', '2024-04-29 01:40:25'),
(341, 2, 'small', 'noraml', 'ready', '2024-04-29 01:40:25', '2024-04-29 01:40:25'),
(441, 1, 'medium', 'garlic', 'baking', '2024-04-29 01:40:25', '2024-04-29 01:40:25'),
(511, 3, 'small', 'thin', 'baking', '2024-04-29 01:40:25', '2024-04-29 01:40:25'),
(573, 5, 'small', 'thin', 'baking', '2024-04-29 01:40:25', '2024-04-29 01:40:25'),
(576, 2, 'small', 'thin', 'baking', '2024-04-29 01:40:25', '2024-04-29 01:40:25'),
(585, 1, 'small', 'thin', 'ready', '2024-04-29 01:40:25', '2024-04-29 01:40:25');

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
('FExdPlImMqUMYNTsk4mY4g3SzAHFMQCnROB64prx', 81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMUFXRmdWRW9nNXlyMkIwNFdSNVdhVVJNbkNzYVBiaEdoQ1FBQVRuQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9waXp6YXMvMzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6ODE7fQ==', 1714568279),
('jedBNADwcylTxOjLn5QHZU58cVSCehHjauXwEqtH', 81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQlBndlhSZTRZNFJUNUk0VTdrb2hSOTdZUlRBRlZFUkUxUFJ3OUh5QyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9waXp6YXMvMzIiO31zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6ODE7fQ==', 1715694905),
('rxHbwL12pq3zPHcnJ1iDA40OdZB8wfY8xODvlQ3O', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZFpyVzBKU0ZnZEt0ZE1TMmV5Z09DT1JOS29GTldVZEZ1SUFscDZUMSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cDovL2xvY2FsaG9zdDo4MDAwL3Bpenphcy8zMiI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vbG9jYWxob3N0OjgwMDAvcGl6emFzLzMyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1714479920),
('XUYqxkNDN6iRzuho62dZZvBYQuXkym7skr3bHI9X', 81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRUJZd0dENGNBTW5WU2xheDdORTFmTk5MdEFuSnJoZk9lNUJoemlHeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9waXp6YXMvMzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6ODE7fQ==', 1714464088);

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Velda Howe', 'vsmitham@example.com', '2024-04-25 03:17:33', '$2y$12$PgvpSiMSvlOnklFiAvHBMOoInJNrYOljI6RkAjPaGgr6lHO19Ict6', 'CeAfHy4zAa', '2024-04-25 03:17:34', '2024-04-25 03:17:34'),
(2, 'Delta Stehr', 'vergie59@example.net', '2024-04-25 03:17:33', '$2y$12$PgvpSiMSvlOnklFiAvHBMOoInJNrYOljI6RkAjPaGgr6lHO19Ict6', 'p8YZF7OG9P', '2024-04-25 03:17:34', '2024-04-25 03:17:34'),
(3, 'Ms. Aisha Wehner V', 'heather31@example.org', '2024-04-25 03:17:33', '$2y$12$PgvpSiMSvlOnklFiAvHBMOoInJNrYOljI6RkAjPaGgr6lHO19Ict6', 'H8wX6YWf5K', '2024-04-25 03:17:34', '2024-04-25 03:17:34'),
(4, 'Mr. Darryl Daniel', 'khyatt@example.org', '2024-04-25 03:17:33', '$2y$12$PgvpSiMSvlOnklFiAvHBMOoInJNrYOljI6RkAjPaGgr6lHO19Ict6', 'JEc8VikIqK', '2024-04-25 03:17:34', '2024-04-25 03:17:34'),
(5, 'Catherine Lang', 'nia04@example.net', '2024-04-25 03:17:33', '$2y$12$PgvpSiMSvlOnklFiAvHBMOoInJNrYOljI6RkAjPaGgr6lHO19Ict6', 'L5pCQiLd5V', '2024-04-25 03:17:34', '2024-04-25 03:17:34'),
(6, 'Delmer Roberts', 'jazmyn36@example.com', '2024-04-25 03:17:33', '$2y$12$PgvpSiMSvlOnklFiAvHBMOoInJNrYOljI6RkAjPaGgr6lHO19Ict6', 'vZqP9ay3bA', '2024-04-25 03:17:34', '2024-04-25 03:17:34'),
(7, 'Karine Torp', 'hkozey@example.org', '2024-04-25 03:17:33', '$2y$12$PgvpSiMSvlOnklFiAvHBMOoInJNrYOljI6RkAjPaGgr6lHO19Ict6', 'IBYniGGx2e', '2024-04-25 03:17:34', '2024-04-25 03:17:34'),
(8, 'Dr. Candido Waelchi MD', 'shany.goodwin@example.org', '2024-04-25 03:17:33', '$2y$12$PgvpSiMSvlOnklFiAvHBMOoInJNrYOljI6RkAjPaGgr6lHO19Ict6', 'InkXh0HFVJ', '2024-04-25 03:17:34', '2024-04-25 03:17:34'),
(9, 'Anthony Jaskolski', 'gkonopelski@example.org', '2024-04-25 03:17:33', '$2y$12$PgvpSiMSvlOnklFiAvHBMOoInJNrYOljI6RkAjPaGgr6lHO19Ict6', '0oSKhjskv4', '2024-04-25 03:17:34', '2024-04-25 03:17:34'),
(10, 'Filiberto Barton', 'juanita20@example.net', '2024-04-25 03:17:33', '$2y$12$PgvpSiMSvlOnklFiAvHBMOoInJNrYOljI6RkAjPaGgr6lHO19Ict6', 'CoXmAuV1PK', '2024-04-25 03:17:34', '2024-04-25 03:17:34'),
(11, 'Mr. Nicholaus Russel DDS', 'albin18@example.com', '2024-04-25 03:18:39', '$2y$12$TvNSl5qg0JE.e2OwddhAVuNBETbmG9ZoE7t.J7aozVPVj3obB2DWG', 'FBpt3Sm7As', '2024-04-25 03:18:40', '2024-04-25 03:18:40'),
(12, 'Althea Beatty DVM', 'klebsack@example.com', '2024-04-25 03:18:39', '$2y$12$TvNSl5qg0JE.e2OwddhAVuNBETbmG9ZoE7t.J7aozVPVj3obB2DWG', '48gaMtqtYi', '2024-04-25 03:18:40', '2024-04-25 03:18:40'),
(13, 'Arjun Daugherty', 'elaina.feil@example.org', '2024-04-25 03:18:39', '$2y$12$TvNSl5qg0JE.e2OwddhAVuNBETbmG9ZoE7t.J7aozVPVj3obB2DWG', '8M1oAlPRPj', '2024-04-25 03:18:40', '2024-04-25 03:18:40'),
(14, 'Fermin Schinner', 'vterry@example.org', '2024-04-25 03:18:39', '$2y$12$TvNSl5qg0JE.e2OwddhAVuNBETbmG9ZoE7t.J7aozVPVj3obB2DWG', 'OiatKvf88h', '2024-04-25 03:18:40', '2024-04-25 03:18:40'),
(15, 'Anais Purdy', 'donnie78@example.org', '2024-04-25 03:18:39', '$2y$12$TvNSl5qg0JE.e2OwddhAVuNBETbmG9ZoE7t.J7aozVPVj3obB2DWG', 'UY7WoUyEte', '2024-04-25 03:18:40', '2024-04-25 03:18:40'),
(16, 'Jany Senger V', 'emelia02@example.org', '2024-04-25 03:18:39', '$2y$12$TvNSl5qg0JE.e2OwddhAVuNBETbmG9ZoE7t.J7aozVPVj3obB2DWG', 'dZ5BFRXjqP', '2024-04-25 03:18:40', '2024-04-25 03:18:40'),
(17, 'Javon Bruen', 'camylle24@example.net', '2024-04-25 03:18:39', '$2y$12$TvNSl5qg0JE.e2OwddhAVuNBETbmG9ZoE7t.J7aozVPVj3obB2DWG', '7SiBlQjoaY', '2024-04-25 03:18:40', '2024-04-25 03:18:40'),
(18, 'Alena Johnston MD', 'caroline65@example.org', '2024-04-25 03:18:39', '$2y$12$TvNSl5qg0JE.e2OwddhAVuNBETbmG9ZoE7t.J7aozVPVj3obB2DWG', 'zlSCp7sy5h', '2024-04-25 03:18:40', '2024-04-25 03:18:40'),
(19, 'Geovanny Schinner', 'jerry.gibson@example.com', '2024-04-25 03:18:39', '$2y$12$TvNSl5qg0JE.e2OwddhAVuNBETbmG9ZoE7t.J7aozVPVj3obB2DWG', 'jtUhEcEUmf', '2024-04-25 03:18:40', '2024-04-25 03:18:40'),
(20, 'Dr. Tomas Larson IV', 'ryan.dimitri@example.net', '2024-04-25 03:18:39', '$2y$12$TvNSl5qg0JE.e2OwddhAVuNBETbmG9ZoE7t.J7aozVPVj3obB2DWG', 'LEekcaPM24', '2024-04-25 03:18:40', '2024-04-25 03:18:40'),
(21, 'Colby Schaefer', 'runte.fiona@example.com', '2024-04-25 03:19:38', '$2y$12$iKgYc9ZwgNEweznrTW0gOOHSUH3hv5S7sb3e/i0Dt7WG8ViRCP15m', 'M52JQnyvTr', '2024-04-25 03:19:38', '2024-04-25 03:19:38'),
(22, 'Elliot Schmeler', 'ali.cole@example.org', '2024-04-25 03:19:38', '$2y$12$iKgYc9ZwgNEweznrTW0gOOHSUH3hv5S7sb3e/i0Dt7WG8ViRCP15m', 'crBmyHpOOE', '2024-04-25 03:19:38', '2024-04-25 03:19:38'),
(23, 'Prof. Gilda Ledner II', 'konopelski.buster@example.org', '2024-04-25 03:19:38', '$2y$12$iKgYc9ZwgNEweznrTW0gOOHSUH3hv5S7sb3e/i0Dt7WG8ViRCP15m', 'BPnwH0HmSJ', '2024-04-25 03:19:38', '2024-04-25 03:19:38'),
(24, 'Talia Ebert DVM', 'ondricka.augusta@example.com', '2024-04-25 03:19:38', '$2y$12$iKgYc9ZwgNEweznrTW0gOOHSUH3hv5S7sb3e/i0Dt7WG8ViRCP15m', 'R1whAeW5X5', '2024-04-25 03:19:38', '2024-04-25 03:19:38'),
(25, 'Isadore Larkin', 'pearlie40@example.org', '2024-04-25 03:19:38', '$2y$12$iKgYc9ZwgNEweznrTW0gOOHSUH3hv5S7sb3e/i0Dt7WG8ViRCP15m', 'xsRwa9FoNT', '2024-04-25 03:19:38', '2024-04-25 03:19:38'),
(26, 'Xzavier Hill', 'conn.sally@example.net', '2024-04-25 03:19:38', '$2y$12$iKgYc9ZwgNEweznrTW0gOOHSUH3hv5S7sb3e/i0Dt7WG8ViRCP15m', 'fUJC5modxA', '2024-04-25 03:19:38', '2024-04-25 03:19:38'),
(27, 'Lurline Rohan', 'cswift@example.net', '2024-04-25 03:19:38', '$2y$12$iKgYc9ZwgNEweznrTW0gOOHSUH3hv5S7sb3e/i0Dt7WG8ViRCP15m', 'T97wTZBD3I', '2024-04-25 03:19:38', '2024-04-25 03:19:38'),
(28, 'Robb Oberbrunner', 'wblick@example.org', '2024-04-25 03:19:38', '$2y$12$iKgYc9ZwgNEweznrTW0gOOHSUH3hv5S7sb3e/i0Dt7WG8ViRCP15m', 'MM77e5UH5O', '2024-04-25 03:19:38', '2024-04-25 03:19:38'),
(29, 'Aubree Price', 'turner56@example.com', '2024-04-25 03:19:38', '$2y$12$iKgYc9ZwgNEweznrTW0gOOHSUH3hv5S7sb3e/i0Dt7WG8ViRCP15m', 'kTaovoU2QM', '2024-04-25 03:19:38', '2024-04-25 03:19:38'),
(30, 'Jedediah Kuhn', 'eugenia.schulist@example.com', '2024-04-25 03:19:38', '$2y$12$iKgYc9ZwgNEweznrTW0gOOHSUH3hv5S7sb3e/i0Dt7WG8ViRCP15m', 'kjVo8zcqIB', '2024-04-25 03:19:38', '2024-04-25 03:19:38'),
(31, 'Emilie Feil', 'powlowski.krystel@example.com', '2024-04-25 03:33:47', '$2y$12$E04FbE/Iev.uhq65j7WA7Oy92vJmuGJGMGtlR3N6GMvIXxMnfEA.a', 'W4c6wbOiRV', '2024-04-25 03:33:48', '2024-04-25 03:33:48'),
(32, 'Floy Nikolaus', 'glover.waino@example.net', '2024-04-25 03:33:48', '$2y$12$E04FbE/Iev.uhq65j7WA7Oy92vJmuGJGMGtlR3N6GMvIXxMnfEA.a', 'BBKNghNJfn', '2024-04-25 03:33:48', '2024-04-25 03:33:48'),
(33, 'Meagan Fay', 'broderick64@example.net', '2024-04-25 03:33:48', '$2y$12$E04FbE/Iev.uhq65j7WA7Oy92vJmuGJGMGtlR3N6GMvIXxMnfEA.a', 'wXZNPzb9Yo', '2024-04-25 03:33:48', '2024-04-25 03:33:48'),
(34, 'Okey Sipes', 'alexandre.witting@example.org', '2024-04-25 03:33:48', '$2y$12$E04FbE/Iev.uhq65j7WA7Oy92vJmuGJGMGtlR3N6GMvIXxMnfEA.a', 'AbI5av433m', '2024-04-25 03:33:48', '2024-04-25 03:33:48'),
(35, 'Deon Lehner', 'florine.cassin@example.org', '2024-04-25 03:33:48', '$2y$12$E04FbE/Iev.uhq65j7WA7Oy92vJmuGJGMGtlR3N6GMvIXxMnfEA.a', 'sWlCKupx6G', '2024-04-25 03:33:48', '2024-04-25 03:33:48'),
(36, 'Isidro O\'Kon Jr.', 'prohaska.lon@example.net', '2024-04-25 03:33:48', '$2y$12$E04FbE/Iev.uhq65j7WA7Oy92vJmuGJGMGtlR3N6GMvIXxMnfEA.a', 's0NzKEqkax', '2024-04-25 03:33:48', '2024-04-25 03:33:48'),
(37, 'Gertrude Herman', 'smarvin@example.net', '2024-04-25 03:33:48', '$2y$12$E04FbE/Iev.uhq65j7WA7Oy92vJmuGJGMGtlR3N6GMvIXxMnfEA.a', 'x783H58aTi', '2024-04-25 03:33:48', '2024-04-25 03:33:48'),
(38, 'Mr. Jessie Halvorson DDS', 'ledner.mossie@example.net', '2024-04-25 03:33:48', '$2y$12$E04FbE/Iev.uhq65j7WA7Oy92vJmuGJGMGtlR3N6GMvIXxMnfEA.a', 'o6CdC1b44g', '2024-04-25 03:33:48', '2024-04-25 03:33:48'),
(39, 'Raymond Rath', 'shana.kilback@example.com', '2024-04-25 03:33:48', '$2y$12$E04FbE/Iev.uhq65j7WA7Oy92vJmuGJGMGtlR3N6GMvIXxMnfEA.a', 'OXYYJ3FKte', '2024-04-25 03:33:48', '2024-04-25 03:33:48'),
(40, 'Jasen Roberts I', 'conn.dorothea@example.org', '2024-04-25 03:33:48', '$2y$12$E04FbE/Iev.uhq65j7WA7Oy92vJmuGJGMGtlR3N6GMvIXxMnfEA.a', 'S5TJpqsMCq', '2024-04-25 03:33:48', '2024-04-25 03:33:48'),
(41, 'Ola Weissnat', 'qhagenes@example.com', '2024-04-29 01:26:45', '$2y$12$T/axwP/x7K4k/GwdbDFWtOOTk1Y8VQ2eCH70zBg7AOJbJk///IOQS', 'FMTz9CToGq', '2024-04-29 01:26:46', '2024-04-29 01:26:46'),
(42, 'Sarah Feeney MD', 'minnie70@example.org', '2024-04-29 01:26:46', '$2y$12$T/axwP/x7K4k/GwdbDFWtOOTk1Y8VQ2eCH70zBg7AOJbJk///IOQS', 'CDhntRYwlu', '2024-04-29 01:26:46', '2024-04-29 01:26:46'),
(43, 'Prof. Art Bode', 'julien.murazik@example.org', '2024-04-29 01:26:46', '$2y$12$T/axwP/x7K4k/GwdbDFWtOOTk1Y8VQ2eCH70zBg7AOJbJk///IOQS', 'jRkPxrDT1o', '2024-04-29 01:26:46', '2024-04-29 01:26:46'),
(44, 'Edyth Windler', 'shad81@example.net', '2024-04-29 01:26:46', '$2y$12$T/axwP/x7K4k/GwdbDFWtOOTk1Y8VQ2eCH70zBg7AOJbJk///IOQS', '3pjrYMKyQS', '2024-04-29 01:26:46', '2024-04-29 01:26:46'),
(45, 'Assunta Runte', 'jennie01@example.net', '2024-04-29 01:26:46', '$2y$12$T/axwP/x7K4k/GwdbDFWtOOTk1Y8VQ2eCH70zBg7AOJbJk///IOQS', 'Ng9otj61Rb', '2024-04-29 01:26:46', '2024-04-29 01:26:46'),
(46, 'Marjolaine Wisozk', 'beatrice.gorczany@example.net', '2024-04-29 01:26:46', '$2y$12$T/axwP/x7K4k/GwdbDFWtOOTk1Y8VQ2eCH70zBg7AOJbJk///IOQS', 'imo1Mn2srQ', '2024-04-29 01:26:46', '2024-04-29 01:26:46'),
(47, 'Cassidy Stehr', 'carter.sandrine@example.com', '2024-04-29 01:26:46', '$2y$12$T/axwP/x7K4k/GwdbDFWtOOTk1Y8VQ2eCH70zBg7AOJbJk///IOQS', 'M7Rt5ARWaA', '2024-04-29 01:26:46', '2024-04-29 01:26:46'),
(48, 'Dr. Arnold Maggio', 'jed.kuhn@example.org', '2024-04-29 01:26:46', '$2y$12$T/axwP/x7K4k/GwdbDFWtOOTk1Y8VQ2eCH70zBg7AOJbJk///IOQS', 'INDNzU9XLn', '2024-04-29 01:26:46', '2024-04-29 01:26:46'),
(49, 'Vincenzo Dietrich', 'cwindler@example.com', '2024-04-29 01:26:46', '$2y$12$T/axwP/x7K4k/GwdbDFWtOOTk1Y8VQ2eCH70zBg7AOJbJk///IOQS', 'hANfWNaNb2', '2024-04-29 01:26:46', '2024-04-29 01:26:46'),
(50, 'Liana Grant', 'harrison.heidenreich@example.com', '2024-04-29 01:26:46', '$2y$12$T/axwP/x7K4k/GwdbDFWtOOTk1Y8VQ2eCH70zBg7AOJbJk///IOQS', 'GEJBhrhq0n', '2024-04-29 01:26:46', '2024-04-29 01:26:46'),
(51, 'Marlon Gerhold', 'ardella90@example.org', '2024-04-29 01:37:25', '$2y$12$CNg3OdcAiK1fJrXitoohAuFvE.tCKTZD1HcRE8fxOh4PcvJKclY4e', 'CuJM6LQpT9', '2024-04-29 01:37:25', '2024-04-29 01:37:25'),
(52, 'Sophia Larson', 'nsteuber@example.net', '2024-04-29 01:37:25', '$2y$12$CNg3OdcAiK1fJrXitoohAuFvE.tCKTZD1HcRE8fxOh4PcvJKclY4e', '2UqVIXHgRQ', '2024-04-29 01:37:25', '2024-04-29 01:37:25'),
(53, 'Christelle Nicolas MD', 'kristopher51@example.net', '2024-04-29 01:37:25', '$2y$12$CNg3OdcAiK1fJrXitoohAuFvE.tCKTZD1HcRE8fxOh4PcvJKclY4e', 'vGka83csyN', '2024-04-29 01:37:25', '2024-04-29 01:37:25'),
(54, 'Ms. Jacynthe Mayer DDS', 'thaddeus74@example.org', '2024-04-29 01:37:25', '$2y$12$CNg3OdcAiK1fJrXitoohAuFvE.tCKTZD1HcRE8fxOh4PcvJKclY4e', 'XkpLWDbhwg', '2024-04-29 01:37:25', '2024-04-29 01:37:25'),
(55, 'Deonte Hegmann', 'cschiller@example.net', '2024-04-29 01:37:25', '$2y$12$CNg3OdcAiK1fJrXitoohAuFvE.tCKTZD1HcRE8fxOh4PcvJKclY4e', 'cu3PMRAU9P', '2024-04-29 01:37:25', '2024-04-29 01:37:25'),
(56, 'Prince Bartell', 'kuhlman.enrique@example.com', '2024-04-29 01:37:25', '$2y$12$CNg3OdcAiK1fJrXitoohAuFvE.tCKTZD1HcRE8fxOh4PcvJKclY4e', 'OqqN4h4WUq', '2024-04-29 01:37:25', '2024-04-29 01:37:25'),
(57, 'Dr. Burdette Balistreri', 'agorczany@example.org', '2024-04-29 01:37:25', '$2y$12$CNg3OdcAiK1fJrXitoohAuFvE.tCKTZD1HcRE8fxOh4PcvJKclY4e', 'NQdQ3gwj8u', '2024-04-29 01:37:25', '2024-04-29 01:37:25'),
(58, 'Connie Corwin', 'stephen83@example.org', '2024-04-29 01:37:25', '$2y$12$CNg3OdcAiK1fJrXitoohAuFvE.tCKTZD1HcRE8fxOh4PcvJKclY4e', '9yi4ptR45q', '2024-04-29 01:37:25', '2024-04-29 01:37:25'),
(59, 'Akeem Sanford', 'heller.mckayla@example.com', '2024-04-29 01:37:25', '$2y$12$CNg3OdcAiK1fJrXitoohAuFvE.tCKTZD1HcRE8fxOh4PcvJKclY4e', 'XSekdJJXog', '2024-04-29 01:37:26', '2024-04-29 01:37:26'),
(60, 'Curt Pouros', 'cledner@example.net', '2024-04-29 01:37:25', '$2y$12$CNg3OdcAiK1fJrXitoohAuFvE.tCKTZD1HcRE8fxOh4PcvJKclY4e', 'CZBogE47Zi', '2024-04-29 01:37:26', '2024-04-29 01:37:26'),
(61, 'Carmella Batz', 'wolf.reilly@example.org', '2024-04-29 01:39:52', '$2y$12$ZnGsTIAle26qEWe9wm4DleKWN.Ox2JYGqgOGzCw5Ko2Nt9tu.DXVK', 'pbYHi8O7hB', '2024-04-29 01:39:52', '2024-04-29 01:39:52'),
(62, 'Prof. Nathaniel Harvey III', 'fmitchell@example.net', '2024-04-29 01:39:52', '$2y$12$ZnGsTIAle26qEWe9wm4DleKWN.Ox2JYGqgOGzCw5Ko2Nt9tu.DXVK', 'HNFYEeYCMP', '2024-04-29 01:39:52', '2024-04-29 01:39:52'),
(63, 'Novella Bernhard', 'senger.josephine@example.com', '2024-04-29 01:39:52', '$2y$12$ZnGsTIAle26qEWe9wm4DleKWN.Ox2JYGqgOGzCw5Ko2Nt9tu.DXVK', 'sXEjvaZOJp', '2024-04-29 01:39:52', '2024-04-29 01:39:52'),
(64, 'Dr. Carissa Vandervort IV', 'ward.pink@example.com', '2024-04-29 01:39:52', '$2y$12$ZnGsTIAle26qEWe9wm4DleKWN.Ox2JYGqgOGzCw5Ko2Nt9tu.DXVK', 'WO7LXMry2W', '2024-04-29 01:39:52', '2024-04-29 01:39:52'),
(65, 'Kaia Schneider', 'ivy10@example.com', '2024-04-29 01:39:52', '$2y$12$ZnGsTIAle26qEWe9wm4DleKWN.Ox2JYGqgOGzCw5Ko2Nt9tu.DXVK', 'ElqYvwtPAp', '2024-04-29 01:39:52', '2024-04-29 01:39:52'),
(66, 'Mable Sawayn', 'vernice.gusikowski@example.org', '2024-04-29 01:39:52', '$2y$12$ZnGsTIAle26qEWe9wm4DleKWN.Ox2JYGqgOGzCw5Ko2Nt9tu.DXVK', 'q7tOXVmpTz', '2024-04-29 01:39:52', '2024-04-29 01:39:52'),
(67, 'Travon Runte', 'rgutkowski@example.net', '2024-04-29 01:39:52', '$2y$12$ZnGsTIAle26qEWe9wm4DleKWN.Ox2JYGqgOGzCw5Ko2Nt9tu.DXVK', 'PviZTYz5wF', '2024-04-29 01:39:52', '2024-04-29 01:39:52'),
(68, 'Alfonso Bogisich', 'katelynn55@example.org', '2024-04-29 01:39:52', '$2y$12$ZnGsTIAle26qEWe9wm4DleKWN.Ox2JYGqgOGzCw5Ko2Nt9tu.DXVK', 'dEYr30UO6i', '2024-04-29 01:39:52', '2024-04-29 01:39:52'),
(69, 'Mrs. Adriana Windler Sr.', 'fmohr@example.com', '2024-04-29 01:39:52', '$2y$12$ZnGsTIAle26qEWe9wm4DleKWN.Ox2JYGqgOGzCw5Ko2Nt9tu.DXVK', 'TIYBlJlQQn', '2024-04-29 01:39:52', '2024-04-29 01:39:52'),
(70, 'Prof. Donnell Hackett V', 'klein.julian@example.net', '2024-04-29 01:39:52', '$2y$12$ZnGsTIAle26qEWe9wm4DleKWN.Ox2JYGqgOGzCw5Ko2Nt9tu.DXVK', '7Wk620mswT', '2024-04-29 01:39:52', '2024-04-29 01:39:52'),
(71, 'Keith Dooley', 'tolson@example.org', '2024-04-29 01:40:25', '$2y$12$JYzldeCheo.CP1C9/jGpLOXIQsfnOlIsjCSMWu0cFI/uGLrHFWASe', 'wWdn9K0X0Z', '2024-04-29 01:40:25', '2024-04-29 01:40:25'),
(72, 'Noah Quitzon', 'etrantow@example.com', '2024-04-29 01:40:25', '$2y$12$JYzldeCheo.CP1C9/jGpLOXIQsfnOlIsjCSMWu0cFI/uGLrHFWASe', 'vPWQKGaa4h', '2024-04-29 01:40:25', '2024-04-29 01:40:25'),
(73, 'Westley Corkery', 'morissette.bulah@example.net', '2024-04-29 01:40:25', '$2y$12$JYzldeCheo.CP1C9/jGpLOXIQsfnOlIsjCSMWu0cFI/uGLrHFWASe', 'LzNbjAtbWI', '2024-04-29 01:40:25', '2024-04-29 01:40:25'),
(74, 'Shana Crona', 'haag.chadrick@example.net', '2024-04-29 01:40:25', '$2y$12$JYzldeCheo.CP1C9/jGpLOXIQsfnOlIsjCSMWu0cFI/uGLrHFWASe', 'ulNeqbrhnf', '2024-04-29 01:40:25', '2024-04-29 01:40:25'),
(75, 'Madelyn Fay', 'neoma.mohr@example.net', '2024-04-29 01:40:25', '$2y$12$JYzldeCheo.CP1C9/jGpLOXIQsfnOlIsjCSMWu0cFI/uGLrHFWASe', 'j573Vz6gOf', '2024-04-29 01:40:25', '2024-04-29 01:40:25'),
(76, 'Dr. Jackeline Dickinson', 'emil19@example.net', '2024-04-29 01:40:25', '$2y$12$JYzldeCheo.CP1C9/jGpLOXIQsfnOlIsjCSMWu0cFI/uGLrHFWASe', 'r5HPEkI8L4', '2024-04-29 01:40:25', '2024-04-29 01:40:25'),
(77, 'Prof. Raoul Kuvalis I', 'katharina18@example.org', '2024-04-29 01:40:25', '$2y$12$JYzldeCheo.CP1C9/jGpLOXIQsfnOlIsjCSMWu0cFI/uGLrHFWASe', 'NprRR09IGf', '2024-04-29 01:40:25', '2024-04-29 01:40:25'),
(78, 'Faye Welch', 'telly11@example.net', '2024-04-29 01:40:25', '$2y$12$JYzldeCheo.CP1C9/jGpLOXIQsfnOlIsjCSMWu0cFI/uGLrHFWASe', 'qCqAA038CE', '2024-04-29 01:40:25', '2024-04-29 01:40:25'),
(79, 'Allie Rutherford', 'ushields@example.net', '2024-04-29 01:40:25', '$2y$12$JYzldeCheo.CP1C9/jGpLOXIQsfnOlIsjCSMWu0cFI/uGLrHFWASe', '6AT1c1MGsT', '2024-04-29 01:40:25', '2024-04-29 01:40:25'),
(80, 'Carmen Simonis', 'julianne00@example.net', '2024-04-29 01:40:25', '$2y$12$JYzldeCheo.CP1C9/jGpLOXIQsfnOlIsjCSMWu0cFI/uGLrHFWASe', '1ukOd0rXW7', '2024-04-29 01:40:25', '2024-04-29 01:40:25'),
(81, 'dev', 'tets@test.com', NULL, '$2y$12$vzl247ZDR2pXJ/XPwSxq4uGLgZ4JyJjCA98gAcJvzjIvhxM.lkH56', NULL, '2024-04-29 02:07:38', '2024-04-29 02:07:38');

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
-- Indexes for table `pizzas`
--
ALTER TABLE `pizzas`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pizzas`
--
ALTER TABLE `pizzas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=586;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
