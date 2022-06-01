-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2022 at 02:57 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wework`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_of_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_infos`
--

CREATE TABLE `contact_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `join_us`
--

CREATE TABLE `join_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(73, '2014_10_12_000000_create_users_table', 1),
(74, '2014_10_12_100000_create_password_resets_table', 1),
(75, '2019_08_19_000000_create_failed_jobs_table', 1),
(76, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(77, '2022_04_17_211400_create_admins_table', 1),
(78, '2022_04_18_152454_create_clients_table', 1),
(79, '2022_04_18_154853_create_teams_table', 1),
(80, '2022_04_26_200051_create_join_us_table', 1),
(81, '2022_05_21_155743_create_projects_table', 1),
(82, '2022_05_21_160022_create_project_attaches_table', 1),
(83, '2022_05_22_151950_create_contacts_table', 1),
(84, '2022_05_22_160630_create_contact_infos_table', 1),
(85, '2022_05_22_164806_create_sliders_table', 1),
(86, '2022_05_22_170447_create_social_media_table', 1),
(87, '2022_05_31_113924_create_project_categories_table', 1),
(88, '2022_05_31_114230_create_project_sub_categories_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selected` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `sub_category_id`, `logo`, `title_en`, `title_ar`, `description_en`, `description_ar`, `link1`, `link2`, `selected`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'googleplay.com', 'appstore.com', 1, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(2, 1, 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'googleplay.com', 'appstore.com', 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(3, 1, 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'googleplay.com', 'appstore.com', 1, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(4, 1, 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'googleplay.com', 'appstore.com', 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(5, 1, 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'googleplay.com', 'appstore.com', 1, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(6, 2, 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'website.com', NULL, 1, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(7, 2, 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'website.com', NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(8, 2, 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'website.com', NULL, 1, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(9, 2, 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'website.com', NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(10, 2, 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'website.com', NULL, 1, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(11, 3, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 1, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(12, 3, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(13, 3, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 1, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(14, 3, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(15, 3, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 1, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(16, 4, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(17, 4, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(18, 4, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(19, 4, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(20, 4, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(21, 5, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(22, 5, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(23, 5, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(24, 5, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(25, 5, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(26, 6, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(27, 6, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(28, 6, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(29, 6, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(30, 6, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(31, 7, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(32, 7, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(33, 7, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(34, 7, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(35, 7, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(36, 8, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(37, 8, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(38, 8, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(39, 8, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03'),
(40, 8, NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-05-31 12:33:03', '2022-05-31 12:33:03');

-- --------------------------------------------------------

--
-- Table structure for table `project_attaches`
--

CREATE TABLE `project_attaches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `attach` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_attaches`
--

INSERT INTO `project_attaches` (`id`, `project_id`, `attach`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(2, 1, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(3, 1, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(4, 1, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(5, 1, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(6, 1, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(7, 1, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(8, 2, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(9, 2, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(10, 2, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(11, 2, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(12, 2, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(13, 2, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(14, 2, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(15, 3, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(16, 3, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(17, 3, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(18, 3, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(19, 3, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(20, 3, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(21, 3, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(22, 4, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(23, 4, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(24, 4, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(25, 4, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(26, 4, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(27, 4, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(28, 4, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(29, 5, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(30, 5, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(31, 5, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(32, 5, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(33, 5, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(34, 5, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(35, 5, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(36, 6, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(37, 6, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(38, 6, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(39, 6, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(40, 6, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(41, 6, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(42, 6, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(43, 7, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(44, 7, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(45, 7, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(46, 7, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(47, 7, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(48, 7, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(49, 7, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(50, 8, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(51, 8, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(52, 8, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(53, 8, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(54, 8, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(55, 8, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(56, 8, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(57, 9, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(58, 9, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(59, 9, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(60, 9, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(61, 9, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(62, 9, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(63, 9, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(64, 10, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(65, 10, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(66, 10, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(67, 10, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(68, 10, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(69, 10, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(70, 10, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(71, 11, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(72, 11, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(73, 11, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(74, 11, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(75, 11, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(76, 11, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(77, 11, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(78, 12, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(79, 12, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(80, 12, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(81, 12, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(82, 12, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(83, 12, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(84, 12, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(85, 13, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(86, 13, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(87, 13, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(88, 13, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(89, 13, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(90, 13, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(91, 13, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(92, 14, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(93, 14, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(94, 14, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(95, 14, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(96, 14, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(97, 14, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(98, 14, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(99, 15, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(100, 15, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(101, 15, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(102, 15, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(103, 15, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(104, 15, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(105, 15, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(106, 16, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(107, 16, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(108, 16, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(109, 16, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(110, 16, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(111, 16, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(112, 16, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(113, 17, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(114, 17, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(115, 17, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(116, 17, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(117, 17, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(118, 17, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(119, 17, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(120, 18, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(121, 18, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(122, 18, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(123, 18, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(124, 18, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(125, 18, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(126, 18, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(127, 19, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(128, 19, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(129, 19, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(130, 19, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(131, 19, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(132, 19, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(133, 19, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(134, 20, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(135, 20, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(136, 20, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(137, 20, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(138, 20, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(139, 20, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(140, 20, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(141, 21, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(142, 21, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(143, 21, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(144, 21, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(145, 21, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(146, 21, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(147, 21, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(148, 22, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(149, 22, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(150, 22, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(151, 22, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(152, 22, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(153, 22, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(154, 22, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(155, 23, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(156, 23, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(157, 23, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(158, 23, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(159, 23, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(160, 23, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(161, 23, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(162, 24, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(163, 24, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(164, 24, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(165, 24, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(166, 24, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(167, 24, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(168, 24, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(169, 25, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(170, 25, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(171, 25, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(172, 25, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(173, 25, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(174, 25, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(175, 25, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(176, 26, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(177, 26, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(178, 26, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(179, 26, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(180, 26, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(181, 26, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(182, 26, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(183, 27, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(184, 27, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(185, 27, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(186, 27, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(187, 27, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(188, 27, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(189, 27, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(190, 28, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(191, 28, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(192, 28, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(193, 28, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(194, 28, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(195, 28, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(196, 28, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(197, 29, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(198, 29, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(199, 29, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(200, 29, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(201, 29, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(202, 29, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(203, 29, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(204, 30, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(205, 30, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(206, 30, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(207, 30, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(208, 30, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(209, 30, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(210, 30, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(211, 31, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(212, 31, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(213, 31, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(214, 31, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(215, 31, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(216, 31, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(217, 31, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(218, 32, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(219, 32, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(220, 32, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(221, 32, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(222, 32, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(223, 32, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(224, 32, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(225, 33, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(226, 33, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(227, 33, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(228, 33, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(229, 33, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(230, 33, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(231, 33, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(232, 34, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(233, 34, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(234, 34, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(235, 34, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(236, 34, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(237, 34, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(238, 34, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(239, 35, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(240, 35, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(241, 35, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(242, 35, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(243, 35, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(244, 35, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(245, 35, 'https://product.image.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(246, 36, 'https://product.video.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(247, 37, 'https://product.video.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(248, 38, 'https://product.video.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(249, 39, 'https://product.video.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03'),
(250, 40, 'https://product.video.com', '2022-05-31 10:33:03', '2022-05-31 10:33:03');

-- --------------------------------------------------------

--
-- Table structure for table `project_categories`
--

CREATE TABLE `project_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_categories`
--

INSERT INTO `project_categories` (`id`, `category_name_en`, `category_name_ar`, `created_at`, `updated_at`) VALUES
(1, 'software engineer', 'هندسة البرمجيات', NULL, NULL),
(2, 'decoration', 'التصميم', NULL, NULL),
(3, 'marketing', 'تسويق', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_sub_categories`
--

CREATE TABLE `project_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sub_category_name_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_sub_categories`
--

INSERT INTO `project_sub_categories` (`id`, `category_id`, `sub_category_name_en`, `Sub_category_name_ar`, `created_at`, `updated_at`) VALUES
(1, 1, 'mobile application', 'تطبيق موبايل', NULL, NULL),
(2, 1, 'website', 'موقع الكتروني', NULL, NULL),
(3, 1, 'ui/ux', 'ui/ux', NULL, NULL),
(4, 2, 'interior design', 'تصميم داخلي', NULL, NULL),
(5, 2, 'exterior design', 'تصميم خارجي', NULL, NULL),
(6, 2, 'shop drawing', 'تصور سوقي', NULL, NULL),
(7, 3, 'photography', 'تصوير', NULL, NULL),
(8, 3, 'motion graphics', 'رسوم متحركة', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `instgram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `snapchat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_description_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_description_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_infos`
--
ALTER TABLE `contact_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `join_us`
--
ALTER TABLE `join_us`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_attaches`
--
ALTER TABLE `project_attaches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_categories`
--
ALTER TABLE `project_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_sub_categories`
--
ALTER TABLE `project_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_infos`
--
ALTER TABLE `contact_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `join_us`
--
ALTER TABLE `join_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `project_attaches`
--
ALTER TABLE `project_attaches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `project_categories`
--
ALTER TABLE `project_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `project_sub_categories`
--
ALTER TABLE `project_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
