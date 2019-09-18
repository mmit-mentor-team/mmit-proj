-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 18, 2019 at 05:43 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `micdb_laravelgit1`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Yangon', 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(2, 'Mandalay', 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hrname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phno` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fblink` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `township_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fees` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `fees`, `location_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'HR/ Admin/ Office Staff Training', '140000', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(2, 'HR/ Admin/ Office Staff Training', '140000', 3, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(3, 'PHP Web Developer Bootcamp', '280000', 1, 29, '2019-08-29 21:49:27', '2019-09-06 01:55:53'),
(4, 'iOS Application Development Training', '200000', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(5, 'PHP Web Developer Bootcamp', '280000', 3, 1, '2019-09-09 00:33:29', '2019-09-09 00:33:50');

-- --------------------------------------------------------

--
-- Table structure for table `dismisses`
--

CREATE TABLE `dismisses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `remark` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `interview_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `durations`
--

CREATE TABLE `durations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `days` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `during` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `durations`
--

INSERT INTO `durations` (`id`, `time`, `days`, `during`, `course_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '9:00 AM- 5:00 PM', 'Monday - Friday', '31', 3, 1, '2019-08-29 21:49:27', '2019-09-06 01:59:05'),
(2, '9:00 AM- 12:00 PM', 'Monday - Friday', '35', 1, 1, '2019-08-29 21:49:27', '2019-09-06 01:59:12'),
(3, '1:00 PM - 3:00 PM', 'Monday - Friday', '53', 1, 1, '2019-08-29 21:49:27', '2019-09-06 01:59:20'),
(4, '3:00 PM - 5:00 PM', 'Monday - Friday', '53', 1, 1, '2019-08-29 21:49:27', '2019-09-06 01:59:31'),
(5, '9:00 AM- 12:00 PM', 'Monday - Friday', '36', 2, 1, '2019-08-29 21:49:27', '2019-09-06 01:59:37'),
(6, '1:00 PM - 3:00 PM', 'Monday - Friday', '54', 2, 1, '2019-08-29 21:49:27', '2019-09-06 01:59:44'),
(7, '7:00 AM - 8:30 AM', 'Monday - Friday', '54', 2, 1, '2019-08-29 21:49:27', '2019-09-06 01:59:54'),
(8, '1:00 PM - 4:00 PM', 'Monday - Friday', '36', 2, 1, '2019-08-29 21:49:27', '2019-09-06 02:00:00'),
(9, '2:00 PM - 4:00 PM', 'Saturday - Sunday', '60', 4, 1, '2019-08-29 21:49:27', '2019-09-06 02:00:05'),
(10, '4:00 PM- 6:00 PM', 'Saturday - Sunday', '60', 4, 1, '2019-08-29 21:49:27', '2019-09-06 02:00:10'),
(12, '9:00 AM-5:00PM', 'Monday-friday', '30', 5, 1, '2019-09-09 01:21:17', '2019-09-09 01:21:17');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hires`
--

CREATE TABLE `hires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `startdate` date NOT NULL,
  `salary` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `interview_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `incomes`
--

CREATE TABLE `incomes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inquires`
--

CREATE TABLE `inquires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receiveno` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `age` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `phno` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `installmentdate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `installmentamount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `camp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'No Camp',
  `education` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acceptedyear` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `township_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inquires`
--

INSERT INTO `inquires` (`id`, `receiveno`, `name`, `gender`, `dob`, `age`, `address`, `phno`, `email`, `installmentdate`, `installmentamount`, `remark`, `position`, `camp`, `education`, `acceptedyear`, `section_id`, `township_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '060920190001', 'MgMg', 'male', '2019-09-06', '24', 'add', '', '', '', '', '', '', 'No Camp', '', '', 0, 0, 0, NULL, NULL),
(2, '060920190002', 'Naing Zaw', 'male', '1992-04-04', '27', 'Yangon', '09965034779', 'ack.ayechankhin@gmail.com', '2019-09-06', '80000', 'aergetsrgdtr', 'PHP', 'No Camp', 'Bachelor', '2019-09-03', 1, 13, 3, '2019-09-06 02:42:41', '2019-09-06 02:42:41'),
(3, '070920190001', 'Thet Paing Htut', 'male', '2019-09-01', '24', 'Magangone, Yangon', '0987654321', 'thetpainghtut.bf@gmail.com', '2019-09-07', '40000', 'good all fine thank you', 'he', NULL, 'BA Myanmar', '2019-09-06', 2, 23, 1, '2019-09-07 08:22:01', '2019-09-07 08:22:01'),
(4, '060920190002', 'Si Thu', 'male', '1992-04-04', '27', 'Yangon', '09965034779', 'ack.ayechankhin@gmail.com', '2019-09-06', '80000', 'web developer position', 'PHP', 'No Camp', 'Bachelor', '2019-09-03', 1, 13, 3, '2019-09-06 02:42:41', '2019-09-06 02:42:41'),
(5, '060920190002', 'Nyi Ye lin', 'male', '1992-04-04', '27', 'Yangon', '09965034779', 'ack.ayechankhin@gmail.com', '2019-09-06', '80000', 'web developer position', 'PHP', 'No Camp', 'Bachelor', '2019-09-03', 1, 13, 3, '2019-09-06 02:42:41', '2019-09-06 02:42:41'),
(8, '090920190001', 'aco', 'female', '2019-09-19', '23', 'mandalay', '0987654321', 'he@gmail.com', '2019-09-09', '280000', 'prettty good', 'full stack developer', NULL, 'BE(IT)', '2019-06-11', 4, 48, 1, '2019-09-09 01:27:37', '2019-09-09 01:27:37'),
(9, '110920190001', 'sandarmoon1', 'female', '1996-02-23', '24', 'yangon', '098765432', 'sandarmoon1@gmail.com', '2019-09-11', '50000', 'left to paid', 'account holder', NULL, 'B.SC(MCC)', '2016-09-11', 2, 2, 1, '2019-09-10 21:43:43', '2019-09-10 21:43:43');

