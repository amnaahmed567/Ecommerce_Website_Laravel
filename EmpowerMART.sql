-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2024 at 10:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_dashboards`
--

CREATE TABLE `admin_dashboards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `config` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_dashboards`
--

INSERT INTO `admin_dashboards` (`id`, `user_id`, `config`, `created_at`, `updated_at`) VALUES
(1, 2, '[]', '2024-12-29 14:56:49', '2024-12-29 14:56:49'),
(2, 3, '[]', '2024-12-29 15:15:42', '2024-12-29 15:15:42'),
(3, 4, '[]', '2024-12-29 15:22:22', '2024-12-29 15:22:22'),
(4, 5, '[]', '2024-12-29 15:26:23', '2024-12-29 15:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `cover` text DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `cover`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Fruits', 'fruits', NULL, NULL, '2024-12-29 14:57:23', '2024-12-29 14:57:23'),
(2, 'Vegetables', 'vegetables', NULL, NULL, '2024-12-29 15:03:05', '2024-12-29 15:03:05'),
(3, 'Dry Fruit', 'dry-fruit', NULL, NULL, '2024-12-29 15:03:31', '2024-12-29 15:03:31'),
(4, 'Juice', 'juice', NULL, NULL, '2024-12-29 15:03:49', '2024-12-29 15:03:49');

-- --------------------------------------------------------

--
-- Table structure for table `checkouts`
--

CREATE TABLE `checkouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `order_notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Category', 1, 'cade20d6-e08b-4238-8530-02d7fa6dd375', 'photo', '6771a9a14a2c7_360_F_956942184_Cwr3rUoEDwFJQCbhczRmIymOElzS8jtS', '6771a9a14a2c7_360_F_956942184_Cwr3rUoEDwFJQCbhczRmIymOElzS8jtS.jpg', 'image/jpeg', 'public', 'public', 74501, '[]', '[]', '[]', '[]', 1, '2024-12-29 14:57:23', '2024-12-29 14:57:23'),
(2, 'App\\Models\\Product', 1, 'dc51a15d-a564-4041-bc47-ecc6242f42c1', 'gallery', '6771aa3e24cf1_apple', '6771aa3e24cf1_apple.jpg', 'image/jpeg', 'public', 'public', 214863, '[]', '[]', '[]', '[]', 1, '2024-12-29 15:00:05', '2024-12-29 15:00:05'),
(3, 'App\\Models\\Category', 2, '87e9cbea-8d8b-46f7-a571-70076eee4e23', 'photo', '6771aaf4ecf7c_vegetable', '6771aaf4ecf7c_vegetable.png', 'application/octet-stream', 'public', 'public', 56468, '[]', '[]', '[]', '[]', 1, '2024-12-29 15:03:05', '2024-12-29 15:03:05'),
(4, 'App\\Models\\Category', 3, '45216f50-0b6e-42b5-8bb5-f66fc0e43333', 'photo', '6771ab11c610d_dry', '6771ab11c610d_dry.png', 'image/webp', 'public', 'public', 192036, '[]', '[]', '[]', '[]', 1, '2024-12-29 15:03:31', '2024-12-29 15:03:31'),
(5, 'App\\Models\\Category', 4, '8e2d1c8e-cc49-42b9-bbac-948f852d8a94', 'photo', '6771ab22a5e62_juice', '6771ab22a5e62_juice.jpg', 'image/jpeg', 'public', 'public', 77567, '[]', '[]', '[]', '[]', 1, '2024-12-29 15:03:49', '2024-12-29 15:03:49'),
(6, 'App\\Models\\Product', 2, '916be32f-d80d-4eb3-9e08-21f98299cd75', 'gallery', '6771abaed4ef4_banana', '6771abaed4ef4_banana.jpeg', 'image/jpeg', 'public', 'public', 4972, '[]', '[]', '[]', '[]', 1, '2024-12-29 15:06:08', '2024-12-29 15:06:08'),
(7, 'App\\Models\\Product', 3, '607a665b-0cb9-40a4-89fb-c531e2035510', 'gallery', '6771acceca315_pineapple', '6771acceca315_pineapple.jpg', 'image/jpeg', 'public', 'public', 202384, '[]', '[]', '[]', '[]', 1, '2024-12-29 15:10:57', '2024-12-29 15:10:57'),
(8, 'App\\Models\\Product', 4, '46b2249e-4a37-4b74-b389-d88d94438c3f', 'gallery', '6771acf8ef3fd_strawberry', '6771acf8ef3fd_strawberry.jpg', 'image/jpeg', 'public', 'public', 56517, '[]', '[]', '[]', '[]', 1, '2024-12-29 15:11:38', '2024-12-29 15:11:38'),
(9, 'App\\Models\\Product', 5, 'a838bd64-10fb-4c34-bfd0-87d5dec9c736', 'gallery', '6771ad3c7b9ea_grapes', '6771ad3c7b9ea_grapes.jpeg', 'image/jpeg', 'public', 'public', 10929, '[]', '[]', '[]', '[]', 1, '2024-12-29 15:12:46', '2024-12-29 15:12:46'),
(11, 'App\\Models\\Product', 8, '638ca107-3e47-409d-a293-6700e4cc0107', 'gallery', '6771ad7e95269_mango', '6771ad7e95269_mango.jpg', 'image/jpeg', 'public', 'public', 62436, '[]', '[]', '[]', '[]', 1, '2024-12-29 15:13:52', '2024-12-29 15:13:52'),
(12, 'App\\Models\\Product', 9, '3a6f124e-c7df-4d54-9647-6e6d12b166c5', 'gallery', '6771ae6d03ce9_tomato', '6771ae6d03ce9_tomato.jpg', 'image/jpeg', 'public', 'public', 24568, '[]', '[]', '[]', '[]', 1, '2024-12-29 15:17:51', '2024-12-29 15:17:51'),
(13, 'App\\Models\\Product', 10, '6ee6b75d-dcd2-468f-b816-43c8faf47802', 'gallery', '6771aeef3ee4a_cabbage', '6771aeef3ee4a_cabbage.jpg', 'image/jpeg', 'public', 'public', 19970, '[]', '[]', '[]', '[]', 1, '2024-12-29 15:20:00', '2024-12-29 15:20:00'),
(14, 'App\\Models\\Product', 11, 'd236c955-84e8-40ea-a6be-1338486083de', 'gallery', '6771af16382af_eggplant', '6771af16382af_eggplant.jpg', 'image/jpeg', 'public', 'public', 22484, '[]', '[]', '[]', '[]', 1, '2024-12-29 15:20:40', '2024-12-29 15:20:40'),
(15, 'App\\Models\\Product', 12, 'c42fab3a-293a-4d7f-af4c-9a91e1420acb', 'gallery', '6771af487396f_cucumber', '6771af487396f_cucumber.jpg', 'image/jpeg', 'public', 'public', 34862, '[]', '[]', '[]', '[]', 1, '2024-12-29 15:21:29', '2024-12-29 15:21:29'),
(16, 'App\\Models\\Product', 13, 'c63dcfe6-5484-493e-8657-db9101c14b8c', 'gallery', '6771afb185d57_almond', '6771afb185d57_almond.jpg', 'image/jpeg', 'public', 'public', 6950, '[]', '[]', '[]', '[]', 1, '2024-12-29 15:23:15', '2024-12-29 15:23:15'),
(17, 'App\\Models\\Product', 14, 'acf8d216-800e-4cbf-b508-06efab8a48ce', 'gallery', '6771afe2768fd_apricot', '6771afe2768fd_apricot.jpg', 'image/jpeg', 'public', 'public', 4785, '[]', '[]', '[]', '[]', 1, '2024-12-29 15:24:03', '2024-12-29 15:24:03'),
(18, 'App\\Models\\Product', 15, '47270603-2d6d-4c23-aa1e-681a0d85d5a5', 'gallery', '6771b01007a91_anjeer', '6771b01007a91_anjeer.jpg', 'image/jpeg', 'public', 'public', 8620, '[]', '[]', '[]', '[]', 1, '2024-12-29 15:24:50', '2024-12-29 15:24:50'),
(19, 'App\\Models\\Product', 16, '25c5a669-300d-4d1b-a72a-3e8f3a9b862b', 'gallery', '6771b0376a133_pisatchio', '6771b0376a133_pisatchio.jpg', 'image/jpeg', 'public', 'public', 8889, '[]', '[]', '[]', '[]', 1, '2024-12-29 15:25:29', '2024-12-29 15:25:29'),
(20, 'App\\Models\\Product', 17, '009fabce-a6e3-47df-9927-516a06aef7d3', 'gallery', '6771b14f126cd_banana juice', '6771b14f126cd_banana-juice.jpeg', 'image/jpeg', 'public', 'public', 4646, '[]', '[]', '[]', '[]', 1, '2024-12-29 15:30:08', '2024-12-29 15:30:08'),
(21, 'App\\Models\\Product', 18, 'a3b6e8a9-be39-421e-9f23-be6139bf4755', 'gallery', '6771b1755f04c_orange', '6771b1755f04c_orange.jpg', 'image/jpeg', 'public', 'public', 88288, '[]', '[]', '[]', '[]', 1, '2024-12-29 15:30:46', '2024-12-29 15:30:46'),
(22, 'App\\Models\\Product', 19, '9766dbb0-c9f7-4735-b5ad-74b5f1cd3e20', 'gallery', '6771b19a8883d_pomegrnate juice', '6771b19a8883d_pomegrnate-juice.jpg', 'image/jpeg', 'public', 'public', 28412, '[]', '[]', '[]', '[]', 1, '2024-12-29 15:31:24', '2024-12-29 15:31:24'),
(23, 'App\\Models\\Product', 20, 'db1d6c53-f124-4c4a-893c-98522b67190b', 'gallery', '6771b1c7ae2c3_mango', '6771b1c7ae2c3_mango.jpeg', 'image/jpeg', 'public', 'public', 9960, '[]', '[]', '[]', '[]', 1, '2024-12-29 15:32:09', '2024-12-29 15:32:09');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_30_011648_create_categories_table', 1),
(6, '2022_04_19_071658_create_media_table', 1),
(7, '2022_04_27_063355_create_tags_table', 1),
(8, '2022_04_28_210054_create_products_table', 1),
(9, '2022_05_05_055458_create_product_tag_table', 1),
(10, '2022_08_15_055828_create_orders_table', 1),
(11, '2022_08_16_053218_create_order_items_table', 1),
(12, '2022_08_16_053450_create_shipments_table', 1),
(13, '2022_08_16_053945_create_payments_table', 1),
(14, '2024_12_29_131815_create_dashboards_table', 1),
(15, '2024_12_29_131833_add_dashboard_id_foreign_key_to_users_table', 1),
(16, '2024_12_29_153333_create_checkouts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `payment_due` datetime DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `payment_token` varchar(255) DEFAULT NULL,
  `payment_url` varchar(255) DEFAULT NULL,
  `base_total_price` decimal(16,2) DEFAULT 0.00,
  `tax_amount` decimal(16,2) DEFAULT 0.00,
  `tax_percent` decimal(16,2) DEFAULT 0.00,
  `discount_amount` decimal(16,2) DEFAULT 0.00,
  `discount_percent` decimal(16,2) DEFAULT 0.00,
  `shipping_cost` decimal(16,2) DEFAULT 0.00,
  `grand_total` decimal(16,2) DEFAULT 0.00,
  `notes` text DEFAULT NULL,
  `customer_first_name` varchar(255) DEFAULT NULL,
  `customer_address` varchar(255) DEFAULT NULL,
  `customer_address2` varchar(255) DEFAULT NULL,
  `customer_phone` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_city_id` varchar(255) DEFAULT NULL,
  `customer_province_id` varchar(255) DEFAULT NULL,
  `customer_postcode` int(11) DEFAULT NULL,
  `shipping_courier` varchar(255) DEFAULT NULL,
  `shipping_service_name` varchar(255) DEFAULT NULL,
  `approved_by` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `cancelled_by` bigint(20) UNSIGNED DEFAULT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `cancellation_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `code`, `status`, `order_date`, `payment_due`, `payment_status`, `payment_token`, `payment_url`, `base_total_price`, `tax_amount`, `tax_percent`, `discount_amount`, `discount_percent`, `shipping_cost`, `grand_total`, `notes`, `customer_first_name`, `customer_address`, `customer_address2`, `customer_phone`, `customer_email`, `customer_city_id`, `customer_province_id`, `customer_postcode`, `shipping_courier`, `shipping_service_name`, `approved_by`, `approved_at`, `cancelled_by`, `cancelled_at`, `cancellation_note`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'none', 'Amna', 'none', NULL, '1234567', 'amnaahmed567@gmail.com', NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-29 15:40:06', '2024-12-29 15:40:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `base_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `base_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `sub_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `name` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `method` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `payloads` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payloads`)),
  `payment_type` varchar(255) DEFAULT NULL,
  `va_number` varchar(255) DEFAULT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `biller_code` varchar(255) DEFAULT NULL,
  `bill_key` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` text NOT NULL,
  `details` text NOT NULL,
  `weight` decimal(8,2) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `price`, `quantity`, `description`, `details`, `weight`, `category_id`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Apple', 'apple', 200, 30, 'Apples are crisp, juicy fruits from the Malus domestica tree, widely cultivated worldwide. They come in various colors like red, green, and yellow, with a balance of sweet and tart flavors. Apples are rich in dietary fiber, Vitamin C, and antioxidants, making them a healthy snack choice. They can be eaten fresh, baked into desserts, or processed into juices and sauces. Apples have a long shelf life and are known for their versatility in cooking.', 'Size: 5–9 cm in diameter.\r\nColor: Red, green, or yellow skin with white or pale yellow flesh.\r\nNutrient Content: High in fiber, Vitamin C, and antioxidants.', 80.00, 1, '2024-12-29 15:00:05', '2024-12-29 15:00:05', 2),
