-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2020 at 05:12 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lawpoint`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `description`, `img`, `created_at`, `updated_at`) VALUES
(2, 'About Modern Business', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipisicing Elit. Sed Voluptate Nihil Eum Consectetur Similique? Consectetur, Quod, Incidunt, Harum Nisi Dolores Delectus Reprehenderit Voluptatem Perferendis Dicta Dolorem Non Blanditiis Ex Fugiat.\r\n\r\nLorem Ipsum Dolor Sit Amet, Consectetur Adipisicing Elit. Saepe, Magni, Aperiam Vitae Illum Voluptatum Aut Sequi Impedit Non Velit Ab Ea Pariatur Sint Quidem Corporis Eveniet. Odit, Temporibus Reprehenderit Dolorum!\r\n\r\nLorem Ipsum Dolor Sit Amet, Consectetur Adipisicing Elit. Et, Consequuntur, Modi Mollitia Corporis Ipsa Voluptate Corrupti Eum Ratione Ex Ea Praesentium Quibusdam? Aut, In Eum Facere Corrupti Necessitatibus Perspiciatis Quis?', 'about-35.jpg', '2020-05-28 05:03:31', '2020-05-28 05:48:05');

-- --------------------------------------------------------

--
-- Table structure for table `bgimgs`
--

CREATE TABLE `bgimgs` (
  `id` int(10) UNSIGNED NOT NULL,
  `about_img` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_img` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `portfolio_img` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_img` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bgimgs`
--

INSERT INTO `bgimgs` (`id`, `about_img`, `service_img`, `portfolio_img`, `contact_img`, `created_at`, `updated_at`) VALUES
(8, 'about-bg.jpg', 'service-bg.jpg', 'portfolio-bg.jpg', 'contact-bg.jpg', '2020-06-01 07:57:16', '2020-06-01 07:57:16');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `img`, `status`, `created_at`, `updated_at`) VALUES
(3, 'customer-83.png', 1, '2020-05-29 00:51:55', '2020-05-29 00:53:47'),
(5, 'customer-1.png', 1, '2020-05-29 00:52:18', '2020-05-29 00:53:48'),
(6, 'customer-42.png', 1, '2020-05-29 00:53:06', '2020-05-29 00:53:48'),
(7, 'customer-36.png', 1, '2020-05-29 00:53:10', '2020-05-29 00:53:49'),
(8, 'customer-67.png', 1, '2020-05-29 00:53:10', '2020-05-29 00:53:49'),
(9, 'customer-86.png', 1, '2020-05-29 00:53:14', '2020-05-29 00:53:50');

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
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` int(10) UNSIGNED NOT NULL,
  `title1` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title2` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title3` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `office` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hours` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `title1`, `title2`, `title3`, `description`, `office`, `email`, `hours`, `img`, `created_at`, `updated_at`) VALUES