-- --------------------------------------------------------

--
-- Table structure for table `interviews`
--

CREATE TABLE `interviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `appointment` date NOT NULL,
  `remark` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `jobcareer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobcareers`
--

CREATE TABLE `jobcareers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senddate` date NOT NULL,
  `remark` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `position_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `city_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'တိုက်အမှတ် (၁၆၉)၊ အခန်းနံပါတ် 8/A၊ MTP ကွန်ဒို၊ လှည်းတန်း - အင်းစိန်လမ်းမကြီး၊ ၉ ရပ်ကွက်၊ လှိုင်မြို့နယ်၊။', 1, 29, '2019-08-29 21:49:27', '2019-09-06 01:57:12'),
(2, 'တိုက်အမှတ် (29 A/ 5A) ၊ No.1 Beauty Saloon အပေါ်ထပ် ၅ လွှာ ၊ ခိုင်ရွှေဝါလမ်း လှည်းတန်း။', 1, 29, '2019-08-29 21:49:27', '2019-09-06 01:57:30'),
(3, 'လမ်း ၄၀ ၊ ၇၀x ၇၁ ကြား ၊ ဝါမြဲ Learning Center', 2, 29, '2019-08-29 21:49:27', '2019-09-06 01:57:46');

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_04_07_050121_create_cities_table', 1),
(9, '2019_04_07_050226_create_townships_table', 1),
(10, '2019_04_07_050423_create_positions_table', 1),
(11, '2019_04_07_050506_create_locations_table', 1),
(12, '2019_04_07_050552_create_expenses_table', 1),
(13, '2019_04_07_050836_create_incomes_table', 1),
(14, '2019_04_07_050959_create_courses_table', 1),
(15, '2019_04_07_051057_create_durations_table', 1),
(16, '2019_04_07_064513_create_staffs_table', 1),
(17, '2019_04_07_064815_create_teachers_table', 1),
(18, '2019_04_07_065002_create_sections_table', 1),
(19, '2019_04_07_065258_create_companies_table', 1),
(20, '2019_04_07_065532_create_inquires_table', 1),
(21, '2019_04_07_070821_create_students_table', 1),
(22, '2019_04_07_071143_create_jobcareers_table', 1),
(23, '2019_04_07_071422_create_interviews_table', 1),
(24, '2019_04_07_072231_create_hires_table', 1),
(25, '2019_04_07_072414_create_dismisses_table', 1),
(26, '2019_04_07_072452_create_attendances_table', 1),
(27, '2019_04_07_095702_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(1, 'App\\User', 2),
(1, 'App\\User', 3),
(1, 'App\\User', 29),
(1, 'App\\User', 30),
(2, 'App\\User', 1),
(2, 'App\\User', 2),
(2, 'App\\User', 3),
(2, 'App\\User', 29),
(2, 'App\\User', 30),
(3, 'App\\User', 1),
(3, 'App\\User', 2),
(3, 'App\\User', 7),
(3, 'App\\User', 29),
(3, 'App\\User', 30),
(4, 'App\\User', 1),
(4, 'App\\User', 2),
(4, 'App\\User', 3),
(4, 'App\\User', 29),
(4, 'App\\User', 30),
(5, 'App\\User', 1),
(5, 'App\\User', 2),
(5, 'App\\User', 3),
(5, 'App\\User', 29),
(5, 'App\\User', 30),
(6, 'App\\User', 1),
(6, 'App\\User', 2),
(6, 'App\\User', 3),
(6, 'App\\User', 29),
(6, 'App\\User', 30),
(7, 'App\\User', 1),
(7, 'App\\User', 2),
(7, 'App\\User', 7),
(7, 'App\\User', 10),
(7, 'App\\User', 29),
(7, 'App\\User', 30),
(8, 'App\\User', 1),
(8, 'App\\User', 2),
(8, 'App\\User', 3),
(8, 'App\\User', 29),
(8, 'App\\User', 30),
(9, 'App\\User', 1),
(9, 'App\\User', 2),
(9, 'App\\User', 3),
(9, 'App\\User', 29),
(9, 'App\\User', 30),
(10, 'App\\User', 1),
(10, 'App\\User', 2),
(10, 'App\\User', 4),
(10, 'App\\User', 5),
(10, 'App\\User', 29),
(10, 'App\\User', 30),
(11, 'App\\User', 1),
(11, 'App\\User', 2),
(11, 'App\\User', 8),
(11, 'App\\User', 9),
(11, 'App\\User', 29),
(11, 'App\\User', 30),
(12, 'App\\User', 1),
(12, 'App\\User', 2),
(12, 'App\\User', 6),
(12, 'App\\User', 29),
(12, 'App\\User', 30),
(13, 'App\\User', 1),
(13, 'App\\User', 2),
(13, 'App\\User', 29),
(13, 'App\\User', 30),
(14, 'App\\User', 1),
(14, 'App\\User', 11),
(14, 'App\\User', 12),
(14, 'App\\User', 13),
(14, 'App\\User', 14),
(14, 'App\\User', 15),
(14, 'App\\User', 16),
(14, 'App\\User', 17),
(14, 'App\\User', 18),
(14, 'App\\User', 19),
(14, 'App\\User', 20),
(14, 'App\\User', 21),
(14, 'App\\User', 22),
(14, 'App\\User', 23),
(14, 'App\\User', 24),
(14, 'App\\User', 25),
(14, 'App\\User', 26),
(14, 'App\\User', 27),
(14, 'App\\User', 28),
(14, 'App\\User', 29),
(14, 'App\\User', 30);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(1, 'App\\User', 29),
(1, 'App\\User', 30),
(2, 'App\\User', 2),
(2, 'App\\User', 3),
(2, 'App\\User', 5),
(2, 'App\\User', 8),
(3, 'App\\User', 4),
(3, 'App\\User', 6),
(3, 'App\\User', 7),
(3, 'App\\User', 9),
(3, 'App\\User', 10),
(4, 'App\\User', 11),
(4, 'App\\User', 12),
(4, 'App\\User', 22),
(4, 'App\\User', 23),
(4, 'App\\User', 24),
(4, 'App\\User', 25),
(4, 'App\\User', 26),
(4, 'App\\User', 27),
(4, 'App\\User', 28),
(5, 'App\\User', 13),
(5, 'App\\User', 14),
(5, 'App\\User', 15),
(5, 'App\\User', 16),
(5, 'App\\User', 17),
(5, 'App\\User', 18),
(5, 'App\\User', 19),
(5, 'App\\User', 20),
(5, 'App\\User', 21);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Accept Student Enquiry ( PHP Bootcamp - YGN )', 'web', '2019-08-29 21:50:58', '2019-08-29 21:50:58'),
(2, 'Accept Student Enquiry ( HR - YGN )', 'web', '2019-08-29 21:51:15', '2019-08-29 21:51:15'),
(3, 'Accept Student Enquiry ( HR - MDY )', 'web', '2019-08-29 21:51:24', '2019-08-29 21:51:24'),
(4, 'Accept Student Enquiry ( iOS - YGN )', 'web', '2019-08-29 21:51:33', '2019-08-29 21:51:33'),
(5, 'Enroll Student ( PHP Bootcamp - YGN )', 'web', '2019-08-29 21:51:41', '2019-08-29 21:51:41'),
(6, 'Enroll Student ( HR - YGN )', 'web', '2019-08-29 21:51:50', '2019-08-29 21:51:50'),
(7, 'Enroll Student ( HR - MDY )', 'web', '2019-08-29 21:51:59', '2019-08-29 21:51:59'),
(8, 'Enroll Student ( iOS - YGN )', 'web', '2019-08-29 21:52:09', '2019-08-29 21:52:09'),
(9, 'Schedule Timetable', 'web', '2019-08-29 21:52:21', '2019-08-29 21:52:21'),
(10, 'Find HR Jobs ( YGN )', 'web', '2019-08-29 21:52:30', '2019-08-29 21:52:30'),
(11, 'Find HR Jobs ( MDY )', 'web', '2019-08-29 21:52:39', '2019-08-29 21:52:39'),
(12, 'Find PHP Jobs', 'web', '2019-08-29 21:52:47', '2019-08-29 21:52:47'),
(13, 'Record Expense', 'web', '2019-08-29 21:52:56', '2019-08-29 21:52:56'),
(14, 'Took Attendance', 'web', '2019-08-29 21:53:07', '2019-08-29 21:53:07');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'HR', 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(2, 'Admin', 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(3, 'Office Staff', 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(4, 'Sale Admin', 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(5, 'Resception', 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(6, 'Data Entry', 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Boss', 'web', '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(2, 'Senior Consultant', 'web', '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(3, 'Junior Consultant', 'web', '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(4, 'Teacher', 'web', '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(5, 'Mentor', 'web', '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(6, 'Admin Assistant', 'web', '2019-08-29 21:49:27', '2019-08-29 21:49:27');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codeno` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `duration_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `codeno`, `title`, `startdate`, `enddate`, `duration_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '7th Oct 2019', 'Batch 10', '2019-10-07', '2019-11-22', 1, 29, '2019-09-06 02:03:09', '2019-09-06 02:03:09'),
(2, '16th Sep 2019', 'Sep 16 batch', '2019-09-16', '2019-11-07', 2, 1, '2019-09-07 08:17:08', '2019-09-07 08:17:08'),
(4, '9th Sep 2019', 'batch1', '2019-09-09', '2019-10-23', 12, 1, '2019-09-09 01:23:23', '2019-09-09 01:23:23');

