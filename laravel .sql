-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2025 at 03:20 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, '7UcjD4feKXymKLr60lBj1wShh1EsyuiI', 1, '2021-05-03 02:01:13', '2021-05-03 02:01:13', '2021-05-03 02:01:13'),
(2, 1, 'QzJAXlvGpo4tx37tMxpoXY6fOamqFolp', 1, '2021-07-02 20:17:18', '2021-07-02 20:17:18', '2021-07-02 20:17:18'),
(3, 1, 'tenKNEKgNNpixls9zjhWiP7yEQh7y42z', 1, '2021-07-02 20:21:11', '2021-07-02 20:21:11', '2021-07-02 20:21:11'),
(4, 1, 'AEWRmiHmQC91TrsxcGlZCRMuCihlHbJd', 1, '2021-07-02 20:47:01', '2021-07-02 20:47:01', '2021-07-02 20:47:01'),
(5, 1, 'qmDtNslvquK6wmvIWg3MRUQLa3gWa0Pz', 1, '2021-07-02 21:03:29', '2021-07-02 21:03:29', '2021-07-02 21:03:29');

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) NOT NULL,
  `request` text DEFAULT NULL,
  `action` varchar(120) NOT NULL,
  `user_agent` text DEFAULT NULL,
  `ip_address` varchar(39) DEFAULT NULL,
  `reference_user` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_name` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_histories`
--

INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'menu', '{\"_token\":\"taVSgluDJ6Sr3Ia2zTz8FK6bSLKs2LNJYXHAUUTO\",\"name\":\"My Account\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/customer\\/overview\\\",\\\"id\\\":24,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"My profile\\\",\\\"referenceId\\\":\\\"\\\",\\\"referenceType\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/wishlist\\\",\\\"id\\\":25,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Wishlist\\\",\\\"referenceId\\\":\\\"\\\",\\\"referenceType\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"customer\\/orders\\\",\\\"id\\\":26,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Orders\\\",\\\"referenceId\\\":\\\"\\\",\\\"referenceType\\\":\\\"\\\",\\\"position\\\":2,\\\"children\\\":[]},{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/orders\\/tracking\\\",\\\"id\\\":27,\\\"class\\\":\\\"\\\",\\\"title\\\":\\\"Order tracking\\\",\\\"referenceId\\\":\\\"\\\",\\\"referenceType\\\":\\\"\\\",\\\"position\\\":3,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Order tracking\",\"custom-url\":\"\\/orders\\/tracking\",\"icon-font\":null,\"class\":null,\"submit\":\"save\",\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '127.0.0.1', 1, 4, 'My Account', 'primary', '2025-02-16 08:11:38', '2025-02-16 08:11:38'),
(2, 1, 'user', '{\"_token\":\"taVSgluDJ6Sr3Ia2zTz8FK6bSLKs2LNJYXHAUUTO\",\"first_name\":\"Siddarth\",\"last_name\":\"A S\",\"username\":\"siddarth@1903\",\"email\":\"admin@crackers.com\",\"submit\":\"submit\"}', 'updated', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'Siddarth A S', 'primary', '2025-02-16 08:15:20', '2025-02-16 08:15:20'),
(3, 1, 'customer', '{\"customer_id\":null,\"name\":\"Siddarth\",\"email\":\"siddarth1903p@gmail.com\",\"phone\":\"9360437077\",\"address\":\"4\\/437 kattananseval Street\",\"country\":\"IN\",\"state\":\"Tamilnadu\",\"city\":\"Sivakasi\",\"zip_code\":null,\"password\":\"$2y$10$xxYBhlnflcFO43vvFcezDe2h3YWQGiedIhT1wfs5Q1JPHm\\/iSj0Em\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '127.0.0.1', 1, 12, 'Siddarth', 'info', '2025-02-16 08:24:28', '2025-02-16 08:24:28'),
(4, 1, 'discount', '{\"_token\":\"taVSgluDJ6Sr3Ia2zTz8FK6bSLKs2LNJYXHAUUTO\",\"code\":\"AGR100\",\"title\":null,\"type\":\"coupon\",\"can_use_with_promotion\":\"1\",\"is_unlimited\":\"1\",\"type_option\":\"percentage\",\"value\":\"10\",\"target\":\"all-orders\",\"product_quantity\":\"1\",\"variants\":null,\"start_date\":\"16-02-2025\",\"start_time\":\"20:00\",\"unlimited_time\":\"1\"}', 'created', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '127.0.0.1', 1, 1, 'ID: 1', 'info', '2025-02-16 08:43:22', '2025-02-16 08:43:22');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Ecommerce', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 1, '2021-07-02 21:03:27', '2021-07-02 21:03:27');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(60) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `subject` varchar(120) DEFAULT NULL,
  `content` longtext NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_1', '2021-06-26 20:36:21', '2021-06-26 20:36:21'),
(2, 'widget_total_2', '2021-06-26 20:36:22', '2021-06-26 20:36:22'),
(3, 'widget_total_themes', '2021-06-26 20:36:22', '2021-06-26 20:36:22'),
(4, 'widget_total_3', '2021-06-26 20:36:22', '2021-06-26 20:36:22'),
(5, 'widget_total_4', '2021-06-26 20:36:22', '2021-06-26 20:36:22'),
(6, 'widget_total_users', '2021-06-26 20:36:22', '2021-06-26 20:36:22'),
(7, 'widget_total_pages', '2021-06-26 20:36:22', '2021-06-26 20:36:22'),
(8, 'widget_total_plugins', '2021-06-26 20:36:22', '2021-06-26 20:36:22'),
(9, 'widget_analytics_general', '2021-06-26 20:36:22', '2021-06-26 20:36:22'),
(10, 'widget_analytics_page', '2021-06-26 20:36:22', '2021-06-26 20:36:22'),
(11, 'widget_analytics_browser', '2021-06-26 20:36:23', '2021-06-26 20:36:23'),
(12, 'widget_posts_recent', '2021-06-26 20:36:23', '2021-06-26 20:36:23'),
(13, 'widget_analytics_referrer', '2021-06-26 20:36:23', '2021-06-26 20:36:23'),
(14, 'widget_audit_logs', '2021-06-26 20:36:23', '2021-06-26 20:36:23'),
(15, 'widget_ecommerce_report_general', '2021-06-26 20:36:23', '2021-06-26 20:36:23');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings` text DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_brands`
--

CREATE TABLE `ec_brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_brands_translations`
--

CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_brands_id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_cart`
--

CREATE TABLE `ec_cart` (
  `identifier` varchar(191) NOT NULL,
  `instance` varchar(191) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_currencies`
--

CREATE TABLE `ec_currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `is_prefix_symbol` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `decimals` tinyint(3) UNSIGNED DEFAULT 0,
  `order` int(10) UNSIGNED DEFAULT 0,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `exchange_rate` double NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_currencies`
--

INSERT INTO `ec_currencies` (`id`, `title`, `symbol`, `is_prefix_symbol`, `decimals`, `order`, `is_default`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(4, 'INR', '₹', 1, 2, 0, 1, 1, '2025-02-04 08:27:50', '2025-02-04 08:27:50');

-- --------------------------------------------------------

--
-- Table structure for table `ec_customers`
--

CREATE TABLE `ec_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_customers`
--

INSERT INTO `ec_customers` (`id`, `name`, `email`, `password`, `avatar`, `dob`, `phone`, `remember_token`, `created_at`, `updated_at`, `confirmed_at`, `email_verify_token`) VALUES
(12, 'Siddarth', 'siddarth1903p@gmail.com', '$2y$10$xxYBhlnflcFO43vvFcezDe2h3YWQGiedIhT1wfs5Q1JPHm/iSj0Em', NULL, NULL, '9360437077', NULL, '2025-02-16 08:24:28', '2025-02-16 08:24:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_addresses`
--

CREATE TABLE `ec_customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(191) NOT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `address` varchar(191) NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_customer_addresses`
--

INSERT INTO `ec_customer_addresses` (`id`, `name`, `email`, `phone`, `country`, `state`, `city`, `address`, `customer_id`, `is_default`, `created_at`, `updated_at`, `zip_code`) VALUES
(1, 'John Smith', 'john.smith@botble.com', '+19725795880', 'FI', 'New Mexico', 'Port Joanny', '88894 Skiles Cliff Apt. 302', 1, 1, '2021-07-02 21:02:34', '2021-07-02 21:02:34', '86509'),
(2, 'John Smith', 'john.smith@botble.com', '+19299586840', 'AO', 'West Virginia', 'Port Armando', '8125 German Bridge', 1, 0, '2021-07-02 21:02:34', '2021-07-02 21:02:34', '04782'),
(3, 'Mrs. Eldridge Blick', 'cora83@example.com', '+16785915500', 'NF', 'Massachusetts', 'North Chanel', '454 Gerhold Falls', 2, 1, '2021-07-02 21:02:34', '2021-07-02 21:02:34', '79996-0341'),
(4, 'Ms. Nia Hauck', 'marlon94@example.net', '+12235541362', 'BA', 'Iowa', 'East Kaseybury', '650 Wolff Estates', 3, 1, '2021-07-02 21:02:34', '2021-07-02 21:02:34', '69355'),
(5, 'Kade Senger', 'otto.runte@example.com', '+17541662003', 'SV', 'South Carolina', 'South Misty', '956 Mayert Orchard Apt. 650', 4, 1, '2021-07-02 21:02:35', '2021-07-02 21:02:35', '70114-1144'),
(6, 'Rosendo Casper', 'magnus.quigley@example.net', '+15341388658', 'NF', 'Georgia', 'East Malcolmfort', '1676 Glennie Ridge', 5, 1, '2021-07-02 21:02:35', '2021-07-02 21:02:35', '65433'),
(7, 'Mr. Gerhard Sanford', 'rod.mertz@example.net', '+19731127390', 'FM', 'Arkansas', 'Lake Murlmouth', '21371 Addie Drive Apt. 587', 6, 1, '2021-07-02 21:02:35', '2021-07-02 21:02:35', '69384-7852'),
(8, 'Prof. Unique Lehner', 'tohara@example.org', '+19128341528', 'RE', 'Georgia', 'Camillafurt', '9086 Kutch Burg Suite 559', 7, 1, '2021-07-02 21:02:36', '2021-07-02 21:02:36', '90995-1999'),
(9, 'Mr. Everett Harvey PhD', 'bahringer.bernice@example.net', '+18185966737', 'FK', 'Hawaii', 'Baumbachland', '9713 Hartmann Cove', 8, 1, '2021-07-02 21:02:36', '2021-07-02 21:02:36', '17388-9390'),
(10, 'Mason Anderson', 'atillman@example.org', '+14708554768', 'SH', 'Mississippi', 'Raleighport', '894 Brayan Keys Suite 015', 9, 1, '2021-07-02 21:02:36', '2021-07-02 21:02:36', '08157-9871'),
(11, 'Hattie Crist', 'archibald.legros@example.org', '+18572615328', 'CO', 'Utah', 'Ednaside', '94831 Ericka Circle Suite 382', 10, 1, '2021-07-02 21:02:36', '2021-07-02 21:02:36', '06943'),
(12, 'Gino Feest', 'wschultz@example.org', '+12233793135', 'SJ', 'Iowa', 'North Michaelaborough', '442 Legros Fort Apt. 711', 11, 1, '2021-07-02 21:02:37', '2021-07-02 21:02:37', '70475-1907'),
(13, 'Siddarth', 'siddarth1903p@gmail.com', '9360437077', 'IN', 'Tamilnadu', 'Sivakasi', '4/437 kattananseval Street', 12, 1, '2025-02-16 08:24:28', '2025-02-16 08:24:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_customer_password_resets`
--

CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discounts`
--

CREATE TABLE `ec_discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_used` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `value` double DEFAULT NULL,
  `type` varchar(60) DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT 0,
  `discount_on` varchar(20) DEFAULT NULL,
  `product_quantity` int(10) UNSIGNED DEFAULT NULL,
  `type_option` varchar(100) NOT NULL DEFAULT 'amount',
  `target` varchar(100) NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_discounts`
--

INSERT INTO `ec_discounts` (`id`, `title`, `code`, `start_date`, `end_date`, `quantity`, `total_used`, `value`, `type`, `can_use_with_promotion`, `discount_on`, `product_quantity`, `type_option`, `target`, `min_order_price`, `created_at`, `updated_at`) VALUES
(1, NULL, 'AGR100', '2025-02-16 20:00:00', NULL, NULL, 0, 10, 'coupon', 1, NULL, 1, 'percentage', 'all-orders', NULL, '2025-02-16 08:43:22', '2025-02-16 08:43:22');

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_customers`
--

CREATE TABLE `ec_discount_customers` (
  `discount_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_products`
--

CREATE TABLE `ec_discount_products` (
  `discount_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_discount_product_collections`
--

CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int(10) UNSIGNED NOT NULL,
  `product_collection_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sales`
--

CREATE TABLE `ec_flash_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sales`
--

INSERT INTO `ec_flash_sales` (`id`, `name`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Ground Chakkar Small', '2025-02-17 00:00:00', 'published', '2025-02-16 07:50:54', '2025-02-16 07:50:54');

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sales_translations`
--

CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_flash_sales_id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_flash_sale_products`
--

CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` double UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `sold` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_flash_sale_products`
--

INSERT INTO `ec_flash_sale_products` (`flash_sale_id`, `product_id`, `price`, `quantity`, `sold`) VALUES
(1, 105, 28.62, 15, 1),
(2, 90, 31.995, 9, 5),
(3, 52, 85.8, 9, 2),
(4, 106, 180, 20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_grouped_products`
--

CREATE TABLE `ec_grouped_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_product_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `fixed_qty` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_orders`
--

CREATE TABLE `ec_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `shipping_option` varchar(60) DEFAULT NULL,
  `shipping_method` varchar(60) NOT NULL DEFAULT 'default',
  `status` varchar(120) NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `coupon_code` varchar(120) DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `discount_description` varchar(255) DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT 1,
  `token` varchar(120) DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_orders`
--

INSERT INTO `ec_orders` (`id`, `user_id`, `shipping_option`, `shipping_method`, `status`, `amount`, `currency_id`, `tax_amount`, `shipping_amount`, `description`, `coupon_code`, `discount_amount`, `sub_total`, `is_confirmed`, `discount_description`, `is_finished`, `token`, `payment_id`, `created_at`, `updated_at`) VALUES
(21, 12, NULL, 'default', 'processing', 540.00, 4, 0.00, 0.00, NULL, NULL, 0.00, 540.00, 1, NULL, 1, NULL, 21, '2025-02-16 08:24:34', '2025-02-16 08:24:34');

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_addresses`
--

CREATE TABLE `ec_order_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `zip_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_addresses`
--

INSERT INTO `ec_order_addresses` (`id`, `name`, `phone`, `email`, `country`, `state`, `city`, `address`, `order_id`, `zip_code`) VALUES
(21, 'Siddarth', '9360437077', 'siddarth1903p@gmail.com', 'IN', 'Tamilnadu', 'Sivakasi', '4/437 kattananseval Street', 21, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_histories`
--

CREATE TABLE `ec_order_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) NOT NULL,
  `description` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `extras` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_histories`
--

INSERT INTO `ec_order_histories` (`id`, `action`, `description`, `user_id`, `order_id`, `extras`, `created_at`, `updated_at`) VALUES
(94, 'create_order_from_payment_page', 'Order was created from checkout page', NULL, 21, NULL, '2025-02-16 08:24:34', '2025-02-16 08:24:34'),
(95, 'create_order', 'New order #1-10000021-1000', NULL, 21, NULL, '2025-02-16 08:24:34', '2025-02-16 08:24:34'),
(96, 'confirm_order', 'Order was verified by %user_name%', 1, 21, NULL, '2025-02-16 08:24:34', '2025-02-16 08:24:34'),
(97, 'confirm_payment', 'Payment was confirmed (amount ₹540.00) by %user_name%', 1, 21, NULL, '2025-02-16 08:24:34', '2025-02-16 08:24:34');

-- --------------------------------------------------------

--
-- Table structure for table `ec_order_product`
--

CREATE TABLE `ec_order_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_name` varchar(191) NOT NULL,
  `weight` double(8,2) DEFAULT 0.00,
  `restock_quantity` int(10) UNSIGNED DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_order_product`
--

INSERT INTO `ec_order_product` (`id`, `order_id`, `qty`, `price`, `tax_amount`, `options`, `product_id`, `product_name`, `weight`, `restock_quantity`, `created_at`, `updated_at`) VALUES
(63, 21, 3, 180.00, 0.00, '[]', 106, 'Ground Chakkar Small', 0.00, 0, '2025-02-16 08:24:34', '2025-02-16 08:24:34');

-- --------------------------------------------------------

--
-- Table structure for table `ec_products`
--

CREATE TABLE `ec_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `images` text DEFAULT NULL,
  `sku` varchar(191) DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `with_storehouse_management` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `options` text DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `is_variation` tinyint(4) NOT NULL DEFAULT 0,
  `is_searchable` tinyint(4) NOT NULL DEFAULT 0,
  `is_show_on_list` tinyint(4) NOT NULL DEFAULT 0,
  `sale_type` tinyint(4) NOT NULL DEFAULT 0,
  `price` double UNSIGNED DEFAULT NULL,
  `sale_price` double UNSIGNED DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `barcode` varchar(191) DEFAULT NULL,
  `length_unit` varchar(20) DEFAULT NULL,
  `wide_unit` varchar(20) DEFAULT NULL,
  `height_unit` varchar(20) DEFAULT NULL,
  `weight_unit` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tax_id` int(10) UNSIGNED DEFAULT NULL,
  `views` bigint(20) NOT NULL DEFAULT 0,
  `stock_status` varchar(191) DEFAULT 'in_stock'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_products`
--

INSERT INTO `ec_products` (`id`, `name`, `description`, `content`, `status`, `images`, `sku`, `order`, `quantity`, `allow_checkout_when_out_of_stock`, `with_storehouse_management`, `is_featured`, `options`, `category_id`, `brand_id`, `is_variation`, `is_searchable`, `is_show_on_list`, `sale_type`, `price`, `sale_price`, `start_date`, `end_date`, `length`, `wide`, `height`, `weight`, `barcode`, `length_unit`, `wide_unit`, `height_unit`, `weight_unit`, `created_at`, `updated_at`, `tax_id`, `views`, `stock_status`) VALUES
(106, 'Ground Chakkar Small', NULL, NULL, 'published', '[\"product-categories\\/small-chakkar.jpg\"]', NULL, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 200, 180, NULL, NULL, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, '2025-02-16 07:48:48', '2025-02-16 07:49:28', 0, 0, 'in_stock');

-- --------------------------------------------------------

--
-- Table structure for table `ec_products_translations`
--

CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_products_id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attributes`
--

CREATE TABLE `ec_product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attributes_translations`
--

CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_attributes_id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attribute_sets`
--

CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `display_layout` varchar(191) NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `is_comparable` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `is_use_in_product_listing` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_attribute_sets_id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categories`
--

CREATE TABLE `ec_product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT 0,
  `description` mediumtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_categories`
--

INSERT INTO `ec_product_categories` (`id`, `name`, `parent_id`, `description`, `status`, `order`, `image`, `is_featured`, `created_at`, `updated_at`) VALUES
(16, 'Quas fuga dicta qui est.', 1, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(17, 'Suscipit et maxime in.', 1, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(18, 'Sed sit ipsa saepe quia.', 1, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(19, 'Eos est aut cum qui.', 1, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(20, 'Rem vel sit ut autem.', 1, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(21, 'Libero et alias eius et.', 2, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(22, 'Magnam iste a possimus.', 2, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(23, 'Quo id esse quia et.', 2, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(24, 'Et alias enim suscipit.', 2, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(25, 'Rerum quae nam ut quo.', 2, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(26, 'Quia id sint ad rem.', 3, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(27, 'Amet eos ut sunt ea.', 3, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(28, 'Dicta quia expedita ut.', 3, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(29, 'Sint aut nihil ducimus.', 3, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(30, 'Dolores dolore quod in.', 3, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(31, 'Quis id veniam qui hic.', 4, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(32, 'Cum velit vel aut.', 4, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(33, 'Expedita sit eos qui.', 4, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(34, 'Illum impedit et odio.', 4, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(35, 'Sed et qui sint.', 4, NULL, 'published', 0, NULL, 0, '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(36, 'Chakkar', 0, NULL, 'published', 0, 'product-categories/chakkar.jpg', 0, '2025-02-04 08:50:25', '2025-02-04 08:50:25'),
(37, 'Flower Pots', 0, NULL, 'published', 0, 'product-categories/flowerpots.jpg', 0, '2025-02-16 07:52:47', '2025-02-16 07:52:47');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_categories_translations`
--

CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_categories_id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_category_product`
--

CREATE TABLE `ec_product_category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collections`
--

CREATE TABLE `ec_product_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_collections`
--

INSERT INTO `ec_product_collections` (`id`, `name`, `slug`, `description`, `image`, `status`, `created_at`, `updated_at`, `is_featured`) VALUES
(1, 'New Arrival', 'new-arrival', NULL, NULL, 'published', '2021-07-02 21:02:32', '2021-07-02 21:02:32', 0),
(2, 'Best Sellers', 'best-sellers', NULL, NULL, 'published', '2021-07-02 21:02:32', '2021-07-02 21:02:32', 0),
(3, 'Special Offer', 'special-offer', NULL, NULL, 'published', '2021-07-02 21:02:32', '2021-07-02 21:02:32', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collections_translations`
--

CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_collections_id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_collection_products`
--

CREATE TABLE `ec_product_collection_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_collection_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_cross_sale_relations`
--

CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_product_id` int(10) UNSIGNED NOT NULL,
  `to_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_labels`
--

CREATE TABLE `ec_product_labels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_labels`
--

INSERT INTO `ec_product_labels` (`id`, `name`, `color`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hot', '#ec2434', 'published', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(2, 'New', '#00c9a7', 'published', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(3, 'Sale', '#fe9931', 'published', '2021-07-02 21:02:32', '2021-07-02 21:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_labels_translations`
--

CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) NOT NULL,
  `ec_product_labels_id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_label_products`
--

CREATE TABLE `ec_product_label_products` (
  `product_label_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_label_products`
--

INSERT INTO `ec_product_label_products` (`product_label_id`, `product_id`) VALUES
(1, 12),
(1, 18),
(1, 24),
(2, 9),
(2, 15),
(2, 21),
(3, 3),
(3, 6),
(3, 27),
(3, 30);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_related_relations`
--

CREATE TABLE `ec_product_related_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_product_id` int(10) UNSIGNED NOT NULL,
  `to_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tags`
--

CREATE TABLE `ec_product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_tag_product`
--

CREATE TABLE `ec_product_tag_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_product_tag_product`
--

INSERT INTO `ec_product_tag_product` (`product_id`, `tag_id`) VALUES
(1, 2),
(1, 4),
(1, 5),
(2, 2),
(2, 5),
(3, 2),
(3, 4),
(3, 5),
(4, 4),
(4, 5),
(4, 6),
(5, 4),
(5, 5),
(6, 1),
(6, 5),
(7, 3),
(7, 5),
(8, 1),
(8, 2),
(8, 6),
(9, 3),
(9, 5),
(10, 1),
(10, 4),
(11, 3),
(11, 5),
(11, 6),
(12, 1),
(12, 4),
(12, 5),
(13, 5),
(13, 6),
(14, 3),
(14, 4),
(15, 2),
(15, 4),
(16, 5),
(16, 6),
(17, 1),
(17, 2),
(18, 3),
(18, 4),
(19, 1),
(19, 3),
(19, 4),
(20, 1),
(20, 6),
(21, 5),
(21, 6),
(22, 2),
(22, 4),
(22, 5),
(23, 1),
(23, 2),
(23, 5),
(24, 3),
(24, 6),
(25, 2),
(25, 4),
(26, 2),
(26, 3),
(26, 4),
(27, 3),
(27, 6),
(28, 2),
(28, 3),
(29, 2),
(29, 5),
(29, 6),
(30, 3),
(30, 4),
(31, 3),
(31, 4),
(31, 5);

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_up_sale_relations`
--

CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_product_id` int(10) UNSIGNED NOT NULL,
  `to_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_variations`
--

CREATE TABLE `ec_product_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `configurable_product_id` int(10) UNSIGNED NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_variation_items`
--

CREATE TABLE `ec_product_variation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `variation_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_with_attribute`
--

CREATE TABLE `ec_product_with_attribute` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_product_with_attribute_set`
--

CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_set_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_reviews`
--

CREATE TABLE `ec_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipments`
--

CREATE TABLE `ec_shipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `weight` double(8,2) DEFAULT 0.00,
  `shipment_id` varchar(120) DEFAULT NULL,
  `note` varchar(120) DEFAULT NULL,
  `status` varchar(120) NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT 0.00,
  `cod_status` varchar(60) NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT 0.00,
  `store_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipment_histories`
--

CREATE TABLE `ec_shipment_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) NOT NULL,
  `description` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `shipment_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping`
--

CREATE TABLE `ec_shipping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `country` varchar(120) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipping`
--

INSERT INTO `ec_shipping` (`id`, `title`, `country`, `created_at`, `updated_at`) VALUES
(1, 'All', NULL, '2021-07-02 21:03:24', '2021-07-02 21:03:24'),
(2, 'IN', 'IN', '2025-02-04 08:37:29', '2025-02-04 08:37:29');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping_rules`
--

CREATE TABLE `ec_shipping_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `type` enum('base_on_price','base_on_weight') DEFAULT 'base_on_price',
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `from` decimal(15,2) DEFAULT 0.00,
  `to` decimal(15,2) DEFAULT 0.00,
  `price` decimal(15,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_shipping_rules`
--

INSERT INTO `ec_shipping_rules` (`id`, `name`, `shipping_id`, `type`, `currency_id`, `from`, `to`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Delivery', 1, 'base_on_price', NULL, 0.00, NULL, 0.00, '2021-07-02 21:03:24', '2021-07-02 21:03:24'),
(2, 'Delivery', 2, 'base_on_price', NULL, 0.00, NULL, 0.00, '2025-02-04 08:37:29', '2025-02-04 08:37:29'),
(3, 'Order above', 2, 'base_on_price', NULL, 3000.00, NULL, 0.00, '2025-02-16 08:41:57', '2025-02-16 08:41:57');

-- --------------------------------------------------------

--
-- Table structure for table `ec_shipping_rule_items`
--

CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_rule_id` int(10) UNSIGNED NOT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT 0.00,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_store_locators`
--

CREATE TABLE `ec_store_locators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT 0,
  `is_shipping_location` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_store_locators`
--

INSERT INTO `ec_store_locators` (`id`, `name`, `email`, `phone`, `address`, `country`, `state`, `city`, `is_primary`, `is_shipping_location`, `created_at`, `updated_at`) VALUES
(1, 'Crackers', 'Crackers@gmail.com', '9360437077', 'Thayilpatti', 'IN', 'Tamilnadu', 'Sivakasi', 1, 1, '2021-07-02 21:03:29', '2025-02-04 08:28:29');

-- --------------------------------------------------------

--
-- Table structure for table `ec_taxes`
--

CREATE TABLE `ec_taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ec_taxes`
--

INSERT INTO `ec_taxes` (`id`, `title`, `percentage`, `priority`, `status`, `created_at`, `updated_at`) VALUES
(1, 'VAT', 10.000000, 1, 'published', '2021-07-02 21:03:24', '2021-07-02 21:03:24'),
(2, 'None', 0.000000, 2, 'published', '2021-07-02 21:03:24', '2021-07-02 21:03:24');

-- --------------------------------------------------------

--
-- Table structure for table `ec_wish_lists`
--

CREATE TABLE `ec_wish_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
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
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mime_type` varchar(120) NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `options` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(673, 0, '1', 41, 'image/jpeg', 11752, 'customers/1.jpg', '[]', '2021-07-02 21:02:32', '2021-07-02 21:02:32', NULL),
(674, 0, '10', 41, 'image/jpeg', 27814, 'customers/10.jpg', '[]', '2021-07-02 21:02:32', '2021-07-02 21:02:32', NULL),
(675, 0, '2', 41, 'image/jpeg', 19005, 'customers/2.jpg', '[]', '2021-07-02 21:02:32', '2021-07-02 21:02:32', NULL),
(676, 0, '3', 41, 'image/jpeg', 20400, 'customers/3.jpg', '[]', '2021-07-02 21:02:33', '2021-07-02 21:02:33', NULL),
(677, 0, '4', 41, 'image/jpeg', 26819, 'customers/4.jpg', '[]', '2021-07-02 21:02:33', '2021-07-02 21:02:33', NULL),
(678, 0, '5', 41, 'image/jpeg', 14367, 'customers/5.jpg', '[]', '2021-07-02 21:02:33', '2021-07-02 21:02:33', NULL),
(679, 0, '6', 41, 'image/jpeg', 12367, 'customers/6.jpg', '[]', '2021-07-02 21:02:33', '2021-07-02 21:02:33', NULL),
(680, 0, '7', 41, 'image/jpeg', 20652, 'customers/7.jpg', '[]', '2021-07-02 21:02:33', '2021-07-02 21:02:33', NULL),
(681, 0, '8', 41, 'image/jpeg', 21164, 'customers/8.jpg', '[]', '2021-07-02 21:02:33', '2021-07-02 21:02:33', NULL),
(682, 0, '9', 41, 'image/jpeg', 6084, 'customers/9.jpg', '[]', '2021-07-02 21:02:33', '2021-07-02 21:02:33', NULL),
(683, 0, '1-1', 42, 'image/jpeg', 88437, 'products/1-1.jpg', '[]', '2021-07-02 21:02:37', '2021-07-02 21:02:37', NULL),
(684, 0, '1-2', 42, 'image/jpeg', 122690, 'products/1-2.jpg', '[]', '2021-07-02 21:02:37', '2021-07-02 21:02:37', NULL),
(685, 0, '1-3', 42, 'image/jpeg', 117296, 'products/1-3.jpg', '[]', '2021-07-02 21:02:38', '2021-07-02 21:02:38', NULL),
(686, 0, '1', 42, 'image/jpeg', 139025, 'products/1.jpg', '[]', '2021-07-02 21:02:38', '2021-07-02 21:02:38', NULL),
(687, 0, '10-1', 42, 'image/jpeg', 183491, 'products/10-1.jpg', '[]', '2021-07-02 21:02:39', '2021-07-02 21:02:39', NULL),
(688, 0, '10', 42, 'image/jpeg', 150956, 'products/10.jpg', '[]', '2021-07-02 21:02:40', '2021-07-02 21:02:40', NULL),
(689, 0, '11-1', 42, 'image/jpeg', 246200, 'products/11-1.jpg', '[]', '2021-07-02 21:02:40', '2021-07-02 21:02:40', NULL),
(690, 0, '11', 42, 'image/jpeg', 279390, 'products/11.jpg', '[]', '2021-07-02 21:02:41', '2021-07-02 21:02:41', NULL),
(691, 0, '12-1', 42, 'image/jpeg', 249712, 'products/12-1.jpg', '[]', '2021-07-02 21:02:41', '2021-07-02 21:02:41', NULL),
(692, 0, '12', 42, 'image/jpeg', 172221, 'products/12.jpg', '[]', '2021-07-02 21:02:42', '2021-07-02 21:02:42', NULL),
(693, 0, '13-1', 42, 'image/jpeg', 257021, 'products/13-1.jpg', '[]', '2021-07-02 21:02:43', '2021-07-02 21:02:43', NULL),
(694, 0, '13', 42, 'image/jpeg', 232917, 'products/13.jpg', '[]', '2021-07-02 21:02:43', '2021-07-02 21:02:43', NULL),
(695, 0, '14-1', 42, 'image/jpeg', 201773, 'products/14-1.jpg', '[]', '2021-07-02 21:02:44', '2021-07-02 21:02:44', NULL),
(696, 0, '14', 42, 'image/jpeg', 287194, 'products/14.jpg', '[]', '2021-07-02 21:02:44', '2021-07-02 21:02:44', NULL),
(697, 0, '15-1', 42, 'image/jpeg', 273720, 'products/15-1.jpg', '[]', '2021-07-02 21:02:45', '2021-07-02 21:02:45', NULL),
(698, 0, '15', 42, 'image/jpeg', 114265, 'products/15.jpg', '[]', '2021-07-02 21:02:46', '2021-07-02 21:02:46', NULL),
(699, 0, '16', 42, 'image/jpeg', 97174, 'products/16.jpg', '[]', '2021-07-02 21:02:46', '2021-07-02 21:02:46', NULL),
(700, 0, '17', 42, 'image/jpeg', 70179, 'products/17.jpg', '[]', '2021-07-02 21:02:48', '2021-07-02 21:02:48', NULL),
(701, 0, '18-1', 42, 'image/jpeg', 287835, 'products/18-1.jpg', '[]', '2021-07-02 21:02:49', '2021-07-02 21:02:49', NULL),
(702, 0, '18-2', 42, 'image/jpeg', 454869, 'products/18-2.jpg', '[]', '2021-07-02 21:02:51', '2021-07-02 21:02:51', NULL),
(703, 0, '18', 42, 'image/jpeg', 257331, 'products/18.jpg', '[]', '2021-07-02 21:02:53', '2021-07-02 21:02:53', NULL),
(704, 0, '19-1', 42, 'image/jpeg', 144008, 'products/19-1.jpg', '[]', '2021-07-02 21:02:54', '2021-07-02 21:02:54', NULL),
(705, 0, '19', 42, 'image/jpeg', 188821, 'products/19.jpg', '[]', '2021-07-02 21:02:55', '2021-07-02 21:02:55', NULL),
(706, 0, '2-1', 42, 'image/jpeg', 138167, 'products/2-1.jpg', '[]', '2021-07-02 21:02:56', '2021-07-02 21:02:56', NULL),
(707, 0, '2-2', 42, 'image/jpeg', 230552, 'products/2-2.jpg', '[]', '2021-07-02 21:02:56', '2021-07-02 21:02:56', NULL),
(708, 0, '2-3', 42, 'image/jpeg', 179301, 'products/2-3.jpg', '[]', '2021-07-02 21:02:57', '2021-07-02 21:02:57', NULL),
(709, 0, '2', 42, 'image/jpeg', 130048, 'products/2.jpg', '[]', '2021-07-02 21:02:57', '2021-07-02 21:02:57', NULL),
(710, 0, '20-1', 42, 'image/jpeg', 249712, 'products/20-1.jpg', '[]', '2021-07-02 21:02:58', '2021-07-02 21:02:58', NULL),
(711, 0, '20', 42, 'image/jpeg', 172221, 'products/20.jpg', '[]', '2021-07-02 21:02:58', '2021-07-02 21:02:58', NULL),
(712, 0, '21-1', 42, 'image/jpeg', 260746, 'products/21-1.jpg', '[]', '2021-07-02 21:02:59', '2021-07-02 21:02:59', NULL),
(713, 0, '21', 42, 'image/jpeg', 124244, 'products/21.jpg', '[]', '2021-07-02 21:03:00', '2021-07-02 21:03:00', NULL),
(714, 0, '22-1', 42, 'image/jpeg', 268620, 'products/22-1.jpg', '[]', '2021-07-02 21:03:01', '2021-07-02 21:03:01', NULL),
(715, 0, '22', 42, 'image/jpeg', 128692, 'products/22.jpg', '[]', '2021-07-02 21:03:03', '2021-07-02 21:03:03', NULL),
(716, 0, '23-1', 42, 'image/jpeg', 105560, 'products/23-1.jpg', '[]', '2021-07-02 21:03:04', '2021-07-02 21:03:04', NULL),
(717, 0, '23', 42, 'image/jpeg', 177362, 'products/23.jpg', '[]', '2021-07-02 21:03:05', '2021-07-02 21:03:05', NULL),
(718, 0, '24-1', 42, 'image/jpeg', 239311, 'products/24-1.jpg', '[]', '2021-07-02 21:03:06', '2021-07-02 21:03:06', NULL),
(719, 0, '24', 42, 'image/jpeg', 363853, 'products/24.jpg', '[]', '2021-07-02 21:03:07', '2021-07-02 21:03:07', NULL),
(720, 0, '25-1', 42, 'image/jpeg', 17089, 'products/25-1.jpg', '[]', '2021-07-02 21:03:09', '2021-07-02 21:03:09', NULL),
(721, 0, '25', 42, 'image/jpeg', 18069, 'products/25.jpg', '[]', '2021-07-02 21:03:09', '2021-07-02 21:03:09', NULL),
(722, 0, '26-1', 42, 'image/jpeg', 13085, 'products/26-1.jpg', '[]', '2021-07-02 21:03:09', '2021-07-02 21:03:09', NULL),
(723, 0, '26-2', 42, 'image/jpeg', 22667, 'products/26-2.jpg', '[]', '2021-07-02 21:03:09', '2021-07-02 21:03:09', NULL),
(724, 0, '26', 42, 'image/jpeg', 13611, 'products/26.jpg', '[]', '2021-07-02 21:03:10', '2021-07-02 21:03:10', NULL),
(725, 0, '27-1', 42, 'image/jpeg', 10286, 'products/27-1.jpg', '[]', '2021-07-02 21:03:10', '2021-07-02 21:03:10', NULL),
(726, 0, '27', 42, 'image/jpeg', 12569, 'products/27.jpg', '[]', '2021-07-02 21:03:10', '2021-07-02 21:03:10', NULL),
(727, 0, '28-1', 42, 'image/jpeg', 15654, 'products/28-1.jpg', '[]', '2021-07-02 21:03:10', '2021-07-02 21:03:10', NULL),
(728, 0, '28', 42, 'image/jpeg', 18243, 'products/28.jpg', '[]', '2021-07-02 21:03:10', '2021-07-02 21:03:10', NULL),
(729, 0, '29-1', 42, 'image/jpeg', 27890, 'products/29-1.jpg', '[]', '2021-07-02 21:03:10', '2021-07-02 21:03:10', NULL),
(730, 0, '29', 42, 'image/jpeg', 27961, 'products/29.jpg', '[]', '2021-07-02 21:03:10', '2021-07-02 21:03:10', NULL),
(731, 0, '3-1', 42, 'image/jpeg', 135741, 'products/3-1.jpg', '[]', '2021-07-02 21:03:11', '2021-07-02 21:03:11', NULL),
(732, 0, '3-2', 42, 'image/jpeg', 123069, 'products/3-2.jpg', '[]', '2021-07-02 21:03:11', '2021-07-02 21:03:11', NULL),
(733, 0, '3-3', 42, 'image/jpeg', 98645, 'products/3-3.jpg', '[]', '2021-07-02 21:03:12', '2021-07-02 21:03:12', NULL),
(734, 0, '3', 42, 'image/jpeg', 201722, 'products/3.jpg', '[]', '2021-07-02 21:03:12', '2021-07-02 21:03:12', NULL),
(735, 0, '30-1', 42, 'image/jpeg', 26283, 'products/30-1.jpg', '[]', '2021-07-02 21:03:13', '2021-07-02 21:03:13', NULL),
(736, 0, '30', 42, 'image/jpeg', 27107, 'products/30.jpg', '[]', '2021-07-02 21:03:13', '2021-07-02 21:03:13', NULL),
(737, 0, '31-1', 42, 'image/jpeg', 25924, 'products/31-1.jpg', '[]', '2021-07-02 21:03:13', '2021-07-02 21:03:13', NULL),
(738, 0, '31', 42, 'image/jpeg', 18634, 'products/31.jpg', '[]', '2021-07-02 21:03:14', '2021-07-02 21:03:14', NULL),
(739, 0, '4-1', 42, 'image/jpeg', 205312, 'products/4-1.jpg', '[]', '2021-07-02 21:03:14', '2021-07-02 21:03:14', NULL),
(740, 0, '4-2', 42, 'image/jpeg', 223903, 'products/4-2.jpg', '[]', '2021-07-02 21:03:14', '2021-07-02 21:03:14', NULL),
(741, 0, '4-3', 42, 'image/jpeg', 106593, 'products/4-3.jpg', '[]', '2021-07-02 21:03:15', '2021-07-02 21:03:15', NULL),
(742, 0, '4', 42, 'image/jpeg', 456134, 'products/4.jpg', '[]', '2021-07-02 21:03:15', '2021-07-02 21:03:15', NULL),
(743, 0, '5-1', 42, 'image/jpeg', 110014, 'products/5-1.jpg', '[]', '2021-07-02 21:03:16', '2021-07-02 21:03:16', NULL),
(744, 0, '5-2', 42, 'image/jpeg', 104934, 'products/5-2.jpg', '[]', '2021-07-02 21:03:17', '2021-07-02 21:03:17', NULL),
(745, 0, '5-3', 42, 'image/jpeg', 131628, 'products/5-3.jpg', '[]', '2021-07-02 21:03:17', '2021-07-02 21:03:17', NULL),
(746, 0, '5', 42, 'image/jpeg', 214767, 'products/5.jpg', '[]', '2021-07-02 21:03:18', '2021-07-02 21:03:18', NULL),
(747, 0, '6-1', 42, 'image/jpeg', 128041, 'products/6-1.jpg', '[]', '2021-07-02 21:03:18', '2021-07-02 21:03:18', NULL),
(748, 0, '6', 42, 'image/jpeg', 148485, 'products/6.jpg', '[]', '2021-07-02 21:03:19', '2021-07-02 21:03:19', NULL),
(749, 0, '7-1', 42, 'image/jpeg', 144008, 'products/7-1.jpg', '[]', '2021-07-02 21:03:20', '2021-07-02 21:03:20', NULL),
(750, 0, '7', 42, 'image/jpeg', 188821, 'products/7.jpg', '[]', '2021-07-02 21:03:20', '2021-07-02 21:03:20', NULL),
(751, 0, '8-1', 42, 'image/jpeg', 274272, 'products/8-1.jpg', '[]', '2021-07-02 21:03:21', '2021-07-02 21:03:21', NULL),
(752, 0, '8', 42, 'image/jpeg', 217862, 'products/8.jpg', '[]', '2021-07-02 21:03:21', '2021-07-02 21:03:21', NULL),
(753, 0, '9-1', 42, 'image/jpeg', 65624, 'products/9-1.jpg', '[]', '2021-07-02 21:03:22', '2021-07-02 21:03:22', NULL),
(754, 0, '9', 42, 'image/jpeg', 159636, 'products/9.jpg', '[]', '2021-07-02 21:03:23', '2021-07-02 21:03:23', NULL),
(755, 0, '1', 43, 'image/jpeg', 82629, 'news/1.jpg', '[]', '2021-07-02 21:03:25', '2021-07-02 21:03:25', NULL),
(756, 0, '2', 43, 'image/jpeg', 119904, 'news/2.jpg', '[]', '2021-07-02 21:03:26', '2021-07-02 21:03:26', NULL),
(757, 0, '3', 43, 'image/jpeg', 89543, 'news/3.jpg', '[]', '2021-07-02 21:03:26', '2021-07-02 21:03:26', NULL),
(758, 0, '4', 43, 'image/jpeg', 51573, 'news/4.jpg', '[]', '2021-07-02 21:03:26', '2021-07-02 21:03:26', NULL),
(759, 0, '5', 43, 'image/jpeg', 41164, 'news/5.jpg', '[]', '2021-07-02 21:03:26', '2021-07-02 21:03:26', NULL),
(760, 0, '6', 43, 'image/jpeg', 80696, 'news/6.jpg', '[]', '2021-07-02 21:03:26', '2021-07-02 21:03:26', NULL),
(761, 0, '1', 44, 'image/jpeg', 2733, 'testimonials/1.jpg', '[]', '2021-07-02 21:03:27', '2021-07-02 21:03:27', NULL),
(762, 0, '2', 44, 'image/jpeg', 2840, 'testimonials/2.jpg', '[]', '2021-07-02 21:03:27', '2021-07-02 21:03:27', NULL),
(763, 0, '3', 44, 'image/jpeg', 3065, 'testimonials/3.jpg', '[]', '2021-07-02 21:03:27', '2021-07-02 21:03:27', NULL),
(764, 0, '4', 44, 'image/jpeg', 2559, 'testimonials/4.jpg', '[]', '2021-07-02 21:03:27', '2021-07-02 21:03:27', NULL),
(765, 0, '1', 45, 'image/jpeg', 98636, 'sliders/1.jpg', '[]', '2021-07-02 21:03:28', '2021-07-02 21:03:28', NULL),
(766, 0, '2', 45, 'image/jpeg', 22560, 'sliders/2.jpg', '[]', '2021-07-02 21:03:28', '2021-07-02 21:03:28', NULL),
(767, 0, '3', 45, 'image/jpeg', 21630, 'sliders/3.jpg', '[]', '2021-07-02 21:03:28', '2021-07-02 21:03:28', NULL),
(768, 0, 'american-express', 46, 'image/png', 3209, 'general/american-express.png', '[]', '2021-07-02 21:03:29', '2021-07-02 21:03:29', NULL),
(769, 0, 'b-1', 46, 'image/jpeg', 20539, 'general/b-1.jpg', '[]', '2021-07-02 21:03:29', '2021-07-02 21:03:29', NULL),
(770, 0, 'b-2', 46, 'image/jpeg', 18320, 'general/b-2.jpg', '[]', '2021-07-02 21:03:29', '2021-07-02 21:03:29', NULL),
(771, 0, 'b-3', 46, 'image/jpeg', 42872, 'general/b-3.jpg', '[]', '2021-07-02 21:03:29', '2021-07-02 21:03:29', NULL),
(772, 0, 'discover', 46, 'image/png', 2494, 'general/discover.png', '[]', '2021-07-02 21:03:30', '2021-07-02 21:03:30', NULL),
(773, 0, 'favicon', 46, 'image/png', 1803, 'general/favicon.png', '[]', '2021-07-02 21:03:30', '2021-07-02 21:03:30', NULL),
(774, 0, 'logo-light', 46, 'image/png', 3736, 'general/logo-light.png', '[]', '2021-07-02 21:03:30', '2021-07-02 21:03:30', NULL),
(775, 0, 'logo', 46, 'image/png', 3927, 'general/logo.png', '[]', '2021-07-02 21:03:30', '2021-07-02 21:03:30', NULL),
(776, 0, 'master-card', 46, 'image/png', 3407, 'general/master-card.png', '[]', '2021-07-02 21:03:30', '2021-07-02 21:03:30', NULL),
(777, 0, 'newsletter', 46, 'image/jpeg', 48929, 'general/newsletter.jpg', '[]', '2021-07-02 21:03:30', '2021-07-02 21:03:30', NULL),
(778, 0, 'paypal', 46, 'image/png', 2670, 'general/paypal.png', '[]', '2021-07-02 21:03:31', '2021-07-02 21:03:31', NULL),
(779, 0, 'visa', 46, 'image/png', 2841, 'general/visa.png', '[]', '2021-07-02 21:03:31', '2021-07-02 21:03:31', NULL),
(780, 0, '1', 47, 'image/png', 2165, 'brands/1.png', '[]', '2025-02-04 05:55:35', '2025-02-04 05:55:35', NULL),
(781, 0, '2', 47, 'image/png', 2165, 'brands/2.png', '[]', '2025-02-04 05:55:35', '2025-02-04 05:55:35', NULL),
(782, 0, '3', 47, 'image/png', 2165, 'brands/3.png', '[]', '2025-02-04 05:55:35', '2025-02-04 05:55:35', NULL),
(783, 0, '4', 47, 'image/png', 2165, 'brands/4.png', '[]', '2025-02-04 05:55:35', '2025-02-04 05:55:35', NULL),
(784, 0, '5', 47, 'image/png', 2165, 'brands/5.png', '[]', '2025-02-04 05:55:35', '2025-02-04 05:55:35', NULL),
(785, 0, '6', 47, 'image/png', 2165, 'brands/6.png', '[]', '2025-02-04 05:55:35', '2025-02-04 05:55:35', NULL),
(786, 0, '7', 47, 'image/png', 2165, 'brands/7.png', '[]', '2025-02-04 05:55:35', '2025-02-04 05:55:35', NULL),
(787, 0, 'p-1', 48, 'image/png', 2165, 'product-categories/p-1.png', '[]', '2025-02-04 05:55:35', '2025-02-04 05:55:35', NULL),
(788, 0, 'p-2', 48, 'image/png', 2165, 'product-categories/p-2.png', '[]', '2025-02-04 05:55:35', '2025-02-04 05:55:35', NULL),
(789, 0, 'p-3', 48, 'image/png', 2165, 'product-categories/p-3.png', '[]', '2025-02-04 05:55:35', '2025-02-04 05:55:35', NULL),
(790, 0, 'p-4', 48, 'image/png', 2165, 'product-categories/p-4.png', '[]', '2025-02-04 05:55:35', '2025-02-04 05:55:35', NULL),
(791, 0, 'p-5', 48, 'image/png', 2165, 'product-categories/p-5.png', '[]', '2025-02-04 05:55:35', '2025-02-04 05:55:35', NULL),
(792, 0, 'p-6', 48, 'image/png', 2165, 'product-categories/p-6.png', '[]', '2025-02-04 05:55:35', '2025-02-04 05:55:35', NULL),
(793, 0, 'p-7', 48, 'image/png', 2165, 'product-categories/p-7.png', '[]', '2025-02-04 05:55:35', '2025-02-04 05:55:35', NULL),
(794, 1, 'Screenshot_2023-10-06-19-52-03-46_e2d5b3f32b79de1d45acd1fad96fbb0f', 0, 'image/jpeg', 362469, 'screenshot-2023-10-06-19-52-03-46-e2d5b3f32b79de1d45acd1fad96fbb0f.jpg', '[]', '2025-02-04 06:28:51', '2025-02-04 06:28:51', NULL),
(795, 1, 'chakkar', 48, 'image/jpeg', 89264, 'product-categories/chakkar.jpg', '[]', '2025-02-04 08:50:09', '2025-02-04 08:50:09', NULL),
(796, 1, 'small chakkar', 48, 'image/jpeg', 94881, 'product-categories/small-chakkar.jpg', '[]', '2025-02-16 07:48:26', '2025-02-16 07:48:26', NULL),
(797, 1, 'flowerpots', 48, 'image/jpeg', 3878, 'product-categories/flowerpots.jpg', '[]', '2025-02-16 07:52:34', '2025-02-16 07:52:34', NULL),
(798, 1, 'logo', 48, 'image/jpeg', 9724, 'product-categories/logo.jpg', '[]', '2025-02-16 08:16:17', '2025-02-16 08:16:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(41, 0, 'customers', 'customers', 0, '2021-07-02 21:02:32', '2021-07-02 21:02:32', NULL),
(42, 0, 'products', 'products', 0, '2021-07-02 21:02:37', '2021-07-02 21:02:37', NULL),
(43, 0, 'news', 'news', 0, '2021-07-02 21:03:25', '2021-07-02 21:03:25', NULL),
(44, 0, 'testimonials', 'testimonials', 0, '2021-07-02 21:03:27', '2021-07-02 21:03:27', NULL),
(45, 0, 'sliders', 'sliders', 0, '2021-07-02 21:03:28', '2021-07-02 21:03:28', NULL),
(46, 0, 'general', 'general', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29', NULL),
(47, 0, 'brands', 'brands', 0, '2025-02-04 05:55:35', '2025-02-04 05:55:35', NULL),
(48, 0, 'product-categories', 'product-categories', 0, '2025-02-04 05:55:35', '2025-02-04 05:55:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) NOT NULL,
  `value` text DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `slug` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(2, 'Useful Links', 'useful-links', 'published', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(3, 'Categories', 'categories', 'published', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(4, 'My Account', 'my-account', 'published', '2021-07-02 21:03:29', '2021-07-02 21:03:29');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2021-07-02 21:03:29', '2021-07-02 21:03:29');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reference_id` int(10) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(255) DEFAULT NULL,
  `url` varchar(120) DEFAULT NULL,
  `icon_font` varchar(50) DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(120) DEFAULT NULL,
  `css_class` varchar(120) DEFAULT NULL,
  `target` varchar(20) NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, NULL, NULL, '/', NULL, 0, 'Home', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(2, 1, 0, NULL, NULL, '/products', NULL, 0, 'Products', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(3, 1, 0, NULL, NULL, '#', NULL, 0, 'Shop', NULL, '_self', 1, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(6, 1, 3, 1, 'Botble\\Ecommerce\\Models\\ProductTag', '/product-tags/electronic', NULL, 0, 'Product Tag', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(7, 1, 3, NULL, NULL, 'products/beat-headphone', NULL, 0, 'Product Single', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(8, 1, 0, 3, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Blog', NULL, '_self', 1, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(9, 1, 8, 3, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Blog Left Sidebar', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(10, 1, 8, 1, 'Botble\\Blog\\Models\\Category', '/news/ecommerce', NULL, 0, 'Blog Category', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(12, 1, 8, NULL, NULL, 'news/4-expert-tips-on-how-to-choose-the-right-mens-wallet', NULL, 0, 'Blog Single', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(13, 1, 0, 2, 'Botble\\Page\\Models\\Page', '/contact-us', NULL, 0, 'Contact us', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(14, 2, 0, 4, 'Botble\\Page\\Models\\Page', '/about-us', NULL, 0, 'About Us', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(15, 2, 0, 5, 'Botble\\Page\\Models\\Page', '/faq', NULL, 0, 'FAQ', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(16, 2, 0, 6, 'Botble\\Page\\Models\\Page', '/location', NULL, 0, 'Location', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(17, 2, 0, 7, 'Botble\\Page\\Models\\Page', '/affiliates', NULL, 0, 'Affiliates', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(18, 2, 0, 2, 'Botble\\Page\\Models\\Page', '/contact-us', NULL, 0, 'Contact', NULL, '_self', 0, '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(24, 4, 0, 0, NULL, '/customer/overview', '', 0, 'My profile', '', '_self', 0, '2021-07-02 21:03:29', '2025-02-16 08:11:38'),
(25, 4, 0, 0, NULL, '/wishlist', '', 1, 'Wishlist', '', '_self', 0, '2021-07-02 21:03:29', '2025-02-16 08:11:38'),
(26, 4, 0, 0, NULL, 'customer/orders', '', 2, 'Orders', '', '_self', 0, '2021-07-02 21:03:29', '2025-02-16 08:11:38'),
(27, 4, 0, 0, NULL, '/orders/tracking', '', 3, 'Order tracking', '', '_self', 0, '2021-07-02 21:03:29', '2025-02-16 08:11:38');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` text DEFAULT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(16, 'button_text', '[\"Shop now\"]', 1, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-07-02 20:17:18', '2021-07-02 20:17:18'),
(17, 'button_text', '[\"Discover now\"]', 2, 'Botble\\SimpleSlider\\Models\\SimpleSliderItem', '2021-07-02 20:17:18', '2021-07-02 20:17:18'),
(19, 'icon', '[null]', 36, 'Botble\\Ecommerce\\Models\\ProductCategory', '2025-02-04 08:50:25', '2025-02-04 08:50:25'),
(20, 'icon', '[null]', 37, 'Botble\\Ecommerce\\Models\\ProductCategory', '2025-02-16 07:52:47', '2025-02-16 07:52:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2015_06_18_033822_create_blog_table', 1),
(6, '2015_06_29_025744_create_audit_history', 1),
(7, '2016_06_10_230148_create_acl_tables', 1),
(8, '2016_06_14_230857_create_menus_table', 1),
(9, '2016_06_17_091537_create_contacts_table', 1),
(10, '2016_06_28_221418_create_pages_table', 1),
(11, '2016_10_05_074239_create_setting_table', 1),
(12, '2016_10_07_193005_create_translations_table', 1),
(13, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(14, '2016_12_16_084601_create_widgets_table', 1),
(15, '2017_05_09_070343_create_media_tables', 1),
(16, '2017_05_18_080441_create_payment_tables', 1),
(17, '2017_07_11_140018_create_simple_slider_table', 1),
(18, '2017_10_24_154832_create_newsletter_table', 1),
(19, '2017_11_03_070450_create_slug_table', 1),
(20, '2018_07_09_214610_create_testimonial_table', 1),
(21, '2019_01_05_053554_create_jobs_table', 1),
(22, '2019_08_19_000000_create_failed_jobs_table', 1),
(23, '2020_03_05_041139_create_ecommerce_tables', 1),
(24, '2020_09_22_135635_update_taxes_table', 1),
(25, '2020_09_29_101006_add_views_into_ec_products_table', 1),
(26, '2020_10_01_152311_make_column_image_in_product_attributes_table_nullable', 1),
(27, '2020_10_06_073439_improve_ecommerce_database', 1),
(28, '2020_11_01_040415_update_table_ec_order_addresses', 1),
(29, '2020_11_04_091510_make_column_phone_in_order_addresses_nullable', 1),
(30, '2020_11_30_015801_update_table_ec_product_categories', 1),
(31, '2021_01_01_044147_ecommerce_create_flash_sale_table', 1),
(32, '2021_01_17_082713_add_column_is_featured_to_product_collections_table', 1),
(33, '2021_01_18_024333_add_zip_code_into_table_customer_addresses', 1),
(34, '2021_02_16_092633_remove_default_value_for_author_type', 1),
(35, '2021_02_18_073505_update_table_ec_reviews', 1),
(36, '2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers', 1),
(37, '2021_03_10_025153_change_column_tax_amount', 1),
(38, '2021_03_20_033103_add_column_availability_to_table_ec_products', 1),
(39, '2021_03_27_144913_add_customer_type_into_table_payments', 1),
(40, '2021_04_28_074008_ecommerce_create_product_label_table', 1),
(41, '2021_05_24_034720_make_column_currency_nullable', 2),
(42, '2021_06_28_153141_correct_slugs_data', 3),
(43, '2021_07_18_101839_fix_old_theme_options', 4),
(44, '2021_05_31_173037_ecommerce_create_ec_products_translations', 5);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(120) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `content` longtext DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `template` varchar(60) DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `description` varchar(400) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `is_featured`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', '<div>[simple-slider key=\"home-slider\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\" description=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[flash-sale title=\"Best deals for you\"][/flash-sale]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[banners image1=\"general/b-1.jpg\" url1=\"/product-categories/headphone\" image2=\"general/b-2.jpg\" url2=\"/product-categories/camera\" image3=\"general/b-3.jpg\" url3=\"/product-categories/watches\"][/banners]</div><div>[trending-products title=\"Trending Products\"][[/trending-products]</div><div>[product-blocks featured_product_title=\"Featured Products\" top_rated_product_title=\"Top Rated Products\" on_sale_product_title=\"On Sale Products\"][/product-blocks]</div><div>[featured-brands title=\"Our Brands\"][/featured-brands]</div><div>[featured-news title=\"Visit Our Blog\" description=\"Our Blog updated the newest trend of the world regularly\"][/featured-news]</div><div>[testimonials title=\"Our Client Say!\"][/testimonials]</div><div>[our-features icon1=\"flaticon-shipped\" title1=\"Free Delivery\" description1=\"Free shipping on all US order or order above $200\" icon2=\"flaticon-money-back\" title2=\"30 Day Returns Guarantee\" description2=\"Simply return it within 30 days for an exchange\" icon3=\"flaticon-support\" title3=\"27/4 Online Support\" description3=\"Contact us 24 hours a day, 7 days a week\"][/our-features]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" description=\"Register now to get updates on promotions.\"][/newsletter-form]</div>', 1, NULL, 'homepage', 0, NULL, 'published', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(2, 'Contact us', '<p>[contact-form][/contact-form]</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(3, 'Blog', '<p>---</p>', 1, NULL, 'blog-sidebar', 0, NULL, 'published', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(4, 'About us', '<p>His voice has a timid voice at her feet, for it to speak with. Alice waited a little, \'From the Queen. \'Never!\' said the King; \'and don\'t be nervous, or I\'ll kick you down stairs!\' \'That is not said right,\' said the King, and the choking of the goldfish kept running in her pocket) till she was losing her temper. \'Are you content now?\' said the Knave, \'I didn\'t know that you\'re mad?\' \'To begin with,\' said the Caterpillar. \'Well, perhaps not,\' said the Mock Turtle is.\' \'It\'s the oldest rule in.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(5, 'FAQ', '<p>CHORUS. \'Wow! wow! wow!\' While the Duchess and the words \'EAT ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said the Dormouse, not choosing to notice this last remark. \'Of course you don\'t!\' the Hatter asked triumphantly. Alice did not venture to go near the King said gravely, \'and go on crying in this way! Stop this moment, I tell you!\' said Alice. \'It must be off, then!\' said the Mock Turtle repeated thoughtfully. \'I should like to show you! A little bright-eyed terrier, you.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(6, 'Location', '<p>Turtle--we used to it!\' pleaded poor Alice began to get to,\' said the Gryphon, the squeaking of the players to be said. At last the Mock Turtle drew a long way back, and barking hoarsely all the time she had tired herself out with his head!\' or \'Off with his tea spoon at the Gryphon at the righthand bit again, and that\'s very like a candle. I wonder who will put on one knee as he spoke. \'UNimportant, of course, I meant,\' the King and the moon, and memory, and muchness--you know you say things.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(7, 'Affiliates', '<p>It sounded an excellent opportunity for making her escape; so she took up the other, and making quite a new pair of boots every Christmas.\' And she began thinking over other children she knew, who might do something better with the distant sobs of the court. \'What do you know about it, and fortunately was just in time to be trampled under its feet, \'I move that the meeting adjourn, for the garden!\' and she thought at first was moderate. But the snail replied \"Too far, too far!\" and gave a.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(8, 'Brands', '<p>[all-brands][/all-brands]</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(9, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'default', 0, NULL, 'published', '2021-07-02 21:03:29', '2021-07-02 21:03:29');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(120) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `charge_id` varchar(60) DEFAULT NULL,
  `payment_channel` varchar(60) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `amount` decimal(15,2) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(60) DEFAULT 'pending',
  `payment_type` varchar(191) DEFAULT 'confirm',
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `refunded_amount` decimal(15,2) UNSIGNED DEFAULT NULL,
  `refund_note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `currency`, `user_id`, `charge_id`, `payment_channel`, `description`, `amount`, `order_id`, `status`, `payment_type`, `customer_id`, `refunded_amount`, `refund_note`, `created_at`, `updated_at`, `customer_type`) VALUES
(21, 'INR', 1, 'BYDHJTRYFQ', 'cod', NULL, 540.00, 21, 'completed', 'confirm', NULL, NULL, NULL, '2025-02-16 08:24:34', '2025-02-16 08:24:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(400) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `format_type` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) NOT NULL,
  `old_value` text DEFAULT NULL,
  `new_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `permissions` text DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(4, 'activated_plugins', '[\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"mollie\",\"newsletter\",\"payment\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"testimonial\",\"translation\"]', NULL, NULL),
(5, 'permalink-botble-blog-models-post', 'news', NULL, NULL),
(6, 'permalink-botble-blog-models-category', 'news', NULL, NULL),
(7, 'permalink-botble-blog-models-tag', 'tags', NULL, NULL),
(8, 'payment_cod_status', '1', NULL, NULL),
(9, 'payment_cod_description', 'Please pay money directly to the postman, if you choose cash on delivery method (COD).', NULL, NULL),
(10, 'payment_bank_transfer_status', '1', NULL, NULL),
(11, 'payment_bank_transfer_description', 'Please send money to our bank account: ACB - 1990 404 19.', NULL, NULL),
(12, 'plugins_ecommerce_customer_new_order_status', '1', NULL, NULL),
(13, 'plugins_ecommerce_admin_new_order_status', '1', NULL, NULL),
(14, 'ecommerce_store_name', 'Crackers', NULL, NULL),
(15, 'ecommerce_store_phone', '9360437077', NULL, NULL),
(16, 'ecommerce_store_address', 'Thayilpatti', NULL, NULL),
(17, 'New York', 'Singapore', NULL, NULL),
(18, 'ecommerce_store_country', 'IN', NULL, NULL),
(20, 'theme', 'shopwise', NULL, NULL),
(40, 'social_login_enable', '0', NULL, NULL),
(41, 'social_login_facebook_enable', '1', NULL, NULL),
(42, 'social_login_facebook_app_id', '1752152358341085', NULL, NULL),
(43, 'social_login_facebook_app_secret', '39a9c04311e0da0956298c6dcee7d5e6', NULL, NULL),
(44, 'social_login_google_enable', '1', NULL, NULL),
(47, 'social_login_github_enable', '1', NULL, NULL),
(50, 'social_login_linkedin_enable', '1', NULL, NULL),
(171, 'theme-shopwise-site_title', 'Crackers', NULL, NULL),
(172, 'theme-shopwise-copyright', '© 2024 EKIFO Technologies. All Rights Reserved.', NULL, NULL),
(173, 'theme-shopwise-favicon', 'general/favicon.png', NULL, NULL),
(174, 'theme-shopwise-logo', 'general/logo.png', NULL, NULL),
(175, 'theme-shopwise-logo_footer', 'general/logo-light.png', NULL, NULL),
(176, 'theme-shopwise-address', 'Thayilpatti,Sivakasi', NULL, NULL),
(177, 'theme-shopwise-hotline', '9360437077', NULL, NULL),
(178, 'theme-shopwise-email', 'YYYcrackers@gmail.com', NULL, NULL),
(179, 'theme-shopwise-facebook', 'https://facebook.com', NULL, NULL),
(180, 'theme-shopwise-twitter', 'https://twitter.com', NULL, NULL),
(181, 'theme-shopwise-youtube', 'https://youtube.com', NULL, NULL),
(182, 'theme-shopwise-instagram', 'https://instagram.com', NULL, NULL),
(183, 'theme-shopwise-payment_methods', '[null,\"general\\/visa.png\",\"general\\/paypal.png\",\"general\\/master-card.png\",\"general\\/discover.png\",\"general\\/american-express.png\"]', NULL, NULL),
(184, 'theme-shopwise-newsletter_image', 'general/newsletter.jpg', NULL, NULL),
(185, 'theme-shopwise-homepage_id', '1', NULL, NULL),
(186, 'theme-shopwise-blog_page_id', '3', NULL, NULL),
(187, 'theme-shopwise-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies', NULL, NULL),
(188, 'theme-shopwise-cookie_consent_learn_more_url', 'http://shopwise.local/cookie-policy', NULL, NULL),
(189, 'theme-shopwise-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(191, 'theme-shopwise-show_site_name', '1', NULL, NULL),
(192, 'theme-shopwise-seo_title', 'Crackers', NULL, NULL),
(193, 'theme-shopwise-seo_description', 'YYY Crackers|Buy Crackers at 50% offer', NULL, NULL),
(194, 'theme-shopwise-seo_og_image', '', NULL, NULL),
(195, 'theme-shopwise-preloader_enabled', 'no', NULL, NULL),
(196, 'theme-shopwise-about-us', '', NULL, NULL),
(197, 'theme-shopwise-primary_font', 'Poppins', NULL, NULL),
(198, 'theme-shopwise-primary_color', '#06B5F9', NULL, NULL),
(199, 'theme-shopwise-secondary_color', '#1D2224', NULL, NULL),
(200, 'theme-shopwise-enable_newsletter_popup', 'no', NULL, NULL),
(201, 'theme-shopwise-newsletter_show_after_seconds', '10', NULL, NULL),
(202, 'theme-shopwise-facebook_comment_enabled_in_product', 'no', NULL, NULL),
(203, 'theme-shopwise-enable_sticky_header', 'yes', NULL, NULL),
(204, 'theme-shopwise-collapsing_product_categories_on_homepage', 'no', NULL, NULL),
(205, 'theme-shopwise-facebook_chat_enabled', 'no', NULL, NULL),
(206, 'theme-shopwise-facebook_page_id', '', NULL, NULL),
(207, 'theme-shopwise-facebook_comment_enabled_in_post', 'no', NULL, NULL),
(208, 'theme-shopwise-facebook_app_id', '', NULL, NULL),
(209, 'theme-shopwise-facebook_admins', '[[{\"key\":\"text\",\"value\":null}]]', NULL, NULL),
(210, 'theme-shopwise-number_of_posts_in_a_category', '12', NULL, NULL),
(211, 'theme-shopwise-number_of_posts_in_a_tag', '12', NULL, NULL),
(212, 'theme-shopwise-number_of_products_per_page', '12', NULL, NULL),
(213, 'theme-shopwise-number_of_cross_sale_product', '4', NULL, NULL),
(214, 'theme-shopwise-max_filter_price', '100000', NULL, NULL),
(217, 'theme-shopwise-cookie_consent_enable', 'yes', NULL, NULL),
(218, 'theme-shopwise-cookie_consent_button_text', 'Allow cookies', NULL, NULL),
(219, 'theme-shopwise-cookie_consent_background_color', '#000000', NULL, NULL),
(220, 'theme-shopwise-cookie_consent_text_color', '#FFFFFF', NULL, NULL),
(221, 'theme-shopwise-cookie_consent_max_width', '1170', NULL, NULL),
(222, 'ecommerce_store_state', 'Tamilnadu', NULL, NULL),
(223, 'ecommerce_store_city', 'Sivakasi', NULL, NULL),
(224, 'ecommerce_store_order_prefix', '1', NULL, NULL),
(225, 'ecommerce_store_order_suffix', '1000', NULL, NULL),
(226, 'ecommerce_store_weight_unit', 'g', NULL, NULL),
(227, 'ecommerce_store_width_height_unit', 'cm', NULL, NULL),
(228, 'ecommerce_thousands_separator', ',', NULL, NULL),
(229, 'ecommerce_decimal_separator', '.', NULL, NULL),
(230, 'ecommerce_currencies_is_default', '0', NULL, NULL),
(231, 'ecommerce_shopping_cart_enabled', '1', NULL, NULL),
(232, 'ecommerce_ecommerce_tax_enabled', '1', NULL, NULL),
(233, 'ecommerce_display_product_price_including_taxes', '0', NULL, NULL),
(234, 'ecommerce_review_enabled', '1', NULL, NULL),
(235, 'ecommerce_enable_quick_buy_button', '1', NULL, NULL),
(236, 'ecommerce_quick_buy_target_page', 'checkout', NULL, NULL),
(237, 'ecommerce_zip_code_enabled', '0', NULL, NULL),
(238, 'ecommerce_verify_customer_email', '0', NULL, NULL),
(239, 'ecommerce_enable_guest_checkout', '1', NULL, NULL),
(240, 'ecommerce_minimum_order_amount', '2500', NULL, NULL),
(241, 'ecommerce_available_countries', '[\"IN\"]', NULL, NULL),
(245, 'time_zone', 'UTC', NULL, NULL),
(246, 'locale_direction', 'ltr', NULL, NULL),
(247, 'enable_send_error_reporting_via_email', '0', NULL, NULL),
(251, 'admin_title', 'Crackers', NULL, NULL),
(252, 'rich_editor', 'ckeditor', NULL, NULL),
(253, 'enable_change_admin_theme', '0', NULL, NULL),
(254, 'enable_cache', '0', NULL, NULL),
(255, 'cache_time', '10', NULL, NULL),
(256, 'cache_admin_menu_enable', '0', NULL, NULL),
(258, 'cache_time_site_map', '3600', NULL, NULL),
(259, 'show_admin_bar', '0', NULL, NULL),
(267, 'enable_captcha', '0', NULL, NULL),
(268, 'captcha_type', 'v2', NULL, NULL),
(269, 'captcha_hide_badge', '0', NULL, NULL),
(272, 'simple_slider_using_assets', '1', NULL, NULL),
(275, 'locale', 'en', NULL, NULL),
(290, 'default_admin_theme', 'darkblue', NULL, NULL),
(293, 'admin_locale_direction', 'ltr', NULL, NULL),
(294, 'admin_email.0', 'admin@gmail.com', NULL, NULL),
(355, 'email_driver', 'sendmail', NULL, NULL),
(356, 'email_port', '587', NULL, NULL),
(357, 'email_host', 'smtp.mailgun.org', NULL, NULL),
(360, 'email_encryption', 'tls', NULL, NULL),
(363, 'email_mail_gun_endpoint', 'api.mailgun.net', NULL, NULL),
(366, 'email_ses_region', 'us-east-1', NULL, NULL),
(368, 'email_sendmail_path', '/usr/sbin/sendmail -bs', NULL, NULL),
(370, 'email_from_name', 'Example', NULL, NULL),
(371, 'email_from_address', 'hello@example.com', NULL, NULL),
(372, 'using_queue_to_send_mail', '0', NULL, NULL),
(373, 'plugins_contact_notice_status', '1', NULL, NULL),
(374, 'plugins_ecommerce_welcome_status', '0', NULL, NULL),
(375, 'plugins_ecommerce_customer_cancel_order_status', '1', NULL, NULL),
(376, 'plugins_ecommerce_customer_delivery_order_status', '1', NULL, NULL),
(377, 'plugins_ecommerce_order_confirm_status', '1', NULL, NULL),
(378, 'plugins_ecommerce_order_confirm_payment_status', '1', NULL, NULL),
(379, 'plugins_ecommerce_order_recover_status', '1', NULL, NULL),
(380, 'plugins_newsletter_subscriber_email_status', '1', NULL, NULL),
(381, 'plugins_newsletter_admin_email_status', '1', NULL, NULL),
(388, 'default_payment_method', 'cod', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `simple_sliders`
--

CREATE TABLE `simple_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `key` varchar(120) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_sliders`
--

INSERT INTO `simple_sliders` (`id`, `name`, `key`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home slider', 'home-slider', 'The main slider on homepage', 'published', '2021-07-02 21:03:28', '2021-07-02 21:03:28');

-- --------------------------------------------------------

--
-- Table structure for table `simple_slider_items`
--

CREATE TABLE `simple_slider_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `simple_slider_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `simple_slider_items`
--

INSERT INTO `simple_slider_items` (`id`, `simple_slider_id`, `title`, `image`, `link`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'Crackers for Max 80% offer', 'sliders/1.jpg', '/products', 'Get up to 80% off Today Only!', 1, '2021-07-02 21:03:28', '2025-02-16 07:54:06'),
(2, 1, 'crackers', 'screenshot-2023-10-06-19-52-03-46-e2d5b3f32b79de1d45acd1fad96fbb0f.jpg', '/products', '80% off in all products', 2, '2021-07-02 21:03:28', '2025-02-04 06:29:05');

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) NOT NULL,
  `prefix` varchar(120) DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(484, 'quas-fuga-dicta-qui-est', 16, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(485, 'suscipit-et-maxime-in', 17, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(486, 'sed-sit-ipsa-saepe-quia', 18, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(487, 'eos-est-aut-cum-qui', 19, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(488, 'rem-vel-sit-ut-autem', 20, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(489, 'libero-et-alias-eius-et', 21, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(490, 'magnam-iste-a-possimus', 22, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(491, 'quo-id-esse-quia-et', 23, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(492, 'et-alias-enim-suscipit', 24, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(493, 'rerum-quae-nam-ut-quo', 25, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(494, 'quia-id-sint-ad-rem', 26, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(495, 'amet-eos-ut-sunt-ea', 27, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(496, 'dicta-quia-expedita-ut', 28, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(497, 'sint-aut-nihil-ducimus', 29, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(498, 'dolores-dolore-quod-in', 30, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(499, 'quis-id-veniam-qui-hic', 31, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(500, 'cum-velit-vel-aut', 32, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(501, 'expedita-sit-eos-qui', 33, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(502, 'illum-impedit-et-odio', 34, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(503, 'sed-et-qui-sint', 35, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2021-07-02 21:02:32', '2021-07-02 21:02:32'),
(546, 'ecommerce', 1, 'Botble\\Blog\\Models\\Category', 'news', '2021-07-02 21:03:27', '2021-07-02 21:03:29'),
(556, 'home', 1, 'Botble\\Page\\Models\\Page', '', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(557, 'contact-us', 2, 'Botble\\Page\\Models\\Page', '', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(558, 'blog', 3, 'Botble\\Page\\Models\\Page', '', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(559, 'about-us', 4, 'Botble\\Page\\Models\\Page', '', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(560, 'faq', 5, 'Botble\\Page\\Models\\Page', '', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(561, 'location', 6, 'Botble\\Page\\Models\\Page', '', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(562, 'affiliates', 7, 'Botble\\Page\\Models\\Page', '', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(563, 'brands', 8, 'Botble\\Page\\Models\\Page', '', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(564, 'cookie-policy', 9, 'Botble\\Page\\Models\\Page', '', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(572, 'chakkar', 36, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-02-04 08:50:25', '2025-02-04 08:50:25'),
(573, 'ground-chakkar-small', 106, 'Botble\\Ecommerce\\Models\\Product', 'products', '2025-02-16 07:48:48', '2025-02-16 07:48:48'),
(574, 'flower-pots', 37, 'Botble\\Ecommerce\\Models\\ProductCategory', 'product-categories', '2025-02-16 07:52:47', '2025-02-16 07:52:47');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) DEFAULT '',
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `company` varchar(120) DEFAULT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `locale` varchar(191) NOT NULL,
  `group` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 0, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(2, 0, 'en', 'auth', 'password', 'The provided password is incorrect.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(3, 0, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(4, 0, 'en', 'pagination', 'previous', '&laquo; Previous', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(5, 0, 'en', 'pagination', 'next', 'Next &raquo;', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(6, 0, 'en', 'passwords', 'reset', 'Your password has been reset!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(7, 0, 'en', 'passwords', 'sent', 'We have emailed your password reset link!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(8, 0, 'en', 'passwords', 'throttled', 'Please wait before retrying.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(9, 0, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(10, 0, 'en', 'passwords', 'user', 'We can\'t find a user with that email address.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(11, 0, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(12, 0, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(13, 0, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(14, 0, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(15, 0, 'en', 'validation', 'alpha', 'The :attribute must only contain letters.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(16, 0, 'en', 'validation', 'alpha_dash', 'The :attribute must only contain letters, numbers, dashes and underscores.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(17, 0, 'en', 'validation', 'alpha_num', 'The :attribute must only contain letters and numbers.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(18, 0, 'en', 'validation', 'array', 'The :attribute must be an array.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(19, 0, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(20, 0, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(21, 0, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(22, 0, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(23, 0, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(24, 0, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(25, 0, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(26, 0, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(27, 0, 'en', 'validation', 'current_password', 'The password is incorrect.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(28, 0, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(29, 0, 'en', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(30, 0, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(31, 0, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(32, 0, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(33, 0, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(34, 0, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(35, 0, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(36, 0, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(37, 0, 'en', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(38, 0, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(39, 0, 'en', 'validation', 'file', 'The :attribute must be a file.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(40, 0, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(41, 0, 'en', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(42, 0, 'en', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(43, 0, 'en', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(44, 0, 'en', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(45, 0, 'en', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal :value.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(46, 0, 'en', 'validation', 'gte.file', 'The :attribute must be greater than or equal :value kilobytes.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(47, 0, 'en', 'validation', 'gte.string', 'The :attribute must be greater than or equal :value characters.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(48, 0, 'en', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(49, 0, 'en', 'validation', 'image', 'The :attribute must be an image.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(50, 0, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(51, 0, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(52, 0, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(53, 0, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(54, 0, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(55, 0, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(56, 0, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(57, 0, 'en', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(58, 0, 'en', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(59, 0, 'en', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(60, 0, 'en', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(61, 0, 'en', 'validation', 'lte.numeric', 'The :attribute must be less than or equal :value.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(62, 0, 'en', 'validation', 'lte.file', 'The :attribute must be less than or equal :value kilobytes.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(63, 0, 'en', 'validation', 'lte.string', 'The :attribute must be less than or equal :value characters.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(64, 0, 'en', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(65, 0, 'en', 'validation', 'max.numeric', 'The :attribute must not be greater than :max.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(66, 0, 'en', 'validation', 'max.file', 'The :attribute must not be greater than :max kilobytes.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(67, 0, 'en', 'validation', 'max.string', 'The :attribute must not be greater than :max characters.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(68, 0, 'en', 'validation', 'max.array', 'The :attribute must not have more than :max items.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(69, 0, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(70, 0, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(71, 0, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(72, 0, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(73, 0, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(74, 0, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(75, 0, 'en', 'validation', 'multiple_of', 'The :attribute must be a multiple of :value.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(76, 0, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(77, 0, 'en', 'validation', 'not_regex', 'The :attribute format is invalid.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(78, 0, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(79, 0, 'en', 'validation', 'password', 'The password is incorrect.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(80, 0, 'en', 'validation', 'present', 'The :attribute field must be present.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(81, 0, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(82, 0, 'en', 'validation', 'required', 'The :attribute field is required.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(83, 0, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(84, 0, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(85, 0, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(86, 0, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(87, 0, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(88, 0, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(89, 0, 'en', 'validation', 'prohibited', 'The :attribute field is prohibited.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(90, 0, 'en', 'validation', 'prohibited_if', 'The :attribute field is prohibited when :other is :value.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(91, 0, 'en', 'validation', 'prohibited_unless', 'The :attribute field is prohibited unless :other is in :values.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(92, 0, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(93, 0, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(94, 0, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(95, 0, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(96, 0, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(97, 0, 'en', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(98, 0, 'en', 'validation', 'string', 'The :attribute must be a string.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(99, 0, 'en', 'validation', 'timezone', 'The :attribute must be a valid timezone.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(100, 0, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(101, 0, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(102, 0, 'en', 'validation', 'url', 'The :attribute must be a valid URL.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(103, 0, 'en', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(104, 0, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(105, 0, 'en', 'core/acl/api', 'api_clients', 'API Clients', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(106, 0, 'en', 'core/acl/api', 'create_new_client', 'Create new client', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(107, 0, 'en', 'core/acl/api', 'create_new_client_success', 'Create new client successfully!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(108, 0, 'en', 'core/acl/api', 'edit_client', 'Edit client \":name\"', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(109, 0, 'en', 'core/acl/api', 'edit_client_success', 'Updated client successfully!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(110, 0, 'en', 'core/acl/api', 'delete_success', 'Deleted client successfully!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(111, 0, 'en', 'core/acl/api', 'confirm_delete_title', 'Confirm delete client \":name\"', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(112, 0, 'en', 'core/acl/api', 'confirm_delete_description', 'Do you really want to delete client \":name\"?', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(113, 0, 'en', 'core/acl/api', 'cancel_delete', 'No', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(114, 0, 'en', 'core/acl/api', 'continue_delete', 'Yes, let\'s delete it!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(115, 0, 'en', 'core/acl/api', 'name', 'Name', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(116, 0, 'en', 'core/acl/api', 'cancel', 'Cancel', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(117, 0, 'en', 'core/acl/api', 'save', 'Save', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(118, 0, 'en', 'core/acl/api', 'edit', 'Edit', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(119, 0, 'en', 'core/acl/api', 'delete', 'Delete', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(120, 0, 'en', 'core/acl/api', 'client_id', 'Client ID', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(121, 0, 'en', 'core/acl/api', 'secret', 'Secret', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(122, 0, 'en', 'core/acl/auth', 'login.username', 'Email/Username', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(123, 0, 'en', 'core/acl/auth', 'login.email', 'Email', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(124, 0, 'en', 'core/acl/auth', 'login.password', 'Password', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(125, 0, 'en', 'core/acl/auth', 'login.title', 'User Login', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(126, 0, 'en', 'core/acl/auth', 'login.remember', 'Remember me?', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(127, 0, 'en', 'core/acl/auth', 'login.login', 'Sign in', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(128, 0, 'en', 'core/acl/auth', 'login.placeholder.username', 'Please enter your username', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(129, 0, 'en', 'core/acl/auth', 'login.placeholder.email', 'Please enter your email', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(130, 0, 'en', 'core/acl/auth', 'login.success', 'Login successfully!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(131, 0, 'en', 'core/acl/auth', 'login.fail', 'Wrong username or password.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(132, 0, 'en', 'core/acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(133, 0, 'en', 'core/acl/auth', 'login.banned', 'This account is banned.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(134, 0, 'en', 'core/acl/auth', 'login.logout_success', 'Logout successfully!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(135, 0, 'en', 'core/acl/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(136, 0, 'en', 'core/acl/auth', 'forgot_password.title', 'Forgot Password', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(137, 0, 'en', 'core/acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your email account. System will send a email with active link to reset your password.</p>', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(138, 0, 'en', 'core/acl/auth', 'forgot_password.submit', 'Submit', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(139, 0, 'en', 'core/acl/auth', 'reset.new_password', 'New password', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(140, 0, 'en', 'core/acl/auth', 'reset.password_confirmation', 'Confirm new password', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(141, 0, 'en', 'core/acl/auth', 'reset.email', 'Email', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(142, 0, 'en', 'core/acl/auth', 'reset.title', 'Reset your password', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(143, 0, 'en', 'core/acl/auth', 'reset.update', 'Update', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(144, 0, 'en', 'core/acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(145, 0, 'en', 'core/acl/auth', 'reset.user_not_found', 'This username is not exist.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(146, 0, 'en', 'core/acl/auth', 'reset.success', 'Reset password successfully!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(147, 0, 'en', 'core/acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(148, 0, 'en', 'core/acl/auth', 'reset.reset.title', 'Email reset password', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(149, 0, 'en', 'core/acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(150, 0, 'en', 'core/acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(151, 0, 'en', 'core/acl/auth', 'reset.new-password', 'New password', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(152, 0, 'en', 'core/acl/auth', 'email.reminder.title', 'Email reset password', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(153, 0, 'en', 'core/acl/auth', 'password_confirmation', 'Password confirm', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(154, 0, 'en', 'core/acl/auth', 'failed', 'Failed', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(155, 0, 'en', 'core/acl/auth', 'throttle', 'Throttle', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(156, 0, 'en', 'core/acl/auth', 'not_member', 'Not a member yet?', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(157, 0, 'en', 'core/acl/auth', 'register_now', 'Register now', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(158, 0, 'en', 'core/acl/auth', 'lost_your_password', 'Lost your password?', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(159, 0, 'en', 'core/acl/auth', 'login_title', 'Admin', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(160, 0, 'en', 'core/acl/auth', 'login_via_social', 'Login with social networks', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(161, 0, 'en', 'core/acl/auth', 'back_to_login', 'Back to login page', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(162, 0, 'en', 'core/acl/auth', 'sign_in_below', 'Sign In Below', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(163, 0, 'en', 'core/acl/auth', 'languages', 'Languages', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(164, 0, 'en', 'core/acl/auth', 'reset_password', 'Reset Password', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(165, 0, 'en', 'core/acl/auth', 'settings.email.title', 'ACL', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(166, 0, 'en', 'core/acl/auth', 'settings.email.description', 'ACL email configuration', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(167, 0, 'en', 'core/acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(168, 0, 'en', 'core/acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(169, 0, 'en', 'core/acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(170, 0, 'en', 'core/acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(171, 0, 'en', 'core/acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(172, 0, 'en', 'core/acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(173, 0, 'en', 'core/acl/permissions', 'notices.create_success', 'The new role was successfully created', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(174, 0, 'en', 'core/acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(175, 0, 'en', 'core/acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(176, 0, 'en', 'core/acl/permissions', 'notices.not_found', 'Role not found', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(177, 0, 'en', 'core/acl/permissions', 'name', 'Name', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(178, 0, 'en', 'core/acl/permissions', 'current_role', 'Current Role', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(179, 0, 'en', 'core/acl/permissions', 'no_role_assigned', 'No role assigned', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(180, 0, 'en', 'core/acl/permissions', 'role_assigned', 'Assigned Role', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(181, 0, 'en', 'core/acl/permissions', 'create_role', 'Create New Role', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(182, 0, 'en', 'core/acl/permissions', 'role_name', 'Name', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(183, 0, 'en', 'core/acl/permissions', 'role_description', 'Description', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(184, 0, 'en', 'core/acl/permissions', 'permission_flags', 'Permission Flags', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(185, 0, 'en', 'core/acl/permissions', 'cancel', 'Cancel', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(186, 0, 'en', 'core/acl/permissions', 'reset', 'Reset', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(187, 0, 'en', 'core/acl/permissions', 'save', 'Save', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(188, 0, 'en', 'core/acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(189, 0, 'en', 'core/acl/permissions', 'details', 'Details', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(190, 0, 'en', 'core/acl/permissions', 'duplicate', 'Duplicate', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(191, 0, 'en', 'core/acl/permissions', 'all', 'All Permissions', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(192, 0, 'en', 'core/acl/permissions', 'list_role', 'List Roles', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(193, 0, 'en', 'core/acl/permissions', 'created_on', 'Created On', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(194, 0, 'en', 'core/acl/permissions', 'created_by', 'Created By', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(195, 0, 'en', 'core/acl/permissions', 'actions', 'Actions', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(196, 0, 'en', 'core/acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(197, 0, 'en', 'core/acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(198, 0, 'en', 'core/acl/permissions', 'delete_global_role', 'Can not delete global role', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(199, 0, 'en', 'core/acl/permissions', 'delete_success', 'Delete role successfully', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(200, 0, 'en', 'core/acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(201, 0, 'en', 'core/acl/permissions', 'not_found', 'No role found!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(202, 0, 'en', 'core/acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(203, 0, 'en', 'core/acl/permissions', 'modified_success', 'Modified successfully', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(204, 0, 'en', 'core/acl/permissions', 'create_success', 'Create successfully', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(205, 0, 'en', 'core/acl/permissions', 'duplicated_success', 'Duplicated successfully', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(206, 0, 'en', 'core/acl/permissions', 'options', 'Options', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(207, 0, 'en', 'core/acl/permissions', 'access_denied_message', 'You are not allowed to do this action', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(208, 0, 'en', 'core/acl/permissions', 'roles', 'Roles', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(209, 0, 'en', 'core/acl/permissions', 'role_permission', 'Roles and Permissions', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(210, 0, 'en', 'core/acl/permissions', 'user_management', 'User Management', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(211, 0, 'en', 'core/acl/permissions', 'super_user_management', 'Super User Management', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(212, 0, 'en', 'core/acl/permissions', 'action_unauthorized', 'This action is unauthorized.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(213, 0, 'en', 'core/acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(214, 0, 'en', 'core/acl/reminders', 'user', 'We can\'t find a user with that e-mail address.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(215, 0, 'en', 'core/acl/reminders', 'token', 'This password reset token is invalid.', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(216, 0, 'en', 'core/acl/reminders', 'sent', 'Password reminder sent!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(217, 0, 'en', 'core/acl/reminders', 'reset', 'Password has been reset!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(218, 0, 'en', 'core/acl/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(219, 0, 'en', 'core/acl/users', 'no_select', 'Please select at least one record to take this action!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(220, 0, 'en', 'core/acl/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(221, 0, 'en', 'core/acl/users', 'update_success', 'Update status successfully!', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(222, 0, 'en', 'core/acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(223, 0, 'en', 'core/acl/users', 'not_found', 'User not found', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(224, 0, 'en', 'core/acl/users', 'email_exist', 'That email address already belongs to an existing account', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(225, 0, 'en', 'core/acl/users', 'username_exist', 'That username address already belongs to an existing account', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(226, 0, 'en', 'core/acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(227, 0, 'en', 'core/acl/users', 'password_update_success', 'Password successfully changed', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(228, 0, 'en', 'core/acl/users', 'current_password_not_valid', 'Current password is not valid', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(229, 0, 'en', 'core/acl/users', 'user_exist_in', 'User is already a member', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(230, 0, 'en', 'core/acl/users', 'email', 'Email', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(231, 0, 'en', 'core/acl/users', 'role', 'Role', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(232, 0, 'en', 'core/acl/users', 'username', 'Username', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(233, 0, 'en', 'core/acl/users', 'last_name', 'Last Name', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(234, 0, 'en', 'core/acl/users', 'first_name', 'First Name', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(235, 0, 'en', 'core/acl/users', 'message', 'Message', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(236, 0, 'en', 'core/acl/users', 'cancel_btn', 'Cancel', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(237, 0, 'en', 'core/acl/users', 'change_password', 'Change password', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(238, 0, 'en', 'core/acl/users', 'current_password', 'Current password', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(239, 0, 'en', 'core/acl/users', 'new_password', 'New Password', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(240, 0, 'en', 'core/acl/users', 'confirm_new_password', 'Confirm New Password', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(241, 0, 'en', 'core/acl/users', 'password', 'Password', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(242, 0, 'en', 'core/acl/users', 'save', 'Save', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(243, 0, 'en', 'core/acl/users', 'cannot_delete', 'User could not be deleted', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(244, 0, 'en', 'core/acl/users', 'deleted', 'User deleted', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(245, 0, 'en', 'core/acl/users', 'last_login', 'Last Login', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(246, 0, 'en', 'core/acl/users', 'error_update_profile_image', 'Error when update profile image', '2021-07-26 04:16:42', '2021-07-26 04:17:14'),
(247, 0, 'en', 'core/acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(248, 0, 'en', 'core/acl/users', 'change_profile_image', 'Change Profile Image', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(249, 0, 'en', 'core/acl/users', 'new_image', 'New Image', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(250, 0, 'en', 'core/acl/users', 'loading', 'Loading', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(251, 0, 'en', 'core/acl/users', 'close', 'Close', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(252, 0, 'en', 'core/acl/users', 'update', 'Update', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(253, 0, 'en', 'core/acl/users', 'read_image_failed', 'Failed to read the image file', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(254, 0, 'en', 'core/acl/users', 'users', 'Users', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(255, 0, 'en', 'core/acl/users', 'update_avatar_success', 'Update profile image successfully!', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(256, 0, 'en', 'core/acl/users', 'info.title', 'User profile', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(257, 0, 'en', 'core/acl/users', 'info.first_name', 'First Name', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(258, 0, 'en', 'core/acl/users', 'info.last_name', 'Last Name', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(259, 0, 'en', 'core/acl/users', 'info.email', 'Email', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(260, 0, 'en', 'core/acl/users', 'info.second_email', 'Secondary Email', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(261, 0, 'en', 'core/acl/users', 'info.address', 'Address', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(262, 0, 'en', 'core/acl/users', 'info.second_address', 'Secondary Address', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(263, 0, 'en', 'core/acl/users', 'info.birth_day', 'Date of birth', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(264, 0, 'en', 'core/acl/users', 'info.job', 'Job Position', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(265, 0, 'en', 'core/acl/users', 'info.mobile_number', 'Mobile Number', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(266, 0, 'en', 'core/acl/users', 'info.second_mobile_number', 'Secondary Phone', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(267, 0, 'en', 'core/acl/users', 'info.interes', 'Interests', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(268, 0, 'en', 'core/acl/users', 'info.about', 'About', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(269, 0, 'en', 'core/acl/users', 'gender.title', 'Gender', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(270, 0, 'en', 'core/acl/users', 'gender.male', 'Male', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(271, 0, 'en', 'core/acl/users', 'gender.female', 'Female', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(272, 0, 'en', 'core/acl/users', 'total_users', 'Total users', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(273, 0, 'en', 'core/acl/users', 'statuses.activated', 'Activated', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(274, 0, 'en', 'core/acl/users', 'statuses.deactivated', 'Deactivated', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(275, 0, 'en', 'core/acl/users', 'make_super', 'Make super', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(276, 0, 'en', 'core/acl/users', 'remove_super', 'Remove super', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(277, 0, 'en', 'core/acl/users', 'is_super', 'Is super?', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(278, 0, 'en', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(279, 0, 'en', 'core/acl/users', 'password_confirmation', 'Re-type password', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(280, 0, 'en', 'core/acl/users', 'select_role', 'Select role', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(281, 0, 'en', 'core/acl/users', 'create_new_user', 'Create a new user', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(282, 0, 'en', 'core/acl/users', 'cannot_delete_super_user', 'Permission denied. Cannot delete a super user!', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(283, 0, 'en', 'core/acl/users', 'assigned_role', 'Assigned Role', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(284, 0, 'en', 'core/acl/users', 'no_role_assigned', 'No role assigned', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(285, 0, 'en', 'core/acl/users', 'view_user_profile', 'View user\'s profile', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(428, 0, 'en', 'core/base/base', 'yes', 'Yes', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(429, 0, 'en', 'core/base/base', 'no', 'No', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(430, 0, 'en', 'core/base/base', 'is_default', 'Is default?', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(431, 0, 'en', 'core/base/base', 'proc_close_disabled_error', 'Function proc_close() is disabled. Please contact your hosting provider to enable\n    it. Or you can add to .env: CAN_EXECUTE_COMMAND=false to disable this feature.', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(432, 0, 'en', 'core/base/base', 'email_template.header', 'Email template header', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(433, 0, 'en', 'core/base/base', 'email_template.footer', 'Email template footer', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(434, 0, 'en', 'core/base/base', 'email_template.site_title', 'Site title', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(435, 0, 'en', 'core/base/base', 'email_template.site_url', 'Site URL', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(436, 0, 'en', 'core/base/base', 'email_template.site_logo', 'Site Logo', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(437, 0, 'en', 'core/base/base', 'email_template.date_time', 'Current date time', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(438, 0, 'en', 'core/base/base', 'email_template.date_year', 'Current year', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(439, 0, 'en', 'core/base/base', 'email_template.site_admin_email', 'Site admin email', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(440, 0, 'en', 'core/base/base', 'change_image', 'Change image', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(441, 0, 'en', 'core/base/base', 'delete_image', 'Delete image', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(442, 0, 'en', 'core/base/base', 'preview_image', 'Preview image', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(443, 0, 'en', 'core/base/base', 'image', 'Image', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(444, 0, 'en', 'core/base/base', 'using_button', 'Using button', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(445, 0, 'en', 'core/base/base', 'select_image', 'Select image', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(446, 0, 'en', 'core/base/base', 'to_add_more_image', 'to add more images', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(447, 0, 'en', 'core/base/base', 'add_image', 'Add image', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(448, 0, 'en', 'core/base/cache', 'cache_management', 'Cache management', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(449, 0, 'en', 'core/base/cache', 'cache_commands', 'Clear cache commands', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(450, 0, 'en', 'core/base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(451, 0, 'en', 'core/base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don\'t see the changes after updating data.', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(452, 0, 'en', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(453, 0, 'en', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(454, 0, 'en', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(455, 0, 'en', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(456, 0, 'en', 'core/base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(457, 0, 'en', 'core/base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(458, 0, 'en', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(459, 0, 'en', 'core/base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(460, 0, 'en', 'core/base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(461, 0, 'en', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(462, 0, 'en', 'core/base/cache', 'commands.clear_log.title', 'Clear log', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(463, 0, 'en', 'core/base/cache', 'commands.clear_log.description', 'Clear system log files', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(464, 0, 'en', 'core/base/cache', 'commands.clear_log.success_msg', 'The system log has been cleaned', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(465, 0, 'en', 'core/base/enums', 'statuses.draft', 'Draft', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(466, 0, 'en', 'core/base/enums', 'statuses.pending', 'Pending', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(467, 0, 'en', 'core/base/enums', 'statuses.published', 'Published', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(468, 0, 'en', 'core/base/errors', '401_title', 'Permission Denied', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(469, 0, 'en', 'core/base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(470, 0, 'en', 'core/base/errors', '404_title', 'Page could not be found', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(471, 0, 'en', 'core/base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(472, 0, 'en', 'core/base/errors', '500_title', 'Page could not be loaded', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(473, 0, 'en', 'core/base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(474, 0, 'en', 'core/base/errors', 'reasons', 'This may have occurred because of several reasons', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(475, 0, 'en', 'core/base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the homepage by <a href=\"http://shopwise.local/admin\">clicking here</a>.', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(476, 0, 'en', 'core/base/errors', 'not_found', 'Not Found', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(477, 0, 'en', 'core/base/forms', 'choose_image', 'Choose image', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(478, 0, 'en', 'core/base/forms', 'actions', 'Actions', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(479, 0, 'en', 'core/base/forms', 'save', 'Save', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(480, 0, 'en', 'core/base/forms', 'save_and_continue', 'Save & Edit', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(481, 0, 'en', 'core/base/forms', 'image', 'Image', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(482, 0, 'en', 'core/base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(483, 0, 'en', 'core/base/forms', 'create', 'Create', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(484, 0, 'en', 'core/base/forms', 'edit', 'Edit', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(485, 0, 'en', 'core/base/forms', 'permalink', 'Permalink', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(486, 0, 'en', 'core/base/forms', 'ok', 'OK', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(487, 0, 'en', 'core/base/forms', 'cancel', 'Cancel', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(488, 0, 'en', 'core/base/forms', 'character_remain', 'character(s) remain', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(489, 0, 'en', 'core/base/forms', 'template', 'Template', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(490, 0, 'en', 'core/base/forms', 'choose_file', 'Choose file', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(491, 0, 'en', 'core/base/forms', 'file', 'File', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(492, 0, 'en', 'core/base/forms', 'content', 'Content', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(493, 0, 'en', 'core/base/forms', 'description', 'Description', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(494, 0, 'en', 'core/base/forms', 'name', 'Name', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(495, 0, 'en', 'core/base/forms', 'slug', 'Slug', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(496, 0, 'en', 'core/base/forms', 'title', 'Title', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(497, 0, 'en', 'core/base/forms', 'value', 'Value', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(498, 0, 'en', 'core/base/forms', 'name_placeholder', 'Name', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(499, 0, 'en', 'core/base/forms', 'alias_placeholder', 'Alias', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(500, 0, 'en', 'core/base/forms', 'description_placeholder', 'Short description', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(501, 0, 'en', 'core/base/forms', 'parent', 'Parent', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(502, 0, 'en', 'core/base/forms', 'icon', 'Icon', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(503, 0, 'en', 'core/base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(504, 0, 'en', 'core/base/forms', 'order_by', 'Order by', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(505, 0, 'en', 'core/base/forms', 'order_by_placeholder', 'Order by', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(506, 0, 'en', 'core/base/forms', 'is_featured', 'Is featured?', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(507, 0, 'en', 'core/base/forms', 'is_default', 'Is default?', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(508, 0, 'en', 'core/base/forms', 'update', 'Update', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(509, 0, 'en', 'core/base/forms', 'publish', 'Publish', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(510, 0, 'en', 'core/base/forms', 'remove_image', 'Remove image', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(511, 0, 'en', 'core/base/forms', 'remove_file', 'Remove file', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(512, 0, 'en', 'core/base/forms', 'order', 'Order', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(513, 0, 'en', 'core/base/forms', 'alias', 'Alias', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(514, 0, 'en', 'core/base/forms', 'basic_information', 'Basic information', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(515, 0, 'en', 'core/base/forms', 'short_code', 'Shortcode', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(516, 0, 'en', 'core/base/forms', 'add_short_code', 'Add a shortcode', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(517, 0, 'en', 'core/base/forms', 'add', 'Add', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(518, 0, 'en', 'core/base/forms', 'link', 'Link', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(519, 0, 'en', 'core/base/forms', 'show_hide_editor', 'Show/Hide Editor', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(520, 0, 'en', 'core/base/forms', 'basic_info_title', 'Basic information', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(521, 0, 'en', 'core/base/forms', 'expand_all', 'Expand all', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(522, 0, 'en', 'core/base/forms', 'collapse_all', 'Collapse all', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(523, 0, 'en', 'core/base/forms', 'view_new_tab', 'Open in new tab', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(524, 0, 'en', 'core/base/layouts', 'platform_admin', 'Platform Administration', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(525, 0, 'en', 'core/base/layouts', 'dashboard', 'Dashboard', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(526, 0, 'en', 'core/base/layouts', 'widgets', 'Widgets', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(527, 0, 'en', 'core/base/layouts', 'plugins', 'Plugins', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(528, 0, 'en', 'core/base/layouts', 'settings', 'Settings', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(529, 0, 'en', 'core/base/layouts', 'setting_general', 'General', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(530, 0, 'en', 'core/base/layouts', 'setting_email', 'Email', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(531, 0, 'en', 'core/base/layouts', 'system_information', 'System information', '2021-07-26 04:16:43', '2021-07-26 04:17:14');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(532, 0, 'en', 'core/base/layouts', 'theme', 'Theme', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(533, 0, 'en', 'core/base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(534, 0, 'en', 'core/base/layouts', 'profile', 'Profile', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(535, 0, 'en', 'core/base/layouts', 'logout', 'Logout', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(536, 0, 'en', 'core/base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(537, 0, 'en', 'core/base/layouts', 'home', 'Home', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(538, 0, 'en', 'core/base/layouts', 'search', 'Search', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(539, 0, 'en', 'core/base/layouts', 'add_new', 'Add new', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(540, 0, 'en', 'core/base/layouts', 'n_a', 'N/A', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(541, 0, 'en', 'core/base/layouts', 'page_loaded_time', 'Page loaded in', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(542, 0, 'en', 'core/base/layouts', 'view_website', 'View website', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(543, 0, 'en', 'core/base/mail', 'send-fail', 'Send email failed', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(544, 0, 'en', 'core/base/notices', 'create_success_message', 'Created successfully', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(545, 0, 'en', 'core/base/notices', 'update_success_message', 'Updated successfully', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(546, 0, 'en', 'core/base/notices', 'delete_success_message', 'Deleted successfully', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(547, 0, 'en', 'core/base/notices', 'success_header', 'Success!', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(548, 0, 'en', 'core/base/notices', 'error_header', 'Error!', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(549, 0, 'en', 'core/base/notices', 'no_select', 'Please select at least one record to perform this action!', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(550, 0, 'en', 'core/base/notices', 'processing_request', 'We are processing your request.', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(551, 0, 'en', 'core/base/notices', 'error', 'Error!', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(552, 0, 'en', 'core/base/notices', 'success', 'Success!', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(553, 0, 'en', 'core/base/notices', 'info', 'Info!', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(554, 0, 'en', 'core/base/notices', 'enum.validate_message', 'The :attribute value you have entered is invalid.', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(555, 0, 'en', 'core/base/system', 'no_select', 'Please select at least one record to take this action!', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(556, 0, 'en', 'core/base/system', 'cannot_find_user', 'Unable to find specified user', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(557, 0, 'en', 'core/base/system', 'supper_revoked', 'Super user access revoked', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(558, 0, 'en', 'core/base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(559, 0, 'en', 'core/base/system', 'cant_remove_supper', 'You don\'t has permission to remove this super user', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(560, 0, 'en', 'core/base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(561, 0, 'en', 'core/base/system', 'supper_granted', 'Super user access granted', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(562, 0, 'en', 'core/base/system', 'delete_log_success', 'Delete log file successfully!', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(563, 0, 'en', 'core/base/system', 'get_member_success', 'Member list retrieved successfully', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(564, 0, 'en', 'core/base/system', 'error_occur', 'The following errors occurred', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(565, 0, 'en', 'core/base/system', 'user_management', 'User Management', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(566, 0, 'en', 'core/base/system', 'user_management_description', 'Manage users.', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(567, 0, 'en', 'core/base/system', 'role_and_permission', 'Roles and Permissions', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(568, 0, 'en', 'core/base/system', 'role_and_permission_description', 'Manage the available roles.', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(569, 0, 'en', 'core/base/system', 'user.list_super', 'List Super Users', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(570, 0, 'en', 'core/base/system', 'user.email', 'Email', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(571, 0, 'en', 'core/base/system', 'user.last_login', 'Last Login', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(572, 0, 'en', 'core/base/system', 'user.username', 'Username', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(573, 0, 'en', 'core/base/system', 'user.add_user', 'Add Super User', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(574, 0, 'en', 'core/base/system', 'user.cancel', 'Cancel', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(575, 0, 'en', 'core/base/system', 'user.create', 'Create', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(576, 0, 'en', 'core/base/system', 'options.features', 'Feature Access Control', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(577, 0, 'en', 'core/base/system', 'options.feature_description', 'Manage the available.', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(578, 0, 'en', 'core/base/system', 'options.manage_super', 'Super User Management', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(579, 0, 'en', 'core/base/system', 'options.manage_super_description', 'Add/remove super users.', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(580, 0, 'en', 'core/base/system', 'options.info', 'System information', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(581, 0, 'en', 'core/base/system', 'options.info_description', 'All information about current system configuration.', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(582, 0, 'en', 'core/base/system', 'info.title', 'System information', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(583, 0, 'en', 'core/base/system', 'info.cache', 'Cache', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(584, 0, 'en', 'core/base/system', 'info.locale', 'Active locale', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(585, 0, 'en', 'core/base/system', 'info.environment', 'Environment', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(586, 0, 'en', 'core/base/system', 'disabled_in_demo_mode', 'You cannot do it in demo mode!', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(587, 0, 'en', 'core/base/system', 'report_description', 'Please share this information for troubleshooting', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(588, 0, 'en', 'core/base/system', 'get_system_report', 'Get System Report', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(589, 0, 'en', 'core/base/system', 'system_environment', 'System Environment', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(590, 0, 'en', 'core/base/system', 'framework_version', 'Framework Version', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(591, 0, 'en', 'core/base/system', 'timezone', 'Timezone', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(592, 0, 'en', 'core/base/system', 'debug_mode', 'Debug Mode', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(593, 0, 'en', 'core/base/system', 'storage_dir_writable', 'Storage Dir Writable', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(594, 0, 'en', 'core/base/system', 'cache_dir_writable', 'Cache Dir Writable', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(595, 0, 'en', 'core/base/system', 'app_size', 'App Size', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(596, 0, 'en', 'core/base/system', 'server_environment', 'Server Environment', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(597, 0, 'en', 'core/base/system', 'php_version', 'PHP Version', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(598, 0, 'en', 'core/base/system', 'php_version_error', 'PHP must be >= :version', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(599, 0, 'en', 'core/base/system', 'server_software', 'Server Software', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(600, 0, 'en', 'core/base/system', 'server_os', 'Server OS', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(601, 0, 'en', 'core/base/system', 'database', 'Database', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(602, 0, 'en', 'core/base/system', 'ssl_installed', 'SSL Installed', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(603, 0, 'en', 'core/base/system', 'cache_driver', 'Cache Driver', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(604, 0, 'en', 'core/base/system', 'session_driver', 'Session Driver', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(605, 0, 'en', 'core/base/system', 'queue_connection', 'Queue Connection', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(606, 0, 'en', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(607, 0, 'en', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(608, 0, 'en', 'core/base/system', 'pdo_ext', 'PDO Ext', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(609, 0, 'en', 'core/base/system', 'curl_ext', 'CURL Ext', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(610, 0, 'en', 'core/base/system', 'exif_ext', 'Exif Ext', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(611, 0, 'en', 'core/base/system', 'file_info_ext', 'File info Ext', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(612, 0, 'en', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(613, 0, 'en', 'core/base/system', 'extra_stats', 'Extra Stats', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(614, 0, 'en', 'core/base/system', 'installed_packages', 'Installed packages and their version numbers', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(615, 0, 'en', 'core/base/system', 'extra_information', 'Extra Information', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(616, 0, 'en', 'core/base/system', 'copy_report', 'Copy Report', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(617, 0, 'en', 'core/base/system', 'package_name', 'Package Name', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(618, 0, 'en', 'core/base/system', 'dependency_name', 'Dependency Name', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(619, 0, 'en', 'core/base/system', 'version', 'Version', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(620, 0, 'en', 'core/base/system', 'cms_version', 'CMS Version', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(621, 0, 'en', 'core/base/system', 'imagick_or_gd_ext', 'Imagick/GD Ext', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(622, 0, 'en', 'core/base/tables', 'id', 'ID', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(623, 0, 'en', 'core/base/tables', 'name', 'Name', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(624, 0, 'en', 'core/base/tables', 'slug', 'Slug', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(625, 0, 'en', 'core/base/tables', 'title', 'Title', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(626, 0, 'en', 'core/base/tables', 'order_by', 'Order By', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(627, 0, 'en', 'core/base/tables', 'order', 'Order', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(628, 0, 'en', 'core/base/tables', 'status', 'Status', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(629, 0, 'en', 'core/base/tables', 'created_at', 'Created At', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(630, 0, 'en', 'core/base/tables', 'updated_at', 'Updated At', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(631, 0, 'en', 'core/base/tables', 'description', 'Description', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(632, 0, 'en', 'core/base/tables', 'operations', 'Operations', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(633, 0, 'en', 'core/base/tables', 'url', 'URL', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(634, 0, 'en', 'core/base/tables', 'author', 'Author', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(635, 0, 'en', 'core/base/tables', 'notes', 'Notes', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(636, 0, 'en', 'core/base/tables', 'column', 'Column', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(637, 0, 'en', 'core/base/tables', 'origin', 'Origin', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(638, 0, 'en', 'core/base/tables', 'after_change', 'After changes', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(639, 0, 'en', 'core/base/tables', 'views', 'Views', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(640, 0, 'en', 'core/base/tables', 'browser', 'Browser', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(641, 0, 'en', 'core/base/tables', 'session', 'Session', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(642, 0, 'en', 'core/base/tables', 'activated', 'activated', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(643, 0, 'en', 'core/base/tables', 'deactivated', 'deactivated', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(644, 0, 'en', 'core/base/tables', 'is_featured', 'Is featured', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(645, 0, 'en', 'core/base/tables', 'edit', 'Edit', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(646, 0, 'en', 'core/base/tables', 'delete', 'Delete', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(647, 0, 'en', 'core/base/tables', 'restore', 'Restore', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(648, 0, 'en', 'core/base/tables', 'activate', 'Activate', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(649, 0, 'en', 'core/base/tables', 'deactivate', 'Deactivate', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(650, 0, 'en', 'core/base/tables', 'excel', 'Excel', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(651, 0, 'en', 'core/base/tables', 'export', 'Export', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(652, 0, 'en', 'core/base/tables', 'csv', 'CSV', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(653, 0, 'en', 'core/base/tables', 'pdf', 'PDF', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(654, 0, 'en', 'core/base/tables', 'print', 'Print', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(655, 0, 'en', 'core/base/tables', 'reset', 'Reset', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(656, 0, 'en', 'core/base/tables', 'reload', 'Reload', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(657, 0, 'en', 'core/base/tables', 'display', 'Display', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(658, 0, 'en', 'core/base/tables', 'all', 'All', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(659, 0, 'en', 'core/base/tables', 'add_new', 'Add New', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(660, 0, 'en', 'core/base/tables', 'action', 'Actions', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(661, 0, 'en', 'core/base/tables', 'delete_entry', 'Delete', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(662, 0, 'en', 'core/base/tables', 'view', 'View Detail', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(663, 0, 'en', 'core/base/tables', 'save', 'Save', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(664, 0, 'en', 'core/base/tables', 'show_from', 'Show from', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(665, 0, 'en', 'core/base/tables', 'to', 'to', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(666, 0, 'en', 'core/base/tables', 'in', 'in', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(667, 0, 'en', 'core/base/tables', 'records', 'records', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(668, 0, 'en', 'core/base/tables', 'no_data', 'No data to display', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(669, 0, 'en', 'core/base/tables', 'no_record', 'No record', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(670, 0, 'en', 'core/base/tables', 'confirm_delete', 'Confirm delete', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(671, 0, 'en', 'core/base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(672, 0, 'en', 'core/base/tables', 'confirm_delete_many_msg', 'Do you really want to delete selected record(s)?', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(673, 0, 'en', 'core/base/tables', 'cancel', 'Cancel', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(674, 0, 'en', 'core/base/tables', 'template', 'Template', '2021-07-26 04:16:43', '2021-07-26 04:17:14'),
(675, 0, 'en', 'core/base/tables', 'email', 'Email', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(676, 0, 'en', 'core/base/tables', 'last_login', 'Last login', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(677, 0, 'en', 'core/base/tables', 'shortcode', 'Shortcode', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(678, 0, 'en', 'core/base/tables', 'image', 'Image', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(679, 0, 'en', 'core/base/tables', 'bulk_changes', 'Bulk changes', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(680, 0, 'en', 'core/base/tables', 'submit', 'Submit', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(681, 0, 'en', 'core/base/tables', 'please_select_record', 'Please select at least one record to perform this action!', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(682, 0, 'en', 'core/base/tabs', 'detail', 'Detail', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(683, 0, 'en', 'core/base/tabs', 'file', 'Files', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(684, 0, 'en', 'core/base/tabs', 'record_note', 'Record Note', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(685, 0, 'en', 'core/base/tabs', 'revision', 'Revision History', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(909, 0, 'en', 'core/dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(910, 0, 'en', 'core/dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(911, 0, 'en', 'core/dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(912, 0, 'en', 'core/dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(913, 0, 'en', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(914, 0, 'en', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(915, 0, 'en', 'core/dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(916, 0, 'en', 'core/dashboard/dashboard', 'hide', 'Hide', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(917, 0, 'en', 'core/dashboard/dashboard', 'reload', 'Reload', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(918, 0, 'en', 'core/dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(919, 0, 'en', 'core/dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(920, 0, 'en', 'core/dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(921, 0, 'en', 'core/dashboard/dashboard', 'fullscreen', 'Full screen', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(922, 0, 'en', 'core/dashboard/dashboard', 'title', 'Dashboard', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(937, 0, 'en', 'core/media/media', 'filter', 'Filter', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(938, 0, 'en', 'core/media/media', 'everything', 'Everything', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(939, 0, 'en', 'core/media/media', 'image', 'Image', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(940, 0, 'en', 'core/media/media', 'video', 'Video', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(941, 0, 'en', 'core/media/media', 'document', 'Document', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(942, 0, 'en', 'core/media/media', 'view_in', 'View in', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(943, 0, 'en', 'core/media/media', 'all_media', 'All media', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(944, 0, 'en', 'core/media/media', 'trash', 'Trash', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(945, 0, 'en', 'core/media/media', 'recent', 'Recent', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(946, 0, 'en', 'core/media/media', 'favorites', 'Favorites', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(947, 0, 'en', 'core/media/media', 'upload', 'Upload', '2021-07-26 04:16:44', '2021-07-26 04:17:14'),
(948, 0, 'en', 'core/media/media', 'create_folder', 'Create folder', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(949, 0, 'en', 'core/media/media', 'refresh', 'Refresh', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(950, 0, 'en', 'core/media/media', 'empty_trash', 'Empty trash', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(951, 0, 'en', 'core/media/media', 'search_file_and_folder', 'Search file and folder', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(952, 0, 'en', 'core/media/media', 'sort', 'Sort', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(953, 0, 'en', 'core/media/media', 'file_name_asc', 'File name - ASC', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(954, 0, 'en', 'core/media/media', 'file_name_desc', 'File name - DESC', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(955, 0, 'en', 'core/media/media', 'uploaded_date_asc', 'Uploaded date - ASC', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(956, 0, 'en', 'core/media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(957, 0, 'en', 'core/media/media', 'size_asc', 'Size - ASC', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(958, 0, 'en', 'core/media/media', 'size_desc', 'Size - DESC', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(959, 0, 'en', 'core/media/media', 'actions', 'Actions', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(960, 0, 'en', 'core/media/media', 'nothing_is_selected', 'Nothing is selected', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(961, 0, 'en', 'core/media/media', 'insert', 'Insert', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(962, 0, 'en', 'core/media/media', 'folder_name', 'Folder name', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(963, 0, 'en', 'core/media/media', 'create', 'Create', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(964, 0, 'en', 'core/media/media', 'rename', 'Rename', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(965, 0, 'en', 'core/media/media', 'close', 'Close', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(966, 0, 'en', 'core/media/media', 'save_changes', 'Save changes', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(967, 0, 'en', 'core/media/media', 'move_to_trash', 'Move items to trash', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(968, 0, 'en', 'core/media/media', 'confirm_trash', 'Are you sure you want to move these items to trash?', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(969, 0, 'en', 'core/media/media', 'confirm', 'Confirm', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(970, 0, 'en', 'core/media/media', 'confirm_delete', 'Delete item(s)', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(971, 0, 'en', 'core/media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(972, 0, 'en', 'core/media/media', 'empty_trash_title', 'Empty trash', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(973, 0, 'en', 'core/media/media', 'empty_trash_description', 'Your request cannot rollback. Are you sure you wanna remove all items in trash?', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(974, 0, 'en', 'core/media/media', 'up_level', 'Up one level', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(975, 0, 'en', 'core/media/media', 'upload_progress', 'Upload progress', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(976, 0, 'en', 'core/media/media', 'folder_created', 'Folder is created successfully!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(977, 0, 'en', 'core/media/media', 'gallery', 'Media gallery', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(978, 0, 'en', 'core/media/media', 'trash_error', 'Error when delete selected item(s)', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(979, 0, 'en', 'core/media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(980, 0, 'en', 'core/media/media', 'restore_error', 'Error when restore selected item(s)', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(981, 0, 'en', 'core/media/media', 'restore_success', 'Restore selected item(s) successfully!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(982, 0, 'en', 'core/media/media', 'copy_success', 'Copied selected item(s) successfully!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(983, 0, 'en', 'core/media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(984, 0, 'en', 'core/media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(985, 0, 'en', 'core/media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(986, 0, 'en', 'core/media/media', 'rename_error', 'Error when rename item(s)', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(987, 0, 'en', 'core/media/media', 'rename_success', 'Rename selected item(s) successfully!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(988, 0, 'en', 'core/media/media', 'empty_trash_success', 'Empty trash successfully!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(989, 0, 'en', 'core/media/media', 'invalid_action', 'Invalid action!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(990, 0, 'en', 'core/media/media', 'file_not_exists', 'File is not exists!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(991, 0, 'en', 'core/media/media', 'download_file_error', 'Error when downloading files!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(992, 0, 'en', 'core/media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(993, 0, 'en', 'core/media/media', 'can_not_download_file', 'Can not download this file!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(994, 0, 'en', 'core/media/media', 'invalid_request', 'Invalid request!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(995, 0, 'en', 'core/media/media', 'add_success', 'Add item successfully!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(996, 0, 'en', 'core/media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(997, 0, 'en', 'core/media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(998, 0, 'en', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(999, 0, 'en', 'core/media/media', 'menu_name', 'Media', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1000, 0, 'en', 'core/media/media', 'add', 'Add media', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1001, 0, 'en', 'core/media/media', 'javascript.name', 'Name', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1002, 0, 'en', 'core/media/media', 'javascript.url', 'URL', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1003, 0, 'en', 'core/media/media', 'javascript.full_url', 'Full URL', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1004, 0, 'en', 'core/media/media', 'javascript.size', 'Size', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1005, 0, 'en', 'core/media/media', 'javascript.mime_type', 'Type', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1006, 0, 'en', 'core/media/media', 'javascript.created_at', 'Uploaded at', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1007, 0, 'en', 'core/media/media', 'javascript.updated_at', 'Modified at', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1008, 0, 'en', 'core/media/media', 'javascript.nothing_selected', 'Nothing is selected', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1009, 0, 'en', 'core/media/media', 'javascript.visit_link', 'Open link', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1010, 0, 'en', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1011, 0, 'en', 'core/media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1012, 0, 'en', 'core/media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1013, 0, 'en', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1014, 0, 'en', 'core/media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1015, 0, 'en', 'core/media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1016, 0, 'en', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1017, 0, 'en', 'core/media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1018, 0, 'en', 'core/media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1019, 0, 'en', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1020, 0, 'en', 'core/media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1021, 0, 'en', 'core/media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1022, 0, 'en', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1023, 0, 'en', 'core/media/media', 'javascript.no_item.default.title', 'No items', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1024, 0, 'en', 'core/media/media', 'javascript.no_item.default.message', 'This directory has no item', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1025, 0, 'en', 'core/media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1026, 0, 'en', 'core/media/media', 'javascript.message.error_header', 'Error', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1027, 0, 'en', 'core/media/media', 'javascript.message.success_header', 'Success', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1028, 0, 'en', 'core/media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1029, 0, 'en', 'core/media/media', 'javascript.actions_list.basic.preview', 'Preview', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1030, 0, 'en', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1031, 0, 'en', 'core/media/media', 'javascript.actions_list.file.rename', 'Rename', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1032, 0, 'en', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1033, 0, 'en', 'core/media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1034, 0, 'en', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1035, 0, 'en', 'core/media/media', 'javascript.actions_list.other.download', 'Download', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1036, 0, 'en', 'core/media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1037, 0, 'en', 'core/media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1038, 0, 'en', 'core/media/media', 'javascript.actions_list.other.restore', 'Restore', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1039, 0, 'en', 'core/media/media', 'name_invalid', 'The folder name has invalid character(s).', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1040, 0, 'en', 'core/media/media', 'url_invalid', 'Please provide a valid URL', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1041, 0, 'en', 'core/media/media', 'path_invalid', 'Please provide a valid path', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1042, 0, 'en', 'core/media/media', 'download_link', 'Download', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1043, 0, 'en', 'core/media/media', 'url', 'URL', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1044, 0, 'en', 'core/media/media', 'download_explain', 'Enter one URL per line.', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1045, 0, 'en', 'core/media/media', 'downloading', 'Downloading...', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1149, 0, 'en', 'core/setting/setting', 'title', 'Settings', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1150, 0, 'en', 'core/setting/setting', 'email_setting_title', 'Email settings', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1151, 0, 'en', 'core/setting/setting', 'general.theme', 'Theme', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1152, 0, 'en', 'core/setting/setting', 'general.description', 'Setting site information', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1153, 0, 'en', 'core/setting/setting', 'general.title', 'General', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1154, 0, 'en', 'core/setting/setting', 'general.general_block', 'General Information', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1155, 0, 'en', 'core/setting/setting', 'general.rich_editor', 'Rich Editor', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1156, 0, 'en', 'core/setting/setting', 'general.site_title', 'Site title', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1157, 0, 'en', 'core/setting/setting', 'general.admin_email', 'Admin Email', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1158, 0, 'en', 'core/setting/setting', 'general.seo_block', 'SEO Configuration', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1159, 0, 'en', 'core/setting/setting', 'general.seo_title', 'SEO Title', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1160, 0, 'en', 'core/setting/setting', 'general.seo_description', 'SEO Description', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1161, 0, 'en', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1162, 0, 'en', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1163, 0, 'en', 'core/setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1164, 0, 'en', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1165, 0, 'en', 'core/setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1166, 0, 'en', 'core/setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1167, 0, 'en', 'core/setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1168, 0, 'en', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1169, 0, 'en', 'core/setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1170, 0, 'en', 'core/setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1171, 0, 'en', 'core/setting/setting', 'general.time_zone', 'Timezone', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1172, 0, 'en', 'core/setting/setting', 'general.default_admin_theme', 'Default admin theme', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1173, 0, 'en', 'core/setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1174, 0, 'en', 'core/setting/setting', 'general.enable', 'Enable', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1175, 0, 'en', 'core/setting/setting', 'general.disable', 'Disable', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1176, 0, 'en', 'core/setting/setting', 'general.enable_cache', 'Enable cache?', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1177, 0, 'en', 'core/setting/setting', 'general.cache_time', 'Cache time (minutes)', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1178, 0, 'en', 'core/setting/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1179, 0, 'en', 'core/setting/setting', 'general.admin_logo', 'Admin logo', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1180, 0, 'en', 'core/setting/setting', 'general.admin_favicon', 'Admin favicon', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1181, 0, 'en', 'core/setting/setting', 'general.admin_title', 'Admin title', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1182, 0, 'en', 'core/setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1183, 0, 'en', 'core/setting/setting', 'general.cache_block', 'Cache', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1184, 0, 'en', 'core/setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1185, 0, 'en', 'core/setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, language...', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1186, 0, 'en', 'core/setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1187, 0, 'en', 'core/setting/setting', 'general.webmaster_tools_description', 'Google Webmaster Tools (GWT) is free software that helps you manage the technical side of your website', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1188, 0, 'en', 'core/setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1189, 0, 'en', 'core/setting/setting', 'general.yes', 'Yes', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1190, 0, 'en', 'core/setting/setting', 'general.no', 'No', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1191, 0, 'en', 'core/setting/setting', 'general.show_on_front', 'Your homepage displays', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1192, 0, 'en', 'core/setting/setting', 'general.select', '— Select —', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1193, 0, 'en', 'core/setting/setting', 'general.show_site_name', 'Show site name after page title, separate with \"-\"?', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1194, 0, 'en', 'core/setting/setting', 'general.locale', 'Site language', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1195, 0, 'en', 'core/setting/setting', 'general.locale_direction', 'Front site language direction', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1196, 0, 'en', 'core/setting/setting', 'general.admin_locale_direction', 'Admin language direction', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1197, 0, 'en', 'core/setting/setting', 'general.admin_login_screen_backgrounds', 'Login screen backgrounds (~1366x768)', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1198, 0, 'en', 'core/setting/setting', 'email.subject', 'Subject', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1199, 0, 'en', 'core/setting/setting', 'email.content', 'Content', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1200, 0, 'en', 'core/setting/setting', 'email.title', 'Setting for email template', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1201, 0, 'en', 'core/setting/setting', 'email.description', 'Email template using HTML & system variables.', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1202, 0, 'en', 'core/setting/setting', 'email.reset_to_default', 'Reset to default', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1203, 0, 'en', 'core/setting/setting', 'email.back', 'Back to settings', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1204, 0, 'en', 'core/setting/setting', 'email.reset_success', 'Reset back to default successfully', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1205, 0, 'en', 'core/setting/setting', 'email.confirm_reset', 'Confirm reset email template?', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1206, 0, 'en', 'core/setting/setting', 'email.confirm_message', 'Do you really want to reset this email template to default?', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1207, 0, 'en', 'core/setting/setting', 'email.continue', 'Continue', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1208, 0, 'en', 'core/setting/setting', 'email.sender_name', 'Sender name', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1209, 0, 'en', 'core/setting/setting', 'email.sender_name_placeholder', 'Name', '2021-07-26 04:16:45', '2021-07-26 04:17:14'),
(1210, 0, 'en', 'core/setting/setting', 'email.sender_email', 'Sender email', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1211, 0, 'en', 'core/setting/setting', 'email.mailer', 'Mailer', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1212, 0, 'en', 'core/setting/setting', 'email.port', 'Port', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1213, 0, 'en', 'core/setting/setting', 'email.port_placeholder', 'Ex: 587', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1214, 0, 'en', 'core/setting/setting', 'email.host', 'Host', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1215, 0, 'en', 'core/setting/setting', 'email.host_placeholder', 'Ex: smtp.gmail.com', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1216, 0, 'en', 'core/setting/setting', 'email.username', 'Username', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1217, 0, 'en', 'core/setting/setting', 'email.username_placeholder', 'Username to login to mail server', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1218, 0, 'en', 'core/setting/setting', 'email.password', 'Password', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1219, 0, 'en', 'core/setting/setting', 'email.password_placeholder', 'Password to login to mail server', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1220, 0, 'en', 'core/setting/setting', 'email.encryption', 'Encryption', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1221, 0, 'en', 'core/setting/setting', 'email.mail_gun_domain', 'Domain', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1222, 0, 'en', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Domain', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1223, 0, 'en', 'core/setting/setting', 'email.mail_gun_secret', 'Secret', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1224, 0, 'en', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Secret', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1225, 0, 'en', 'core/setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1226, 0, 'en', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1227, 0, 'en', 'core/setting/setting', 'email.log_channel', 'Log channel', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1228, 0, 'en', 'core/setting/setting', 'email.sendmail_path', 'Sendmail Path', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1229, 0, 'en', 'core/setting/setting', 'email.encryption_placeholder', 'Encryption: ssl or tls', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1230, 0, 'en', 'core/setting/setting', 'email.ses_key', 'Key', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1231, 0, 'en', 'core/setting/setting', 'email.ses_key_placeholder', 'Key', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1232, 0, 'en', 'core/setting/setting', 'email.ses_secret', 'Secret', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1233, 0, 'en', 'core/setting/setting', 'email.ses_secret_placeholder', 'Secret', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1234, 0, 'en', 'core/setting/setting', 'email.ses_region', 'Region', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1235, 0, 'en', 'core/setting/setting', 'email.ses_region_placeholder', 'Region', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1236, 0, 'en', 'core/setting/setting', 'email.postmark_token', 'Token', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1237, 0, 'en', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1238, 0, 'en', 'core/setting/setting', 'email.template_title', 'Email templates', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1239, 0, 'en', 'core/setting/setting', 'email.template_description', 'Base templates for all emails', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1240, 0, 'en', 'core/setting/setting', 'email.template_header', 'Email template header', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1241, 0, 'en', 'core/setting/setting', 'email.template_header_description', 'Template for header of emails', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1242, 0, 'en', 'core/setting/setting', 'email.template_footer', 'Email template footer', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1243, 0, 'en', 'core/setting/setting', 'email.template_footer_description', 'Template for footer of emails', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1244, 0, 'en', 'core/setting/setting', 'email.default', 'Default', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1245, 0, 'en', 'core/setting/setting', 'email.using_queue_to_send_mail', 'Using queue job to send emails (Must to setup Queue first https://laravel.com/docs/queues#supervisor-configuration)', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1246, 0, 'en', 'core/setting/setting', 'media.title', 'Media', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1247, 0, 'en', 'core/setting/setting', 'media.driver', 'Driver', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1248, 0, 'en', 'core/setting/setting', 'media.description', 'Settings for media', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1249, 0, 'en', 'core/setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1250, 0, 'en', 'core/setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1251, 0, 'en', 'core/setting/setting', 'media.aws_default_region', 'AWS Default Region', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1252, 0, 'en', 'core/setting/setting', 'media.aws_bucket', 'AWS Bucket', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1253, 0, 'en', 'core/setting/setting', 'media.aws_url', 'AWS URL', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1254, 0, 'en', 'core/setting/setting', 'media.do_spaces_access_key_id', 'DO Spaces Access Key ID', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1255, 0, 'en', 'core/setting/setting', 'media.do_spaces_secret_key', 'DO Spaces Secret Key', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1256, 0, 'en', 'core/setting/setting', 'media.do_spaces_default_region', 'DO Spaces Default Region', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1257, 0, 'en', 'core/setting/setting', 'media.do_spaces_bucket', 'DO Spaces Bucket', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1258, 0, 'en', 'core/setting/setting', 'media.do_spaces_endpoint', 'DO Spaces Endpoint', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1259, 0, 'en', 'core/setting/setting', 'media.do_spaces_cdn_enabled', 'Is DO Spaces CDN enabled?', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1260, 0, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain', 'Do Spaces CDN custom domain', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1261, 0, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain_placeholder', 'https://your-custom-domain.com', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1262, 0, 'en', 'core/setting/setting', 'media.wasabi_access_key_id', 'Wasabi Access Key ID', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1263, 0, 'en', 'core/setting/setting', 'media.wasabi_secret_key', 'Wasabi Secret Key', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1264, 0, 'en', 'core/setting/setting', 'media.wasabi_default_region', 'Wasabi Default Region', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1265, 0, 'en', 'core/setting/setting', 'media.wasabi_bucket', 'Wasabi Bucket', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1266, 0, 'en', 'core/setting/setting', 'media.wasabi_root', 'Wasabi Root', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1267, 0, 'en', 'core/setting/setting', 'media.default_placeholder_image', 'Default placeholder image', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1268, 0, 'en', 'core/setting/setting', 'media.enable_chunk', 'Enable chunk size upload?', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1269, 0, 'en', 'core/setting/setting', 'media.chunk_size', 'Chunk size (Bytes)', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1270, 0, 'en', 'core/setting/setting', 'media.chunk_size_placeholder', 'Default: 1048576 ~ 1MB', '2021-07-26 04:16:46', '2021-07-26 04:17:14');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1271, 0, 'en', 'core/setting/setting', 'media.max_file_size', 'Chunk max file size (MB)', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1272, 0, 'en', 'core/setting/setting', 'media.max_file_size_placeholder', 'Default: 1048576 ~ 1GB', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1273, 0, 'en', 'core/setting/setting', 'media.enable_watermark', 'Enable watermark?', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1274, 0, 'en', 'core/setting/setting', 'media.watermark_source', 'Watermark image', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1275, 0, 'en', 'core/setting/setting', 'media.watermark_size', 'Size of watermark (%)', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1276, 0, 'en', 'core/setting/setting', 'media.watermark_size_placeholder', 'Default: 10 (%)', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1277, 0, 'en', 'core/setting/setting', 'media.watermark_opacity', 'Watermark Opacity (%)', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1278, 0, 'en', 'core/setting/setting', 'media.watermark_opacity_placeholder', 'Default: 70 (%)', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1279, 0, 'en', 'core/setting/setting', 'media.watermark_position', 'Watermark position', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1280, 0, 'en', 'core/setting/setting', 'media.watermark_position_x', 'Watermark position X', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1281, 0, 'en', 'core/setting/setting', 'media.watermark_position_y', 'Watermark position Y', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1282, 0, 'en', 'core/setting/setting', 'media.watermark_position_top_left', 'Top left', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1283, 0, 'en', 'core/setting/setting', 'media.watermark_position_top_right', 'Top right', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1284, 0, 'en', 'core/setting/setting', 'media.watermark_position_bottom_left', 'Bottom left', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1285, 0, 'en', 'core/setting/setting', 'media.watermark_position_bottom_right', 'Bottom right', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1286, 0, 'en', 'core/setting/setting', 'media.watermark_position_center', 'Center', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1287, 0, 'en', 'core/setting/setting', 'license.purchase_code', 'Purchase code', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1288, 0, 'en', 'core/setting/setting', 'license.buyer', 'Buyer', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1289, 0, 'en', 'core/setting/setting', 'field_type_not_exists', 'This field type does not exist', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1290, 0, 'en', 'core/setting/setting', 'save_settings', 'Save settings', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1291, 0, 'en', 'core/setting/setting', 'template', 'Template', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1292, 0, 'en', 'core/setting/setting', 'description', 'Description', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1293, 0, 'en', 'core/setting/setting', 'enable', 'Enable', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1294, 0, 'en', 'core/setting/setting', 'send', 'Send', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1295, 0, 'en', 'core/setting/setting', 'test_email_description', 'To send test email, please make sure you are updated configuration to send mail!', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1296, 0, 'en', 'core/setting/setting', 'test_email_input_placeholder', 'Enter the email which you want to send test email.', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1297, 0, 'en', 'core/setting/setting', 'test_email_modal_title', 'Send a test email', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1298, 0, 'en', 'core/setting/setting', 'test_send_mail', 'Send test mail', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1299, 0, 'en', 'core/setting/setting', 'test_email_send_success', 'Send email successfully!', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1300, 0, 'en', 'core/setting/setting', 'locale_direction_ltr', 'Left to Right', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1301, 0, 'en', 'core/setting/setting', 'locale_direction_rtl', 'Right to Left', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1302, 0, 'en', 'core/setting/setting', 'saving', 'Saving...', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1303, 0, 'en', 'core/setting/setting', 'emails_warning', 'You can add up to :count emails', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1304, 0, 'en', 'core/setting/setting', 'email_add_more', 'Add more', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1373, 0, 'en', 'core/table/general', 'operations', 'Operations', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1374, 0, 'en', 'core/table/general', 'loading_data', 'Loading data from server', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1375, 0, 'en', 'core/table/general', 'display', 'Display', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1376, 0, 'en', 'core/table/general', 'all', 'All', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1377, 0, 'en', 'core/table/general', 'edit_entry', 'Edit', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1378, 0, 'en', 'core/table/general', 'delete_entry', 'Delete', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1379, 0, 'en', 'core/table/general', 'show_from', 'Showing from', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1380, 0, 'en', 'core/table/general', 'to', 'to', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1381, 0, 'en', 'core/table/general', 'in', 'in', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1382, 0, 'en', 'core/table/general', 'records', 'records', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1383, 0, 'en', 'core/table/general', 'no_data', 'No data to display', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1384, 0, 'en', 'core/table/general', 'no_record', 'No record', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1385, 0, 'en', 'core/table/general', 'loading', 'Loading data from server', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1386, 0, 'en', 'core/table/general', 'confirm_delete', 'Confirm delete', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1387, 0, 'en', 'core/table/general', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1388, 0, 'en', 'core/table/general', 'cancel', 'Cancel', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1389, 0, 'en', 'core/table/general', 'delete', 'Delete', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1390, 0, 'en', 'core/table/general', 'close', 'Close', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1391, 0, 'en', 'core/table/general', 'contains', 'Contains', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1392, 0, 'en', 'core/table/general', 'is_equal_to', 'Is equal to', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1393, 0, 'en', 'core/table/general', 'greater_than', 'Greater than', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1394, 0, 'en', 'core/table/general', 'less_than', 'Less than', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1395, 0, 'en', 'core/table/general', 'value', 'Value', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1396, 0, 'en', 'core/table/general', 'select_field', 'Select field', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1397, 0, 'en', 'core/table/general', 'reset', 'Reset', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1398, 0, 'en', 'core/table/general', 'add_additional_filter', 'Add additional filter', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1399, 0, 'en', 'core/table/general', 'apply', 'Apply', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1400, 0, 'en', 'core/table/general', 'filters', 'Filters', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1401, 0, 'en', 'core/table/general', 'bulk_change', 'Bulk changes', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1402, 0, 'en', 'core/table/general', 'select_option', 'Select option', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1403, 0, 'en', 'core/table/general', 'bulk_actions', 'Bulk Actions', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1404, 0, 'en', 'core/table/general', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1405, 0, 'en', 'core/table/general', 'please_select_record', 'Please select at least one record to perform this action!', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1406, 0, 'en', 'core/table/general', 'filtered', '(filtered from _MAX_ total records)', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1407, 0, 'en', 'core/table/general', 'search', 'Search...', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1408, 0, 'en', 'core/table/table', 'operations', 'Operations', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1409, 0, 'en', 'core/table/table', 'loading_data', 'Loading data from server', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1410, 0, 'en', 'core/table/table', 'display', 'Display', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1411, 0, 'en', 'core/table/table', 'all', 'All', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1412, 0, 'en', 'core/table/table', 'edit_entry', 'Edit', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1413, 0, 'en', 'core/table/table', 'delete_entry', 'Delete', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1414, 0, 'en', 'core/table/table', 'show_from', 'Showing from', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1415, 0, 'en', 'core/table/table', 'to', 'to', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1416, 0, 'en', 'core/table/table', 'in', 'in', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1417, 0, 'en', 'core/table/table', 'records', 'records', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1418, 0, 'en', 'core/table/table', 'no_data', 'No data to display', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1419, 0, 'en', 'core/table/table', 'no_record', 'No record', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1420, 0, 'en', 'core/table/table', 'loading', 'Loading data from server', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1421, 0, 'en', 'core/table/table', 'confirm_delete', 'Confirm delete', '2021-07-26 04:16:46', '2021-07-26 04:17:14'),
(1422, 0, 'en', 'core/table/table', 'confirm_delete_msg', 'Do you really want to delete this record?', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1423, 0, 'en', 'core/table/table', 'cancel', 'Cancel', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1424, 0, 'en', 'core/table/table', 'delete', 'Delete', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1425, 0, 'en', 'core/table/table', 'close', 'Close', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1426, 0, 'en', 'core/table/table', 'contains', 'Contains', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1427, 0, 'en', 'core/table/table', 'is_equal_to', 'Is equal to', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1428, 0, 'en', 'core/table/table', 'greater_than', 'Greater than', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1429, 0, 'en', 'core/table/table', 'less_than', 'Less than', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1430, 0, 'en', 'core/table/table', 'value', 'Value', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1431, 0, 'en', 'core/table/table', 'select_field', 'Select field', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1432, 0, 'en', 'core/table/table', 'reset', 'Reset', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1433, 0, 'en', 'core/table/table', 'add_additional_filter', 'Add additional filter', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1434, 0, 'en', 'core/table/table', 'apply', 'Apply', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1435, 0, 'en', 'core/table/table', 'filters', 'Filters', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1436, 0, 'en', 'core/table/table', 'bulk_change', 'Bulk changes', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1437, 0, 'en', 'core/table/table', 'select_option', 'Select option', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1438, 0, 'en', 'core/table/table', 'bulk_actions', 'Bulk Actions', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1439, 0, 'en', 'core/table/table', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1440, 0, 'en', 'core/table/table', 'please_select_record', 'Please select at least one record to perform this action!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1441, 0, 'en', 'core/table/table', 'filtered', '(filtered from _MAX_ total records)', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1442, 0, 'en', 'core/table/table', 'search', 'Search...', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1475, 0, 'en', 'packages/menu/menu', 'name', 'Menus', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1476, 0, 'en', 'packages/menu/menu', 'key_name', 'Menu name (key: :key)', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1477, 0, 'en', 'packages/menu/menu', 'basic_info', 'Basic information', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1478, 0, 'en', 'packages/menu/menu', 'add_to_menu', 'Add to menu', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1479, 0, 'en', 'packages/menu/menu', 'custom_link', 'Custom link', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1480, 0, 'en', 'packages/menu/menu', 'add_link', 'Add link', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1481, 0, 'en', 'packages/menu/menu', 'structure', 'Menu structure', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1482, 0, 'en', 'packages/menu/menu', 'remove', 'Remove', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1483, 0, 'en', 'packages/menu/menu', 'cancel', 'Cancel', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1484, 0, 'en', 'packages/menu/menu', 'title', 'Title', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1485, 0, 'en', 'packages/menu/menu', 'icon', 'Icon', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1486, 0, 'en', 'packages/menu/menu', 'url', 'URL', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1487, 0, 'en', 'packages/menu/menu', 'target', 'Target', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1488, 0, 'en', 'packages/menu/menu', 'css_class', 'CSS class', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1489, 0, 'en', 'packages/menu/menu', 'self_open_link', 'Open link directly', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1490, 0, 'en', 'packages/menu/menu', 'blank_open_link', 'Open link in new tab', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1491, 0, 'en', 'packages/menu/menu', 'create', 'Create menu', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1492, 0, 'en', 'packages/menu/menu', 'edit', 'Edit menu', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1493, 0, 'en', 'packages/menu/menu', 'menu_settings', 'Menu settings', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1494, 0, 'en', 'packages/menu/menu', 'display_location', 'Display location', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1513, 0, 'en', 'packages/optimize/optimize', 'settings.title', 'Optimize page speed', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1514, 0, 'en', 'packages/optimize/optimize', 'settings.description', 'Minify HTML output, inline CSS, remove comments...', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1515, 0, 'en', 'packages/optimize/optimize', 'settings.enable', 'Enable optimize page speed?', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1516, 0, 'en', 'packages/page/pages', 'create', 'Create new page', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1517, 0, 'en', 'packages/page/pages', 'edit', 'Edit page', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1518, 0, 'en', 'packages/page/pages', 'form.name', 'Name', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1519, 0, 'en', 'packages/page/pages', 'form.name_placeholder', 'Page\'s name (Maximum 120 characters)', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1520, 0, 'en', 'packages/page/pages', 'form.content', 'Content', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1521, 0, 'en', 'packages/page/pages', 'form.note', 'Note content', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1522, 0, 'en', 'packages/page/pages', 'notices.no_select', 'Please select at least one record to take this action!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1523, 0, 'en', 'packages/page/pages', 'notices.update_success_message', 'Update successfully', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1524, 0, 'en', 'packages/page/pages', 'cannot_delete', 'Page could not be deleted', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1525, 0, 'en', 'packages/page/pages', 'deleted', 'Page deleted', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1526, 0, 'en', 'packages/page/pages', 'pages', 'Pages', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1527, 0, 'en', 'packages/page/pages', 'menu', 'Pages', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1528, 0, 'en', 'packages/page/pages', 'menu_name', 'Pages', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1529, 0, 'en', 'packages/page/pages', 'edit_this_page', 'Edit this page', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1530, 0, 'en', 'packages/page/pages', 'total_pages', 'Total pages', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1531, 0, 'en', 'packages/page/pages', 'settings.show_on_front', 'Your homepage displays', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1532, 0, 'en', 'packages/page/pages', 'settings.select', '— Select —', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1533, 0, 'en', 'packages/page/pages', 'front_page', 'Front Page', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1548, 0, 'en', 'packages/plugin-management/plugin', 'enabled', 'Enabled', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1549, 0, 'en', 'packages/plugin-management/plugin', 'deactivated', 'Deactivated', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1550, 0, 'en', 'packages/plugin-management/plugin', 'activated', 'Activated', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1551, 0, 'en', 'packages/plugin-management/plugin', 'activate', 'Activate', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1552, 0, 'en', 'packages/plugin-management/plugin', 'deactivate', 'Deactivate', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1553, 0, 'en', 'packages/plugin-management/plugin', 'author', 'By', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1554, 0, 'en', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Update plugin successfully', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1555, 0, 'en', 'packages/plugin-management/plugin', 'plugins', 'Plugins', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1556, 0, 'en', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Please activate plugin(s): :plugins before activate this plugin!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1557, 0, 'en', 'packages/plugin-management/plugin', 'remove', 'Remove', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1558, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Remove plugin successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1559, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin', 'Remove plugin', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1560, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Do you really want to remove this plugin?', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1561, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Yes, remove it!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1562, 0, 'en', 'packages/plugin-management/plugin', 'total_plugins', 'Total plugins', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1563, 0, 'en', 'packages/plugin-management/plugin', 'invalid_plugin', 'This plugin is not a valid plugin, please check it again!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1564, 0, 'en', 'packages/plugin-management/plugin', 'version', 'Version', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1565, 0, 'en', 'packages/plugin-management/plugin', 'invalid_json', 'Invalid plugin.json!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1566, 0, 'en', 'packages/plugin-management/plugin', 'activate_success', 'Activate plugin successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1567, 0, 'en', 'packages/plugin-management/plugin', 'activated_already', 'This plugin is activated already!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1568, 0, 'en', 'packages/plugin-management/plugin', 'plugin_not_exist', 'This plugin is not exists.', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1569, 0, 'en', 'packages/plugin-management/plugin', 'missing_json_file', 'Missing file plugin.json!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1570, 0, 'en', 'packages/plugin-management/plugin', 'plugin_invalid', 'Plugin is valid!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1571, 0, 'en', 'packages/plugin-management/plugin', 'published_assets_success', 'Publish assets for plugin :name successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1572, 0, 'en', 'packages/plugin-management/plugin', 'plugin_removed', 'Plugin has been removed!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1573, 0, 'en', 'packages/plugin-management/plugin', 'deactivated_success', 'Deactivate plugin successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1574, 0, 'en', 'packages/plugin-management/plugin', 'deactivated_already', 'This plugin is deactivated already!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1575, 0, 'en', 'packages/plugin-management/plugin', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1576, 0, 'en', 'packages/plugin-management/plugin', 'plugin_is_not_ready', 'Plugin :name is not ready to use', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1588, 0, 'en', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Search Engine Optimize', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1589, 0, 'en', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Edit SEO meta', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1590, 0, 'en', 'packages/seo-helper/seo-helper', 'default_description', 'Setup meta title & description to make your site easy to discovered on search engines such as Google', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1591, 0, 'en', 'packages/seo-helper/seo-helper', 'seo_title', 'SEO Title', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1592, 0, 'en', 'packages/seo-helper/seo-helper', 'seo_description', 'SEO description', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1598, 0, 'en', 'packages/slug/slug', 'permalink_settings', 'Permalink', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1599, 0, 'en', 'packages/slug/slug', 'settings.title', 'Permalink settings', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1600, 0, 'en', 'packages/slug/slug', 'settings.description', 'Manage permalink for all modules.', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1601, 0, 'en', 'packages/slug/slug', 'settings.preview', 'Preview', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1602, 0, 'en', 'packages/slug/slug', 'settings.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1603, 0, 'en', 'packages/slug/slug', 'preview', 'Preview', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1604, 0, 'en', 'packages/theme/theme', 'name', 'Themes', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1605, 0, 'en', 'packages/theme/theme', 'theme', 'Theme', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1606, 0, 'en', 'packages/theme/theme', 'author', 'Author', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1607, 0, 'en', 'packages/theme/theme', 'version', 'Version', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1608, 0, 'en', 'packages/theme/theme', 'description', 'Description', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1609, 0, 'en', 'packages/theme/theme', 'active_success', 'Activate theme :name successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1610, 0, 'en', 'packages/theme/theme', 'active', 'Active', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1611, 0, 'en', 'packages/theme/theme', 'activated', 'Activated', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1612, 0, 'en', 'packages/theme/theme', 'appearance', 'Appearance', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1613, 0, 'en', 'packages/theme/theme', 'theme_options', 'Theme options', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1614, 0, 'en', 'packages/theme/theme', 'save_changes', 'Save Changes', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1615, 0, 'en', 'packages/theme/theme', 'developer_mode', 'Developer Mode Enabled', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1616, 0, 'en', 'packages/theme/theme', 'custom_css', 'Custom CSS', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1617, 0, 'en', 'packages/theme/theme', 'custom_js', 'Custom JS', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1618, 0, 'en', 'packages/theme/theme', 'custom_header_js', 'Header JS', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1619, 0, 'en', 'packages/theme/theme', 'custom_header_js_placeholder', 'JS in header of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1620, 0, 'en', 'packages/theme/theme', 'custom_body_js', 'Body JS', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1621, 0, 'en', 'packages/theme/theme', 'custom_body_js_placeholder', 'JS in body of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1622, 0, 'en', 'packages/theme/theme', 'custom_footer_js', 'Footer JS', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1623, 0, 'en', 'packages/theme/theme', 'custom_footer_js_placeholder', 'JS in footer of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1624, 0, 'en', 'packages/theme/theme', 'remove_theme_success', 'Remove theme successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1625, 0, 'en', 'packages/theme/theme', 'theme_is_not_existed', 'This theme is not existed!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1626, 0, 'en', 'packages/theme/theme', 'remove', 'Remove', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1627, 0, 'en', 'packages/theme/theme', 'remove_theme', 'Remove theme', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1628, 0, 'en', 'packages/theme/theme', 'remove_theme_confirm_message', 'Do you really want to remove this theme?', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1629, 0, 'en', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Yes, remove it!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1630, 0, 'en', 'packages/theme/theme', 'total_themes', 'Total themes', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1631, 0, 'en', 'packages/theme/theme', 'show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website)?', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1632, 0, 'en', 'packages/theme/theme', 'settings.title', 'Theme', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1633, 0, 'en', 'packages/theme/theme', 'settings.description', 'Setting for theme', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1634, 0, 'en', 'packages/theme/theme', 'add_new', 'Add new', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1635, 0, 'en', 'packages/theme/theme', 'theme_activated_already', 'Theme \":name\" is activated already!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1636, 0, 'en', 'packages/theme/theme', 'missing_json_file', 'Missing file theme.json!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1637, 0, 'en', 'packages/theme/theme', 'theme_invalid', 'Theme is valid!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1638, 0, 'en', 'packages/theme/theme', 'published_assets_success', 'Publish assets for :themes successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1639, 0, 'en', 'packages/theme/theme', 'cannot_remove_theme', 'Cannot remove activated theme, please activate another theme before removing \":name\"!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1640, 0, 'en', 'packages/theme/theme', 'theme_deleted', 'Theme \":name\" has been destroyed.', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1641, 0, 'en', 'packages/theme/theme', 'removed_assets', 'Remove assets of a theme :name successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1642, 0, 'en', 'packages/theme/theme', 'update_custom_css_success', 'Update custom CSS successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1643, 0, 'en', 'packages/theme/theme', 'update_custom_js_success', 'Update custom JS successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1644, 0, 'en', 'packages/theme/theme', 'go_to_dashboard', 'Go to dashboard', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1645, 0, 'en', 'packages/theme/theme', 'custom_css_placeholder', 'Using Ctrl + Space to autocomplete.', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1646, 0, 'en', 'packages/theme/theme', 'theme_option_general', 'General', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1647, 0, 'en', 'packages/theme/theme', 'theme_option_general_description', 'General settings', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1648, 0, 'en', 'packages/theme/theme', 'theme_option_seo_open_graph_image', 'SEO default Open Graph image', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1649, 0, 'en', 'packages/theme/theme', 'theme_option_logo', 'Logo', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1650, 0, 'en', 'packages/theme/theme', 'theme_option_favicon', 'Favicon', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1651, 0, 'en', 'packages/theme/theme', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1663, 0, 'en', 'packages/widget/global', 'name', 'Widgets', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1664, 0, 'en', 'packages/widget/global', 'create', 'New widget', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1665, 0, 'en', 'packages/widget/global', 'edit', 'Edit widget', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1666, 0, 'en', 'packages/widget/global', 'delete', 'Delete', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1667, 0, 'en', 'packages/widget/global', 'available', 'Available Widgets', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1668, 0, 'en', 'packages/widget/global', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1669, 0, 'en', 'packages/widget/global', 'number_tag_display', 'Number tags will be display', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1670, 0, 'en', 'packages/widget/global', 'number_post_display', 'Number posts will be display', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1671, 0, 'en', 'packages/widget/global', 'select_menu', 'Select Menu', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1672, 0, 'en', 'packages/widget/global', 'widget_text', 'Text', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1673, 0, 'en', 'packages/widget/global', 'widget_text_description', 'Arbitrary text or HTML.', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1674, 0, 'en', 'packages/widget/global', 'widget_recent_post', 'Recent Posts', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1675, 0, 'en', 'packages/widget/global', 'widget_recent_post_description', 'Recent posts widget.', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1676, 0, 'en', 'packages/widget/global', 'widget_custom_menu', 'Custom Menu', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1677, 0, 'en', 'packages/widget/global', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1678, 0, 'en', 'packages/widget/global', 'widget_tag', 'Tags', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1679, 0, 'en', 'packages/widget/global', 'widget_tag_description', 'Popular tags', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1680, 0, 'en', 'packages/widget/global', 'save_success', 'Save widget successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1681, 0, 'en', 'packages/widget/global', 'delete_success', 'Delete widget successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1682, 0, 'en', 'packages/widget/widget', 'name', 'Widgets', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1683, 0, 'en', 'packages/widget/widget', 'create', 'New widget', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1684, 0, 'en', 'packages/widget/widget', 'edit', 'Edit widget', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1685, 0, 'en', 'packages/widget/widget', 'delete', 'Delete', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1686, 0, 'en', 'packages/widget/widget', 'available', 'Available Widgets', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1687, 0, 'en', 'packages/widget/widget', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1688, 0, 'en', 'packages/widget/widget', 'number_tag_display', 'Number tags will be display', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1689, 0, 'en', 'packages/widget/widget', 'number_post_display', 'Number posts will be display', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1690, 0, 'en', 'packages/widget/widget', 'select_menu', 'Select Menu', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1691, 0, 'en', 'packages/widget/widget', 'widget_text', 'Text', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1692, 0, 'en', 'packages/widget/widget', 'widget_text_description', 'Arbitrary text or HTML.', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1693, 0, 'en', 'packages/widget/widget', 'widget_recent_post', 'Recent Posts', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1694, 0, 'en', 'packages/widget/widget', 'widget_recent_post_description', 'Recent posts widget.', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1695, 0, 'en', 'packages/widget/widget', 'widget_custom_menu', 'Custom Menu', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1696, 0, 'en', 'packages/widget/widget', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1697, 0, 'en', 'packages/widget/widget', 'widget_tag', 'Tags', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1698, 0, 'en', 'packages/widget/widget', 'widget_tag_description', 'Popular tags', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1699, 0, 'en', 'packages/widget/widget', 'save_success', 'Save widget successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1700, 0, 'en', 'packages/widget/widget', 'delete_success', 'Delete widget successfully!', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1701, 0, 'en', 'packages/widget/widget', 'primary_sidebar_name', 'Primary sidebar', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1702, 0, 'en', 'packages/widget/widget', 'primary_sidebar_description', 'Primary sidebar section', '2021-07-26 04:16:47', '2021-07-26 04:17:14'),
(1722, 0, 'en', 'plugins/analytics/analytics', 'sessions', 'Sessions', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1723, 0, 'en', 'plugins/analytics/analytics', 'visitors', 'Visitors', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1724, 0, 'en', 'plugins/analytics/analytics', 'pageviews', 'Pageviews', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1725, 0, 'en', 'plugins/analytics/analytics', 'bounce_rate', 'Bounce Rate', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1726, 0, 'en', 'plugins/analytics/analytics', 'page_session', 'Pages/Session', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1727, 0, 'en', 'plugins/analytics/analytics', 'avg_duration', 'Avg. Duration', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1728, 0, 'en', 'plugins/analytics/analytics', 'percent_new_session', 'Percent new session', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1729, 0, 'en', 'plugins/analytics/analytics', 'new_users', 'New visitors', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1730, 0, 'en', 'plugins/analytics/analytics', 'visits', 'visits', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1731, 0, 'en', 'plugins/analytics/analytics', 'views', 'views', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1732, 0, 'en', 'plugins/analytics/analytics', 'view_id_not_specified', 'You must provide a valid view id. The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1733, 0, 'en', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Analytics credentials is not valid. The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1734, 0, 'en', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1735, 0, 'en', 'plugins/analytics/analytics', 'wrong_configuration', 'To view analytics you\'ll need to get a google analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: <a href=\"https://docs.botble.com/cms/:version/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/:version/plugin-analytics</a>', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1736, 0, 'en', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1737, 0, 'en', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1738, 0, 'en', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking ID', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1739, 0, 'en', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1740, 0, 'en', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1741, 0, 'en', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1742, 0, 'en', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1743, 0, 'en', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1744, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_page', 'Top Most Visit Pages', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1745, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Top Browsers', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1746, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Top Referrers', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1747, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_general', 'Site Analytics', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1774, 0, 'en', 'plugins/audit-log/history', 'name', 'Activities Logs', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1775, 0, 'en', 'plugins/audit-log/history', 'created', 'created', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1776, 0, 'en', 'plugins/audit-log/history', 'updated', 'updated', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1777, 0, 'en', 'plugins/audit-log/history', 'deleted', 'deleted', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1778, 0, 'en', 'plugins/audit-log/history', 'logged in', 'logged in', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1779, 0, 'en', 'plugins/audit-log/history', 'logged out', 'logged out', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1780, 0, 'en', 'plugins/audit-log/history', 'changed password', 'changed password', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1781, 0, 'en', 'plugins/audit-log/history', 'updated profile', 'updated profile', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1782, 0, 'en', 'plugins/audit-log/history', 'attached', 'attached', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1783, 0, 'en', 'plugins/audit-log/history', 'shared', 'shared', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1784, 0, 'en', 'plugins/audit-log/history', 'to the system', 'to the system', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1785, 0, 'en', 'plugins/audit-log/history', 'of the system', 'of the system', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1786, 0, 'en', 'plugins/audit-log/history', 'menu', 'menu', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1787, 0, 'en', 'plugins/audit-log/history', 'post', 'post', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1788, 0, 'en', 'plugins/audit-log/history', 'page', 'page', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1789, 0, 'en', 'plugins/audit-log/history', 'category', 'category', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1790, 0, 'en', 'plugins/audit-log/history', 'tag', 'tag', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1791, 0, 'en', 'plugins/audit-log/history', 'user', 'user', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1792, 0, 'en', 'plugins/audit-log/history', 'contact', 'contact', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1793, 0, 'en', 'plugins/audit-log/history', 'backup', 'backup', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1794, 0, 'en', 'plugins/audit-log/history', 'custom-field', 'custom field', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1795, 0, 'en', 'plugins/audit-log/history', 'widget_audit_logs', 'Activities Logs', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1796, 0, 'en', 'plugins/audit-log/history', 'action', 'Action', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1797, 0, 'en', 'plugins/audit-log/history', 'user_agent', 'User Agent', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1798, 0, 'en', 'plugins/audit-log/history', 'system', 'System', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1799, 0, 'en', 'plugins/audit-log/history', 'delete_all', 'Delete all records', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1822, 0, 'en', 'plugins/backup/backup', 'name', 'Backup', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1823, 0, 'en', 'plugins/backup/backup', 'backup_description', 'Backup database and uploads folder.', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1824, 0, 'en', 'plugins/backup/backup', 'create_backup_success', 'Created backup successfully!', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1825, 0, 'en', 'plugins/backup/backup', 'delete_backup_success', 'Delete backup successfully!', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1826, 0, 'en', 'plugins/backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1827, 0, 'en', 'plugins/backup/backup', 'generate_btn', 'Generate backup', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1828, 0, 'en', 'plugins/backup/backup', 'create', 'Create a backup', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1829, 0, 'en', 'plugins/backup/backup', 'restore', 'Restore a backup', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1830, 0, 'en', 'plugins/backup/backup', 'create_btn', 'Create', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1831, 0, 'en', 'plugins/backup/backup', 'restore_btn', 'Restore', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1832, 0, 'en', 'plugins/backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1833, 0, 'en', 'plugins/backup/backup', 'download_uploads_folder', 'Download backup of uploads folder', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1834, 0, 'en', 'plugins/backup/backup', 'download_database', 'Download backup of database', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1835, 0, 'en', 'plugins/backup/backup', 'restore_tooltip', 'Restore this backup', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1836, 0, 'en', 'plugins/backup/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=\":link\">go here</a> and restore demo site to the latest revision! Thank you so much!', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1837, 0, 'en', 'plugins/backup/backup', 'menu_name', 'Backups', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1838, 0, 'en', 'plugins/backup/backup', 'size', 'Size', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1839, 0, 'en', 'plugins/backup/backup', 'no_backups', 'There is no backup now!', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1840, 0, 'en', 'plugins/backup/backup', 'proc_open_disabled_error', 'Function <strong>proc_open()</strong> has been disabled so the system cannot backup the database. Please contact your hosting provider to enable it.', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1841, 0, 'en', 'plugins/backup/backup', 'database_backup_not_existed', 'Backup database is not existed!', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1842, 0, 'en', 'plugins/backup/backup', 'uploads_folder_backup_not_existed', 'Backup uploads folder is not existed!', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1843, 0, 'en', 'plugins/backup/backup', 'important_message1', 'This is a simple backup feature, it is a solution for you if your site has < 1GB data and can be used for quickly backup your site.', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1844, 0, 'en', 'plugins/backup/backup', 'important_message2', 'If you have more than 1GB images/files in local storage, you should use backup feature of your hosting or VPS.', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1845, 0, 'en', 'plugins/backup/backup', 'important_message3', 'To backup your database, function <strong>proc_open()</strong> or <strong>system()</strong> must be enabled. Contact your hosting provider to enable it if it is disabled.', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1862, 0, 'en', 'plugins/blog/base', 'menu_name', 'Blog', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1863, 0, 'en', 'plugins/blog/base', 'blog_page', 'Blog Page', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1864, 0, 'en', 'plugins/blog/base', 'select', '-- Select --', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1865, 0, 'en', 'plugins/blog/base', 'blog_page_id', 'Blog page', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1866, 0, 'en', 'plugins/blog/base', 'number_posts_per_page', 'Number posts per page', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1867, 0, 'en', 'plugins/blog/base', 'write_some_tags', 'Write some tags', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1868, 0, 'en', 'plugins/blog/base', 'short_code_name', 'Blog posts', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1869, 0, 'en', 'plugins/blog/base', 'short_code_description', 'Add blog posts', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1870, 0, 'en', 'plugins/blog/base', 'number_posts_per_page_in_category', 'Number of posts per page in a category', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1871, 0, 'en', 'plugins/blog/base', 'number_posts_per_page_in_tag', 'Number of posts per page in a tag', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1872, 0, 'en', 'plugins/blog/categories', 'create', 'Create new category', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1873, 0, 'en', 'plugins/blog/categories', 'edit', 'Edit category', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1874, 0, 'en', 'plugins/blog/categories', 'menu', 'Categories', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1875, 0, 'en', 'plugins/blog/categories', 'edit_this_category', 'Edit this category', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1876, 0, 'en', 'plugins/blog/categories', 'menu_name', 'Categories', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1877, 0, 'en', 'plugins/blog/categories', 'none', 'None', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1878, 0, 'en', 'plugins/blog/categories', 'total_posts', 'Total posts: :total', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1879, 0, 'en', 'plugins/blog/member', 'dob', 'Born :date', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1880, 0, 'en', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1881, 0, 'en', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1882, 0, 'en', 'plugins/blog/member', 'published_posts', 'Published Posts', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1883, 0, 'en', 'plugins/blog/member', 'posts', 'Posts', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1884, 0, 'en', 'plugins/blog/member', 'write_post', 'Write a post', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1885, 0, 'en', 'plugins/blog/posts', 'create', 'Create new post', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1886, 0, 'en', 'plugins/blog/posts', 'edit', 'Edit post', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1887, 0, 'en', 'plugins/blog/posts', 'form.name', 'Name', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1888, 0, 'en', 'plugins/blog/posts', 'form.name_placeholder', 'Post\'s name (Maximum :c characters)', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1889, 0, 'en', 'plugins/blog/posts', 'form.description', 'Description', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1890, 0, 'en', 'plugins/blog/posts', 'form.description_placeholder', 'Short description for post (Maximum :c characters)', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1891, 0, 'en', 'plugins/blog/posts', 'form.categories', 'Categories', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1892, 0, 'en', 'plugins/blog/posts', 'form.tags', 'Tags', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1893, 0, 'en', 'plugins/blog/posts', 'form.tags_placeholder', 'Tags', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1894, 0, 'en', 'plugins/blog/posts', 'form.content', 'Content', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1895, 0, 'en', 'plugins/blog/posts', 'form.is_featured', 'Is featured?', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1896, 0, 'en', 'plugins/blog/posts', 'form.note', 'Note content', '2021-07-26 04:16:48', '2021-07-26 04:17:14');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1897, 0, 'en', 'plugins/blog/posts', 'form.format_type', 'Format', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1898, 0, 'en', 'plugins/blog/posts', 'cannot_delete', 'Post could not be deleted', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1899, 0, 'en', 'plugins/blog/posts', 'post_deleted', 'Post deleted', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1900, 0, 'en', 'plugins/blog/posts', 'posts', 'Posts', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1901, 0, 'en', 'plugins/blog/posts', 'post', 'Post', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1902, 0, 'en', 'plugins/blog/posts', 'edit_this_post', 'Edit this post', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1903, 0, 'en', 'plugins/blog/posts', 'no_new_post_now', 'There is no new post now!', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1904, 0, 'en', 'plugins/blog/posts', 'menu_name', 'Posts', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1905, 0, 'en', 'plugins/blog/posts', 'widget_posts_recent', 'Recent Posts', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1906, 0, 'en', 'plugins/blog/posts', 'categories', 'Categories', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1907, 0, 'en', 'plugins/blog/posts', 'category', 'Category', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1908, 0, 'en', 'plugins/blog/posts', 'author', 'Author', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1909, 0, 'en', 'plugins/blog/settings', 'select', '-- Select --', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1910, 0, 'en', 'plugins/blog/settings', 'blog_page_id', 'Blog page', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1911, 0, 'en', 'plugins/blog/tags', 'form.name', 'Name', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1912, 0, 'en', 'plugins/blog/tags', 'form.name_placeholder', 'Tag\'s name (Maximum 120 characters)', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1913, 0, 'en', 'plugins/blog/tags', 'form.description', 'Description', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1914, 0, 'en', 'plugins/blog/tags', 'form.description_placeholder', 'Short description for tag (Maximum 400 characters)', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1915, 0, 'en', 'plugins/blog/tags', 'form.categories', 'Categories', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1916, 0, 'en', 'plugins/blog/tags', 'notices.no_select', 'Please select at least one tag to take this action!', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1917, 0, 'en', 'plugins/blog/tags', 'create', 'Create new tag', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1918, 0, 'en', 'plugins/blog/tags', 'edit', 'Edit tag', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1919, 0, 'en', 'plugins/blog/tags', 'cannot_delete', 'Tag could not be deleted', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1920, 0, 'en', 'plugins/blog/tags', 'deleted', 'Tag deleted', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1921, 0, 'en', 'plugins/blog/tags', 'menu', 'Tags', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1922, 0, 'en', 'plugins/blog/tags', 'edit_this_tag', 'Edit this tag', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1923, 0, 'en', 'plugins/blog/tags', 'menu_name', 'Tags', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1963, 0, 'en', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1964, 0, 'en', 'plugins/captcha/captcha', 'settings.description', 'Settings for Google Captcha', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1965, 0, 'en', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1966, 0, 'en', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1967, 0, 'en', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Enable Captcha?', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1968, 0, 'en', 'plugins/captcha/captcha', 'settings.helper', 'Go here to get credentials https://www.google.com/recaptcha/admin#list.', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1969, 0, 'en', 'plugins/captcha/captcha', 'settings.hide_badge', 'Hide recaptcha badge (for v3)', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1970, 0, 'en', 'plugins/captcha/captcha', 'settings.type', 'Type', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1971, 0, 'en', 'plugins/captcha/captcha', 'settings.v2_description', 'V2 (Verify requests with a challenge)', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1972, 0, 'en', 'plugins/captcha/captcha', 'settings.v3_description', 'V3 (Verify requests with a score)', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1973, 0, 'en', 'plugins/captcha/captcha', 'failed_validate', 'Failed to validate the captcha.', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1974, 0, 'en', 'plugins/contact/contact', 'menu', 'Contact', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1975, 0, 'en', 'plugins/contact/contact', 'edit', 'View contact', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1976, 0, 'en', 'plugins/contact/contact', 'tables.phone', 'Phone', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1977, 0, 'en', 'plugins/contact/contact', 'tables.email', 'Email', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1978, 0, 'en', 'plugins/contact/contact', 'tables.full_name', 'Full Name', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1979, 0, 'en', 'plugins/contact/contact', 'tables.time', 'Time', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1980, 0, 'en', 'plugins/contact/contact', 'tables.address', 'Address', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1981, 0, 'en', 'plugins/contact/contact', 'tables.subject', 'Subject', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1982, 0, 'en', 'plugins/contact/contact', 'tables.content', 'Content', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1983, 0, 'en', 'plugins/contact/contact', 'contact_information', 'Contact information', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1984, 0, 'en', 'plugins/contact/contact', 'replies', 'Replies', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1985, 0, 'en', 'plugins/contact/contact', 'email.header', 'Email', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1986, 0, 'en', 'plugins/contact/contact', 'email.title', 'New contact from your site', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1987, 0, 'en', 'plugins/contact/contact', 'form.name.required', 'Name is required', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1988, 0, 'en', 'plugins/contact/contact', 'form.email.required', 'Email is required', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1989, 0, 'en', 'plugins/contact/contact', 'form.email.email', 'The email address is not valid', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1990, 0, 'en', 'plugins/contact/contact', 'form.content.required', 'Content is required', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1991, 0, 'en', 'plugins/contact/contact', 'contact_sent_from', 'This contact information sent from', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1992, 0, 'en', 'plugins/contact/contact', 'sender', 'Sender', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1993, 0, 'en', 'plugins/contact/contact', 'sender_email', 'Email', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1994, 0, 'en', 'plugins/contact/contact', 'sender_address', 'Address', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1995, 0, 'en', 'plugins/contact/contact', 'sender_phone', 'Phone', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1996, 0, 'en', 'plugins/contact/contact', 'message_content', 'Message content', '2021-07-26 04:16:48', '2021-07-26 04:17:14'),
(1997, 0, 'en', 'plugins/contact/contact', 'sent_from', 'Email sent from', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(1998, 0, 'en', 'plugins/contact/contact', 'form_name', 'Name', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(1999, 0, 'en', 'plugins/contact/contact', 'form_email', 'Email', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2000, 0, 'en', 'plugins/contact/contact', 'form_address', 'Address', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2001, 0, 'en', 'plugins/contact/contact', 'form_subject', 'Subject', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2002, 0, 'en', 'plugins/contact/contact', 'form_phone', 'Phone', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2003, 0, 'en', 'plugins/contact/contact', 'form_message', 'Message', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2004, 0, 'en', 'plugins/contact/contact', 'required_field', 'The field with (<span style=\"color: red\">*</span>) is required.', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2005, 0, 'en', 'plugins/contact/contact', 'send_btn', 'Send message', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2006, 0, 'en', 'plugins/contact/contact', 'new_msg_notice', 'You have <span class=\"bold\">:count</span> New Messages', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2007, 0, 'en', 'plugins/contact/contact', 'view_all', 'View all', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2008, 0, 'en', 'plugins/contact/contact', 'statuses.read', 'Read', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2009, 0, 'en', 'plugins/contact/contact', 'statuses.unread', 'Unread', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2010, 0, 'en', 'plugins/contact/contact', 'phone', 'Phone', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2011, 0, 'en', 'plugins/contact/contact', 'address', 'Address', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2012, 0, 'en', 'plugins/contact/contact', 'message', 'Message', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2013, 0, 'en', 'plugins/contact/contact', 'settings.email.title', 'Contact', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2014, 0, 'en', 'plugins/contact/contact', 'settings.email.description', 'Contact email configuration', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2015, 0, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Send notice to administrator', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2016, 0, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Email template to send notice to administrator when system get new contact', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2017, 0, 'en', 'plugins/contact/contact', 'no_reply', 'No reply yet!', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2018, 0, 'en', 'plugins/contact/contact', 'reply', 'Reply', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2019, 0, 'en', 'plugins/contact/contact', 'send', 'Send', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2020, 0, 'en', 'plugins/contact/contact', 'shortcode_name', 'Contact form', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2021, 0, 'en', 'plugins/contact/contact', 'shortcode_description', 'Add a contact form', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2022, 0, 'en', 'plugins/contact/contact', 'shortcode_content_description', 'Add shortcode [contact-form][/contact-form] to editor?', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2023, 0, 'en', 'plugins/contact/contact', 'message_sent_success', 'Message sent successfully!', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2061, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.name', 'Cookie Consent', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2062, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.description', 'Cookie consent settings', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2063, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.enable', 'Enable cookie consent?', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2064, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.message', 'Message', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2065, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.button_text', 'Button text', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2066, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.max_width', 'Max width (px)', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2067, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.background_color', 'Background color', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2068, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.text_color', 'Text color', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2069, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_url', 'Learn more URL', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2070, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_text', 'Learn more text', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2071, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'message', 'Your experience on this site will be improved by allowing cookies.', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2072, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'button_text', 'Allow cookies', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2073, 0, 'en', 'plugins/ecommerce/brands', 'name', 'Brands', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2074, 0, 'en', 'plugins/ecommerce/brands', 'create', 'New brand', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2075, 0, 'en', 'plugins/ecommerce/brands', 'edit', 'Edit brand', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2076, 0, 'en', 'plugins/ecommerce/brands', 'form.name', 'Name', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2077, 0, 'en', 'plugins/ecommerce/brands', 'form.name_placeholder', 'Brand\'s name (Maximum 255 characters)', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2078, 0, 'en', 'plugins/ecommerce/brands', 'form.description', 'Description', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2079, 0, 'en', 'plugins/ecommerce/brands', 'form.description_placeholder', 'Short description for brand (Maximum 400 characters)', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2080, 0, 'en', 'plugins/ecommerce/brands', 'form.website', 'Website', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2081, 0, 'en', 'plugins/ecommerce/brands', 'form.logo', 'Logo', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2082, 0, 'en', 'plugins/ecommerce/brands', 'form.is_featured', 'Is featured', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2083, 0, 'en', 'plugins/ecommerce/brands', 'logo', 'Logo', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2084, 0, 'en', 'plugins/ecommerce/brands', 'website', 'Website', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2085, 0, 'en', 'plugins/ecommerce/brands', 'notices.no_select', 'Please select at least one record to take this action!', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2086, 0, 'en', 'plugins/ecommerce/brands', 'notices.update_success_message', 'Update successfully', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2087, 0, 'en', 'plugins/ecommerce/brands', 'cannot_delete', 'Brand could not be deleted', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2088, 0, 'en', 'plugins/ecommerce/brands', 'brand_deleted', 'Brand deleted', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2089, 0, 'en', 'plugins/ecommerce/brands', 'menu', 'Brands', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2090, 0, 'en', 'plugins/ecommerce/brands', 'no_brand', 'No brand', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2091, 0, 'en', 'plugins/ecommerce/brands', 'intro.title', 'Manage brands', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2092, 0, 'en', 'plugins/ecommerce/brands', 'intro.description', 'Manage product brands such as Nike, Adidas, Bitis ...', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2093, 0, 'en', 'plugins/ecommerce/brands', 'intro.button_text', 'Create brand', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2094, 0, 'en', 'plugins/ecommerce/currency', 'currencies', 'Currencies', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2095, 0, 'en', 'plugins/ecommerce/currency', 'setting_description', 'List of currencies using on website', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2096, 0, 'en', 'plugins/ecommerce/currency', 'name', 'Name', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2097, 0, 'en', 'plugins/ecommerce/currency', 'symbol', 'Symbol', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2098, 0, 'en', 'plugins/ecommerce/currency', 'number_of_decimals', 'Number of decimals', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2099, 0, 'en', 'plugins/ecommerce/currency', 'exchange_rate', 'Exchange rate', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2100, 0, 'en', 'plugins/ecommerce/currency', 'is_prefix_symbol', 'Position of symbol', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2101, 0, 'en', 'plugins/ecommerce/currency', 'is_default', 'Is default?', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2102, 0, 'en', 'plugins/ecommerce/currency', 'remove', 'Remove', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2103, 0, 'en', 'plugins/ecommerce/currency', 'new_currency', 'Add a new currency', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2104, 0, 'en', 'plugins/ecommerce/currency', 'save_settings', 'Save settings', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2105, 0, 'en', 'plugins/ecommerce/currency', 'before_number', 'Before number', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2106, 0, 'en', 'plugins/ecommerce/currency', 'after_number', 'After number', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2107, 0, 'en', 'plugins/ecommerce/currency', 'require_at_least_one_currency', 'The system requires at least one currency!', '2021-07-26 04:16:49', '2021-07-26 04:17:14'),
(2108, 0, 'en', 'plugins/ecommerce/customer', 'name', 'Customers', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2109, 0, 'en', 'plugins/ecommerce/customer', 'create', 'Create a customer', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2110, 0, 'en', 'plugins/ecommerce/customer', 'edit', 'Edit customer \":name\"', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2111, 0, 'en', 'plugins/ecommerce/customer', 'email', 'Email', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2112, 0, 'en', 'plugins/ecommerce/customer', 'email_placeholder', 'Ex: example@gmail.com', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2113, 0, 'en', 'plugins/ecommerce/customer', 'password', 'Password', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2114, 0, 'en', 'plugins/ecommerce/customer', 'change_password', 'Change password?', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2115, 0, 'en', 'plugins/ecommerce/customer', 'password_confirmation', 'Password confirmation', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2116, 0, 'en', 'plugins/ecommerce/customer', 'intro.title', 'Manage customers', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2117, 0, 'en', 'plugins/ecommerce/customer', 'intro.description', 'When a customer buy your product(s), you will know their order histories.', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2118, 0, 'en', 'plugins/ecommerce/customer', 'intro.button_text', 'Create customer', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2119, 0, 'en', 'plugins/ecommerce/discount', 'name', 'Discounts', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2120, 0, 'en', 'plugins/ecommerce/discount', 'create', 'Create discount', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2121, 0, 'en', 'plugins/ecommerce/discount', 'invalid_coupon', 'This coupon is invalid or expired!', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2122, 0, 'en', 'plugins/ecommerce/discount', 'cannot_use_same_time_with_other_discount_program', 'Cannot use this coupon in the same time with other discount program!', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2123, 0, 'en', 'plugins/ecommerce/discount', 'not_used', 'This coupon is not used yet!', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2124, 0, 'en', 'plugins/ecommerce/discount', 'detail', 'Detail', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2125, 0, 'en', 'plugins/ecommerce/discount', 'used', 'Used', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2126, 0, 'en', 'plugins/ecommerce/discount', 'start_date', 'Start date', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2127, 0, 'en', 'plugins/ecommerce/discount', 'end_date', 'End date', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2128, 0, 'en', 'plugins/ecommerce/discount', 'intro.title', 'Manage discount/coupon code', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2129, 0, 'en', 'plugins/ecommerce/discount', 'intro.description', 'Create coupon code or promotion for your products.', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2130, 0, 'en', 'plugins/ecommerce/discount', 'intro.button_text', 'Create discount', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2131, 0, 'en', 'plugins/ecommerce/discount', 'discount', 'Discount', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2132, 0, 'en', 'plugins/ecommerce/discount', 'expired', 'Expired', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2133, 0, 'en', 'plugins/ecommerce/discount', 'coupon_code', 'Coupon code', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2134, 0, 'en', 'plugins/ecommerce/discount', 'discount_promotion', 'Discount promotion', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2135, 0, 'en', 'plugins/ecommerce/discount', 'can', 'can', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2136, 0, 'en', 'plugins/ecommerce/discount', 'cannot', 'cannot', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2137, 0, 'en', 'plugins/ecommerce/discount', 'use_with_promotion', 'be used with promotion', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2138, 0, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_title_required_if', 'Please enter the name of the promotion', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2139, 0, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_code_required_if', 'Please enter the promotion code', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2140, 0, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_value_required', 'Amount must be greater than 0', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2141, 0, 'en', 'plugins/ecommerce/discount', 'create_discount_validate_target_required', 'No object selected for promotion', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2142, 0, 'en', 'plugins/ecommerce/discount', 'enums.type-options.amount', 'Amount - Fixed', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2143, 0, 'en', 'plugins/ecommerce/discount', 'enums.type-options.percentage', 'Discount %', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2144, 0, 'en', 'plugins/ecommerce/discount', 'enums.type-options.shipping', 'Free shipping', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2145, 0, 'en', 'plugins/ecommerce/discount', 'enums.type-options.same-price', 'Same price', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2146, 0, 'en', 'plugins/ecommerce/ecommerce', 'settings', 'Settings', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2147, 0, 'en', 'plugins/ecommerce/ecommerce', 'name', 'Ecommerce', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2148, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.title', 'E-commerce', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2149, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.description', 'Ecommerce email config', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2150, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject', 'Subject of order confirmation email', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2151, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_subject_placeholder', 'The subject of email confirmation send to the customer', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2152, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_confirm_content', 'Content of order confirmation email', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2153, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject', 'Subject of email when changing order\'s status', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2154, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_subject_placeholder', 'Subject of email when changing order\'s status send to customer', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2155, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.order_status_change_content', 'Content of email when changing order\'s status', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2156, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.from_email', 'Email from', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2157, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.email.from_email_placeholder', 'Email from address to display in mail. Ex: example@gmail.com', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2158, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.title', 'Basic information', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2159, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.state', 'State', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2160, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.city', 'City', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2161, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.country', 'Country', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2162, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.select country', 'Select a country...', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2163, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_gram', 'Gram (g)', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2164, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_kilogram', 'Kilogram (kg)', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2165, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_lb', 'Pound (lb)', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2166, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.weight_unit_oz', 'Ounce (oz)', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2167, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_cm', 'Centimeter (cm)', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2168, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_m', 'Meter (m)', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2169, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.height_unit_inch', 'Inch', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2170, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.store_locator_title', 'Store locators', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2171, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.store_locator_description', 'All the lists of your chains, main stores, branches, etc. The locations can be used to track sales and to help us configure tax rates to charge when selling products.', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2172, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.phone', 'Phone', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2173, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.address', 'Address', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2174, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.is_primary', 'Primary?', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2175, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.add_new', 'Add new', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2176, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.or', 'Or', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2177, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.change_primary_store', 'change default store locator', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2178, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.other_settings', 'Other settings', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2179, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.other_settings_description', 'Settings for cart, review...', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2180, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_cart', 'Enable shopping cart?', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2181, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_tax', 'Enable tax?', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2182, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.display_product_price_including_taxes', 'Display product price including taxes?', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2183, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_review', 'Enable review?', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2184, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_quick_buy_button', 'Enable quick buy button?', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2185, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.quick_buy_target', 'Quick buy target page?', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2186, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.checkout_page', 'Checkout page', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2187, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.cart_page', 'Cart page', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2188, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.add_location', 'Add location', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2189, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.edit_location', 'Edit location', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2190, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.delete_location', 'Delete location', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2191, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.change_primary_location', 'Change primary location', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2192, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.delete_location_confirmation', 'Are you sure you want to delete this location? This action cannot be undo.', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2193, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.save_location', 'Save location', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2194, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.accept', 'Accept', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2195, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.select_country', 'Select country', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2196, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.zip_code_enabled', 'Enable Zip Code?', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2197, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.thousands_separator', 'Thousands separator', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2198, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.decimal_separator', 'Decimal separator', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2199, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_period', 'Period (.)', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2200, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_comma', 'Comma (,)', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2201, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.separator_space', 'Space ( )', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2202, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.available_countries', 'Available countries', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2203, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.all', 'All', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2204, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.verify_customer_email', 'Verify customer\'s email?', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2205, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.minimum_order_amount', 'Minimum order amount to place an order (:currency).', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2206, 0, 'en', 'plugins/ecommerce/ecommerce', 'setting.enable_guest_checkout', 'Enable guest checkout?', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2207, 0, 'en', 'plugins/ecommerce/ecommerce', 'store_address', 'Store address', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2208, 0, 'en', 'plugins/ecommerce/ecommerce', 'store_phone', 'Store phone', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2209, 0, 'en', 'plugins/ecommerce/ecommerce', 'order_id', 'Order ID', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2210, 0, 'en', 'plugins/ecommerce/ecommerce', 'order_token', 'Order token', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2211, 0, 'en', 'plugins/ecommerce/ecommerce', 'customer_name', 'Customer name', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2212, 0, 'en', 'plugins/ecommerce/ecommerce', 'customer_email', 'Customer email', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2213, 0, 'en', 'plugins/ecommerce/ecommerce', 'customer_phone', 'Customer phone', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2214, 0, 'en', 'plugins/ecommerce/ecommerce', 'customer_address', 'Customer address', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2215, 0, 'en', 'plugins/ecommerce/ecommerce', 'product_list', 'List products in order', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2216, 0, 'en', 'plugins/ecommerce/ecommerce', 'payment_detail', 'Payment detail', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2217, 0, 'en', 'plugins/ecommerce/ecommerce', 'shipping_method', 'Shipping method', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2218, 0, 'en', 'plugins/ecommerce/ecommerce', 'payment_method', 'Payment method', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2219, 0, 'en', 'plugins/ecommerce/ecommerce', 'standard_and_format', 'Standard & Format', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2220, 0, 'en', 'plugins/ecommerce/ecommerce', 'standard_and_format_description', 'Standards and formats are used to calculate things like product prices, shipping weights, and order times.', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2221, 0, 'en', 'plugins/ecommerce/ecommerce', 'change_order_format', 'Edit order code format (optional)', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2222, 0, 'en', 'plugins/ecommerce/ecommerce', 'change_order_format_description', 'The default order code starts at: number. You can change the start or end string to create the order code you want, for example \"DH-: number\" or \": number-A\"', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2223, 0, 'en', 'plugins/ecommerce/ecommerce', 'start_with', 'Start with', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2224, 0, 'en', 'plugins/ecommerce/ecommerce', 'end_with', 'End with', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2225, 0, 'en', 'plugins/ecommerce/ecommerce', 'order_will_be_shown', 'Your order code will be shown', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2226, 0, 'en', 'plugins/ecommerce/ecommerce', 'weight_unit', 'Unit of weight', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2227, 0, 'en', 'plugins/ecommerce/ecommerce', 'height_unit', 'Unit length / height', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2228, 0, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.name', 'Ecommerce', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2229, 0, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.description', 'Theme options for Ecommerce', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2230, 0, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.number_products_per_page', 'Number of products per page', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2231, 0, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.number_of_cross_sale_product', 'Number of cross sale products in product detail page', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2232, 0, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.max_price_filter', 'Maximum price to filter', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2233, 0, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.logo_in_the_checkout_page', 'Logo in the checkout page (Default is the main logo)', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2234, 0, 'en', 'plugins/ecommerce/ecommerce', 'theme_options.logo_in_invoices', 'Logo in invoices (Default is the main logo)', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2235, 0, 'en', 'plugins/ecommerce/email', 'customer_new_order_title', 'Order confirmation', '2021-07-26 04:16:49', '2021-07-26 04:17:15'),
(2236, 0, 'en', 'plugins/ecommerce/email', 'customer_new_order_description', 'Send email confirmation to customer when an order placed', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2237, 0, 'en', 'plugins/ecommerce/email', 'order_cancellation_title', 'Order cancellation', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2238, 0, 'en', 'plugins/ecommerce/email', 'order_cancellation_description', 'Send to custom when they cancelled order', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2239, 0, 'en', 'plugins/ecommerce/email', 'delivery_confirmation_title', 'Delivering confirmation', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2240, 0, 'en', 'plugins/ecommerce/email', 'delivery_confirmation_description', 'Send to customer when order is delivering', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2241, 0, 'en', 'plugins/ecommerce/email', 'admin_new_order_title', 'Notice about new order', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2242, 0, 'en', 'plugins/ecommerce/email', 'admin_new_order_description', 'Send to administrators when an order placed', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2243, 0, 'en', 'plugins/ecommerce/email', 'order_confirmation_title', 'Order confirmation', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2244, 0, 'en', 'plugins/ecommerce/email', 'order_confirmation_description', 'Send to customer when they order was confirmed by admins', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2245, 0, 'en', 'plugins/ecommerce/email', 'payment_confirmation_title', 'Payment confirmation', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2246, 0, 'en', 'plugins/ecommerce/email', 'payment_confirmation_description', 'Send to customer when their payment was confirmed', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2247, 0, 'en', 'plugins/ecommerce/email', 'order_recover_title', 'Incomplete order', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2248, 0, 'en', 'plugins/ecommerce/email', 'order_recover_description', 'Send to custom to remind them about incomplete orders', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2249, 0, 'en', 'plugins/ecommerce/email', 'view_order', 'View order', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2250, 0, 'en', 'plugins/ecommerce/email', 'link_go_to_our_shop', 'or <a href=\":link\">Go to our shop</a>', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2251, 0, 'en', 'plugins/ecommerce/email', 'order_number', 'Order number: <strong>:order_id</strong>', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2252, 0, 'en', 'plugins/ecommerce/email', 'order_information', 'Order information:', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2253, 0, 'en', 'plugins/ecommerce/flash-sale', 'name', 'Flash sales', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2254, 0, 'en', 'plugins/ecommerce/flash-sale', 'create', 'New flash sale', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2255, 0, 'en', 'plugins/ecommerce/flash-sale', 'edit', 'Edit flash sale', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2256, 0, 'en', 'plugins/ecommerce/flash-sale', 'products', 'Products', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2257, 0, 'en', 'plugins/ecommerce/messages', 'cart.add_product_success', 'Add product :product to cart successfully!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2258, 0, 'en', 'plugins/ecommerce/messages', 'cart.update_cart_success', 'Update cart successfully!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2259, 0, 'en', 'plugins/ecommerce/messages', 'cart.remove_cart_success', 'Remove item from cart successfully!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2260, 0, 'en', 'plugins/ecommerce/messages', 'cart.empty_cart_success', 'Empty cart successfully!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2261, 0, 'en', 'plugins/ecommerce/messages', 'cart.product_not_found', 'This product is out of stock or not exists!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2262, 0, 'en', 'plugins/ecommerce/messages', 'cart.product_is_out_of_stock', 'Product :product is out of stock!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2263, 0, 'en', 'plugins/ecommerce/messages', 'order.customer_cancel_error', 'The order is delivering or completed', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2264, 0, 'en', 'plugins/ecommerce/messages', 'order.customer_cancel_success', 'You do cancel the order successful', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2265, 0, 'en', 'plugins/ecommerce/order', 'statuses.pending', 'Pending', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2266, 0, 'en', 'plugins/ecommerce/order', 'statuses.processing', 'Processing', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2267, 0, 'en', 'plugins/ecommerce/order', 'statuses.delivering', 'Delivering', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2268, 0, 'en', 'plugins/ecommerce/order', 'statuses.delivered', 'Delivered', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2269, 0, 'en', 'plugins/ecommerce/order', 'statuses.completed', 'Completed', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2270, 0, 'en', 'plugins/ecommerce/order', 'statuses.canceled', 'Canceled', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2271, 0, 'en', 'plugins/ecommerce/order', 'name', 'Orders', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2272, 0, 'en', 'plugins/ecommerce/order', 'create', 'Create an order', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2273, 0, 'en', 'plugins/ecommerce/order', 'customer.messages.cancel_error', 'The order is delivering or completed', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2274, 0, 'en', 'plugins/ecommerce/order', 'customer.messages.cancel_success', 'You do cancel the order successful', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2275, 0, 'en', 'plugins/ecommerce/order', 'incomplete_order', 'Incomplete orders', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2276, 0, 'en', 'plugins/ecommerce/order', 'order_id', 'Order ID', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2277, 0, 'en', 'plugins/ecommerce/order', 'product_id', 'Product ID', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2278, 0, 'en', 'plugins/ecommerce/order', 'customer_label', 'Customer', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2279, 0, 'en', 'plugins/ecommerce/order', 'amount', 'Amount', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2280, 0, 'en', 'plugins/ecommerce/order', 'tax_amount', 'Tax Amount', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2281, 0, 'en', 'plugins/ecommerce/order', 'shipping_amount', 'Shipping amount', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2282, 0, 'en', 'plugins/ecommerce/order', 'payment_method', 'Payment method', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2283, 0, 'en', 'plugins/ecommerce/order', 'payment_status_label', 'Payment status', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2284, 0, 'en', 'plugins/ecommerce/order', 'manage_orders', 'Manage orders', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2285, 0, 'en', 'plugins/ecommerce/order', 'order_intro_description', 'Once your store has orders, this is where you will process and track those orders.', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2286, 0, 'en', 'plugins/ecommerce/order', 'create_new_order', 'Create a new order', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2287, 0, 'en', 'plugins/ecommerce/order', 'manage_incomplete_orders', 'Manage incomplete orders', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2288, 0, 'en', 'plugins/ecommerce/order', 'incomplete_orders_intro_description', 'Incomplete order is an order created when a customer adds a product to the cart, proceeds to fill out the purchase information but does not complete the checkout process.', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2289, 0, 'en', 'plugins/ecommerce/order', 'invoice_for_order', 'Invoice for order', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2290, 0, 'en', 'plugins/ecommerce/order', 'created', 'Created', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2291, 0, 'en', 'plugins/ecommerce/order', 'invoice', 'Invoice', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2292, 0, 'en', 'plugins/ecommerce/order', 'return', 'Return', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2293, 0, 'en', 'plugins/ecommerce/order', 'total_refund_amount', 'Total refund amount', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2294, 0, 'en', 'plugins/ecommerce/order', 'total_amount_can_be_refunded', 'Total amount can be refunded', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2295, 0, 'en', 'plugins/ecommerce/order', 'refund_reason', 'Refund reason (optional)', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2296, 0, 'en', 'plugins/ecommerce/order', 'products', 'product(s)', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2297, 0, 'en', 'plugins/ecommerce/order', 'see_on_maps', 'See on maps', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2298, 0, 'en', 'plugins/ecommerce/order', 'order', 'Order', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2299, 0, 'en', 'plugins/ecommerce/order', 'order_information', 'Order information', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2300, 0, 'en', 'plugins/ecommerce/order', 'create_new_product', 'Create a new product', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2301, 0, 'en', 'plugins/ecommerce/order', 'out_of_stock', 'Out of stock', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2302, 0, 'en', 'plugins/ecommerce/order', 'products_available', 'product(s) available', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2303, 0, 'en', 'plugins/ecommerce/order', 'no_products_found', 'No products found!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2304, 0, 'en', 'plugins/ecommerce/order', 'default', 'Default', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2305, 0, 'en', 'plugins/ecommerce/order', 'system', 'System', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2306, 0, 'en', 'plugins/ecommerce/order', 'new_order_from', 'New order :order_id from :customer', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2307, 0, 'en', 'plugins/ecommerce/order', 'confirmation_email_was_sent_to_customer', 'The email confirmation was sent to customer', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2308, 0, 'en', 'plugins/ecommerce/order', 'address_name_required', 'The name field is required.', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2309, 0, 'en', 'plugins/ecommerce/order', 'address_phone_required', 'The phone field is required.', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2310, 0, 'en', 'plugins/ecommerce/order', 'address_email_required', 'The email field is required.', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2311, 0, 'en', 'plugins/ecommerce/order', 'address_email_unique', 'The customer with that email is existed, please choose other email or login with this email!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2312, 0, 'en', 'plugins/ecommerce/order', 'address_state_required', 'The state field is required.', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2313, 0, 'en', 'plugins/ecommerce/order', 'address_city_required', 'The city field is required.', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2314, 0, 'en', 'plugins/ecommerce/order', 'address_address_required', 'The address field is required.', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2315, 0, 'en', 'plugins/ecommerce/order', 'create_order_from_payment_page', 'Order was created from checkout page', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2316, 0, 'en', 'plugins/ecommerce/order', 'order_was_verified_by', 'Order was verified by %user_name%', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2317, 0, 'en', 'plugins/ecommerce/order', 'new_order', 'New order :order_id', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2318, 0, 'en', 'plugins/ecommerce/order', 'payment_was_confirmed_by', 'Payment was confirmed (amount :money) by %user_name%', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2319, 0, 'en', 'plugins/ecommerce/order', 'edit_order', 'Edit order :code', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2320, 0, 'en', 'plugins/ecommerce/order', 'confirm_order_success', 'Confirm order successfully!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2321, 0, 'en', 'plugins/ecommerce/order', 'error_when_sending_email', 'There is an error when sending email', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2322, 0, 'en', 'plugins/ecommerce/order', 'sent_confirmation_email_success', 'Sent confirmation email successfully!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2323, 0, 'en', 'plugins/ecommerce/order', 'order_was_sent_to_shipping_team', 'Order was sent to shipping team', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2324, 0, 'en', 'plugins/ecommerce/order', 'by_username', 'by %user_name%', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2325, 0, 'en', 'plugins/ecommerce/order', 'shipping_was_created_from', 'Shipping was created from order %order_id%', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2326, 0, 'en', 'plugins/ecommerce/order', 'shipping_was_canceled_success', 'Shipping was cancelled successfully!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2327, 0, 'en', 'plugins/ecommerce/order', 'shipping_was_canceled_by', 'Shipping was cancelled by %user_name%', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2328, 0, 'en', 'plugins/ecommerce/order', 'update_shipping_address_success', 'Update shipping address successfully!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2329, 0, 'en', 'plugins/ecommerce/order', 'order_was_canceled_by', 'Order was cancelled by %user_name%', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2330, 0, 'en', 'plugins/ecommerce/order', 'confirm_payment_success', 'Confirm payment successfully!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2331, 0, 'en', 'plugins/ecommerce/order', 'refund_amount_invalid', 'Refund amount must be lower or equal :price', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2332, 0, 'en', 'plugins/ecommerce/order', 'number_of_products_invalid', 'Number of products refund is not valid!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2333, 0, 'en', 'plugins/ecommerce/order', 'cannot_found_payment_for_this_order', 'Cannot found payment for this order!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2334, 0, 'en', 'plugins/ecommerce/order', 'refund_success_with_price', 'Refund success :price', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2335, 0, 'en', 'plugins/ecommerce/order', 'refund_success', 'Refund successfully!', '2021-07-26 04:16:50', '2021-07-26 04:17:15');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2336, 0, 'en', 'plugins/ecommerce/order', 'order_is_not_existed', 'Order is not existed!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2337, 0, 'en', 'plugins/ecommerce/order', 'reorder', 'Reorder', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2338, 0, 'en', 'plugins/ecommerce/order', 'sent_email_incomplete_order_success', 'Sent email to remind about incomplete order successfully!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2339, 0, 'en', 'plugins/ecommerce/order', 'applied_coupon_success', 'Applied coupon \":code\" successfully!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2340, 0, 'en', 'plugins/ecommerce/order', 'new_order_notice', 'You have <span class=\"bold\">:count</span> New Order(s)', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2341, 0, 'en', 'plugins/ecommerce/order', 'view_all', 'View all', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2342, 0, 'en', 'plugins/ecommerce/order', 'cancel_order', 'Cancel order', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2343, 0, 'en', 'plugins/ecommerce/order', 'order_canceled', 'Order canceled', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2344, 0, 'en', 'plugins/ecommerce/order', 'order_was_canceled_at', 'Order was canceled at', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2345, 0, 'en', 'plugins/ecommerce/order', 'completed', 'Completed', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2346, 0, 'en', 'plugins/ecommerce/order', 'uncompleted', 'Uncompleted', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2347, 0, 'en', 'plugins/ecommerce/order', 'sku', 'SKU', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2348, 0, 'en', 'plugins/ecommerce/order', 'shipping', 'Shipping', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2349, 0, 'en', 'plugins/ecommerce/order', 'warehouse', 'Warehouse', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2350, 0, 'en', 'plugins/ecommerce/order', 'sub_amount', 'Sub amount', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2351, 0, 'en', 'plugins/ecommerce/order', 'discount', 'Discount', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2352, 0, 'en', 'plugins/ecommerce/order', 'coupon_code', 'Coupon code: \":code\"', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2353, 0, 'en', 'plugins/ecommerce/order', 'shipping_fee', 'Shipping fee', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2354, 0, 'en', 'plugins/ecommerce/order', 'tax', 'Tax', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2355, 0, 'en', 'plugins/ecommerce/order', 'total_amount', 'Total amount', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2356, 0, 'en', 'plugins/ecommerce/order', 'paid_amount', 'Paid amount', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2357, 0, 'en', 'plugins/ecommerce/order', 'refunded_amount', 'Refunded amount', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2358, 0, 'en', 'plugins/ecommerce/order', 'amount_received', 'The amount actually received', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2359, 0, 'en', 'plugins/ecommerce/order', 'download_invoice', 'Download invoice', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2360, 0, 'en', 'plugins/ecommerce/order', 'note', 'Note', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2361, 0, 'en', 'plugins/ecommerce/order', 'add_note', 'Add note...', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2362, 0, 'en', 'plugins/ecommerce/order', 'save', 'Save', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2363, 0, 'en', 'plugins/ecommerce/order', 'order_was_confirmed', 'Order was confirmed', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2364, 0, 'en', 'plugins/ecommerce/order', 'confirm_order', 'Confirm order', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2365, 0, 'en', 'plugins/ecommerce/order', 'confirm', 'Confirm', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2366, 0, 'en', 'plugins/ecommerce/order', 'order_was_canceled', 'Order was canceled', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2367, 0, 'en', 'plugins/ecommerce/order', 'pending_payment', 'Pending payment', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2368, 0, 'en', 'plugins/ecommerce/order', 'payment_was_accepted', 'Payment :money was accepted', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2369, 0, 'en', 'plugins/ecommerce/order', 'payment_was_refunded', 'Payment was refunded', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2370, 0, 'en', 'plugins/ecommerce/order', 'confirm_payment', 'Confirm payment', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2371, 0, 'en', 'plugins/ecommerce/order', 'refund', 'Refund', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2372, 0, 'en', 'plugins/ecommerce/order', 'all_products_are_not_delivered', 'All products are not delivered', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2373, 0, 'en', 'plugins/ecommerce/order', 'delivery', 'Delivery', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2374, 0, 'en', 'plugins/ecommerce/order', 'history', 'History', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2375, 0, 'en', 'plugins/ecommerce/order', 'order_number', 'Order number', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2376, 0, 'en', 'plugins/ecommerce/order', 'description', 'Description', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2377, 0, 'en', 'plugins/ecommerce/order', 'from', 'from', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2378, 0, 'en', 'plugins/ecommerce/order', 'status', 'Status', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2379, 0, 'en', 'plugins/ecommerce/order', 'successfully', 'Successfully', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2380, 0, 'en', 'plugins/ecommerce/order', 'transaction_type', 'Transaction\'s type', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2381, 0, 'en', 'plugins/ecommerce/order', 'staff', 'Staff', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2382, 0, 'en', 'plugins/ecommerce/order', 'refund_date', 'Refund date', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2383, 0, 'en', 'plugins/ecommerce/order', 'n_a', 'N\\A', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2384, 0, 'en', 'plugins/ecommerce/order', 'payment_date', 'Payment date', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2385, 0, 'en', 'plugins/ecommerce/order', 'payment_gateway', 'Payment gateway', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2386, 0, 'en', 'plugins/ecommerce/order', 'transaction_amount', 'Transaction amount', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2387, 0, 'en', 'plugins/ecommerce/order', 'resend', 'Resend', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2388, 0, 'en', 'plugins/ecommerce/order', 'orders', 'Orders', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2389, 0, 'en', 'plugins/ecommerce/order', 'shipping_address', 'Shipping address', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2390, 0, 'en', 'plugins/ecommerce/order', 'default_store', 'Default store', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2391, 0, 'en', 'plugins/ecommerce/order', 'update_address', 'Update address', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2392, 0, 'en', 'plugins/ecommerce/order', 'cancel', 'Cancel', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2393, 0, 'en', 'plugins/ecommerce/order', 'have_an_account_already', 'Have an account already', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2394, 0, 'en', 'plugins/ecommerce/order', 'dont_have_an_account_yet', 'Don\'t have an account yet', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2395, 0, 'en', 'plugins/ecommerce/order', 'mark_payment_as_confirmed', 'Mark <span>:method</span> as confirmed', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2396, 0, 'en', 'plugins/ecommerce/order', 'resend_order_confirmation', 'Resend order confirmation', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2397, 0, 'en', 'plugins/ecommerce/order', 'resend_order_confirmation_description', 'Confirmation email will be sent to <strong>:email</strong>?', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2398, 0, 'en', 'plugins/ecommerce/order', 'send', 'Send', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2399, 0, 'en', 'plugins/ecommerce/order', 'update', 'Update', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2400, 0, 'en', 'plugins/ecommerce/order', 'cancel_shipping_confirmation', 'Cancel shipping confirmation?', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2401, 0, 'en', 'plugins/ecommerce/order', 'cancel_shipping_confirmation_description', 'Cancel shipping confirmation?', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2402, 0, 'en', 'plugins/ecommerce/order', 'cancel_order_confirmation', 'Cancel order confirmation?', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2403, 0, 'en', 'plugins/ecommerce/order', 'cancel_order_confirmation_description', 'Are you sure you want to cancel this order? This action cannot rollback', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2404, 0, 'en', 'plugins/ecommerce/order', 'confirm_payment_confirmation_description', 'Processed by <strong>:method</strong>. Did you receive payment outside the system? This payment won\'t be saved into system and cannot be refunded', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2405, 0, 'en', 'plugins/ecommerce/order', 'save_note', 'Save note', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2406, 0, 'en', 'plugins/ecommerce/order', 'order_note', 'Order note', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2407, 0, 'en', 'plugins/ecommerce/order', 'order_note_placeholder', 'Note about order, ex: time or shipping instruction.', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2408, 0, 'en', 'plugins/ecommerce/order', 'order_amount', 'Order amount', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2409, 0, 'en', 'plugins/ecommerce/order', 'additional_information', 'Additional information', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2410, 0, 'en', 'plugins/ecommerce/order', 'notice_about_incomplete_order', 'Notice about incomplete order', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2411, 0, 'en', 'plugins/ecommerce/order', 'notice_about_incomplete_order_description', 'Remind email about uncompleted order will be send to <strong>:email</strong>?', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2412, 0, 'en', 'plugins/ecommerce/order', 'incomplete_order_description_1', 'An incomplete order is when a potential customer places items in their shopping cart, and goes all the way through to the payment page, but then doesn\'t complete the transaction.', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2413, 0, 'en', 'plugins/ecommerce/order', 'incomplete_order_description_2', 'If you have contacted customers and they want to continue buying, you can help them complete their order by following the link:', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2414, 0, 'en', 'plugins/ecommerce/order', 'send_an_email_to_recover_this_order', 'Send an email to customer to recover this order', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2415, 0, 'en', 'plugins/ecommerce/order', 'see_maps', 'See maps', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2416, 0, 'en', 'plugins/ecommerce/order', 'one_or_more_products_dont_have_enough_quantity', 'One or more products don\'t have enough quantity!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2417, 0, 'en', 'plugins/ecommerce/order', 'cannot_send_order_recover_to_mail', 'The email could not be found so it can\'t send a recovery email to the customer.', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2418, 0, 'en', 'plugins/ecommerce/order', 'payment_info', 'Payment Info', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2419, 0, 'en', 'plugins/ecommerce/order', 'payment_method_refund_automatic', 'Your customer will be refunded using :method automatically.', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2420, 0, 'en', 'plugins/ecommerce/payment', 'name', 'Payments', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2421, 0, 'en', 'plugins/ecommerce/payment', 'payment_method', 'Payment methods', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2422, 0, 'en', 'plugins/ecommerce/payment', 'view_payment', 'View payment #', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2423, 0, 'en', 'plugins/ecommerce/payment', 'charge_id', 'Charge ID', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2424, 0, 'en', 'plugins/ecommerce/payment', 'amount', 'Amount', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2425, 0, 'en', 'plugins/ecommerce/payment', 'currency', 'Currency', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2426, 0, 'en', 'plugins/ecommerce/payment', 'user', 'User', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2427, 0, 'en', 'plugins/ecommerce/payment', 'paypal_name_required', 'PayPal\'s name is required!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2428, 0, 'en', 'plugins/ecommerce/payment', 'paypal_name_max', 'PayPal\'s name is too long!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2429, 0, 'en', 'plugins/ecommerce/payment', 'stripe_name_required', 'Stripe\'s name is required!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2430, 0, 'en', 'plugins/ecommerce/payment', 'stripe_name_max', 'Stripe\'s name is too long!', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2431, 0, 'en', 'plugins/ecommerce/payment', 'status', 'Status', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2432, 0, 'en', 'plugins/ecommerce/payment', 'enabled', 'Enabled', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2433, 0, 'en', 'plugins/ecommerce/payment', 'disabled', 'Disabled', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2434, 0, 'en', 'plugins/ecommerce/payment', 'client_id', 'Client ID', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2435, 0, 'en', 'plugins/ecommerce/payment', 'client_secret', 'Client Secret', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2436, 0, 'en', 'plugins/ecommerce/payment', 'mode', 'Mode', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2437, 0, 'en', 'plugins/ecommerce/payment', 'sandbox', 'Sandbox', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2438, 0, 'en', 'plugins/ecommerce/payment', 'live', 'Live', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2439, 0, 'en', 'plugins/ecommerce/payment', 'enable_payment_log', 'Enable Payment Log', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2440, 0, 'en', 'plugins/ecommerce/payment', 'yes', 'Yes', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2441, 0, 'en', 'plugins/ecommerce/payment', 'no', 'No', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2442, 0, 'en', 'plugins/ecommerce/payment', 'client_key', 'Client Key', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2443, 0, 'en', 'plugins/ecommerce/payment', 'stripe', 'Stripe', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2444, 0, 'en', 'plugins/ecommerce/payment', 'paypal', 'PayPal', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2445, 0, 'en', 'plugins/ecommerce/payment', 'action', 'Action', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2446, 0, 'en', 'plugins/ecommerce/payment', 'go_back', 'Go back', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2447, 0, 'en', 'plugins/ecommerce/payment', 'view', 'View', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2448, 0, 'en', 'plugins/ecommerce/payment', 'cash_on_delivery', 'Cash on delivery (COD)', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2449, 0, 'en', 'plugins/ecommerce/payment', 'via_bank_transfer', 'Via bank transfer', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2450, 0, 'en', 'plugins/ecommerce/payment', 'payment_via_cart', 'Payment via card', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2451, 0, 'en', 'plugins/ecommerce/payment', 'card_number', 'Card number', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2452, 0, 'en', 'plugins/ecommerce/payment', 'full_name', 'Full name', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2453, 0, 'en', 'plugins/ecommerce/payment', 'payment_via_paypal', 'Payment via PayPal', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2454, 0, 'en', 'plugins/ecommerce/payment', 'mm_yy', 'MM/YY', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2455, 0, 'en', 'plugins/ecommerce/payment', 'cvc', 'CVC', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2456, 0, 'en', 'plugins/ecommerce/payment', 'details', 'Details', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2457, 0, 'en', 'plugins/ecommerce/payment', 'payer_name', 'Payer Name', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2458, 0, 'en', 'plugins/ecommerce/payment', 'email', 'Email', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2459, 0, 'en', 'plugins/ecommerce/payment', 'phone', 'Phone', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2460, 0, 'en', 'plugins/ecommerce/payment', 'country', 'Country', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2461, 0, 'en', 'plugins/ecommerce/payment', 'shipping_address', 'Shipping Address', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2462, 0, 'en', 'plugins/ecommerce/payment', 'payment_details', 'Payment Details', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2463, 0, 'en', 'plugins/ecommerce/payment', 'card', 'Card', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2464, 0, 'en', 'plugins/ecommerce/payment', 'address', 'Address', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2465, 0, 'en', 'plugins/ecommerce/payment', 'could_not_get_stripe_token', 'Could not get Stripe token to make a charge.', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2466, 0, 'en', 'plugins/ecommerce/payment', 'new_payment', 'Payment for order :id', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2467, 0, 'en', 'plugins/ecommerce/payment', 'payment_id', 'Payment ID', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2468, 0, 'en', 'plugins/ecommerce/prices', 'name', 'Price', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2469, 0, 'en', 'plugins/ecommerce/prices', 'create', 'New price', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2470, 0, 'en', 'plugins/ecommerce/prices', 'edit', 'Edit price', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2471, 0, 'en', 'plugins/ecommerce/prices', 'list', 'List price', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2472, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'name', 'Product attribute sets', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2473, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'create', 'New product attribute set', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2474, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'edit', 'Edit product attribute set', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2475, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'visible_in_categories', 'Visible in categories', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2476, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'product_with_more_version', 'Product with more version', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2477, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'create_a_version', 'Create a version', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2478, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'enabled', 'Enabled', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2479, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'attributes', 'Attributes', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2480, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'price', 'Price', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2481, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'edit_btn', 'Edit', '2021-07-26 04:16:50', '2021-07-26 04:17:15'),
(2482, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'remove_btn', 'Remove', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2483, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'product', 'Product', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2484, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'back_to_product', 'Back to product', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2485, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'save', 'Save', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2486, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'other_existing_versions', 'Other existing versions', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2487, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'version_information', 'Version information', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2488, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_rule', 'Add rule', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2489, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'rules', 'Rules', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2490, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'pricing', 'Pricing', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2491, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'sale_price', 'Sale price', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2492, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'sale_type', 'Sale type', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2493, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'no_sale_price', 'No sale price', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2494, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'always_on_sale', 'Always on sale', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2495, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'limited_time', 'Limited time', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2496, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'from', 'From', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2497, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'to', 'To', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2498, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'storehouse', 'Storehouse', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2499, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'no_storehouse_management', 'No storehouse management', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2500, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'with_storehouse_management', 'With storehouse management', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2501, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'quantity', 'Quantity', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2502, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'allow_customer_checkout_out_of_stock', 'Allow customer checkout when this product out of stock', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2503, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'shipping', 'Shipping', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2504, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'length', 'Length', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2505, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'wide', 'Wide', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2506, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'height', 'Height', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2507, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'weight', 'Weight', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2508, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'version_images', 'Version images', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2509, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_new_image', 'Add new image', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2510, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'attribute_set', 'Attribute set', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2511, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'value', 'Value', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2512, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'dropdown_swatch', 'Dropdown Swatch', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2513, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'visual_swatch', 'Visual Swatch', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2514, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'text_swatch', 'Text Swatch', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2515, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'display_layout', 'Display Layout', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2516, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'searchable', 'Searchable', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2517, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'comparable', 'Comparable', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2518, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'use_in_product_listing', 'Used in product listing', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2519, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'attributes_list', 'Attributes list', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2520, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'is_default', 'Is default?', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2521, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'title', 'Title', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2522, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'slug', 'Slug', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2523, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'color', 'Color', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2524, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'image', 'Image', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2525, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'remove', 'Remove', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2526, 0, 'en', 'plugins/ecommerce/product-attribute-sets', 'add_new_attribute', 'Add new attribute', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2527, 0, 'en', 'plugins/ecommerce/product-attributes', 'name', 'Product attributes', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2528, 0, 'en', 'plugins/ecommerce/product-attributes', 'create', 'New product attribute', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2529, 0, 'en', 'plugins/ecommerce/product-attributes', 'edit', 'Edit product attribute', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2530, 0, 'en', 'plugins/ecommerce/product-attributes', 'intro.title', 'Manage product attributes', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2531, 0, 'en', 'plugins/ecommerce/product-attributes', 'intro.description', 'Product attribute such as color, width, height ...', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2532, 0, 'en', 'plugins/ecommerce/product-attributes', 'intro.button_text', 'Create product attribute', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2533, 0, 'en', 'plugins/ecommerce/product-categories', 'name', 'Product categories', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2534, 0, 'en', 'plugins/ecommerce/product-categories', 'create', 'Create new product category', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2535, 0, 'en', 'plugins/ecommerce/product-categories', 'edit', 'Edit product category', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2536, 0, 'en', 'plugins/ecommerce/product-categories', 'list', 'List product categories', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2537, 0, 'en', 'plugins/ecommerce/product-categories', 'none', 'None', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2538, 0, 'en', 'plugins/ecommerce/product-categories', 'menu', 'Product categories', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2539, 0, 'en', 'plugins/ecommerce/product-categories', 'intro.title', 'Manage product categories', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2540, 0, 'en', 'plugins/ecommerce/product-categories', 'intro.description', 'Such as clothes, shoes, bags, jewelry ...', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2541, 0, 'en', 'plugins/ecommerce/product-categories', 'intro.button_text', 'Create product category', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2542, 0, 'en', 'plugins/ecommerce/product-categories', 'total_products', 'Total products: :total', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2543, 0, 'en', 'plugins/ecommerce/product-collections', 'name', 'Product collections', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2544, 0, 'en', 'plugins/ecommerce/product-collections', 'create', 'New product collection', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2545, 0, 'en', 'plugins/ecommerce/product-collections', 'edit', 'Edit product collection', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2546, 0, 'en', 'plugins/ecommerce/product-collections', 'slug_help_block', 'Label key: <code>:slug</code>. We will use this key for filter.', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2547, 0, 'en', 'plugins/ecommerce/product-collections', 'intro.title', 'Manage product collections', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2548, 0, 'en', 'plugins/ecommerce/product-collections', 'intro.description', 'Group your products into collections to make it easier for customers to find them by category.', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2549, 0, 'en', 'plugins/ecommerce/product-collections', 'intro.button_text', 'Create product collection', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2550, 0, 'en', 'plugins/ecommerce/product-label', 'name', 'Product labels', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2551, 0, 'en', 'plugins/ecommerce/product-label', 'create', 'New product label', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2552, 0, 'en', 'plugins/ecommerce/product-label', 'edit', 'Edit product label', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2553, 0, 'en', 'plugins/ecommerce/product-label', 'color', 'Color', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2554, 0, 'en', 'plugins/ecommerce/product-label', 'color_placeholder', 'Example: #f0f0f0', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2555, 0, 'en', 'plugins/ecommerce/product-tag', 'name', 'Product tags', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2556, 0, 'en', 'plugins/ecommerce/product-tag', 'create', 'New product tag', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2557, 0, 'en', 'plugins/ecommerce/product-tag', 'edit', 'Edit product tag', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2558, 0, 'en', 'plugins/ecommerce/products', 'name', 'Products', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2559, 0, 'en', 'plugins/ecommerce/products', 'create', 'New product', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2560, 0, 'en', 'plugins/ecommerce/products', 'edit', 'Edit product - :name', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2561, 0, 'en', 'plugins/ecommerce/products', 'form.name', 'Name', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2562, 0, 'en', 'plugins/ecommerce/products', 'form.name_placeholder', 'Product\'s name (Maximum 120 characters)', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2563, 0, 'en', 'plugins/ecommerce/products', 'form.description', 'Description', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2564, 0, 'en', 'plugins/ecommerce/products', 'form.description_placeholder', 'Short description for product (Maximum 400 characters)', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2565, 0, 'en', 'plugins/ecommerce/products', 'form.categories', 'Categories', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2566, 0, 'en', 'plugins/ecommerce/products', 'form.content', 'Content', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2567, 0, 'en', 'plugins/ecommerce/products', 'form.price', 'Price', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2568, 0, 'en', 'plugins/ecommerce/products', 'form.quantity', 'Quantity', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2569, 0, 'en', 'plugins/ecommerce/products', 'form.brand', 'Brand', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2570, 0, 'en', 'plugins/ecommerce/products', 'form.width', 'Width', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2571, 0, 'en', 'plugins/ecommerce/products', 'form.height', 'Height', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2572, 0, 'en', 'plugins/ecommerce/products', 'form.weight', 'Weight', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2573, 0, 'en', 'plugins/ecommerce/products', 'form.date.end', 'From date', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2574, 0, 'en', 'plugins/ecommerce/products', 'form.date.start', 'To date', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2575, 0, 'en', 'plugins/ecommerce/products', 'form.image', 'Images', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2576, 0, 'en', 'plugins/ecommerce/products', 'form.collections', 'Product collections', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2577, 0, 'en', 'plugins/ecommerce/products', 'form.labels', 'Labels', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2578, 0, 'en', 'plugins/ecommerce/products', 'form.price_sale', 'Price sale', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2579, 0, 'en', 'plugins/ecommerce/products', 'form.product_type.title', 'Product type', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2580, 0, 'en', 'plugins/ecommerce/products', 'form.product', 'Product', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2581, 0, 'en', 'plugins/ecommerce/products', 'form.total', 'Total', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2582, 0, 'en', 'plugins/ecommerce/products', 'form.sub_total', 'Subtotal', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2583, 0, 'en', 'plugins/ecommerce/products', 'form.shipping_fee', 'Shipping fee', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2584, 0, 'en', 'plugins/ecommerce/products', 'form.discount', 'Discount', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2585, 0, 'en', 'plugins/ecommerce/products', 'form.options', 'Options', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2586, 0, 'en', 'plugins/ecommerce/products', 'form.shipping.height', 'Height', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2587, 0, 'en', 'plugins/ecommerce/products', 'form.shipping.length', 'Length', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2588, 0, 'en', 'plugins/ecommerce/products', 'form.shipping.title', 'Shipping', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2589, 0, 'en', 'plugins/ecommerce/products', 'form.shipping.weight', 'Weight', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2590, 0, 'en', 'plugins/ecommerce/products', 'form.shipping.wide', 'Wide', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2591, 0, 'en', 'plugins/ecommerce/products', 'form.stock.allow_order_when_out', 'Allow customer checkout when this product out of stock', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2592, 0, 'en', 'plugins/ecommerce/products', 'form.stock.in_stock', 'In stock', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2593, 0, 'en', 'plugins/ecommerce/products', 'form.stock.out_stock', 'Out stock', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2594, 0, 'en', 'plugins/ecommerce/products', 'form.stock.title', 'Stock status', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2595, 0, 'en', 'plugins/ecommerce/products', 'form.storehouse.no_storehouse', 'No storehouse management', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2596, 0, 'en', 'plugins/ecommerce/products', 'form.storehouse.storehouse', 'With storehouse management', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2597, 0, 'en', 'plugins/ecommerce/products', 'form.storehouse.title', 'Storehouse', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2598, 0, 'en', 'plugins/ecommerce/products', 'form.storehouse.quantity', 'Quantity', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2599, 0, 'en', 'plugins/ecommerce/products', 'form.tax', 'Tax', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2600, 0, 'en', 'plugins/ecommerce/products', 'form.is_default', 'Is default', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2601, 0, 'en', 'plugins/ecommerce/products', 'form.action', 'Action', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2602, 0, 'en', 'plugins/ecommerce/products', 'form.restock_quantity', 'Restock quantity', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2603, 0, 'en', 'plugins/ecommerce/products', 'form.remain', 'Remain', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2604, 0, 'en', 'plugins/ecommerce/products', 'form.choose_discount_period', 'Choose Discount Period', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2605, 0, 'en', 'plugins/ecommerce/products', 'form.cancel', 'Cancel', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2606, 0, 'en', 'plugins/ecommerce/products', 'form.no_results', 'No results!', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2607, 0, 'en', 'plugins/ecommerce/products', 'form.value', 'Value', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2608, 0, 'en', 'plugins/ecommerce/products', 'form.attribute_name', 'Attribute name', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2609, 0, 'en', 'plugins/ecommerce/products', 'form.add_more_attribute', 'Add more attribute', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2610, 0, 'en', 'plugins/ecommerce/products', 'form.continue', 'Continue', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2611, 0, 'en', 'plugins/ecommerce/products', 'form.add_new_attributes', 'Add new attributes', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2612, 0, 'en', 'plugins/ecommerce/products', 'form.add_new_attributes_description', 'Adding new attributes helps the product to have many options, such as size or color.', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2613, 0, 'en', 'plugins/ecommerce/products', 'form.create_product_variations', ':link to create product variations!', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2614, 0, 'en', 'plugins/ecommerce/products', 'form.tags', 'Tags', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2615, 0, 'en', 'plugins/ecommerce/products', 'form.write_some_tags', 'Write some tags', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2616, 0, 'en', 'plugins/ecommerce/products', 'form.variation_existed', 'This variation is existed.', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2617, 0, 'en', 'plugins/ecommerce/products', 'form.no_attributes_selected', 'No attributes selected!', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2618, 0, 'en', 'plugins/ecommerce/products', 'form.added_variation_success', 'Added variation successfully!', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2619, 0, 'en', 'plugins/ecommerce/products', 'form.updated_variation_success', 'Updated variation successfully!', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2620, 0, 'en', 'plugins/ecommerce/products', 'form.created_all_variation_success', 'Created all variations successfully!', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2621, 0, 'en', 'plugins/ecommerce/products', 'form.updated_product_attributes_success', 'Updated product attributes successfully!', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2622, 0, 'en', 'plugins/ecommerce/products', 'form.stock_status', 'Stock status', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2623, 0, 'en', 'plugins/ecommerce/products', 'form.auto_generate_sku', 'Auto generate SKU?', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2624, 0, 'en', 'plugins/ecommerce/products', 'price', 'Price', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2625, 0, 'en', 'plugins/ecommerce/products', 'quantity', 'Quantity', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2626, 0, 'en', 'plugins/ecommerce/products', 'type', 'Type', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2627, 0, 'en', 'plugins/ecommerce/products', 'image', 'Thumbnail', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2628, 0, 'en', 'plugins/ecommerce/products', 'sku', 'SKU', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2629, 0, 'en', 'plugins/ecommerce/products', 'brand', 'Brand', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2630, 0, 'en', 'plugins/ecommerce/products', 'cannot_delete', 'Product could not be deleted', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2631, 0, 'en', 'plugins/ecommerce/products', 'product_deleted', 'Product deleted', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2632, 0, 'en', 'plugins/ecommerce/products', 'product_collections', 'Product collections', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2633, 0, 'en', 'plugins/ecommerce/products', 'products', 'Products', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2634, 0, 'en', 'plugins/ecommerce/products', 'menu', 'Products', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2635, 0, 'en', 'plugins/ecommerce/products', 'control.button_add_image', 'Add image', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2636, 0, 'en', 'plugins/ecommerce/products', 'price_sale', 'Sale price', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2637, 0, 'en', 'plugins/ecommerce/products', 'price_group_title', 'Manager product price', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2638, 0, 'en', 'plugins/ecommerce/products', 'store_house_group_title', 'Manager store house', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2639, 0, 'en', 'plugins/ecommerce/products', 'shipping_group_title', 'Manager shipping', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2640, 0, 'en', 'plugins/ecommerce/products', 'overview', 'Overview', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2641, 0, 'en', 'plugins/ecommerce/products', 'attributes', 'Attributes', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2642, 0, 'en', 'plugins/ecommerce/products', 'product_has_variations', 'Product has variations', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2643, 0, 'en', 'plugins/ecommerce/products', 'manage_products', 'Manage products', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2644, 0, 'en', 'plugins/ecommerce/products', 'add_new_product', 'Add a new product', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2645, 0, 'en', 'plugins/ecommerce/products', 'start_by_adding_new_product', 'Start by adding new products.', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2646, 0, 'en', 'plugins/ecommerce/products', 'edit_this_product', 'Edit this product', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2647, 0, 'en', 'plugins/ecommerce/products', 'delete', 'Delete', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2648, 0, 'en', 'plugins/ecommerce/products', 'related_products', 'Related products', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2649, 0, 'en', 'plugins/ecommerce/products', 'cross_selling_products', 'Cross-selling products', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2650, 0, 'en', 'plugins/ecommerce/products', 'up_selling_products', 'Up-selling products', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2651, 0, 'en', 'plugins/ecommerce/products', 'grouped_products', 'Grouped products', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2652, 0, 'en', 'plugins/ecommerce/products', 'search_products', 'Search products', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2653, 0, 'en', 'plugins/ecommerce/products', 'selected_products', 'Selected products', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2654, 0, 'en', 'plugins/ecommerce/products', 'edit_variation_item', 'Edit', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2655, 0, 'en', 'plugins/ecommerce/products', 'variations_box_description', 'Click on \"Edit attribute\" to add/remove attributes of variation or click on \"Add new variation\" to add variation.', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2656, 0, 'en', 'plugins/ecommerce/products', 'save_changes', 'Save changes', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2657, 0, 'en', 'plugins/ecommerce/products', 'continue', 'Continue', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2658, 0, 'en', 'plugins/ecommerce/products', 'edit_attribute', 'Edit attribute', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2659, 0, 'en', 'plugins/ecommerce/products', 'select_attribute', 'Select attribute', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2660, 0, 'en', 'plugins/ecommerce/products', 'add_new_variation', 'Add new variation', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2661, 0, 'en', 'plugins/ecommerce/products', 'edit_variation', 'Edit variation', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2662, 0, 'en', 'plugins/ecommerce/products', 'generate_all_variations', 'Generate all variations', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2663, 0, 'en', 'plugins/ecommerce/products', 'generate_all_variations_confirmation', 'Are you sure you want to generate all variations for this product?', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2664, 0, 'en', 'plugins/ecommerce/products', 'delete_variation', 'Delete variation?', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2665, 0, 'en', 'plugins/ecommerce/products', 'delete_variation_confirmation', 'Are you sure you want to delete this variation? This action cannot be undo.', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2666, 0, 'en', 'plugins/ecommerce/products', 'delete_variations_confirmation', 'Are you sure you want to delete those variations? This action cannot be undo.', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2667, 0, 'en', 'plugins/ecommerce/products', 'product_create_validate_name_required', 'Please enter product\'s name', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2668, 0, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price_max', 'The discount must be less than the original price', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2669, 0, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price_required_if', 'Must enter a discount when you want to schedule a promotion', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2670, 0, 'en', 'plugins/ecommerce/products', 'product_create_validate_end_date_after', 'End date must be after start date', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2671, 0, 'en', 'plugins/ecommerce/products', 'product_create_validate_start_date_required_if', 'Discount start date cannot be left blank when scheduling is selected', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2672, 0, 'en', 'plugins/ecommerce/products', 'product_create_validate_sale_price', 'Discounts cannot be left blank when scheduling is selected', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2673, 0, 'en', 'plugins/ecommerce/products', 'stock_statuses.in_stock', 'In stock', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2674, 0, 'en', 'plugins/ecommerce/products', 'stock_statuses.out_of_stock', 'Out of stock', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2675, 0, 'en', 'plugins/ecommerce/products', 'stock_statuses.on_backorder', 'On backorder', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2676, 0, 'en', 'plugins/ecommerce/products', 'stock_status', 'Stock status', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2677, 0, 'en', 'plugins/ecommerce/products', 'processing', 'Processing...', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2678, 0, 'en', 'plugins/ecommerce/products', 'delete_selected_variations', 'Delete selected variations', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2679, 0, 'en', 'plugins/ecommerce/products', 'delete_variations', 'Delete variations', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2680, 0, 'en', 'plugins/ecommerce/reports', 'name', 'Report', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2681, 0, 'en', 'plugins/ecommerce/reports', 'widget.order.title', 'Orders', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2682, 0, 'en', 'plugins/ecommerce/reports', 'count.revenue', 'Today revenue', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2683, 0, 'en', 'plugins/ecommerce/reports', 'count.orders', 'Today orders', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2684, 0, 'en', 'plugins/ecommerce/reports', 'count.products', 'Total products', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2685, 0, 'en', 'plugins/ecommerce/reports', 'count.customers', 'Total customers', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2686, 0, 'en', 'plugins/ecommerce/reports', 'product_name', 'Product name', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2687, 0, 'en', 'plugins/ecommerce/reports', 'quantity', 'Quantity', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2688, 0, 'en', 'plugins/ecommerce/reports', 'revenue_statistics', 'Revenue statistics', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2689, 0, 'en', 'plugins/ecommerce/reports', 'top_selling_products', 'Top selling products in this month', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2690, 0, 'en', 'plugins/ecommerce/reports', 'today', 'Today', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2691, 0, 'en', 'plugins/ecommerce/reports', 'this_week', 'This week', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2692, 0, 'en', 'plugins/ecommerce/reports', 'this_month', 'This month', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2693, 0, 'en', 'plugins/ecommerce/reports', 'this_year', 'This year', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2694, 0, 'en', 'plugins/ecommerce/reports', 'revenue_this_month', 'Revenue this month', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2695, 0, 'en', 'plugins/ecommerce/reports', 'order_processing_this_month', 'order(s) processing in this month', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2696, 0, 'en', 'plugins/ecommerce/reports', 'order_completed_this_month', 'order(s) completed in this month', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2697, 0, 'en', 'plugins/ecommerce/reports', 'product_will_be_out_of_stock', 'product(s) will be out of stock soon', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2698, 0, 'en', 'plugins/ecommerce/reports', 'product_out_of_stock', 'product(s) out of stock', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2699, 0, 'en', 'plugins/ecommerce/review', 'name', 'Reviews', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2700, 0, 'en', 'plugins/ecommerce/review', 'add_review', 'Add review', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2701, 0, 'en', 'plugins/ecommerce/review', 'delete_review', 'Delete review', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2702, 0, 'en', 'plugins/ecommerce/review', 'create_review', 'Create Review', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2703, 0, 'en', 'plugins/ecommerce/review', 'please_select_rating', 'Please select rating', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2704, 0, 'en', 'plugins/ecommerce/review', 'comment', 'Comment', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2705, 0, 'en', 'plugins/ecommerce/review', 'approve', 'Approve', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2706, 0, 'en', 'plugins/ecommerce/review', 'approved', 'Approved', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2707, 0, 'en', 'plugins/ecommerce/review', 'disapprove', 'Disapprove', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2708, 0, 'en', 'plugins/ecommerce/review', 'disapproved', 'Disapproved', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2709, 0, 'en', 'plugins/ecommerce/review', 'product', 'Product', '2021-07-26 04:16:51', '2021-07-26 04:17:15');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2710, 0, 'en', 'plugins/ecommerce/review', 'user', 'User', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2711, 0, 'en', 'plugins/ecommerce/review', 'star', 'Star', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2712, 0, 'en', 'plugins/ecommerce/review', 'status', 'Status', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2713, 0, 'en', 'plugins/ecommerce/review', 'list_review', 'Customer reviews', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2714, 0, 'en', 'plugins/ecommerce/review', 'intro.title', 'Manage customer reviews', '2021-07-26 04:16:51', '2021-07-26 04:17:15'),
(2715, 0, 'en', 'plugins/ecommerce/review', 'intro.description', 'Customer reviews will be shown here and you can manage it to show/hide in product detail page.', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2716, 0, 'en', 'plugins/ecommerce/shipping', 'name', 'Shipping Rules', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2717, 0, 'en', 'plugins/ecommerce/shipping', 'shipping', 'Shipping', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2718, 0, 'en', 'plugins/ecommerce/shipping', 'title', 'Title', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2719, 0, 'en', 'plugins/ecommerce/shipping', 'amount', 'Amount', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2720, 0, 'en', 'plugins/ecommerce/shipping', 'currency', 'Currency', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2721, 0, 'en', 'plugins/ecommerce/shipping', 'enable', 'Enable', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2722, 0, 'en', 'plugins/ecommerce/shipping', 'enabled', 'Enabled', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2723, 0, 'en', 'plugins/ecommerce/shipping', 'disable', 'Disable', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2724, 0, 'en', 'plugins/ecommerce/shipping', 'disabled', 'Disabled', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2725, 0, 'en', 'plugins/ecommerce/shipping', 'create_shipping', 'Create a shipping', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2726, 0, 'en', 'plugins/ecommerce/shipping', 'edit_shipping', 'Edit shipping :code', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2727, 0, 'en', 'plugins/ecommerce/shipping', 'status', 'Status', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2728, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_methods', 'Shipping methods', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2729, 0, 'en', 'plugins/ecommerce/shipping', 'create_shipping_method', 'Create shipping method', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2730, 0, 'en', 'plugins/ecommerce/shipping', 'edit_shipping_method', 'Edit shipping method', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2731, 0, 'en', 'plugins/ecommerce/shipping', 'add_shipping_region', 'Add shipping region', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2732, 0, 'en', 'plugins/ecommerce/shipping', 'country', 'Country', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2733, 0, 'en', 'plugins/ecommerce/shipping', 'state', 'State', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2734, 0, 'en', 'plugins/ecommerce/shipping', 'city', 'City', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2735, 0, 'en', 'plugins/ecommerce/shipping', 'address', 'Address', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2736, 0, 'en', 'plugins/ecommerce/shipping', 'phone', 'Phone', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2737, 0, 'en', 'plugins/ecommerce/shipping', 'email', 'Email', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2738, 0, 'en', 'plugins/ecommerce/shipping', 'zip_code', 'Zip code', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2739, 0, 'en', 'plugins/ecommerce/shipping', 'methods.default', 'Default', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2740, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.not_approved', 'Not approved', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2741, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.approved', 'Approved', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2742, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.picking', 'Picking', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2743, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.delay_picking', 'Delay picking', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2744, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.picked', 'Picked', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2745, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.not_picked', 'Not picked', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2746, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.delivering', 'Delivering', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2747, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.delivered', 'Delivered', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2748, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.not_delivered', 'Not delivered', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2749, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.audited', 'Audited', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2750, 0, 'en', 'plugins/ecommerce/shipping', 'statuses.canceled', 'Canceled', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2751, 0, 'en', 'plugins/ecommerce/shipping', 'cod_statuses.pending', 'Pending', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2752, 0, 'en', 'plugins/ecommerce/shipping', 'cod_statuses.completed', 'Completed', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2753, 0, 'en', 'plugins/ecommerce/shipping', 'delete', 'Delete', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2754, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_rules', 'Shipping Rules', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2755, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_rules_description', 'Rules to calculate shipping fee.', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2756, 0, 'en', 'plugins/ecommerce/shipping', 'select_country', 'Select country', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2757, 0, 'en', 'plugins/ecommerce/shipping', 'add_shipping_rule', 'Add shipping rule', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2758, 0, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_rate', 'Delete shipping rate for area', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2759, 0, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_rate_confirmation', 'Are you sure you want to delete <strong class=\"region-price-item-label\"></strong> from this shipping area?', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2760, 0, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_area', 'Delete shipping area', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2761, 0, 'en', 'plugins/ecommerce/shipping', 'delete_shipping_area_confirmation', 'Are you sure you want to delete shipping area <strong class=\"region-item-label\"></strong>?', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2762, 0, 'en', 'plugins/ecommerce/shipping', 'add_shipping_fee_for_area', 'Add shipping fee for area', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2763, 0, 'en', 'plugins/ecommerce/shipping', 'confirm', 'Confirm', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2764, 0, 'en', 'plugins/ecommerce/shipping', 'save', 'Save', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2765, 0, 'en', 'plugins/ecommerce/shipping', 'greater_than', 'Greater than', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2766, 0, 'en', 'plugins/ecommerce/shipping', 'type', 'Type', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2767, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_rule_name', 'Name of shipping rule', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2768, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_fee', 'Shipping fee', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2769, 0, 'en', 'plugins/ecommerce/shipping', 'cancel', 'Cancel', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2770, 0, 'en', 'plugins/ecommerce/shipping', 'base_on_weight', 'Based on product\'s weight (:unit)', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2771, 0, 'en', 'plugins/ecommerce/shipping', 'base_on_price', 'Based on product\'s price', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2772, 0, 'en', 'plugins/ecommerce/shipping', 'shipment_canceled', 'Shipment was canceled', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2773, 0, 'en', 'plugins/ecommerce/shipping', 'at', 'At', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2774, 0, 'en', 'plugins/ecommerce/shipping', 'cash_on_delivery', 'Cash on delivery (COD)', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2775, 0, 'en', 'plugins/ecommerce/shipping', 'update_shipping_status', 'Update shipping status', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2776, 0, 'en', 'plugins/ecommerce/shipping', 'update_cod_status', 'Update COD status', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2777, 0, 'en', 'plugins/ecommerce/shipping', 'history', 'History', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2778, 0, 'en', 'plugins/ecommerce/shipping', 'shipment_information', 'Shipment information', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2779, 0, 'en', 'plugins/ecommerce/shipping', 'order_number', 'Order number', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2780, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_method', 'Shipping method', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2781, 0, 'en', 'plugins/ecommerce/shipping', 'select_shipping_method', 'Select shipping method', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2782, 0, 'en', 'plugins/ecommerce/shipping', 'cod_status', 'COD status', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2783, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_status', 'Shipping status', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2784, 0, 'en', 'plugins/ecommerce/shipping', 'customer_information', 'Customer information', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2785, 0, 'en', 'plugins/ecommerce/shipping', 'sku', 'SKU', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2786, 0, 'en', 'plugins/ecommerce/shipping', 'change_status_confirm_title', 'Confirm <span class=\"shipment-status-label\"></span> ?', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2787, 0, 'en', 'plugins/ecommerce/shipping', 'change_status_confirm_description', 'Are you sure you want to confirm <span class=\"shipment-status-label\"></span> for this shipment?', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2788, 0, 'en', 'plugins/ecommerce/shipping', 'accept', 'Accept', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2789, 0, 'en', 'plugins/ecommerce/shipping', 'weight_unit', 'Weight (:unit)', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2790, 0, 'en', 'plugins/ecommerce/shipping', 'updated_at', 'Last Update', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2791, 0, 'en', 'plugins/ecommerce/shipping', 'cod_amount', 'Cash on delivery amount (COD)', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2792, 0, 'en', 'plugins/ecommerce/shipping', 'cancel_shipping', 'Cancel shipping', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2793, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_address', 'Shipping address', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2794, 0, 'en', 'plugins/ecommerce/shipping', 'packages', 'Packages', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2795, 0, 'en', 'plugins/ecommerce/shipping', 'edit', 'Edit', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2796, 0, 'en', 'plugins/ecommerce/shipping', 'fee', 'Fee', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2797, 0, 'en', 'plugins/ecommerce/shipping', 'note', 'Note', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2798, 0, 'en', 'plugins/ecommerce/shipping', 'finish', 'Finish', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2799, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_fee_cod', 'Shipping fee/COD', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2800, 0, 'en', 'plugins/ecommerce/shipping', 'send_confirmation_email_to_customer', 'Send confirmation email to customer', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2801, 0, 'en', 'plugins/ecommerce/shipping', 'form_name', 'Name', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2802, 0, 'en', 'plugins/ecommerce/shipping', 'changed_shipping_status', 'Changed status of shipping to : :status . Updated by: %user_name%', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2803, 0, 'en', 'plugins/ecommerce/shipping', 'order_confirmed_by', 'Order confirmed by %user_name%', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2804, 0, 'en', 'plugins/ecommerce/shipping', 'shipping_canceled_by', 'Shipping is cancelled by %user_name%', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2805, 0, 'en', 'plugins/ecommerce/shipping', 'update_shipping_status_success', 'Update shipping status successfully!', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2806, 0, 'en', 'plugins/ecommerce/shipping', 'update_cod_status_success', 'Updated COD status of shipping successfully!', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2807, 0, 'en', 'plugins/ecommerce/shipping', 'updated_cod_status_by', 'Updated COD status to :status . Updated by: %user_name%', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2808, 0, 'en', 'plugins/ecommerce/shipping', 'all', 'All', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2809, 0, 'en', 'plugins/ecommerce/shipping', 'error_when_adding_new_region', 'There is an error when adding new region!', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2810, 0, 'en', 'plugins/ecommerce/shipping', 'delivery', 'Delivery', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2811, 0, 'en', 'plugins/ecommerce/shipping', 'adjustment_price_of', 'Adjustment price of :key', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2812, 0, 'en', 'plugins/ecommerce/store-locator', 'name', 'Store locators', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2813, 0, 'en', 'plugins/ecommerce/store-locator', 'description', 'This address will appear on your invoice and will be used to calculate your shipping price.', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2814, 0, 'en', 'plugins/ecommerce/store-locator', 'shop_name', 'Shop name', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2815, 0, 'en', 'plugins/ecommerce/store-locator', 'phone', 'Phone', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2816, 0, 'en', 'plugins/ecommerce/store-locator', 'email', 'Email', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2817, 0, 'en', 'plugins/ecommerce/store-locator', 'state', 'State', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2818, 0, 'en', 'plugins/ecommerce/store-locator', 'city', 'City', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2819, 0, 'en', 'plugins/ecommerce/store-locator', 'country', 'Country', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2820, 0, 'en', 'plugins/ecommerce/store-locator', 'address', 'Address', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2821, 0, 'en', 'plugins/ecommerce/store-locator', 'primary_store_is', 'Primary store is', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2822, 0, 'en', 'plugins/ecommerce/store-locator', 'store_name', 'Store name', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2823, 0, 'en', 'plugins/ecommerce/store-locator', 'select_country', 'Select country...', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2824, 0, 'en', 'plugins/ecommerce/store-locator', 'default_shipping_location', 'Default shipping location', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2825, 0, 'en', 'plugins/ecommerce/store-locator', 'default_store', 'Default store', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2826, 0, 'en', 'plugins/ecommerce/tax', 'name', 'Taxes', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2827, 0, 'en', 'plugins/ecommerce/tax', 'create', 'Create a tax', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2828, 0, 'en', 'plugins/ecommerce/tax', 'edit', 'Edit tax :title', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2829, 0, 'en', 'plugins/ecommerce/tax', 'title', 'Title', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2830, 0, 'en', 'plugins/ecommerce/tax', 'percentage', 'Percentage %', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2831, 0, 'en', 'plugins/ecommerce/tax', 'priority', 'Priority', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(2832, 0, 'en', 'plugins/ecommerce/tax', 'select_tax', '-- select --', '2021-07-26 04:16:52', '2021-07-26 04:17:15'),
(3224, 0, 'en', 'plugins/newsletter/newsletter', 'name', 'Newsletters', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3225, 0, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.title', 'Newsletter', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3226, 0, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.description', 'Config newsletter email templates', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3227, 0, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_admin.title', 'Email send to admin', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3228, 0, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_admin.description', 'Template for sending email to admin', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3229, 0, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_user.title', 'Email send to user', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3230, 0, 'en', 'plugins/newsletter/newsletter', 'settings.email.templates.to_user.description', 'Template for sending email to subscriber', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3231, 0, 'en', 'plugins/newsletter/newsletter', 'settings.title', 'Newsletter', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3232, 0, 'en', 'plugins/newsletter/newsletter', 'settings.description', 'Settings for newsletter', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3233, 0, 'en', 'plugins/newsletter/newsletter', 'settings.mailchimp_api_key', 'Mailchimp API Key', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3234, 0, 'en', 'plugins/newsletter/newsletter', 'settings.mailchimp_list_id', 'Mailchimp List ID', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3235, 0, 'en', 'plugins/newsletter/newsletter', 'settings.sendgrid_api_key', 'Sendgrid API Key', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3236, 0, 'en', 'plugins/newsletter/newsletter', 'settings.sendgrid_list_id', 'Sendgrid List ID', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3237, 0, 'en', 'plugins/newsletter/newsletter', 'statuses.subscribed', 'Subscribed', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3238, 0, 'en', 'plugins/newsletter/newsletter', 'statuses.unsubscribed', 'Unsubscribed', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3239, 0, 'en', 'plugins/payment/payment', 'payments', 'Payments', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3240, 0, 'en', 'plugins/payment/payment', 'checkout_success', 'Checkout successfully!', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3241, 0, 'en', 'plugins/payment/payment', 'view_payment', 'View payment #', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3242, 0, 'en', 'plugins/payment/payment', 'charge_id', 'Charge ID', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3243, 0, 'en', 'plugins/payment/payment', 'amount', 'Amount', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3244, 0, 'en', 'plugins/payment/payment', 'currency', 'Currency', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3245, 0, 'en', 'plugins/payment/payment', 'user', 'User', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3246, 0, 'en', 'plugins/payment/payment', 'stripe', 'Stripe', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3247, 0, 'en', 'plugins/payment/payment', 'paypal', 'PayPal', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3248, 0, 'en', 'plugins/payment/payment', 'action', 'Action', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3249, 0, 'en', 'plugins/payment/payment', 'payment_via_card', 'Payment via card', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3250, 0, 'en', 'plugins/payment/payment', 'card_number', 'Card number', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3251, 0, 'en', 'plugins/payment/payment', 'full_name', 'Full name', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3252, 0, 'en', 'plugins/payment/payment', 'payment_via_paypal', 'Payment via PayPal', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3253, 0, 'en', 'plugins/payment/payment', 'mm_yy', 'MM/YY', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3254, 0, 'en', 'plugins/payment/payment', 'cvc', 'CVC', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3255, 0, 'en', 'plugins/payment/payment', 'details', 'Details', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3256, 0, 'en', 'plugins/payment/payment', 'payer_name', 'Payer Name', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3257, 0, 'en', 'plugins/payment/payment', 'email', 'Email', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3258, 0, 'en', 'plugins/payment/payment', 'phone', 'Phone', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3259, 0, 'en', 'plugins/payment/payment', 'country', 'Country', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3260, 0, 'en', 'plugins/payment/payment', 'shipping_address', 'Shipping Address', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3261, 0, 'en', 'plugins/payment/payment', 'payment_details', 'Payment Details', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3262, 0, 'en', 'plugins/payment/payment', 'card', 'Card', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3263, 0, 'en', 'plugins/payment/payment', 'address', 'Address', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3264, 0, 'en', 'plugins/payment/payment', 'could_not_get_stripe_token', 'Could not get Stripe token to make a charge.', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3265, 0, 'en', 'plugins/payment/payment', 'payment_id', 'Payment ID', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3266, 0, 'en', 'plugins/payment/payment', 'payment_methods', 'Payment methods', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3267, 0, 'en', 'plugins/payment/payment', 'transactions', 'Transactions', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3268, 0, 'en', 'plugins/payment/payment', 'payment_methods_description', 'Setup payment methods for website', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3269, 0, 'en', 'plugins/payment/payment', 'paypal_description', 'Customer can buy product and pay directly via PayPal', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3270, 0, 'en', 'plugins/payment/payment', 'use', 'Use', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3271, 0, 'en', 'plugins/payment/payment', 'stripe_description', 'Customer can buy product and pay directly using Visa, Credit card via Stripe', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3272, 0, 'en', 'plugins/payment/payment', 'edit', 'Edit', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3273, 0, 'en', 'plugins/payment/payment', 'settings', 'Settings', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3274, 0, 'en', 'plugins/payment/payment', 'activate', 'Activate', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3275, 0, 'en', 'plugins/payment/payment', 'deactivate', 'Deactivate', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3276, 0, 'en', 'plugins/payment/payment', 'update', 'Update', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3277, 0, 'en', 'plugins/payment/payment', 'configuration_instruction', 'Configuration instruction for :name', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3278, 0, 'en', 'plugins/payment/payment', 'configuration_requirement', 'To use :name, you need', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3279, 0, 'en', 'plugins/payment/payment', 'service_registration', 'Register with :name', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3280, 0, 'en', 'plugins/payment/payment', 'after_service_registration_msg', 'After registration at :name, you will have Client ID, Client Secret', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3281, 0, 'en', 'plugins/payment/payment', 'enter_client_id_and_secret', 'Enter Client ID, Secret into the box in right hand', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3282, 0, 'en', 'plugins/payment/payment', 'method_name', 'Method name', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3283, 0, 'en', 'plugins/payment/payment', 'please_provide_information', 'Please provide information', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3284, 0, 'en', 'plugins/payment/payment', 'client_id', 'Client ID', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3285, 0, 'en', 'plugins/payment/payment', 'client_secret', 'Client Secret', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3286, 0, 'en', 'plugins/payment/payment', 'secret', 'Secret', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3287, 0, 'en', 'plugins/payment/payment', 'stripe_key', 'Stripe Public Key', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3288, 0, 'en', 'plugins/payment/payment', 'stripe_secret', 'Stripe Private Key', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3289, 0, 'en', 'plugins/payment/payment', 'stripe_after_service_registration_msg', 'After registration at :name, you will have Public, Secret keys', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3290, 0, 'en', 'plugins/payment/payment', 'stripe_enter_client_id_and_secret', 'Enter Public, Secret keys into the box in right hand', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3291, 0, 'en', 'plugins/payment/payment', 'pay_online_via', 'Pay online via :name', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3292, 0, 'en', 'plugins/payment/payment', 'sandbox_mode', 'Sandbox mode', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3293, 0, 'en', 'plugins/payment/payment', 'deactivate_payment_method', 'Deactivate payment method', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3294, 0, 'en', 'plugins/payment/payment', 'deactivate_payment_method_description', 'Do you really want to deactivate this payment method?', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3295, 0, 'en', 'plugins/payment/payment', 'agree', 'Agree', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3296, 0, 'en', 'plugins/payment/payment', 'name', 'Payments', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3297, 0, 'en', 'plugins/payment/payment', 'create', 'New payment', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3298, 0, 'en', 'plugins/payment/payment', 'go_back', 'Go back', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3299, 0, 'en', 'plugins/payment/payment', 'information', 'Information', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3300, 0, 'en', 'plugins/payment/payment', 'methods.paypal', 'PayPal', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3301, 0, 'en', 'plugins/payment/payment', 'methods.stripe', 'Stripe', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3302, 0, 'en', 'plugins/payment/payment', 'methods.cod', 'Cash on delivery (COD)', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3303, 0, 'en', 'plugins/payment/payment', 'methods.bank_transfer', 'Bank transfer', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3304, 0, 'en', 'plugins/payment/payment', 'statuses.pending', 'Pending', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3305, 0, 'en', 'plugins/payment/payment', 'statuses.completed', 'Completed', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3306, 0, 'en', 'plugins/payment/payment', 'statuses.refunding', 'Refunding', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3307, 0, 'en', 'plugins/payment/payment', 'statuses.refunded', 'Refunded', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3308, 0, 'en', 'plugins/payment/payment', 'statuses.fraud', 'Fraud', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3309, 0, 'en', 'plugins/payment/payment', 'statuses.failed', 'Failed', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3310, 0, 'en', 'plugins/payment/payment', 'payment_methods_instruction', 'Guide customers to pay directly. You can choose to pay by delivery or bank transfer', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3311, 0, 'en', 'plugins/payment/payment', 'payment_method_description', 'Payment guide - (Displayed on the notice of successful purchase and payment page)', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3312, 0, 'en', 'plugins/payment/payment', 'payment_via_cod', 'Cash on delivery (COD)', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3313, 0, 'en', 'plugins/payment/payment', 'payment_via_bank_transfer', 'Bank transfer', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3314, 0, 'en', 'plugins/payment/payment', 'payment_pending', 'Checkout successfully. Your payment is pending and will be checked by our staff.', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3315, 0, 'en', 'plugins/payment/payment', 'created_at', 'Created At', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3316, 0, 'en', 'plugins/payment/payment', 'payment_channel', 'Payment Channel', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3317, 0, 'en', 'plugins/payment/payment', 'total', 'Total', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3318, 0, 'en', 'plugins/payment/payment', 'status', 'Status', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3319, 0, 'en', 'plugins/payment/payment', 'default_payment_method', 'Default payment method', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3320, 0, 'en', 'plugins/payment/payment', 'turn_off_success', 'Turn off payment method successfully!', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3321, 0, 'en', 'plugins/payment/payment', 'saved_payment_method_success', 'Saved payment method successfully!', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3322, 0, 'en', 'plugins/payment/payment', 'saved_payment_settings_success', 'Saved payment settings successfully!', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3323, 0, 'en', 'plugins/payment/payment', 'payment_name', 'Name', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3324, 0, 'en', 'plugins/payment/payment', 'callback_url', 'Callback URL', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3325, 0, 'en', 'plugins/payment/payment', 'return_url', 'Return URL', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3326, 0, 'en', 'plugins/payment/payment', 'payment_not_found', 'Payment not found!', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3327, 0, 'en', 'plugins/payment/payment', 'refunds.title', 'Refunds', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3328, 0, 'en', 'plugins/payment/payment', 'refunds.id', 'ID', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3329, 0, 'en', 'plugins/payment/payment', 'refunds.breakdowns', 'Breakdowns', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3330, 0, 'en', 'plugins/payment/payment', 'refunds.gross_amount', 'Gross amount', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3331, 0, 'en', 'plugins/payment/payment', 'refunds.paypal_fee', 'PayPal fee', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3332, 0, 'en', 'plugins/payment/payment', 'refunds.net_amount', 'Net amount', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3333, 0, 'en', 'plugins/payment/payment', 'refunds.total_refunded_amount', 'Total refunded amount', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3334, 0, 'en', 'plugins/payment/payment', 'refunds.create_time', 'Create time', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3335, 0, 'en', 'plugins/payment/payment', 'refunds.update_time', 'Update time', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3336, 0, 'en', 'plugins/payment/payment', 'refunds.status', 'Status', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3337, 0, 'en', 'plugins/payment/payment', 'view_response_source', 'View response source', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3338, 0, 'en', 'plugins/payment/payment', 'status_is_not_completed', 'Status is not COMPLETED', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3339, 0, 'en', 'plugins/payment/payment', 'cannot_found_capture_id', 'Can not found capture id with payment detail', '2021-07-26 04:16:54', '2021-07-26 04:17:15'),
(3421, 0, 'en', 'plugins/simple-slider/simple-slider', 'create', 'New slider', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3422, 0, 'en', 'plugins/simple-slider/simple-slider', 'edit', 'Edit slider', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3423, 0, 'en', 'plugins/simple-slider/simple-slider', 'menu', 'Simple sliders', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3424, 0, 'en', 'plugins/simple-slider/simple-slider', 'settings.title', 'Simple sliders', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3425, 0, 'en', 'plugins/simple-slider/simple-slider', 'settings.description', 'Settings for Simple sliders', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3426, 0, 'en', 'plugins/simple-slider/simple-slider', 'settings.using_assets', 'Using default assets?', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3427, 0, 'en', 'plugins/simple-slider/simple-slider', 'settings.using_assets_description', 'If using assets option is enabled then below scripts will be auto added to front site.', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3428, 0, 'en', 'plugins/simple-slider/simple-slider', 'add_new', 'Add new', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3429, 0, 'en', 'plugins/simple-slider/simple-slider', 'save_sorting', 'Save sorting', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3430, 0, 'en', 'plugins/simple-slider/simple-slider', 'key', 'Key', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3431, 0, 'en', 'plugins/simple-slider/simple-slider', 'slide_items', 'Slide Items', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3432, 0, 'en', 'plugins/simple-slider/simple-slider', 'update_slide_position_success', 'Updated slide position successfully!', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3433, 0, 'en', 'plugins/simple-slider/simple-slider', 'create_new_slide', 'Create a new slide', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3434, 0, 'en', 'plugins/simple-slider/simple-slider', 'edit_slide', 'Edit slide #:id', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3435, 0, 'en', 'plugins/simple-slider/simple-slider', 'simple_slider_shortcode_name', 'Simple Slider', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3436, 0, 'en', 'plugins/simple-slider/simple-slider', 'simple_slider_shortcode_description', 'Add a simple slider', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3437, 0, 'en', 'plugins/simple-slider/simple-slider', 'select_slider', 'Select a slider', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3438, 0, 'en', 'plugins/social-login/social-login', 'settings.title', 'Social Login settings', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3439, 0, 'en', 'plugins/social-login/social-login', 'settings.description', 'Configure social login options', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3440, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.title', 'Facebook login settings', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3441, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.description', 'Enable/disable & configure app credentials for Facebook login', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3442, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_id', 'App ID', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3443, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3444, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.helper', 'Please go to https://developers.facebook.com to create new app update App ID, App Secret. Callback URL is :callback', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3445, 0, 'en', 'plugins/social-login/social-login', 'settings.google.title', 'Google login settings', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3446, 0, 'en', 'plugins/social-login/social-login', 'settings.google.description', 'Enable/disable & configure app credentials for Google login', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3447, 0, 'en', 'plugins/social-login/social-login', 'settings.google.app_id', 'App ID', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3448, 0, 'en', 'plugins/social-login/social-login', 'settings.google.app_secret', 'App Secret', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3449, 0, 'en', 'plugins/social-login/social-login', 'settings.google.helper', 'Please go to https://console.developers.google.com/apis/dashboard to create new app update App ID, App Secret. Callback URL is :callback', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3450, 0, 'en', 'plugins/social-login/social-login', 'settings.github.title', 'Github login settings', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3451, 0, 'en', 'plugins/social-login/social-login', 'settings.github.description', 'Enable/disable & configure app credentials for Github login', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3452, 0, 'en', 'plugins/social-login/social-login', 'settings.github.app_id', 'App ID', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3453, 0, 'en', 'plugins/social-login/social-login', 'settings.github.app_secret', 'App Secret', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3454, 0, 'en', 'plugins/social-login/social-login', 'settings.github.helper', 'Please go to https://github.com/settings/developers to create new app update App ID, App Secret. Callback URL is :callback', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3455, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.title', 'Linkedin login settings', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3456, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.description', 'Enable/disable & configure app credentials for Linkedin login', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3457, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_id', 'App ID', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3458, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_secret', 'App Secret', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3459, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.helper', 'Please go to https://www.linkedin.com/developers/apps/new to create new app update App ID, App Secret. Callback URL is :callback', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3460, 0, 'en', 'plugins/social-login/social-login', 'settings.enable', 'Enable?', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3461, 0, 'en', 'plugins/social-login/social-login', 'menu', 'Social Login', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3462, 0, 'en', 'plugins/testimonial/testimonial', 'name', 'Testimonials', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3463, 0, 'en', 'plugins/testimonial/testimonial', 'create', 'New testimonial', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3464, 0, 'en', 'plugins/testimonial/testimonial', 'edit', 'Edit testimonial', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3465, 0, 'en', 'plugins/testimonial/testimonial', 'company', 'Position/Company', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3470, 0, 'en', 'plugins/testimonials/forms', 'name', 'Customer name', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3471, 0, 'en', 'plugins/testimonials/forms', 'company', 'Company/Working place', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3472, 0, 'en', 'plugins/testimonials/forms', 'avatar', 'Avatar', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3473, 0, 'en', 'plugins/testimonials/forms', 'title', 'Title', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3474, 0, 'en', 'plugins/testimonials/forms', 'content', 'Content', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3475, 0, 'en', 'plugins/testimonials/forms', 'publish', 'Publish', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3476, 0, 'en', 'plugins/testimonials/forms', 'unpublish', 'Unpublish', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3477, 0, 'en', 'plugins/testimonials/testimonials', 'name', 'Testimonials', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3478, 0, 'en', 'plugins/testimonials/testimonials', 'create', 'New testimonials', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3479, 0, 'en', 'plugins/testimonials/testimonials', 'edit', 'Edit testimonials', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3490, 0, 'en', 'plugins/translation/translation', 'translations', 'Translations', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3491, 0, 'en', 'plugins/translation/translation', 'translations_description', 'Translate all words in system.', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3492, 0, 'en', 'plugins/translation/translation', 'export_warning', 'Warning, translations are not visible until they are exported back to the resources/lang file, using \'php artisan cms:translations:export\' command or publish button.', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3493, 0, 'en', 'plugins/translation/translation', 'import_done', 'Done importing, processed :counter items! Reload this page to refresh the groups!', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3494, 0, 'en', 'plugins/translation/translation', 'translation_manager', 'Translations Manager', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3495, 0, 'en', 'plugins/translation/translation', 'done_publishing', 'Done publishing the translations for group', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3496, 0, 'en', 'plugins/translation/translation', 'append_translation', 'Append new translations', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3497, 0, 'en', 'plugins/translation/translation', 'replace_translation', 'Replace existing translations', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3498, 0, 'en', 'plugins/translation/translation', 'import_group', 'Import group', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3499, 0, 'en', 'plugins/translation/translation', 'confirm_publish_group', 'Are you sure you want to publish the translations group \":group\"? This will overwrite existing language files.', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3500, 0, 'en', 'plugins/translation/translation', 'publish_translations', 'Publish translations', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3501, 0, 'en', 'plugins/translation/translation', 'back', 'Back', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3502, 0, 'en', 'plugins/translation/translation', 'edit_title', 'Enter translation', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3503, 0, 'en', 'plugins/translation/translation', 'choose_group_msg', 'Choose a group to display the group translations. If no groups are visible, make sure you have imported the translations.', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3504, 0, 'en', 'plugins/translation/translation', 'choose_a_group', 'Choose a group', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3505, 0, 'en', 'plugins/translation/translation', 'locales', 'Locales', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3506, 0, 'en', 'plugins/translation/translation', 'theme-translations', 'Theme translations', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3507, 0, 'en', 'plugins/translation/translation', 'admin-translations', 'Other translations', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3508, 0, 'en', 'plugins/translation/translation', 'translate_from', 'Translate from', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3509, 0, 'en', 'plugins/translation/translation', 'to', 'to', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3510, 0, 'en', 'plugins/translation/translation', 'no_other_languages', 'No other language to translate!', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3511, 0, 'en', 'plugins/translation/translation', 'edit', 'Edit', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3512, 0, 'en', 'plugins/translation/translation', 'locale', 'Locale', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3513, 0, 'en', 'plugins/translation/translation', 'locale_placeholder', 'Ex: en', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3514, 0, 'en', 'plugins/translation/translation', 'name', 'Name', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3515, 0, 'en', 'plugins/translation/translation', 'default_locale', 'Default locale?', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3516, 0, 'en', 'plugins/translation/translation', 'actions', 'Actions', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3517, 0, 'en', 'plugins/translation/translation', 'choose_language', 'Choose language', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3518, 0, 'en', 'plugins/translation/translation', 'add_new_language', 'Add new language', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3519, 0, 'en', 'plugins/translation/translation', 'select_language', 'Select language', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3520, 0, 'en', 'plugins/translation/translation', 'flag', 'Flag', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3521, 0, 'en', 'plugins/translation/translation', 'folder_is_not_writeable', 'Cannot write files! Folder /resources/lang is not writable. Please chmod to make it writable!', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3522, 0, 'en', 'plugins/translation/translation', 'delete', 'Delete', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3523, 0, 'en', 'plugins/translation/translation', 'confirm_delete_message', 'Do you really want to delete this locale? It will delete all files/folders for this local in /resources/lang!', '2021-07-26 04:16:55', '2021-07-26 04:17:15'),
(3524, 0, 'en', 'plugins/translation/translation', 'download', 'Download', '2021-07-26 04:16:55', '2021-07-26 04:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`) VALUES
(1, 'admin@crackers.com', NULL, '$2y$10$RVGBHAwqJgELH4UAz281S.MWnCyoJ3eVARla8I41rdFlPCK8umWR6', 'qhMOIpIMu2mJn66HzESURBWv1XcRT2558vlLTEdIlOp1wBBxDO9pJ3OdmMhY', '2021-07-02 21:03:29', '2025-02-16 08:15:20', 'Siddarth', 'A S', 'siddarth@1903', NULL, 1, 1, NULL, '2025-02-04 05:59:14');

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) DEFAULT NULL,
  `value` varchar(191) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` varchar(120) NOT NULL,
  `sidebar_id` varchar(120) NOT NULL,
  `theme` varchar(120) NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(1, 'CustomMenuWidget', 'footer_sidebar', 'shopwise', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Useful Links\",\"menu_id\":\"useful-links\"}', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(2, 'CustomMenuWidget', 'footer_sidebar', 'shopwise', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"categories\"}', '2021-07-02 21:03:29', '2021-07-02 21:03:29'),
(3, 'CustomMenuWidget', 'footer_sidebar', 'shopwise', 3, '{\"id\":\"CustomMenuWidget\",\"name\":\"My Account\",\"menu_id\":\"my-account\"}', '2021-07-02 21:03:29', '2021-07-02 21:03:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `ec_brands`
--
ALTER TABLE `ec_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_brands_translations`
--
ALTER TABLE `ec_brands_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_brands_id`);

--
-- Indexes for table `ec_cart`
--
ALTER TABLE `ec_cart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `ec_currencies`
--
ALTER TABLE `ec_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customers`
--
ALTER TABLE `ec_customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_customers_email_unique` (`email`);

--
-- Indexes for table `ec_customer_addresses`
--
ALTER TABLE `ec_customer_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_customer_password_resets`
--
ALTER TABLE `ec_customer_password_resets`
  ADD KEY `ec_customer_password_resets_email_index` (`email`),
  ADD KEY `ec_customer_password_resets_token_index` (`token`);

--
-- Indexes for table `ec_discounts`
--
ALTER TABLE `ec_discounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ec_discounts_code_unique` (`code`);

--
-- Indexes for table `ec_discount_customers`
--
ALTER TABLE `ec_discount_customers`
  ADD PRIMARY KEY (`discount_id`,`customer_id`);

--
-- Indexes for table `ec_discount_products`
--
ALTER TABLE `ec_discount_products`
  ADD PRIMARY KEY (`discount_id`,`product_id`);

--
-- Indexes for table `ec_discount_product_collections`
--
ALTER TABLE `ec_discount_product_collections`
  ADD PRIMARY KEY (`discount_id`,`product_collection_id`);

--
-- Indexes for table `ec_flash_sales`
--
ALTER TABLE `ec_flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_flash_sales_translations`
--
ALTER TABLE `ec_flash_sales_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_flash_sales_id`);

--
-- Indexes for table `ec_grouped_products`
--
ALTER TABLE `ec_grouped_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_orders`
--
ALTER TABLE `ec_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_addresses`
--
ALTER TABLE `ec_order_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_histories`
--
ALTER TABLE `ec_order_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_order_product`
--
ALTER TABLE `ec_order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_products`
--
ALTER TABLE `ec_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_products_translations`
--
ALTER TABLE `ec_products_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_products_id`);

--
-- Indexes for table `ec_product_attributes`
--
ALTER TABLE `ec_product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_attributes_translations`
--
ALTER TABLE `ec_product_attributes_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_attributes_id`);

--
-- Indexes for table `ec_product_attribute_sets`
--
ALTER TABLE `ec_product_attribute_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_attribute_sets_translations`
--
ALTER TABLE `ec_product_attribute_sets_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`);

--
-- Indexes for table `ec_product_categories`
--
ALTER TABLE `ec_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_categories_translations`
--
ALTER TABLE `ec_product_categories_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_categories_id`);

--
-- Indexes for table `ec_product_category_product`
--
ALTER TABLE `ec_product_category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_category_product_category_id_index` (`category_id`),
  ADD KEY `ec_product_category_product_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_collections`
--
ALTER TABLE `ec_product_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_collections_translations`
--
ALTER TABLE `ec_product_collections_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_collections_id`);

--
-- Indexes for table `ec_product_collection_products`
--
ALTER TABLE `ec_product_collection_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  ADD KEY `ec_product_collection_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_cross_sale_relations`
--
ALTER TABLE `ec_product_cross_sale_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_labels`
--
ALTER TABLE `ec_product_labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_labels_translations`
--
ALTER TABLE `ec_product_labels_translations`
  ADD PRIMARY KEY (`lang_code`,`ec_product_labels_id`);

--
-- Indexes for table `ec_product_label_products`
--
ALTER TABLE `ec_product_label_products`
  ADD PRIMARY KEY (`product_label_id`,`product_id`),
  ADD KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  ADD KEY `ec_product_label_products_product_id_index` (`product_id`);

--
-- Indexes for table `ec_product_related_relations`
--
ALTER TABLE `ec_product_related_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_tags`
--
ALTER TABLE `ec_product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_tag_product`
--
ALTER TABLE `ec_product_tag_product`
  ADD PRIMARY KEY (`product_id`,`tag_id`),
  ADD KEY `ec_product_tag_product_product_id_index` (`product_id`),
  ADD KEY `ec_product_tag_product_tag_id_index` (`tag_id`);

--
-- Indexes for table `ec_product_up_sale_relations`
--
ALTER TABLE `ec_product_up_sale_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  ADD KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`);

--
-- Indexes for table `ec_product_variations`
--
ALTER TABLE `ec_product_variations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_variation_items`
--
ALTER TABLE `ec_product_variation_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_with_attribute`
--
ALTER TABLE `ec_product_with_attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_product_with_attribute_set`
--
ALTER TABLE `ec_product_with_attribute_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_reviews`
--
ALTER TABLE `ec_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipments`
--
ALTER TABLE `ec_shipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipment_histories`
--
ALTER TABLE `ec_shipment_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping`
--
ALTER TABLE `ec_shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping_rules`
--
ALTER TABLE `ec_shipping_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_shipping_rule_items`
--
ALTER TABLE `ec_shipping_rule_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_store_locators`
--
ALTER TABLE `ec_store_locators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_taxes`
--
ALTER TABLE `ec_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec_wish_lists`
--
ALTER TABLE `ec_wish_lists`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_reference_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_brands`
--
ALTER TABLE `ec_brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ec_currencies`
--
ALTER TABLE `ec_currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ec_customers`
--
ALTER TABLE `ec_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ec_customer_addresses`
--
ALTER TABLE `ec_customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ec_discounts`
--
ALTER TABLE `ec_discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_flash_sales`
--
ALTER TABLE `ec_flash_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ec_grouped_products`
--
ALTER TABLE `ec_grouped_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_orders`
--
ALTER TABLE `ec_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `ec_order_addresses`
--
ALTER TABLE `ec_order_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `ec_order_histories`
--
ALTER TABLE `ec_order_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `ec_order_product`
--
ALTER TABLE `ec_order_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `ec_products`
--
ALTER TABLE `ec_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `ec_product_attributes`
--
ALTER TABLE `ec_product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ec_product_attribute_sets`
--
ALTER TABLE `ec_product_attribute_sets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_product_categories`
--
ALTER TABLE `ec_product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `ec_product_category_product`
--
ALTER TABLE `ec_product_category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `ec_product_collections`
--
ALTER TABLE `ec_product_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_product_collection_products`
--
ALTER TABLE `ec_product_collection_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `ec_product_cross_sale_relations`
--
ALTER TABLE `ec_product_cross_sale_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=587;

--
-- AUTO_INCREMENT for table `ec_product_labels`
--
ALTER TABLE `ec_product_labels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_product_related_relations`
--
ALTER TABLE `ec_product_related_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_product_tags`
--
ALTER TABLE `ec_product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ec_product_up_sale_relations`
--
ALTER TABLE `ec_product_up_sale_relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_product_variations`
--
ALTER TABLE `ec_product_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `ec_product_variation_items`
--
ALTER TABLE `ec_product_variation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `ec_product_with_attribute`
--
ALTER TABLE `ec_product_with_attribute`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `ec_product_with_attribute_set`
--
ALTER TABLE `ec_product_with_attribute_set`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `ec_reviews`
--
ALTER TABLE `ec_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `ec_shipments`
--
ALTER TABLE `ec_shipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ec_shipment_histories`
--
ALTER TABLE `ec_shipment_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `ec_shipping`
--
ALTER TABLE `ec_shipping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_shipping_rules`
--
ALTER TABLE `ec_shipping_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ec_shipping_rule_items`
--
ALTER TABLE `ec_shipping_rule_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_store_locators`
--
ALTER TABLE `ec_store_locators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ec_taxes`
--
ALTER TABLE `ec_taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ec_wish_lists`
--
ALTER TABLE `ec_wish_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=799;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=389;

--
-- AUTO_INCREMENT for table `simple_sliders`
--
ALTER TABLE `simple_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `simple_slider_items`
--
ALTER TABLE `simple_slider_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=575;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3627;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
