-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2020 at 09:57 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tyreservice`
 
 
-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `created_at`, `updated_at`, `name`, `email`, `phone_no`, `message`) VALUES
(3, '2020-05-08 15:16:07', '2020-05-08 15:16:07', 'Gaurav Kumar', 'gauravkumar5823@gmail.com', '0225610135', 'I want to know about tire size is 7.50.16');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_17_071508_create_sessions_table', 1),
(5, '2020_04_29_020023_create_tyre_table', 1),
(6, '2020_04_29_020234_create_orders_table', 1),
(7, '2020_04_30_084347_create_feedback_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `user_id`, `cart`, `address`, `name`) VALUES
(1, '2020-05-04 14:20:40', '2020-05-04 14:20:40', 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:16;a:8:{s:3:\"qty\";i:1;s:5:\"price\";i:123;s:4:\"item\";O:8:\"App\\Tyre\":27:{s:8:\"\0*\0table\";s:4:\"Tyre\";s:11:\"\0*\0fillable\";a:6:{i:0;s:4:\"name\";i:1;s:4:\"type\";i:2;s:5:\"width\";i:3;s:7:\"profile\";i:4;s:3:\"rim\";i:5;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:16;s:10:\"created_at\";s:19:\"2020-05-04 12:18:12\";s:10:\"updated_at\";s:19:\"2020-05-04 12:18:12\";s:4:\"name\";s:12:\"Gaurav Kumar\";s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:1:\"s\";s:5:\"price\";i:123;}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:16;s:10:\"created_at\";s:19:\"2020-05-04 12:18:12\";s:10:\"updated_at\";s:19:\"2020-05-04 12:18:12\";s:4:\"name\";s:12:\"Gaurav Kumar\";s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:1:\"s\";s:5:\"price\";i:123;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:1:\"s\";s:2:\"id\";i:16;}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:123;}', '93B Boundary Rd Claudelands', 'Gaurav Kumar'),
(2, '2020-05-04 14:21:15', '2020-05-04 14:21:15', 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:16;a:8:{s:3:\"qty\";i:1;s:5:\"price\";i:123;s:4:\"item\";O:8:\"App\\Tyre\":27:{s:8:\"\0*\0table\";s:4:\"Tyre\";s:11:\"\0*\0fillable\";a:6:{i:0;s:4:\"name\";i:1;s:4:\"type\";i:2;s:5:\"width\";i:3;s:7:\"profile\";i:4;s:3:\"rim\";i:5;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:16;s:10:\"created_at\";s:19:\"2020-05-04 12:18:12\";s:10:\"updated_at\";s:19:\"2020-05-04 12:18:12\";s:4:\"name\";s:12:\"Gaurav Kumar\";s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:1:\"s\";s:5:\"price\";i:123;}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:16;s:10:\"created_at\";s:19:\"2020-05-04 12:18:12\";s:10:\"updated_at\";s:19:\"2020-05-04 12:18:12\";s:4:\"name\";s:12:\"Gaurav Kumar\";s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:1:\"s\";s:5:\"price\";i:123;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:1:\"s\";s:2:\"id\";i:16;}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:123;}', '93B Boundary Rd Claudelands', 'Gaurav Kumar'),
(3, '2020-05-04 14:21:55', '2020-05-04 14:21:55', 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:16;a:8:{s:3:\"qty\";i:1;s:5:\"price\";i:123;s:4:\"item\";O:8:\"App\\Tyre\":27:{s:8:\"\0*\0table\";s:4:\"Tyre\";s:11:\"\0*\0fillable\";a:6:{i:0;s:4:\"name\";i:1;s:4:\"type\";i:2;s:5:\"width\";i:3;s:7:\"profile\";i:4;s:3:\"rim\";i:5;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:16;s:10:\"created_at\";s:19:\"2020-05-04 12:18:12\";s:10:\"updated_at\";s:19:\"2020-05-04 12:18:12\";s:4:\"name\";s:12:\"Gaurav Kumar\";s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:1:\"s\";s:5:\"price\";i:123;}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:16;s:10:\"created_at\";s:19:\"2020-05-04 12:18:12\";s:10:\"updated_at\";s:19:\"2020-05-04 12:18:12\";s:4:\"name\";s:12:\"Gaurav Kumar\";s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:1:\"s\";s:5:\"price\";i:123;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:1:\"s\";s:2:\"id\";i:16;}i:17;a:8:{s:3:\"qty\";i:1;s:5:\"price\";i:99;s:4:\"item\";O:8:\"App\\Tyre\":27:{s:8:\"\0*\0table\";s:4:\"Tyre\";s:11:\"\0*\0fillable\";a:6:{i:0;s:4:\"name\";i:1;s:4:\"type\";i:2;s:5:\"width\";i:3;s:7:\"profile\";i:4;s:3:\"rim\";i:5;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:17;s:10:\"created_at\";s:19:\"2020-05-04 12:26:33\";s:10:\"updated_at\";s:19:\"2020-05-04 12:26:33\";s:4:\"name\";s:3:\"mrf\";s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:2:\"20\";s:5:\"price\";i:99;}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:17;s:10:\"created_at\";s:19:\"2020-05-04 12:26:33\";s:10:\"updated_at\";s:19:\"2020-05-04 12:26:33\";s:4:\"name\";s:3:\"mrf\";s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:2:\"20\";s:5:\"price\";i:99;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:2:\"20\";s:2:\"id\";i:17;}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";i:222;}', '93B Boundary Rd Claudelands', 'Gaurav Kumar'),
(4, '2020-05-04 18:45:31', '2020-05-04 18:45:31', 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:17;a:8:{s:3:\"qty\";i:1;s:5:\"price\";i:99;s:4:\"item\";O:8:\"App\\Tyre\":27:{s:8:\"\0*\0table\";s:4:\"Tyre\";s:11:\"\0*\0fillable\";a:6:{i:0;s:4:\"name\";i:1;s:4:\"type\";i:2;s:5:\"width\";i:3;s:7:\"profile\";i:4;s:3:\"rim\";i:5;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:17;s:10:\"created_at\";s:19:\"2020-05-04 12:26:33\";s:10:\"updated_at\";s:19:\"2020-05-04 12:26:33\";s:4:\"name\";s:3:\"mrf\";s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:2:\"20\";s:5:\"price\";i:99;}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:17;s:10:\"created_at\";s:19:\"2020-05-04 12:26:33\";s:10:\"updated_at\";s:19:\"2020-05-04 12:26:33\";s:4:\"name\";s:3:\"mrf\";s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:2:\"20\";s:5:\"price\";i:99;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:2:\"20\";s:2:\"id\";i:17;}i:16;a:8:{s:3:\"qty\";i:1;s:5:\"price\";i:123;s:4:\"item\";O:8:\"App\\Tyre\":27:{s:8:\"\0*\0table\";s:4:\"Tyre\";s:11:\"\0*\0fillable\";a:6:{i:0;s:4:\"name\";i:1;s:4:\"type\";i:2;s:5:\"width\";i:3;s:7:\"profile\";i:4;s:3:\"rim\";i:5;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:16;s:10:\"created_at\";s:19:\"2020-05-04 12:18:12\";s:10:\"updated_at\";s:19:\"2020-05-04 12:18:12\";s:4:\"name\";s:12:\"Gaurav Kumar\";s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:1:\"s\";s:5:\"price\";i:123;}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:16;s:10:\"created_at\";s:19:\"2020-05-04 12:18:12\";s:10:\"updated_at\";s:19:\"2020-05-04 12:18:12\";s:4:\"name\";s:12:\"Gaurav Kumar\";s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:1:\"s\";s:5:\"price\";i:123;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:1:\"s\";s:2:\"id\";i:16;}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";i:222;}', '93B Boundary Rd Claudelands, ,', 'Gaurav Kumar'),
(5, '2020-05-04 20:19:29', '2020-05-04 20:19:29', 2, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:16;a:8:{s:3:\"qty\";i:1;s:5:\"price\";i:123;s:4:\"item\";O:8:\"App\\Tyre\":27:{s:8:\"\0*\0table\";s:4:\"Tyre\";s:11:\"\0*\0fillable\";a:6:{i:0;s:4:\"name\";i:1;s:4:\"type\";i:2;s:5:\"width\";i:3;s:7:\"profile\";i:4;s:3:\"rim\";i:5;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:16;s:10:\"created_at\";s:19:\"2020-05-04 12:18:12\";s:10:\"updated_at\";s:19:\"2020-05-04 12:18:12\";s:4:\"name\";s:12:\"Gaurav Kumar\";s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:1:\"s\";s:5:\"price\";i:123;}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:16;s:10:\"created_at\";s:19:\"2020-05-04 12:18:12\";s:10:\"updated_at\";s:19:\"2020-05-04 12:18:12\";s:4:\"name\";s:12:\"Gaurav Kumar\";s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:1:\"s\";s:5:\"price\";i:123;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:1:\"s\";s:2:\"id\";i:16;}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:123;}', '93B Boundary Rd Claudelands, ,', 'Gaurav Kumar'),
(6, '2020-05-04 20:23:48', '2020-05-04 20:23:48', 2, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:17;a:8:{s:3:\"qty\";i:1;s:5:\"price\";i:99;s:4:\"item\";O:8:\"App\\Tyre\":27:{s:8:\"\0*\0table\";s:4:\"Tyre\";s:11:\"\0*\0fillable\";a:6:{i:0;s:4:\"name\";i:1;s:4:\"type\";i:2;s:5:\"width\";i:3;s:7:\"profile\";i:4;s:3:\"rim\";i:5;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:17;s:10:\"created_at\";s:19:\"2020-05-04 12:26:33\";s:10:\"updated_at\";s:19:\"2020-05-04 12:26:33\";s:4:\"name\";s:3:\"mrf\";s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:2:\"20\";s:5:\"price\";i:99;}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:17;s:10:\"created_at\";s:19:\"2020-05-04 12:26:33\";s:10:\"updated_at\";s:19:\"2020-05-04 12:26:33\";s:4:\"name\";s:3:\"mrf\";s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:2:\"20\";s:5:\"price\";i:99;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:2:\"20\";s:2:\"id\";i:17;}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:99;}', '93B Boundary Rd Claudelands, ,', 'Gaurav Kumar'),
(7, '2020-05-04 20:26:34', '2020-05-04 20:26:34', 2, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:16;a:8:{s:3:\"qty\";i:1;s:5:\"price\";i:123;s:4:\"item\";O:8:\"App\\Tyre\":27:{s:8:\"\0*\0table\";s:4:\"Tyre\";s:11:\"\0*\0fillable\";a:6:{i:0;s:4:\"name\";i:1;s:4:\"type\";i:2;s:5:\"width\";i:3;s:7:\"profile\";i:4;s:3:\"rim\";i:5;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:16;s:10:\"created_at\";s:19:\"2020-05-04 12:18:12\";s:10:\"updated_at\";s:19:\"2020-05-04 12:18:12\";s:4:\"name\";s:12:\"Gaurav Kumar\";s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:1:\"s\";s:5:\"price\";i:123;}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:16;s:10:\"created_at\";s:19:\"2020-05-04 12:18:12\";s:10:\"updated_at\";s:19:\"2020-05-04 12:18:12\";s:4:\"name\";s:12:\"Gaurav Kumar\";s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:1:\"s\";s:5:\"price\";i:123;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:1:\"s\";s:2:\"id\";i:16;}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:123;}', '93B Boundary Rd Claudelands, ,', 'Gaurav Kumar'),
(8, '2020-05-04 20:27:35', '2020-05-04 20:27:35', 2, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:16;a:8:{s:3:\"qty\";i:1;s:5:\"price\";i:123;s:4:\"item\";O:8:\"App\\Tyre\":27:{s:8:\"\0*\0table\";s:4:\"Tyre\";s:11:\"\0*\0fillable\";a:6:{i:0;s:4:\"name\";i:1;s:4:\"type\";i:2;s:5:\"width\";i:3;s:7:\"profile\";i:4;s:3:\"rim\";i:5;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:16;s:10:\"created_at\";s:19:\"2020-05-04 12:18:12\";s:10:\"updated_at\";s:19:\"2020-05-04 12:18:12\";s:4:\"name\";s:12:\"Gaurav Kumar\";s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:1:\"s\";s:5:\"price\";i:123;}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:16;s:10:\"created_at\";s:19:\"2020-05-04 12:18:12\";s:10:\"updated_at\";s:19:\"2020-05-04 12:18:12\";s:4:\"name\";s:12:\"Gaurav Kumar\";s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:1:\"s\";s:5:\"price\";i:123;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:1:\"s\";s:2:\"id\";i:16;}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:123;}', '93B Boundary Rd Claudelands, ,', 'Gaurav Kumar'),
(9, '2020-05-06 10:22:54', '2020-05-06 10:22:54', 3, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:42;a:8:{s:3:\"qty\";i:1;s:5:\"price\";i:123;s:4:\"item\";O:8:\"App\\Tyre\":27:{s:8:\"\0*\0table\";s:4:\"Tyre\";s:11:\"\0*\0fillable\";a:6:{i:0;s:4:\"name\";i:1;s:4:\"type\";i:2;s:5:\"width\";i:3;s:7:\"profile\";i:4;s:3:\"rim\";i:5;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:42;s:10:\"created_at\";s:19:\"2020-05-06 11:08:54\";s:10:\"updated_at\";s:19:\"2020-05-06 11:08:54\";s:4:\"name\";s:3:\"mrf\";s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:2:\"16\";s:5:\"price\";i:123;}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:42;s:10:\"created_at\";s:19:\"2020-05-06 11:08:54\";s:10:\"updated_at\";s:19:\"2020-05-06 11:08:54\";s:4:\"name\";s:3:\"mrf\";s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:2:\"16\";s:5:\"price\";i:123;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:4:\"type\";s:3:\"car\";s:5:\"width\";s:1:\"7\";s:7:\"profile\";s:2:\"50\";s:3:\"rim\";s:2:\"16\";s:2:\"id\";i:42;}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:123;}', '93B Boundary Rd Claudelands, ,', 'Gaurav Kumar'),
(10, '2020-05-08 15:17:12', '2020-05-08 15:17:12', 4, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:47;a:8:{s:3:\"qty\";i:1;s:5:\"price\";i:100;s:4:\"item\";O:8:\"App\\Tyre\":27:{s:8:\"\0*\0table\";s:4:\"Tyre\";s:11:\"\0*\0fillable\";a:6:{i:0;s:4:\"name\";i:1;s:4:\"type\";i:2;s:5:\"width\";i:3;s:7:\"profile\";i:4;s:3:\"rim\";i:5;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:47;s:10:\"created_at\";s:19:\"2020-05-09 03:08:58\";s:10:\"updated_at\";s:19:\"2020-05-09 03:08:58\";s:4:\"name\";s:11:\"Bridgestone\";s:4:\"type\";s:5:\"truck\";s:5:\"width\";s:2:\"10\";s:7:\"profile\";s:2:\"00\";s:3:\"rim\";s:2:\"20\";s:5:\"price\";i:100;}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:47;s:10:\"created_at\";s:19:\"2020-05-09 03:08:58\";s:10:\"updated_at\";s:19:\"2020-05-09 03:08:58\";s:4:\"name\";s:11:\"Bridgestone\";s:4:\"type\";s:5:\"truck\";s:5:\"width\";s:2:\"10\";s:7:\"profile\";s:2:\"00\";s:3:\"rim\";s:2:\"20\";s:5:\"price\";i:100;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:4:\"type\";s:5:\"truck\";s:5:\"width\";s:2:\"10\";s:7:\"profile\";s:2:\"00\";s:3:\"rim\";s:2:\"20\";s:2:\"id\";i:47;}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:100;}', '93B Boundary Rd Claudelands, ,', 'Gaurav Kumar'),
(11, '2020-05-08 17:10:47', '2020-05-08 17:10:47', 4, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:47;a:8:{s:3:\"qty\";i:1;s:5:\"price\";i:100;s:4:\"item\";O:8:\"App\\Tyre\":27:{s:8:\"\0*\0table\";s:4:\"Tyre\";s:11:\"\0*\0fillable\";a:6:{i:0;s:4:\"name\";i:1;s:4:\"type\";i:2;s:5:\"width\";i:3;s:7:\"profile\";i:4;s:3:\"rim\";i:5;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:47;s:10:\"created_at\";s:19:\"2020-05-09 03:08:58\";s:10:\"updated_at\";s:19:\"2020-05-09 03:08:58\";s:4:\"name\";s:11:\"Bridgestone\";s:4:\"type\";s:5:\"truck\";s:5:\"width\";s:2:\"10\";s:7:\"profile\";s:2:\"00\";s:3:\"rim\";s:2:\"20\";s:5:\"price\";i:100;}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:47;s:10:\"created_at\";s:19:\"2020-05-09 03:08:58\";s:10:\"updated_at\";s:19:\"2020-05-09 03:08:58\";s:4:\"name\";s:11:\"Bridgestone\";s:4:\"type\";s:5:\"truck\";s:5:\"width\";s:2:\"10\";s:7:\"profile\";s:2:\"00\";s:3:\"rim\";s:2:\"20\";s:5:\"price\";i:100;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:4:\"type\";s:5:\"truck\";s:5:\"width\";s:2:\"10\";s:7:\"profile\";s:2:\"00\";s:3:\"rim\";s:2:\"20\";s:2:\"id\";i:47;}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:100;}', '93B Boundary Rd Claudelands, ,', 'Gaurav Kumar'),
(12, '2020-05-08 19:09:53', '2020-05-08 19:09:53', 5, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:53;a:8:{s:3:\"qty\";i:1;s:5:\"price\";i:89;s:4:\"item\";O:8:\"App\\Tyre\":27:{s:8:\"\0*\0table\";s:4:\"Tyre\";s:11:\"\0*\0fillable\";a:6:{i:0;s:4:\"name\";i:1;s:4:\"type\";i:2;s:5:\"width\";i:3;s:7:\"profile\";i:4;s:3:\"rim\";i:5;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:9:{s:2:\"id\";i:53;s:10:\"created_at\";s:19:\"2020-05-09 03:12:43\";s:10:\"updated_at\";s:19:\"2020-05-09 03:12:43\";s:4:\"name\";s:6:\"Apollo\";s:4:\"type\";s:3:\"car\";s:5:\"width\";s:3:\"175\";s:7:\"profile\";s:2:\"70\";s:3:\"rim\";s:2:\"13\";s:5:\"price\";i:89;}s:11:\"\0*\0original\";a:9:{s:2:\"id\";i:53;s:10:\"created_at\";s:19:\"2020-05-09 03:12:43\";s:10:\"updated_at\";s:19:\"2020-05-09 03:12:43\";s:4:\"name\";s:6:\"Apollo\";s:4:\"type\";s:3:\"car\";s:5:\"width\";s:3:\"175\";s:7:\"profile\";s:2:\"70\";s:3:\"rim\";s:2:\"13\";s:5:\"price\";i:89;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:4:\"type\";s:3:\"car\";s:5:\"width\";s:3:\"175\";s:7:\"profile\";s:2:\"70\";s:3:\"rim\";s:2:\"13\";s:2:\"id\";i:53;}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:89;}', '65 Boundary Rd', 'karan');

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tyre`
--