-- --------------------------------------------------------

--
-- Table structure for table `section_teacher`
--

CREATE TABLE `section_teacher` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `section_teacher`
--

INSERT INTO `section_teacher` (`id`, `section_id`, `teacher_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-09-06 10:03:09', '2019-09-06 10:03:09'),
(2, 1, 2, '2019-09-06 10:03:09', '2019-09-06 10:03:09'),
(3, 2, 5, '2019-09-07 16:17:08', '2019-09-07 16:17:08'),
(4, 4, 10, '2019-09-09 07:53:23', '2019-09-09 07:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dob` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fathername` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nrc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `joineddate` date NOT NULL,
  `leavedate` date NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`id`, `dob`, `fathername`, `nrc`, `phone`, `photo`, `joineddate`, `leavedate`, `status`, `location_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '1993-10-20', 'U Mg Mg', '8/Ma Tha Na (N) 102279', '987654321', '1567139342.jpeg', '2017-08-17', '2019-08-30', '0', 1, 2, '2019-08-29 21:59:02', '2019-08-29 21:59:02'),
(2, '1995-06-14', 'U Mg Mg', '987654321', '987654321', '1567139400.jpeg', '2017-08-17', '2019-08-30', '0', 1, 3, '2019-08-29 22:00:00', '2019-08-29 22:00:00'),
(3, '1995-06-14', 'U Mg Mg', '987654321', '987654321', '1567139547.jpeg', '2017-08-17', '2019-08-30', '0', 1, 4, '2019-08-29 22:02:27', '2019-08-29 22:02:27'),
(4, '1995-06-14', 'U Mg Mg', '987654321', '987654321', '1567139598.jpeg', '2017-07-17', '2019-08-30', '0', 1, 5, '2019-08-29 22:03:19', '2019-08-29 22:03:19'),
(5, '1995-06-14', 'U Mg Mg', '987654321', '987654321', '1567139730.jpeg', '2017-08-17', '2019-08-30', '0', 1, 6, '2019-08-29 22:05:31', '2019-08-29 22:05:31'),
(6, '1995-06-14', 'U Mg Mg', '987654321', '987654321', '1567140057.jpeg', '2017-07-17', '2019-08-30', '0', 3, 7, '2019-08-29 22:10:57', '2019-08-29 22:10:57'),
(7, '1995-06-14', 'U Mg Mg', '987654321', '987654321', '1567140233.jpeg', '2017-08-17', '2019-08-30', '0', 3, 8, '2019-08-29 22:13:54', '2019-08-29 22:13:54'),
(8, '1995-06-14', 'U Mg Mg', '987654321', '987654321', '1567140287.jpeg', '2017-08-17', '2019-08-30', '0', 3, 9, '2019-08-29 22:14:47', '2019-08-29 22:14:47'),
(9, '1995-06-14', 'U Mg Mg', '987654321', '987654321', '1567140333.jpeg', '2017-08-17', '2019-08-30', '0', 3, 10, '2019-08-29 22:15:33', '2019-08-29 22:15:33'),
(10, '1995-06-14', 'U Mg Mg', '987654321', '987654321', '1567140438.jpeg', '2017-08-17', '2019-08-30', '0', 1, 11, '2019-08-29 22:17:18', '2019-08-29 22:17:18'),
(11, '1995-06-14', 'U Mg Mg', '12/AHLANA(N)047531', '987654321', '1567140475.jpeg', '2017-08-17', '2019-08-30', '0', 1, 12, '2019-08-29 22:17:55', '2019-08-29 22:17:55'),
(12, '1997-11-05', 'U Mg Mg', '987654321', '987654321', '1567140530.jpeg', '2017-08-17', '2019-08-30', '0', 1, 13, '2019-08-29 22:18:50', '2019-09-05 10:50:09'),
(13, '1995-06-14', 'U Mg Mg', '987654321', '987654321', '1567140615.jpeg', '2017-08-17', '2019-08-30', '0', 1, 14, '2019-08-29 22:20:15', '2019-08-29 22:20:15'),
(14, '1995-06-14', 'U Mg Mg', '987654321', '987654321', '1567140721.jpeg', '2017-08-17', '2019-08-30', '0', 1, 15, '2019-08-29 22:22:01', '2019-08-29 22:22:01'),
(15, '1995-06-14', 'U Mg Mg', '987654321', '987654321', '1567140781.jpeg', '2017-08-17', '2019-08-30', '0', 1, 16, '2019-08-29 22:23:01', '2019-08-29 22:23:01'),
(16, '1995-06-14', 'U Mg Mg', '987654321', '987654321', '1567140853.jpeg', '2017-08-17', '2019-08-30', '0', 1, 17, '2019-08-29 22:24:13', '2019-08-29 22:24:13'),
(17, '1995-06-14', 'U Mg Mg', '987654321', '987654321', '1567140908.jpeg', '2017-07-17', '2019-08-30', '0', 1, 18, '2019-08-29 22:25:09', '2019-08-29 22:25:09'),
(18, '1995-06-14', 'U Mg Mg', '987654321', '987654321', '1567140962.jpeg', '2017-07-17', '2019-08-30', '0', 1, 19, '2019-08-29 22:26:02', '2019-08-29 22:26:02'),
(19, '1995-06-14', 'U Mg Mg', '987654321', '987654321', '1567141015.jpeg', '2017-08-17', '2019-08-30', '0', 1, 20, '2019-08-29 22:26:56', '2019-08-29 22:26:56'),
(20, '1995-06-14', 'U Mg Mg', '987654321', '987654321', '1567141068.jpeg', '2017-08-17', '2019-08-30', '0', 1, 21, '2019-08-29 22:27:48', '2019-08-29 22:27:48'),
(21, '1995-06-14', 'U Mg Mg', '987654321', '987654321', '1567141113.jpeg', '2017-08-17', '2019-08-30', '0', 2, 22, '2019-08-29 22:28:33', '2019-08-29 22:28:33'),
(22, '1995-06-14', 'U Mg Mg', '987654321', '987654321', '1567141143.jpeg', '2017-07-17', '2019-08-30', '0', 2, 23, '2019-08-29 22:29:03', '2019-08-29 22:29:03'),
(23, '1995-06-14', 'U Mg Mg', '987654321', '987654321', '1567141235.jpeg', '2015-12-31', '2019-08-30', '0', 2, 24, '2019-08-29 22:30:36', '2019-08-29 22:30:36'),
(24, '1995-06-14', 'U Mg Mg', '987654321', '987654321', '1567141275.jpeg', '2015-12-31', '2019-08-30', '0', 3, 25, '2019-08-29 22:31:15', '2019-08-29 22:31:15'),
(25, '1995-06-14', 'U Mg Mg', '987654321', '987654321', '1567141339.jpeg', '2015-11-29', '2019-08-30', '0', 3, 26, '2019-08-29 22:32:19', '2019-08-29 22:32:19'),
(26, '1995-06-14', 'U Mg Mg', '987654321', '987654321', '1567141373.png', '2015-11-28', '2019-08-30', '0', 3, 27, '2019-08-29 22:32:53', '2019-08-29 22:32:53'),
(27, '1995-06-14', 'U Mg Mg', '987654321', '987654321', '1567141402.jpeg', '2015-11-28', '2019-08-30', '0', 1, 28, '2019-08-29 22:33:22', '2019-08-29 22:33:22'),
(28, '1990-12-04', 'U Mg Mg', '987654321', '987654321', '1567703546.jpeg', '2019-09-01', '2019-09-05', '0', 1, 29, '2019-09-05 10:42:26', '2019-09-05 10:42:26'),
(29, '1990-12-04', 'U Mg Mg', '987654321', '987654321', '1567703574.jpeg', '2019-09-01', '2019-09-05', '0', 1, 30, '2019-09-05 10:42:54', '2019-09-05 10:42:54');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `secinstallmentdate` date NOT NULL,
  `secinstallmentamount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `inquire_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `secinstallmentdate`, `secinstallmentamount`, `remark`, `resume`, `status`, `inquire_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2019-09-18', '200000', 'hello', 'no resume', 1, 2, 1, '2019-09-11 20:24:20', '2019-09-17 20:46:23'),
(2, '2019-09-12', '200000', 'no thing', 'no resume', 0, 4, 1, '2019-09-11 20:25:35', '2019-09-11 20:25:35'),
(3, '2019-09-12', '0', 'no thing', 'no resume', 0, 5, 1, '2019-09-11 20:26:29', '2019-09-11 20:26:29');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `staff_id`, `course_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 10, 3, 1, '2019-08-29 22:36:50', '2019-08-29 22:36:50'),
(2, 11, 3, 1, '2019-08-29 22:36:54', '2019-08-29 22:36:54'),
(3, 27, 4, 1, '2019-08-29 22:36:59', '2019-08-29 22:36:59'),
(4, 21, 1, 1, '2019-08-29 22:37:05', '2019-08-29 22:37:05'),
(5, 22, 1, 1, '2019-08-29 22:37:10', '2019-08-29 22:37:10'),
(6, 23, 1, 1, '2019-08-29 22:37:15', '2019-08-29 22:37:15'),
(7, 24, 2, 1, '2019-08-29 22:37:23', '2019-08-29 22:37:23'),
(8, 25, 2, 1, '2019-08-29 22:37:26', '2019-08-29 22:37:26'),
(9, 26, 2, 1, '2019-08-29 22:37:31', '2019-08-29 22:37:31'),
(10, 10, 5, 1, '2019-09-09 01:22:48', '2019-09-09 01:22:48');

