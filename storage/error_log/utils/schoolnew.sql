-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2021 at 02:27 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schoolnew`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_employee_salaries`
--

CREATE TABLE `account_employee_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id=user_id',
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_other_costs`
--

CREATE TABLE `account_other_costs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_student_fees`
--

CREATE TABLE `account_student_fees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `fee_category_id` int(11) DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assign_students`
--

CREATE TABLE `assign_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL COMMENT 'user_id=student_id',
  `roll` int(11) DEFAULT NULL,
  `class_id` int(11) NOT NULL,
  `year_id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_students`
--

INSERT INTO `assign_students` (`id`, `student_id`, `roll`, `class_id`, `year_id`, `group_id`, `shift_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, 1, 1, 1, '2021-10-18 14:59:33', '2021-10-18 15:17:57'),
(2, 4, 1, 3, 3, 1, 1, '2021-10-18 15:04:52', '2021-10-18 15:23:47');

-- --------------------------------------------------------

--
-- Table structure for table `assign_subjects`
--

CREATE TABLE `assign_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `full_mark` double NOT NULL,
  `pass_mark` double NOT NULL,
  `subjective_mark` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_subjects`
--

INSERT INTO `assign_subjects` (`id`, `class_id`, `subject_id`, `full_mark`, `pass_mark`, `subjective_mark`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 100, 40, 100, '2021-10-18 14:54:39', '2021-10-18 14:54:39'),
(2, 1, 2, 100, 40, 100, '2021-10-18 14:54:39', '2021-10-18 14:54:39');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Head Teacher', '2021-10-18 14:56:06', '2021-10-18 14:56:06'),
(2, 'Assistant Teacher', '2021-10-18 14:56:19', '2021-10-18 14:56:19'),
(3, 'Teacher', '2021-10-18 14:56:36', '2021-10-18 14:56:36');

-- --------------------------------------------------------

--
-- Table structure for table `discount_students`
--

CREATE TABLE `discount_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assign_student_id` int(11) NOT NULL,
  `fee_category_id` int(11) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_students`
--

INSERT INTO `discount_students` (`id`, `assign_student_id`, `fee_category_id`, `discount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5, '2021-10-18 14:59:33', '2021-10-18 15:12:36'),
(2, 2, 1, 10, '2021-10-18 15:04:52', '2021-10-18 15:04:52');

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendances`
--

CREATE TABLE `employee_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id=user_id',
  `date` date NOT NULL,
  `attend_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_leaves`
--

CREATE TABLE `employee_leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id=user_id',
  `leave_purpose_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_sallary_logs`
--

CREATE TABLE `employee_sallary_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL COMMENT 'employee_id=User_id',
  `previous_salary` int(11) DEFAULT NULL,
  `present_salary` int(11) DEFAULT NULL,
  `increment_salary` int(11) DEFAULT NULL,
  `effected_salary` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_types`
--

CREATE TABLE `exam_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_types`
--

INSERT INTO `exam_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '1st Terminal Exam', '2021-10-18 14:44:52', '2021-10-18 14:46:36'),
(2, '2nd Terminal Exam', '2021-10-18 14:46:51', '2021-10-18 14:46:51'),
(3, '3rd Terminal Exam', '2021-10-18 14:47:04', '2021-10-18 14:47:04');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_categories`
--

CREATE TABLE `fee_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_categories`
--

INSERT INTO `fee_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'School Fee', '2021-10-18 14:27:42', '2021-10-18 14:27:42'),
(2, 'Exam Fee', '2021-10-18 14:27:54', '2021-10-18 14:27:54'),
(3, 'Monthly Fee', '2021-10-18 14:28:06', '2021-10-18 15:26:53');

-- --------------------------------------------------------

--
-- Table structure for table `fee_category_amounts`
--

CREATE TABLE `fee_category_amounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fee_category_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fee_category_amounts`
--

