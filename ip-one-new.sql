-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 15 2019 г., 12:27
-- Версия сервера: 10.1.37-MariaDB
-- Версия PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ip-one-new`
--

-- --------------------------------------------------------

--
-- Структура таблицы `contents`
--

CREATE TABLE `contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, NULL, 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(37, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(38, 8, 'slider_id', 'number', 'ID слайдера', 0, 1, 1, 1, 1, 1, '{}', 2),
(39, 8, 'image', 'image', 'Картинка', 0, 1, 1, 1, 1, 1, '{}', 3),
(40, 8, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 4),
(41, 8, 'description', 'rich_text_box', 'Описание', 0, 0, 1, 1, 1, 1, '{}', 5),
(42, 8, 'link', 'text', 'Ссылка', 0, 1, 1, 1, 1, 1, '{}', 6),
(43, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(44, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(45, 8, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 9),
(46, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(47, 9, 'name', 'text', 'Название', 0, 1, 1, 1, 1, 1, '{}', 2),
(48, 9, 'img', 'image', 'Картинка', 0, 1, 1, 1, 1, 1, '{}', 3),
(49, 9, 'mini_description', 'text', 'Описание', 0, 1, 1, 1, 1, 1, '{}', 4),
(50, 9, 'description', 'rich_text_box', 'Текст', 0, 1, 1, 1, 1, 1, '{}', 5),
(51, 9, 'price', 'number', 'Цена', 0, 1, 1, 1, 1, 1, '{}', 6),
(52, 9, 'points', 'number', 'Баллы', 0, 1, 1, 1, 1, 1, '{}', 7),
(53, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(54, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(55, 9, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 10),
(56, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 10, 'title', 'text', 'Заголовок', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 10, 'date', 'date', 'Дата', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 10, 'img', 'image', 'Картинка', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 10, 'mini_description', 'text', 'Краткое описание', 0, 1, 1, 1, 1, 1, '{}', 5),
(61, 10, 'text', 'rich_text_box', 'Текст', 0, 1, 1, 1, 1, 1, '{}', 6),
(62, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 7),
(63, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(64, 10, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 9),
(65, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(66, 11, 'name', 'text', 'Название', 0, 1, 1, 1, 1, 1, '{}', 2),
(67, 11, 'content', 'rich_text_box', 'Текст', 0, 1, 1, 1, 1, 1, '{}', 3),
(68, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(69, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(70, 11, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(8, 'sliders', 'sliders', 'Слайдер', 'Слайдер', 'voyager-photo', 'App\\Slider', NULL, NULL, 'Слайдер', 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-02-13 00:41:21', '2019-02-13 03:13:44'),
(9, 'products', 'products', 'Продукт', 'Продукты', 'voyager-shop', 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-02-15 04:23:56', '2019-02-15 04:23:56'),
(10, 'news', 'news', 'Новость', 'Новости', 'voyager-news', 'App\\News', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-02-15 04:47:06', '2019-02-15 05:13:50'),
(11, 'contents', 'contents', 'Контент', 'Контент', 'voyager-pen', 'App\\Content', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-02-15 04:57:14', '2019-02-15 04:57:14');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(2, 'site', '2019-02-12 23:39:25', '2019-02-12 23:39:25'),
(3, 'main_page_menu', '2019-02-13 04:34:08', '2019-02-13 04:34:08');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, 5, 3, '2019-02-12 22:59:27', '2019-02-15 05:00:17', 'voyager.dashboard', NULL),
(2, 1, 'Медиа', '', '_self', 'voyager-images', '#000000', NULL, 5, '2019-02-12 22:59:27', '2019-02-15 05:00:04', 'voyager.media.index', 'null'),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, 5, 2, '2019-02-12 22:59:27', '2019-02-15 05:00:17', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 5, 1, '2019-02-12 22:59:27', '2019-02-15 05:00:17', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 7, '2019-02-12 22:59:27', '2019-02-15 05:00:17', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 4, '2019-02-12 22:59:27', '2019-02-15 05:00:17', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 5, '2019-02-12 22:59:27', '2019-02-15 05:00:17', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 6, '2019-02-12 22:59:27', '2019-02-15 05:00:17', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 7, '2019-02-12 22:59:27', '2019-02-15 05:00:17', 'voyager.bread.index', NULL),
(10, 1, 'Настройки', '', '_self', 'voyager-settings', '#000000', NULL, 6, '2019-02-12 22:59:27', '2019-02-15 05:00:04', 'voyager.settings.index', 'null'),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 8, '2019-02-12 22:59:27', '2019-02-15 05:00:17', 'voyager.hooks', NULL),
(12, 2, 'Главная', '/', '_self', NULL, '#000000', NULL, 1, '2019-02-12 23:40:03', '2019-02-12 23:40:05', NULL, ''),
(17, 1, 'Слайдер', '', '_self', 'voyager-photo', '#000000', NULL, 3, '2019-02-13 00:41:21', '2019-02-15 04:59:45', 'voyager.sliders.index', 'null'),
(18, 2, 'Новости', '/news', '_self', NULL, '#000000', NULL, 16, '2019-02-13 02:24:14', '2019-02-13 02:24:14', NULL, ''),
(19, 2, 'Магазин', 'https://shop.ip-one.net/', '_self', NULL, '#000000', NULL, 17, '2019-02-13 02:24:39', '2019-02-13 02:25:21', NULL, ''),
(20, 3, 'продукты', '/products', '_self', NULL, '#000000', NULL, 18, '2019-02-13 04:41:57', '2019-02-13 04:41:57', NULL, ''),
(21, 3, 'show rooms', '/showrooms', '_self', NULL, '#000000', NULL, 19, '2019-02-13 04:42:31', '2019-02-13 04:42:31', NULL, ''),
(22, 3, 'бизнес', '/bussiness', '_self', NULL, '#000000', NULL, 20, '2019-02-13 04:42:47', '2019-02-13 04:42:47', NULL, ''),
(23, 3, 'отзывы', '/reviews', '_self', NULL, '#000000', NULL, 21, '2019-02-13 04:43:04', '2019-02-13 04:43:04', NULL, ''),
(24, 3, 'информация', '/information', '_self', NULL, '#000000', NULL, 22, '2019-02-13 04:43:27', '2019-02-13 04:43:27', NULL, ''),
(25, 3, 'о компании', '/about', '_self', NULL, '#000000', NULL, 23, '2019-02-13 04:43:44', '2019-02-13 04:43:44', NULL, ''),
(26, 1, 'Продукты', '', '_self', 'voyager-shop', NULL, NULL, 1, '2019-02-15 04:23:56', '2019-02-15 04:59:39', 'voyager.products.index', NULL),
(27, 1, 'Новости', '', '_self', 'voyager-news', NULL, NULL, 2, '2019-02-15 04:47:06', '2019-02-15 04:59:45', 'voyager.news.index', NULL),
(28, 1, 'Контент', '', '_self', 'voyager-pen', NULL, NULL, 4, '2019-02-15 04:57:14', '2019-02-15 04:59:45', 'voyager.contents.index', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `img` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mini_description` text COLLATE utf8mb4_unicode_ci,
  `text` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(2, 'browse_bread', NULL, '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(3, 'browse_database', NULL, '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(4, 'browse_media', NULL, '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(5, 'browse_compass', NULL, '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(6, 'browse_menus', 'menus', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(7, 'read_menus', 'menus', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(8, 'edit_menus', 'menus', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(9, 'add_menus', 'menus', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(10, 'delete_menus', 'menus', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(11, 'browse_roles', 'roles', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(12, 'read_roles', 'roles', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(13, 'edit_roles', 'roles', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(14, 'add_roles', 'roles', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(15, 'delete_roles', 'roles', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(16, 'browse_users', 'users', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(17, 'read_users', 'users', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(18, 'edit_users', 'users', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(19, 'add_users', 'users', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(20, 'delete_users', 'users', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(21, 'browse_settings', 'settings', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(22, 'read_settings', 'settings', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(23, 'edit_settings', 'settings', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(24, 'add_settings', 'settings', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(25, 'delete_settings', 'settings', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(26, 'browse_hooks', NULL, '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(47, 'browse_sliders', 'sliders', '2019-02-13 00:41:21', '2019-02-13 00:41:21'),
(48, 'read_sliders', 'sliders', '2019-02-13 00:41:21', '2019-02-13 00:41:21'),
(49, 'edit_sliders', 'sliders', '2019-02-13 00:41:21', '2019-02-13 00:41:21'),
(50, 'add_sliders', 'sliders', '2019-02-13 00:41:21', '2019-02-13 00:41:21'),
(51, 'delete_sliders', 'sliders', '2019-02-13 00:41:21', '2019-02-13 00:41:21'),
(52, 'browse_products', 'products', '2019-02-15 04:23:56', '2019-02-15 04:23:56'),
(53, 'read_products', 'products', '2019-02-15 04:23:56', '2019-02-15 04:23:56'),
(54, 'edit_products', 'products', '2019-02-15 04:23:56', '2019-02-15 04:23:56'),
(55, 'add_products', 'products', '2019-02-15 04:23:56', '2019-02-15 04:23:56'),
(56, 'delete_products', 'products', '2019-02-15 04:23:56', '2019-02-15 04:23:56'),
(57, 'browse_news', 'news', '2019-02-15 04:47:06', '2019-02-15 04:47:06'),
(58, 'read_news', 'news', '2019-02-15 04:47:06', '2019-02-15 04:47:06'),
(59, 'edit_news', 'news', '2019-02-15 04:47:06', '2019-02-15 04:47:06'),
(60, 'add_news', 'news', '2019-02-15 04:47:06', '2019-02-15 04:47:06'),
(61, 'delete_news', 'news', '2019-02-15 04:47:06', '2019-02-15 04:47:06'),
(62, 'browse_contents', 'contents', '2019-02-15 04:57:14', '2019-02-15 04:57:14'),
(63, 'read_contents', 'contents', '2019-02-15 04:57:14', '2019-02-15 04:57:14'),
(64, 'edit_contents', 'contents', '2019-02-15 04:57:14', '2019-02-15 04:57:14'),
(65, 'add_contents', 'contents', '2019-02-15 04:57:14', '2019-02-15 04:57:14'),
(66, 'delete_contents', 'contents', '2019-02-15 04:57:14', '2019-02-15 04:57:14');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mini_description` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-02-12 22:59:27', '2019-02-12 22:59:27'),
(2, 'user', 'Normal User', '2019-02-12 22:59:27', '2019-02-12 22:59:27');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'IP ONE', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome!', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Структура таблицы `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_id` int(11) DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sliders`
--

INSERT INTO `sliders` (`id`, `slider_id`, `image`, `title`, `description`, `link`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 1, 'sliders\\February2019\\h2HwRFkYz33cuDfqJV63.png', 'WATER FOR LIFE', '<p>продлевает жизнь,</p>\n<p>замедляет процессы старения,</p>\n<p>улучшает состояние клеточных мембран</p>', '/products/1', '2019-02-13 03:08:53', '2019-02-13 03:10:19', NULL),
(3, 1, 'sliders\\February2019\\mOUCSzmDqlzeCNYVVTB9.png', 'sdfgsdg', '<p>sdfg</p>', 'sdfgdsfgdsfg', '2019-02-13 04:25:21', '2019-02-13 04:25:21', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 8, 'en', 'Slider', '2019-02-13 03:03:43', '2019-02-13 03:03:43'),
(2, 'data_types', 'display_name_singular', 8, 'cn', '', '2019-02-13 03:03:43', '2019-02-13 03:03:43'),
(3, 'data_types', 'display_name_plural', 8, 'en', 'Sliders', '2019-02-13 03:03:43', '2019-02-13 03:03:43'),
(4, 'data_types', 'display_name_plural', 8, 'cn', '', '2019-02-13 03:03:43', '2019-02-13 03:03:43'),
(5, 'menu_items', 'title', 17, 'en', 'Sliders', '2019-02-13 03:05:11', '2019-02-13 03:05:11'),
(6, 'menu_items', 'title', 17, 'cn', '', '2019-02-13 03:05:11', '2019-02-13 03:05:11'),
(7, 'sliders', 'title', 2, 'en', 'asdf', '2019-02-13 03:08:53', '2019-02-13 03:50:39'),
(8, 'sliders', 'title', 2, 'cn', '', '2019-02-13 03:08:53', '2019-02-13 03:08:53'),
(9, 'sliders', 'description', 2, 'en', '<p>asdfasdf</p>', '2019-02-13 03:08:53', '2019-02-13 03:50:39'),
(10, 'sliders', 'description', 2, 'cn', '', '2019-02-13 03:08:53', '2019-02-13 03:08:53'),
(11, 'sliders', 'title', 3, 'en', '', '2019-02-13 04:25:21', '2019-02-13 04:25:21'),
(12, 'sliders', 'title', 3, 'cn', '', '2019-02-13 04:25:21', '2019-02-13 04:25:21'),
(13, 'sliders', 'description', 3, 'en', '', '2019-02-13 04:25:21', '2019-02-13 04:25:21'),
(14, 'sliders', 'description', 3, 'cn', '', '2019-02-13 04:25:21', '2019-02-13 04:25:21'),
(15, 'menu_items', 'title', 20, 'en', '', '2019-02-13 04:41:57', '2019-02-13 04:41:57'),
(16, 'menu_items', 'title', 20, 'cn', '', '2019-02-13 04:41:57', '2019-02-13 04:41:57'),
(17, 'menu_items', 'title', 21, 'en', '', '2019-02-13 04:42:31', '2019-02-13 04:42:31'),
(18, 'menu_items', 'title', 21, 'cn', '', '2019-02-13 04:42:31', '2019-02-13 04:42:31'),
(19, 'menu_items', 'title', 22, 'en', '', '2019-02-13 04:42:47', '2019-02-13 04:42:47'),
(20, 'menu_items', 'title', 22, 'cn', '', '2019-02-13 04:42:47', '2019-02-13 04:42:47'),
(21, 'menu_items', 'title', 23, 'en', '', '2019-02-13 04:43:04', '2019-02-13 04:43:04'),
(22, 'menu_items', 'title', 23, 'cn', '', '2019-02-13 04:43:04', '2019-02-13 04:43:04'),
(23, 'menu_items', 'title', 24, 'en', '', '2019-02-13 04:43:27', '2019-02-13 04:43:27'),
(24, 'menu_items', 'title', 24, 'cn', '', '2019-02-13 04:43:27', '2019-02-13 04:43:27'),
(25, 'menu_items', 'title', 25, 'en', '', '2019-02-13 04:43:44', '2019-02-13 04:43:44'),
(26, 'menu_items', 'title', 25, 'cn', '', '2019-02-13 04:43:44', '2019-02-13 04:43:44'),
(27, 'menu_items', 'title', 2, 'en', 'Media', '2019-02-15 04:59:14', '2019-02-15 04:59:14'),
(28, 'menu_items', 'title', 2, 'cn', '', '2019-02-15 04:59:14', '2019-02-15 04:59:14'),
(29, 'menu_items', 'title', 10, 'en', 'Settings', '2019-02-15 04:59:27', '2019-02-15 04:59:27'),
(30, 'menu_items', 'title', 10, 'cn', '', '2019-02-15 04:59:27', '2019-02-15 04:59:27'),
(31, 'data_types', 'display_name_singular', 10, 'en', 'Новость', '2019-02-15 05:13:50', '2019-02-15 05:13:50'),
(32, 'data_types', 'display_name_singular', 10, 'cn', '', '2019-02-15 05:13:50', '2019-02-15 05:13:50'),
(33, 'data_types', 'display_name_plural', 10, 'en', 'Новости', '2019-02-15 05:13:50', '2019-02-15 05:13:50'),
(34, 'data_types', 'display_name_plural', 10, 'cn', '', '2019-02-15 05:13:50', '2019-02-15 05:13:50');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'godmanshot', 'godmanshot@gmail.com', 'users/default.png', NULL, '$2y$10$.4fbBHUwSEjkgijSWXgcf.3IDjRCk01re3ZYOiMJhX8GNwakHYEZK', NULL, '{\"locale\":\"ru\"}', '2019-02-12 23:09:00', '2019-02-13 03:05:46');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