-- --------------------------------------------------------

--
-- Table structure for table `townships`
--

CREATE TABLE `townships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `townships`
--

INSERT INTO `townships` (`id`, `name`, `city_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Lanmadaw', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(2, 'Latha', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(3, 'Kyauktada', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(4, 'Pabedan', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(5, 'Pazundaung', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(6, 'Ahlone', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(7, 'Kyeemyindaing', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(8, 'Sanchaung', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(9, 'Bahan', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(10, 'Botahtaung', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(11, 'Mingalartaungnyunt', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(12, 'Tamwe', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(13, 'Yankin', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(14, 'Dagon', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(15, 'Dagon Myothit (East)', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(16, 'Dagon Myothit (North)', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(17, 'Dagon Myothit (South)', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(18, 'Dagon Myothit (Seikkan)', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(19, 'Kamaryut', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(20, 'Insein', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(21, 'Hlaing', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(22, 'Hlaingtharya', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(23, 'Mayangone', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(24, 'Mingaladon', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(25, 'North Okkalapa', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(26, 'South Okkalapa', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(27, 'Thingangyun', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(28, 'Thaketa', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(29, 'Thanlyin', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(30, 'Dala', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(31, 'Dawbon', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(32, 'Hmawbi', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(33, 'Hlegu', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(34, 'Htantabin', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(35, 'Kawhmu', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(36, 'Kayan', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(37, 'Kungyangon', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(38, 'Shwepyithar', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(39, 'Taikkyi', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(40, 'Thongwa', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(41, 'Twantay', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(42, 'Kyauktan', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(43, 'Seikgyikanaungto', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(44, 'Palae Myothit', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(45, 'Palae Myothit', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(46, 'Aung Myay Thar Zan', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(47, 'Chan Aye Thar Zan', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(48, 'Chan Mya Thazi', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(49, 'Chan Mya Thar Si', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(50, 'Kyaukpadaung', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(51, 'Kyaukse', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(52, 'Maha Aungmye', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(53, 'Mahlaing', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(54, 'Meiktila', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(55, 'Mogok', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(56, 'Myingyan', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(57, 'Myittha', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(58, 'Natogyi', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(59, 'Ngazun', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(60, 'Nyaung-U', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(61, 'Patheingyi', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(62, 'Pyawbwe ', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(63, 'Pyigyidagun ', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(64, 'Pyinoolwin', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(65, 'Singu', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(66, 'Sintgaing', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(67, 'Tada-U', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(68, 'Taungtha', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(69, 'Thabeikkyin', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(70, 'Thazi', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(71, 'Wundwin', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(72, 'Yamethin', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Developer', 'developer@gmail.com', 1, NULL, '$2y$10$QZVlOyuMMtnI7xFTs..wz.wLLId0xeVbEmM03aWkdsGWJzBOYEF9.', NULL, '2019-08-29 21:50:02', '2019-08-29 21:50:02'),
(2, 'Yin Min Ei', 'yinmin.mic@gmail.com', 2, NULL, '$2y$10$iJA07pnNM7ZLwTIDSablq.rIpcQW87X4/gZciV0t5RmRhwJ3WRX/u', NULL, '2019-08-29 21:59:02', '2019-08-29 21:59:02'),
(3, 'Aye Chan Khin', 'ayechankhin.mic@gmail.com', 2, NULL, '$2y$10$lN3In17ak1m3PPhMUMsCcuWF8SDOIlAj9EAnM6RIioPkx3cOL8FQ.', NULL, '2019-08-29 22:00:00', '2019-08-29 22:00:00'),
(4, 'Htet Htet Wai', 'htetwai.mic@gmail.com', 3, NULL, '$2y$10$TbDw6iSC3Y5aFihV8hWYie46ztVDp8GvNKOAdYyAjh8KuTossGLr2', NULL, '2019-08-29 22:02:27', '2019-08-29 22:02:27'),
(5, 'Naing Zaw', 'naingzaw@myanmaritc.com', 2, NULL, '$2y$10$td22rzMEq97eJ31SW6SFKOpH.zO4se9dlt9vLcyJYPKeNey6icWU6', NULL, '2019-08-29 22:03:19', '2019-08-29 22:03:19'),
(6, 'Khin Mar Myint', 'khinmarmyint.mic@gmail.com', 3, NULL, '$2y$10$9bdihFi6cx5futNQnQVKHeCk3Q8pahF2DAnpZu59fxiQF7vj.6fo2', NULL, '2019-08-29 22:05:31', '2019-08-29 22:05:31'),
(7, 'Thiri Don', 'thiridon@gmail.com', 2, NULL, '$2y$10$x8HiZ6nA132jg7LwiIfPtOkDE4GqHNfY0plUlUpuU7IqWOFlwAG1i', NULL, '2019-08-29 22:10:57', '2019-08-29 22:10:57'),
(8, 'Khin Moet Moet Naing', 'khinmoetmoetnaing@gmail.com', 2, NULL, '$2y$10$8o642C23UWSvuDqyanknvOWUrPZHRJURnD91qungBjnKeBhXTd0IO', NULL, '2019-08-29 22:13:54', '2019-08-29 22:13:54'),
(9, 'Yi Yi Lwin', 'yiyilwin@gmail.com', 3, NULL, '$2y$10$GBRO.HyZIR8fkw4/mjggAeWJAyBX2AaQvZcNFBGU96oTcnEfby8uG', NULL, '2019-08-29 22:14:47', '2019-08-29 22:14:47'),
(10, 'Kay Thidar Khaing', 'kaythidarkhaing@gmail.com', 3, NULL, '$2y$10$xSL.1PP3X5rD2DnbnYU6/OzK9QIsYCOQFstr800o0Zc2uSxWMBDPq', NULL, '2019-08-29 22:15:33', '2019-08-29 22:15:33'),
(11, 'Thet Paing Htut', 'thetpainghtut.bf@gmail.com', 4, NULL, '$2y$10$oWSXFfnDH8MemBjQJNGnEOeiuulqgByZiAta3Ysp9xS4tbzewdbjW', NULL, '2019-08-29 22:17:18', '2019-08-29 22:17:18'),
(12, 'Ya Thaw Myat Noe', 'yathawmyatnoe007@gmail.com', 4, NULL, '$2y$10$DSM7Fvc0E6ybhakRhdAsdOtP0UKunJUbNr/.RRSdonw0m5dxnBHRW', NULL, '2019-08-29 22:17:55', '2019-09-06 00:40:42'),
(13, 'Hein Min Htet', 'heinminhtet8138@gmail.com', 5, NULL, '$2y$10$gTFgfWtOKTlzQJTdodr9L.g4K08vTAl4DQ3Ip87qg/Hj5aR389Xpu', NULL, '2019-08-29 22:18:50', '2019-08-29 22:18:50'),
(14, 'Aye Lwin Soe', 'ayelwinsoe@gmail.com', 5, NULL, '$2y$10$LTAE5M6YfEAbXdLug7piVOw1RzVUGQuUatpaLIDoa9DIs.An88zz2', NULL, '2019-08-29 22:20:15', '2019-08-29 22:20:15'),
(15, 'Chan Ei Mhwe', 'chaneimhmweit@gmail.com', 5, NULL, '$2y$10$S9sQZy8gRk24TkJ6P9s9LO1xxLcN5ZES5MAZ2ZIwyxw3Cz0KwEN6i', NULL, '2019-08-29 22:22:01', '2019-08-29 22:22:01'),
(16, 'Min Pike Mhu', 'minpikemhu10@gmail.com', 5, NULL, '$2y$10$JC2i91PGeWpWhq6UY.BJXutl1UXl0TuzZtxwuavx3.gso4uV69W8i', NULL, '2019-08-29 22:23:01', '2019-08-29 22:23:01'),
(17, 'Honey Htun', 'hannihtun195@gmail.com', 5, NULL, '$2y$10$PY0/zSEhfQW5Sm1aM63R3eMapqdlKiYM3TN8KrZuCUcM8DNLQvPfe', NULL, '2019-08-29 22:24:13', '2019-08-29 22:24:13'),
(18, 'Si Thu Aung', 'sithuaung182@gmail.com', 5, NULL, '$2y$10$qd.Ntk5XlOVNiJRz5PU36.40yrEY4ob.yrKpIRtq/3QllYIXuJvq2', NULL, '2019-08-29 22:25:09', '2019-08-29 22:25:09'),
(19, 'Kyaw Zin Aung', 'kyawzinaung@gmail.com', 5, NULL, '$2y$10$VBky6P.phSJjECOYLO2/gefQwNt6Q8AHndgHCOFJ9ROKe7DfWlkgW', NULL, '2019-08-29 22:26:02', '2019-08-29 22:26:02'),
(20, 'Aye Chan Oo', 'chanlaymaymay23@gmail.com', 5, NULL, '$2y$10$.WexCKAmyUrd35VrT6hjAe.u9lFayZ6PF7/Y52ZCt4c9Ab0QGtJN2', NULL, '2019-08-29 22:26:56', '2019-08-29 22:26:56'),
(21, 'Nyi Ye Lin', 'nyiyelin4@gmail.com', 5, NULL, '$2y$10$/RItyZuUw0Xm9uR9BiQPQuVbA2RDX3Uuh6Z4X4lt/DpoaT9812qSC', NULL, '2019-08-29 22:27:48', '2019-08-29 22:27:48'),
(22, 'July Oo', 'julykolay@gmail.com', 4, NULL, '$2y$10$0CZWDqNYEYlwe8wYuKRaW.RVNpHj.GK.6cR2s/UZys/q1u6E4O3ce', NULL, '2019-08-29 22:28:33', '2019-08-29 22:28:33'),
(23, 'Pyae Phyo Khaing', 'goodtruefriend@gmail.com', 4, NULL, '$2y$10$WBUEgpHp/4wwtorDoZFKkeS0oyEQgtZxdGJ0T2.c99qHyLvaIhvK.', NULL, '2019-08-29 22:29:03', '2019-08-29 22:29:03'),
(24, 'Thi Dar Htut', 'thidarhtut@gmail.com', 4, NULL, '$2y$10$li3ZpdhvwgO8OqmhKSKvt.Hf5hTHK2zY9i5l9rpOVZIc.bt96TmiW', NULL, '2019-08-29 22:30:36', '2019-08-29 22:30:36'),
(25, 'Phyu Phyu Khaing Aye', 'phyuphyukhaingaye@gmail.com', 4, NULL, '$2y$10$UNgFOiIJ4jxG36DEltg5cuD6MowKdhDmEAeZhaKGxDijRPcorbyjG', NULL, '2019-08-29 22:31:15', '2019-08-29 22:31:15'),
(26, 'Thuzar Myint', 'thuzarmyint@gmail.com', 4, NULL, '$2y$10$zYU9EZsvq5E5EZ6xy4GCI.UPgshFRO/n/6ZlsORIgnGIhUlUQ/zAG', NULL, '2019-08-29 22:32:19', '2019-08-29 22:32:19'),
(27, 'Kyi Kyi Swe', 'kyikyiswe@gmail.com', 4, NULL, '$2y$10$6.j11JH3YjITbgOnJ8DfluvOBgijgV6HdPMO6vDjYjdEf4g/EmpDy', NULL, '2019-08-29 22:32:53', '2019-08-29 22:32:53'),
(28, 'Min Aung Hein', 'minaunghein@gmail.com', 4, NULL, '$2y$10$c47xV3dYs.34Re2z6bGUsuN8DAce62PaaKx6xT4g310bgMSnEIY8O', NULL, '2019-08-29 22:33:22', '2019-08-29 22:33:22'),
(29, 'Yan Myoe Aung', 'yanmyoeaung@gmail.com', 1, NULL, '$2y$10$il0BM.4W4uHcRm/ySJfVp.jrhigei5UtTsItq6UJNOaWOAiNwElga', NULL, '2019-09-05 10:42:26', '2019-09-05 10:42:26'),
(30, 'Zar Chi Lin', 'zarchilin@gmail.com', 1, NULL, '$2y$10$hTelmC4CtZXC3xK/jdVtd.SOl0Vf626LdypWP16E7l7uQ16tTwkbS', NULL, '2019-09-05 10:42:54', '2019-09-05 10:42:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dismisses`
--
ALTER TABLE `dismisses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `durations`
--
ALTER TABLE `durations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hires`
--
ALTER TABLE `hires`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquires`
--
ALTER TABLE `inquires`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interviews`
--
ALTER TABLE `interviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobcareers`
--
ALTER TABLE `jobcareers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_teacher`
--
ALTER TABLE `section_teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `townships`
--
ALTER TABLE `townships`
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
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dismisses`
--
ALTER TABLE `dismisses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `durations`
--
ALTER TABLE `durations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hires`
--
ALTER TABLE `hires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inquires`
--
ALTER TABLE `inquires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `interviews`
--
ALTER TABLE `interviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobcareers`
--
ALTER TABLE `jobcareers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `section_teacher`
--
ALTER TABLE `section_teacher`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `townships`
--
ALTER TABLE `townships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
