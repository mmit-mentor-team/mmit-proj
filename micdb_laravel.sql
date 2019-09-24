-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 24, 2019 at 05:26 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `micdb_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` longtext COLLATE utf8mb4_unicode_ci,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `date`, `status`, `remark`, `student_id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, '2019-09-24', '0', 'Absence', 1, 11, '2019-09-24 03:24:43', '2019-09-24 03:24:43'),
(5, '2019-09-24', '1', NULL, 2, 11, '2019-09-24 03:24:43', '2019-09-24 03:24:43'),
(6, '2019-09-24', '1', NULL, 3, 11, '2019-09-24 03:24:43', '2019-09-24 03:24:43'),
(7, '2019-09-24', '1', NULL, 4, 11, '2019-09-24 03:24:43', '2019-09-24 03:24:43'),
(8, '2019-09-24', '1', NULL, 5, 11, '2019-09-24 03:24:43', '2019-09-24 03:24:43'),
(9, '2019-09-24', '1', NULL, 6, 11, '2019-09-24 03:24:43', '2019-09-24 03:24:43'),
(10, '2019-09-24', '1', NULL, 7, 11, '2019-09-24 03:24:43', '2019-09-24 03:24:43'),
(11, '2019-09-24', '1', NULL, 8, 11, '2019-09-24 03:24:43', '2019-09-24 03:24:43'),
(12, '2019-09-24', '1', NULL, 9, 11, '2019-09-24 03:24:43', '2019-09-24 03:24:43'),
(13, '2019-09-24', '1', NULL, 10, 11, '2019-09-24 03:24:43', '2019-09-24 03:24:43'),
(14, '2019-09-24', '1', NULL, 11, 11, '2019-09-24 03:24:57', '2019-09-24 03:24:57'),
(15, '2019-09-24', '1', NULL, 12, 11, '2019-09-24 03:24:57', '2019-09-24 03:24:57'),
(16, '2019-09-24', '1', NULL, 13, 11, '2019-09-24 03:24:57', '2019-09-24 03:24:57'),
(17, '2019-09-24', '1', NULL, 14, 11, '2019-09-24 03:24:57', '2019-09-24 03:24:57'),
(18, '2019-09-24', '1', NULL, 15, 11, '2019-09-24 03:24:57', '2019-09-24 03:24:57'),
(19, '2019-09-24', '1', NULL, 16, 11, '2019-09-24 03:24:57', '2019-09-24 03:24:57'),
(20, '2019-09-24', '1', NULL, 17, 11, '2019-09-24 03:24:57', '2019-09-24 03:24:57'),
(21, '2019-09-24', '1', NULL, 18, 11, '2019-09-24 03:24:57', '2019-09-24 03:24:57'),
(22, '2019-09-24', '1', NULL, 19, 11, '2019-09-24 03:24:57', '2019-09-24 03:24:57'),
(23, '2019-09-24', '1', NULL, 20, 11, '2019-09-24 03:24:57', '2019-09-24 03:24:57'),
(24, '2019-09-24', '1', NULL, 21, 11, '2019-09-24 03:24:58', '2019-09-24 03:24:58'),
(25, '2019-09-24', '1', NULL, 22, 11, '2019-09-24 03:24:58', '2019-09-24 03:24:58'),
(26, '2019-09-24', '1', NULL, 23, 11, '2019-09-24 03:24:58', '2019-09-24 03:24:58'),
(27, '2019-09-24', '1', NULL, 24, 11, '2019-09-24 03:24:58', '2019-09-24 03:24:58'),
(28, '2019-09-24', '1', NULL, 25, 11, '2019-09-24 03:24:58', '2019-09-24 03:24:58'),
(29, '2019-09-24', '1', NULL, 26, 11, '2019-09-24 03:24:58', '2019-09-24 03:24:58'),
(30, '2019-09-24', '1', NULL, 27, 11, '2019-09-24 03:24:58', '2019-09-24 03:24:58'),
(31, '2019-09-24', '1', NULL, 28, 11, '2019-09-24 03:24:58', '2019-09-24 03:24:58'),
(32, '2019-09-24', '1', NULL, 29, 11, '2019-09-24 03:24:58', '2019-09-24 03:24:58'),
(33, '2019-09-24', '1', NULL, 30, 11, '2019-09-24 03:24:58', '2019-09-24 03:24:58'),
(34, '2019-09-24', '1', NULL, 31, 11, '2019-09-24 03:24:59', '2019-09-24 03:24:59'),
(35, '2019-09-24', '1', NULL, 32, 11, '2019-09-24 03:24:59', '2019-09-24 03:24:59'),
(36, '2019-09-24', '1', NULL, 33, 11, '2019-09-24 03:24:59', '2019-09-24 03:24:59'),
(37, '2019-09-24', '1', NULL, 34, 11, '2019-09-24 03:24:59', '2019-09-24 03:24:59'),
(38, '2019-09-24', '1', NULL, 35, 11, '2019-09-24 03:24:59', '2019-09-24 03:24:59'),
(39, '2019-09-24', '1', NULL, 36, 11, '2019-09-24 03:24:59', '2019-09-24 03:24:59'),
(40, '2019-09-24', '1', NULL, 37, 11, '2019-09-24 03:24:59', '2019-09-24 03:24:59'),
(41, '2019-09-24', '1', NULL, 38, 11, '2019-09-24 03:24:59', '2019-09-24 03:24:59'),
(42, '2019-09-24', '1', NULL, 39, 11, '2019-09-24 03:24:59', '2019-09-24 03:24:59'),
(43, '2019-09-24', '1', NULL, 40, 11, '2019-09-24 03:24:59', '2019-09-24 03:24:59'),
(44, '2019-09-24', '1', NULL, 41, 11, '2019-09-24 03:25:00', '2019-09-24 03:25:00'),
(45, '2019-09-24', '1', NULL, 42, 11, '2019-09-24 03:25:00', '2019-09-24 03:25:00'),
(46, '2019-09-24', '1', NULL, 43, 11, '2019-09-24 03:25:00', '2019-09-24 03:25:00'),
(47, '2019-09-24', '1', NULL, 44, 11, '2019-09-24 03:25:00', '2019-09-24 03:25:00'),
(48, '2019-09-24', '1', NULL, 45, 11, '2019-09-24 03:25:00', '2019-09-24 03:25:00'),
(49, '2019-09-24', '1', NULL, 46, 11, '2019-09-24 03:25:00', '2019-09-24 03:25:00'),
(50, '2019-09-24', '1', NULL, 47, 11, '2019-09-24 03:25:00', '2019-09-24 03:25:00'),
(51, '2019-09-24', '1', NULL, 48, 11, '2019-09-24 03:25:00', '2019-09-24 03:25:00'),
(52, '2019-09-24', '1', NULL, 49, 11, '2019-09-24 03:25:00', '2019-09-24 03:25:00'),
(53, '2019-09-24', '1', NULL, 50, 11, '2019-09-24 03:25:00', '2019-09-24 03:25:00'),
(54, '2019-09-24', '1', NULL, 51, 11, '2019-09-24 03:25:00', '2019-09-24 03:25:00'),
(55, '2019-09-24', '1', NULL, 52, 11, '2019-09-24 03:25:00', '2019-09-24 03:25:00'),
(56, '2019-09-24', '1', NULL, 53, 11, '2019-09-24 03:25:00', '2019-09-24 03:25:00'),
(57, '2019-09-24', '1', NULL, 54, 11, '2019-09-24 03:25:00', '2019-09-24 03:25:00'),
(58, '2019-09-24', '1', NULL, 55, 11, '2019-09-24 03:25:00', '2019-09-24 03:25:00'),
(59, '2019-09-24', '1', NULL, 56, 11, '2019-09-24 03:25:00', '2019-09-24 03:25:00'),
(60, '2019-09-24', '1', NULL, 57, 11, '2019-09-24 03:25:00', '2019-09-24 03:25:00'),
(61, '2019-09-24', '1', NULL, 58, 11, '2019-09-24 03:25:00', '2019-09-24 03:25:00'),
(62, '2019-09-24', '1', NULL, 59, 11, '2019-09-24 03:25:00', '2019-09-24 03:25:00'),
(63, '2019-09-24', '1', NULL, 60, 11, '2019-09-24 03:25:00', '2019-09-24 03:25:00'),
(64, '2019-09-24', '1', NULL, 61, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(65, '2019-09-24', '1', NULL, 62, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(66, '2019-09-24', '1', NULL, 63, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(67, '2019-09-24', '1', NULL, 64, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(68, '2019-09-24', '1', NULL, 65, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(69, '2019-09-24', '1', NULL, 66, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(70, '2019-09-24', '1', NULL, 67, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(71, '2019-09-24', '1', NULL, 68, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(72, '2019-09-24', '1', NULL, 69, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(73, '2019-09-24', '1', NULL, 70, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(74, '2019-09-24', '1', NULL, 71, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(75, '2019-09-24', '1', NULL, 72, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(76, '2019-09-24', '1', NULL, 73, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(77, '2019-09-24', '1', NULL, 74, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(78, '2019-09-24', '1', NULL, 75, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(79, '2019-09-24', '1', NULL, 76, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(80, '2019-09-24', '1', NULL, 77, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(81, '2019-09-24', '1', NULL, 78, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(82, '2019-09-24', '1', NULL, 79, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(83, '2019-09-24', '1', NULL, 80, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(84, '2019-09-24', '1', NULL, 81, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(85, '2019-09-24', '1', NULL, 82, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(86, '2019-09-24', '1', NULL, 83, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(87, '2019-09-24', '1', NULL, 84, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(88, '2019-09-24', '1', NULL, 85, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(89, '2019-09-24', '1', NULL, 86, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(90, '2019-09-24', '1', NULL, 87, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(91, '2019-09-24', '1', NULL, 88, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(92, '2019-09-24', '1', NULL, 89, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(93, '2019-09-24', '1', NULL, 90, 11, '2019-09-24 03:25:01', '2019-09-24 03:25:01'),
(94, '2019-09-24', '1', NULL, 91, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(95, '2019-09-24', '1', NULL, 92, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(96, '2019-09-24', '1', NULL, 93, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(97, '2019-09-24', '1', NULL, 94, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(98, '2019-09-24', '1', NULL, 95, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(99, '2019-09-24', '1', NULL, 96, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(100, '2019-09-24', '1', NULL, 97, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(101, '2019-09-24', '1', NULL, 98, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(102, '2019-09-24', '1', NULL, 99, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(103, '2019-09-24', '1', NULL, 100, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(104, '2019-09-24', '1', NULL, 101, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(105, '2019-09-24', '1', NULL, 102, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(106, '2019-09-24', '1', NULL, 103, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(107, '2019-09-24', '1', NULL, 104, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(108, '2019-09-24', '1', NULL, 105, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(109, '2019-09-24', '1', NULL, 106, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(110, '2019-09-24', '1', NULL, 107, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(111, '2019-09-24', '1', NULL, 108, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(112, '2019-09-24', '1', NULL, 109, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(113, '2019-09-24', '1', NULL, 110, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(114, '2019-09-24', '1', NULL, 101, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(115, '2019-09-24', '1', NULL, 102, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(116, '2019-09-24', '1', NULL, 103, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(117, '2019-09-24', '1', NULL, 104, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(118, '2019-09-24', '1', NULL, 105, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(119, '2019-09-24', '1', NULL, 106, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(120, '2019-09-24', '1', NULL, 107, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(121, '2019-09-24', '1', NULL, 108, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(122, '2019-09-24', '1', NULL, 109, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(123, '2019-09-24', '1', NULL, 110, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(124, '2019-09-24', '1', NULL, 111, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(125, '2019-09-24', '1', NULL, 112, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(126, '2019-09-24', '1', NULL, 113, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(127, '2019-09-24', '1', NULL, 114, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(128, '2019-09-24', '1', NULL, 115, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(129, '2019-09-24', '1', NULL, 116, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(130, '2019-09-24', '1', NULL, 117, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(131, '2019-09-24', '1', NULL, 118, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(132, '2019-09-24', '1', NULL, 119, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(133, '2019-09-24', '1', NULL, 120, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(134, '2019-09-24', '1', NULL, 111, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(135, '2019-09-24', '1', NULL, 112, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(136, '2019-09-24', '1', NULL, 113, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(137, '2019-09-24', '1', NULL, 114, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(138, '2019-09-24', '1', NULL, 115, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(139, '2019-09-24', '1', NULL, 116, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(140, '2019-09-24', '1', NULL, 117, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(141, '2019-09-24', '1', NULL, 118, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(142, '2019-09-24', '1', NULL, 119, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(143, '2019-09-24', '1', NULL, 120, 11, '2019-09-24 03:25:02', '2019-09-24 03:25:02'),
(144, '2019-09-24', '1', NULL, 121, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(145, '2019-09-24', '1', NULL, 122, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(146, '2019-09-24', '1', NULL, 123, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(147, '2019-09-24', '1', NULL, 124, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(148, '2019-09-24', '1', NULL, 125, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(149, '2019-09-24', '1', NULL, 126, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(150, '2019-09-24', '1', NULL, 127, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(151, '2019-09-24', '1', NULL, 128, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(152, '2019-09-24', '1', NULL, 129, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(153, '2019-09-24', '1', NULL, 130, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(154, '2019-09-24', '1', NULL, 121, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(155, '2019-09-24', '1', NULL, 122, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(156, '2019-09-24', '1', NULL, 123, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(157, '2019-09-24', '1', NULL, 124, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(158, '2019-09-24', '1', NULL, 125, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(159, '2019-09-24', '1', NULL, 126, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(160, '2019-09-24', '1', NULL, 127, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(161, '2019-09-24', '1', NULL, 128, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(162, '2019-09-24', '1', NULL, 129, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(163, '2019-09-24', '1', NULL, 130, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(164, '2019-09-24', '1', NULL, 131, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(165, '2019-09-24', '1', NULL, 132, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(166, '2019-09-24', '1', NULL, 133, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(167, '2019-09-24', '1', NULL, 134, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(168, '2019-09-24', '1', NULL, 135, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(169, '2019-09-24', '1', NULL, 136, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(170, '2019-09-24', '1', NULL, 137, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(171, '2019-09-24', '1', NULL, 138, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(172, '2019-09-24', '1', NULL, 139, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(173, '2019-09-24', '1', NULL, 140, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(174, '2019-09-24', '1', NULL, 131, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(175, '2019-09-24', '1', NULL, 132, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(176, '2019-09-24', '1', NULL, 133, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(177, '2019-09-24', '1', NULL, 134, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(178, '2019-09-24', '1', NULL, 135, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(179, '2019-09-24', '1', NULL, 136, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(180, '2019-09-24', '1', NULL, 137, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(181, '2019-09-24', '1', NULL, 138, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(182, '2019-09-24', '1', NULL, 139, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(183, '2019-09-24', '1', NULL, 140, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(184, '2019-09-24', '1', NULL, 141, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(185, '2019-09-24', '1', NULL, 142, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(186, '2019-09-24', '1', NULL, 143, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(187, '2019-09-24', '1', NULL, 144, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(188, '2019-09-24', '1', NULL, 145, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(189, '2019-09-24', '1', NULL, 146, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(190, '2019-09-24', '1', NULL, 147, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(191, '2019-09-24', '1', NULL, 148, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(192, '2019-09-24', '1', NULL, 149, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(193, '2019-09-24', '1', NULL, 150, 11, '2019-09-24 03:25:03', '2019-09-24 03:25:03'),
(194, '2019-09-24', '1', NULL, 151, 11, '2019-09-24 03:25:04', '2019-09-24 03:25:04'),
(195, '2019-09-24', '1', NULL, 152, 11, '2019-09-24 03:25:04', '2019-09-24 03:25:04'),
(196, '2019-09-24', '1', NULL, 153, 11, '2019-09-24 03:25:04', '2019-09-24 03:25:04'),
(197, '2019-09-24', '1', NULL, 154, 11, '2019-09-24 03:25:04', '2019-09-24 03:25:04'),
(198, '2019-09-24', '1', NULL, 155, 11, '2019-09-24 03:25:04', '2019-09-24 03:25:04'),
(199, '2019-09-24', '1', NULL, 156, 11, '2019-09-24 03:25:04', '2019-09-24 03:25:04'),
(200, '2019-09-24', '1', NULL, 157, 11, '2019-09-24 03:25:04', '2019-09-24 03:25:04'),
(201, '2019-09-24', '1', NULL, 158, 11, '2019-09-24 03:25:04', '2019-09-24 03:25:04'),
(202, '2019-09-24', '1', NULL, 159, 11, '2019-09-24 03:25:04', '2019-09-24 03:25:04'),
(203, '2019-09-24', '1', NULL, 160, 11, '2019-09-24 03:25:04', '2019-09-24 03:25:04'),
(204, '2019-09-24', '1', NULL, 161, 11, '2019-09-24 03:25:06', '2019-09-24 03:25:06'),
(205, '2019-09-24', '1', NULL, 162, 11, '2019-09-24 03:25:06', '2019-09-24 03:25:06'),
(206, '2019-09-24', '1', NULL, 163, 11, '2019-09-24 03:25:06', '2019-09-24 03:25:06'),
(207, '2019-09-24', '1', NULL, 164, 11, '2019-09-24 03:25:06', '2019-09-24 03:25:06'),
(208, '2019-09-24', '1', NULL, 165, 11, '2019-09-24 03:25:06', '2019-09-24 03:25:06');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `zipcode`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '11181', 'Yangon', 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(2, '05011', 'Mandalay', 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27');

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

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `logo`, `name`, `hrname`, `phno`, `email`, `address`, `remark`, `fblink`, `township_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '1568191631.jpeg', 'ACE Software Myanmar', 'Ma Mya', '0987654321', 'mamya@acemm.com', 'Than Lan', 'good software coltd', 'http://facebook.com', 21, 1, '2019-09-11 00:47:11', '2019-09-11 00:47:11');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codeno` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `courses` (`id`, `codeno`, `name`, `fees`, `location_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '001', 'HR/ Admin/ Office Staff Training', '140000', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(2, '002', 'HR/ Admin/ Office Staff Training', '140000', 3, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(3, '003', 'PHP Web Developer Bootcamp', '280000', 1, 29, '2019-08-29 21:49:27', '2019-09-06 01:55:53'),
(4, '004', 'iOS Application Development Training', '200000', 1, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(5, '005', 'PHP Web Developer Bootcamp', '280000', 3, 1, '2019-09-10 23:52:16', '2019-09-18 03:53:51');

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
(1, '9:00 AM- 5:00 PM', 'Monday - Friday', '30', 3, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(2, '9:00 AM- 5:00 PM', 'Monday - Friday', '30', 5, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(3, '9:00 AM- 12:00 PM', 'Monday - Friday', '35', 1, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(4, '1:00 PM - 3:00 PM', 'Monday - Friday', '53', 1, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(5, '3:00 PM - 5:00 PM', 'Monday - Friday', '53', 1, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(6, '9:00 AM- 12:00 PM', 'Monday - Friday', '35', 2, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(7, '1:00 PM - 3:00 PM', 'Monday - Friday', '45', 2, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(8, '7:00 AM - 8:30 AM', 'Monday - Friday', '60', 2, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(9, '1:00 PM - 4:00 PM', 'Monday - Friday', '35', 2, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(10, '3:00 PM - 5:00 PM', 'Monday - Friday', '45', 2, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(11, '2:00 PM- 4:00 PM', 'Saturday - Sunday', '35', 4, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(12, '4:00 PM- 6:00 PM', 'Saturday - Sunday', '35', 4, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'B.C.Sc', 1, '2019-09-12 04:17:12', '2019-09-12 04:17:12'),
(2, 'B.E (IT)', 1, '2019-09-12 04:17:12', '2019-09-12 04:17:12'),
(3, 'KMD(Diploma)', 1, '2019-09-12 05:30:57', '2019-09-12 05:30:57'),
(4, 'B.A', 7, '2019-09-14 05:25:14', '2019-09-14 05:25:14'),
(5, 'B.Sc', 7, '2019-09-14 05:25:25', '2019-09-14 05:25:25');

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

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `type`, `amount`, `description`, `date`, `attachment`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'PHP', '500000', 'For developter T-shirt', '2019-09-06', '/img/e1.jpg', 1, '2019-09-12 05:28:57', '2019-09-12 05:28:57'),
(2, 'PHP', '100000', 'fvgbhnjmkujk;l\'', '2019-09-12', '/img/Desert.jpg', 1, '2019-09-12 05:58:27', '2019-09-12 05:58:27'),
(3, 'General', '600000', 'ytrfytfrghftgf', '2019-09-12', '/img/e1.jpg', 1, '2019-09-12 06:09:38', '2019-09-12 06:09:38');

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

--
-- Dumping data for table `incomes`
--

INSERT INTO `incomes` (`id`, `amount`, `description`, `date`, `location_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '1500000', 'For September from Ma Zarchi', '2019-09-02', 1, 1, '2019-09-12 05:26:29', '2019-09-12 05:26:29'),
(2, '100000', 'rgthjklgiuhjlljk', '2019-09-12', 2, 1, '2019-09-12 05:57:43', '2019-09-12 05:57:43');

-- --------------------------------------------------------

--
-- Table structure for table `inquires`
--

CREATE TABLE `inquires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inquireno` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiveno` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date DEFAULT NULL,
  `age` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci,
  `phno` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `installmentdate` date NOT NULL,
  `installmentamount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `remark` longtext COLLATE utf8mb4_unicode_ci,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `camp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'No Camp',
  `education` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acceptedyear` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actionstatus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `township_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inquires`
--

INSERT INTO `inquires` (`id`, `inquireno`, `receiveno`, `name`, `gender`, `dob`, `age`, `address`, `phno`, `email`, `installmentdate`, `installmentamount`, `remark`, `position`, `camp`, `education`, `acceptedyear`, `actionstatus`, `section_id`, `township_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '12092019001', '12091900311181001', 'Prof. Reese Thiel I', 'female', '1970-04-06', '', '97838 Murazik Prairie Apt. 393\nBashirianstad, WY 03284-7676', '529-414-4671', 'krajcik.buford@gmail.com', '2019-09-12', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 0, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(2, '12092019002', '12091900311181002', 'Domenico Shields', 'female', '1980-05-19', '', '5893 Diamond Village Suite 722\nGreenholtchester, ME 75879-5613', '508.604.4142', 'awatsica@herman.com', '2019-09-12', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 1, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(3, '12092019003', '12091900311181003', 'Ibrahim Kub DVM', 'female', '2005-12-20', '', '8286 Camden Mission Apt. 826\nEllsworthhaven, KS 73794-0631', '723-803-6303 x7184', 'isai.oconner@yahoo.com', '2019-09-12', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 2, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(4, '12092019004', '12091900311181004', 'Kathryne Walter', 'female', '1973-11-05', '', '7178 Clifford Landing Apt. 722\nShaniyaborough, DE 18856-2365', '+1 (524) 258-4268', 'schumm.erich@yahoo.com', '2019-09-12', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 3, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(5, '12092019005', '12091900311181005', 'Elna Prohaska', 'female', '1984-02-19', '', '97572 Greenholt Alley\nNorth Eltafort, IN 37326', '(543) 559-1443', 'djohnson@hotmail.com', '2019-09-12', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 4, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(6, '12092019006', '12091900311181006', 'Vada Langworth', 'female', '2016-11-24', '', '7379 Kohler Circles Suite 196\nNorth Coltonport, WI 24019-2659', '1-336-588-4093 x099', 'raynor.enrico@gmail.com', '2019-09-12', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 5, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(7, '12092019007', '12091900311181007', 'Destini Sawayn', 'female', '1987-04-10', '', '1412 Hayes Burgs Suite 014\nKoelpinton, SD 79668-0167', '+1 (869) 948-7738', 'emanuel55@gmail.com', '2019-09-12', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 6, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(8, '12092019008', '12091900311181008', 'Miss Kelsie Kulas', 'female', '2019-05-26', '', '5527 Huel Lane Apt. 890\nSouth Stanleyport, AR 06683-7217', '(709) 255-3454 x11919', 'timothy.thiel@mueller.com', '2019-09-12', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 7, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(9, '12092019009', '12091900311181009', 'Mrs. Lizzie Walker MD', 'female', '1995-03-22', '', '30741 Rico Manors\nNew Elias, MA 26021-6678', '(390) 389-0417 x23965', 'norris20@boyer.com', '2019-09-12', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 8, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(10, '12092019010', '12091900311181010', 'Maritza Senger', 'female', '1976-06-09', '', '227 Braun Island\nEast Esther, MS 17551-1074', '(203) 575-6607', 'susana90@gmail.com', '2019-09-12', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 9, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(11, '12092019011', '12091900311181011', 'Fleta Block', 'female', '1971-10-10', '', '69075 Lea Mountains\nWest Jodiehaven, OH 89536', '(473) 546-4451', 'mbeatty@powlowski.com', '2019-09-12', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 10, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(12, '12092019012', '12091900311181012', 'Jessyca Murray', 'female', '2002-03-17', '', '111 Armstrong Key Apt. 154\nGislasonborough, SC 94455-3057', '837-810-8705 x6782', 'arutherford@heaney.info', '2019-09-12', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 11, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(13, '13092019001', '13091900311181001', 'Laurine Heaney', 'female', '1975-07-16', '', '69192 Marian Keys Suite 577\nDevanton, NM 26419', '(672) 517-9521 x95648', 'audra.robel@kreiger.com', '2019-09-13', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(14, '13092019002', '13091900311181002', 'Prof. Vladimir Bergstrom', 'female', '1980-09-19', '', '92804 Jast Grove Suite 549\nRaymundostad, WA 37579', '1-403-839-0358 x7679', 'kdaniel@oreilly.info', '2019-09-13', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(15, '13092019003', '13091900311181003', 'Bertram Ryan', 'female', '1981-09-30', '', '14400 Emard Ramp Apt. 244\nSheridanland, PA 65814-6638', '(828) 610-0171 x6962', 'dominic.powlowski@keebler.info', '2019-09-13', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(16, '13092019004', '13091900311181004', 'Francesca Kerluke', 'female', '2019-05-12', '', '6278 Stoltenberg Crescent\nWest Citlalli, MI 47621', '+18855101691', 'willow.tromp@gmail.com', '2019-09-13', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(17, '13092019005', '13091900311181005', 'Marcia Metz', 'female', '1970-12-27', '', '748 Domenico Parkway Suite 318\nYostborough, MI 59462', '+1 (396) 263-9741', 'mkunze@hotmail.com', '2019-09-13', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(18, '13092019006', '13091900311181006', 'Alyce Klocko', 'female', '2010-06-11', '', '3892 Arlie Mill\nRigobertotown, WV 55711', '+16314884600', 'rippin.reilly@morissette.biz', '2019-09-13', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(19, '13092019007', '13091900311181007', 'Everardo Wolf', 'female', '1971-04-16', '', '73176 Ressie Highway Suite 295\nNew Matildeland, AR 07275-3601', '629-232-4345 x6322', 'carroll.luella@hotmail.com', '2019-09-13', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(20, '13092019008', '13091900311181008', 'Mabel Bosco', 'female', '2013-05-23', '', '62766 Kylee Hollow\nEast Myraland, FL 94468-1541', '+1.764.789.7884', 'graham.lamont@yahoo.com', '2019-09-13', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(21, '13092019009', '13091900311181009', 'Mrs. Anjali Stamm', 'female', '2008-09-24', '', '535 Klein Path\nWest Freidafurt, VA 17839-3801', '998.518.4860 x299', 'zrodriguez@nienow.biz', '2019-09-13', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(22, '13092019010', '13091900311181010', 'Aron Moen', 'female', '1975-09-02', '', '33934 Rodriguez Drive\nBatzshire, NY 53904-5131', '1-987-953-5020 x58793', 'kameron.vandervort@hotmail.com', '2019-09-13', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(23, '13092019011', '13091900311181011', 'Junius Bosco', 'female', '1989-01-10', '', '490 Gina Knolls Apt. 593\nWhiteberg, AZ 93553-7137', '+1-913-964-1282', 'tcrooks@kovacek.net', '2019-09-13', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(24, '13092019012', '13091900311181012', 'Sarina Blick', 'female', '2006-09-21', '', '61744 Kassulke Unions\nEast Alexandrialand, NM 07751', '(907) 249-7002', 'herman.mclaughlin@fay.biz', '2019-09-13', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(25, '13092019013', '13091900311181013', 'Ms. Nichole Pouros Jr.', 'female', '1993-05-29', '', '1111 Oswald Pine Suite 256\nWest Karlton, DC 08070-8742', '(673) 485-0536 x6405', 'myrtice49@gmail.com', '2019-09-13', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(26, '13092019014', '13091900311181014', 'Silas Nitzsche', 'female', '1990-12-14', '', '4393 Baumbach Throughway Apt. 597\nSouth Rocky, CO 95938', '(285) 777-3984', 'ylindgren@yundt.info', '2019-09-13', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(27, '13092019015', '13091900311181015', 'Alvis Hettinger', 'female', '1993-02-02', '', '273 Macejkovic Circle Apt. 497\nPort Antoneborough, OH 97454', '662-472-4753 x6828', 'graham55@hotmail.com', '2019-09-13', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(28, '13092019016', '13091900311181016', 'Thea Turner', 'female', '1992-03-02', '', '922 Nina Parkways Suite 206\nPort Ruthburgh, MN 81045', '702-319-4591', 'iwatsica@conn.com', '2019-09-13', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(29, '13092019017', '13091900311181017', 'Hayley Frami', 'female', '1981-08-01', '', '63233 Kshlerin Mountain Apt. 071\nWest Aricport, DC 47372', '(817) 530-7919', 'agerlach@emmerich.com', '2019-09-13', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(30, '13092019018', '13091900311181018', 'Amelia Strosin', 'female', '2005-03-23', '', '1325 Angelina Glens\nSouth Lelia, FL 09155', '1-521-641-2566 x8905', 'stoltenberg.anika@price.com', '2019-09-13', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(31, '13092019019', '13091900311181019', 'Ariel Eichmann', 'female', '1989-04-15', '', '7876 Pouros Lodge\nLake Devin, NM 32089', '(475) 860-9141', 'tess91@yahoo.com', '2019-09-13', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(32, '13092019020', '13091900311181020', 'Dr. Augustus Conn V', 'female', '1995-08-13', '', '19779 Roberts Locks Suite 590\nPadbergside, CA 91308', '1-597-760-2897', 'josie74@gmail.com', '2019-09-13', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(33, '13092019021', '13091900311181021', 'Flo Harris', 'female', '2015-09-20', '', '6132 Lukas Run\nLuellahaven, ME 27992-5544', '+14727864960', 'jody74@walter.org', '2019-09-13', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(34, '13092019022', '13091900311181022', 'Prof. Joseph Leuschke V', 'female', '2004-03-17', '', '4428 Grace Wall Suite 181\nEast Rickhaven, WA 80365-8804', '(258) 800-4637', 'tshanahan@heathcote.net', '2019-09-13', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(35, '13092019023', '13091900311181023', 'Mr. Keyon Kulas III', 'female', '1970-08-09', '', '47936 Goodwin Squares Suite 170\nJamarside, OK 35258-7235', '969.419.6867 x83822', 'ihill@hyatt.com', '2019-09-13', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(36, '13092019024', '13091900311181024', 'Allison Pfeffer', 'female', '1980-07-17', '', '1647 Ernser Centers Suite 435\nLefflershire, KS 02398-1734', '(620) 921-0325 x616', 'cristal08@padberg.net', '2019-09-13', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(37, '13092019025', '13091900311181025', 'Ms. Dovie Kozey', 'female', '2015-06-22', '', '69381 Herzog Pine Suite 671\nSchummtown, CA 62211-9865', '1-235-925-5483', 'fbarrows@gmail.com', '2019-09-13', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(38, '13092019026', '13091900311181026', 'Miss Velma Beer I', 'female', '2002-12-18', '', '9360 Joanny Skyway Suite 575\nEwaldburgh, PA 81963', '+1-515-493-2695', 'astanton@hotmail.com', '2019-09-13', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(39, '13092019027', '13091900311181027', 'Dr. Nina Smith', 'female', '1972-02-21', '', '11622 Von Station Suite 670\nWest Maurice, ND 44997', '+16584189211', 'lprosacco@hotmail.com', '2019-09-13', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(40, '13092019028', '13091900311181028', 'Dylan Hartmann', 'female', '2001-11-05', '', '912 Pagac Square Suite 828\nPort Angeline, MS 21442', '(870) 943-0131 x9376', 'mary07@gmail.com', '2019-09-13', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(41, '14092019001', '14091900311181001', 'Aida Muller Sr.', 'female', '2002-05-25', '', '6138 Lindsay Manor\nKshlerinmouth, AL 44378-8542', '+1 (876) 320-9606', 'leann81@gmail.com', '2019-09-14', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 40, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(42, '14092019002', '14091900311181002', 'Prof. Brando Erdman', 'female', '2005-12-18', '', '7908 Kulas Wells\nFarrellbury, NV 57610-2919', '645-505-0132 x0071', 'rath.tad@frami.net', '2019-09-14', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 41, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(43, '14092019003', '14091900311181003', 'Clovis Schmitt III', 'female', '1998-01-26', '', '38049 Nelle Orchard\nNoahmouth, RI 60964-2542', '+1-454-337-1144', 'bradtke.lacey@graham.com', '2019-09-14', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 42, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(44, '14092019004', '14091900311181004', 'Hildegard Brown', 'female', '1995-10-11', '', '69588 Walter Shores Suite 908\nLake Milesport, NM 59324-8127', '765-638-9599', 'lmorissette@leannon.org', '2019-09-14', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 43, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(45, '14092019005', '14091900311181005', 'Grover Feest IV', 'female', '1990-11-19', '', '561 Thompson Mountain\nMarciaton, NV 60944', '629.354.5873 x9147', 'abbott.annamae@gmail.com', '2019-09-14', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 44, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(46, '14092019006', '14091900311181006', 'Malachi Wolf Jr.', 'female', '1977-09-18', '', '798 Hauck Lodge\nVandervortborough, MA 63498-6696', '+1-479-899-5273', 'lottie64@heller.com', '2019-09-14', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 45, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(47, '14092019007', '14091900311181007', 'Dr. Destinee Nolan V', 'female', '1988-01-27', '', '789 Bonnie Place\nNorth Lonie, AK 55632-1458', '404-689-0342 x17833', 'senger.veda@lind.com', '2019-09-14', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 46, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(48, '14092019008', '14091900311181008', 'Thelma Lindgren', 'female', '2003-02-12', '', '9163 Conner Prairie Suite 093\nPort Lolaview, KY 59184', '496-780-8277', 'goldner.selena@gmail.com', '2019-09-14', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 47, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(49, '14092019009', '14091900311181009', 'Adelia Borer', 'female', '2015-05-14', '', '453 Hudson Trail\nHamillfort, SC 97853-7597', '471.980.0269', 'runolfsson.emil@hotmail.com', '2019-09-14', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 48, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(50, '14092019010', '14091900311181010', 'Cheyenne Yundt', 'female', '2008-09-22', '', '89832 Terry Mountains\nTamaratown, WI 51880', '745.914.3290', 'trevor58@eichmann.com', '2019-09-14', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 49, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(51, '14092019011', '14091900311181011', 'Mr. Chaz Towne PhD', 'female', '2013-12-22', '', '16631 Cecil Drives\nNew Kattieton, IL 20277', '394.696.5084', 'fiona18@howell.com', '2019-09-14', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 50, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(52, '14092019012', '14091900311181012', 'Tod Jacobson', 'female', '2005-03-06', '', '547 Stamm Prairie Apt. 180\nMarcusview, ND 66568-2636', '478-865-4860 x85677', 'lilian.hansen@kshlerin.com', '2019-09-14', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 51, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(53, '14092019013', '14091900311181013', 'Annette Becker', 'female', '2009-12-20', '', '870 Isai Plaza Apt. 843\nFisherchester, MS 53702-6659', '(294) 604-8649', 'nicolette.parisian@ullrich.org', '2019-09-14', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 52, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(54, '14092019014', '14091900311181014', 'Margarette Nienow', 'female', '2018-09-18', '', '5819 Durgan Flats Suite 299\nJakubowskiport, NH 37613', '852.408.8915', 'xkuhn@hotmail.com', '2019-09-14', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 53, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(55, '14092019015', '14091900311181015', 'Aliya Gutmann', 'female', '2001-11-04', '', '167 Block Stravenue Apt. 137\nEast Lesly, VA 95509-3375', '915.261.8811', 'legros.albina@gmail.com', '2019-09-14', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 54, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(56, '14092019016', '14091900311181016', 'Hattie Quitzon', 'female', '1981-01-06', '', '83925 Hailey Harbors\nEast Kristyhaven, NY 41829-0062', '+18872211626', 'beau.zieme@yahoo.com', '2019-09-14', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 1, 55, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(57, '19092019013', '19091900311181013', 'Moriah Little', 'female', '2001-11-04', '', '73978 Reichel Parkway Apt. 154\nKurtishaven, MD 37835', '+1-586-625-0372', 'murazik.amya@hotmail.com', '2019-09-19', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 0, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(58, '19092019013', '19091900311181013', 'Buddy Brakus', 'female', '1970-03-10', '', '9516 Ebony Roads Apt. 628\nNew Lydafort, HI 30192-1636', '464.397.9644 x5758', 'lucio53@rau.com', '2019-09-19', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 1, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(59, '19092019013', '19091900311181013', 'Davion Collier', 'female', '2008-06-09', '', '84813 Goldner Shoals Apt. 356\nEdisontown, TN 63285-5936', '+1 (221) 512-3947', 'grodriguez@rodriguez.info', '2019-09-19', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 2, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(60, '19092019013', '19091900311181013', 'Ima Robel', 'female', '1999-09-29', '', '502 Ofelia Parkways Suite 327\nPort Lianaberg, VT 10105-5190', '(562) 496-1406 x24443', 'idella.gislason@klocko.info', '2019-09-19', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 3, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(61, '19092019013', '19091900311181013', 'Ramon Christiansen', 'female', '1984-06-04', '', '592 Kuhn Landing Apt. 921\nLake Bryonport, NM 67989', '465-442-8534', 'adriel.prohaska@volkman.com', '2019-09-19', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 4, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(62, '20092019001', '20091900311181001', 'Jennie Senger DDS', 'female', '1977-07-03', '', '65509 Stanton Island Apt. 013\nDeckowview, WY 92046', '(514) 877-8553 x9693', 'moen.thaddeus@kautzer.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(63, '20092019002', '20091900311181002', 'Dr. Micaela Donnelly II', 'female', '2016-06-09', '', '4994 Cyrus Trace Apt. 401\nMurlfurt, IN 35202-8073', '854.743.0502', 'berniece47@yahoo.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(64, '20092019003', '20091900311181003', 'Margarete Nienow', 'female', '1982-11-21', '', '334 Bruen Manors\nSouth Audreanne, SC 12589', '627.369.0480 x54904', 'xwisoky@gmail.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(65, '20092019004', '20091900311181004', 'Caterina Hickle II', 'female', '1976-12-18', '', '3209 Pearlie Green\nBeattyborough, MO 06081', '1-279-802-5793 x71003', 'olga14@rempel.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(66, '20092019005', '20091900311181005', 'Maverick Mayert I', 'female', '1993-02-26', '', '6392 Cecelia Fall Apt. 643\nEast Israelport, KS 74360-1113', '532-582-2994', 'carolyne45@yahoo.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(67, '20092019006', '20091900311181006', 'Liza Stokes', 'female', '1971-12-11', '', '94185 Ledner View Apt. 607\nPriscillaton, NV 04881', '+1-726-630-9987', 'felton75@hamill.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(68, '20092019007', '20091900311181007', 'Thad Jacobson', 'female', '1970-11-02', '', '938 Estell Prairie\nAlexandroland, WY 81943-3857', '1-839-443-0795 x7948', 'aaliyah.rutherford@gmail.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(69, '20092019008', '20091900311181008', 'Belle Yost', 'female', '1975-06-01', '', '28987 Weimann Island\nNew Raphaelle, MD 78670-1399', '1-802-749-1173 x4111', 'deion.ledner@metz.info', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(70, '20092019009', '20091900311181009', 'Gerda Rodriguez', 'female', '1983-02-18', '', '4375 Kuvalis Field Suite 129\nEast Reece, WA 18928-2629', '432.297.8432', 'cary76@blanda.org', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(71, '20092019010', '20091900311181010', 'Kianna Swaniawski II', 'female', '1999-08-11', '', '82265 Hortense Motorway Suite 698\nDamienburgh, LA 76055-3932', '+1 (348) 346-1046', 'ihagenes@maggio.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(72, '20092019011', '20091900311181011', 'Abbey Larkin', 'female', '1987-09-18', '', '36405 Windler Lodge\nNorth Reed, MN 73284', '+1 (882) 907-9285', 'ttorphy@yahoo.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(73, '20092019012', '20091900311181012', 'Pierre Denesik', 'female', '2013-11-04', '', '76106 West Courts Apt. 826\nConstancehaven, ID 38014', '781-701-6088', 'maxine69@gmail.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(74, '20092019013', '20091900311181013', 'Vada Carroll Sr.', 'female', '2007-12-18', '', '97094 Mraz Junction\nGreysonview, OR 97264-7409', '1-430-828-4004', 'evelyn98@gmail.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(75, '20092019014', '20091900311181014', 'Albertha Greenfelder', 'female', '2005-01-04', '', '687 Jordy Ways Suite 178\nJenaberg, MS 80854', '896.693.5620 x091', 'xconn@yahoo.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(76, '20092019015', '20091900311181015', 'Miss Hillary Gaylord', 'female', '2005-11-23', '', '10002 Tamia Route Apt. 917\nBrentstad, OR 12708', '(797) 792-0475', 'deffertz@yahoo.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(77, '20092019016', '20091900311181016', 'Bernardo Balistreri', 'female', '2007-01-29', '', '299 Nitzsche Causeway\nNorth Amariview, ID 58506', '+1 (820) 443-4336', 'auer.berta@lowe.biz', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(78, '20092019017', '20091900311181017', 'Bernardo Langworth', 'female', '1994-09-02', '', '6770 Wisoky Motorway\nKathrynview, TN 61463-4738', '+1-841-951-3651', 'braun.octavia@mcdermott.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(79, '20092019018', '20091900311181018', 'Miss Monique Senger Jr.', 'female', '2010-12-22', '', '72826 Stehr Points\nVolkmanville, MN 43988-2008', '+1.802.306.6178', 'koepp.vicente@gmail.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(80, '20092019019', '20091900311181019', 'Mrs. Madeline Doyle IV', 'female', '2004-03-26', '', '392 Wendy Flat\nAmaritown, IA 72607-4469', '607-595-4030', 'dereck.steuber@kassulke.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(81, '20092019020', '20091900311181020', 'Oda Christiansen', 'female', '1974-02-10', '', '3267 Cory Road\nDeckowfort, SC 26298-4435', '796.395.7010', 'garrett92@hotmail.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(82, '20092019021', '20091900311181021', 'Claudia Dietrich', 'female', '1986-06-10', '', '13525 Kunde Corner Suite 125\nDorrisside, TX 62747', '+1.691.274.8202', 'damian.gerlach@kerluke.biz', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(83, '20092019022', '20091900311181022', 'Reed Schoen', 'female', '1990-01-15', '', '1249 Cloyd Knolls\nLake Lexi, GA 99170-5449', '891.651.5333', 'shaina.hartmann@hotmail.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(84, '20092019023', '20091900311181023', 'Dr. Joan King', 'female', '2003-05-29', '', '268 Roberto Loop\nLake Brandonborough, CO 42194', '283-961-4073 x425', 'eden.cremin@yahoo.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(85, '20092019024', '20091900311181024', 'Alvera Fisher', 'female', '2009-07-28', '', '1032 Osbaldo Walk Suite 617\nEleanoramouth, ID 99414', '+1.551.821.7353', 'zion.gutmann@yahoo.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(86, '20092019025', '20091900311181025', 'Mr. Kiley Moore V', 'female', '1981-04-06', '', '122 Hill Junctions Apt. 921\nPort Royalberg, NC 94394', '487.927.8852 x378', 'vhettinger@yahoo.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(87, '20092019026', '20091900311181026', 'Emelie Bergstrom', 'female', '1990-05-29', '', '7742 Dach Station\nBradtkemouth, WI 79212-2676', '(814) 972-2398 x005', 'wschuppe@reinger.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(88, '20092019027', '20091900311181027', 'Mr. Mark Terry DDS', 'female', '2006-03-27', '', '314 Hane Ferry\nLake Aron, NH 54780-3241', '225.770.2620 x882', 'zieme.brooke@thompson.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(89, '20092019028', '20091900311181028', 'Hattie Cremin', 'female', '1970-06-24', '', '6699 Brooks Point Apt. 752\nLake Tinaport, NE 77710', '1-959-310-8568 x414', 'nels98@hotmail.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(90, '20092019029', '20091900311181029', 'Efrain Bashirian IV', 'female', '1994-08-03', '', '43610 Rogahn Springs\nPort Saul, AL 85028-4455', '1-353-971-3327 x77886', 'rickie02@hotmail.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(91, '20092019030', '20091900311181030', 'Monique Prohaska', 'female', '1996-12-25', '', '682 Lebsack Groves Suite 053\nNew Rae, WV 69079', '+1-968-918-0554', 'nhayes@hotmail.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(92, '20092019031', '20091900311181031', 'Kianna Nienow', 'female', '1998-01-08', '', '989 Pfannerstill Road\nKrajcikmouth, AZ 04039-3730', '1-407-727-2602', 'jrunolfsson@hansen.biz', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(93, '20092019032', '20091900311181032', 'Audie Bernier', 'female', '1999-01-11', '', '51559 Theodore Keys Apt. 754\nWest Skylar, MS 84584-1097', '1-605-728-6720 x325', 'rowan64@gmail.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(94, '20092019033', '20091900311181033', 'Ethel Feest', 'female', '1981-12-02', '', '415 Klocko Crossroad\nVivianfurt, GA 16801', '1-229-871-2092', 'boyer.daija@hotmail.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(95, '20092019034', '20091900311181034', 'Mrs. Estrella Bechtelar', 'female', '1981-01-14', '', '447 Juliet Loop Suite 347\nEast Eulah, VA 82501-7825', '827-598-1139 x46191', 'anderson62@altenwerth.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(96, '20092019035', '20091900311181035', 'Dannie Brakus MD', 'female', '2003-02-10', '', '8585 Aubrey Springs\nBrakusmouth, VT 31636', '(275) 502-9764 x4738', 'lempi35@monahan.com', '2019-09-20', '180000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(97, '23092019001', '23091900311181001', 'Evelyn Smith', 'female', '1970-01-26', '', '89285 Walker Mews\nGarettshire, PA 74153', '+1-701-437-0670', 'jadon.senger@yahoo.com', '2019-09-23', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 40, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(98, '23092019002', '23091900311181002', 'Alexandrine Donnelly Jr.', 'female', '1972-06-10', '', '57791 Klocko Fords\nNorth Marcellefurt, WV 24103-8702', '1-903-529-7184', 'ulehner@hansen.biz', '2019-09-23', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 41, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(99, '23092019003', '23091900311181003', 'Buck Homenick Sr.', 'female', '2003-02-24', '', '9420 Natasha Lake Apt. 682\nEast Preston, NE 44582-5574', '(594) 364-6371', 'iliana34@schinner.com', '2019-09-23', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 42, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(100, '23092019004', '23091900311181004', 'Prof. Lela Gulgowski IV', 'female', '1982-03-20', '', '9014 Leannon Grove Apt. 968\nLambertmouth, NC 69907-1531', '538-200-9873 x019', 'elizabeth.stark@moore.com', '2019-09-23', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 43, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(101, '23092019005', '23091900311181005', 'Dewitt Beer V', 'female', '1999-08-18', '', '68439 Rhea Vista\nLednerfort, MI 30966', '971-476-5956', 'sweber@hotmail.com', '2019-09-23', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 44, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(102, '23092019006', '23091900311181006', 'Jon Mills Sr.', 'female', '1981-11-15', '', '101 Dewayne Freeway Apt. 972\nHarleyfort, WA 95688-1882', '395-582-2501 x451', 'green.lilyan@zboncak.com', '2019-09-23', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 45, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(103, '23092019007', '23091900311181007', 'Kirstin Deckow', 'female', '2001-06-26', '', '7327 Jordi Fords\nLake Lulafort, PA 45236-1057', '425.453.0387', 'lockman.haylee@gmail.com', '2019-09-23', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 46, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(104, '23092019008', '23091900311181008', 'Eliza Frami', 'female', '1997-01-10', '', '86300 Jaylen Park Apt. 812\nDameonhaven, FL 16276-9722', '228.535.2895 x676', 'shaina.berge@kshlerin.com', '2019-09-23', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 47, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(105, '23092019009', '23091900311181009', 'Mr. Terence Cartwright', 'female', '2003-06-14', '', '948 Kira Viaduct Apt. 075\nLake Sadiefort, MN 15542', '1-905-839-0485 x8797', 'goyette.aglae@hotmail.com', '2019-09-23', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 48, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(106, '23092019010', '23091900311181010', 'Jayce Torphy', 'female', '1994-03-14', '', '39470 Merle Rest Suite 032\nGottliebfurt, NV 13528', '+1.971.917.4784', 'ekeeling@hotmail.com', '2019-09-23', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 49, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(107, '23092019011', '23091900311181011', 'Syble Russel', 'female', '2008-01-24', '', '6893 Wunsch Locks Apt. 847\nNew Janae, OR 67087', '+1-625-734-9898', 'schowalter.adolphus@gmail.com', '2019-09-23', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 50, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(108, '23092019012', '23091900311181012', 'Douglas Torphy', 'female', '1997-01-08', '', '8338 Schimmel Loop Suite 493\nJocelynborough, HI 75885', '+1 (793) 504-0649', 'alena.weimann@leffler.com', '2019-09-23', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 51, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(109, '23092019013', '23091900311181013', 'Tessie Schumm', 'female', '2010-02-15', '', '5692 Alexandrine Views Apt. 877\nEast Trevionchester, ID 54654-1781', '515-708-1371 x7369', 'bud.harber@yahoo.com', '2019-09-23', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 52, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(110, '23092019014', '23091900311181014', 'Mrs. Gladys Thompson', 'female', '1983-11-01', '', '17764 Satterfield Estates\nSouth Nyah, LA 23772', '(950) 257-5142 x80104', 'oswaldo31@braun.org', '2019-09-23', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 53, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(111, '23092019015', '23091900311181015', 'Dr. Emory Strosin IV', 'female', '1999-12-14', '', '335 Lueilwitz Station\nAmiyabury, CO 26530', '(859) 523-8930', 'grant.celestine@yahoo.com', '2019-09-23', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 54, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(112, '23092019016', '23091900311181016', 'Prof. Crawford Effertz DDS', 'female', '2009-05-29', '', '1391 Arvilla Spring\nCollinfurt, IL 21953-8399', '(447) 543-5301 x9982', 'edwin.bauch@hotmail.com', '2019-09-23', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 2, 55, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(113, '12092019001', '12091900311181001', 'Dr. Leonard Windler', 'female', '1982-06-25', '', '8291 Claudie Hills Suite 910\nEast Erica, NJ 78130-4110', '598-686-7287 x4663', 'destinee.hegmann@yahoo.com', '2019-09-12', '280000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 0, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(114, '12092019002', '12091900311181002', 'Mike Schulist', 'female', '1976-10-31', '', '9064 Mayra Parkways\nSouth Zulachester, WV 57526-9802', '(317) 689-2319 x8865', 'rice.ashton@monahan.com', '2019-09-12', '280000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 1, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(115, '12092019003', '12091900311181003', 'Adelia West', 'female', '2013-03-22', '', '31464 Nolan Turnpike Apt. 535\nKeshawnhaven, SD 68329-5648', '+16164946494', 'ndurgan@hotmail.com', '2019-09-12', '280000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 2, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(116, '12092019004', '12091900311181004', 'Cory White II', 'female', '1997-12-27', '', '51514 Rebeka Overpass\nLake Vernie, PA 67441-0013', '(962) 516-6544 x8947', 'hcasper@ullrich.com', '2019-09-12', '280000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 3, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(117, '12092019005', '12091900311181005', 'Miss Kellie Fahey', 'female', '1988-08-08', '', '831 Lukas Squares Apt. 435\nMitchelhaven, OK 80796-2102', '690.419.4823 x769', 'jany26@hotmail.com', '2019-09-12', '280000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 4, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(118, '12092019006', '12091900311181006', 'Dr. Jeffry Farrell Jr.', 'female', '1990-12-14', '', '417 Bechtelar Well Suite 195\nDonnellyport, IA 97953-7897', '+1 (815) 566-2357', 'thahn@cormier.com', '2019-09-12', '280000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 5, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(119, '12092019007', '12091900311181007', 'Bria Nader', 'female', '2000-02-11', '', '21829 Noah Vista\nWest Reynold, CO 91912-2838', '1-387-281-2291 x19748', 'quigley.chadd@dubuque.com', '2019-09-12', '280000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 6, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(120, '12092019008', '12091900311181008', 'Prof. Fanny Rodriguez', 'female', '2001-12-22', '', '31465 Jaskolski Ridges\nBradtkeburgh, TN 62495', '(609) 631-4234', 'tyler89@dooley.org', '2019-09-12', '280000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 7, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(121, '12092019009', '12091900311181009', 'Clotilde Wuckert IV', 'female', '1979-12-25', '', '2663 Robbie Ville Apt. 154\nNew Ali, TN 68040-0977', '(482) 687-1200 x9995', 'ddeckow@hotmail.com', '2019-09-12', '280000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 8, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(122, '12092019010', '12091900311181010', 'Juliana Jakubowski', 'female', '1978-05-31', '', '764 Kelli Shores\nMerrittfort, WA 17962', '(890) 498-7278', 'barton.joshua@bergnaum.com', '2019-09-12', '280000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 9, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(123, '12092019011', '12091900311181011', 'Kamryn Cassin', 'female', '1978-06-06', '', '217 Amiya Forest\nSantastad, WI 80389-2660', '249-953-0797', 'vtromp@gmail.com', '2019-09-12', '280000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 10, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(124, '12092019012', '12091900311181012', 'Myah Tremblay', 'female', '2003-12-22', '', '3451 Marquardt Passage Apt. 711\nWest Augustinemouth, CA 79186', '(624) 518-6727 x8052', 'ryann92@hotmail.com', '2019-09-12', '280000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 11, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(125, '12092019013', '12091900311181013', 'Lacy Reynolds II', 'female', '1998-02-22', '', '3656 Prohaska Mount Apt. 540\nWest Savionmouth, MA 90894', '764.784.8601', 'zmetz@harris.com', '2019-09-12', '280000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 12, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(126, '12092019014', '12091900311181014', 'Elliott Cole', 'female', '2015-11-17', '', '837 Jarrod Mall Apt. 255\nYvonneville, WA 15145-0106', '532.636.7921 x3004', 'abbie91@yahoo.com', '2019-09-12', '280000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 13, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(127, '12092019015', '12091900311181015', 'Prof. Kacie Langosh', 'female', '1978-09-23', '', '6727 Beier Trafficway\nLake Hattieview, VA 19395', '(815) 232-0659 x87904', 'uryan@yahoo.com', '2019-09-12', '280000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 14, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(128, '25092019001', '25091900311181001', 'Prof. Madelyn Rippin Jr.', 'female', '1987-03-19', '', '6793 Cummings Prairie\nWindlerburgh, IL 70076', '(336) 298-5965', 'magnus41@gmail.com', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 15, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(129, '25092019002', '25091900311181002', 'Santino Baumbach', 'female', '2010-03-13', '', '4267 Toy Cliff\nLake Trycia, NJ 54169', '(636) 452-9174', 'bshields@labadie.net', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 16, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(130, '25092019003', '25091900311181003', 'Maryjane McDermott', 'female', '1984-04-04', '', '893 Barrows Route\nEast Daynehaven, NC 04305', '478.487.4345 x46513', 'mandy58@hotmail.com', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 17, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(131, '25092019004', '25091900311181004', 'Jerrell Robel DVM', 'female', '1977-04-13', '', '5596 Witting Lock Suite 655\nManteborough, HI 12050', '(891) 883-4795 x87160', 'lockman.roman@olson.com', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 18, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(132, '25092019005', '25091900311181005', 'Dr. Linnie Hamill Jr.', 'female', '1996-12-03', '', '570 Macejkovic Route Apt. 274\nFunkton, RI 90039-6536', '+1 (862) 729-9530', 'umraz@yahoo.com', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 19, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(133, '25092019006', '25091900311181006', 'Cierra Haley', 'female', '1977-10-21', '', '342 Reilly Center\nNorth Darrel, ND 44943-0585', '624.933.8089', 'dameon.west@becker.com', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(134, '25092019007', '25091900311181007', 'Talia Runolfsson', 'female', '1994-02-13', '', '705 Davis Branch\nPort Stanley, CT 94340', '279-514-6949 x89328', 'meggie.blanda@yahoo.com', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 21, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(135, '25092019008', '25091900311181008', 'Rosemarie Gislason', 'female', '1988-01-08', '', '3950 Robel Turnpike\nWest Gwendolynmouth, CA 53203', '1-443-748-7445', 'weissnat.cicero@gmail.com', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 22, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(136, '25092019009', '25091900311181009', 'Prof. Sonia Macejkovic', 'female', '2000-09-22', '', '2484 Valerie Loop Suite 619\nEast Koryburgh, RI 38659-5544', '632.718.2550', 'schmidt.jed@gmail.com', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 23, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(137, '25092019010', '25091900311181010', 'Armani Schuppe', 'female', '2011-04-01', '', '81885 Roberts Harbors Suite 103\nLake Americohaven, MD 16220', '468-471-0636 x32691', 'burdette.greenholt@hotmail.com', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 24, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(138, '25092019011', '25091900311181011', 'Omer Abernathy', 'female', '1977-04-29', '', '88718 Tony Rest\nNew Danial, MT 83425-4714', '513-909-9428 x019', 'yjacobson@herzog.com', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 25, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(139, '25092019012', '25091900311181012', 'Adelbert Kutch', 'female', '2009-06-21', '', '7852 Gennaro Valleys Suite 745\nEast Emmettport, OH 92949-7615', '646.367.3514', 'cecile.gutkowski@gmail.com', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 26, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(140, '25092019013', '25091900311181013', 'Miss Burdette Littel PhD', 'female', '1990-06-06', '', '740 Jarod Land\nSouth Louberg, CO 88466', '869.313.8740', 'verna26@osinski.com', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 27, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(141, '25092019014', '25091900311181014', 'Ms. Dayana Wiegand MD', 'female', '2017-10-08', '', '67828 Holly Fords Apt. 188\nRoxaneland, PA 22458-1344', '580.994.1566', 'hhoppe@collier.com', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 28, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40');
INSERT INTO `inquires` (`id`, `inquireno`, `receiveno`, `name`, `gender`, `dob`, `age`, `address`, `phno`, `email`, `installmentdate`, `installmentamount`, `remark`, `position`, `camp`, `education`, `acceptedyear`, `actionstatus`, `section_id`, `township_id`, `user_id`, `created_at`, `updated_at`) VALUES
(142, '25092019015', '25091900311181015', 'Carli Macejkovic', 'female', '1980-12-11', '', '74869 Edd Course\nJoseburgh, NH 93294', '(957) 326-2380 x65680', 'botsford.laron@hotmail.com', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 29, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(143, '25092019016', '25091900311181016', 'Whitney Dickinson', 'female', '2010-06-19', '', '549 Edythe Run\nWuckertberg, MS 88927', '669-383-8998', 'demario.reichel@sauer.com', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 30, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(144, '25092019017', '25091900311181017', 'Dr. Vivien Mitchell', 'female', '1992-07-04', '', '9266 Leland Knolls Suite 562\nNew Bernardostad, WI 27742', '(547) 296-9468', 'hilario50@langworth.biz', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 31, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(145, '25092019018', '25091900311181018', 'Alden Rogahn', 'female', '2008-08-13', '', '4679 Jessyca Parks Apt. 551\nSouth Eladio, SD 65153', '367-859-3088 x6085', 'wallace12@pacocha.com', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 32, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(146, '25092019019', '25091900311181019', 'Prof. Lois Mitchell', 'female', '2006-02-06', '', '79931 Wilkinson Throughway Apt. 261\nRolfsonbury, IN 84219', '675-715-4378', 'jordy.terry@kshlerin.biz', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 33, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(147, '25092019020', '25091900311181020', 'Ewell Crooks DDS', 'female', '1987-01-03', '', '2211 Baumbach Crossroad\nHudsonton, SC 44251-5688', '+1-874-283-4853', 'mohammad.daugherty@hotmail.com', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 34, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(148, '25092019021', '25091900311181021', 'Cierra Mertz', 'female', '2002-07-28', '', '7155 Kacie Port Apt. 998\nTabithaberg, CT 60659-4024', '+1 (759) 829-4587', 'hward@yahoo.com', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 35, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(149, '25092019022', '25091900311181022', 'Kacey Batz III', 'female', '1984-10-08', '', '796 Cora Well\nWest Sandyport, MA 49099-9546', '+1-931-928-4818', 'katelyn69@gmail.com', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 36, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(150, '25092019023', '25091900311181023', 'Mr. Bennie Walter', 'female', '1989-12-03', '', '36121 Germaine Valley\nEast Glen, NH 42711-2150', '364-776-7859 x361', 'ofelia84@gmail.com', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 37, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(151, '25092019024', '25091900311181024', 'Liana Jenkins', 'female', '1990-11-07', '', '63133 Streich Extension Suite 410\nGrantbury, DC 81790', '(740) 620-1027 x229', 'tromp.roberta@gmail.com', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 38, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(152, '25092019025', '25091900311181025', 'Mrs. Esther Hessel', 'female', '1996-12-29', '', '178 Nichole Hill Suite 873\nDenesikside, KS 56016-6122', '1-753-333-8540 x6781', 'tremblay.francesca@brown.com', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 39, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(153, '25092019026', '25091900311181026', 'Dr. Bridget Crooks IV', 'female', '2014-06-26', '', '83549 Giuseppe Rapids\nSamtown, MO 32474-0213', '1-365-927-3799 x46664', 'emie69@legros.com', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 40, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(154, '25092019027', '25091900311181027', 'Jalyn Hessel', 'female', '1979-10-21', '', '235 Hagenes Ferry\nLittelfort, RI 10645', '854.907.2892 x9306', 'turner.jedediah@yahoo.com', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 41, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(155, '25092019028', '25091900311181028', 'Miss Alexanne Steuber', 'female', '1993-10-03', '', '4367 Amara Freeway\nPort Gersonborough, NM 04451-5509', '771.965.8091 x76682', 'leif.shields@hotmail.com', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 42, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(156, '25092019029', '25091900311181029', 'Lonnie Morissette', 'female', '2010-12-15', '', '7984 Aiyana Alley Apt. 799\nWalterfort, SD 97374', '903-261-4430 x136', 'ullrich.osbaldo@miller.com', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 43, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(157, '25092019030', '25091900311181030', 'Mrs. Delfina Vandervort V', 'female', '1983-01-29', '', '2671 Sandy Crescent Apt. 207\nNorth Veldaport, MA 39784-0088', '+1.847.642.4598', 'bernice.murphy@gmail.com', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 44, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(158, '25092019031', '25091900311181031', 'Amaya Kerluke', 'female', '1995-05-12', '', '91543 Lang Point\nNorth Lylamouth, AK 07133', '1-508-738-7316', 'vaughn.connelly@haley.biz', '2019-09-25', '100000', 'HTML,CSS little experience', 'Junior Web Developer', 'No Camp', '1', '2017', '0', 3, 45, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(159, '5092019001', '5091900311181001', 'Charley Hartmann', 'female', '1984-02-17', '', '51226 Moses Courts\nFlorianview, OR 34426-7711', '+17102767113', 'elmira08@hotmail.com', '2019-09-05', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 4, 0, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(160, '5092019002', '5091900311181002', 'Leif Ryan', 'female', '2017-09-13', '', '179 Roberts Glens\nEast Betty, NE 07862', '1-312-416-2215 x29612', 'emily65@yahoo.com', '2019-09-05', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 4, 1, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(161, '5092019003', '5091900311181003', 'Yasmeen Wuckert', 'female', '2007-02-07', '', '57027 Beatrice Lake\nSengermouth, VA 99587-0589', '(831) 204-7891', 'hsmith@auer.biz', '2019-09-05', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 4, 2, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(162, '5092019004', '5091900311181004', 'Martine Heathcote MD', 'female', '1987-06-02', '', '12813 Myron Isle\nAdaport, AZ 12175', '1-393-562-3921 x86182', 'evolkman@windler.com', '2019-09-05', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 4, 3, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(163, '5092019005', '5091900311181005', 'Wyatt Herzog', 'female', '2000-05-21', '', '45214 Hackett Inlet Suite 592\nElvisstad, NE 12803-0380', '825-619-5901', 'veronica.veum@farrell.com', '2019-09-05', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 4, 4, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(164, '5092019006', '5091900311181006', 'Augusta Monahan', 'female', '1980-06-08', '', '5925 Oran Mountain Apt. 169\nOlgahaven, KS 38235', '496.202.5617 x8040', 'jenkins.kareem@yahoo.com', '2019-09-05', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 4, 5, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(165, '5092019007', '5091900311181007', 'Willie Halvorson III', 'female', '2005-12-10', '', '421 Kassulke Flats Suite 836\nFarrellfort, NV 19691', '651.856.2781 x72274', 'harris.morton@hotmail.com', '2019-09-05', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 4, 6, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(166, '5092019008', '5091900311181008', 'Estel Kuhn', 'female', '2002-06-22', '', '54093 London Cliff\nChristineburgh, WV 06008', '+1.501.401.5906', 'sschneider@jakubowski.com', '2019-09-05', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 4, 7, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(167, '5092019009', '5091900311181009', 'Mr. Johathan Lakin', 'female', '1972-05-09', '', '6848 Avery Center\nNorth Elouise, NM 77659-3718', '1-784-238-7946 x14982', 'enoch23@hotmail.com', '2019-09-05', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 4, 8, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(168, '5092019010', '5091900311181010', 'Kiana Gutkowski', 'female', '1978-10-22', '', '9391 Brandyn Route Apt. 913\nNew Aida, VT 92638-7624', '965-518-7339', 'wbarton@yahoo.com', '2019-09-05', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 4, 9, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(169, '11092019001', '11091900311181001', 'Mafalda Steuber', 'female', '2011-02-21', '', '38125 Diamond Springs\nCorkerybury, IL 98683-3971', '+1-465-398-9162', 'karine11@yahoo.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 4, 0, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(170, '11092019002', '11091900311181002', 'Kaycee Herzog', 'female', '1974-01-07', '', '38652 Tommie Union\nKunzeville, NE 67951-6060', '325-796-2338', 'ezra77@murray.net', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 4, 1, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(171, '11092019003', '11091900311181003', 'Lorna Heidenreich', 'female', '1994-02-17', '', '4121 Marcelo Spurs\nNew Felicia, NM 27908', '+1-226-344-1273', 'sammy69@hotmail.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 4, 2, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(172, '11092019004', '11091900311181004', 'Milo Reynolds', 'female', '1974-08-14', '', '164 Lebsack Glens\nPort Aureliostad, NC 42388-7025', '(917) 312-3763', 'goyette.courtney@koepp.biz', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 4, 3, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(173, '11092019005', '11091900311181005', 'Mylene Collier', 'female', '1973-08-01', '', '2919 Kyle Views Suite 229\nEbertside, WY 70272-3029', '842.400.8246 x98936', 'mankunding@hills.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 4, 4, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(174, '11092019006', '11091900311181006', 'Neha Wuckert', 'female', '2004-06-03', '', '63821 Stanford Common Suite 256\nHuelview, MO 68683', '664-494-5920 x918', 'hhegmann@oconner.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 4, 5, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(175, '11092019007', '11091900311181007', 'Alexzander Lesch Jr.', 'female', '2010-08-16', '', '1061 Hills Cliffs\nKorbinfurt, ND 64259', '336-858-1995 x9078', 'olson.jaclyn@yahoo.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 4, 6, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(176, '11092019008', '11091900311181008', 'Terry McLaughlin', 'female', '1977-02-20', '', '896 Braun Drives Apt. 091\nMuellerton, AL 58908-9192', '(676) 472-0928 x97704', 'cassin.mona@sanford.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 4, 7, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(177, '11092019009', '11091900311181009', 'Cale Powlowski', 'female', '1992-08-10', '', '46592 Lindgren Lane Apt. 301\nPort Sebastiantown, DC 71590-6304', '(698) 304-8166 x17142', 'tromp.dawson@hotmail.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 4, 8, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(178, '11092019010', '11091900311181010', 'Ben Nolan', 'female', '2010-04-17', '', '49249 Jettie Village Apt. 088\nTayabury, WY 10204', '275.662.4724', 'runte.lisette@mcclure.biz', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 4, 9, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(179, '11092019001', '11091900311181001', 'Adrienne Grant', 'female', '2018-03-25', '', '237 Megane Loop\nJalynhaven, WI 71485', '280-996-3785 x584', 'pwunsch@jenkins.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 6, 0, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(180, '11092019002', '11091900311181002', 'Gage Zulauf', 'female', '1981-01-24', '', '1561 Champlin Station Suite 919\nHoweton, CT 88358-3660', '+1.535.748.7811', 'legros.delores@jacobs.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 6, 1, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(181, '11092019003', '11091900311181003', 'Olga Durgan', 'female', '2004-11-07', '', '51511 Predovic Court\nCartermouth, NC 95424-7339', '1-369-377-5369', 'albin.boyle@kiehn.info', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 6, 2, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(182, '11092019004', '11091900311181004', 'Ms. Raquel West', 'female', '1989-03-21', '', '4639 Hammes Groves Apt. 312\nEast Kaitlin, OH 67958-4791', '650-265-2840', 'kkuvalis@gutmann.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 6, 3, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(183, '11092019005', '11091900311181005', 'Mr. Jan West', 'female', '2011-03-19', '', '637 Howell Club\nPort Jacey, MN 50340-4591', '+1 (208) 262-4646', 'isac95@deckow.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 6, 4, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(184, '11092019006', '11091900311181006', 'Prof. Mohammed Koch Sr.', 'female', '1996-02-09', '', '282 Hortense Port\nPort Casimir, UT 66187', '443.685.2896', 'genesis59@torphy.org', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 6, 5, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(185, '11092019007', '11091900311181007', 'Prof. Gregg VonRueden V', 'female', '2014-11-27', '', '3457 Watsica Gateway\nMohamedville, CA 55641-5275', '(290) 597-4999', 'gweissnat@bogan.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 6, 6, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(186, '11092019008', '11091900311181008', 'Barbara Collins', 'female', '1990-02-03', '', '44901 Kuhic Burg Apt. 646\nGleichnerside, CA 76980-3849', '1-289-364-5237 x51876', 'qohara@koss.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 6, 7, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(187, '11092019009', '11091900311181009', 'Carson Braun DVM', 'female', '2008-08-04', '', '11036 Alexandrine Knolls\nNorth Maynardtown, RI 04011-2584', '+1 (592) 656-9217', 'gabriella44@gmail.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 6, 8, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(188, '11092019010', '11091900311181010', 'Prof. Kailee Effertz III', 'female', '1972-04-29', '', '65170 Cornell Way\nFraneckistad, MO 30984-7834', '+1.374.933.8141', 'hauck.alphonso@hotmail.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 6, 9, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(189, '5092019001', '5091900311181001', 'Howell Muller V', 'female', '2016-04-02', '', '7092 Jennings Villages Suite 706\nSouth Randall, OK 88374', '(626) 246-3960 x9705', 'nglover@gmail.com', '2019-09-05', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 7, 0, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(190, '5092019001', '5091900311181001', 'Vena Pouros', 'female', '2018-01-17', '', '5817 Sherman Estates\nReichertshire, RI 96027', '1-245-694-9028', 'alyce64@yahoo.com', '2019-09-05', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 7, 1, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(191, '5092019001', '5091900311181001', 'Dr. Victor Bartoletti', 'female', '1996-06-06', '', '32594 Larissa Junction\nIzabellaport, KS 57991', '1-830-823-3477 x2261', 'ricardo.feil@vandervort.info', '2019-09-05', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 7, 2, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(192, '5092019001', '5091900311181001', 'Brook Hirthe MD', 'female', '1996-12-30', '', '56067 Sanford Locks Suite 096\nJerdeberg, UT 14575', '(297) 898-2903 x8681', 'yshields@yahoo.com', '2019-09-05', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 7, 3, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(193, '5092019001', '5091900311181001', 'Mr. Rocky Abernathy III', 'female', '2000-05-01', '', '8589 Bednar Wall Apt. 032\nNorth Amiyaland, CT 59146', '481.984.2945', 'pemard@ondricka.com', '2019-09-05', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 7, 4, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(194, '5092019001', '5091900311181001', 'Blaise Mraz', 'female', '2001-03-10', '', '22769 Gladyce Island Suite 894\nWest Landen, CA 43081-8279', '649-789-6463 x56631', 'tkris@yahoo.com', '2019-09-05', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 7, 5, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(195, '5092019001', '5091900311181001', 'Ulices Bartoletti PhD', 'female', '1971-05-17', '', '32931 Waters Rue\nFraneckihaven, NH 51211', '(821) 849-6848', 'jpacocha@schroeder.biz', '2019-09-05', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 7, 6, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(196, '5092019001', '5091900311181001', 'Palma Rice', 'female', '2015-10-10', '', '734 Ibrahim Court Suite 928\nNicolasmouth, PA 97254-3742', '+1.340.587.1740', 'rebekah58@morissette.net', '2019-09-05', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 7, 7, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(197, '5092019001', '5091900311181001', 'Ms. Lindsay Bednar', 'female', '1977-06-14', '', '726 Beatty Ports Apt. 067\nNedrafurt, TN 16890-8756', '964.324.1417', 'welch.petra@gmail.com', '2019-09-05', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 7, 8, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(198, '5092019001', '5091900311181001', 'Misty Hettinger DDS', 'female', '2005-04-04', '', '9915 Huels Mount Suite 725\nNorth Ethelburgh, NJ 98338-7583', '(398) 729-6708', 'christ41@zieme.com', '2019-09-05', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 7, 9, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(199, '11092019001', '11091900311181001', 'Eileen Gislason', 'female', '1978-08-11', '', '846 Catharine Circle Apt. 968\nEast Alexandria, OK 62143-2825', '540-912-8019 x025', 'feil.haley@durgan.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 8, 0, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(200, '11092019002', '11091900311181002', 'Prof. Lloyd Herzog', 'female', '1999-10-18', '', '433 Block Forks Suite 282\nStammburgh, PA 41815-9059', '384-359-1983 x059', 'pcorwin@yahoo.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 8, 1, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(201, '11092019003', '11091900311181003', 'Dr. Juliet Kassulke I', 'female', '1984-10-27', '', '31565 Delia Spur Apt. 503\nHelenborough, MN 42166-8776', '(287) 618-4022 x2044', 'vwitting@yahoo.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 8, 2, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(202, '11092019004', '11091900311181004', 'Dr. Bethel Fadel', 'female', '1975-09-27', '', '513 Rodolfo Lake\nHettieborough, NE 18769-2087', '409-942-8498 x17333', 'kurt79@lindgren.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 8, 3, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(203, '11092019005', '11091900311181005', 'Dr. Clotilde Bayer', 'female', '2000-12-27', '', '53356 Ladarius Roads\nSouth Mckenna, TX 50069-3108', '1-386-432-1130', 'adrienne.jacobs@yahoo.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 8, 4, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(204, '11092019006', '11091900311181006', 'Zane Nicolas', 'female', '1989-03-19', '', '419 Raegan Stream Suite 843\nGriffinchester, PA 88684', '1-908-335-9900 x202', 'zackery.schulist@hotmail.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 8, 5, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(205, '11092019007', '11091900311181007', 'Isabelle Kreiger', 'female', '1985-07-02', '', '90288 Bartoletti Drive Apt. 663\nAdamsmouth, OK 12733-2370', '(416) 804-6111 x01842', 'west.rebeca@bins.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 8, 6, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(206, '11092019008', '11091900311181008', 'Sage Ernser', 'female', '1978-05-09', '', '428 Collier Path\nEast Seamus, NC 64284-1386', '(584) 845-4867', 'wgulgowski@gorczany.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 8, 7, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(207, '11092019009', '11091900311181009', 'Dr. Berry Ritchie V', 'female', '1993-08-07', '', '91863 Dietrich Green Suite 822\nKautzerland, NM 59072-4457', '1-435-558-7900 x7870', 'mwilderman@zieme.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 8, 8, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(208, '11092019010', '11091900311181010', 'Alverta Sanford', 'female', '1979-11-15', '', '46760 Jayne Stream Suite 096\nJeffrychester, DC 85371-5974', '646-539-8585', 'brandi30@gusikowski.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 8, 9, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(209, '11092019001', '11091900311181001', 'Leda Erdman', 'female', '1990-07-24', '', '3099 Blanda Ridges\nSchoenburgh, AK 93981-8665', '268-641-5679 x91012', 'zkautzer@hotmail.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 9, 0, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(210, '11092019002', '11091900311181002', 'Dr. Carleton Jast V', 'female', '1984-01-16', '', '53969 Koch Common Suite 352\nLake Cydneyland, AK 09059', '1-326-856-5346 x591', 'neil78@bernhard.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 9, 1, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(211, '11092019003', '11091900311181003', 'Catherine Hamill', 'female', '2007-06-04', '', '1546 Santa Forest Suite 013\nJordaneton, OR 49998', '(375) 473-4056', 'nannie31@yahoo.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 9, 2, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(212, '11092019004', '11091900311181004', 'Kamren Lemke', 'female', '2011-04-08', '', '50431 Heaney Rue\nGladysfort, ID 35564-5382', '+1 (443) 641-8979', 'towne.cleta@bailey.info', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 9, 3, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(213, '11092019005', '11091900311181005', 'Norma Gottlieb III', 'female', '1999-11-09', '', '413 Wintheiser Prairie Apt. 121\nWest Austyn, TN 29553', '+1.936.599.6446', 'gmayer@gmail.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 9, 4, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(214, '11092019006', '11091900311181006', 'Anissa Hermiston MD', 'female', '2005-09-02', '', '854 Wintheiser Shores Apt. 406\nNew Keaganport, AR 58862', '+15158082443', 'drew56@bode.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 9, 5, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(215, '11092019007', '11091900311181007', 'Zola Kozey', 'female', '2015-04-05', '', '5705 Thiel Points Suite 007\nAntonettefurt, NJ 75850', '1-225-314-8956 x3042', 'lemke.candida@treutel.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 9, 6, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(216, '11092019008', '11091900311181008', 'Edward Toy', 'female', '1985-06-25', '', '13964 Sibyl Ridges Apt. 038\nReaganview, IA 39124', '1-486-577-3508', 'alba66@heaney.org', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 9, 7, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(217, '11092019009', '11091900311181009', 'Jamar Morissette', 'female', '1981-06-05', '', '98243 Lehner Springs\nMilomouth, WY 08712', '959-865-0331 x13740', 'hbarton@gmail.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 9, 8, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(218, '11092019010', '11091900311181010', 'Bart Collins DDS', 'female', '1973-12-11', '', '526 Dietrich Courts\nNorth Kris, UT 61999', '243.999.9989 x0055', 'ernestina20@hotmail.com', '2019-09-11', '40000', '', 'Junior Office Staff', 'No Camp', '1', '2017', '0', 9, 9, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40');

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
  `nos` int(11) NOT NULL,
  `remark` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `position_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobcareers`
--

INSERT INTO `jobcareers` (`id`, `gender`, `senddate`, `nos`, `remark`, `status`, `company_id`, `position_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'both', '2019-09-27', 3, 'Testing for software', 1, 1, 6, 1, '2019-09-11 00:53:33', '2019-09-11 00:53:33');

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
(2, 'App\\User', 7),
(2, 'App\\User', 9),
(2, 'App\\User', 29),
(2, 'App\\User', 30),
(3, 'App\\User', 1),
(3, 'App\\User', 2),
(3, 'App\\User', 7),
(3, 'App\\User', 9),
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
(6, 'App\\User', 7),
(6, 'App\\User', 9),
(6, 'App\\User', 29),
(6, 'App\\User', 30),
(7, 'App\\User', 1),
(7, 'App\\User', 2),
(7, 'App\\User', 7),
(7, 'App\\User', 9),
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
(9, 'App\\User', 7),
(9, 'App\\User', 9),
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
(14, 'App\\User', 30),
(14, 'App\\User', 31),
(15, 'App\\User', 1),
(16, '', 1);

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
(4, 'App\\User', 13),
(4, 'App\\User', 22),
(4, 'App\\User', 23),
(4, 'App\\User', 24),
(4, 'App\\User', 25),
(4, 'App\\User', 26),
(4, 'App\\User', 27),
(4, 'App\\User', 28),
(4, 'App\\User', 31),
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

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'BEfgAQUqF27XLaxKdlaD5jeKPIyx0imbT4V4HeMI', 'http://localhost', 1, 0, 0, '2019-09-10 23:43:44', '2019-09-10 23:43:44'),
(2, NULL, 'Laravel Password Grant Client', 'L0kM1CtmxThg6rU3q2V45U7ZDrzmyP1wq5ve9v3T', 'http://localhost', 0, 1, 0, '2019-09-10 23:43:44', '2019-09-10 23:43:44'),
(3, NULL, 'Laravel Personal Access Client', 'D91HsxP2AeiwnAZZBxTkPHH83ODQWtTcY59xw2cT', 'http://localhost', 1, 0, 0, '2019-09-16 22:26:44', '2019-09-16 22:26:44'),
(4, NULL, 'Laravel Password Grant Client', 'auJgWLuiGXVB22nOyUzpB9DRBCFeyL2b2UFwVKze', 'http://localhost', 0, 1, 0, '2019-09-16 22:26:44', '2019-09-16 22:26:44');

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

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-09-10 23:43:44', '2019-09-10 23:43:44'),
(2, 3, '2019-09-16 22:26:44', '2019-09-16 22:26:44');

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
(14, 'Took Attendance', 'web', '2019-08-29 21:53:07', '2019-08-29 21:53:07'),
(15, 'Accept Student Enquiry ( PHP Bootcamp - MDY )', 'web', '2019-09-11 02:28:50', '2019-09-11 02:28:50'),
(16, 'Enroll Student ( PHP Bootcamp - MDY )', 'web', '2019-09-17 13:14:40', '2019-09-17 13:14:40');

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
(1, '7th Oct 2019', 'Batch 10', '2019-10-07', '2019-11-23', 1, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(2, '23rd Oct 2019', 'Batch 11', '2019-10-23', '2019-12-06', 1, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(3, '16th Oct 2019', 'Batch 1', '2019-10-16', '2019-11-29', 2, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(4, '20th Sep 2019', 'YGN HR Batch 40', '2019-09-20', '2019-11-15', 3, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(5, '20th Sep 2019', 'YGN HR Batch 41', '2019-09-20', '2019-12-09', 4, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(6, '20th Sep 2019', 'YGN HR Batch 42', '2019-09-20', '2019-12-09', 5, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(7, '21th Sep 2019', 'YGN HR Batch 43', '2019-09-21', '2019-11-16', 3, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(8, '21th Sep 2019', 'YGN HR Batch 43', '2019-09-21', '2019-12-10', 4, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(9, '21th Sep 2019', 'YGN HR Batch 44', '2019-09-21', '2019-12-10', 5, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(10, '22th Sep 2019', 'YGN HR Batch 45', '2019-09-22', '2019-11-17', 3, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(11, '22th Sep 2019', 'YGN HR Batch 46', '2019-09-22', '2019-12-11', 4, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(12, '22th Sep 2019', 'YGN HR Batch 47', '2019-09-22', '2019-12-11', 5, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(13, '16th Sep 2019', 'MDY HR Batch 29', '2019-09-16', '2019-11-21', 10, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(14, '18th Sep 2019', 'MDY HR Batch 30', '2019-09-18', '2019-12-14', 8, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(15, '25th Sep 2019', 'MDY HR Batch 31', '2019-09-25', '2019-11-30', 10, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(16, '25th Sep 2019', 'MDY HR Batch 32', '2019-09-25', '2019-11-30', 9, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(17, '10th Aug 2019', 'YGN iOS Batch 27', '2019-08-10', '2019-12-07', 11, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(18, '7 Sep 2019', 'YGN iOS Batch 28', '2019-09-07', '2020-01-04', 12, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20');

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
(1, 1, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(2, 1, 2, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(3, 2, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(4, 2, 2, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(5, 3, 1, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(6, 3, 13, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(7, 4, 4, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(8, 5, 5, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(9, 6, 6, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(10, 7, 5, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(11, 8, 6, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(12, 9, 4, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(13, 10, 6, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(14, 11, 4, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(15, 12, 5, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(16, 13, 8, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(17, 14, 8, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(18, 15, 9, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(19, 16, 7, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(20, 17, 3, '2019-09-18 14:22:20', '2019-09-18 14:22:20'),
(21, 18, 3, '2019-09-18 14:22:20', '2019-09-18 14:22:20');

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
(29, '1990-12-04', 'U Mg Mg', '987654321', '987654321', '1567703574.jpeg', '2019-09-01', '2019-09-05', '0', 1, 30, '2019-09-05 10:42:54', '2019-09-05 10:42:54'),
(30, '2019-09-09', 'U Ba', 'hhhhhhhhhh', '0987654321', '1568014785.jpeg', '2019-09-09', '2019-09-09', '0', 1, 31, '2019-09-08 23:39:47', '2019-09-08 23:39:47');

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
  `actionstatus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inquire_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `secinstallmentdate`, `secinstallmentamount`, `remark`, `resume`, `status`, `actionstatus`, `inquire_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 1, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(2, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 2, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(3, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 3, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(4, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 4, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(5, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 5, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(6, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 6, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(7, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 7, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(8, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 8, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(9, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 9, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(10, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 10, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(11, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 11, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(12, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 12, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(13, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 13, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(14, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 14, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(15, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 15, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(16, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 16, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(17, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 17, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(18, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 18, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(19, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 19, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(20, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(21, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 21, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(22, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 22, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(23, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 23, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(24, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 24, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(25, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 25, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(26, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 26, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(27, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 27, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(28, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 28, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(29, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 29, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(30, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 30, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(31, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 31, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(32, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 32, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(33, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 33, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(34, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 34, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(35, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 35, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(36, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 36, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(37, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 37, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(38, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 38, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(39, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 39, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(40, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 40, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(41, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 41, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(42, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 42, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(43, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 43, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(44, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 44, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(45, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 45, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(46, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 46, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(47, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 47, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(48, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 48, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(49, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 49, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(50, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 50, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(51, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 51, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(52, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 52, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(53, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 53, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(54, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 54, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(55, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 55, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(56, '2019-10-07', '180000', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 56, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(57, '2019-09-19', '0', '', '', 1, '0', 1, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(58, '2019-09-19', '0', '', '', 1, '0', 2, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(59, '2019-09-19', '0', '', '', 1, '0', 3, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(60, '2019-09-19', '0', '', '', 1, '0', 4, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(61, '2019-10-23', '100000', '', '', 1, '0', 6, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(62, '2019-10-23', '100000', '', '', 1, '0', 7, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(63, '2019-10-23', '100000', '', '', 1, '0', 8, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(64, '2019-10-23', '100000', '', '', 1, '0', 9, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(65, '2019-10-23', '100000', '', '', 1, '0', 10, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(66, '2019-10-23', '100000', '', '', 1, '0', 11, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(67, '2019-10-23', '100000', '', '', 1, '0', 12, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(68, '2019-10-23', '100000', '', '', 1, '0', 13, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(69, '2019-10-23', '100000', '', '', 1, '0', 14, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(70, '2019-10-23', '100000', '', '', 1, '0', 15, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(71, '2019-10-23', '100000', '', '', 1, '0', 16, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(72, '2019-10-23', '100000', '', '', 1, '0', 17, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(73, '2019-10-23', '100000', '', '', 1, '0', 18, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(74, '2019-10-23', '100000', '', '', 1, '0', 19, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(75, '2019-10-23', '100000', '', '', 1, '0', 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(76, '2019-10-23', '100000', '', '', 1, '0', 21, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(77, '2019-10-23', '100000', '', '', 1, '0', 22, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(78, '2019-10-23', '100000', '', '', 1, '0', 23, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(79, '2019-10-23', '100000', '', '', 1, '0', 24, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(80, '2019-10-23', '100000', '', '', 1, '0', 25, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(81, '2019-10-23', '100000', '', '', 1, '0', 26, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(82, '2019-10-23', '100000', '', '', 1, '0', 27, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(83, '2019-10-23', '100000', '', '', 1, '0', 28, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(84, '2019-10-23', '100000', '', '', 1, '0', 29, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(85, '2019-10-23', '100000', '', '', 1, '0', 30, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(86, '2019-10-23', '100000', '', '', 1, '0', 31, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(87, '2019-10-23', '100000', '', '', 1, '0', 32, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(88, '2019-10-23', '100000', '', '', 1, '0', 33, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(89, '2019-10-23', '100000', '', '', 1, '0', 34, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(90, '2019-10-23', '100000', '', '', 1, '0', 35, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(91, '2019-10-23', '100000', '', '', 1, '0', 36, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(92, '2019-10-23', '100000', '', '', 1, '0', 37, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(93, '2019-10-23', '100000', '', '', 1, '0', 38, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(94, '2019-10-23', '100000', '', '', 1, '0', 39, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(95, '2019-10-23', '100000', '', '', 1, '0', 40, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(96, '2019-10-23', '100000', '', '', 1, '0', 41, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(97, '2019-10-23', '100000', '', '', 1, '0', 42, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(98, '2019-10-23', '100000', '', '', 1, '0', 43, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(99, '2019-10-23', '100000', '', '', 1, '0', 44, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(100, '2019-10-23', '100000', '', '', 1, '0', 45, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(101, '2019-10-23', '100000', '', '', 1, '0', 46, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(102, '2019-10-23', '100000', '', '', 1, '0', 47, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(103, '2019-10-23', '100000', '', '', 1, '0', 48, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(104, '2019-10-23', '100000', '', '', 1, '0', 49, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(105, '2019-10-23', '100000', '', '', 1, '0', 50, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(106, '2019-10-23', '100000', '', '', 1, '0', 51, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(107, '2019-10-23', '100000', '', '', 1, '0', 52, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(108, '2019-10-23', '100000', '', '', 1, '0', 53, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(109, '2019-10-23', '100000', '', '', 1, '0', 54, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(110, '2019-10-23', '100000', '', '', 1, '0', 55, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(111, '2019-10-23', '100000', '', '', 1, '0', 56, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(112, '2019-09-12', '0', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 1, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(113, '2019-09-12', '0', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 2, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(114, '2019-09-12', '0', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 3, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(115, '2019-09-12', '0', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 4, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(116, '2019-09-12', '0', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 5, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(117, '2019-09-12', '0', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 6, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(118, '2019-09-12', '0', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 7, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(119, '2019-09-12', '0', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 8, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(120, '2019-09-12', '0', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 9, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(121, '2019-09-12', '0', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 10, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(122, '2019-09-12', '0', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 11, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(123, '2019-09-12', '0', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 12, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(124, '2019-09-12', '0', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 13, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(125, '2019-09-12', '0', 'HTML,CSS little experience', '1568272312demo.docx', 1, '0', 14, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(126, '2019-09-12', '180000', 'HTML,CSS little experience', '', 1, '0', 16, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(127, '2019-09-12', '180000', 'HTML,CSS little experience', '', 1, '0', 17, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(128, '2019-09-12', '180000', 'HTML,CSS little experience', '', 1, '0', 18, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(129, '2019-09-12', '180000', 'HTML,CSS little experience', '', 1, '0', 19, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(130, '2019-09-12', '180000', 'HTML,CSS little experience', '', 1, '0', 20, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(131, '2019-09-12', '180000', 'HTML,CSS little experience', '', 1, '0', 21, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(132, '2019-09-12', '180000', 'HTML,CSS little experience', '', 1, '0', 22, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(133, '2019-09-12', '180000', 'HTML,CSS little experience', '', 1, '0', 23, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(134, '2019-09-12', '180000', 'HTML,CSS little experience', '', 1, '0', 24, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(135, '2019-09-12', '180000', 'HTML,CSS little experience', '', 1, '0', 25, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(136, '2019-09-20', '100000', 'HTML,CSS little experience', '', 1, '0', 1, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(137, '2019-09-20', '100000', 'HTML,CSS little experience', '', 1, '0', 2, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(138, '2019-09-20', '100000', 'HTML,CSS little experience', '', 1, '0', 3, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(139, '2019-09-20', '100000', 'HTML,CSS little experience', '', 1, '0', 4, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(140, '2019-09-20', '100000', 'HTML,CSS little experience', '', 1, '0', 5, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(141, '2019-09-20', '100000', 'HTML,CSS little experience', '', 1, '0', 6, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(142, '2019-09-20', '100000', 'HTML,CSS little experience', '', 1, '0', 7, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(143, '2019-09-20', '100000', 'HTML,CSS little experience', '', 1, '0', 8, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(144, '2019-09-20', '100000', 'HTML,CSS little experience', '', 1, '0', 9, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(145, '2019-09-20', '100000', 'HTML,CSS little experience', '', 1, '0', 10, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(146, '2019-09-20', '0', 'HTML,CSS little experience', '', 1, '0', 1, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(147, '2019-09-20', '0', 'HTML,CSS little experience', '', 1, '0', 2, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(148, '2019-09-20', '0', 'HTML,CSS little experience', '', 1, '0', 3, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(149, '2019-09-20', '0', 'HTML,CSS little experience', '', 1, '0', 4, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(150, '2019-09-20', '0', 'HTML,CSS little experience', '', 1, '0', 5, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(151, '2019-09-20', '0', 'HTML,CSS little experience', '', 1, '0', 6, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(152, '2019-09-20', '0', 'HTML,CSS little experience', '', 1, '0', 7, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(153, '2019-09-20', '0', 'HTML,CSS little experience', '', 1, '0', 8, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(154, '2019-09-20', '0', 'HTML,CSS little experience', '', 1, '0', 9, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(155, '2019-09-20', '0', 'HTML,CSS little experience', '', 1, '0', 10, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(156, '2019-09-20', '0', 'HTML,CSS little experience', '', 1, '0', 1, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(157, '2019-09-20', '0', 'HTML,CSS little experience', '', 1, '0', 2, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(158, '2019-09-20', '0', 'HTML,CSS little experience', '', 1, '0', 3, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(159, '2019-09-20', '0', 'HTML,CSS little experience', '', 1, '0', 4, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(160, '2019-09-20', '0', 'HTML,CSS little experience', '', 1, '0', 5, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(161, '2019-09-20', '0', 'HTML,CSS little experience', '', 1, '0', 6, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(162, '2019-09-20', '0', 'HTML,CSS little experience', '', 1, '0', 7, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(163, '2019-09-20', '0', 'HTML,CSS little experience', '', 1, '0', 8, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(164, '2019-09-20', '0', 'HTML,CSS little experience', '', 1, '0', 9, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40'),
(165, '2019-09-20', '0', 'HTML,CSS little experience', '', 1, '0', 10, 1, '2019-09-19 03:18:40', '2019-09-19 03:18:40');

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
(10, 30, 3, 1, '2019-09-08 23:40:38', '2019-09-08 23:40:38'),
(11, 10, 5, 1, '2019-09-10 23:56:59', '2019-09-10 23:56:59'),
(13, 12, 5, 1, '2019-09-17 01:14:16', '2019-09-17 01:14:16');

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
(72, 'Yamethin', 2, 1, '2019-08-29 21:49:27', '2019-08-29 21:49:27'),
(73, 'Testing', 1, 1, '2019-09-18 07:37:49', '2019-09-18 07:43:12');

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
(13, 'Hein Min Htet', 'heinminhtet8138@gmail.com', 4, NULL, '$2y$10$gTFgfWtOKTlzQJTdodr9L.g4K08vTAl4DQ3Ip87qg/Hj5aR389Xpu', NULL, '2019-08-29 22:18:50', '2019-09-17 01:13:50'),
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
(30, 'Zar Chi Lin', 'zarchilin@gmail.com', 1, NULL, '$2y$10$hTelmC4CtZXC3xK/jdVtd.SOl0Vf626LdypWP16E7l7uQ16tTwkbS', NULL, '2019-09-05 10:42:54', '2019-09-05 10:42:54'),
(31, 'test staff', 'teststaff@gmail.com', 4, NULL, '$2y$10$7hh6uGzjxaBHTGLhXwdlfuiIJb/0e1LPPmsPVCIb7kdHhp1ldKOQ.', NULL, '2019-09-08 23:39:47', '2019-09-08 23:39:47');

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
-- Indexes for table `education`
--
ALTER TABLE `education`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hires`
--
ALTER TABLE `hires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inquires`
--
ALTER TABLE `inquires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `interviews`
--
ALTER TABLE `interviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobcareers`
--
ALTER TABLE `jobcareers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `section_teacher`
--
ALTER TABLE `section_teacher`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `townships`
--
ALTER TABLE `townships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

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