(2, 'Banana', 'banana', 200, 39, 'Bananas are elongated, soft fruits produced by the Musa plant, native to tropical regions. They have a creamy texture and a sweet taste when ripe, making them a popular snack or breakfast ingredient. Bananas are rich in potassium, Vitamin B6, and dietary fiber. They are also widely used in smoothies, desserts, and baking recipes like banana bread. Known for their convenient natural packaging, bananas are a favorite for on-the-go nutrition.', 'Size: 15–25 cm in length.\r\nColor: Yellow skin when ripe, green when unripe, or brown when overripe.\r\nNutrient Content: High in potassium, Vitamin B6, and fiber.', 400.00, 1, '2024-12-29 15:06:08', '2024-12-29 15:06:08', 2),
(3, 'Pineapple', 'pineapple', 400, 30, 'Pineapples are tropical fruits from the Ananas comosus plant, known for their spiky, rough skin and sweet-tart golden flesh. Native to South America, pineapples are consumed fresh, juiced, grilled, or canned. They are rich in Vitamin C, manganese, and bromelain, an enzyme with anti-inflammatory properties. Pineapples have a distinct tropical aroma and are often used in desserts, salads, or as a topping for pizza.', 'Size: Typically 15–20 cm tall and 10–15 cm wide.\r\nColor: Greenish-brown skin with yellow flesh.\r\nNutrient Content: High in Vitamin C, manganese, and bromelain.', 500.00, 1, '2024-12-29 15:10:57', '2024-12-29 15:10:57', 2),
(4, 'Strawberry', 'strawberry', 300, 30, 'Strawberries are small, fragrant fruits from the Fragaria plant, valued for their bright red color and sweet flavor. Native to temperate regions, strawberries are enjoyed fresh, dried, or processed into jams, jellies, and syrups. They are packed with Vitamin C, manganese, and antioxidants, supporting skin health and reducing inflammation. Strawberries are a popular choice for desserts, smoothies, and salads.', 'Size: 2–5 cm in length.\r\nColor: Bright red with tiny yellow seeds on the surface.\r\nNutrient Content: High in Vitamin C, manganese, and antioxidants.', 299.00, 1, '2024-12-29 15:11:38', '2024-12-29 15:11:38', 2),
(5, 'Grapes', 'grapes', 599, 233, 'Grapes are small, juicy fruits that grow in clusters on the Vitis vine. They are available in various colors, including green, red, purple, and black. Grapes are eaten fresh, dried into raisins, or used for making juices, wines, and jellies. They are rich in Vitamin C, Vitamin K, and antioxidants like resveratrol, known for their heart-health benefits. Grapes have a sweet or slightly tangy flavor, depending on the variety.', 'Size: 1–2 cm in diameter.\r\nColor: Green, red, purple, or black.\r\nNutrient Content: High in Vitamin C, Vitamin K, and antioxidants like resveratrol.', 400.00, 1, '2024-12-29 15:12:46', '2024-12-29 15:12:46', 2),
(8, 'Mango', 'mango-3', 300, 50, 'Mangoes, often called the \"king of fruits,\" are tropical fruits from the Mangifera indica tree. They are known for their sweet, juicy, and aromatic flesh, encased in a smooth or slightly fibrous texture. Mangoes are enjoyed fresh, in smoothies, desserts, or processed into jams and pickles. They are an excellent source of Vitamin A, Vitamin C, and dietary fiber. Mangoes come in various varieties, ranging from small and tangy to large and ultra-sweet.', 'Size: 10–20 cm in length, depending on the variety.\r\nColor: Skin varies from green to yellow, orange, or red; flesh is golden yellow.\r\nNutrient Content: High in Vitamin A, Vitamin C, and fiber.', 199.00, 1, '2024-12-29 15:13:52', '2024-12-29 15:13:52', 2),
(9, 'Tomato', 'tomato', 300, 30, 'Tomatoes are botanically classified as fruits but are commonly used as vegetables in cooking. Originating from South America, they are one of the most widely cultivated vegetables globally, with numerous varieties in different sizes, shapes, and colors, such as red, yellow, orange, and green. Tomatoes have a distinct flavor, ranging from tangy to slightly sweet, and are widely used in salads, sauces, soups, and many other dishes. They are rich in vitamins, antioxidants, and minerals, making them a popular and nutritious addition to meals.', 'Size: Typically 4 to 6 cm in diameter.\r\nColor: Ranges from red, yellow, orange, to green depending on the variety.\r\nNutrient Content: High in Vitamin C, potassium, and lycopene.', 200.00, 2, '2024-12-29 15:17:50', '2024-12-29 15:17:50', 3),
(10, 'Cabbage', 'cabbage', 400, 45, 'Cabbage is a leafy vegetable widely known for its dense head of layered leaves. It belongs to the Brassica family and is often found in green, purple, or white varieties. Cultivated globally, cabbage is used in a wide range of culinary applications, such as salads, coleslaw, soups, and pickled products like sauerkraut. This vegetable is prized for its crunchy texture and mild flavor. Cabbage is also valued for its health benefits, including its high fiber and vitamin content.', 'Size: Head weight ranges from 1 to 3 kg.\r\nColor: Green, purple, or white.\r\nNutrient Content: Rich in Vitamin K, Vitamin C, and fiber.', 99.00, 2, '2024-12-29 15:20:00', '2024-12-29 15:20:00', 3),
(11, 'Eggplant', 'eggplant', 460, 29, 'Eggplants, also known as aubergines, are a member of the nightshade family, native to India and Southeast Asia. They are widely used in Mediterranean, Middle Eastern, and Asian cuisines. Eggplants typically have a glossy purple skin but can come in other colors like white or green. The flesh is spongy and mild in flavor, making it a versatile ingredient that absorbs seasonings well. They are low in calories but packed with fiber, vitamins, and antioxidants, especially anthocyanins that promote health.', 'Size: Typically 15 to 25 cm in length.\r\nColor: Primarily dark purple, though white and green varieties exist.\r\nNutrient Content: Contains fiber, antioxidants, Vitamin B1, Vitamin B6, and potassium.', 140.00, 2, '2024-12-29 15:20:39', '2024-12-29 15:20:50', 3),
(12, 'Cucumber', 'cucumber', 230, 100, 'Cucumbers are a refreshing vegetable with a high water content, making them popular in salads, sandwiches, and pickles. Native to South Asia, cucumbers belong to the gourd family and are known for their mild, slightly sweet flavor. The most commonly consumed varieties are slicing cucumbers, but there are also pickling varieties and burpless varieties, which have fewer seeds and a thinner skin. Cucumbers are low in calories and are hydrating due to their high water content, making them a healthy, low-calorie snack.', 'Size: Typically 20 to 30 cm in length.\r\nColor: Usually green, turning yellow when overripe.\r\nNutrient Content: 95% water, with small amounts of Vitamin K and potassium.', 338.00, 2, '2024-12-29 15:21:29', '2024-12-29 15:21:42', 3),
(13, 'Almond', 'almond', 200, 20, 'Almonds are the seeds of the fruit of the almond tree, scientifically known as Prunus dulcis. They are primarily consumed in their dried, edible form, either raw or roasted, and are commonly used in cooking, baking, and as snacks. Almonds are rich in healthy fats, fiber, vitamins (especially Vitamin E), and minerals like magnesium and calcium. They have a mildly sweet and nutty flavor and are known for their potential health benefits, including heart health and weight management.', 'Size: Typically 1 to 1.5 cm in length.\r\nColor: Light brown with a smooth outer shell.\r\nNutrient Content: Rich in Vitamin E, healthy fats, fiber, magnesium, and antioxidants.', 99.00, 3, '2024-12-29 15:23:15', '2024-12-29 15:23:15', 4),
(14, 'Apricot', 'apricot', 500, 298, 'Apricots are small, soft fruits with a tart-sweet flavor, originating from China but now grown in many parts of the world. They have a golden-orange skin with a smooth, velvety texture, and a pit inside. Apricots are usually eaten fresh but can also be dried to preserve them for longer periods. They are an excellent source of Vitamin A, Vitamin C, and fiber. Apricots are often used in jams, jellies, salads, and desserts, and they are known for their high antioxidant content.', 'Size: Typically 4 to 6 cm in diameter.\r\nColor: Golden-yellow to orange.\r\nNutrient Content: High in Vitamin A, Vitamin C, fiber, and antioxidants.', 400.00, 3, '2024-12-29 15:24:03', '2024-12-29 15:24:03', 4),
(15, 'Anjeer', 'anjeer', 700, 200, 'Anjeer, commonly known as Fig, is a sweet and succulent fruit from the Ficus carica tree, which is native to the Middle East and Western Asia. Figs are unique in that they have a soft, chewy texture with a sweet, honey-like taste. Fresh figs are highly perishable, so they are often dried to extend shelf life. Figs are packed with essential nutrients, including fiber, potassium, calcium, and iron. They are commonly consumed dried or fresh, used in jams, desserts, and salads.', 'Size: Typically 3 to 5 cm in diameter.\r\nColor: Varies from green, yellow, to purple, with a soft, edible skin.\r\nNutrient Content: High in fiber, potassium, calcium, iron, and antioxidants.', 100.00, 3, '2024-12-29 15:24:50', '2024-12-29 15:25:40', 4),
(16, 'Pistachio', 'pistachio', 200, 100, 'Pistachios are small, edible seeds from the fruit of the Pistacia vera tree, native to Central Asia and the Middle East. Known for their unique green and purple hues, pistachios are often consumed as a snack, used in cooking, or incorporated into desserts like baklava and ice cream. These nuts have a rich, buttery flavor and are rich in healthy fats, protein, fiber, and antioxidants. Pistachios are also a good source of vitamins and minerals, including Vitamin B6, copper, and magnesium. They are commonly consumed roasted, salted, or in their raw form', 'Size: Typically 1 to 1.5 cm in length.\r\nColor: Light brown outer shell with greenish kernels inside.\r\nNutrient Content: High in protein, healthy fats, Vitamin B6, copper, fiber, and antioxidants.', 198.00, 3, '2024-12-29 15:25:29', '2024-12-29 15:25:47', 4),
(17, 'Banana Juice', 'banana-juice', 300, 138, 'Banana juice is a creamy, naturally sweet beverage made by blending bananas with water or milk. It has a rich texture and is often combined with other fruits for added flavor. Banana juice is a great source of potassium, Vitamin B6, and dietary fiber. It is perfect for boosting energy and is commonly used in breakfast smoothies', 'Color: Pale yellow.\r\nTaste: Sweet and creamy.\r\nNutrient Content: High in potassium, Vitamin B6, and fiber.', 100.00, 4, '2024-12-29 15:30:08', '2024-12-29 15:30:08', 5),
(18, 'Orange Juice', 'orange-juice', 300, 100, 'Orange juice is a tangy, refreshing beverage made from fresh oranges. Known for its bright citrus flavor, it is a breakfast staple and a significant source of Vitamin C. Orange juice also contains potassium and antioxidants, supporting immune health and hydration. It can be consumed fresh or in packaged form and is often used in culinary recipes and cocktails.', 'Color: Bright orange.\r\nTaste: Sweet and tangy.\r\nNutrient Content: High in Vitamin C, potassium, and antioxidants.', 199.00, 4, '2024-12-29 15:30:46', '2024-12-29 15:30:46', 5),
(19, 'Pomegranate Juice', 'pomegranate-juice', 300, 100, 'Pomegranate juice is a vibrant, ruby-red drink made from the seeds of the pomegranate fruit. It has a unique sweet-tart flavor and is loaded with health benefits. Pomegranate juice is rich in antioxidants, Vitamin C, and polyphenols, promoting heart health and reducing inflammation. It is often consumed fresh or used as an ingredient in smoothies and sauces.', 'Color: Deep red.\r\nTaste: Sweet with a tangy edge.\r\nNutrient Content: High in antioxidants, Vitamin C, and polyphenols.', 100.00, 4, '2024-12-29 15:31:24', '2024-12-29 15:31:24', 5),
(20, 'Mango Juice', 'mango-juice', 100, 299, 'Mango juice is a sweet, tropical beverage made from ripe mangoes. It captures the rich flavor and vibrant color of the fruit, often enjoyed as a refreshing drink during summer. Mango juice can be consumed on its own or blended into smoothies and cocktails. It is rich in Vitamin A, Vitamin C, and antioxidants, making it a nutritious and hydrating choice.', 'Color: Bright yellow or orange.\r\nTaste: Sweet and tropical.\r\nNutrient Content: High in Vitamin A, Vitamin C, and antioxidants.', 320.00, 4, '2024-12-29 15:32:09', '2024-12-29 15:36:39', 5);

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tag`
--

INSERT INTO `product_tag` (`id`, `product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 5, NULL, NULL),
(3, 3, 4, NULL, NULL),
(4, 4, 4, NULL, NULL),
(5, 5, 1, NULL, NULL),
(8, 8, 1, NULL, NULL),
(9, 9, 3, NULL, NULL),
(10, 10, 3, NULL, NULL),
(11, 11, 5, NULL, NULL),
(12, 12, 2, NULL, NULL),
(13, 13, 5, NULL, NULL),
(14, 14, 3, NULL, NULL),
(15, 15, 4, NULL, NULL),
(16, 16, 2, NULL, NULL),
(17, 17, 1, NULL, NULL),
(18, 18, 4, NULL, NULL),
(19, 19, 2, NULL, NULL),
(20, 20, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE `shipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `track_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `total_qty` int(11) NOT NULL,
  `total_weight` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `city_id` varchar(255) DEFAULT NULL,
  `province_id` varchar(255) DEFAULT NULL,
  `postcode` int(11) DEFAULT NULL,
  `shipped_at` datetime DEFAULT NULL,
  `shipped_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Fresh', 'fresh', '2024-12-29 14:57:38', '2024-12-29 14:57:38'),
(2, 'Organic', 'organic', '2024-12-29 15:01:22', '2024-12-29 15:01:22'),
(3, 'Imported', 'imported', '2024-12-29 15:01:34', '2024-12-29 15:01:34'),
(4, 'Natural', 'natural', '2024-12-29 15:02:25', '2024-12-29 15:02:25'),
(5, 'Local', 'local', '2024-12-29 15:02:34', '2024-12-29 15:02:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `dashboard_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address` text DEFAULT NULL,
  `address2` text DEFAULT NULL,
  `province_id` varchar(255) DEFAULT NULL,
  `city_id` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `is_admin`, `dashboard_id`, `address`, `address2`, `province_id`, `city_id`, `postcode`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@example.com', NULL, '$2y$10$YGYrcOz4Hj/tgHpTZ/3Kze/Ow7tWWZgB03FHm4ByTOwb3hONuG9aW', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Amna Ahmed', 'amna@gmail.com', NULL, '$2y$10$rziS/KopeXTIOc.0UcVgzu1uT2OuiMnOujHF3YNTunQ5tQt96XPD2', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-29 14:56:49', '2024-12-29 14:56:49'),
(3, 'Navaal Iqbal', 'navaal@gmail.com', NULL, '$2y$10$0fqgWcIAD/xcZfUovV69hu5tV.0JZtMFmG16hEhICv4L0n4PAedEm', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-29 15:15:42', '2024-12-29 15:15:42'),
(4, 'Ayesha Siddiqa', 'ayesha@gmail.com', NULL, '$2y$10$uCrwM4s.u74PSLsDmsdln.A4Xubd365ZeBYS/mRxNHf8W90CPFkAm', 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-29 15:22:22', '2024-12-29 15:22:22'),
(5, 'Sara Adnan', 'sara@gmail.com', NULL, '$2y$10$c.x1zFjr2l49gZEt1bTwJu8faOnHNJAFd5OHB.4Lajrfm33eh17ry', 1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-29 15:26:23', '2024-12-29 15:26:23'),
(6, 'Mahnoor Altaf', 'mahnoor@gmail.com', NULL, '$2y$10$08EgWQuKeP2kYL3MomBWmeQrJvOwsP0K1zLUqkiZ0O6RRX4OcfnxG', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-29 15:32:52', '2024-12-29 15:32:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_dashboards`
--
ALTER TABLE `admin_dashboards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_dashboards_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `checkouts`
--
ALTER TABLE `checkouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `checkouts_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_code_unique` (`code`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_approved_by_foreign` (`approved_by`),
  ADD KEY `orders_cancelled_by_foreign` (`cancelled_by`),
  ADD KEY `orders_payment_token_index` (`payment_token`),
  ADD KEY `orders_code_index` (`code`),
  ADD KEY `orders_code_order_date_index` (`code`,`order_date`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_name_index` (`name`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_number_unique` (`number`),
  ADD KEY `payments_order_id_foreign` (`order_id`),
  ADD KEY `payments_number_index` (`number`),
  ADD KEY `payments_method_index` (`method`),
  ADD KEY `payments_token_index` (`token`),
  ADD KEY `payments_payment_type_index` (`payment_type`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_tag_product_id_foreign` (`product_id`),
  ADD KEY `product_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipments_user_id_foreign` (`user_id`),
  ADD KEY `shipments_order_id_foreign` (`order_id`),
  ADD KEY `shipments_shipped_by_foreign` (`shipped_by`),
  ADD KEY `shipments_track_number_index` (`track_number`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_dashboard_id_index` (`dashboard_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_dashboards`
--
ALTER TABLE `admin_dashboards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `checkouts`
--
ALTER TABLE `checkouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `shipments`
--
ALTER TABLE `shipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_dashboards`
--
ALTER TABLE `admin_dashboards`
  ADD CONSTRAINT `admin_dashboards_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `checkouts`
--
ALTER TABLE `checkouts`
  ADD CONSTRAINT `checkouts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_cancelled_by_foreign` FOREIGN KEY (`cancelled_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD CONSTRAINT `product_tag_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipments`
--
ALTER TABLE `shipments`
  ADD CONSTRAINT `shipments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `shipments_shipped_by_foreign` FOREIGN KEY (`shipped_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `shipments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_dashboard_id_foreign` FOREIGN KEY (`dashboard_id`) REFERENCES `admin_dashboards` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