CREATE TABLE `tyre` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tyre`
--

INSERT INTO `tyre` (`id`, `created_at`, `updated_at`, `name`, `type`, `width`, `profile`, `rim`, `price`) VALUES
(47, '2020-05-08 15:08:58', '2020-05-08 15:08:58', 'Bridgestone', 'truck', '10', '00', '20', 100),
(48, '2020-05-08 15:09:27', '2020-05-08 15:09:27', 'MRF', 'truck', '10', '00', '20', 100),
(49, '2020-05-08 15:09:42', '2020-05-08 15:09:42', 'Ceat', 'truck', '10', '00', '20', 100),
(50, '2020-05-08 15:10:51', '2020-05-08 15:10:51', 'Ceat', 'car', '165', '70', '10', 70),
(51, '2020-05-08 15:11:43', '2020-05-08 15:11:43', 'Goodyear', 'car', '165', '70', '10', 74),
(52, '2020-05-08 15:12:19', '2020-05-08 15:12:19', 'Goodyear', 'car', '175', '70', '13', 79),
(53, '2020-05-08 15:12:43', '2020-05-08 15:12:43', 'Apollo', 'car', '175', '70', '13', 89),
(54, '2020-05-08 15:13:40', '2020-05-08 15:13:40', 'Apollo', 'Bike', '3', '00', '18', 89),
(55, '2020-05-08 15:13:59', '2020-05-08 15:13:59', 'Firestone', 'Bike', '3', '00', '18', 40),
(56, '2020-05-08 15:14:30', '2020-05-08 15:14:30', 'Firestone', 'truck', '7', '50', '16', 70);

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Gaurav Kumar', 'gauravkumar5823@gmail.com', NULL, '$2y$10$NI9vhww40uf371rWZTBO9.J4lvDeS2K6S4QStRccKz444vMagKtve', NULL, '2020-05-08 15:16:49', '2020-05-08 15:16:49'),
(5, 'karan', 'karan@gmail.com', NULL, '$2y$10$aaFgDp5pzQ0.WZ43Nf5uruv.BTVHXsflEFhb6dGBsDoMPEwuIEkp6', NULL, '2020-05-08 19:09:14', '2020-05-08 19:09:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `tyre`
--
ALTER TABLE `tyre`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tyre`
--
ALTER TABLE `tyre`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