INSERT INTO `fee_category_amounts` (`id`, `fee_category_id`, `class_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5000, '2021-10-18 14:40:26', '2021-10-18 14:40:26'),
(2, 1, 2, 8000, '2021-10-18 14:40:26', '2021-10-18 14:40:26'),
(3, 1, 3, 10000, '2021-10-18 14:40:26', '2021-10-18 14:40:26'),
(4, 3, 3, 5000, '2021-10-18 15:27:25', '2021-10-18 15:27:25');

-- --------------------------------------------------------

--
-- Table structure for table `leave_purposes`
--

CREATE TABLE `leave_purposes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marks_grades`
--

CREATE TABLE `marks_grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `grade_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade_point` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_marks` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_marks` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_point` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_point` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_11_23_192918_create_sessions_table', 1),
(7, '2020_11_27_191622_create_student_classes_table', 1),
(8, '2020_11_27_201955_create_student_years_table', 1),
(9, '2020_11_27_205317_create_student_groups_table', 1),
(10, '2020_11_27_212648_create_student_shifts_table', 1),
(11, '2020_11_28_184513_create_fee_categories_table', 1),
(12, '2020_11_28_193421_create_fee_category_amounts_table', 1),
(13, '2020_11_29_190907_create_exam_types_table', 1),
(14, '2020_11_29_193820_create_school_subjects_table', 1),
(15, '2020_11_30_192807_create_assign_subjects_table', 1),
(16, '2020_11_30_211919_create_designations_table', 1),
(17, '2020_12_02_191137_create_assign_students_table', 1),
(18, '2020_12_02_191735_create_discount_students_table', 1),
(19, '2020_12_09_192120_create_employee_sallary_logs_table', 1),
(20, '2020_12_11_205416_create_leave_purposes_table', 1),
(21, '2020_12_11_210033_create_employee_leaves_table', 1),
(22, '2020_12_13_192045_create_employee_attendances_table', 1),
(23, '2020_12_15_214223_create_student_marks_table', 1),
(24, '2020_12_16_202402_create_marks_grades_table', 1),
(25, '2020_12_18_191232_create_account_student_fees_table', 1),
(26, '2020_12_18_212912_create_account_employee_salaries_table', 1),
(27, '2020_12_20_192742_create_account_other_costs_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `school_subjects`
--

CREATE TABLE `school_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `school_subjects`
--

INSERT INTO `school_subjects` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Mathematies', '2021-10-18 14:47:43', '2021-10-18 14:47:43'),
(2, 'English', '2021-10-18 14:47:56', '2021-10-18 14:47:56'),
(3, 'Biology', '2021-10-18 14:48:11', '2021-10-18 14:48:11'),
(4, 'Chemistry', '2021-10-18 14:48:30', '2021-10-18 14:48:30'),
(5, 'Economics', '2021-10-18 14:48:56', '2021-10-18 14:48:56'),
(6, 'Geography', '2021-10-18 14:49:38', '2021-10-18 14:49:38'),
(7, 'Physics', '2021-10-18 14:49:56', '2021-10-18 14:49:56'),
(8, 'Commerce', '2021-10-18 14:50:26', '2021-10-18 14:50:26'),
(9, 'Agric Science', '2021-10-18 14:50:44', '2021-10-18 14:50:44'),
(10, 'Home Economics', '2021-10-18 14:51:00', '2021-10-18 14:51:00'),
(11, 'Yoruba', '2021-10-18 14:51:20', '2021-10-18 14:51:20');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('gPjeX1jZq9qbFuCHcLL6tcX2RhDdtZVdnNkr8rrm', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.9 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiVk8wYlpMT1hGbVdFUzFsSFlya1luYWRJRjNkOURYMFp4TTlMTGtKQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9zY2hvb2wudGVzdC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkdHhUbG1aVUVZNTl1Ty5TT29LVkplZUFJaG1HazYxQVVFY245Rk0xUVhRUG4uSy9haVdDVksiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJHR4VGxtWlVFWTU5dU8uU09vS1ZKZWVBSWhtR2s2MUFVRWNuOUZNMVFYUVBuLksvYWlXQ1ZLIjt9', 1634569538),
('OMdwzkcf2uWnbTLchfl4dCvOLKb5oR4gLVXWdp0e', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.9 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiUGxXTU9EczdUQnEzSzgzbHBvcjA2NlpNZHVCS3M2dlQ5WDdMUXd0ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9zY2hvb2wudGVzdC9wcm9maWxlL3ZpZXciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJGtlUzBrS3FZaEdqTnhMeGhXc0dINnVpbk1KeVRaT2hFa1MybS8uREp2UnUuak9BUGhyU2IyIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRrZVMwa0txWWhHak54THhoV3NHSDZ1aW5NSnlUWk9oRWtTMm0vLkRKdlJ1LmpPQVBoclNiMiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1634575973),
('yJvSQO47WE9HxzgGhRhgBVZY7MDbAMhSY3Pfop7e', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.8 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiMHBBcmdxcExEVVNEZjM3RTFIc3FsWVRNT3BoZFNSQWJPOG5uZXExSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9zY2hvb2wudGVzdC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAka2VTMGtLcVloR2pOeEx4aFdzR0g2dWluTUp5VFpPaEVrUzJtLy5ESnZSdS5qT0FQaHJTYjIiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGtlUzBrS3FZaEdqTnhMeGhXc0dINnVpbk1KeVRaT2hFa1MybS8uREp2UnUuak9BUGhyU2IyIjt9', 1636594002),
('YXKdd1xeWBK5v5IiZchy354xKot9yGGm5FH7Xb3C', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.9 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoia2E5QU9vMlpmWjVxdFQ4TjdlamhmcnRyaThHQXV1YUo0ZlpoRXpBTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjQ6Imh0dHA6Ly9zY2hvb2wudGVzdC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkdHhUbG1aVUVZNTl1Ty5TT29LVkplZUFJaG1HazYxQVVFY245Rk0xUVhRUG4uSy9haVdDVksiO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJHR4VGxtWlVFWTU5dU8uU09vS1ZKZWVBSWhtR2s2MUFVRWNuOUZNMVFYUVBuLksvYWlXQ1ZLIjt9', 1634569439);

-- --------------------------------------------------------

--
-- Table structure for table `student_classes`
--

CREATE TABLE `student_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_classes`
--

INSERT INTO `student_classes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'SS 1', '2021-10-18 14:07:39', '2021-10-18 14:34:45'),
(2, 'SS 2', '2021-10-18 14:07:53', '2021-10-18 14:34:59'),
(3, 'SS 3', '2021-10-18 14:08:06', '2021-10-18 14:35:12');

-- --------------------------------------------------------

--
-- Table structure for table `student_groups`
--

CREATE TABLE `student_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_groups`
--

INSERT INTO `student_groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Science', '2021-10-18 14:35:25', '2021-10-18 14:35:25'),
(2, 'Commercial', '2021-10-18 14:35:37', '2021-10-18 14:35:37'),
(3, 'Art', '2021-10-18 14:35:49', '2021-10-18 14:35:49');

-- --------------------------------------------------------

--
-- Table structure for table `student_marks`
--

CREATE TABLE `student_marks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(11) NOT NULL COMMENT 'student_id=user_id',
  `id_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `assign_subject_id` int(11) DEFAULT NULL,
  `exam_type_id` int(11) DEFAULT NULL,
  `marks` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_shifts`
--

CREATE TABLE `student_shifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_shifts`
--

INSERT INTO `student_shifts` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Day', '2021-10-18 14:38:12', '2021-10-18 14:38:12'),
(2, 'Boarding', '2021-10-18 14:38:35', '2021-10-18 14:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `student_years`
--

CREATE TABLE `student_years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_years`
--

INSERT INTO `student_years` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '2019/2020', '2021-10-18 14:08:38', '2021-10-18 14:08:38'),
(2, '2020/2021', '2021-10-18 14:08:51', '2021-10-18 14:08:51'),
(3, '2021/2022', '2021-10-18 14:09:10', '2021-10-18 14:09:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usertype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Student,Employee,Admin',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'admin=head of sotware,operator=computer operator,user=employee',
  `join_date` date DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `usertype`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `mobile`, `address`, `gender`, `image`, `fname`, `mname`, `religion`, `id_no`, `dob`, `code`, `role`, `join_date`, `designation_id`, `salary`, `status`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin Roatek', 'admin@gmail.com', NULL, '$2y$10$keS0kKqYhGjNxLxhWsGH6uinMJyTZOhEkS2m/.DJvRu.jOAPhrSb2', NULL, NULL, '09070014685', 'ikeja Lagos', 'Male', '202110181500Testimonial 3.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'Admin', NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-10-18 12:50:28', '2021-10-18 14:00:44'),
(2, NULL, 'ADEYEMO RASHEED', 'rasheedolamide2015@gmail.com', NULL, '$2y$10$txTlmZUEY59uO.SOoKVJeeAIhmGk61AUEcn9FM1QXQPn.K/aiWCVK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-10-18 12:57:09', '2021-10-18 12:57:09'),
(3, 'Student', 'john mercy', NULL, NULL, '$2y$10$WsJPBl8ZLYFN4hpsyE1hsu4238cHsPta70bWcgJHfyTcG.zrJTbFO', NULL, NULL, '09070014685', 'ikeja Lagos', 'Female', '202110181559Testimonial 2.jpg', 'stephen', 'Victoria', 'Islam', '2019/20200001', '2004-02-10', '8091', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-10-18 14:59:33', '2021-10-18 14:59:33'),
(4, 'Student', 'olaoye hameed', NULL, NULL, '$2y$10$oUuINJrIaEtw5bHiFV4AHuS2eL2qWgiUJfrnwyHL/qWZ7Quz678/i', NULL, NULL, '09070014685', 'ikeja Lagos', 'Male', '202110181604Testimonial 1.jpg', 'Rasheed', 'Bolanle', 'Islam', '2021/20220004', '1998-04-10', '6830', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2021-10-18 15:04:52', '2021-10-18 15:04:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_employee_salaries`
--
ALTER TABLE `account_employee_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_other_costs`
--
ALTER TABLE `account_other_costs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_student_fees`
--
ALTER TABLE `account_student_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_students`
--
ALTER TABLE `assign_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_subjects`
--
ALTER TABLE `assign_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `designations_name_unique` (`name`);

--
-- Indexes for table `discount_students`
--
ALTER TABLE `discount_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_sallary_logs`
--
ALTER TABLE `employee_sallary_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_types`
--
ALTER TABLE `exam_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exam_types_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fee_categories`
--
ALTER TABLE `fee_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fee_categories_name_unique` (`name`);

--
-- Indexes for table `fee_category_amounts`
--
ALTER TABLE `fee_category_amounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_purposes`
--
ALTER TABLE `leave_purposes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `leave_purposes_name_unique` (`name`);

--
-- Indexes for table `marks_grades`
--
ALTER TABLE `marks_grades`
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
-- Indexes for table `school_subjects`
--
ALTER TABLE `school_subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `school_subjects_name_unique` (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `student_classes`
--
ALTER TABLE `student_classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_classes_name_unique` (`name`);

--
-- Indexes for table `student_groups`
--
ALTER TABLE `student_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_groups_name_unique` (`name`);

--
-- Indexes for table `student_marks`
--
ALTER TABLE `student_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_shifts`
--
ALTER TABLE `student_shifts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_shifts_name_unique` (`name`);

--
-- Indexes for table `student_years`
--
ALTER TABLE `student_years`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_years_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_employee_salaries`
--
ALTER TABLE `account_employee_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_other_costs`
--
ALTER TABLE `account_other_costs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_student_fees`
--
ALTER TABLE `account_student_fees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assign_students`
--
ALTER TABLE `assign_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assign_subjects`
--
ALTER TABLE `assign_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `discount_students`
--
ALTER TABLE `discount_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_leaves`
--
ALTER TABLE `employee_leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_sallary_logs`
--
ALTER TABLE `employee_sallary_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_types`
--
ALTER TABLE `exam_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_categories`
--
ALTER TABLE `fee_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fee_category_amounts`
--
ALTER TABLE `fee_category_amounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `leave_purposes`
--
ALTER TABLE `leave_purposes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marks_grades`
--
ALTER TABLE `marks_grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `school_subjects`
--
ALTER TABLE `school_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student_classes`
--
ALTER TABLE `student_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_groups`
--
ALTER TABLE `student_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_marks`
--
ALTER TABLE `student_marks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_shifts`
--
ALTER TABLE `student_shifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_years`
--
ALTER TABLE `student_years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