(6, 'About Us', 'Social Link', 'Contact Details', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 'House # 30, Road # 2, Section # 10 Mirpur - 10, Dhaka - 1216', 'sakawat110@gmail.com', 'Saturday - Thursday: 9:00 AM to 8:00 PM', 'bg-48.jpg', '2020-05-30 02:39:46', '2020-05-30 02:47:42');

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `logo`, `seo_des`, `created_at`, `updated_at`) VALUES
(19, 'logo-94.png', 'SEO_desciption.', '2020-05-20 03:17:06', '2020-06-22 06:16:27');

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
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2020_05_16_174838_create_topbars_table', 2),
(8, '2020_05_16_175039_create_logos_table', 3),
(9, '2020_05_16_181357_create_sliders_table', 4),
(10, '2020_05_18_134746_create_welcomes_table', 5),
(11, '2020_05_23_173507_create_services_table', 6),
(12, '2020_05_24_050411_create_portfolios_table', 7),
(13, '2020_05_24_140317_create_portfolio_categories_table', 8),
(14, '2020_05_24_170803_create_portfoliocategories_table', 9),
(15, '2020_05_26_051032_create_tests_table', 10),
(16, '2020_05_27_142502_create_footers_table', 11),
(17, '2020_05_28_094427_create_abouts_table', 12),
(18, '2020_05_28_115530_create_missions_table', 13),
(19, '2020_05_28_124035_create_visions_table', 14),
(20, '2020_05_29_050804_create_teams_table', 15),
(21, '2020_05_29_064041_create_customers_table', 16),
(22, '2020_05_29_102938_create_portfoliopages_table', 17),
(23, '2020_05_30_155049_create_bgimgs_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `missions`
--

CREATE TABLE `missions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(460) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p1` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p2` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p3` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p4` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p5` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `missions`
--

INSERT INTO `missions` (`id`, `title`, `description`, `img`, `p1`, `p2`, `p3`, `p4`, `p5`, `created_at`, `updated_at`) VALUES
(4, 'Our Mission', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed voluptate nihil eum consectetur similique? Consectetur, quod, incidunt, harum nisi dolores delectus reprehenderit voluptatem perferendis dicta dolorem non blanditiis ex fugiat. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe, magni, aperiam vitae illum voluptatum aut sequi impedit non velit ab ea pariatur sint quidem corporis eveniet. Odit, temporibus reprehenderit dolorum!', 'mission-78.jpg', 'Sed at tellus eu quam posuere mattis.', 'Phasellus quis erat et enim laoreet posuere ac porttitor ipsum.', 'Phasellus quis erat et enim laoreet posuere ac porttitor ipsum.Phasell', 'Sed at tellus eu quam posuere mattis.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sed voluptat', '2020-05-28 06:36:54', '2020-05-28 06:36:54');

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
-- Table structure for table `portfoliocategories`
--

CREATE TABLE `portfoliocategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfoliocategories`
--

INSERT INTO `portfoliocategories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Tax', '2020-05-24 21:56:59', '2020-05-24 21:57:30'),
(4, 'Business', '2020-05-24 22:07:55', '2020-05-24 22:08:05'),
(5, 'Vat', '2020-05-24 22:11:02', '2020-05-24 22:11:23'),
(6, 'Audit', '2020-05-24 22:11:04', '2020-05-24 22:11:57');

-- --------------------------------------------------------

--
-- Table structure for table `portfoliopages`
--

CREATE TABLE `portfoliopages` (
  `id` int(10) UNSIGNED NOT NULL,
  `long_title` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `website` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfoliopages`
--

INSERT INTO `portfoliopages` (`id`, `long_title`, `short_title`, `category_id`, `website`, `client`, `short_description`, `description1`, `description2`, `img`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Phasellus et nisi ut sapien ultricies laoreet.1', 'Nulla tincidunt justo', 4, 'trivuzbd.com', 'Trivuz BD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'portfoliopage-81.jpg', 1, '2020-05-29 06:15:34', '2020-05-29 08:08:08'),
(2, 'Phasellus et nisi ut sapien ultricies laoreet.2', 'Nulla tincidunt justo2', 2, 'trivuzbd.com7', 'Trivuz BD2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.2', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur2', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.2', 'portfoliopage-26.jpg', 1, '2020-05-29 06:36:04', '2020-05-29 08:05:47'),
(3, 'Phasellus et nisi ut sapien ultricies laoreet.3', 'Nulla tincidunt justo', 2, 'trivuzbd.com2', 'Trivuz BD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'portfoliopage-91.jpg', 1, '2020-05-29 08:01:47', '2020-05-29 08:05:48'),
(4, 'Phasellus et nisi ut sapien ultricies laoreet.4', 'Nulla tincidunt justo', 6, 'trivuzbd.com3', 'Trivuz BD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'portfoliopage-91.jpg', 1, '2020-05-29 08:01:49', '2020-05-29 08:05:49'),
(5, 'Phasellus et nisi ut sapien ultricies laoreet.5', 'Nulla tincidunt justo', 4, 'trivuzbd.com4', 'Trivuz BD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'portfoliopage-35.jpg', 1, '2020-05-29 09:35:00', '2020-05-29 09:35:27'),
(6, 'Phasellus et nisi ut sapien ultricies laoreet.6', 'Nulla tincidunt justo2', 5, 'trivuzbd.com8', 'Trivuz BD2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.2', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur2', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.2', 'portfoliopage-89.jpg', 1, '2020-05-29 09:35:09', '2020-05-29 09:35:40'),
(7, 'Phasellus et nisi ut sapien ultricies laoreet.7', 'Nulla tincidunt justo', 2, 'trivuzbd.com5', 'Trivuz BD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'portfoliopage-2.jpg', 1, '2020-05-29 09:35:10', '2020-05-29 09:36:05'),
(8, 'Phasellus et nisi ut sapien ultricies laoreet.8', 'Nulla tincidunt justo', 6, 'trivuzbd.com6', 'Trivuz BD', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'portfoliopage-2.jpg', 1, '2020-05-29 09:35:11', '2020-05-29 09:36:22');

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `portfoliocategory_id` int(10) UNSIGNED NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `img`, `title`, `portfoliocategory_id`, `status`, `created_at`, `updated_at`) VALUES
(41, 'portfolio-20.jpg', 'Welcome to Law Point', 5, 1, '2020-05-26 10:50:21', '2020-05-26 22:39:43'),
(43, 'portfolio-50.jpg', 'Welcome to Law Point', 4, 1, '2020-05-26 16:17:50', '2020-05-26 22:40:00'),
(44, 'portfolio-8.jpg', 'Welcome to Law Point', 2, 1, '2020-05-26 22:40:04', '2020-05-26 22:40:24'),
(45, 'portfolio-80.jpg', 'Welcome to Law Point', 6, 1, '2020-05-26 22:40:08', '2020-05-26 22:40:39'),
(46, 'portfolio-75.jpg', 'Welcome to Law Point', 6, 1, '2020-05-26 23:20:08', '2020-05-26 23:20:27');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `img`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(6, 'service-53.jpg', 'Accountancy Service', 'Accounting System Design & Setup.Maintaining Books of Accounts in a systematic manner.', 1, '2020-05-24 22:42:28', '2020-06-01 08:15:32'),
(15, 'service-51.jpg', 'Finance & Banking Assistance', 'Business Advisory support including Preparation of project reports, feasibility studies and documents', 1, '2020-05-24 23:14:44', '2020-06-01 08:16:26'),
(16, 'service-22.jpg', 'Training Facility', 'Basic Book Keeping.Practical Accounting.Accounts & Financial Management.Practical Income tax Assessment.', 1, '2020-05-24 23:15:18', '2020-06-01 08:17:16'),
(17, 'service-26.jpg', 'Business Vat Solution', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.', 1, '2020-05-24 23:16:27', '2020-05-29 03:53:50'),
(18, 'service-99.jpg', 'Income Tax Solution', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.', 1, '2020-05-24 23:16:27', '2020-05-29 03:53:35'),
(20, 'service-30.jpg', 'Company Vat Solution', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.', 1, '2020-05-24 23:18:07', '2020-05-29 03:54:06');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `img`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(3, 'slider-3.jpg', 'Welcome to Law Point', 'jlkjflkds dfjsd lkfsldk sdfsc', 1, '2020-05-16 13:20:15', '2020-06-15 08:39:12'),
(4, 'slider-97.jpg', 'Best Consulting Services.', 'A Great Theme For Business Consulting', 1, '2020-05-16 13:21:12', '2020-05-16 13:58:29'),
(5, 'slider-9.jpg', 'Welcome to Law Point', 'A Great Theme For Business Consulting', 1, '2020-05-16 13:56:33', '2020-05-16 13:58:31'),
(9, 'slider-41.jpg', 'Welcome to Law Point', 'A Great Theme For Business Consulting', 0, '2020-05-20 05:21:58', '2020-05-20 05:21:58');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_link` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tw_link` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_link` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `title`, `fb_link`, `tw_link`, `in_link`, `img`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Md. Shakawat Hossain', 'CEO', 'www.facebook.com/sakawat', 'www.twitter.com/sakawat', 'www.linkedin.com/sakawat', 'team-78.jpg', 1, '2020-05-29 00:26:59', '2020-05-29 00:36:44'),
(5, 'Md. Palash', 'Auditor', 'www.facebook.com/palash', 'www.twitter.com/palash', 'www.linkedin.com/palash', 'team-82.jpg', 1, '2020-05-29 00:27:01', '2020-05-29 00:36:45'),
(6, 'Md. Shakawat Hossain', 'CEO', 'www.facebook.com/sakawat', 'www.twitter.com/sakawat', 'www.linkedin.com/sakawat', 'team-51.jpg', 1, '2020-05-29 00:37:43', '2020-05-29 00:38:27'),
(7, 'Md. Shakawat Hossain', 'CEO', 'www.facebook.com/sakawat', 'www.twitter.com/sakawat', 'www.linkedin.com/sakawat', 'team-77.jpg', 1, '2020-05-29 00:37:43', '2020-05-29 00:38:38'),
(8, 'Md. Shakawat Hossain', 'CEO', 'www.facebook.com/sakawat', 'www.twitter.com/sakawat', 'www.linkedin.com/sakawat', 'team-29.jpg', 1, '2020-05-29 00:37:44', '2020-05-29 00:39:27');

-- --------------------------------------------------------

--
-- Table structure for table `topbars`
--

CREATE TABLE `topbars` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_des` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_link` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tw_link` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_link` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topbars`
--

INSERT INTO `topbars` (`id`, `phone`, `news`, `footer_des`, `fb_link`, `tw_link`, `in_link`, `created_at`, `updated_at`) VALUES
(4, '+8801712538754', 'Law Point | Hafiz Ahmed & Co | Business Solution | Tax Time Coming | Monthly Vat Time Expaired', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 'https://www.facebook.com/', 'https://www.twitter.com', 'https://www.linkedin.com', '2020-05-27 06:38:43', '2020-06-12 22:58:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$fJQDdBPLHGEEvPnDxcQGlep2qAoM453Oy129vt5YeG1t9wO9AwnEa', 'qKXZI1R1k03Sw40520sH5vn57fRssUbXMuUsttY9WqAkjtW6ycxhj5eMoGiO', '2020-05-16 11:36:00', '2020-07-05 03:43:21'),
(2, 'asad', 'asad@gmail.com', NULL, '$2y$10$8DRaPhKBb5ZL/vA4hPvboez2Ii3F6pjsi21M5sIL5mgq3/09bETei', NULL, '2020-07-21 06:48:32', '2020-07-21 06:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `visions`
--

CREATE TABLE `visions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p1` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p2` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p3` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p4` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p5` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visions`
--

INSERT INTO `visions` (`id`, `title`, `description`, `img`, `p1`, `p2`, `p3`, `p4`, `p5`, `created_at`, `updated_at`) VALUES
(2, 'Our Vision', 'To become a legal & business development support firm with reference to our 	areas of specialty. dolorem non blanditiis ex fugiat. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Saepe, magni, aperiam vitae illum voluptatum aut sequi impedit non velit ab ea pariatur sint quidem corporis eveniet. Odit, temporibus reprehenderit dolorum!', 'vision-37.jpg', 'Sed at tellus eu quam posuere mattis.', 'Phasellus quis erat et enim laoreet posuere ac porttitor ipsum.', 'Phasellus quis erat et enim laoreet posuere ac porttitor ipsum.Phasell', 'Sed at tellus eu quam posuere mattis.', 'Phasellus quis erat et enim laoreet posuere ac porttitor ipsum.', '2020-05-28 08:13:48', '2020-06-01 08:19:07');

-- --------------------------------------------------------

--
-- Table structure for table `welcomes`
--

CREATE TABLE `welcomes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `p1` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p2` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p3` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `welcomes`
--

INSERT INTO `welcomes` (`id`, `title`, `sub_title`, `description`, `img`, `created_at`, `updated_at`, `p1`, `p2`, `p3`) VALUES
(6, 'Welcome to Law Point', 'Our smart approach', 'This Firm has been working with the strength of a group of young energetic and dedicated people over six years. We began as a purely legal and business development consultancy practice with corporate and development Clients Within the shortest possible time we have been able to  open our scope of services grown which now includes local, national.', 'welcome-69.jpg', '2020-05-20 05:23:33', '2020-06-01 08:13:18', 'Legal Experts, Advocates, Tax Consultants, and Chartered Accountants.', 'It provides Information Technology Consultants as well as experts.', 'The firm has been extending its services to the clients since');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bgimgs`
--
ALTER TABLE `bgimgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `missions`
--
ALTER TABLE `missions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `portfoliocategories`
--
ALTER TABLE `portfoliocategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfoliopages`
--
ALTER TABLE `portfoliopages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfoliocategory_id` (`portfoliocategory_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topbars`
--
ALTER TABLE `topbars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visions`
--
ALTER TABLE `visions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `welcomes`
--
ALTER TABLE `welcomes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bgimgs`
--
ALTER TABLE `bgimgs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `missions`
--
ALTER TABLE `missions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `portfoliocategories`
--
ALTER TABLE `portfoliocategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `portfoliopages`
--
ALTER TABLE `portfoliopages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `topbars`
--
ALTER TABLE `topbars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `visions`
--
ALTER TABLE `visions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `welcomes`
--
ALTER TABLE `welcomes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `portfoliopages`
--
ALTER TABLE `portfoliopages`
  ADD CONSTRAINT `portfoliopages_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `portfoliocategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD CONSTRAINT `portfolios_ibfk_1` FOREIGN KEY (`portfoliocategory_id`) REFERENCES `portfoliocategories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
