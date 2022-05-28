-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2022 at 07:36 PM
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

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'eslam elbanna', 'eslam2@gmail.com', '$2y$10$9Jd23QaQlx0FswifTSuHt.YImnnTAwKIEhPoW4c0LaBYdK.tusD2S', '2022-05-23 13:07:17', '2022-05-23 13:07:17');

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

--
-- Dumping data for table `contact_infos`
--

INSERT INTO `contact_infos` (`id`, `key_en`, `key_ar`, `value`, `created_at`, `updated_at`) VALUES
(1, 'phone', 'الهاتف', '01012703464', NULL, NULL),
(2, 'fax', 'الفاكس', '01012703464', NULL, NULL),
(3, 'email', 'البريد الإلكتروني', 'we-work@gmail.com', NULL, NULL),
(4, 'text messages', 'رسائل نصية', '546456', NULL, NULL),
(5, 'mail box', 'صندوق البريد', '1325645', NULL, NULL),
(6, 'Postal code', 'الرمز البريدي', '1325645', NULL, NULL);

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
(43, '2014_10_12_000000_create_users_table', 1),
(44, '2014_10_12_100000_create_password_resets_table', 1),
(45, '2019_08_19_000000_create_failed_jobs_table', 1),
(46, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(47, '2022_04_17_211400_create_admins_table', 1),
(48, '2022_04_18_152454_create_clients_table', 1),
(49, '2022_04_18_154853_create_teams_table', 1),
(50, '2022_04_26_200051_create_join_us_table', 1),
(51, '2022_05_21_155743_create_projects_table', 1),
(52, '2022_05_21_160022_create_project_attaches_table', 1),
(53, '2022_05_22_151950_create_contacts_table', 1),
(54, '2022_05_22_160630_create_contact_infos_table', 1),
(55, '2022_05_22_164806_create_sliders_table', 1),
(56, '2022_05_22_170447_create_social_media_table', 1);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Admin', 1, 'my-app-token', '35eacc3580132c274469d48131b75728b732faa330813191d3d2bf90e1e4ed7b', '[\"*\"]', '2022-05-23 13:14:46', '2022-05-23 13:07:54', '2022-05-23 13:14:46');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_en` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_ar` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_ar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selected` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `type_en`, `type_ar`, `logo`, `title_en`, `title_ar`, `description_en`, `description_ar`, `link1`, `link2`, `selected`, `created_at`, `updated_at`) VALUES
(1, 'app', 'تطبيق', 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'googleplay.com', 'appstore.com', 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(2, 'app', 'تطبيق', 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'googleplay.com', 'appstore.com', 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(3, 'app', 'تطبيق', 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'googleplay.com', 'appstore.com', 0, '2022-10-11 22:00:00', '2022-10-11 22:00:00'),
(4, 'app', 'تطبيق', 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'googleplay.com', 'appstore.com', 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(5, 'app', 'تطبيق', 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'googleplay.com', 'appstore.com', 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(6, 'website', 'موقع', 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'website.com', NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(7, 'website', 'موقع', 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'website.com', NULL, 0, '2022-10-09 22:00:00', '2022-10-14 22:00:00'),
(8, 'website', 'موقع', 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'website.com', NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(9, 'website', 'موقع', 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'website.com', NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(10, 'website', 'موقع', 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'website.com', NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(11, 'ui/ux', 'ui/ux', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(12, 'ui/ux', 'ui/ux', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-17 22:00:00'),
(13, 'ui/ux', 'ui/ux', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(14, 'ui/ux', 'ui/ux', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(15, 'ui/ux', 'ui/ux', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(16, 'interior design', 'تصميم داخلي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(17, 'interior design', 'تصميم داخلي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-19 22:00:00'),
(18, 'interior design', 'تصميم داخلي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(19, 'interior design', 'تصميم داخلي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(20, 'interior design', 'تصميم داخلي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(21, 'exterior design', 'تصميم خارجي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(22, 'exterior design', 'تصميم خارجي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(23, 'exterior design', 'تصميم خارجي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(24, 'exterior design', 'تصميم خارجي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(25, 'exterior design', 'تصميم خارجي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(26, 'shop drawing', 'تصور سوقي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(27, 'shop drawing', 'تصور سوقي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(28, 'shop drawing', 'تصور سوقي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(29, 'shop drawing', 'تصور سوقي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(30, 'shop drawing', 'تصور سوقي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(31, 'photography', 'تصوير', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(32, 'photography', 'تصوير', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(33, 'photography', 'تصوير', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(34, 'photography', 'تصوير', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(35, 'photography', 'تصوير', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(36, 'motion graphics', 'رسوم متحركة', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(37, 'motion graphics', 'رسوم متحركة', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(38, 'motion graphics', 'رسوم متحركة', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(39, 'motion graphics', 'رسوم متحركة', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(40, 'motion graphics', 'رسوم متحركة', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, '2022-10-09 22:00:00', '2022-10-09 22:00:00'),
(41, 'app', 'تطبيق', 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'googleplay.com', 'appstore.com', 0, NULL, NULL),
(42, 'app', 'تطبيق', 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'googleplay.com', 'appstore.com', 0, NULL, NULL),
(43, 'app', 'تطبيق', 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'googleplay.com', 'appstore.com', 0, NULL, NULL),
(44, 'app', 'تطبيق', 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'googleplay.com', 'appstore.com', 0, NULL, NULL),
(45, 'app', 'تطبيق', 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'googleplay.com', 'appstore.com', 0, NULL, NULL),
(46, 'website', 'موقع', 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'website.com', NULL, 0, NULL, NULL),
(47, 'website', 'موقع', 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'website.com', NULL, 0, NULL, NULL),
(48, 'website', 'موقع', 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'website.com', NULL, 0, NULL, NULL),
(49, 'website', 'موقع', 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'website.com', NULL, 0, NULL, NULL),
(50, 'website', 'موقع', 'https://product.logo.com', 'Title', 'عنوان', 'description', 'وصف', 'website.com', NULL, 0, NULL, NULL),
(51, 'ui/ux', 'ui/ux', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(52, 'ui/ux', 'ui/ux', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(53, 'ui/ux', 'ui/ux', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(54, 'ui/ux', 'ui/ux', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(55, 'ui/ux', 'ui/ux', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(56, 'interior design', 'تصميم داخلي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(57, 'interior design', 'تصميم داخلي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(58, 'interior design', 'تصميم داخلي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(59, 'interior design', 'تصميم داخلي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(60, 'interior design', 'تصميم داخلي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(61, 'exterior design', 'تصميم خارجي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(62, 'exterior design', 'تصميم خارجي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(63, 'exterior design', 'تصميم خارجي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(64, 'exterior design', 'تصميم خارجي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(65, 'exterior design', 'تصميم خارجي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(66, 'shop drawing', 'تصور سوقي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(67, 'shop drawing', 'تصور سوقي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(68, 'shop drawing', 'تصور سوقي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(69, 'shop drawing', 'تصور سوقي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(70, 'shop drawing', 'تصور سوقي', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(71, 'photography', 'تصوير', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(72, 'photography', 'تصوير', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(73, 'photography', 'تصوير', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(74, 'photography', 'تصوير', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(75, 'photography', 'تصوير', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(76, 'motion graphics', 'رسوم متحركة', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(77, 'motion graphics', 'رسوم متحركة', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(78, 'motion graphics', 'رسوم متحركة', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(79, 'motion graphics', 'رسوم متحركة', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL),
(80, 'motion graphics', 'رسوم متحركة', NULL, 'Title', 'عنوان', 'description', 'وصف', NULL, NULL, 0, NULL, NULL);

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
(1, 1, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(2, 1, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(3, 1, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(4, 1, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(5, 1, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(6, 1, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(7, 1, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(8, 2, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(9, 2, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(10, 2, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(11, 2, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(12, 2, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(13, 2, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(14, 2, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(15, 3, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(16, 3, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(17, 3, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(18, 3, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(19, 3, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(20, 3, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(21, 3, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(22, 4, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(23, 4, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(24, 4, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(25, 4, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(26, 4, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(27, 4, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(28, 4, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(29, 5, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(30, 5, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(31, 5, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(32, 5, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(33, 5, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(34, 5, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(35, 5, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(36, 6, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(37, 6, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(38, 6, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(39, 6, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(40, 6, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(41, 6, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(42, 6, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(43, 7, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(44, 7, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(45, 7, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(46, 7, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(47, 7, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(48, 7, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(49, 7, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(50, 8, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(51, 8, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(52, 8, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(53, 8, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(54, 8, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(55, 8, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(56, 8, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(57, 9, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(58, 9, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(59, 9, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(60, 9, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(61, 9, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(62, 9, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(63, 9, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(64, 10, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(65, 10, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(66, 10, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(67, 10, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(68, 10, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(69, 10, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(70, 10, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(71, 11, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(72, 11, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(73, 11, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(74, 11, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(75, 11, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(76, 11, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(77, 11, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(78, 12, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(79, 12, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(80, 12, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(81, 12, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(82, 12, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(83, 12, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(84, 12, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(85, 13, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(86, 13, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(87, 13, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(88, 13, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(89, 13, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(90, 13, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(91, 13, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(92, 14, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(93, 14, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(94, 14, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(95, 14, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(96, 14, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(97, 14, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(98, 14, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(99, 15, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(100, 15, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(101, 15, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(102, 15, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(103, 15, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(104, 15, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(105, 15, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(106, 16, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(107, 16, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(108, 16, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(109, 16, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(110, 16, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(111, 16, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(112, 16, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(113, 17, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(114, 17, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(115, 17, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(116, 17, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(117, 17, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(118, 17, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(119, 17, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(120, 18, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(121, 18, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(122, 18, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(123, 18, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(124, 18, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(125, 18, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(126, 18, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(127, 19, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(128, 19, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(129, 19, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(130, 19, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(131, 19, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(132, 19, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(133, 19, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(134, 20, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(135, 20, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(136, 20, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(137, 20, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(138, 20, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(139, 20, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(140, 20, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(141, 21, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(142, 21, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(143, 21, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(144, 21, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(145, 21, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(146, 21, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(147, 21, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(148, 22, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(149, 22, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(150, 22, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(151, 22, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(152, 22, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(153, 22, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(154, 22, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(155, 23, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(156, 23, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(157, 23, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(158, 23, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(159, 23, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(160, 23, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(161, 23, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(162, 24, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(163, 24, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(164, 24, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(165, 24, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(166, 24, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(167, 24, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(168, 24, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(169, 25, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(170, 25, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(171, 25, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(172, 25, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(173, 25, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(174, 25, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(175, 25, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(176, 26, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(177, 26, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(178, 26, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(179, 26, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(180, 26, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(181, 26, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(182, 26, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(183, 27, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(184, 27, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(185, 27, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(186, 27, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(187, 27, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(188, 27, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(189, 27, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(190, 28, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(191, 28, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(192, 28, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(193, 28, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(194, 28, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(195, 28, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(196, 28, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(197, 29, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(198, 29, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(199, 29, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(200, 29, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(201, 29, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(202, 29, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(203, 29, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(204, 30, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(205, 30, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(206, 30, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(207, 30, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(208, 30, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(209, 30, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(210, 30, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(211, 31, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(212, 31, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(213, 31, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(214, 31, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(215, 31, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(216, 31, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(217, 31, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(218, 32, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(219, 32, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(220, 32, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(221, 32, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(222, 32, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(223, 32, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(224, 32, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(225, 33, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(226, 33, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(227, 33, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(228, 33, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(229, 33, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(230, 33, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(231, 33, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(232, 34, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(233, 34, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(234, 34, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(235, 34, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(236, 34, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(237, 34, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(238, 34, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(239, 35, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(240, 35, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(241, 35, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(242, 35, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(243, 35, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(244, 35, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(245, 35, 'https://product.image.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(246, 36, 'https://product.video.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(247, 37, 'https://product.video.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(248, 38, 'https://product.video.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(249, 39, 'https://product.video.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(250, 40, 'https://product.video.com', '2022-05-22 17:40:48', '2022-05-22 17:40:48'),
(251, 41, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(252, 41, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(253, 41, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(254, 41, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(255, 41, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(256, 41, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(257, 41, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(258, 42, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(259, 42, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(260, 42, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(261, 42, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(262, 42, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(263, 42, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(264, 42, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(265, 43, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(266, 43, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(267, 43, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(268, 43, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(269, 43, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(270, 43, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(271, 43, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(272, 44, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(273, 44, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(274, 44, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(275, 44, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(276, 44, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(277, 44, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(278, 44, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(279, 45, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(280, 45, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(281, 45, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(282, 45, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(283, 45, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(284, 45, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(285, 45, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(286, 46, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(287, 46, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(288, 46, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(289, 46, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(290, 46, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(291, 46, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(292, 46, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(293, 47, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(294, 47, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(295, 47, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(296, 47, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(297, 47, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(298, 47, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(299, 47, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(300, 48, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(301, 48, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(302, 48, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(303, 48, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(304, 48, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(305, 48, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(306, 48, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(307, 49, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(308, 49, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(309, 49, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(310, 49, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(311, 49, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(312, 49, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(313, 49, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(314, 50, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(315, 50, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(316, 50, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(317, 50, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(318, 50, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(319, 50, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(320, 50, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(321, 51, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(322, 51, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(323, 51, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(324, 51, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(325, 51, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(326, 51, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(327, 51, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(328, 52, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(329, 52, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(330, 52, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(331, 52, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(332, 52, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(333, 52, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(334, 52, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(335, 53, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(336, 53, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(337, 53, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(338, 53, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(339, 53, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(340, 53, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(341, 53, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(342, 54, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(343, 54, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(344, 54, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(345, 54, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(346, 54, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(347, 54, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(348, 54, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(349, 55, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(350, 55, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(351, 55, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(352, 55, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(353, 55, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(354, 55, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(355, 55, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(356, 56, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(357, 56, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(358, 56, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(359, 56, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(360, 56, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(361, 56, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(362, 56, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(363, 57, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(364, 57, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(365, 57, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(366, 57, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(367, 57, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(368, 57, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(369, 57, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(370, 58, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(371, 58, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(372, 58, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(373, 58, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(374, 58, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(375, 58, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(376, 58, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(377, 59, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(378, 59, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(379, 59, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(380, 59, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(381, 59, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(382, 59, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(383, 59, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(384, 60, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(385, 60, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(386, 60, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(387, 60, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(388, 60, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(389, 60, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(390, 60, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(391, 61, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(392, 61, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(393, 61, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(394, 61, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(395, 61, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(396, 61, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(397, 61, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(398, 62, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(399, 62, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(400, 62, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(401, 62, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(402, 62, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(403, 62, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(404, 62, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(405, 63, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(406, 63, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(407, 63, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(408, 63, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(409, 63, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(410, 63, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(411, 63, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(412, 64, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(413, 64, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(414, 64, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(415, 64, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(416, 64, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(417, 64, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(418, 64, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(419, 65, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(420, 65, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(421, 65, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(422, 65, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(423, 65, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(424, 65, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(425, 65, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(426, 66, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(427, 66, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(428, 66, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(429, 66, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(430, 66, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(431, 66, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(432, 66, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(433, 67, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(434, 67, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(435, 67, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(436, 67, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(437, 67, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(438, 67, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(439, 67, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(440, 68, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(441, 68, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(442, 68, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(443, 68, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(444, 68, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(445, 68, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(446, 68, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(447, 69, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(448, 69, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(449, 69, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(450, 69, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(451, 69, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(452, 69, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(453, 69, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(454, 70, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(455, 70, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(456, 70, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(457, 70, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(458, 70, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(459, 70, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(460, 70, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(461, 71, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(462, 71, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(463, 71, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(464, 71, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(465, 71, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(466, 71, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(467, 71, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(468, 72, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(469, 72, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(470, 72, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(471, 72, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(472, 72, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(473, 72, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(474, 72, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(475, 73, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(476, 73, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(477, 73, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(478, 73, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(479, 73, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(480, 73, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(481, 73, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(482, 74, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(483, 74, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(484, 74, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(485, 74, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(486, 74, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(487, 74, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(488, 74, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(489, 75, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(490, 75, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(491, 75, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(492, 75, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(493, 75, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(494, 75, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(495, 75, 'https://product.image.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(496, 76, 'https://product.video.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(497, 77, 'https://product.video.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(498, 78, 'https://product.video.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(499, 79, 'https://product.video.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42'),
(500, 80, 'https://product.video.com', '2022-05-22 17:41:42', '2022-05-22 17:41:42');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `project_attaches`
--
ALTER TABLE `project_attaches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

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
