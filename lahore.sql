-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2020 at 10:35 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lahore`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner_headings`
--

CREATE TABLE `banner_headings` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `heading_color` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#fff',
  `info_color` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#fff',
  `info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_headings`
--

INSERT INTO `banner_headings` (`id`, `page_name`, `heading`, `heading_color`, `info_color`, `info`, `url`, `banner_img`, `created_at`, `updated_at`) VALUES
(1, 'home', 'Making every moment <br> priceless and timeless', '#ffffff', '#ffffff', NULL, NULL, '1591864708.jpeg', '2020-06-11 07:12:21', '2020-06-25 08:44:09'),
(2, 'home', 'Embark on a <br> timeless journey', '#ffffff', '#ffffff', NULL, NULL, '1591859910.jpeg', '2020-06-11 07:18:31', '2020-07-07 23:37:40'),
(3, 'home', 'Crafting the <br> timeless beauty', '#ffffff', '#ffffff', NULL, NULL, '1591859943.jpeg', '2020-06-11 07:19:03', '2020-07-02 05:53:34'),
(4, 'home', 'Gifting the <br> timeless moments', '#ffffff', '#ffffff', NULL, NULL, '1591864723.jpeg', '2020-06-11 07:19:31', '2020-07-07 23:38:36'),
(5, 'men-watch', 'Men Watch', '#ffffff', '#ffffff', NULL, NULL, '1594010605.jpeg', '2020-06-11 07:27:13', '2020-07-05 23:59:10'),
(6, 'product', NULL, '#ffffff', '#ffffff', NULL, NULL, '1591862439.jpeg', '2020-06-11 08:00:39', '2020-06-11 08:00:39'),
(7, 'accessories', NULL, '#ffffff', '#ffffff', NULL, NULL, '1591862593.jpeg', '2020-06-11 08:03:13', '2020-06-11 08:03:13'),
(8, 'repair', NULL, '#ffffff', '#ffffff', NULL, NULL, '1591862953.jpeg', '2020-06-11 08:09:14', '2020-06-11 08:09:14'),
(9, 'store', NULL, '#ffffff', '#ffffff', NULL, NULL, '1591863022.jpeg', '2020-06-11 08:10:23', '2020-06-11 08:10:23'),
(10, 'sale', NULL, '#ffffff', '#ffffff', NULL, NULL, '1591863105.jpeg', '2020-06-11 08:11:45', '2020-06-11 08:11:45'),
(11, 'about', NULL, '#ffffff', '#ffffff', NULL, NULL, '1591863236.jpeg', '2020-06-11 08:13:56', '2020-06-11 08:13:56'),
(12, 'contact', NULL, '#ffffff', '#ffffff', NULL, NULL, '1591866790.jpeg', '2020-06-11 09:13:10', '2020-06-11 09:13:10'),
(14, 'home', 'Gifting the <br> timeless moments', '#ffffff', '#ffffff', NULL, NULL, '1593688963.jpeg', '2020-07-02 11:22:44', '2020-07-07 23:37:58'),
(15, 'women-watch', 'Women Watches', '#ffffff', '#ffffff', NULL, NULL, '1594010765.jpeg', '2020-07-06 04:46:05', '2020-07-06 04:46:05'),
(16, 'unisex-watch', 'Unisex Watches', '#ffffff', '#ffffff', NULL, NULL, '1594010830.jpeg', '2020-07-06 04:47:10', '2020-07-06 04:47:10'),
(17, 'couple-watch', 'Couple Watches', '#ffffff', '#ffffff', NULL, NULL, '1594010886.jpeg', '2020-07-06 04:48:06', '2020-07-06 04:48:06'),
(18, 'all', NULL, '#ffffff', '#ffffff', NULL, NULL, '1594010939.jpeg', '2020-07-06 04:48:59', '2020-07-06 04:48:59');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_category_id` int(10) UNSIGNED DEFAULT NULL,
  `blog_author_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_info` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_category_id`, `blog_author_id`, `title`, `slug`, `info`, `sort_info`, `header_img`, `meta_title`, `meta_description`, `meta_keyword`, `h1`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Fashion News', 'fashion-news', '<p>Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula.</p>\n\n<p>Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. Nulla aliquet turpis eget sodales scelerisque. Ut accumsan rhoncus sapien a dignissim. Sed vel ipsum nunc. Aliquam erat volutpat. Donec et dignissim elit. Etiam condimentum, ante sed rutrum auctor, quam arcu consequat massa, at gravida enim velit id nisl.</p>\n\n<p>Nullam non felis odio. Praesent aliquam magna est, nec volutpat quam aliquet non. Cras ut lobortis massa, a fringilla dolor. Quisque ornare est at felis consectetur mollis. Aliquam vitae metus et enim posuere ornare. Praesent sapien erat, pellentesque quis sollicitudin eget, imperdiet bibendum magna. Aenean sit amet odio est.</p>\n\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris quis est lobortis odio dignissim rutrum. Pellentesque blandit lacinia diam, a tincidunt felis tempus eget.</p>\n\n<p>Donec egestas metus non vehicula accumsan. Pellentesque sit amet tempor nibh. Mauris in risus lorem. Cras malesuada gravida massa eget viverra. Suspendisse vitae dolor erat. Morbi id rhoncus enim. In hac habitasse platea dictumst. Aenean lorem diam, venenatis nec venenatis id, adipiscing ac massa. Nam vel dui eget justo dictum pretium a rhoncus ipsum. Donec venenatis erat tincidunt nunc suscipit, sit amet bibendum lacus posuere. Sed scelerisque, dolor a pharetra sodales, mi augue consequat sapien, et interdum tellus leo et nunc. Nunc imperdiet eu libero ut imperdiet.</p>', 'Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula.', '1589182522.jpeg', 'testing meta title', 'Meta Description', NULL, 'testing h1', 1, '2020-05-02 12:04:12', '2020-05-11 02:05:22'),
(2, 1, 1, 'Fashion News 2', 'fashion-news-2', '<p>Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula.</p>\r\n\r\n<p>Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. Nulla aliquet turpis eget sodales scelerisque. Ut accumsan rhoncus sapien a dignissim. Sed vel ipsum nunc. Aliquam erat volutpat. Donec et dignissim elit. Etiam condimentum, ante sed rutrum auctor, quam arcu consequat massa, at gravida enim velit id nisl.</p>\r\n\r\n<p>Nullam non felis odio. Praesent aliquam magna est, nec volutpat quam aliquet non. Cras ut lobortis massa, a fringilla dolor. Quisque ornare est at felis consectetur mollis. Aliquam vitae metus et enim posuere ornare. Praesent sapien erat, pellentesque quis sollicitudin eget, imperdiet bibendum magna. Aenean sit amet odio est.</p>\r\n\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris quis est lobortis odio dignissim rutrum. Pellentesque blandit lacinia diam, a tincidunt felis tempus eget.</p>\r\n\r\n<p>Donec egestas metus non vehicula accumsan. Pellentesque sit amet tempor nibh. Mauris in risus lorem. Cras malesuada gravida massa eget viverra. Suspendisse vitae dolor erat. Morbi id rhoncus enim. In hac habitasse platea dictumst. Aenean lorem diam, venenatis nec venenatis id, adipiscing ac massa. Nam vel dui eget justo dictum pretium a rhoncus ipsum. Donec venenatis erat tincidunt nunc suscipit, sit amet bibendum lacus posuere. Sed scelerisque, dolor a pharetra sodales, mi augue consequat sapien, et interdum tellus leo et nunc. Nunc imperdiet eu libero ut imperdiet.</p>', 'Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula.', '1589182523.jpeg', 'testing meta title', 'Meta Description', NULL, 'testing h1', 1, '2020-05-02 12:04:12', '2020-05-03 23:46:41'),
(3, 1, 1, 'Fashion News 3', 'fashion-news-3', '<p>Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula.</p>\r\n\r\n<p>Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. Nulla aliquet turpis eget sodales scelerisque. Ut accumsan rhoncus sapien a dignissim. Sed vel ipsum nunc. Aliquam erat volutpat. Donec et dignissim elit. Etiam condimentum, ante sed rutrum auctor, quam arcu consequat massa, at gravida enim velit id nisl.</p>\r\n\r\n<p>Nullam non felis odio. Praesent aliquam magna est, nec volutpat quam aliquet non. Cras ut lobortis massa, a fringilla dolor. Quisque ornare est at felis consectetur mollis. Aliquam vitae metus et enim posuere ornare. Praesent sapien erat, pellentesque quis sollicitudin eget, imperdiet bibendum magna. Aenean sit amet odio est.</p>\r\n\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris quis est lobortis odio dignissim rutrum. Pellentesque blandit lacinia diam, a tincidunt felis tempus eget.</p>\r\n\r\n<p>Donec egestas metus non vehicula accumsan. Pellentesque sit amet tempor nibh. Mauris in risus lorem. Cras malesuada gravida massa eget viverra. Suspendisse vitae dolor erat. Morbi id rhoncus enim. In hac habitasse platea dictumst. Aenean lorem diam, venenatis nec venenatis id, adipiscing ac massa. Nam vel dui eget justo dictum pretium a rhoncus ipsum. Donec venenatis erat tincidunt nunc suscipit, sit amet bibendum lacus posuere. Sed scelerisque, dolor a pharetra sodales, mi augue consequat sapien, et interdum tellus leo et nunc. Nunc imperdiet eu libero ut imperdiet.</p>', 'Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula.', '1589182524.jpeg', 'testing meta title', 'Meta Description', NULL, 'testing h1', 1, '2020-05-02 12:04:12', '2020-05-03 23:46:56'),
(4, 1, 1, 'Fashion News 4', 'fashion-news-4', '<p>Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula.</p>\r\n\r\n<p>Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. Nulla aliquet turpis eget sodales scelerisque. Ut accumsan rhoncus sapien a dignissim. Sed vel ipsum nunc. Aliquam erat volutpat. Donec et dignissim elit. Etiam condimentum, ante sed rutrum auctor, quam arcu consequat massa, at gravida enim velit id nisl.</p>\r\n\r\n<p>Nullam non felis odio. Praesent aliquam magna est, nec volutpat quam aliquet non. Cras ut lobortis massa, a fringilla dolor. Quisque ornare est at felis consectetur mollis. Aliquam vitae metus et enim posuere ornare. Praesent sapien erat, pellentesque quis sollicitudin eget, imperdiet bibendum magna. Aenean sit amet odio est.</p>\r\n\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris quis est lobortis odio dignissim rutrum. Pellentesque blandit lacinia diam, a tincidunt felis tempus eget.</p>\r\n\r\n<p>Donec egestas metus non vehicula accumsan. Pellentesque sit amet tempor nibh. Mauris in risus lorem. Cras malesuada gravida massa eget viverra. Suspendisse vitae dolor erat. Morbi id rhoncus enim. In hac habitasse platea dictumst. Aenean lorem diam, venenatis nec venenatis id, adipiscing ac massa. Nam vel dui eget justo dictum pretium a rhoncus ipsum. Donec venenatis erat tincidunt nunc suscipit, sit amet bibendum lacus posuere. Sed scelerisque, dolor a pharetra sodales, mi augue consequat sapien, et interdum tellus leo et nunc. Nunc imperdiet eu libero ut imperdiet.</p>', 'Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula.', '1589182525.jpeg', 'testing meta title', 'Meta Description', NULL, 'testing h1', 1, '2020-05-02 12:04:12', '2020-05-03 23:47:10'),
(5, 1, 1, 'Fashion News 5', 'fashion-news-5', '<p>Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula.</p>\r\n\r\n<p>Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. Nulla aliquet turpis eget sodales scelerisque. Ut accumsan rhoncus sapien a dignissim. Sed vel ipsum nunc. Aliquam erat volutpat. Donec et dignissim elit. Etiam condimentum, ante sed rutrum auctor, quam arcu consequat massa, at gravida enim velit id nisl.</p>\r\n\r\n<p>Nullam non felis odio. Praesent aliquam magna est, nec volutpat quam aliquet non. Cras ut lobortis massa, a fringilla dolor. Quisque ornare est at felis consectetur mollis. Aliquam vitae metus et enim posuere ornare. Praesent sapien erat, pellentesque quis sollicitudin eget, imperdiet bibendum magna. Aenean sit amet odio est.</p>\r\n\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris quis est lobortis odio dignissim rutrum. Pellentesque blandit lacinia diam, a tincidunt felis tempus eget.</p>\r\n\r\n<p>Donec egestas metus non vehicula accumsan. Pellentesque sit amet tempor nibh. Mauris in risus lorem. Cras malesuada gravida massa eget viverra. Suspendisse vitae dolor erat. Morbi id rhoncus enim. In hac habitasse platea dictumst. Aenean lorem diam, venenatis nec venenatis id, adipiscing ac massa. Nam vel dui eget justo dictum pretium a rhoncus ipsum. Donec venenatis erat tincidunt nunc suscipit, sit amet bibendum lacus posuere. Sed scelerisque, dolor a pharetra sodales, mi augue consequat sapien, et interdum tellus leo et nunc. Nunc imperdiet eu libero ut imperdiet.</p>', 'Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula.', '1589182526.jpeg', 'testing meta title', 'Meta Description', NULL, 'testing h1', 1, '2020-05-02 12:04:12', '2020-05-03 23:47:23'),
(6, 1, 1, 'Fashion News 6', 'fashion-news-6', '<p>Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula.</p>\r\n\r\n<p>Nam dolor ligula, faucibus id sodales in, auctor fringilla libero. Pellentesque pellentesque tempor tellus eget hendrerit. Morbi id aliquam ligula. Aliquam id dui sem. Proin rhoncus consequat nisl, eu ornare mauris tincidunt vitae. Nulla aliquet turpis eget sodales scelerisque. Ut accumsan rhoncus sapien a dignissim. Sed vel ipsum nunc. Aliquam erat volutpat. Donec et dignissim elit. Etiam condimentum, ante sed rutrum auctor, quam arcu consequat massa, at gravida enim velit id nisl.</p>\r\n\r\n<p>Nullam non felis odio. Praesent aliquam magna est, nec volutpat quam aliquet non. Cras ut lobortis massa, a fringilla dolor. Quisque ornare est at felis consectetur mollis. Aliquam vitae metus et enim posuere ornare. Praesent sapien erat, pellentesque quis sollicitudin eget, imperdiet bibendum magna. Aenean sit amet odio est.</p>\r\n\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris quis est lobortis odio dignissim rutrum. Pellentesque blandit lacinia diam, a tincidunt felis tempus eget.</p>\r\n\r\n<p>Donec egestas metus non vehicula accumsan. Pellentesque sit amet tempor nibh. Mauris in risus lorem. Cras malesuada gravida massa eget viverra. Suspendisse vitae dolor erat. Morbi id rhoncus enim. In hac habitasse platea dictumst. Aenean lorem diam, venenatis nec venenatis id, adipiscing ac massa. Nam vel dui eget justo dictum pretium a rhoncus ipsum. Donec venenatis erat tincidunt nunc suscipit, sit amet bibendum lacus posuere. Sed scelerisque, dolor a pharetra sodales, mi augue consequat sapien, et interdum tellus leo et nunc. Nunc imperdiet eu libero ut imperdiet.</p>', 'Euismod atras vulputate iltricies etri elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla nunc dui, tristique in semper vel, congue sed ligula.', '1589182527.jpeg', 'testing meta title', 'Meta Description', NULL, 'testing h1', 1, '2020-05-02 12:04:12', '2020-05-03 23:47:37');

-- --------------------------------------------------------

--
-- Table structure for table `blog_authors`
--

CREATE TABLE `blog_authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_authors`
--

INSERT INTO `blog_authors` (`id`, `name`, `slug`, `img`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', NULL, '2020-05-02 11:44:03', '2020-05-02 11:44:03');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `img`, `parent`, `meta_title`, `meta_description`, `h1`, `status`, `created_at`, `updated_at`) VALUES
(1, 'watch', 'watch', NULL, NULL, 'testing meta title', 'Meta Description', 'testing h1', 1, '2020-05-02 11:43:42', '2020-05-02 11:43:42');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_color` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#ffffff',
  `logo_img` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_img` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 = inactive, 1 = active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `name_color`, `logo_img`, `banner_img`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Salvatore Ferragamo', 'salvatore-ferragamo', '#000000', '1591858729.jpeg', '1594010430.jpeg', 1, '2020-05-30 05:55:34', '2020-07-05 23:10:30'),
(2, 'VERSACE', 'versace', '#ffffff', '1591858742.jpeg', '1594010447.jpeg', 1, '2020-05-30 05:55:34', '2020-07-05 23:10:47'),
(3, 'PIERRE CARDIN', 'pierre-cardin', '#ffffff', '1591858584.jpeg', '1594010203.jpeg', 1, '2020-05-30 05:55:35', '2020-07-05 23:06:43'),
(4, 'VICTORINOX', 'victorinox', '#000000', '1591858598.jpeg', '1594010228.jpeg', 1, '2020-05-30 05:55:35', '2020-07-05 23:07:08'),
(5, 'SEIKO', 'seiko', '#000000', '1591858612.jpeg', '1594010249.jpeg', 1, '2020-05-30 05:55:35', '2020-07-05 23:07:29'),
(6, 'Armani Exchange', 'armani-exchange', '#000000', '1591858626.jpeg', '1594010270.jpeg', 1, '2020-05-30 05:55:35', '2020-07-05 23:07:50'),
(7, 'EMPORIO ARMANI', 'emporio-armani', '#ffffff', '1591858641.jpeg', '1594010294.jpeg', 1, '2020-05-30 05:55:35', '2020-07-05 23:08:14'),
(8, 'GC', 'gc', '#000000', '1591858656.jpeg', '1594010312.jpeg', 1, '2020-05-30 05:55:35', '2020-07-05 23:08:32'),
(9, 'VERSUS', 'versus', '#000000', '1591858670.jpeg', '1594010338.jpeg', 1, '2020-05-30 05:55:35', '2020-07-05 23:08:58'),
(10, 'MICHAEL KORS', 'michael-kors', '#000000', '1591858684.jpeg', '1594010364.jpeg', 1, '2020-05-30 05:55:35', '2020-07-05 23:09:24'),
(11, 'CITIZEN', 'citizen', '#ffffff', '1591858697.jpeg', '1594010387.jpeg', 1, '2020-05-30 05:55:35', '2020-07-05 23:09:47'),
(12, 'GUESS', 'guess', '#ffffff', '1591858716.jpeg', '1594010406.jpeg', 1, '2020-05-30 05:55:35', '2020-07-05 23:10:06'),
(13, 'RADO', 'rado', '#000000', '1591858511.jpeg', '1594010097.jpeg', 0, '2020-05-30 05:55:36', '2020-07-05 23:04:57'),
(14, 'FOSSIL', 'fossil', '#000000', '1591858542.jpeg', '1594010146.jpeg', 1, '2020-05-30 05:55:36', '2020-07-05 23:05:46'),
(15, 'FOSSIL Q', 'fossil-q', '#ffffff', '1591858552.jpeg', '1594010164.jpeg', 1, '2020-05-30 05:55:36', '2020-07-05 23:06:05'),
(16, 'DIESEL', 'diesel', '#ffffff', '1591858570.jpeg', '1594010181.jpeg', 1, '2020-05-30 05:55:36', '2020-07-05 23:06:21');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pro_qty` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `user_id`, `pro_qty`) VALUES
(53, 8, 43, 1),
(54, 53, 43, 1);

-- --------------------------------------------------------

--
-- Table structure for table `case_materials`
--

CREATE TABLE `case_materials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 = inactive, 1 = active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `case_materials`
--

INSERT INTO `case_materials` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Titanium', 'titanium', 1, '2020-05-30 06:36:27', '2020-05-30 06:36:27'),
(2, 'Stainless Steel', 'stainless-steel', 1, '2020-05-30 06:36:27', '2020-05-30 06:36:27'),
(3, 'Silicone', 'silicone', 1, '2020-05-30 06:36:28', '2020-05-30 06:36:28'),
(4, 'Aluminium', 'aluminium', 1, '2020-05-30 06:36:28', '2020-05-30 06:36:28'),
(5, 'Steel & Yellow Gold PVD', 'steel-&-yellow-gold-pvd', 1, '2020-05-30 06:36:28', '2020-05-30 06:36:28'),
(6, 'Titanium & Rose Gold PVD', 'titanium-&-rose-gold-pvd', 1, '2020-05-30 06:36:28', '2020-05-30 06:36:28'),
(7, 'Steel & Blue PVD', 'steel-&-blue-pvd', 1, '2020-05-30 06:36:28', '2020-05-30 06:36:28'),
(8, 'Steel & Rose Gold PVD', 'steel-&-rose-gold-pvd', 1, '2020-05-30 06:36:28', '2020-05-30 06:36:28'),
(9, 'Steel & Black PVD', 'steel-&-black-pvd', 1, '2020-05-30 06:36:28', '2020-05-30 06:36:28'),
(10, 'Steel & Grey PVD', 'steel-&-grey-pvd', 1, '2020-05-30 06:36:28', '2020-05-30 06:36:28'),
(11, 'Steel & Gunmetal PVD', 'steel-&-gunmetal-pvd', 1, '2020-05-30 06:36:28', '2020-05-30 06:36:28'),
(12, 'Steel &Black PVD', 'steel-&black-pvd', 1, '2020-05-30 06:36:28', '2020-05-30 06:36:28'),
(13, 'Green polycarbonate', 'green-polycarbonate', 1, '2020-05-30 06:36:28', '2020-05-30 06:36:28'),
(14, 'Polycarbonate', 'polycarbonate', 1, '2020-05-30 06:36:28', '2020-05-30 06:36:28'),
(15, 'Steel & Back PVD', 'steel-&-back-pvd', 1, '2020-05-30 06:36:28', '2020-05-30 06:36:28'),
(16, 'Gunmetal', 'gunmetal', 1, '2020-05-30 06:36:28', '2020-05-30 06:36:28');

-- --------------------------------------------------------

--
-- Table structure for table `case_shapes`
--

CREATE TABLE `case_shapes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 = inactive, 1 = active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `case_shapes`
--

INSERT INTO `case_shapes` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Round', 'round', 1, '2020-05-30 06:34:57', '2020-05-30 06:34:57'),
(2, 'Rectangular', 'rectangular', 1, '2020-05-30 06:34:57', '2020-05-30 06:34:57'),
(3, 'Oval', 'oval', 1, '2020-05-30 06:34:57', '2020-05-30 06:34:57'),
(4, 'Ractanguler', 'ractanguler', 1, '2020-05-30 06:34:57', '2020-05-30 06:34:57'),
(5, 'Tonneau', 'tonneau', 1, '2020-05-30 06:34:57', '2020-05-30 06:34:57');

-- --------------------------------------------------------

--
-- Table structure for table `case_sizes`
--

CREATE TABLE `case_sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `case_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 = inactive, 1 = active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `case_sizes`
--

INSERT INTO `case_sizes` (`id`, `case_size`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, '44mm', '44mm', 1, '2020-05-30 06:32:52', '2020-05-30 06:32:52'),
(2, '42mm', '42mm', 1, '2020-05-30 06:32:53', '2020-05-30 06:32:53'),
(3, '45mm', '45mm', 1, '2020-05-30 06:32:53', '2020-05-30 06:32:53'),
(4, '43mm', '43mm', 1, '2020-05-30 06:32:53', '2020-05-30 06:32:53'),
(5, '40mm', '40mm', 1, '2020-05-30 06:32:53', '2020-05-30 06:32:53'),
(6, '34mm', '34mm', 1, '2020-05-30 06:32:53', '2020-05-30 06:32:53'),
(7, '41mm', '41mm', 1, '2020-05-30 06:32:53', '2020-05-30 06:32:53'),
(8, '30mm', '30mm', 1, '2020-05-30 06:32:53', '2020-05-30 06:32:53'),
(9, '38mm', '38mm', 1, '2020-05-30 06:32:53', '2020-05-30 06:32:53'),
(10, '40.6mm', '40.6mm', 1, '2020-05-30 06:32:53', '2020-05-30 06:32:53'),
(11, '42.80mm', '42.80mm', 1, '2020-05-30 06:32:53', '2020-05-30 06:32:53'),
(12, '35mm', '35mm', 1, '2020-05-30 06:32:53', '2020-05-30 06:32:53'),
(13, '32mm', '32mm', 1, '2020-05-30 06:32:53', '2020-05-30 06:32:53'),
(14, '43.6mm', '43.6mm', 1, '2020-05-30 06:32:53', '2020-05-30 06:32:53'),
(15, '37.4mm', '37.4mm', 1, '2020-05-30 06:32:53', '2020-05-30 06:32:53'),
(16, '46.7mm', '46.7mm', 1, '2020-05-30 06:32:53', '2020-05-30 06:32:53'),
(17, '42.5mm', '42.5mm', 1, '2020-05-30 06:32:54', '2020-05-30 06:32:54'),
(18, '46.2mm', '46.2mm', 1, '2020-05-30 06:32:54', '2020-05-30 06:32:54'),
(19, '47.8mm', '47.8mm', 1, '2020-05-30 06:32:54', '2020-05-30 06:32:54'),
(20, '37mm', '37mm', 1, '2020-05-30 06:32:54', '2020-05-30 06:32:54'),
(21, '42.3mm', '42.3mm', 1, '2020-05-30 06:32:54', '2020-05-30 06:32:54'),
(22, '41.5mm', '41.5mm', 1, '2020-05-30 06:32:54', '2020-05-30 06:32:54'),
(23, '46.3mm', '46.3mm', 1, '2020-05-30 06:32:54', '2020-05-30 06:32:54'),
(24, '46mm', '46mm', 1, '2020-05-30 06:32:54', '2020-05-30 06:32:54'),
(25, '42.9mm', '42.9mm', 1, '2020-05-30 06:32:54', '2020-05-30 06:32:54'),
(26, '44.6mm', '44.6mm', 1, '2020-05-30 06:32:54', '2020-05-30 06:32:54'),
(27, '43.3mm', '43.3mm', 1, '2020-05-30 06:32:54', '2020-05-30 06:32:54'),
(28, '44.2mm', '44.2mm', 1, '2020-05-30 06:32:54', '2020-05-30 06:32:54'),
(29, '31.4mm', '31.4mm', 1, '2020-05-30 06:32:54', '2020-05-30 06:32:54'),
(30, '31.mm', '31.mm', 1, '2020-05-30 06:32:54', '2020-05-30 06:32:54'),
(31, '21mm', '21mm', 1, '2020-05-30 06:32:54', '2020-05-30 06:32:54'),
(32, '34.4mm', '34.4mm', 1, '2020-05-30 06:32:55', '2020-05-30 06:32:55'),
(33, '43.mm', '43.mm', 1, '2020-05-30 06:32:55', '2020-05-30 06:32:55'),
(34, '42.mm', '42.mm', 1, '2020-05-30 06:32:55', '2020-05-30 06:32:55'),
(35, '39.mm', '39.mm', 1, '2020-05-30 06:32:55', '2020-05-30 06:32:55'),
(36, '39.2mm', '39.2mm', 1, '2020-05-30 06:32:55', '2020-05-30 06:32:55'),
(37, '45.mm', '45.mm', 1, '2020-05-30 06:32:55', '2020-05-30 06:32:55'),
(38, '40.5mm', '40.5mm', 1, '2020-05-30 06:32:55', '2020-05-30 06:32:55'),
(39, '43.8mm', '43.8mm', 1, '2020-05-30 06:32:55', '2020-05-30 06:32:55'),
(40, '28.mm', '28.mm', 1, '2020-05-30 06:32:55', '2020-05-30 06:32:55'),
(41, '27.5mm', '27.5mm', 1, '2020-05-30 06:32:55', '2020-05-30 06:32:55'),
(42, '30.mm', '30.mm', 1, '2020-05-30 06:32:55', '2020-05-30 06:32:55'),
(43, '29.6mm', '29.6mm', 1, '2020-05-30 06:32:55', '2020-05-30 06:32:55'),
(44, '27.mm', '27.mm', 1, '2020-05-30 06:32:55', '2020-05-30 06:32:55'),
(45, '29.mm', '29.mm', 1, '2020-05-30 06:32:56', '2020-05-30 06:32:56'),
(46, '44.9mm', '44.9mm', 1, '2020-05-30 06:32:56', '2020-05-30 06:32:56'),
(47, '44.mm', '44.mm', 1, '2020-05-30 06:32:56', '2020-05-30 06:32:56'),
(48, '43.9mm', '43.9mm', 1, '2020-05-30 06:32:56', '2020-05-30 06:32:56'),
(49, '42.7mm', '42.7mm', 1, '2020-05-30 06:32:56', '2020-05-30 06:32:56'),
(50, '45.2mm', '45.2mm', 1, '2020-05-30 06:32:56', '2020-05-30 06:32:56'),
(51, '43.5mm', '43.5mm', 1, '2020-05-30 06:32:56', '2020-05-30 06:32:56'),
(52, '45.5mm', '45.5mm', 1, '2020-05-30 06:32:56', '2020-05-30 06:32:56'),
(53, '22.9mm', '22.9mm', 1, '2020-05-30 06:32:56', '2020-05-30 06:32:56'),
(54, '38.mm', '38.mm', 1, '2020-05-30 06:32:56', '2020-05-30 06:32:56'),
(55, '40.8mm', '40.8mm', 1, '2020-05-30 06:32:56', '2020-05-30 06:32:56'),
(56, '26.5mm', '26.5mm', 1, '2020-05-30 06:32:56', '2020-05-30 06:32:56'),
(57, '37.mm', '37.mm', 1, '2020-05-30 06:32:57', '2020-05-30 06:32:57'),
(58, '32.mm', '32.mm', 1, '2020-05-30 06:32:57', '2020-05-30 06:32:57'),
(59, '30.5mm', '30.5mm', 1, '2020-05-30 06:32:57', '2020-05-30 06:32:57'),
(60, '16.mm', '16.mm', 1, '2020-05-30 06:32:57', '2020-05-30 06:32:57'),
(61, '48.mm', '48.mm', 1, '2020-05-30 06:32:57', '2020-05-30 06:32:57'),
(62, '46.mm', '46.mm', 1, '2020-05-30 06:32:57', '2020-05-30 06:32:57'),
(63, '36.mm', '36.mm', 1, '2020-05-30 06:32:57', '2020-05-30 06:32:57'),
(64, '40.mm', '40.mm', 1, '2020-05-30 06:32:57', '2020-05-30 06:32:57'),
(65, '44.5mm', '44.5mm', 1, '2020-05-30 06:32:57', '2020-05-30 06:32:57'),
(66, '41.mm', '41.mm', 1, '2020-05-30 06:32:57', '2020-05-30 06:32:57'),
(67, '34.mm', '34.mm', 1, '2020-05-30 06:32:57', '2020-05-30 06:32:57'),
(68, '33.mm', '33.mm', 1, '2020-05-30 06:32:57', '2020-05-30 06:32:57'),
(69, '34.5mm', '34.5mm', 1, '2020-05-30 06:32:57', '2020-05-30 06:32:57'),
(70, '36.5mm', '36.5mm', 1, '2020-05-30 06:32:57', '2020-05-30 06:32:57'),
(71, '44.8mm', '44.8mm', 1, '2020-05-30 06:32:57', '2020-05-30 06:32:57'),
(72, '23.mm', '23.mm', 1, '2020-05-30 06:32:57', '2020-05-30 06:32:57'),
(73, '25.mm', '25.mm', 1, '2020-05-30 06:32:57', '2020-05-30 06:32:57'),
(74, '26.mm', '26.mm', 1, '2020-05-30 06:32:57', '2020-05-30 06:32:57'),
(75, '35.mm', '35.mm', 1, '2020-05-30 06:32:58', '2020-05-30 06:32:58'),
(76, '47.mm', '47.mm', 1, '2020-05-30 06:32:58', '2020-05-30 06:32:58'),
(77, '50.mm', '50.mm', 1, '2020-05-30 06:32:58', '2020-05-30 06:32:58'),
(78, '57.mm', '57.mm', 1, '2020-05-30 06:32:58', '2020-05-30 06:32:58'),
(79, '54.mm', '54.mm', 1, '2020-05-30 06:32:58', '2020-05-30 06:32:58'),
(80, '52.mm', '52.mm', 1, '2020-05-30 06:32:58', '2020-05-30 06:32:58'),
(81, '53.mm', '53.mm', 1, '2020-05-30 06:32:58', '2020-05-30 06:32:58'),
(82, '51.mm', '51.mm', 1, '2020-05-30 06:32:58', '2020-05-30 06:32:58'),
(83, '49.mm', '49.mm', 1, '2020-05-30 06:32:58', '2020-05-30 06:32:58');

-- --------------------------------------------------------

--
-- Table structure for table `clock_types`
--

CREATE TABLE `clock_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clock_types`
--

INSERT INTO `clock_types` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Table Clock', 'table-clock', 1, '2020-05-29 08:23:14', '2020-05-29 08:23:14');

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 = inactive, 1 = active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Salvatore Ferragamo', 'salvatore-ferragamo', 1, '2020-05-30 06:02:38', '2020-05-30 06:02:38'),
(2, 'VERSACE', 'versace', 1, '2020-05-30 06:02:38', '2020-05-30 06:02:38'),
(3, 'MANIFESTO EDITION', 'manifesto-edition', 1, '2020-05-30 06:02:38', '2020-05-30 06:02:38'),
(4, 'AION CHRONO', 'aion-chrono', 1, '2020-05-30 06:02:38', '2020-05-30 06:02:38'),
(5, 'Palazzo Empire', 'palazzo-empire', 1, '2020-05-30 06:02:38', '2020-05-30 06:02:38'),
(6, 'PIERRE CARDIN', 'pierre-cardin', 1, '2020-05-30 06:02:38', '2020-05-30 06:02:38'),
(7, 'Rayonnement', 'rayonnement', 1, '2020-05-30 06:02:38', '2020-05-30 06:02:38'),
(8, 'Chrono Classic', 'chrono-classic', 1, '2020-05-30 06:02:38', '2020-05-30 06:02:38'),
(9, 'Dive Master 500', 'dive-master-500', 1, '2020-05-30 06:02:38', '2020-05-30 06:02:38'),
(10, 'Alliance', 'alliance', 1, '2020-05-30 06:02:38', '2020-05-30 06:02:38'),
(11, 'Maverick', 'maverick', 1, '2020-05-30 06:02:38', '2020-05-30 06:02:38'),
(12, 'Conceptual', 'conceptual', 1, '2020-05-30 06:02:38', '2020-05-30 06:02:38'),
(13, 'Discover More', 'discover-more', 1, '2020-05-30 06:02:38', '2020-05-30 06:02:38'),
(14, 'Gents', 'gents', 1, '2020-05-30 06:02:38', '2020-05-30 06:02:38'),
(15, 'Lord', 'lord', 1, '2020-05-30 06:02:38', '2020-05-30 06:02:38'),
(16, 'Women', 'women', 1, '2020-05-30 06:02:38', '2020-05-30 06:02:38'),
(17, 'Premier', 'premier', 1, '2020-05-30 06:02:38', '2020-05-30 06:02:38'),
(18, 'Sportura', 'sportura', 1, '2020-05-30 06:02:39', '2020-05-30 06:02:39'),
(19, 'Dress', 'dress', 1, '2020-05-30 06:02:39', '2020-05-30 06:02:39'),
(20, 'Men Collection', 'men-collection', 1, '2020-05-30 06:02:39', '2020-05-30 06:02:39'),
(21, 'Classic', 'classic', 1, '2020-05-30 06:02:39', '2020-05-30 06:02:39'),
(22, 'Prospex', 'prospex', 1, '2020-05-30 06:02:39', '2020-05-30 06:02:39'),
(23, 'Coutura', 'coutura', 1, '2020-05-30 06:02:39', '2020-05-30 06:02:39'),
(24, 'Seiko 5', 'seiko-5', 1, '2020-05-30 06:02:39', '2020-05-30 06:02:39'),
(25, 'Velatura', 'velatura', 1, '2020-05-30 06:02:39', '2020-05-30 06:02:39'),
(26, 'Neo Classic', 'neo-classic', 1, '2020-05-30 06:02:39', '2020-05-30 06:02:39'),
(27, 'Neo Sports', 'neo-sports', 1, '2020-05-30 06:02:39', '2020-05-30 06:02:39'),
(28, 'Kinetic', 'kinetic', 1, '2020-05-30 06:02:39', '2020-05-30 06:02:39'),
(29, 'Presage', 'presage', 1, '2020-05-30 06:02:39', '2020-05-30 06:02:39'),
(30, '5 Sports', '5-sports', 1, '2020-05-30 06:02:39', '2020-05-30 06:02:39'),
(31, 'Sports', 'sports', 1, '2020-05-30 06:02:39', '2020-05-30 06:02:39'),
(32, 'Chronograph', 'chronograph', 1, '2020-05-30 06:02:39', '2020-05-30 06:02:39'),
(33, 'Moto Sport', 'moto-sport', 1, '2020-05-30 06:02:39', '2020-05-30 06:02:39'),
(34, 'Criteria', 'criteria', 1, '2020-05-30 06:02:39', '2020-05-30 06:02:39'),
(35, 'Solar', 'solar', 1, '2020-05-30 06:02:40', '2020-05-30 06:02:40'),
(36, 'Kello', 'kello', 1, '2020-05-30 06:02:40', '2020-05-30 06:02:40'),
(37, 'Dame', 'dame', 1, '2020-05-30 06:02:40', '2020-05-30 06:02:40'),
(38, 'Outer Bank', 'outer-bank', 1, '2020-05-30 06:02:40', '2020-05-30 06:02:40'),
(39, 'Street', 'street', 1, '2020-05-30 06:02:40', '2020-05-30 06:02:40'),
(40, 'Smart', 'smart', 1, '2020-05-30 06:02:40', '2020-05-30 06:02:40'),
(41, 'Hampton', 'hampton', 1, '2020-05-30 06:02:40', '2020-05-30 06:02:40'),
(42, 'Men\'s', 'men\'s', 1, '2020-05-30 06:02:40', '2020-05-30 06:02:40'),
(43, 'Drexler', 'drexler', 1, '2020-05-30 06:02:40', '2020-05-30 06:02:40'),
(44, 'X Gents', 'x-gents', 1, '2020-05-30 06:02:40', '2020-05-30 06:02:40'),
(45, 'Cayde', 'cayde', 1, '2020-05-30 06:02:40', '2020-05-30 06:02:40'),
(46, 'Olivia', 'olivia', 1, '2020-05-30 06:02:40', '2020-05-30 06:02:40'),
(47, 'Brooke', 'brooke', 1, '2020-05-30 06:02:40', '2020-05-30 06:02:40'),
(48, 'Lola', 'lola', 1, '2020-05-30 06:02:40', '2020-05-30 06:02:40'),
(49, 'Harper', 'harper', 1, '2020-05-30 06:02:40', '2020-05-30 06:02:40'),
(50, 'Lady Drexler', 'lady-drexler', 1, '2020-05-30 06:02:40', '2020-05-30 06:02:40'),
(51, 'Connected', 'connected', 1, '2020-05-30 06:02:40', '2020-05-30 06:02:40'),
(52, 'Aviator', 'aviator', 1, '2020-05-30 06:02:41', '2020-05-30 06:02:41'),
(53, 'Kappa', 'kappa', 1, '2020-05-30 06:02:41', '2020-05-30 06:02:41'),
(54, 'Valente', 'valente', 1, '2020-05-30 06:02:41', '2020-05-30 06:02:41'),
(55, 'Gianni T-Bar', 'gianni-t-bar', 1, '2020-05-30 06:02:41', '2020-05-30 06:02:41'),
(56, 'Sport ', 'sport-', 1, '2020-05-30 06:02:41', '2020-05-30 06:02:41'),
(57, 'Sport', 'sport', 1, '2020-05-30 06:02:41', '2020-05-30 06:02:41'),
(58, 'Modern Slim', 'modern-slim', 1, '2020-05-30 06:02:41', '2020-05-30 06:02:41'),
(59, 'Renato', 'renato', 1, '2020-05-30 06:02:41', '2020-05-30 06:02:41'),
(60, 'Giovanni', 'giovanni', 1, '2020-05-30 06:02:41', '2020-05-30 06:02:41'),
(61, 'Ceramica', 'ceramica', 1, '2020-05-30 06:02:41', '2020-05-30 06:02:41'),
(62, 'Retro', 'retro', 1, '2020-05-30 06:02:41', '2020-05-30 06:02:41'),
(63, 'Alpha', 'alpha', 1, '2020-05-30 06:02:41', '2020-05-30 06:02:41'),
(64, 'Luigi', 'luigi', 1, '2020-05-30 06:02:41', '2020-05-30 06:02:41'),
(65, 'Sportivo', 'sportivo', 1, '2020-05-30 06:02:41', '2020-05-30 06:02:41'),
(66, 'Ea Connected', 'ea-connected', 1, '2020-05-30 06:02:41', '2020-05-30 06:02:41'),
(67, 'Smart Watch', 'smart-watch', 1, '2020-05-30 06:02:41', '2020-05-30 06:02:41'),
(68, 'Sport Chic', 'sport-chic', 1, '2020-05-30 06:02:42', '2020-05-30 06:02:42'),
(69, 'Femme Bijou', 'femme-bijou', 1, '2020-05-30 06:02:42', '2020-05-30 06:02:42'),
(70, 'Gc Sport', 'gc-sport', 1, '2020-05-30 06:02:42', '2020-05-30 06:02:42'),
(71, 'Cablechic Precious', 'cablechic-precious', 1, '2020-05-30 06:02:42', '2020-05-30 06:02:42'),
(72, 'Gc', 'gc', 1, '2020-05-30 06:02:42', '2020-05-30 06:02:42'),
(73, 'Shoreditch', 'shoreditch', 1, '2020-05-30 06:02:42', '2020-05-30 06:02:42'),
(74, 'Star Ferry ', 'star-ferry ', 1, '2020-05-30 06:02:42', '2020-05-30 06:02:42'),
(75, 'Versace Women', 'versace-women', 1, '2020-05-30 06:02:42', '2020-05-30 06:02:42'),
(76, 'Jaryn', 'jaryn', 1, '2020-05-30 06:02:42', '2020-05-30 06:02:42'),
(77, 'Lauryn', 'lauryn', 1, '2020-05-30 06:02:42', '2020-05-30 06:02:42'),
(78, 'Access', 'access', 1, '2020-05-30 06:02:42', '2020-05-30 06:02:42'),
(79, 'Slim Runway', 'slim-runway', 1, '2020-05-30 06:02:42', '2020-05-30 06:02:42'),
(80, 'Cinthia', 'cinthia', 1, '2020-05-30 06:02:42', '2020-05-30 06:02:42'),
(81, 'Portia', 'portia', 1, '2020-05-30 06:02:42', '2020-05-30 06:02:42'),
(82, 'Pyper', 'pyper', 1, '2020-05-30 06:02:43', '2020-05-30 06:02:43'),
(83, 'Maci', 'maci', 1, '2020-05-30 06:02:43', '2020-05-30 06:02:43'),
(84, 'Darci', 'darci', 1, '2020-05-30 06:02:43', '2020-05-30 06:02:43'),
(85, 'Mini darci', 'mini-darci', 1, '2020-05-30 06:02:43', '2020-05-30 06:02:43'),
(86, 'Hartman', 'hartman', 1, '2020-05-30 06:02:43', '2020-05-30 06:02:43'),
(87, 'Norie', 'norie', 1, '2020-05-30 06:02:43', '2020-05-30 06:02:43'),
(88, 'Libby', 'libby', 1, '2020-05-30 06:02:43', '2020-05-30 06:02:43'),
(89, 'Mini Slim Runway', 'mini-slim-runway', 1, '2020-05-30 06:02:43', '2020-05-30 06:02:43'),
(90, 'Petite Norie', 'petite-norie', 1, '2020-05-30 06:02:43', '2020-05-30 06:02:43'),
(91, 'Sofie', 'sofie', 1, '2020-05-30 06:02:43', '2020-05-30 06:02:43'),
(92, 'Parker', 'parker', 1, '2020-05-30 06:02:43', '2020-05-30 06:02:43'),
(93, 'Bradshaw', 'bradshaw', 1, '2020-05-30 06:02:43', '2020-05-30 06:02:43'),
(94, 'Sawyer', 'sawyer', 1, '2020-05-30 06:02:44', '2020-05-30 06:02:44'),
(95, 'Blair', 'blair', 1, '2020-05-30 06:02:44', '2020-05-30 06:02:44'),
(96, 'Ritz', 'ritz', 1, '2020-05-30 06:02:44', '2020-05-30 06:02:44'),
(97, 'Brecken', 'brecken', 1, '2020-05-30 06:02:44', '2020-05-30 06:02:44'),
(98, 'Garner', 'garner', 1, '2020-05-30 06:02:44', '2020-05-30 06:02:44'),
(99, 'Vail', 'vail', 1, '2020-05-30 06:02:44', '2020-05-30 06:02:44'),
(100, 'Runway', 'runway', 1, '2020-05-30 06:02:44', '2020-05-30 06:02:44'),
(101, 'Lexington', 'lexington', 1, '2020-05-30 06:02:44', '2020-05-30 06:02:44'),
(102, 'Dylan', 'dylan', 1, '2020-05-30 06:02:44', '2020-05-30 06:02:44'),
(103, 'Caine', 'caine', 1, '2020-05-30 06:02:44', '2020-05-30 06:02:44'),
(104, 'Saunder', 'saunder', 1, '2020-05-30 06:02:44', '2020-05-30 06:02:44'),
(105, 'Mini Kerry', 'mini-kerry', 1, '2020-05-30 06:02:44', '2020-05-30 06:02:44'),
(106, 'Quartz Collection', 'quartz-collection', 1, '2020-05-30 06:02:44', '2020-05-30 06:02:44'),
(107, 'Qxy', 'qxy', 1, '2020-05-30 06:02:44', '2020-05-30 06:02:44'),
(108, 'Casual', 'casual', 1, '2020-05-30 06:02:44', '2020-05-30 06:02:44'),
(109, 'Eco-Drive', 'eco-drive', 1, '2020-05-30 06:02:44', '2020-05-30 06:02:44'),
(110, 'Axiom', 'axiom', 1, '2020-05-30 06:02:45', '2020-05-30 06:02:45'),
(111, 'Endeavor', 'endeavor', 1, '2020-05-30 06:02:45', '2020-05-30 06:02:45'),
(112, 'Mens', 'mens', 1, '2020-05-30 06:02:45', '2020-05-30 06:02:45'),
(113, 'Sporty', 'sporty', 1, '2020-05-30 06:02:45', '2020-05-30 06:02:45'),
(114, 'Womens', 'womens', 1, '2020-05-30 06:02:45', '2020-05-30 06:02:45'),
(115, 'Iconic Signature', 'iconic-signature', 1, '2020-05-30 06:02:45', '2020-05-30 06:02:45'),
(116, 'Blue Print', 'blue-print', 1, '2020-05-30 06:02:45', '2020-05-30 06:02:45'),
(117, 'Catalina', 'catalina', 1, '2020-05-30 06:02:45', '2020-05-30 06:02:45'),
(118, 'Gramercy', 'gramercy', 1, '2020-05-30 06:02:45', '2020-05-30 06:02:45'),
(119, 'Sassy', 'sassy', 1, '2020-05-30 06:02:45', '2020-05-30 06:02:45'),
(120, 'South Hampton', 'south-hampton', 1, '2020-05-30 06:02:45', '2020-05-30 06:02:45'),
(121, 'Delancy', 'delancy', 1, '2020-05-30 06:02:45', '2020-05-30 06:02:45'),
(122, 'Montauk', 'montauk', 1, '2020-05-30 06:02:45', '2020-05-30 06:02:45'),
(123, 'Prima', 'prima', 1, '2020-05-30 06:02:45', '2020-05-30 06:02:45'),
(124, 'Zena', 'zena', 1, '2020-05-30 06:02:45', '2020-05-30 06:02:45'),
(125, 'Bedazzel', 'bedazzel', 1, '2020-05-30 06:02:45', '2020-05-30 06:02:45'),
(126, 'Confetti', 'confetti', 1, '2020-05-30 06:02:45', '2020-05-30 06:02:45'),
(127, 'Original', 'original', 1, '2020-05-30 06:02:45', '2020-05-30 06:02:45'),
(128, 'Florence', 'florence', 1, '2020-05-30 06:02:46', '2020-05-30 06:02:46'),
(129, 'Machine', 'machine', 1, '2020-05-30 06:02:46', '2020-05-30 06:02:46'),
(130, 'Neutra', 'neutra', 1, '2020-05-30 06:02:46', '2020-05-30 06:02:46'),
(131, 'THE ANDY AND ADDISON SET', 'the-andy-and-addison-set', 1, '2020-05-30 06:02:46', '2020-05-30 06:02:46'),
(132, 'Garret', 'garret', 1, '2020-05-30 06:02:46', '2020-05-30 06:02:46'),
(133, 'Fb-01', 'fb-01', 1, '2020-05-30 06:02:46', '2020-05-30 06:02:46'),
(134, 'Townsman', 'townsman', 1, '2020-05-30 06:02:46', '2020-05-30 06:02:46'),
(135, 'Flash', 'flash', 1, '2020-05-30 06:02:46', '2020-05-30 06:02:46'),
(136, 'Cecile', 'cecile', 1, '2020-05-30 06:02:46', '2020-05-30 06:02:46'),
(137, 'Coachman', 'coachman', 1, '2020-05-30 06:02:46', '2020-05-30 06:02:46'),
(138, 'Decker', 'decker', 1, '2020-05-30 06:02:46', '2020-05-30 06:02:46'),
(139, 'Drifter', 'drifter', 1, '2020-05-30 06:02:46', '2020-05-30 06:02:46'),
(140, 'Jesse', 'jesse', 1, '2020-05-30 06:02:46', '2020-05-30 06:02:46'),
(141, 'Georgia', 'georgia', 1, '2020-05-30 06:02:46', '2020-05-30 06:02:46'),
(142, 'Riley', 'riley', 1, '2020-05-30 06:02:46', '2020-05-30 06:02:46'),
(143, 'Virginia', 'virginia', 1, '2020-05-30 06:02:46', '2020-05-30 06:02:46'),
(144, 'Jacqueline', 'jacqueline', 1, '2020-05-30 06:02:46', '2020-05-30 06:02:46'),
(145, 'Original Boyfriend', 'original-boyfriend', 1, '2020-05-30 06:02:46', '2020-05-30 06:02:46'),
(146, 'Gazer', 'gazer', 1, '2020-05-30 06:02:47', '2020-05-30 06:02:47'),
(147, 'Neely', 'neely', 1, '2020-05-30 06:02:47', '2020-05-30 06:02:47'),
(148, 'Scarlette', 'scarlette', 1, '2020-05-30 06:02:47', '2020-05-30 06:02:47'),
(149, 'The Commuter', 'the-commuter', 1, '2020-05-30 06:02:47', '2020-05-30 06:02:47'),
(150, 'Tailor', 'tailor', 1, '2020-05-30 06:02:47', '2020-05-30 06:02:47'),
(151, 'Carlie', 'carlie', 1, '2020-05-30 06:02:47', '2020-05-30 06:02:47'),
(152, 'Madeline', 'madeline', 1, '2020-05-30 06:02:47', '2020-05-30 06:02:47'),
(153, 'Kalya', 'kalya', 1, '2020-05-30 06:02:47', '2020-05-30 06:02:47'),
(154, 'Lyric', 'lyric', 1, '2020-05-30 06:02:47', '2020-05-30 06:02:47'),
(155, 'Dean', 'dean', 1, '2020-05-30 06:02:48', '2020-05-30 06:02:48'),
(156, 'Grant', 'grant', 1, '2020-05-30 06:02:48', '2020-05-30 06:02:48'),
(157, 'Breaker', 'breaker', 1, '2020-05-30 06:02:48', '2020-05-30 06:02:48'),
(158, 'Minimalist 3H', 'minimalist-3h', 1, '2020-05-30 06:02:48', '2020-05-30 06:02:48'),
(159, 'Commuter', 'commuter', 1, '2020-05-30 06:02:48', '2020-05-30 06:02:48'),
(160, 'Nate Men', 'nate-men', 1, '2020-05-30 06:02:48', '2020-05-30 06:02:48'),
(161, 'Garret HR', 'garret-hr', 1, '2020-05-30 06:02:48', '2020-05-30 06:02:48'),
(162, 'Julianna HR', 'julianna-hr', 1, '2020-05-30 06:02:48', '2020-05-30 06:02:48'),
(163, 'Smart Watch HR', 'smart-watch-hr', 1, '2020-05-30 06:02:49', '2020-05-30 06:02:49'),
(164, 'Q Explorist', 'q-explorist', 1, '2020-05-30 06:02:49', '2020-05-30 06:02:49'),
(165, 'HR Collider', 'hr-collider', 1, '2020-05-30 06:02:49', '2020-05-30 06:02:49'),
(166, 'Q Marshal', 'q-marshal', 1, '2020-05-30 06:02:49', '2020-05-30 06:02:49'),
(167, 'Explorist HR', 'explorist-hr', 1, '2020-05-30 06:02:49', '2020-05-30 06:02:49'),
(168, 'Carlyle HR', 'carlyle-hr', 1, '2020-05-30 06:02:49', '2020-05-30 06:02:49'),
(169, 'Venture HR', 'venture-hr', 1, '2020-05-30 06:02:49', '2020-05-30 06:02:49'),
(170, 'Franchise Bright neon', 'franchise-bright-neon', 1, '2020-05-30 06:02:49', '2020-05-30 06:02:49'),
(171, 'Rollcage', 'rollcage', 1, '2020-05-30 06:02:49', '2020-05-30 06:02:49'),
(172, 'Rasp ', 'rasp-', 1, '2020-05-30 06:02:49', '2020-05-30 06:02:49'),
(173, 'Armbar ', 'armbar-', 1, '2020-05-30 06:02:49', '2020-05-30 06:02:49'),
(174, 'Fastbak', 'fastbak', 1, '2020-05-30 06:02:49', '2020-05-30 06:02:49'),
(175, 'Overflow', 'overflow', 1, '2020-05-30 06:02:49', '2020-05-30 06:02:49'),
(176, 'Double Down', 'double-down', 1, '2020-05-30 06:02:49', '2020-05-30 06:02:49'),
(177, 'Mega Chief', 'mega-chief', 1, '2020-05-30 06:02:49', '2020-05-30 06:02:49'),
(178, 'On', 'on', 1, '2020-05-30 06:02:49', '2020-05-30 06:02:49');

-- --------------------------------------------------------

--
-- Table structure for table `colours`
--

CREATE TABLE `colours` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colours`
--

INSERT INTO `colours` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Black', 'black', 1, '2020-05-29 08:19:45', '2020-05-29 08:19:45');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `countries_id` int(11) NOT NULL,
  `countries_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_iso_code_2` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_iso_code_3` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_format_id` int(11) NOT NULL,
  `country_code` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countries_id`, `countries_name`, `countries_iso_code_2`, `countries_iso_code_3`, `address_format_id`, `country_code`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 1, NULL),
(2, 'Albania', 'AL', 'ALB', 1, NULL),
(3, 'Algeria', 'DZ', 'DZA', 1, NULL),
(4, 'American Samoa', 'AS', 'ASM', 1, NULL),
(5, 'Andorra', 'AD', 'AND', 1, NULL),
(6, 'Angola', 'AO', 'AGO', 1, NULL),
(7, 'Anguilla', 'AI', 'AIA', 1, NULL),
(8, 'Antarctica', 'AQ', 'ATA', 1, NULL),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 1, NULL),
(10, 'Argentina', 'AR', 'ARG', 1, NULL),
(11, 'Armenia', 'AM', 'ARM', 1, NULL),
(12, 'Aruba', 'AW', 'ABW', 1, NULL),
(13, 'Australia', 'AU', 'AUS', 1, NULL),
(14, 'Austria', 'AT', 'AUT', 5, NULL),
(15, 'Azerbaijan', 'AZ', 'AZE', 1, NULL),
(16, 'Bahamas', 'BS', 'BHS', 1, NULL),
(17, 'Bahrain', 'BH', 'BHR', 1, NULL),
(18, 'Bangladesh', 'BD', 'BGD', 1, NULL),
(19, 'Barbados', 'BB', 'BRB', 1, NULL),
(20, 'Belarus', 'BY', 'BLR', 1, NULL),
(21, 'Belgium', 'BE', 'BEL', 1, NULL),
(22, 'Belize', 'BZ', 'BLZ', 1, NULL),
(23, 'Benin', 'BJ', 'BEN', 1, NULL),
(24, 'Bermuda', 'BM', 'BMU', 1, NULL),
(25, 'Bhutan', 'BT', 'BTN', 1, NULL),
(26, 'Bolivia', 'BO', 'BOL', 1, NULL),
(27, 'Bosnia and Herzegowina', 'BA', 'BIH', 1, NULL),
(28, 'Botswana', 'BW', 'BWA', 1, NULL),
(29, 'Bouvet Island', 'BV', 'BVT', 1, NULL),
(30, 'Brazil', 'BR', 'BRA', 1, NULL),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', 1, NULL),
(32, 'Brunei Darussalam', 'BN', 'BRN', 1, NULL),
(33, 'Bulgaria', 'BG', 'BGR', 1, NULL),
(34, 'Burkina Faso', 'BF', 'BFA', 1, NULL),
(35, 'Burundi', 'BI', 'BDI', 1, NULL),
(36, 'Cambodia', 'KH', 'KHM', 1, NULL),
(37, 'Cameroon', 'CM', 'CMR', 1, NULL),
(38, 'Canada', 'CA', 'CAN', 1, NULL),
(39, 'Cape Verde', 'CV', 'CPV', 1, NULL),
(40, 'Cayman Islands', 'KY', 'CYM', 1, NULL),
(41, 'Central African Republic', 'CF', 'CAF', 1, NULL),
(42, 'Chad', 'TD', 'TCD', 1, NULL),
(43, 'Chile', 'CL', 'CHL', 1, NULL),
(44, 'China', 'CN', 'CHN', 1, NULL),
(45, 'Christmas Island', 'CX', 'CXR', 1, NULL),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', 1, NULL),
(47, 'Colombia', 'CO', 'COL', 1, NULL),
(48, 'Comoros', 'KM', 'COM', 1, NULL),
(49, 'Congo', 'CG', 'COG', 1, NULL),
(50, 'Cook Islands', 'CK', 'COK', 1, NULL),
(51, 'Costa Rica', 'CR', 'CRI', 1, NULL),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', 1, NULL),
(53, 'Croatia', 'HR', 'HRV', 1, NULL),
(54, 'Cuba', 'CU', 'CUB', 1, NULL),
(55, 'Cyprus', 'CY', 'CYP', 1, NULL),
(56, 'Czech Republic', 'CZ', 'CZE', 1, NULL),
(57, 'Denmark', 'DK', 'DNK', 1, NULL),
(58, 'Djibouti', 'DJ', 'DJI', 1, NULL),
(59, 'Dominica', 'DM', 'DMA', 1, NULL),
(60, 'Dominican Republic', 'DO', 'DOM', 1, NULL),
(61, 'East Timor', 'TP', 'TMP', 1, NULL),
(62, 'Ecuador', 'EC', 'ECU', 1, NULL),
(63, 'Egypt', 'EG', 'EGY', 1, NULL),
(64, 'El Salvador', 'SV', 'SLV', 1, NULL),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 1, NULL),
(66, 'Eritrea', 'ER', 'ERI', 1, NULL),
(67, 'Estonia', 'EE', 'EST', 1, NULL),
(68, 'Ethiopia', 'ET', 'ETH', 1, NULL),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 1, NULL),
(70, 'Faroe Islands', 'FO', 'FRO', 1, NULL),
(71, 'Fiji', 'FJ', 'FJI', 1, NULL),
(72, 'Finland', 'FI', 'FIN', 1, NULL),
(73, 'France', 'FR', 'FRA', 1, NULL),
(74, 'France, Metropolitan', 'FX', 'FXX', 1, NULL),
(75, 'French Guiana', 'GF', 'GUF', 1, NULL),
(76, 'French Polynesia', 'PF', 'PYF', 1, NULL),
(77, 'French Southern Territories', 'TF', 'ATF', 1, NULL),
(78, 'Gabon', 'GA', 'GAB', 1, NULL),
(79, 'Gambia', 'GM', 'GMB', 1, NULL),
(80, 'Georgia', 'GE', 'GEO', 1, NULL),
(81, 'Germany', 'DE', 'DEU', 5, NULL),
(82, 'Ghana', 'GH', 'GHA', 1, NULL),
(83, 'Gibraltar', 'GI', 'GIB', 1, NULL),
(84, 'Greece', 'GR', 'GRC', 1, NULL),
(85, 'Greenland', 'GL', 'GRL', 1, NULL),
(86, 'Grenada', 'GD', 'GRD', 1, NULL),
(87, 'Guadeloupe', 'GP', 'GLP', 1, NULL),
(88, 'Guam', 'GU', 'GUM', 1, NULL),
(89, 'Guatemala', 'GT', 'GTM', 1, NULL),
(90, 'Guinea', 'GN', 'GIN', 1, NULL),
(91, 'Guinea-bissau', 'GW', 'GNB', 1, NULL),
(92, 'Guyana', 'GY', 'GUY', 1, NULL),
(93, 'Haiti', 'HT', 'HTI', 1, NULL),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', 1, NULL),
(95, 'Honduras', 'HN', 'HND', 1, NULL),
(96, 'Hong Kong', 'HK', 'HKG', 1, NULL),
(97, 'Hungary', 'HU', 'HUN', 1, NULL),
(98, 'Iceland', 'IS', 'ISL', 1, NULL),
(99, 'India', 'IN', 'IND', 1, NULL),
(100, 'Indonesia', 'ID', 'IDN', 1, NULL),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', 1, NULL),
(102, 'Iraq', 'IQ', 'IRQ', 1, NULL),
(103, 'Ireland', 'IE', 'IRL', 1, NULL),
(104, 'Israel', 'IL', 'ISR', 1, NULL),
(105, 'Italy', 'IT', 'ITA', 1, NULL),
(106, 'Jamaica', 'JM', 'JAM', 1, NULL),
(107, 'Japan', 'JP', 'JPN', 1, NULL),
(108, 'Jordan', 'JO', 'JOR', 1, NULL),
(109, 'Kazakhstan', 'KZ', 'KAZ', 1, NULL),
(110, 'Kenya', 'KE', 'KEN', 1, NULL),
(111, 'Kiribati', 'KI', 'KIR', 1, NULL),
(112, 'Korea, Democratic People\'s Republic of', 'KP', 'PRK', 1, NULL),
(113, 'Korea, Republic of', 'KR', 'KOR', 1, NULL),
(114, 'Kuwait', 'KW', 'KWT', 1, NULL),
(115, 'Kyrgyzstan', 'KG', 'KGZ', 1, NULL),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', 1, NULL),
(117, 'Latvia', 'LV', 'LVA', 1, NULL),
(118, 'Lebanon', 'LB', 'LBN', 1, NULL),
(119, 'Lesotho', 'LS', 'LSO', 1, NULL),
(120, 'Liberia', 'LR', 'LBR', 1, NULL),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', 1, NULL),
(122, 'Liechtenstein', 'LI', 'LIE', 1, NULL),
(123, 'Lithuania', 'LT', 'LTU', 1, NULL),
(124, 'Luxembourg', 'LU', 'LUX', 1, NULL),
(125, 'Macau', 'MO', 'MAC', 1, NULL),
(126, 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD', 1, NULL),
(127, 'Madagascar', 'MG', 'MDG', 1, NULL),
(128, 'Malawi', 'MW', 'MWI', 1, NULL),
(129, 'Malaysia', 'MY', 'MYS', 1, NULL),
(130, 'Maldives', 'MV', 'MDV', 1, NULL),
(131, 'Mali', 'ML', 'MLI', 1, NULL),
(132, 'Malta', 'MT', 'MLT', 1, NULL),
(133, 'Marshall Islands', 'MH', 'MHL', 1, NULL),
(134, 'Martinique', 'MQ', 'MTQ', 1, NULL),
(135, 'Mauritania', 'MR', 'MRT', 1, NULL),
(136, 'Mauritius', 'MU', 'MUS', 1, NULL),
(137, 'Mayotte', 'YT', 'MYT', 1, NULL),
(138, 'Mexico', 'MX', 'MEX', 1, NULL),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', 1, NULL),
(140, 'Moldova, Republic of', 'MD', 'MDA', 1, NULL),
(141, 'Monaco', 'MC', 'MCO', 1, NULL),
(142, 'Mongolia', 'MN', 'MNG', 1, NULL),
(143, 'Montserrat', 'MS', 'MSR', 1, NULL),
(144, 'Morocco', 'MA', 'MAR', 1, NULL),
(145, 'Mozambique', 'MZ', 'MOZ', 1, NULL),
(146, 'Myanmar', 'MM', 'MMR', 1, NULL),
(147, 'Namibia', 'NA', 'NAM', 1, NULL),
(148, 'Nauru', 'NR', 'NRU', 1, NULL),
(149, 'Nepal', 'NP', 'NPL', 1, NULL),
(150, 'Netherlands', 'NL', 'NLD', 1, NULL),
(151, 'Netherlands Antilles', 'AN', 'ANT', 1, NULL),
(152, 'New Caledonia', 'NC', 'NCL', 1, NULL),
(153, 'New Zealand', 'NZ', 'NZL', 1, NULL),
(154, 'Nicaragua', 'NI', 'NIC', 1, NULL),
(155, 'Niger', 'NE', 'NER', 1, NULL),
(156, 'Nigeria', 'NG', 'NGA', 1, NULL),
(157, 'Niue', 'NU', 'NIU', 1, NULL),
(158, 'Norfolk Island', 'NF', 'NFK', 1, NULL),
(159, 'Northern Mariana Islands', 'MP', 'MNP', 1, NULL),
(160, 'Norway', 'NO', 'NOR', 1, NULL),
(161, 'Oman', 'OM', 'OMN', 1, NULL),
(162, 'Pakistan', 'PK', 'PAK', 1, NULL),
(163, 'Palau', 'PW', 'PLW', 1, NULL),
(164, 'Panama', 'PA', 'PAN', 1, NULL),
(165, 'Papua New Guinea', 'PG', 'PNG', 1, NULL),
(166, 'Paraguay', 'PY', 'PRY', 1, NULL),
(167, 'Peru', 'PE', 'PER', 1, NULL),
(168, 'Philippines', 'PH', 'PHL', 1, NULL),
(169, 'Pitcairn', 'PN', 'PCN', 1, NULL),
(170, 'Poland', 'PL', 'POL', 1, NULL),
(171, 'Portugal', 'PT', 'PRT', 1, NULL),
(172, 'Puerto Rico', 'PR', 'PRI', 1, NULL),
(173, 'Qatar', 'QA', 'QAT', 1, NULL),
(174, 'Reunion', 'RE', 'REU', 1, NULL),
(175, 'Romania', 'RO', 'ROM', 1, NULL),
(176, 'Russian Federation', 'RU', 'RUS', 1, NULL),
(177, 'Rwanda', 'RW', 'RWA', 1, NULL),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', 1, NULL),
(179, 'Saint Lucia', 'LC', 'LCA', 1, NULL),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 1, NULL),
(181, 'Samoa', 'WS', 'WSM', 1, NULL),
(182, 'San Marino', 'SM', 'SMR', 1, NULL),
(183, 'Sao Tome and Principe', 'ST', 'STP', 1, NULL),
(184, 'Saudi Arabia', 'SA', 'SAU', 1, NULL),
(185, 'Senegal', 'SN', 'SEN', 1, NULL),
(186, 'Seychelles', 'SC', 'SYC', 1, NULL),
(187, 'Sierra Leone', 'SL', 'SLE', 1, NULL),
(188, 'Singapore', 'SG', 'SGP', 4, NULL),
(189, 'Slovakia (Slovak Republic)', 'SK', 'SVK', 1, NULL),
(190, 'Slovenia', 'SI', 'SVN', 1, NULL),
(191, 'Solomon Islands', 'SB', 'SLB', 1, NULL),
(192, 'Somalia', 'SO', 'SOM', 1, NULL),
(193, 'South Africa', 'ZA', 'ZAF', 1, NULL),
(194, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 1, NULL),
(195, 'Spain', 'ES', 'ESP', 3, NULL),
(196, 'Sri Lanka', 'LK', 'LKA', 1, NULL),
(197, 'St. Helena', 'SH', 'SHN', 1, NULL),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', 1, NULL),
(199, 'Sudan', 'SD', 'SDN', 1, NULL),
(200, 'Suriname', 'SR', 'SUR', 1, NULL),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', 1, NULL),
(202, 'Swaziland', 'SZ', 'SWZ', 1, NULL),
(203, 'Sweden', 'SE', 'SWE', 1, NULL),
(204, 'Switzerland', 'CH', 'CHE', 1, NULL),
(205, 'Syrian Arab Republic', 'SY', 'SYR', 1, NULL),
(206, 'Taiwan', 'TW', 'TWN', 1, NULL),
(207, 'Tajikistan', 'TJ', 'TJK', 1, NULL),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', 1, NULL),
(209, 'Thailand', 'TH', 'THA', 1, NULL),
(210, 'Togo', 'TG', 'TGO', 1, NULL),
(211, 'Tokelau', 'TK', 'TKL', 1, NULL),
(212, 'Tonga', 'TO', 'TON', 1, NULL),
(213, 'Trinidad and Tobago', 'TT', 'TTO', 1, NULL),
(214, 'Tunisia', 'TN', 'TUN', 1, NULL),
(215, 'Turkey', 'TR', 'TUR', 1, NULL),
(216, 'Turkmenistan', 'TM', 'TKM', 1, NULL),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', 1, NULL),
(218, 'Tuvalu', 'TV', 'TUV', 1, NULL),
(219, 'Uganda', 'UG', 'UGA', 1, NULL),
(220, 'Ukraine', 'UA', 'UKR', 1, NULL),
(221, 'United Arab Emirates', 'AE', 'ARE', 1, NULL),
(222, 'United Kingdom', 'GB', 'GBR', 1, NULL),
(223, 'United States', 'US', 'USA', 2, NULL),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', 1, NULL),
(225, 'Uruguay', 'UY', 'URY', 1, NULL),
(226, 'Uzbekistan', 'UZ', 'UZB', 1, NULL),
(227, 'Vanuatu', 'VU', 'VUT', 1, NULL),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', 1, NULL),
(229, 'Venezuela', 'VE', 'VEN', 1, NULL),
(230, 'Viet Nam', 'VN', 'VNM', 1, NULL),
(231, 'Virgin Islands (British)', 'VG', 'VGB', 1, NULL),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', 1, NULL),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', 1, NULL),
(234, 'Western Sahara', 'EH', 'ESH', 1, NULL),
(235, 'Yemen', 'YE', 'YEM', 1, NULL),
(236, 'Yugoslavia', 'YU', 'YUG', 1, NULL),
(237, 'Zaire', 'ZR', 'ZAR', 1, NULL),
(238, 'Zambia', 'ZM', 'ZMB', 1, NULL),
(239, 'Zimbabwe', 'ZW', 'ZWE', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dial_colours`
--

CREATE TABLE `dial_colours` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 = inactive, 1 = active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dial_colours`
--

INSERT INTO `dial_colours` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Black', 'black', 1, '2020-05-30 06:39:32', '2020-05-30 06:39:32'),
(2, 'Blue', 'blue', 1, '2020-05-30 06:39:32', '2020-05-30 06:39:32'),
(3, 'Grey', 'grey', 1, '2020-05-30 06:39:32', '2020-05-30 06:39:32'),
(4, 'Brown', 'brown', 1, '2020-05-30 06:39:32', '2020-05-30 06:39:32'),
(5, 'White', 'white', 1, '2020-05-30 06:39:32', '2020-05-30 06:39:32'),
(6, 'Silver', 'silver', 1, '2020-05-30 06:39:32', '2020-05-30 06:39:32'),
(7, 'Gold', 'gold', 1, '2020-05-30 06:39:32', '2020-05-30 06:39:32'),
(8, 'Rose Gold', 'rose-gold', 1, '2020-05-30 06:39:32', '2020-05-30 06:39:32'),
(9, 'Red', 'red', 1, '2020-05-30 06:39:32', '2020-05-30 06:39:32'),
(10, 'Green', 'green', 1, '2020-05-30 06:39:32', '2020-05-30 06:39:32'),
(11, 'Champagne', 'champagne', 1, '2020-05-30 06:39:32', '2020-05-30 06:39:32'),
(12, 'Cream', 'cream', 1, '2020-05-30 06:39:32', '2020-05-30 06:39:32'),
(13, 'Mother Of Pearl', 'mother-of-pearl', 1, '2020-05-30 06:39:32', '2020-05-30 06:39:32'),
(14, 'Beige', 'beige', 1, '2020-05-30 06:39:32', '2020-05-30 06:39:32'),
(15, 'Sunray', 'sunray', 1, '2020-05-30 06:39:32', '2020-05-30 06:39:32'),
(16, 'Pink', 'pink', 1, '2020-05-30 06:39:33', '2020-05-30 06:39:33'),
(17, 'Silver & Blue', 'silver-&-blue', 1, '2020-05-30 06:39:33', '2020-05-30 06:39:33'),
(18, 'Blue & Silver', 'blue-&-silver', 1, '2020-05-30 06:39:33', '2020-05-30 06:39:33'),
(19, 'Blue Enamel', 'blue-enamel', 1, '2020-05-30 06:39:33', '2020-05-30 06:39:33'),
(20, 'Yellow', 'yellow', 1, '2020-05-30 06:39:33', '2020-05-30 06:39:33'),
(21, 'Confetti Glitter', 'confetti-glitter', 1, '2020-05-30 06:39:33', '2020-05-30 06:39:33'),
(22, 'Purple', 'purple', 1, '2020-05-30 06:39:33', '2020-05-30 06:39:33'),
(23, 'Blrown', 'blrown', 1, '2020-05-30 06:39:33', '2020-05-30 06:39:33'),
(24, 'Full Color Display', 'full-color-display', 1, '2020-05-30 06:39:33', '2020-05-30 06:39:33');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `discount_by` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_by` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_value` double(8,2) DEFAULT NULL,
  `max_value` double(8,2) DEFAULT NULL,
  `discount_upto` double(8,2) DEFAULT NULL,
  `discount_activation_date` date NOT NULL,
  `discount_expiry_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `discount_by`, `product_by`, `gender_id`, `brand_id`, `product_ids`, `discount_type`, `discount_value`, `max_value`, `discount_upto`, `discount_activation_date`, `discount_expiry_date`, `created_at`, `updated_at`) VALUES
(1, 'Gender', 'Selected', '1', '', '1,2,3,4,5,6,7,9,10,11,12', 'Amount', 120.00, 150.00, 20000.00, '2020-06-22', '2020-07-16', '2020-05-15 08:33:03', '2020-07-04 10:24:03'),
(2, 'Brand', 'Selected', '', '1,2,3', '3,2,1', 'Percent', 25.00, 750.00, 18000.00, '2020-05-20', '2020-05-31', '2020-05-15 08:44:26', '2020-05-15 03:41:19');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 = inactive, 1 = active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Activity Tracker', 'activity-tracker', 1, '2020-05-30 11:15:33', '2020-05-30 11:15:33'),
(2, 'Alarm', 'alarm', 1, '2020-05-30 11:15:33', '2020-05-30 11:15:33'),
(3, 'Android Wear', 'android-wear', 1, '2020-05-30 11:15:33', '2020-05-30 11:15:33'),
(4, 'Android/IOS Compatible', 'android/ios-compatible', 1, '2020-05-30 11:15:33', '2020-05-30 11:15:33'),
(5, 'Annual Calendar', 'annual-calendar', 1, '2020-05-30 11:15:33', '2020-05-30 11:15:33'),
(6, 'Bluetooth', 'bluetooth', 1, '2020-05-30 11:15:33', '2020-05-30 11:15:33'),
(7, 'Bronze', 'bronze', 1, '2020-05-30 11:15:33', '2020-05-30 11:15:33'),
(8, 'Calendar', 'calendar', 1, '2020-05-30 11:15:33', '2020-05-30 11:15:33'),
(9, 'Control Your Music', 'control-your-music', 1, '2020-05-30 11:15:33', '2020-05-30 11:15:33'),
(10, 'Customizable Buttons', 'customizable-buttons', 1, '2020-05-30 11:15:33', '2020-05-30 11:15:33'),
(11, 'Date', 'date', 1, '2020-05-30 11:15:33', '2020-05-30 11:15:33'),
(12, 'Date Aperture', 'date-aperture', 1, '2020-05-30 11:15:33', '2020-05-30 11:15:33'),
(13, 'Day-Date', 'day-date', 1, '2020-05-30 11:15:33', '2020-05-30 11:15:33'),
(14, 'Dual Time', 'dual-time', 1, '2020-05-30 11:15:33', '2020-05-30 11:15:33'),
(15, 'Dual Time Zone', 'dual-time-zone', 1, '2020-05-30 11:15:33', '2020-05-30 11:15:33'),
(16, 'Email', 'email', 1, '2020-05-30 11:15:33', '2020-05-30 11:15:33'),
(17, 'G-Sensor', 'g-sensor', 1, '2020-05-30 11:15:33', '2020-05-30 11:15:33'),
(18, 'Glow in the Dark Inlays', 'glow-in-the-dark-inlays', 1, '2020-05-30 11:15:34', '2020-05-30 11:15:34'),
(19, 'Google Maps Enabled', 'google-maps-enabled', 1, '2020-05-30 11:15:34', '2020-05-30 11:15:34'),
(20, 'Google Pay™', 'google-pay™', 1, '2020-05-30 11:15:34', '2020-05-30 11:15:34'),
(21, 'GPS', 'gps', 1, '2020-05-30 11:15:34', '2020-05-30 11:15:34'),
(22, 'Gyroscope', 'gyroscope', 1, '2020-05-30 11:15:34', '2020-05-30 11:15:34'),
(23, 'Heart Rate Tracking', 'heart-rate-tracking', 1, '2020-05-30 11:15:34', '2020-05-30 11:15:34'),
(24, 'Hour', 'hour', 1, '2020-05-30 11:15:34', '2020-05-30 11:15:34'),
(25, 'Insufficient Charge Warning', 'insufficient-charge-warning', 1, '2020-05-30 11:15:34', '2020-05-30 11:15:34'),
(26, 'Interchangeable Watch Band', 'interchangeable-watch-band', 1, '2020-05-30 11:15:34', '2020-05-30 11:15:34'),
(27, 'Leap Year', 'leap-year', 1, '2020-05-30 11:15:34', '2020-05-30 11:15:34'),
(28, 'Military Time', 'military-time', 1, '2020-05-30 11:15:34', '2020-05-30 11:15:34'),
(29, 'Minutes', 'minutes', 1, '2020-05-30 11:15:34', '2020-05-30 11:15:34'),
(30, 'Mobile Link', 'mobile-link', 1, '2020-05-30 11:15:34', '2020-05-30 11:15:34'),
(31, 'Month', 'month', 1, '2020-05-30 11:15:34', '2020-05-30 11:15:34'),
(32, 'Multiple Timezone', 'multiple-timezone', 1, '2020-05-30 11:15:34', '2020-05-30 11:15:34'),
(33, 'Notifications', 'notifications', 1, '2020-05-30 11:15:34', '2020-05-30 11:15:34'),
(34, 'Perpetual Calendar', 'perpetual-calendar', 1, '2020-05-30 11:15:34', '2020-05-30 11:15:34'),
(35, 'Personalize Your Dial', 'personalize-your-dial', 1, '2020-05-30 11:15:34', '2020-05-30 11:15:34'),
(36, 'Power Reserve Indicator', 'power-reserve-indicator', 1, '2020-05-30 11:15:34', '2020-05-30 11:15:34'),
(37, 'Power Saving', 'power-saving', 1, '2020-05-30 11:15:34', '2020-05-30 11:15:34'),
(38, 'Reset Time', 'reset-time', 1, '2020-05-30 11:15:34', '2020-05-30 11:15:34'),
(39, 'Retrograde', 'retrograde', 1, '2020-05-30 11:15:35', '2020-05-30 11:15:35'),
(40, 'Retrograde Day', 'retrograde-day', 1, '2020-05-30 11:15:35', '2020-05-30 11:15:35'),
(41, 'Second', 'second', 1, '2020-05-30 11:15:35', '2020-05-30 11:15:35'),
(42, 'Second Time Zone', 'second-time-zone', 1, '2020-05-30 11:15:35', '2020-05-30 11:15:35'),
(43, 'second-hand', 'second-hand', 1, '2020-05-30 11:15:35', '2020-05-30 11:15:35'),
(44, 'Skeleton', 'skeleton', 1, '2020-05-30 11:15:35', '2020-05-30 11:15:35'),
(45, 'Sleep Monitor', 'sleep-monitor', 1, '2020-05-30 11:15:35', '2020-05-30 11:15:35'),
(46, 'Small Seconds', 'small-seconds', 1, '2020-05-30 11:15:35', '2020-05-30 11:15:35'),
(47, 'Smart Watch', 'smart-watch', 1, '2020-05-30 11:15:35', '2020-05-30 11:15:35'),
(48, 'Solar Powered', 'solar-powered', 1, '2020-05-30 11:15:35', '2020-05-30 11:15:35'),
(49, 'Swimproof', 'swimproof', 1, '2020-05-30 11:15:35', '2020-05-30 11:15:35'),
(50, 'tachometer', 'tachometer', 1, '2020-05-30 11:15:35', '2020-05-30 11:15:35'),
(51, 'Tachymeter', 'tachymeter', 1, '2020-05-30 11:15:35', '2020-05-30 11:15:35'),
(52, 'Touch Screen', 'touch-screen', 1, '2020-05-30 11:15:35', '2020-05-30 11:15:35'),
(53, 'Unidirectional Rotating Bezel', 'unidirectional-rotating-bezel', 1, '2020-05-30 11:15:35', '2020-05-30 11:15:35'),
(54, 'USB charging', 'usb-charging', 1, '2020-05-30 11:15:35', '2020-05-30 11:15:35'),
(55, 'Wi-Fi enabled', 'wi-fi-enabled', 1, '2020-05-30 11:15:35', '2020-05-30 11:15:35'),
(56, 'World Time', 'world-time', 1, '2020-05-30 11:15:35', '2020-05-30 11:15:35'),
(57, '24h Disc', '24h-disc', 1, '2020-05-30 11:15:35', '2020-05-30 11:15:35'),
(58, '24h Indicator', '24h-indicator', 1, '2020-05-30 11:15:35', '2020-05-30 11:15:35'),
(59, 'Activity Monitor', 'activity-monitor', 1, '2020-05-30 11:15:35', '2020-05-30 11:15:35'),
(60, 'Automatic', 'automatic', 1, '2020-05-30 11:15:35', '2020-05-30 11:15:35'),
(61, 'Chronograph', 'chronograph', 1, '2020-05-30 11:15:35', '2020-05-30 11:15:35'),
(62, 'Datum', 'datum', 1, '2020-05-30 11:15:35', '2020-05-30 11:15:35'),
(63, 'Diamond accent on dial', 'diamond-accent-on-dial', 1, '2020-05-30 11:15:36', '2020-05-30 11:15:36'),
(64, 'Folding Clasp', 'folding-clasp', 1, '2020-05-30 11:15:36', '2020-05-30 11:15:36'),
(65, 'luminous', 'luminous', 1, '2020-05-30 11:15:36', '2020-05-30 11:15:36'),
(66, 'Moon Phase', 'moon-phase', 1, '2020-05-30 11:15:36', '2020-05-30 11:15:36'),
(67, 'Multi Function', 'multi-function', 1, '2020-05-30 11:15:36', '2020-05-30 11:15:36'),
(68, 'Screw down crown', 'screw-down-crown', 1, '2020-05-30 11:15:36', '2020-05-30 11:15:36');

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` int(10) UNSIGNED NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `gender`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Men', 'men', '2020-05-01 06:28:37', '2020-05-02 06:56:52'),
(2, 'Women', 'women', '2020-05-01 06:28:37', '2020-05-02 06:57:09'),
(3, 'Unisex', 'unisex', '2020-05-30 06:45:49', '2020-05-30 06:45:49'),
(4, 'Couple', 'couple', '2020-05-30 06:46:07', '2020-05-30 06:46:07');

-- --------------------------------------------------------

--
-- Table structure for table `glass_materials`
--

CREATE TABLE `glass_materials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 = inactive, 1 = active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `glass_materials`
--

INSERT INTO `glass_materials` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, ' Sapphire glass', ' sapphire-glass', 1, '2020-05-30 06:38:20', '2020-05-30 06:38:20'),
(2, 'Sapphire Crystal', 'sapphire-crystal', 1, '2020-05-30 06:38:20', '2020-05-30 06:38:20'),
(3, 'Mineral', 'mineral', 1, '2020-05-30 06:38:20', '2020-05-30 06:38:20'),
(4, 'Hardlex Crystal', 'hardlex crystal', 1, '2020-05-30 06:38:20', '2020-05-30 06:38:20'),
(5, 'Mineral Crystal', 'mineral-crystal', 1, '2020-05-30 06:38:20', '2020-05-30 06:38:20');

-- --------------------------------------------------------

--
-- Table structure for table `guest_users`
--

CREATE TABLE `guest_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not_varified',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guest_users`
--

INSERT INTO `guest_users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(37, 'arun kumar', 'admin@gmail.com', '08800846066', 'not_varified', '$2y$10$tagFACpd5gV8rAVLKyyOmee9lLKx228SO4Fmyfvdc4eqRyyHR2HaS', NULL, NULL, NULL),
(38, 'arun kumar', 'admin@gmail.com', '8888888888', 'not_varified', '$2y$10$C8uo0RWWQNugwsu/jMwoN.QEGhUF2szy2qrXNwDcwfze0TGpkkdpe', NULL, NULL, NULL),
(39, 'arun kumar', 'admin@gmail.com', '8888888888', 'not_varified', '$2y$10$6hgOpquAPA8yA.XelZkTvuvD0X/rCXYDPhBUn3zzHhtFqwlfjoIhm', NULL, NULL, NULL),
(40, 'arun kumar', 'arun.outlook1992@gmail.com', '8888888888', 'not_varified', '$2y$10$3YVEhwewI3y/4fHt9pntsuuMa43aeYKWQLqogGzPuj6h5RNVhFxjW', NULL, NULL, NULL),
(41, 'arun kumar', 'arun.outlook1992@gmail.com', '8888888888', 'not_varified', '$2y$10$dLpt0D8jghhFWVXfOT5tZurnpLLT7z.ujaeNT4KnQ8Y4jMeesoGqW', NULL, NULL, NULL),
(42, 'arun kumar', 'arun.outlook1992@gmail.com', '8888888888', 'not_varified', '$2y$10$dL4XK26DpblCMVkEnC660euqS8WHAoZXgx1lAfwGByj7iB0gpEcWq', NULL, NULL, NULL),
(43, 'Arun kumar', 'arun@gmail.com', '08800846066', 'not_varified', '$2y$10$Fjn/cVf64CStEEjDIIj.Ne57wtW5MW563yWTbyRfQTIy7Lmqhkpgi', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inquiries`
--

CREATE TABLE `inquiries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mob_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_categories`
--

CREATE TABLE `main_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `main_categories`
--

INSERT INTO `main_categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Watches', 'watches', 1, '2020-05-20 11:57:29', '2020-05-20 11:57:29'),
(2, 'Pens', 'pens', 1, '2020-05-20 11:58:03', '2020-05-27 06:12:25'),
(3, 'Belts', 'belts', 1, '2020-05-20 11:58:19', '2020-05-27 06:16:14'),
(4, 'Bracelet', 'bracelet', 1, '2020-05-27 11:47:02', '2020-05-27 11:47:02'),
(5, 'Clocks', 'clocks', 1, '2020-05-27 11:47:19', '2020-05-27 11:47:19'),
(6, 'Cufflinks', 'cufflinks', 1, '2020-05-27 11:47:52', '2020-05-27 11:47:52'),
(7, 'Eyewear', 'eyewear', 1, '2020-05-27 11:48:21', '2020-05-27 11:48:21'),
(8, 'Necklace', 'necklace', 1, '2020-05-27 11:48:45', '2020-05-27 11:48:45'),
(9, 'Ring', 'ring', 1, '2020-05-27 11:49:06', '2020-05-27 11:49:06'),
(10, 'Strap', 'strap', 1, '2020-05-27 11:49:21', '2020-05-27 11:49:21'),
(11, 'Wallets', 'wallets', 1, '2020-05-27 11:49:49', '2020-05-27 11:49:49'),
(12, 'Winders', 'winders', 1, '2020-05-27 11:50:14', '2020-05-27 11:50:14');

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
(3, '2019_11_22_060203_create_blog_categories_table', 1),
(4, '2019_11_22_060252_create_blog_authors_table', 1),
(5, '2019_11_22_060309_create_blogs_table', 1),
(6, '2019_12_13_075535_create_seo_tags_table', 1),
(7, '2019_12_13_082859_create_inquiries_table', 1),
(8, '2020_03_07_094826_create_pages_table', 1),
(9, '2020_04_30_090640_create_brands_table', 2),
(10, '2020_04_30_090725_create_collections_table', 2),
(11, '2020_04_30_090757_create_movements_table', 2),
(12, '2020_04_30_090811_create_movement_types_table', 2),
(13, '2020_04_30_090828_create_case_sizes_table', 2),
(14, '2020_04_30_090843_create_case_shapes_table', 2),
(15, '2020_04_30_090910_create_case_materials_table', 2),
(16, '2020_04_30_090953_create_glass_materials_table', 2),
(17, '2020_04_30_091016_create_dial_colours_table', 2),
(18, '2020_04_30_091059_create_strap_materials_table', 2),
(19, '2020_04_30_091117_create_strap_colours_table', 2),
(20, '2020_04_30_091136_create_genders_table', 2),
(21, '2020_04_30_091219_create_features_table', 2),
(22, '2020_04_30_091302_create_product_details_table', 2),
(23, '2020_05_14_151849_create_watch_enquiries_table', 3),
(24, '2020_05_15_060015_create_discounts_table', 4),
(25, '2020_05_20_113158_create_main_categories_table', 5),
(26, '2020_05_27_115406_create_colours_table', 6),
(27, '2020_05_28_052732_create_clock_types_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `movements`
--

CREATE TABLE `movements` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 = inactive, 1 = active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movements`
--

INSERT INTO `movements` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Swiss Quartz', 'swiss-quartz', 1, '2020-05-30 06:22:32', '2020-05-30 06:22:32'),
(2, 'Quartz', 'quartz', 1, '2020-05-30 06:22:33', '2020-05-30 06:22:33'),
(3, 'Automatic', 'automatic', 1, '2020-05-30 06:22:33', '2020-05-30 06:22:33'),
(4, 'Manual Winding', 'manual-winding', 1, '2020-05-30 06:22:33', '2020-05-30 06:22:33'),
(5, 'Solar', 'solar', 1, '2020-05-30 06:22:33', '2020-05-30 06:22:33'),
(6, 'Android', 'android', 1, '2020-05-30 06:22:33', '2020-05-30 06:22:33'),
(7, 'Machanical', 'machanical', 1, '2020-05-30 06:22:33', '2020-05-30 06:22:33'),
(8, 'Mechanical', 'mechanical', 1, '2020-05-30 06:22:33', '2020-05-30 06:22:33');

-- --------------------------------------------------------

--
-- Table structure for table `movement_types`
--

CREATE TABLE `movement_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 = inactive, 1 = active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movement_types`
--

INSERT INTO `movement_types` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Chronograph', 'chronograph', 1, '2020-05-30 06:25:10', '2020-05-30 06:25:10'),
(2, 'Quartz', 'quartz', 1, '2020-05-30 06:25:10', '2020-05-30 06:25:10'),
(3, 'Automatic', 'automatic', 1, '2020-05-30 06:25:10', '2020-05-30 06:25:10'),
(4, 'Manual Winding', 'manual-winding', 1, '2020-05-30 06:25:10', '2020-05-30 06:25:10'),
(5, 'Android', 'android', 1, '2020-05-30 06:25:11', '2020-05-30 06:25:11'),
(6, 'Machanical', 'machanical', 1, '2020-05-30 06:25:11', '2020-05-30 06:25:11'),
(7, 'Hybrid', 'hybrid', 1, '2020-05-30 06:25:11', '2020-05-30 06:25:11'),
(8, 'Multi Function', 'multi-function', 1, '2020-05-30 06:25:11', '2020-05-30 06:25:11');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('arun.outlook1992@gmail.com', '$2y$10$jJQZCyuNABIIaphb2G7q6.kPFpcZFY2kQH.SOVx0zz4zJS9UsISDG', '2020-09-01 23:50:49');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `material` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buckle` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shape` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `frame_colour` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lens` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visible_ray` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dimensions` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nib` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length_mm` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taper` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clasp_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clasp_size` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lock_system` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warranty_period` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 = inactive, 1 = active',
  `featured_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = no, 1 = yes',
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_category_id` int(10) UNSIGNED DEFAULT NULL,
  `colour_id` int(10) DEFAULT NULL,
  `clock_type_id` int(10) DEFAULT NULL,
  `brand_id` int(10) UNSIGNED DEFAULT NULL,
  `collection_id` int(10) UNSIGNED DEFAULT NULL,
  `movement_id` int(10) UNSIGNED DEFAULT NULL,
  `movement_type_id` int(10) UNSIGNED DEFAULT NULL,
  `case_size_id` int(10) UNSIGNED DEFAULT NULL,
  `case_shape_id` int(10) UNSIGNED DEFAULT NULL,
  `case_material_id` int(10) UNSIGNED DEFAULT NULL,
  `glass_material_id` int(10) UNSIGNED DEFAULT NULL,
  `dial_colour_id` int(10) UNSIGNED DEFAULT NULL,
  `strap_material_id` int(10) UNSIGNED DEFAULT NULL,
  `strap_colour_id` int(10) UNSIGNED DEFAULT NULL,
  `gender_id` int(10) UNSIGNED DEFAULT NULL,
  `feature_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `model_no`, `series`, `price`, `material`, `buckle`, `size`, `shape`, `frame_colour`, `lens`, `visible_ray`, `dimensions`, `nib`, `length_mm`, `taper`, `clasp_type`, `clasp_size`, `lock_system`, `description`, `warranty_period`, `meta_title`, `meta_description`, `meta_keyword`, `h1`, `status`, `featured_status`, `images`, `thumb_img`, `main_category_id`, `colour_id`, `clock_type_id`, `brand_id`, `collection_id`, `movement_id`, `movement_type_id`, `case_size_id`, `case_shape_id`, `case_material_id`, `glass_material_id`, `dial_colour_id`, `strap_material_id`, `strap_colour_id`, `gender_id`, `feature_id`, `created_at`, `updated_at`) VALUES
(1, 'F55LCQ75909S113', NULL, 130000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 1, 'U02csQg5e4BI.jpg,RUxUsK7jNi0G.jpg,N1H8XvB14mpI.jpg', 'U02csQg5e4BI.jpg,RUxUsK7jNi0G.jpg,N1H8XvB14mpI.jpg', 1, NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '6,8', '2020-06-25 03:51:07', '2020-06-25 22:16:34'),
(2, 'FAZ010016', NULL, 90100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '8knq9SqLc6Uw.jpg,pFYOABYpm8HP.jpg,JWlOlSUhECBY.jpg', '8knq9SqLc6Uw.jpg,pFYOABYpm8HP.jpg,JWlOlSUhECBY.jpg', 1, NULL, NULL, 1, 1, 1, 2, 1, 1, 2, 2, 2, 2, 2, 1, NULL, '2020-06-25 03:51:07', '2020-06-25 06:52:09'),
(3, 'FAZ040017', NULL, 90100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 1, 's9XAXTL6yOHB.jpg,XfknJzni3Xmx.jpg,3lPTabSTyyXR.jpg', 's9XAXTL6yOHB.jpg,XfknJzni3Xmx.jpg,3lPTabSTyyXR.jpg', 1, NULL, NULL, 1, 1, 1, 2, 1, 1, 2, 2, 3, 3, 1, 1, NULL, '2020-06-25 03:51:08', '2020-06-25 22:17:00'),
(4, 'FIJ010017', NULL, 116900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Puv6gEeXOlUt.jpg,BYa6CL26OZ60.jpg,Xp6RvTZUI7tN.jpg', 'Puv6gEeXOlUt.jpg,BYa6CL26OZ60.jpg,Xp6RvTZUI7tN.jpg', 1, NULL, NULL, 1, 1, 1, 1, 1, 1, 2, 2, 4, 3, 3, 1, NULL, '2020-06-25 03:51:08', '2020-06-25 06:52:14'),
(5, 'FIJ060017', NULL, 116900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 1, 'JVmW7RAAl3TW.jpg,GaUelTFw53uB.jpg,jL2vI7eq1oix.jpg', 'JVmW7RAAl3TW.jpg,GaUelTFw53uB.jpg,jL2vI7eq1oix.jpg', 1, NULL, NULL, 1, 1, 1, 1, 1, 1, 2, 2, 2, 3, 2, 1, NULL, '2020-06-25 03:51:08', '2020-06-25 22:17:09'),
(6, 'SFDL00218', NULL, 135500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'JyjY4pLmvYsv.jpg,glbHynv410ZL.jpg,QCqzV2Jc95hb.jpg', 'JyjY4pLmvYsv.jpg,glbHynv410ZL.jpg,QCqzV2Jc95hb.jpg', 1, NULL, NULL, 1, 1, 1, 1, 1, 1, 2, 2, 2, 1, 1, 1, NULL, '2020-06-25 03:51:08', '2020-06-25 06:52:16'),
(7, 'VBQ070017', NULL, 51100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ZGkvgIh6WxZc.jpg,AYAsyViZ7DbD.jpg,3UJXU5G6Y2Ky.jpg', 'ZGkvgIh6WxZc.jpg,AYAsyViZ7DbD.jpg,3UJXU5G6Y2Ky.jpg', 1, NULL, NULL, 2, 2, 1, 2, 2, 1, 2, 2, 5, 4, 4, 1, NULL, '2020-06-25 03:51:08', '2020-06-25 06:52:18'),
(8, 'VBR010017', NULL, 64900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 1, 'N3PtL1NJInqU.jpg,76KjU5FGDz2d.jpg,CLFFF2VzzQWi.jpg', 'N3PtL1NJInqU.jpg,76KjU5FGDz2d.jpg,CLFFF2VzzQWi.jpg', 1, NULL, NULL, 2, 2, 1, 1, 3, 1, 2, 2, 6, 3, 3, 1, NULL, '2020-06-25 03:51:08', '2020-06-25 22:16:52'),
(9, 'VBR030017', NULL, 77900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'oWCyGLxawso8.jpg,oMGFMVZPY7CL.jpg,MgQ3iM9rVeqC.jpg', 'oWCyGLxawso8.jpg,oMGFMVZPY7CL.jpg,MgQ3iM9rVeqC.jpg', 1, NULL, NULL, 2, 2, 1, 1, 3, 1, 2, 2, 1, 3, 1, 1, NULL, '2020-06-25 03:51:08', '2020-06-25 06:52:21'),
(10, 'VBR040017', NULL, 77900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '6DS4dq7yjVFF.jpg,tYrUYh4s9XCV.jpg,AK0apJtyZde0.jpg', '6DS4dq7yjVFF.jpg,tYrUYh4s9XCV.jpg,AK0apJtyZde0.jpg', 1, NULL, NULL, 2, 3, 1, 1, 3, 1, 2, 2, 6, 4, 5, 1, NULL, '2020-06-25 03:51:08', '2020-06-25 06:52:23'),
(11, 'VBR060017', NULL, 89900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '1OsqQIAjv92U.jpg,XVZCrdPkc0gw.jpg,NU9tuebhYRaE.jpg', '1OsqQIAjv92U.jpg,XVZCrdPkc0gw.jpg,NU9tuebhYRaE.jpg', 1, NULL, NULL, 2, 4, 1, 1, 3, 1, 2, 2, 6, 5, 4, 1, NULL, '2020-06-25 03:51:08', '2020-06-25 06:52:24'),
(12, 'VEBJ00518', NULL, 110500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'HmhsiCEwyq8h.jpg,zX0JtZMGEtKW.jpg,m624ErGmeKi5.jpg', 'HmhsiCEwyq8h.jpg,zX0JtZMGEtKW.jpg,m624ErGmeKi5.jpg', 1, NULL, NULL, 2, 2, 1, 1, 1, 1, 2, 2, 6, 4, 5, 1, NULL, '2020-06-25 03:51:08', '2020-06-25 06:52:26'),
(13, 'VEBK00518', NULL, 81000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 1, '5r4VySn0qlDa.jpg', '5r4VySn0qlDa.jpg', 1, NULL, NULL, 2, 2, 1, 2, 4, 1, 2, 2, 5, 4, 4, 2, NULL, '2020-06-25 03:51:08', '2020-07-06 04:02:43'),
(14, 'VEBM00618', NULL, 81000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'kIMi876fMdc7.jpg,bKdxFzv7k38Q.jpg,xfrEQsPvFOuu.jpg', 'kIMi876fMdc7.jpg,bKdxFzv7k38Q.jpg,xfrEQsPvFOuu.jpg', 1, NULL, NULL, 2, 2, 1, 2, 5, 1, 2, 2, 7, 5, 4, 2, NULL, '2020-06-25 03:51:08', '2020-06-25 06:52:28'),
(15, 'VECQ00718', NULL, 94500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'fcPgSe017EF4.jpg,oV3VlF1iJ1zv.jpg,MINHr5v4kDko.jpg', 'fcPgSe017EF4.jpg,oV3VlF1iJ1zv.jpg,MINHr5v4kDko.jpg', 1, NULL, NULL, 2, 5, 1, 2, 6, 1, 2, 2, 8, 4, 6, 2, NULL, '2020-06-25 03:51:08', '2020-06-25 06:52:29'),
(16, 'PC104652F03', NULL, 5995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 3, 6, 2, 2, 6, 2, 2, 3, 5, 3, 7, 2, NULL, '2020-06-25 03:51:08', '2020-06-25 03:51:08'),
(17, 'PC105212F01', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 3, 7, 2, 2, 6, 2, 2, 3, 6, 4, 5, 2, NULL, '2020-06-25 03:51:08', '2020-06-25 03:51:08'),
(18, '241403', NULL, 42900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'UtaoEclSixSm.jpg,skWlEE8ag0v8.jpg,fpPHPkOo6JY7.jpg', 'UtaoEclSixSm.jpg,skWlEE8ag0v8.jpg,fpPHPkOo6JY7.jpg', 1, NULL, NULL, 4, 8, 1, 1, 5, 1, 2, 2, 1, 4, 5, 1, '61,11,51', '2020-06-25 03:51:08', '2020-07-04 03:18:18'),
(19, '241404', NULL, 24990.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'n1bAe9NywYiR.jpg,b3gHqfuXjLms.jpg,XqKDGr6HtDuX.jpg', 'n1bAe9NywYiR.jpg,b3gHqfuXjLms.jpg,XqKDGr6HtDuX.jpg', 1, NULL, NULL, 4, 8, 1, 1, 7, 1, 2, 2, 1, 3, 1, 1, '65,50,43', '2020-06-25 03:51:08', '2020-07-04 03:18:20'),
(20, '241405', NULL, 39300.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '4P7dm3EWREqp.jpg,fRxYMMrwioqs.jpg,FRdkReZGtAjt.jpg', '4P7dm3EWREqp.jpg,fRxYMMrwioqs.jpg,FRdkReZGtAjt.jpg', 1, NULL, NULL, 4, 8, 1, 1, 7, 1, 2, 2, 3, 4, 5, 1, '61,11,51', '2020-06-25 03:51:08', '2020-07-04 03:18:21'),
(21, '241421', NULL, 62350.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'P1KYtUkhQU5v.jpg,uWFv6MvULpPI.jpg', 'P1KYtUkhQU5v.jpg,uWFv6MvULpPI.jpg', 1, NULL, NULL, 4, 9, 1, 1, 4, 1, 2, 2, 1, 1, 1, 1, '61,11,46,53', '2020-06-25 03:51:08', '2020-07-04 03:18:23'),
(22, '241422', NULL, 62350.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '4F4c8X92wneL.jpg', '4F4c8X92wneL.jpg', 1, NULL, NULL, 4, 9, 1, 1, 4, 1, 2, 2, 9, 1, 8, 1, '61,11,53', '2020-06-25 03:51:08', '2020-07-04 03:18:23'),
(23, '241477', NULL, 39800.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '8bbBB6NkHnTe.jpg,FdGmbE6jpmwm.jpg,wA7fNVLv3Pmt.jpg,nChQDKjwu2KN.jpg', '8bbBB6NkHnTe.jpg,FdGmbE6jpmwm.jpg,wA7fNVLv3Pmt.jpg,nChQDKjwu2KN.jpg', 1, NULL, NULL, 4, 10, 1, 2, 2, 1, 2, 2, 6, 4, 9, 1, '11,28', '2020-06-25 03:51:09', '2020-07-04 03:18:26'),
(24, '241481', NULL, 62100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'B3xDwji68IQZ.jpg,cnJjD7W538dQ.jpg,3bdkhBd7a5bA.jpg', 'B3xDwji68IQZ.jpg,cnJjD7W538dQ.jpg,3bdkhBd7a5bA.jpg', 1, NULL, NULL, 4, 10, 1, 1, 2, 1, 2, 2, 6, 4, 10, 1, '61,11', '2020-06-25 03:51:09', '2020-07-04 03:18:30'),
(25, '241498', NULL, 34000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'vr2yVIObT6Zn.jpg,oT5ZJ5eCpbdj.jpg,BizJqqx4ergx.jpg,qHOcq8MG6n0F.jpg', 'vr2yVIObT6Zn.jpg,oT5ZJ5eCpbdj.jpg,BizJqqx4ergx.jpg,qHOcq8MG6n0F.jpg', 1, NULL, NULL, 4, 8, 1, 1, 7, 1, 2, 2, 4, 3, 3, 1, '61,11', '2020-06-25 03:51:09', '2020-07-04 03:18:33'),
(26, '241509', NULL, 38700.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'xrkywx1xzwNN.jpg,JeLWDuZ1S9yI.jpg', 'xrkywx1xzwNN.jpg,JeLWDuZ1S9yI.jpg', 1, NULL, NULL, 4, 8, 1, 1, 7, 1, 2, 2, 6, 4, 9, 1, '61,11,51', '2020-06-25 03:51:09', '2020-07-04 03:18:33'),
(27, '241510', NULL, 37900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'vDk7w0SfexjO.jpg,lgPXvoBVGatk.jpg,cBKxtCIEDciP.jpg,LVOhZVAfRgeR.jpg', 'vDk7w0SfexjO.jpg,lgPXvoBVGatk.jpg,cBKxtCIEDciP.jpg,LVOhZVAfRgeR.jpg', 1, NULL, NULL, 4, 8, 1, 1, 5, 1, 2, 2, 5, 3, 3, 1, '61,51,11', '2020-06-25 03:51:09', '2020-07-04 03:18:37'),
(28, '241537', NULL, 41400.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'yfxkpNQvHowA.jpg,tj6MyQwibmZG.jpg', 'yfxkpNQvHowA.jpg,tj6MyQwibmZG.jpg', 1, NULL, NULL, 4, 8, 1, 1, 7, 1, 2, 2, 5, 4, 11, 1, '61,11', '2020-06-25 03:51:09', '2020-07-04 03:18:38'),
(29, '241543', 'Small', 34500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'VsinqeDSLBja.jpg,L2XC4mB51Ka0.jpg,Hi512mJHmQFc.jpg,JuRnUtZQ6UVy.jpg', 'VsinqeDSLBja.jpg,L2XC4mB51Ka0.jpg,Hi512mJHmQFc.jpg,JuRnUtZQ6UVy.jpg', 1, NULL, NULL, 4, 10, 1, 2, 8, 1, 2, 2, 6, 4, 9, 2, '11,28', '2020-06-25 03:51:09', '2020-07-04 03:18:41'),
(30, '241605', 'GS', 34500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'aTDzu3NoT7uX.jpg,gxKpNYuh0EmZ.jpg,nCJxWSddZAOr.jpg,2cLRGGmmDSvh.jpg', 'aTDzu3NoT7uX.jpg,gxKpNYuh0EmZ.jpg,nCJxWSddZAOr.jpg,2cLRGGmmDSvh.jpg', 1, NULL, NULL, 4, 11, 1, 2, 4, 1, 2, 2, 10, 4, 12, 1, '11,53', '2020-06-25 03:51:09', '2020-07-04 03:18:45'),
(31, '241606', 'GS', 28800.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'c0lwmDG9r0j1.jpg,usMIU1bcbcSL.jpg,OUL9g1aJhBPx.jpg,1gahIWt0VqFn.jpg', 'c0lwmDG9r0j1.jpg,usMIU1bcbcSL.jpg,OUL9g1aJhBPx.jpg,1gahIWt0VqFn.jpg', 1, NULL, NULL, 4, 11, 1, 2, 4, 1, 2, 2, 10, 1, 13, 1, '11,53', '2020-06-25 03:51:09', '2020-07-04 03:18:48'),
(32, '241608', 'GS', 31700.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ZzxDUjq6WaO6.jpg,o8kmqfPBMDII.jpg,nWwEjmN5HFF7.jpg,0KpU8zFVCuh0.jpg', 'ZzxDUjq6WaO6.jpg,o8kmqfPBMDII.jpg,nWwEjmN5HFF7.jpg,0KpU8zFVCuh0.jpg', 1, NULL, NULL, 4, 11, 1, 2, 4, 1, 2, 2, 4, 1, 3, 1, '11', '2020-06-25 03:51:09', '2020-07-04 03:18:51'),
(33, '241612', 'GS', 34500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'O1POPKhr9Pkq.jpg,cRYRW19a1iEv.jpg,EreASgdVam1j.jpg', 'O1POPKhr9Pkq.jpg,cRYRW19a1iEv.jpg,EreASgdVam1j.jpg', 1, NULL, NULL, 4, 11, 1, 2, 6, 1, 2, 2, 10, 4, 9, 2, '11,53', '2020-06-25 03:51:09', '2020-07-04 03:18:53'),
(34, '241614', 'GS', 34600.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'DfxuBQuidinL.jpg,Px1zW72ONqHs.jpg,w6f4B5E75otD.jpg', 'DfxuBQuidinL.jpg,Px1zW72ONqHs.jpg,w6f4B5E75otD.jpg', 1, NULL, NULL, 4, 11, 1, 2, 6, 1, 2, 2, 4, 4, 11, 2, '11,53', '2020-06-25 03:51:09', '2020-07-04 03:18:55'),
(35, '241653', 'XLS', 41200.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'B69dHt1MbLCl.jpg,pDU2pt6wEUVg.jpg', 'B69dHt1MbLCl.jpg,pDU2pt6wEUVg.jpg', 1, NULL, NULL, 4, 8, 1, 1, 3, 1, 2, 2, 4, 3, 3, 1, '61,11,51', '2020-06-25 03:51:09', '2020-07-04 03:18:56'),
(36, '241687', NULL, 51900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'sGbsnimED4nK.jpg,ZryBJuPW8odi.jpg', 'sGbsnimED4nK.jpg,ZryBJuPW8odi.jpg', 1, NULL, NULL, 4, 8, 1, 1, 3, 1, 2, 2, 6, 4, 9, 1, '61,11,46,51', '2020-06-25 03:51:10', '2020-07-04 03:18:57'),
(37, '241690', 'GS', 35000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'I9szKAoGXmQ8.jpg,MraoygvxTuZj.jpg,TpojRa5yz153.jpg,zyMZX4igBdzf.jpg', 'I9szKAoGXmQ8.jpg,MraoygvxTuZj.jpg,TpojRa5yz153.jpg,zyMZX4igBdzf.jpg', 1, NULL, NULL, 4, 11, 1, 1, 4, 1, 2, 2, 2, 1, 2, 1, '61,11,46,51,53', '2020-06-25 03:51:10', '2020-07-04 03:19:00'),
(38, '241691', NULL, 49100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '4cwtcslEYlcA.jpg,mtRrKKUnX3Xn.jpg,ZhK73UMM6vUE.jpg,tBvqmfHR7AXG.jpg', '4cwtcslEYlcA.jpg,mtRrKKUnX3Xn.jpg,ZhK73UMM6vUE.jpg,tBvqmfHR7AXG.jpg', 1, NULL, NULL, 4, 11, 1, 1, 4, 1, 2, 2, 4, 4, 11, 1, '61,11,46,51,53', '2020-06-25 03:51:10', '2020-07-04 03:19:03'),
(39, '241692', NULL, 46300.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'lYsSwn7hES1F.jpg,lQVKy9gKd06p.jpg,MtYY6Hk7v4V2.jpg,E4cLmVY6wNyK.jpg', 'lYsSwn7hES1F.jpg,lQVKy9gKd06p.jpg,MtYY6Hk7v4V2.jpg,E4cLmVY6wNyK.jpg', 1, NULL, NULL, 4, 11, 1, 1, 4, 1, 2, 2, 4, 1, 3, 1, '61,11', '2020-06-25 03:51:10', '2020-07-04 03:19:07'),
(40, '241694', NULL, 38000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Vg9zMU2UUWBr.jpg,zjWLrRef2tdY.jpg,JoEYpCKDFPS8.jpg,4KeKDXWJr4pl.jpg', 'Vg9zMU2UUWBr.jpg,zjWLrRef2tdY.jpg,JoEYpCKDFPS8.jpg,4KeKDXWJr4pl.jpg', 1, NULL, NULL, 4, 11, 1, 1, 4, 1, 2, 2, 10, 1, 13, 1, '61,11,53', '2020-06-25 03:51:10', '2020-07-04 03:19:11'),
(41, '241698', NULL, 26500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'LCz2NqSUgzmQ.jpg,pXi19qD51WGE.jpg,loBvtDW38046.jpg', 'LCz2NqSUgzmQ.jpg,pXi19qD51WGE.jpg,loBvtDW38046.jpg', 1, NULL, NULL, 4, 11, 1, 2, 4, 1, 2, 2, 1, 1, 1, 1, '11,53', '2020-06-25 03:51:10', '2020-07-04 03:19:15'),
(42, '241789', NULL, 34500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '41vGOz9atsY5.jpg,WEwFJ4gk2qE6.jpg,0I3mQYaJsHC3.jpg', '41vGOz9atsY5.jpg,WEwFJ4gk2qE6.jpg,0I3mQYaJsHC3.jpg', 1, NULL, NULL, 4, 11, 1, 2, 4, 1, 2, 2, 2, 4, 9, 1, '11', '2020-06-25 03:51:10', '2020-07-04 03:19:17'),
(43, '241791', NULL, 44000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'QRNDiUhzh23D.jpg,jPsCJUIgjg7m.jpg,rQQpEzSbuRGN.jpg', 'QRNDiUhzh23D.jpg,jPsCJUIgjg7m.jpg,rQQpEzSbuRGN.jpg', 1, NULL, NULL, 4, 11, 1, 1, 4, 1, 2, 2, 2, 4, 9, 1, '61,11,51,53', '2020-06-25 03:51:10', '2020-07-04 03:19:18'),
(44, '241824', NULL, 34500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'W8FGSHQgNqJv.jpg,b2ZP9GIxegNY.jpg,bx8q2THEGLir.jpg,cIv28nDUwOph.jpg', 'W8FGSHQgNqJv.jpg,b2ZP9GIxegNY.jpg,bx8q2THEGLir.jpg,cIv28nDUwOph.jpg', 1, NULL, NULL, 4, 11, 1, 2, 4, 1, 2, 2, 1, 4, 9, 1, '53', '2020-06-25 03:51:10', '2020-07-04 03:19:21'),
(45, '249092', NULL, 46100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '', '', 1, NULL, NULL, 4, 10, 1, 2, 2, 1, 2, 2, 11, 4, 9, 1, '64', '2020-06-25 03:51:10', '2020-07-04 03:19:21'),
(46, '249096', NULL, 71200.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'MD22GocT1BNK.jpg,aouzacmlun0u.jpg,70THZ3Rc6NuE.jpg', 'MD22GocT1BNK.jpg,aouzacmlun0u.jpg,70THZ3Rc6NuE.jpg', 1, NULL, NULL, 4, 10, 1, 2, 6, 1, 2, 2, 5, 4, 9, 1, '11', '2020-06-25 03:51:10', '2020-07-04 03:19:23'),
(47, '249100', NULL, 35750.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'CAodprVi52EA.jpg,7EwffwXRoMZN.jpg,XoLI7FxoWx3Q.jpg,WMuzKN1zBryz.jpg', 'CAodprVi52EA.jpg,7EwffwXRoMZN.jpg,XoLI7FxoWx3Q.jpg,WMuzKN1zBryz.jpg', 1, NULL, NULL, 4, 11, 1, 2, 4, 1, 2, 2, 1, 4, 11, 1, '11,53', '2020-06-25 03:51:11', '2020-07-04 03:19:31'),
(48, '249126', NULL, 34500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'SbIe8ZIamSiw.jpg,IdbrD6wyx4V0.jpg', 'SbIe8ZIamSiw.jpg,IdbrD6wyx4V0.jpg', 1, NULL, NULL, 4, 11, 1, 2, 4, 1, 2, 2, 3, 4, 12, 1, '11,53', '2020-06-25 03:51:11', '2020-07-04 03:19:31'),
(49, '249134', NULL, 39700.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '5aoibdJu0VPL.jpg,sSOZjaBOzozm.jpg,oOR1APg1el4x.jpg,5BYgL7w5qG0P.jpg', '5aoibdJu0VPL.jpg,sSOZjaBOzozm.jpg,oOR1APg1el4x.jpg,5BYgL7w5qG0P.jpg', 1, NULL, NULL, 4, 11, 1, 2, 9, 1, 2, 2, 1, 4, 1, 1, '38,12,18', '2020-06-25 03:51:11', '2020-07-04 03:19:34'),
(50, '249137', NULL, 46300.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'pcFxetVzw4M3.jpg,NK3068VbvOkW.jpg,7vbX04QKgMd9.jpg', 'pcFxetVzw4M3.jpg,NK3068VbvOkW.jpg,7vbX04QKgMd9.jpg', 1, NULL, NULL, 4, 8, 1, 2, 9, 1, 2, 2, 1, 4, 1, 1, '61,11', '2020-06-25 03:51:11', '2020-07-04 03:19:37'),
(51, 'SGEH89P1', NULL, 15500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'W2jNYcESwB4e.jpg,apAFBDuEoZMK.jpg,cnvNYnsbb0Cc.jpg,eXccxdmL7tRO.jpg', 'W2jNYcESwB4e.jpg,apAFBDuEoZMK.jpg,cnvNYnsbb0Cc.jpg,eXccxdmL7tRO.jpg', 1, NULL, NULL, 5, 12, 2, 2, 10, 1, 2, 4, 2, 6, 5, 1, '11', '2020-06-25 03:51:11', '2020-06-25 06:52:32'),
(52, 'SGEH90P1', NULL, 17500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ON45UpbdSiHA.jpg,6MZQceFcS44Y.jpg,s9jaxB2ndOos.jpg,fMeYqqIU5Bpm.jpg', 'ON45UpbdSiHA.jpg,6MZQceFcS44Y.jpg,s9jaxB2ndOos.jpg,fMeYqqIU5Bpm.jpg', 1, NULL, NULL, 5, 13, 2, 2, 10, 1, 2, 4, 4, 6, 5, 1, '11', '2020-06-25 03:51:11', '2020-06-25 06:52:35'),
(53, 'SKS537P1', NULL, 13500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 1, 'ePjhkHqFNVeR.jpg,hwmwoHK6Z78w.jpg,9sQncuSJJVcQ.jpg,0Dq9K86XVEF8.jpg', 'ePjhkHqFNVeR.jpg,hwmwoHK6Z78w.jpg,9sQncuSJJVcQ.jpg,0Dq9K86XVEF8.jpg', 1, NULL, NULL, 5, 14, 2, 1, 1, 1, 2, 4, 2, 6, 5, 1, '61,11', '2020-06-25 03:51:11', '2020-07-06 04:04:56'),
(54, 'SKS539P2', NULL, 13500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'l6fj2zaNg872.jpg,wRKmgjRnz1kk.jpg,GLf1ZRUDWryo.jpg', 'l6fj2zaNg872.jpg,wRKmgjRnz1kk.jpg,GLf1ZRUDWryo.jpg', 1, NULL, NULL, 5, 14, 2, 1, 11, 1, 2, 4, 1, 6, 1, 1, '61,11', '2020-06-25 03:51:12', '2020-06-25 06:52:41'),
(55, 'SKS541P1', NULL, 14500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'OVCBwvfUtqmj.jpg,y1UBx9ezV95p.jpg,cL1HSigupAn8.jpg', 'OVCBwvfUtqmj.jpg,y1UBx9ezV95p.jpg,cL1HSigupAn8.jpg', 1, NULL, NULL, 5, 14, 2, 1, 2, 1, 2, 4, 6, 6, 9, 1, '61,11', '2020-06-25 03:51:12', '2020-06-25 06:52:44'),
(56, 'SKS543P1', NULL, 14500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'gySImU8Tm2o3.jpg,GsKb0wSMljLu.jpg,KQtTcKRflcOX.jpg', 'gySImU8Tm2o3.jpg,GsKb0wSMljLu.jpg,KQtTcKRflcOX.jpg', 1, NULL, NULL, 5, 14, 2, 1, 4, 1, 2, 4, 1, 6, 9, 1, '61,11', '2020-06-25 03:51:12', '2020-06-25 06:52:45'),
(57, 'SKS609P1', NULL, 14500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'y3KO387dEicB.jpg,mIZdWbAMLSyT.jpg,DnPH898ulNP3.jpg', 'y3KO387dEicB.jpg,mIZdWbAMLSyT.jpg,DnPH898ulNP3.jpg', 1, NULL, NULL, 5, 14, 2, 1, 4, 1, 2, 4, 1, 6, 9, 1, '61,11', '2020-06-25 03:51:12', '2020-06-25 06:52:48'),
(58, 'SKY676P1', NULL, 22500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'PXNo7f5DoudQ.jpg,1MhuENfu9oSd.jpg', 'PXNo7f5DoudQ.jpg,1MhuENfu9oSd.jpg', 1, NULL, NULL, 5, 15, 2, 1, 12, 1, 2, 4, 6, 6, 9, 2, '58,13', '2020-06-25 03:51:12', '2020-06-25 06:52:49'),
(59, 'SKY680P1', NULL, 22500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'XxAHz7i7zClr.jpg,5a9Hnptt3ldi.jpg,v4eOHf56LliK.jpg', 'XxAHz7i7zClr.jpg,5a9Hnptt3ldi.jpg,v4eOHf56LliK.jpg', 1, NULL, NULL, 5, 15, 2, 1, 9, 1, 2, 4, 8, 6, 6, 2, '58,61,13', '2020-06-25 03:51:12', '2020-06-25 06:52:51'),
(60, 'SKY682P1', NULL, 21500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '8HFoIcbPjn2O.jpg,sDhr9cexfj7z.jpg', '8HFoIcbPjn2O.jpg,sDhr9cexfj7z.jpg', 1, NULL, NULL, 5, 15, 2, 1, 9, 1, 2, 4, 6, 3, 7, 2, '58,13', '2020-06-25 03:51:12', '2020-06-25 06:52:53'),
(61, 'SKY700P1', NULL, 27500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'UKMJFK7zo7pj.jpg,5J2WQnHrBNHX.jpg,6fvZKL4jIrkW.jpg', 'UKMJFK7zo7pj.jpg,5J2WQnHrBNHX.jpg,6fvZKL4jIrkW.jpg', 1, NULL, NULL, 5, 16, 2, 1, 13, 1, 2, 4, 5, 6, 10, 2, '58,13', '2020-06-25 03:51:12', '2020-06-25 06:52:55'),
(62, 'SNAF29P1', NULL, 37500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '1TDfGGIGl5vb.jpg,k0YEMoxNADCb.jpg', '1TDfGGIGl5vb.jpg,k0YEMoxNADCb.jpg', 1, NULL, NULL, 5, 17, 2, 1, 2, 1, 2, 2, 6, 6, 5, 1, '2,61,11', '2020-06-25 03:51:12', '2020-06-25 06:52:56'),
(63, 'SNAF31P1', NULL, 37500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'AI4tDC1WhxVU.jpg,mDQh0eyL2Stz.jpg,xuSCjmekqD5W.jpg', 'AI4tDC1WhxVU.jpg,mDQh0eyL2Stz.jpg,xuSCjmekqD5W.jpg', 1, NULL, NULL, 5, 17, 2, 1, 2, 1, 2, 4, 1, 6, 5, 1, '61,11', '2020-06-25 03:51:12', '2020-06-25 06:52:57'),
(64, 'SNAF35P1', NULL, 37500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'nSkLhykFyNtQ.jpg,nBRO460uC2K2.jpg', 'nSkLhykFyNtQ.jpg,nBRO460uC2K2.jpg', 1, NULL, NULL, 5, 18, 2, 1, 2, 1, 2, 4, 5, 3, 1, 1, '2,61,11,46,51', '2020-06-25 03:51:12', '2020-06-25 06:52:58'),
(65, 'SNDC31P1', NULL, 15500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ei7PCm2losKI.jpg,2P4RJnPYfYI9.jpg', 'ei7PCm2losKI.jpg,2P4RJnPYfYI9.jpg', 1, NULL, NULL, 5, 13, 2, 1, 5, 1, 2, 4, 12, 3, 3, 1, '61,11,46', '2020-06-25 03:51:12', '2020-06-25 06:53:01'),
(66, 'SNDC33P1', NULL, 15500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'rbFzVGM8yBmR.jpg,o6xRfQE6H0jZ.jpg,8fyVIEZe5fCe.jpg,0yPe3s4wrXnI.jpg', 'rbFzVGM8yBmR.jpg,o6xRfQE6H0jZ.jpg,8fyVIEZe5fCe.jpg,0yPe3s4wrXnI.jpg', 1, NULL, NULL, 5, 19, 2, 1, 5, 1, 2, 4, 1, 3, 1, 1, '61,11,46', '2020-06-25 03:51:12', '2020-06-25 06:53:04'),
(67, 'SNDF13P1', NULL, 25500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'qQw4wuWZZYkU.jpg,DZBQI2LYNvdz.jpg,bBmdTSwrLDLT.jpg', 'qQw4wuWZZYkU.jpg,DZBQI2LYNvdz.jpg,bBmdTSwrLDLT.jpg', 1, NULL, NULL, 5, 20, 2, 1, 2, 1, 2, 4, 1, 6, 5, 1, '61,11,46', '2020-06-25 03:51:12', '2020-06-25 06:53:06'),
(68, 'SNDG68P1', NULL, 27500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '8onbxa7FkGHf.jpg,9Q8Nm7LcKZHF.jpg,FwFJdi5zf5LC.jpg', '8onbxa7FkGHf.jpg,9Q8Nm7LcKZHF.jpg,FwFJdi5zf5LC.jpg', 1, NULL, NULL, 5, 21, 2, 1, 14, 1, 2, 4, 6, 6, 5, 1, '61,11,46', '2020-06-25 03:51:13', '2020-06-25 06:53:08'),
(69, 'SNDV68P1', NULL, 37500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'jEYYT9KcQ8jm.jpg,zOlw7XUJSBOi.jpg,nxWuroHhkWHr.jpg', 'jEYYT9KcQ8jm.jpg,zOlw7XUJSBOi.jpg,nxWuroHhkWHr.jpg', 1, NULL, NULL, 5, 17, 2, 1, 15, 1, 2, 4, 6, 6, 5, 1, '61,11', '2020-06-25 03:51:13', '2020-06-25 06:53:10'),
(70, 'SNE498P1', NULL, 35500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'HrwWj5oZpfNe.jpg', 'HrwWj5oZpfNe.jpg', 1, NULL, NULL, 5, 22, 2, 2, 16, 1, 2, 2, 1, 7, 1, 1, '11', '2020-06-25 03:51:13', '2020-06-25 06:53:11'),
(71, 'SNE506P9', NULL, 35500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'bPbBTO7LDI12.jpg', 'bPbBTO7LDI12.jpg', 1, NULL, NULL, 5, 23, 2, 2, 17, 1, 2, 2, 1, 6, 1, 1, '11', '2020-06-25 03:51:13', '2020-06-25 06:53:12'),
(72, 'SNE514P1', NULL, 24500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'xraoFF6lbCIe.jpg', 'xraoFF6lbCIe.jpg', 1, NULL, NULL, 5, 23, 2, 2, 17, 1, 2, 4, 2, 6, 9, 1, '11', '2020-06-25 03:51:13', '2020-06-25 06:53:13'),
(73, 'SNE533P1', NULL, 32500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'BYUIizmECp9B.jpg,EMuOUqhTJr2s.jpg,nkZXK3e08Ia2.jpg,vLceCAufCjX2.jpg', 'BYUIizmECp9B.jpg,EMuOUqhTJr2s.jpg,nkZXK3e08Ia2.jpg,vLceCAufCjX2.jpg', 1, NULL, NULL, 5, 22, 2, 2, 18, 1, 2, 4, 2, 7, 2, 1, '11', '2020-06-25 03:51:13', '2020-06-25 06:53:16'),
(74, 'SNE535P1', NULL, 32500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'c9J1i8fUpFVw.jpg,u8gEPEMQtWsU.jpg,O0l3h2royM8e.jpg', 'c9J1i8fUpFVw.jpg,u8gEPEMQtWsU.jpg,O0l3h2royM8e.jpg', 1, NULL, NULL, 5, 22, 2, 2, 18, 1, 2, 4, 10, 7, 13, 1, '11', '2020-06-25 03:51:13', '2020-06-25 06:53:18'),
(75, 'SNE537P1', NULL, 32500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '73ARJZOR4olI.jpg,4RH6Q5Fn1OJE.jpg,IbAK48qQJbQI.jpg', '73ARJZOR4olI.jpg,4RH6Q5Fn1OJE.jpg,IbAK48qQJbQI.jpg', 1, NULL, NULL, 5, 22, 2, 2, 18, 1, 2, 4, 2, 7, 2, 1, '11', '2020-06-25 03:51:13', '2020-06-25 06:53:21'),
(76, 'SNJ027P1', NULL, 39500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '5be66ziXYeht.jpg,U1bmVUz5LpZd.jpg,lE7mx5jm6R2R.jpg', '5be66ziXYeht.jpg,U1bmVUz5LpZd.jpg,lE7mx5jm6R2R.jpg', 1, NULL, NULL, 5, 22, 2, 2, 19, 1, 2, 4, 1, 7, 1, 1, '2,5', '2020-06-25 03:51:13', '2020-06-25 06:53:24'),
(77, 'SNJ028P1', NULL, 42500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'bTnByF48sqmk.jpg,ys1owFmTG8T5.jpg', 'bTnByF48sqmk.jpg,ys1owFmTG8T5.jpg', 1, NULL, NULL, 5, 22, 2, 2, 19, 1, 2, 4, 1, 7, 1, 1, '2,8,15,37', '2020-06-25 03:51:13', '2020-06-25 06:53:25'),
(78, 'SNKA01K1', NULL, 8500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'g7nOjKnWljZR.jpg,BEt9g6tz8Ebj.jpg,7JxRH0vhlj0j.jpg,MVXL5Gvj9guD.jpg', 'g7nOjKnWljZR.jpg,BEt9g6tz8Ebj.jpg,7JxRH0vhlj0j.jpg,MVXL5Gvj9guD.jpg', 1, NULL, NULL, 5, 24, 2, 2, 20, 1, 2, 5, 6, 6, 5, 1, '13', '2020-06-25 03:51:13', '2020-06-25 06:53:28'),
(79, 'SNKA05K1', NULL, 8500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 's1sB9yGAVqvm.jpg,KHMRWzQQqvC2.jpg,6uYbOrz7R3J1.jpg', 's1sB9yGAVqvm.jpg,KHMRWzQQqvC2.jpg,6uYbOrz7R3J1.jpg', 1, NULL, NULL, 5, 24, 2, 2, 20, 1, 2, 5, 2, 6, 5, 1, '13', '2020-06-25 03:51:13', '2020-06-25 06:53:30'),
(80, 'SNKA23K1', NULL, 8500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'oEwZxVZmgdVJ.jpg,1tmiThl07gfT.jpg,3KuWZklOfW8H.jpg', 'oEwZxVZmgdVJ.jpg,1tmiThl07gfT.jpg,3KuWZklOfW8H.jpg', 1, NULL, NULL, 5, 24, 2, 2, 20, 1, 2, 5, 1, 6, 5, 1, '13', '2020-06-25 03:51:13', '2020-06-25 06:53:32'),
(81, 'SNKN58K1', NULL, 15500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'FtceiMiqB2Ek.jpg,EnyxUm1obkdE.jpg,YNGBKrFgJRNF.jpg', 'FtceiMiqB2Ek.jpg,EnyxUm1obkdE.jpg,YNGBKrFgJRNF.jpg', 1, NULL, NULL, 5, 24, 2, 2, 4, 1, 2, 4, 5, 6, 9, 1, '13', '2020-06-25 03:51:13', '2020-06-25 06:53:34'),
(82, 'SNKP17K1', NULL, 12500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'W6JEfVtTa1Fn.jpg,e5HYc74l300z.jpg,ij6d9rDodYi1.jpg,abrouhgkcE5f.jpg', 'W6JEfVtTa1Fn.jpg,e5HYc74l300z.jpg,ij6d9rDodYi1.jpg,abrouhgkcE5f.jpg', 1, NULL, NULL, 5, 24, 2, 2, 21, 1, 2, 4, 2, 6, 5, 1, '13', '2020-06-25 03:51:13', '2020-06-25 06:53:37'),
(83, 'SNP038P1', 'Kinetic Perpetual', 64500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '', '', 1, NULL, NULL, 5, 17, 2, 1, 2, 1, 2, 2, 4, 3, 3, 1, '11,34', '2020-06-25 03:51:14', '2020-06-24 22:47:09'),
(84, 'SNP080P1', 'Kinetic Perpetual', 64500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'b7hIrIYMNenU.jpg,rb0RaAghoP1a.jpg,MCh6oL0H3fyg.jpg', 'b7hIrIYMNenU.jpg,rb0RaAghoP1a.jpg,MCh6oL0H3fyg.jpg', 1, NULL, NULL, 5, 17, 2, 1, 2, 1, 2, 2, 5, 6, 5, 1, '58,11,34', '2020-06-25 03:51:14', '2020-06-25 06:53:39'),
(85, 'SNP094P1', 'Kinetic Perpetual', 64500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'y5I0R2kUb2wX.jpg,RI3lhFE06gnD.jpg,uAsmqVkzxL4Y.jpg', 'y5I0R2kUb2wX.jpg,RI3lhFE06gnD.jpg,uAsmqVkzxL4Y.jpg', 1, NULL, NULL, 5, 17, 2, 1, 22, 1, 2, 2, 6, 6, 9, 1, '58,11,34', '2020-06-25 03:51:14', '2020-06-25 06:53:41'),
(86, 'SNP096P1', 'Kinetic Perpetual', 59500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '7WvTMn3Q5LCq.jpg,c3NhyuCJT5ND.jpg,eUeCLs1tXpmp.jpg', '7WvTMn3Q5LCq.jpg,c3NhyuCJT5ND.jpg,eUeCLs1tXpmp.jpg', 1, NULL, NULL, 5, 17, 2, 2, 22, 1, 2, 2, 6, 3, 3, 1, '58,11,27,34', '2020-06-25 03:51:14', '2020-06-25 06:53:44'),
(87, 'SNP100P1', 'Kinetic Perpetual', 64500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Q610VSZh7OIL.jpg,HXNM6T9MeELn.jpg,GZxVzO709FtD.jpg', 'Q610VSZh7OIL.jpg,HXNM6T9MeELn.jpg,GZxVzO709FtD.jpg', 1, NULL, NULL, 5, 25, 2, 1, 23, 1, 2, 2, 6, 6, 9, 1, '11,27,34', '2020-06-25 03:51:14', '2020-06-25 06:53:46'),
(88, 'SNP120P1', 'Kinetic Perpetual', 64500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'V0fQyFA8S5KX.jpg,Q6YgxLuPvdFU.jpg,1icEQjBHH7Mx.jpg', 'V0fQyFA8S5KX.jpg,Q6YgxLuPvdFU.jpg,1icEQjBHH7Mx.jpg', 1, NULL, NULL, 5, 25, 2, 2, 24, 1, 2, 2, 2, 1, 2, 1, '58,11,27,34', '2020-06-25 03:51:14', '2020-06-25 06:53:49'),
(89, 'SNP126P1', 'Kinetic Perpetual', 64500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'NqciG2DPSNHy.jpg,hRJdoVUZkGBE.jpg,SICUCetn5zlF.jpg', 'NqciG2DPSNHy.jpg,hRJdoVUZkGBE.jpg,SICUCetn5zlF.jpg', 1, NULL, NULL, 5, 17, 2, 2, 22, 1, 2, 2, 2, 3, 2, 1, '58,34,37', '2020-06-25 03:51:14', '2020-06-25 06:53:51'),
(90, 'SNP128P1', 'Kinetic Perpetual', 64500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '4anfbraZCbIe.jpg,OqDXYCeD1Wzx.jpg,briemnMYfA9o.jpg', '4anfbraZCbIe.jpg,OqDXYCeD1Wzx.jpg,briemnMYfA9o.jpg', 1, NULL, NULL, 5, 17, 2, 2, 22, 1, 2, 2, 4, 6, 5, 1, '58,11,27,34', '2020-06-25 03:51:14', '2020-06-25 06:53:53'),
(91, 'SNP129P1', 'Kinetic Perpetual', 64500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'knSI6WIMJsEk.jpg,p1ySSfAHh2sG.jpg,6jpaRUttoDj4.jpg', 'knSI6WIMJsEk.jpg,p1ySSfAHh2sG.jpg,6jpaRUttoDj4.jpg', 1, NULL, NULL, 5, 17, 2, 2, 22, 1, 2, 2, 1, 6, 5, 1, '11,34', '2020-06-25 03:51:14', '2020-06-25 06:53:55'),
(92, 'SNP145P1', 'Kinetic Perpetual', 69500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'fbA6QLNWusU2.jpg,Qb3Xuff0s3xc.jpg', 'fbA6QLNWusU2.jpg,Qb3Xuff0s3xc.jpg', 1, NULL, NULL, 5, 17, 2, 2, 25, 1, 2, 2, 1, 3, 1, 1, '58,11', '2020-06-25 03:51:14', '2020-06-25 06:53:57'),
(93, 'SNP146P1', 'Kinetic Perpetual', 74500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'dhLyhqDZd5hM.jpg,RsiYpYKoBa1s.jpg', 'dhLyhqDZd5hM.jpg,RsiYpYKoBa1s.jpg', 1, NULL, NULL, 5, 17, 2, 2, 25, 1, 2, 2, 1, 3, 3, 1, '58,11', '2020-06-25 03:51:14', '2020-06-25 06:53:57'),
(94, 'SNP149P2', 'Kinetic Perpetual', 67500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'kGKzjdJz1leK.jpg,qXKl1l1NXUdW.jpg', 'kGKzjdJz1leK.jpg,qXKl1l1NXUdW.jpg', 1, NULL, NULL, 5, 17, 2, 2, 25, 1, 2, 2, 1, 3, 1, 1, '13', '2020-06-25 03:51:14', '2020-06-25 06:53:59'),
(95, 'SNP152P1', 'Kinetic Perpetual', 64500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'v9I8cC1nkfVA.jpg,5uVMKierwUMo.jpg,kNfxKUSAEnwm.jpg,oFR3eZT4Ojj8.jpg', 'v9I8cC1nkfVA.jpg,5uVMKierwUMo.jpg,kNfxKUSAEnwm.jpg,oFR3eZT4Ojj8.jpg', 1, NULL, NULL, 5, 17, 2, 2, 25, 1, 2, 2, 6, 8, 9, 1, '58,13,27,34', '2020-06-25 03:51:14', '2020-06-25 06:54:02'),
(96, 'SNP153P1', 'Kinetic Perpetual', 67500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'eU0ZxjaXPNQD.jpg,KjY3VE1jFXEG.jpg,x8CvWz7PbNuO.jpg,hMkYg4BM1HUA.jpg', 'eU0ZxjaXPNQD.jpg,KjY3VE1jFXEG.jpg,x8CvWz7PbNuO.jpg,hMkYg4BM1HUA.jpg', 1, NULL, NULL, 5, 17, 2, 2, 25, 1, 2, 2, 2, 6, 5, 1, '58,13,31', '2020-06-25 03:51:14', '2020-06-25 06:54:05'),
(97, 'SNT044P1', NULL, 23500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'wb89z9c0A8j3.jpg,PQOn79rqzZfa.jpg,0zC5OABhvUuP.jpg', 'wb89z9c0A8j3.jpg,PQOn79rqzZfa.jpg,0zC5OABhvUuP.jpg', 1, NULL, NULL, 5, 15, 2, 2, 2, 1, 2, 4, 5, 8, 9, 1, '58,13', '2020-06-25 03:51:14', '2020-06-25 06:54:07'),
(98, 'SPC007P1', NULL, 42500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'TAH9qy8JaRK5.jpg,umwscdh351fr.jpg,nRJsl5XlZsp9.jpg', 'TAH9qy8JaRK5.jpg,umwscdh351fr.jpg,nRJsl5XlZsp9.jpg', 1, NULL, NULL, 5, 25, 2, 1, 1, 1, 2, 4, 1, 1, 1, 1, '61,11', '2020-06-25 03:51:14', '2020-06-25 06:54:08'),
(99, 'SPC079P1', NULL, 20500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'VvCHPEjwooxA.jpg,VpAzEZoxMFXo.jpg,LuMTowrgfv9Y.jpg', 'VvCHPEjwooxA.jpg,VpAzEZoxMFXo.jpg,LuMTowrgfv9Y.jpg', 1, NULL, NULL, 5, 19, 2, 1, 4, 1, 2, 4, 5, 6, 5, 1, '58,61,11,46', '2020-06-25 03:51:14', '2020-06-25 06:54:11'),
(100, 'SPC081P1', NULL, 20500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'rQM5d3sMyWzP.jpg', 'rQM5d3sMyWzP.jpg', 1, NULL, NULL, 5, 26, 2, 1, 24, 1, 2, 4, 2, 6, 5, 1, '58,61,11,46', '2020-06-25 03:51:14', '2020-06-25 06:54:12'),
(101, 'SPC087P1', NULL, 17500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'bsPfrFqaMkzO.jpg,UmIjeRFxDiCs.jpg,Tun6uZznzkC9.jpg', 'bsPfrFqaMkzO.jpg,UmIjeRFxDiCs.jpg,Tun6uZznzkC9.jpg', 1, NULL, NULL, 5, 19, 2, 1, 4, 1, 2, 4, 5, 3, 3, 1, '61,11', '2020-06-25 03:51:14', '2020-06-25 06:54:14'),
(102, 'SPC109P1', NULL, 27500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'kHUFA6xXytYj.jpg,Cetn9YNLLEbl.jpg,TiyyOgm3mySP.jpg,CzD7L0sFqmjX.jpg', 'kHUFA6xXytYj.jpg,Cetn9YNLLEbl.jpg,TiyyOgm3mySP.jpg,CzD7L0sFqmjX.jpg', 1, NULL, NULL, 5, 15, 2, 1, 4, 1, 2, 4, 1, 6, 5, 1, '61,11', '2020-06-25 03:51:14', '2020-06-25 06:54:16'),
(103, 'SPC129P1', NULL, 20500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'sHgPuWrc3NtH.jpg,CQUAcummJx3K.jpg,mlto5YfYm7aw.jpg,dUl6bXzwV0yx.jpg', 'sHgPuWrc3NtH.jpg,CQUAcummJx3K.jpg,mlto5YfYm7aw.jpg,dUl6bXzwV0yx.jpg', 1, NULL, NULL, 5, 19, 2, 1, 4, 1, 2, 4, 6, 3, 3, 1, '61,11,27,51', '2020-06-25 03:51:15', '2020-06-25 06:54:18'),
(104, 'SPC131P1', NULL, 20500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '2enSRvJoLBiJ.jpg,J38pEbVbctjm.jpg,ceGi4i2wSsGm.jpg,s4l9tCFO6Zrn.jpg', '2enSRvJoLBiJ.jpg,J38pEbVbctjm.jpg,ceGi4i2wSsGm.jpg,s4l9tCFO6Zrn.jpg', 1, NULL, NULL, 5, 13, 2, 1, 26, 1, 2, 4, 5, 3, 1, 1, '2,61,13,34,51', '2020-06-25 03:51:15', '2020-06-25 06:54:21'),
(105, 'SPC151P1', NULL, 20500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'dc64uHdXhJNM.jpg,sIDCBiWoAoxz.jpg,QmVL7chM5eig.jpg', 'dc64uHdXhJNM.jpg,sIDCBiWoAoxz.jpg,QmVL7chM5eig.jpg', 1, NULL, NULL, 5, 19, 2, 1, 2, 1, 2, 4, 4, 6, 5, 1, '61,11', '2020-06-25 03:51:15', '2020-06-25 06:54:24'),
(106, 'SPC162P1', NULL, 45500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'b7FBZnZ51Uym.jpg,dOaBpmVLgQZu.jpg,7oUROzqov2EJ.jpg', 'b7FBZnZ51Uym.jpg,dOaBpmVLgQZu.jpg,7oUROzqov2EJ.jpg', 1, NULL, NULL, 5, 17, 2, 1, 22, 1, 2, 4, 5, 8, 5, 1, '58,2,61,34,46', '2020-06-25 03:51:15', '2020-06-25 06:54:26'),
(107, 'SPC192P1', NULL, 34500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'IWcyFnkdlrDd.jpg,bMN6du0epn0e.jpg,EClzXnYJ6GiE.jpg', 'IWcyFnkdlrDd.jpg,bMN6du0epn0e.jpg,EClzXnYJ6GiE.jpg', 1, NULL, NULL, 5, 15, 2, 1, 27, 1, 2, 4, 4, 9, 1, 1, '58,61,11,46', '2020-06-25 03:51:15', '2020-06-25 06:54:28'),
(108, 'SPC227P1', NULL, 35500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'R6Ih2IfQ4YCG.jpg,8ldCkMKHCYcw.jpg,tOxVYfUUyvtL.jpg,JtCbqgPvm6BT.jpg', 'R6Ih2IfQ4YCG.jpg,8ldCkMKHCYcw.jpg,tOxVYfUUyvtL.jpg,JtCbqgPvm6BT.jpg', 1, NULL, NULL, 5, 15, 2, 1, 27, 1, 2, 4, 2, 10, 10, 1, '58,61,11,46', '2020-06-25 03:51:15', '2020-06-25 06:54:31'),
(109, 'SPC228P1', NULL, 30500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '0XsDIinYLvOT.jpg,cFL79eZ1s5IM.jpg,lHbq43UlS8WA.jpg,3qyloNGM5vyy.jpg', '0XsDIinYLvOT.jpg,cFL79eZ1s5IM.jpg,lHbq43UlS8WA.jpg,3qyloNGM5vyy.jpg', 1, NULL, NULL, 5, 15, 2, 1, 28, 1, 2, 4, 6, 8, 9, 1, '58,61,11,46,51', '2020-06-25 03:51:15', '2020-06-25 06:54:34'),
(110, 'SPC232P1', NULL, 30500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'm3azdbppFnbd.jpg,LVofqIixjFAK.jpg,HLwOZSI9lU6k.jpg,1TxkfhhfvfW9.jpg', 'm3azdbppFnbd.jpg,LVofqIixjFAK.jpg,HLwOZSI9lU6k.jpg,1TxkfhhfvfW9.jpg', 1, NULL, NULL, 5, 15, 2, 1, 28, 1, 2, 4, 1, 8, 9, 1, '58,61,11,46,51', '2020-06-25 03:51:15', '2020-06-25 06:54:36'),
(111, 'SPC234P1', NULL, 34500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'WLPg9nAtRh7k.jpg,Mo8kPRkpWnT3.jpg,v0LY7yAXkJzd.jpg,mrYieC1OLDwF.jpg', 'WLPg9nAtRh7k.jpg,Mo8kPRkpWnT3.jpg,v0LY7yAXkJzd.jpg,mrYieC1OLDwF.jpg', 1, NULL, NULL, 5, 15, 2, 1, 27, 1, 2, 4, 5, 10, 10, 1, '58,61,11,46,51', '2020-06-25 03:51:15', '2020-06-25 06:54:39'),
(112, 'SPC237P1', NULL, 30500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'V8BYh252Wzx3.jpg,BKEvzaYbp74n.jpg,Ydg0egKgLgkF.jpg,qSnJpQrhIFop.jpg', 'V8BYh252Wzx3.jpg,BKEvzaYbp74n.jpg,Ydg0egKgLgkF.jpg,qSnJpQrhIFop.jpg', 1, NULL, NULL, 5, 15, 2, 1, 27, 1, 2, 4, 1, 3, 1, 1, '58,61,11,46,51', '2020-06-25 03:51:15', '2020-06-25 06:54:42'),
(113, 'SPC241P1', NULL, 28500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'DFQeJH95CU2c.jpg,eRYOHMUnJ9H8.jpg,VdvhYyjuT4bh.jpg,fjgExxb0NKl5.jpg', 'DFQeJH95CU2c.jpg,eRYOHMUnJ9H8.jpg,VdvhYyjuT4bh.jpg,fjgExxb0NKl5.jpg', 1, NULL, NULL, 5, 15, 2, 1, 27, 1, 2, 4, 5, 6, 5, 1, '61,11,51', '2020-06-25 03:51:15', '2020-06-25 06:54:45'),
(114, 'SPC244P1', NULL, 30500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'lfXEruqdUdas.jpg,eKDCBZDN9UL7.jpg,jMhA1TJmofhs.jpg,mHOisdNUrvgU.jpg', 'lfXEruqdUdas.jpg,eKDCBZDN9UL7.jpg,jMhA1TJmofhs.jpg,mHOisdNUrvgU.jpg', 1, NULL, NULL, 5, 15, 2, 1, 1, 1, 2, 4, 5, 8, 11, 1, '61,11,51', '2020-06-25 03:51:15', '2020-06-25 06:54:47'),
(115, 'SPC248P1', NULL, 32500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'fxBoC71oMp0w.jpg,EOgd2UjMpy6o.jpg,YdEzOsEQQqzV.jpg,Bp5c2bvIdgGm.jpg', 'fxBoC71oMp0w.jpg,EOgd2UjMpy6o.jpg,YdEzOsEQQqzV.jpg,Bp5c2bvIdgGm.jpg', 1, NULL, NULL, 5, 15, 2, 1, 27, 1, 2, 4, 4, 3, 3, 1, '61,11,51', '2020-06-25 03:51:15', '2020-06-25 06:54:50'),
(116, 'SPC250P1', NULL, 32500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ISqCWZlFc3bg.jpg,KbZsMoyUR2nj.jpg,AuqP6JpalTdC.jpg,FA26VzTp5Eue.jpg', 'ISqCWZlFc3bg.jpg,KbZsMoyUR2nj.jpg,AuqP6JpalTdC.jpg,FA26VzTp5Eue.jpg', 1, NULL, NULL, 5, 27, 2, 1, 1, 1, 2, 4, 1, 7, 1, 1, '61,11,51', '2020-06-25 03:51:15', '2020-06-25 06:54:53'),
(117, 'SRKZ60P1', NULL, 39500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'mgTyoWwCVdVN.jpg,rZbyXFeGE0mb.jpg,91jjhy7VMQRP.jpg', 'mgTyoWwCVdVN.jpg,rZbyXFeGE0mb.jpg,91jjhy7VMQRP.jpg', 1, NULL, NULL, 5, 17, 2, 2, 29, 1, 2, 4, 13, 8, 4, 2, '46', '2020-06-25 03:51:15', '2020-06-25 06:54:54'),
(118, 'SRKZ61P1', NULL, 35500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ykUlsuFLt8wR.jpg,O7ovNfEmyLc5.jpg,Cq9Ym5rUilDs.jpg,deleEewN4jm9.jpg', 'ykUlsuFLt8wR.jpg,O7ovNfEmyLc5.jpg,Cq9Ym5rUilDs.jpg,deleEewN4jm9.jpg', 1, NULL, NULL, 5, 17, 2, 2, 30, 1, 2, 4, 13, 6, 5, 2, '46', '2020-06-25 03:51:15', '2020-06-25 06:54:57'),
(119, 'SRKZ64P1', NULL, 32500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ezGduxPwDhbF.jpg,hCXm3k0SoFbB.jpg,0FbF7KPlZULn.jpg', 'ezGduxPwDhbF.jpg,hCXm3k0SoFbB.jpg,0FbF7KPlZULn.jpg', 1, NULL, NULL, 5, 17, 2, 2, 31, 1, 2, 4, 4, 10, 6, 2, '46', '2020-06-25 03:51:15', '2020-06-25 06:54:59'),
(120, 'SRKZ66P1', NULL, 30500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'c5zDgd7L5H4P.jpg,QVyx3PkX7kWh.jpg,L74qHc6pEOAe.jpg,nF9uvJfjdcWc.jpg', 'c5zDgd7L5H4P.jpg,QVyx3PkX7kWh.jpg,L74qHc6pEOAe.jpg,nF9uvJfjdcWc.jpg', 1, NULL, NULL, 5, 17, 2, 2, 32, 1, 2, 4, 13, 8, 9, 2, '46', '2020-06-25 03:51:16', '2020-06-25 06:55:02'),
(121, 'SRL027J1', NULL, 20500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'L5REvO0iSIIM.jpg,o3D391QBw8T3.jpg,CpTJa0yInNyR.jpg,SU8ESGAIvqIT.jpg', 'L5REvO0iSIIM.jpg,o3D391QBw8T3.jpg,CpTJa0yInNyR.jpg,SU8ESGAIvqIT.jpg', 1, NULL, NULL, 5, 15, 2, 2, 33, 1, 2, 4, 1, 1, 1, 1, '57,11,40', '2020-06-25 03:51:16', '2020-06-25 06:55:05'),
(122, 'SRLZ84P1', NULL, 29500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'fycZeYsRrmAP.jpg,Aq6eF4SdSFGB.jpg,cebFrba93Ggf.jpg,M1io6PxDmzoQ.jpg', 'fycZeYsRrmAP.jpg,Aq6eF4SdSFGB.jpg,cebFrba93Ggf.jpg,M1io6PxDmzoQ.jpg', 1, NULL, NULL, 5, 15, 2, 2, 15, 1, 2, 4, 14, 10, 6, 2, '58,13,46', '2020-06-25 03:51:16', '2020-06-25 06:55:07'),
(123, 'SRLZ86P1', NULL, 29500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'rMmyhJMy94xI.jpg,lCLGZyOZAN7i.jpg,tVuSfg3TDCHG.jpg,NSaYklJrvRZT.jpg', 'rMmyhJMy94xI.jpg,lCLGZyOZAN7i.jpg,tVuSfg3TDCHG.jpg,NSaYklJrvRZT.jpg', 1, NULL, NULL, 5, 15, 2, 2, 15, 1, 2, 4, 14, 8, 11, 2, '58,13,46', '2020-06-25 03:51:16', '2020-06-25 06:55:10'),
(124, 'SRN043P1', NULL, 22500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'PSWliVWhOqvl.jpg,amis8ZkVc6he.jpg,UWQVVfkvi424.jpg', 'PSWliVWhOqvl.jpg,amis8ZkVc6he.jpg,UWQVVfkvi424.jpg', 1, NULL, NULL, 5, 13, 2, 2, 34, 1, 2, 4, 5, 6, 5, 1, '13', '2020-06-25 03:51:16', '2020-06-25 06:55:12'),
(125, 'SRN045P1', NULL, 22500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ePiMX2cdAxOC.jpg,MVexnmMeqkqL.jpg,E939Ln7bCxFU.jpg', 'ePiMX2cdAxOC.jpg,MVexnmMeqkqL.jpg,E939Ln7bCxFU.jpg', 1, NULL, NULL, 5, 19, 2, 2, 34, 1, 2, 4, 1, 6, 5, 1, '13', '2020-06-25 03:51:16', '2020-06-25 06:55:14'),
(126, 'SRN047P1', NULL, 22500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'TrFkcMpBXrE3.jpg,mrcYNOSxbiJo.jpg,Mot6JfYe17Qw.jpg', 'TrFkcMpBXrE3.jpg,mrcYNOSxbiJo.jpg,Mot6JfYe17Qw.jpg', 1, NULL, NULL, 5, 28, 2, 2, 34, 1, 2, 4, 2, 6, 5, 1, '11,40', '2020-06-25 03:51:16', '2020-06-25 06:55:16');
INSERT INTO `product_details` (`id`, `model_no`, `series`, `price`, `material`, `buckle`, `size`, `shape`, `frame_colour`, `lens`, `visible_ray`, `dimensions`, `nib`, `length_mm`, `taper`, `clasp_type`, `clasp_size`, `lock_system`, `description`, `warranty_period`, `meta_title`, `meta_description`, `meta_keyword`, `h1`, `status`, `featured_status`, `images`, `thumb_img`, `main_category_id`, `colour_id`, `clock_type_id`, `brand_id`, `collection_id`, `movement_id`, `movement_type_id`, `case_size_id`, `case_shape_id`, `case_material_id`, `glass_material_id`, `dial_colour_id`, `strap_material_id`, `strap_colour_id`, `gender_id`, `feature_id`, `created_at`, `updated_at`) VALUES
(127, 'SRN051P1', NULL, 20500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'UpItuoukWwIx.jpg,UGYr9Om5fsKH.jpg,AH8YupTfD3bd.jpg,zVfwfJq2cGd3.jpg', 'UpItuoukWwIx.jpg,UGYr9Om5fsKH.jpg,AH8YupTfD3bd.jpg,zVfwfJq2cGd3.jpg', 1, NULL, NULL, 5, 28, 2, 2, 34, 1, 2, 4, 1, 3, 1, 1, '13', '2020-06-25 03:51:16', '2020-06-25 06:55:19'),
(128, 'SRN052P1', NULL, 20500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'xd4YI6lQS1A6.jpg,7gtbR6PViZGp.jpg,pxrGIq5vIq49.jpg', 'xd4YI6lQS1A6.jpg,7gtbR6PViZGp.jpg,pxrGIq5vIq49.jpg', 1, NULL, NULL, 5, 13, 2, 2, 34, 1, 2, 4, 5, 3, 3, 1, '13', '2020-06-25 03:51:16', '2020-06-25 06:55:21'),
(129, 'SRN061P1', NULL, 22500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'KGAnqtRJajPy.jpg,UpM2HGRTnaaM.jpg,r1AU9YLHAzLJ.jpg,5t8cOJQIAMq9.jpg', 'KGAnqtRJajPy.jpg,UpM2HGRTnaaM.jpg,r1AU9YLHAzLJ.jpg,5t8cOJQIAMq9.jpg', 1, NULL, NULL, 5, 28, 2, 2, 2, 1, 2, 4, 5, 3, 1, 1, '13', '2020-06-25 03:51:16', '2020-06-25 06:55:23'),
(130, 'SRN062P1', NULL, 24500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '9R84ElZ0rZho.jpg,FjWmyDrE2dJk.jpg,vnFE0CKH9oUU.jpg,kGlb4nNCWynb.jpg', '9R84ElZ0rZho.jpg,FjWmyDrE2dJk.jpg,vnFE0CKH9oUU.jpg,kGlb4nNCWynb.jpg', 1, NULL, NULL, 5, 21, 2, 2, 2, 1, 2, 4, 2, 3, 2, 1, '13', '2020-06-25 03:51:16', '2020-06-25 06:55:26'),
(131, 'SRP763J1', NULL, 34500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'mPaPwhnwx3M3.jpg,E6FoTcV2Dbic.jpg', 'mPaPwhnwx3M3.jpg,E6FoTcV2Dbic.jpg', 1, NULL, NULL, 5, 29, 2, 2, 35, 1, 2, 4, 12, 6, 5, 1, '13', '2020-06-25 03:51:16', '2020-06-25 06:55:27'),
(132, 'SRPA16J1', NULL, 39500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'sI9vOk4OXRAP.jpg,iuh28ycMfmXW.jpg', 'sI9vOk4OXRAP.jpg,iuh28ycMfmXW.jpg', 1, NULL, NULL, 5, 29, 3, 3, 36, 1, 2, 4, 5, 3, 3, 1, '60', '2020-06-25 03:51:16', '2020-06-25 06:55:28'),
(133, 'SRPA21K1', NULL, 39500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Dhpyq0jGV38D.jpg,ZGWlRQyuYUNF.jpg', 'Dhpyq0jGV38D.jpg,ZGWlRQyuYUNF.jpg', 1, NULL, NULL, 5, 22, 4, 4, 37, 1, 2, 4, 2, 6, 5, 1, '13', '2020-06-25 03:51:16', '2020-06-25 06:55:29'),
(134, 'SRPB46J1', NULL, 45500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'nEbxwAyDv8O8.jpg,ECVs3ZaRiG4f.jpg,HIQyT7g1nH9o.jpg,K1wfVixlnzVZ.jpg', 'nEbxwAyDv8O8.jpg,ECVs3ZaRiG4f.jpg,HIQyT7g1nH9o.jpg,K1wfVixlnzVZ.jpg', 1, NULL, NULL, 5, 29, 3, 3, 38, 1, 2, 4, 4, 3, 3, 1, '11', '2020-06-25 03:51:16', '2020-06-25 06:55:32'),
(135, 'SRPC91K1', NULL, 37500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'lAOgpzIxoPWk.jpg,5zdW44f0QTW0.jpg', 'lAOgpzIxoPWk.jpg,5zdW44f0QTW0.jpg', 1, NULL, NULL, 5, 22, 4, 4, 37, 1, 2, 4, 2, 7, 1, 1, '13', '2020-06-25 03:51:16', '2020-06-25 06:55:33'),
(136, 'SRPC93K1', NULL, 37500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'dvOrHbzl4QQg.jpg,fshpvlJ5lGy9.jpg,ixrv5yYNwxhv.jpg', 'dvOrHbzl4QQg.jpg,fshpvlJ5lGy9.jpg,ixrv5yYNwxhv.jpg', 1, NULL, NULL, 5, 22, 3, 3, 39, 1, 2, 4, 2, 6, 5, 1, '11', '2020-06-25 03:51:16', '2020-06-25 06:55:35'),
(137, 'SRPD11K1', NULL, 44500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'CzNgaCTp11SS.jpg,PxZyriJCkmGP.jpg,NXMropIk2rWR.jpg', 'CzNgaCTp11SS.jpg,PxZyriJCkmGP.jpg,NXMropIk2rWR.jpg', 1, NULL, NULL, 5, 22, 4, 4, 37, 1, 2, 4, 2, 9, 1, 1, '13', '2020-06-25 03:51:16', '2020-06-25 06:55:38'),
(138, 'SRPD21K1', NULL, 40500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'VjYMpj1NGg0X.jpg,WkwkA5l0SqLI.jpg', 'VjYMpj1NGg0X.jpg,WkwkA5l0SqLI.jpg', 1, NULL, NULL, 5, 22, 3, 3, 37, 1, 2, 4, 2, 6, 5, 1, '13', '2020-06-25 03:51:16', '2020-06-25 06:55:39'),
(139, 'SRPD31K1', NULL, 35500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'zRZjboQitGjC.jpg,cd8L1UWfY3zL.jpg', 'zRZjboQitGjC.jpg,cd8L1UWfY3zL.jpg', 1, NULL, NULL, 5, 22, 3, 3, 33, 1, 2, 4, 1, 3, 3, 1, '13', '2020-06-25 03:51:17', '2020-06-25 06:55:41'),
(140, 'SRPD33K1', NULL, 35500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'P086UFnj6Zoe.jpg', 'P086UFnj6Zoe.jpg', 1, NULL, NULL, 5, 22, 3, 3, 33, 1, 2, 4, 10, 3, 13, 1, '13', '2020-06-25 03:51:17', '2020-06-25 06:55:42'),
(141, 'SRPD36J1', NULL, 49000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'sLqh9MoD07aY.jpg,sWMh5TJvVlG2.jpg', 'sLqh9MoD07aY.jpg,sWMh5TJvVlG2.jpg', 1, NULL, NULL, 5, 29, 3, 3, 38, 1, 2, 4, 4, 3, 3, 1, '11', '2020-06-25 03:51:17', '2020-06-25 06:55:43'),
(142, 'SRPD37J1', NULL, 49000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'gSfComlXQk06.jpg,kbzLaLsRtapN.jpg', 'gSfComlXQk06.jpg,kbzLaLsRtapN.jpg', 1, NULL, NULL, 5, 29, 3, 3, 38, 1, 2, 4, 10, 3, 3, 1, '11', '2020-06-25 03:51:17', '2020-06-25 06:55:45'),
(143, 'SRPD61K1', NULL, 19500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'W53YSFexVcaF.jpg,qOXrY9iBSO3w.jpg,CVLIglSieqYB.jpg', 'W53YSFexVcaF.jpg,qOXrY9iBSO3w.jpg,CVLIglSieqYB.jpg', 1, NULL, NULL, 5, 30, 3, 3, 17, 1, 2, 4, 10, 6, 5, 1, '13', '2020-06-25 03:51:17', '2020-06-25 06:55:47'),
(144, 'SRPD73K2', NULL, 19500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Pdnyvbk3ZQZ2.jpg,GikiFphpLXOZ.jpg,8jfqc6jsEogT.jpg', 'Pdnyvbk3ZQZ2.jpg,GikiFphpLXOZ.jpg,8jfqc6jsEogT.jpg', 1, NULL, NULL, 5, 30, 3, 3, 33, 1, 2, 4, 1, 7, 1, 1, '13', '2020-06-25 03:51:17', '2020-06-25 06:55:48'),
(145, 'SRPD75K1', NULL, 19500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'CdKQbMKPyzSA.jpg,YHafHJ6tYrub.jpg', 'CdKQbMKPyzSA.jpg,YHafHJ6tYrub.jpg', 1, NULL, NULL, 5, 30, 3, 3, 17, 1, 2, 4, 1, 6, 5, 1, '13', '2020-06-25 03:51:17', '2020-06-25 06:55:50'),
(146, 'SRZ386P1', NULL, 20500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'p5EAaVTEInam.jpg,uKewj9BG8lUa.jpg,f0CABqOL1Bvt.jpg', 'p5EAaVTEInam.jpg,uKewj9BG8lUa.jpg,f0CABqOL1Bvt.jpg', 1, NULL, NULL, 5, 13, 2, 2, 40, 1, 2, 4, 5, 8, 11, 2, NULL, '2020-06-25 03:51:17', '2020-06-25 06:55:53'),
(147, 'SRZ399P1', NULL, 20500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ovXOx1m2N0ws.jpg,aG5f1hyetVkI.jpg,Te2k4TssDaIj.jpg', 'ovXOx1m2N0ws.jpg,aG5f1hyetVkI.jpg,Te2k4TssDaIj.jpg', 1, NULL, NULL, 5, 13, 2, 2, 41, 1, 2, 4, 5, 6, 5, 2, NULL, '2020-06-25 03:51:17', '2020-06-25 06:55:55'),
(148, 'SRZ400P1', NULL, 23500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'L6N2qh8Mzs9n.jpg,rDsYJomcI2Jj.jpg,pmKi1t1nM8Cl.jpg', 'L6N2qh8Mzs9n.jpg,rDsYJomcI2Jj.jpg,pmKi1t1nM8Cl.jpg', 1, NULL, NULL, 5, 19, 2, 2, 40, 1, 2, 4, 6, 10, 10, 2, NULL, '2020-06-25 03:51:17', '2020-06-25 06:55:56'),
(149, 'SRZ402P1', NULL, 22500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'uARuMJaXYezX.jpg,i7GcSaJ3N6tp.jpg,cppZXeQczAvo.jpg', 'uARuMJaXYezX.jpg,i7GcSaJ3N6tp.jpg,cppZXeQczAvo.jpg', 1, NULL, NULL, 5, 21, 2, 2, 41, 1, 2, 4, 5, 8, 11, 2, NULL, '2020-06-25 03:51:17', '2020-06-25 06:55:58'),
(150, 'SRZ432P1', NULL, 20500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '3eJiQFiglDCp.jpg,Va1gqw6eleg6.jpg,2CZSWsJ9gs2S.jpg', '3eJiQFiglDCp.jpg,Va1gqw6eleg6.jpg,2CZSWsJ9gs2S.jpg', 1, NULL, NULL, 5, 12, 2, 2, 42, 1, 2, 4, 6, 8, 9, 2, NULL, '2020-06-25 03:51:17', '2020-06-25 06:56:00'),
(151, 'SRZ447P1', NULL, 17500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'yb34Nl0nqpLl.jpg,fCxpUDDGfKoV.jpg,yn57BQhx0cBs.jpg', 'yb34Nl0nqpLl.jpg,fCxpUDDGfKoV.jpg,yn57BQhx0cBs.jpg', 1, NULL, NULL, 5, 13, 2, 2, 42, 1, 2, 4, 5, 6, 5, 2, NULL, '2020-06-25 03:51:17', '2020-06-25 06:56:02'),
(152, 'SRZ450P1', NULL, 20500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'nsIrI2KQZi1f.jpg,iDwmoJGNrs3D.jpg,PDOl5bkrjPBQ.jpg,N24r3dtWddTk.jpg', 'nsIrI2KQZi1f.jpg,iDwmoJGNrs3D.jpg,PDOl5bkrjPBQ.jpg,N24r3dtWddTk.jpg', 1, NULL, NULL, 5, 16, 2, 2, 43, 1, 2, 4, 5, 8, 11, 2, NULL, '2020-06-25 03:51:17', '2020-06-25 06:56:05'),
(153, 'SRZ468P1', NULL, 27500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'H8QraVCZArQ3.jpg,UkhMrhKSkJ4d.jpg', 'H8QraVCZArQ3.jpg,UkhMrhKSkJ4d.jpg', 1, NULL, NULL, 5, 13, 2, 2, 44, 1, 2, 4, 6, 8, 11, 2, NULL, '2020-06-25 03:51:17', '2020-06-25 06:56:06'),
(154, 'SRZ480P1', NULL, 24500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Glo7XFJkiQeV.jpg,7ar7fzAyEWA2.jpg', 'Glo7XFJkiQeV.jpg,7ar7fzAyEWA2.jpg', 1, NULL, NULL, 5, 13, 2, 2, 45, 1, 2, 4, 6, 10, 10, 2, NULL, '2020-06-25 03:51:17', '2020-06-25 06:56:07'),
(155, 'SRZ496P1', NULL, 22500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'GlI1biP7xBdf.jpg,Hb4XvK0xHUJu.jpg', 'GlI1biP7xBdf.jpg,Hb4XvK0xHUJu.jpg', 1, NULL, NULL, 5, 16, 2, 2, 40, 1, 2, 4, 6, 8, 9, 2, NULL, '2020-06-25 03:51:17', '2020-06-25 06:56:10'),
(156, 'SSA341J1', NULL, 45500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'fymrNWMwXTYf.jpg,4Vs38tki2CsD.jpg,MRxuK710hBXL.jpg,TKx1NshHHjRi.jpg', 'fymrNWMwXTYf.jpg,4Vs38tki2CsD.jpg,MRxuK710hBXL.jpg,TKx1NshHHjRi.jpg', 1, NULL, NULL, 5, 29, 3, 3, 38, 1, 2, 4, 12, 6, 5, 1, '11,36', '2020-06-25 03:51:17', '2020-06-25 06:56:13'),
(157, 'SSA346J1', NULL, 49500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'y1Jskx2DJuZx.jpg,K6ZSWa3Pf6qH.jpg,af2kLcwMQQM9.jpg,BMzhfJbISOOb.jpg', 'y1Jskx2DJuZx.jpg,K6ZSWa3Pf6qH.jpg,af2kLcwMQQM9.jpg,BMzhfJbISOOb.jpg', 1, NULL, NULL, 5, 29, 3, 3, 38, 1, 2, 4, 6, 3, 3, 1, '11,36', '2020-06-25 03:51:18', '2020-06-25 06:56:16'),
(158, 'SSB143P1', NULL, 15500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'CdHX58HLxMi2.jpg,z1ocmm04JIYU.jpg', 'CdHX58HLxMi2.jpg,z1ocmm04JIYU.jpg', 1, NULL, NULL, 5, 19, 2, 1, 34, 1, 2, 4, 6, 3, 3, 1, '58,61,11', '2020-06-25 03:51:18', '2020-06-25 06:56:17'),
(159, 'SSB177P1', NULL, 21500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'DSZGFduwDAbp.jpg,7lwJtEFSQnLR.jpg,gbEF0AKdnyKR.jpg', 'DSZGFduwDAbp.jpg,7lwJtEFSQnLR.jpg,gbEF0AKdnyKR.jpg', 1, NULL, NULL, 5, 31, 2, 1, 46, 1, 2, 4, 2, 6, 5, 1, '61,11,51', '2020-06-25 03:51:18', '2020-06-25 06:56:19'),
(160, 'SSB179P1', NULL, 21500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'wF8hDcMx17fj.jpg,2rjXZW75mDnA.jpg,2eTZUNT8kyNv.jpg', 'wF8hDcMx17fj.jpg,2rjXZW75mDnA.jpg,2eTZUNT8kyNv.jpg', 1, NULL, NULL, 5, 27, 2, 1, 37, 1, 2, 4, 1, 9, 1, 1, '61,11,46,51', '2020-06-25 03:51:18', '2020-06-25 06:56:21'),
(161, 'SSB257P1', NULL, 18500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '3pb7thS2142y.jpg,w1trggtlFXny.jpg,scI7FGxeBUeN.jpg', '3pb7thS2142y.jpg,w1trggtlFXny.jpg,scI7FGxeBUeN.jpg', 1, NULL, NULL, 5, 27, 2, 1, 47, 1, 2, 4, 1, 6, 5, 1, '61,11,46,51', '2020-06-25 03:51:18', '2020-06-25 06:56:22'),
(162, 'SSB259P1', NULL, 21500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '5jWo6MaAF1Lo.jpg,RhtK99xKiNBo.jpg,lK0a8miHxhy9.jpg', '5jWo6MaAF1Lo.jpg,RhtK99xKiNBo.jpg,lK0a8miHxhy9.jpg', 1, NULL, NULL, 5, 27, 2, 1, 47, 1, 2, 4, 2, 6, 5, 1, '61,11,46,51', '2020-06-25 03:51:18', '2020-06-25 06:56:24'),
(163, 'SSB263P1', NULL, 17500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'hYiqbWJXnRcR.jpg,13NOhKhEI0ZZ.jpg,R78R0R12LPwi.jpg', 'hYiqbWJXnRcR.jpg,13NOhKhEI0ZZ.jpg,R78R0R12LPwi.jpg', 1, NULL, NULL, 5, 20, 2, 1, 47, 1, 2, 4, 5, 3, 3, 1, '61,11,51', '2020-06-25 03:51:18', '2020-06-25 06:56:26'),
(164, 'SSB283P1', NULL, 22500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '0k8S4OSwLn8x.jpg,9pCkWt2w9cbd.jpg,XGiqfOb3nTgx.jpg', '0k8S4OSwLn8x.jpg,9pCkWt2w9cbd.jpg,XGiqfOb3nTgx.jpg', 1, NULL, NULL, 5, 20, 2, 1, 47, 1, 2, 4, 1, 6, 1, 1, '61,13,39,46', '2020-06-25 03:51:18', '2020-06-25 06:56:29'),
(165, 'SSB293P1', NULL, 19500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '6HlTJeHP6zvS.jpg,IvjsJbSBhQUM.jpg,vJ05SdVMl9sQ.jpg', '6HlTJeHP6zvS.jpg,IvjsJbSBhQUM.jpg,vJ05SdVMl9sQ.jpg', 1, NULL, NULL, 5, 32, 2, 1, 17, 1, 2, 4, 12, 3, 3, 1, '61,11', '2020-06-25 03:51:18', '2020-06-25 06:56:31'),
(166, 'SSB296P1', NULL, 23500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'mDM9c8cXB5ot.jpg,pa0dNfKzj9BB.jpg,SW8iktaLScyb.jpg,urw5Hg8nP1Sj.jpg', 'mDM9c8cXB5ot.jpg,pa0dNfKzj9BB.jpg,SW8iktaLScyb.jpg,urw5Hg8nP1Sj.jpg', 1, NULL, NULL, 5, 32, 2, 1, 17, 1, 2, 4, 1, 3, 1, 1, '61,11', '2020-06-25 03:51:18', '2020-06-25 06:56:33'),
(167, 'SSB301P1', NULL, 21500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'OUKW6suOiZtH.jpg,j751hdAgbc7e.jpg,PQeyDC2bKywx.jpg', 'OUKW6suOiZtH.jpg,j751hdAgbc7e.jpg,PQeyDC2bKywx.jpg', 1, NULL, NULL, 5, 13, 2, 1, 47, 1, 2, 4, 2, 6, 5, 1, '61,11,46,51', '2020-06-25 03:51:18', '2020-06-25 06:56:36'),
(168, 'SSB311P1', NULL, 22500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'L2XdRjxS6oLt.jpg,JyJ9R8NPt52B.jpg,t0UGUQncUVqq.jpg,R0bj9K1eok7g.jpg', 'L2XdRjxS6oLt.jpg,JyJ9R8NPt52B.jpg,t0UGUQncUVqq.jpg,R0bj9K1eok7g.jpg', 1, NULL, NULL, 5, 13, 2, 1, 47, 1, 2, 4, 1, 9, 1, 1, '61,46,51', '2020-06-25 03:51:18', '2020-06-25 06:56:38'),
(169, 'SSB321P1', NULL, 22500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'UFRRcbBaFC1y.jpg,XGdiFJryJ0Fs.jpg,xGwMSQ6PiAuL.jpg', 'UFRRcbBaFC1y.jpg,XGdiFJryJ0Fs.jpg,xGwMSQ6PiAuL.jpg', 1, NULL, NULL, 5, 33, 2, 1, 47, 1, 2, 4, 2, 6, 5, 1, '61,11,46,51', '2020-06-25 03:51:18', '2020-06-25 06:56:41'),
(170, 'SSB323P1', NULL, 22500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'gJkjbsfr5rcv.jpg,kc6WTgP003Ml.jpg,wnnKgIvTbUQ8.jpg,9vwqhxIyxOpn.jpg', 'gJkjbsfr5rcv.jpg,kc6WTgP003Ml.jpg,wnnKgIvTbUQ8.jpg,9vwqhxIyxOpn.jpg', 1, NULL, NULL, 5, 33, 2, 1, 48, 1, 2, 4, 1, 6, 5, 1, '61,11,46,51', '2020-06-25 03:51:18', '2020-06-25 06:56:44'),
(171, 'SSB325P1', NULL, 18500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'QMXc5dLfj3Sr.jpg,rJkChg2Rg1Os.jpg,4z1WTsplf71b.jpg,bCjN5p9RU4jU.jpg', 'QMXc5dLfj3Sr.jpg,rJkChg2Rg1Os.jpg,4z1WTsplf71b.jpg,bCjN5p9RU4jU.jpg', 1, NULL, NULL, 5, 33, 2, 1, 47, 1, 2, 4, 1, 1, 1, 1, '61,11,46,51', '2020-06-25 03:51:18', '2020-06-25 06:56:46'),
(172, 'SSB327P1', NULL, 21500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'h4QiWiIG7Xec.jpg,aOPxeGK5iiXX.jpg,piget5Wlq1Cy.jpg,5JpjD2GDE6nK.jpg', 'h4QiWiIG7Xec.jpg,aOPxeGK5iiXX.jpg,piget5Wlq1Cy.jpg,5JpjD2GDE6nK.jpg', 1, NULL, NULL, 5, 32, 2, 1, 47, 1, 2, 4, 1, 7, 1, 1, '61,11,46,51', '2020-06-25 03:51:19', '2020-06-25 06:56:49'),
(173, 'SSB331P1', NULL, 22500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Q9CDVthSz12N.jpg,OyZNCwsOkS2F.jpg,E3InVufIy5SU.jpg,TALjawtTAHCd.jpg', 'Q9CDVthSz12N.jpg,OyZNCwsOkS2F.jpg,E3InVufIy5SU.jpg,TALjawtTAHCd.jpg', 1, NULL, NULL, 5, 13, 2, 1, 49, 1, 2, 4, 1, 6, 5, 1, '61,11,46', '2020-06-25 03:51:20', '2020-06-25 06:56:52'),
(174, 'SSB339P1', NULL, 19500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '5gQD6DL4UWxV.jpg,k83WEGHSe6iH.jpg', '5gQD6DL4UWxV.jpg,k83WEGHSe6iH.jpg', 1, NULL, NULL, 5, 13, 2, 1, 27, 1, 2, 4, 1, 6, 5, 1, '61,11', '2020-06-25 03:51:20', '2020-06-25 06:56:53'),
(175, 'SSB361P1', NULL, 20500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'RXx9z0k70DuL.jpg,qCXpD1maUx5u.jpg,IbEOjBJVyliW.jpg', 'RXx9z0k70DuL.jpg,qCXpD1maUx5u.jpg,IbEOjBJVyliW.jpg', 1, NULL, NULL, 5, 12, 2, 1, 50, 1, 2, 4, 1, 7, 1, 1, '61,11,51', '2020-06-25 03:51:20', '2020-06-25 06:56:55'),
(176, 'SSB364P1', NULL, 20500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'knlJ9OBt1Ib1.jpg,bLkFIBLZCjDo.jpg,ubpa9g67lG3o.jpg,4ifjfKTdBnpz.jpg', 'knlJ9OBt1Ib1.jpg,bLkFIBLZCjDo.jpg,ubpa9g67lG3o.jpg,4ifjfKTdBnpz.jpg', 1, NULL, NULL, 5, 31, 2, 1, 37, 1, 2, 4, 1, 11, 1, 1, '61,11', '2020-06-25 03:51:20', '2020-06-25 06:56:58'),
(177, 'SSC485P1', NULL, 47500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '7nLNoexYXDRE.jpg,aW5EAoXU1hhU.jpg,3GGcfXHsgUuw.jpg', '7nLNoexYXDRE.jpg,aW5EAoXU1hhU.jpg,3GGcfXHsgUuw.jpg', 1, NULL, NULL, 5, 22, 2, 1, 26, 1, 2, 2, 5, 6, 5, 1, '58,61,11,14,36,56', '2020-06-25 03:51:20', '2020-06-25 06:56:59'),
(178, 'SSC489P1', NULL, 47500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'y6BlKrnl4DBC.jpg,BhbYaN7cT8pJ.jpg,giJNOsqLpIIx.jpg', 'y6BlKrnl4DBC.jpg,BhbYaN7cT8pJ.jpg,giJNOsqLpIIx.jpg', 1, NULL, NULL, 5, 22, 2, 1, 26, 1, 2, 2, 1, 7, 2, 1, '58,61,11,36,48,56', '2020-06-25 03:51:20', '2020-06-25 06:57:02'),
(179, 'SSC560P9', NULL, 36500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'tfZDbndKyAoZ.jpg,b1xeVfHnnOnc.jpg,lMxNE8EIgSNV.jpg,NLHuAR1cmcz7.jpg', 'tfZDbndKyAoZ.jpg,b1xeVfHnnOnc.jpg,lMxNE8EIgSNV.jpg,NLHuAR1cmcz7.jpg', 1, NULL, NULL, 5, 23, 2, 1, 47, 1, 2, 2, 5, 10, 10, 1, '2,61,13', '2020-06-25 03:51:20', '2020-06-25 06:57:04'),
(180, 'SSC572P1', NULL, 44500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '2L0XEfp3HCmU.jpg,R7SysmdbUW7q.jpg,Nm2r0e0vxTct.jpg,lOreO9X12G81.jpg', '2L0XEfp3HCmU.jpg,R7SysmdbUW7q.jpg,Nm2r0e0vxTct.jpg,lOreO9X12G81.jpg', 1, NULL, NULL, 5, 23, 2, 1, 47, 1, 2, 2, 1, 8, 11, 1, '61,13,36', '2020-06-25 03:51:20', '2020-06-25 06:57:07'),
(181, 'SSC573P1', NULL, 44500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Vj5n5mRynEih.jpg,3WESHKGmJy5x.jpg,JuTRQPLT95lF.jpg,kUQWd6WyHuVP.jpg', 'Vj5n5mRynEih.jpg,3WESHKGmJy5x.jpg,JuTRQPLT95lF.jpg,kUQWd6WyHuVP.jpg', 1, NULL, NULL, 5, 23, 2, 1, 47, 1, 2, 2, 1, 9, 1, 1, '2,11,36,46', '2020-06-25 03:51:20', '2020-06-25 06:57:10'),
(182, 'SSC587P1', NULL, 29500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '9GVO2ADGkIaV.jpg,kaHccEWyAbRZ.jpg,itAKuT6WX64M.jpg,N6A3grfCJDSH.jpg', '9GVO2ADGkIaV.jpg,kaHccEWyAbRZ.jpg,itAKuT6WX64M.jpg,N6A3grfCJDSH.jpg', 1, NULL, NULL, 5, 34, 2, 1, 14, 1, 2, 2, 4, 9, 1, 1, '58,61,11,48', '2020-06-25 03:51:20', '2020-06-25 06:57:12'),
(183, 'SSC599P1', NULL, 48500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'mHoBRuwF8wzq.jpg,PxkN0o7mdxau.jpg', 'mHoBRuwF8wzq.jpg,PxkN0o7mdxau.jpg', 1, NULL, NULL, 5, 22, 2, 1, 46, 1, 2, 2, 3, 12, 14, 1, '58,61,11,36,46,48', '2020-06-25 03:51:20', '2020-06-25 06:57:14'),
(184, 'SSC601P1', NULL, 48500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '7xNj3xx0D2p9.jpg,Q0XILySoXHDx.jpg,glhbpkRjK6oF.jpg,2rUI3QHkT1ha.jpg', '7xNj3xx0D2p9.jpg,Q0XILySoXHDx.jpg,glhbpkRjK6oF.jpg,2rUI3QHkT1ha.jpg', 1, NULL, NULL, 5, 22, 2, 1, 46, 1, 2, 2, 2, 12, 14, 1, '58,61,11,36,46,48', '2020-06-25 03:51:20', '2020-06-25 06:57:17'),
(185, 'SSC618P1', NULL, 42500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'FSFD3WdGBX9j.jpg,iycEPk5Noe08.jpg,BKqCEV6PUWLl.jpg,0VZC63dDMXkH.jpg', 'FSFD3WdGBX9j.jpg,iycEPk5Noe08.jpg,BKqCEV6PUWLl.jpg,0VZC63dDMXkH.jpg', 1, NULL, NULL, 5, 22, 2, 1, 51, 1, 2, 2, 1, 7, 1, 1, '58,61,11,46,53', '2020-06-25 03:51:20', '2020-06-25 06:57:19'),
(186, 'SSC628P9', NULL, 35500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Pt996OXqYCKk.jpg,wIWYWRI3wU1A.jpg,83C8w2cvE3fu.jpg,LYWzn4yInHgl.jpg', 'Pt996OXqYCKk.jpg,wIWYWRI3wU1A.jpg,83C8w2cvE3fu.jpg,LYWzn4yInHgl.jpg', 1, NULL, NULL, 5, 23, 2, 1, 52, 1, 2, 2, 4, 6, 5, 1, '58,61,11', '2020-06-25 03:51:20', '2020-06-25 06:57:22'),
(187, 'SSC642P1', NULL, 36500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'd7k1h3WmXkZh.jpg,OdC1QYtNvY0q.jpg,vuyZy3KDanFK.jpg,FztwW3l2rLHw.jpg', 'd7k1h3WmXkZh.jpg,OdC1QYtNvY0q.jpg,vuyZy3KDanFK.jpg,FztwW3l2rLHw.jpg', 1, NULL, NULL, 5, 23, 2, 1, 52, 1, 2, 4, 2, 8, 9, 1, '58,11,36', '2020-06-25 03:51:20', '2020-06-25 06:57:25'),
(188, 'SSC663P1', NULL, 30500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Qtnvik3LDOJw.jpg,QoUFnc0mzW11.jpg,HOrnqEznmsmO.jpg,KViRGrWm2EFy.jpg', 'Qtnvik3LDOJw.jpg,QoUFnc0mzW11.jpg,HOrnqEznmsmO.jpg,KViRGrWm2EFy.jpg', 1, NULL, NULL, 5, 22, 2, 1, 51, 1, 2, 4, 1, 7, 2, 1, '58,61,11,46,53', '2020-06-25 03:51:20', '2020-06-25 06:57:28'),
(189, 'SSC664P1', NULL, 45500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ehbqWQPvKgdR.jpg', 'ehbqWQPvKgdR.jpg', 1, NULL, NULL, 5, 22, 2, 1, 46, 1, 2, 2, 4, 6, 5, 1, '58,61,11,46,53', '2020-06-25 03:51:20', '2020-06-25 06:57:29'),
(190, 'SSC701P1', NULL, 33500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'K1GT4s9SXMYr.jpg', 'K1GT4s9SXMYr.jpg', 1, NULL, NULL, 5, 22, 2, 1, 51, 1, 2, 4, 4, 7, 2, 1, '61,11', '2020-06-25 03:51:20', '2020-06-25 06:57:30'),
(191, 'SSC723P1', NULL, 29500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'NNTXF6enR7zd.jpg,xOABXE7gMYgc.jpg,MRmd2aUxTYFT.jpg,pJN64FSWVlum.jpg', 'NNTXF6enR7zd.jpg,xOABXE7gMYgc.jpg,MRmd2aUxTYFT.jpg,pJN64FSWVlum.jpg', 1, NULL, NULL, 5, 19, 2, 1, 47, 1, 2, 4, 1, 9, 1, 1, '61,11', '2020-06-25 03:51:20', '2020-06-25 06:57:33'),
(192, 'SSC741P1', NULL, 37500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ZVN0kZETu3X7.jpg', 'ZVN0kZETu3X7.jpg', 1, NULL, NULL, 5, 22, 2, 1, 51, 1, 2, 4, 2, 6, 5, 1, '61,11', '2020-06-25 03:51:21', '2020-06-25 06:57:33'),
(193, 'SSC764P1', NULL, 35500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 1, 'Pb6FLE83SuOK.jpg', 'Pb6FLE83SuOK.jpg', 1, NULL, NULL, 5, 23, 5, 1, 47, 1, 2, 2, 10, 8, 9, 1, '61,13,36', '2020-06-25 03:51:21', '2020-07-06 04:05:37'),
(194, 'SUP296P1', NULL, 24500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'dU7RGWYzzTiy.jpg,W7DxRiB9yE7p.jpg,SIa11f5YjZCd.jpg', 'dU7RGWYzzTiy.jpg,W7DxRiB9yE7p.jpg,SIa11f5YjZCd.jpg', 1, NULL, NULL, 5, 35, 2, 2, 53, 3, 2, 2, 13, 6, 5, 2, NULL, '2020-06-25 03:51:21', '2020-06-25 06:57:36'),
(195, 'SUP860P1', NULL, 12500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 1, 'd9tdyOwNJmik.jpg,QhpuJh1Ra7ng.jpg,TMWuHVrbVbLB.jpg,y8tMZMO4jPMQ.jpg', 'd9tdyOwNJmik.jpg,QhpuJh1Ra7ng.jpg,TMWuHVrbVbLB.jpg,y8tMZMO4jPMQ.jpg', 1, NULL, NULL, 5, 35, 2, 2, 54, 1, 2, 2, 5, 3, 3, 3, NULL, '2020-06-25 03:51:21', '2020-07-06 04:04:06'),
(196, 'SUP863P1', NULL, 12500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'aZSEnl0denvf.jpg,y5MyTNaj27Kj.jpg,NPpnkvEDIWCU.jpg,lKLolSZmfz7m.jpg\r\n', 'aZSEnl0denvf.jpg,y5MyTNaj27Kj.jpg,NPpnkvEDIWCU.jpg,lKLolSZmfz7m.jpg\r\n', 1, NULL, NULL, 5, 35, 2, 2, 54, 1, 2, 5, 5, 3, 1, 3, NULL, '2020-06-25 03:51:21', '2020-06-25 06:57:40'),
(197, 'SUR205P1', NULL, 10500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '0JrtXIm3bP0B.jpg,3UgaeLwMnAcU.jpg,qtPGnIAXQOXi.jpg', '0JrtXIm3bP0B.jpg,3UgaeLwMnAcU.jpg,qtPGnIAXQOXi.jpg', 1, NULL, NULL, 5, 13, 2, 2, 33, 1, 2, 5, 6, 6, 5, 1, '11,24,41', '2020-06-25 03:51:21', '2020-06-25 06:57:42'),
(198, 'SUR212P1', NULL, 12500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'XRwVT8WASD5x.jpg,O1vJ1V5NDvPu.jpg', 'XRwVT8WASD5x.jpg,O1vJ1V5NDvPu.jpg', 1, NULL, NULL, 5, 20, 2, 2, 34, 1, 2, 5, 5, 6, 11, 1, NULL, '2020-06-25 03:51:21', '2020-06-25 06:57:43'),
(199, 'SUR287P1', NULL, 15500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'or14KmrkyEp7.jpg,902f3BXE24aA.jpg,TgT2lJG559tC.jpg,KKvr4yeetjFR.jpg', 'or14KmrkyEp7.jpg,902f3BXE24aA.jpg,TgT2lJG559tC.jpg,KKvr4yeetjFR.jpg', 1, NULL, NULL, 5, 13, 2, 2, 55, 1, 2, 4, 2, 3, 2, 1, NULL, '2020-06-25 03:51:21', '2020-06-25 06:57:46'),
(200, 'SUR303P1', NULL, 13500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '9BOW8BlTAOr2.jpg', '9BOW8BlTAOr2.jpg', 1, NULL, NULL, 5, 36, 2, 2, 35, 1, 2, 4, 5, 3, 1, 1, '11', '2020-06-25 03:51:21', '2020-06-25 06:57:46'),
(201, 'SUR306P1', NULL, 14500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'vueaOCX5OHzM.jpg', 'vueaOCX5OHzM.jpg', 1, NULL, NULL, 5, 36, 2, 2, 35, 1, 2, 4, 5, 3, 3, 1, '11', '2020-06-25 03:51:21', '2020-06-25 06:57:47'),
(202, 'SUR698P1', NULL, 19500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'DaEWE1kV26uz.jpg,Xe4DO2NXm7oE.jpg,0nJklNKSuLOD.jpg', 'DaEWE1kV26uz.jpg,Xe4DO2NXm7oE.jpg,0nJklNKSuLOD.jpg', 1, NULL, NULL, 5, 21, 2, 2, 56, 1, 2, 4, 5, 10, 6, 2, NULL, '2020-06-25 03:51:21', '2020-06-25 06:57:50'),
(203, 'SUR800P1', NULL, 22500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'NtY3uFt6crts.jpg,X8Qt65Z1J8sU.jpg,C4IApAl5m4Cj.jpg,1Pm8pLVha36U.jpg', 'NtY3uFt6crts.jpg,X8Qt65Z1J8sU.jpg,C4IApAl5m4Cj.jpg,1Pm8pLVha36U.jpg', 1, NULL, NULL, 5, 15, 2, 2, 57, 1, 2, 4, 5, 3, 7, 2, '11', '2020-06-25 03:51:21', '2020-06-25 06:57:52'),
(204, 'SUR805P1', NULL, 22500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'XY6SxJDJaaKy.jpg', 'XY6SxJDJaaKy.jpg', 1, NULL, NULL, 5, 15, 2, 2, 15, 1, 2, 4, 10, 3, 1, 2, '11', '2020-06-25 03:51:21', '2020-06-25 06:57:53'),
(205, 'SUT156P1', NULL, 20500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'J3JAtbNNeJIm.jpg,05KKqQ2jBajf.jpg,jxtAIoZ607iI.jpg', 'J3JAtbNNeJIm.jpg,05KKqQ2jBajf.jpg,jxtAIoZ607iI.jpg', 1, NULL, NULL, 5, 19, 2, 2, 58, 1, 2, 4, 6, 10, 10, 2, '11', '2020-06-25 03:51:21', '2020-06-25 06:57:55'),
(206, 'SWR033P1', NULL, 19500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'fhuFqYePrPoh.jpg,bHqPc05cjIUD.jpg,BsHB5MIcMQ9q.jpg,vXFEeQ68jdkC.jpg', 'fhuFqYePrPoh.jpg,bHqPc05cjIUD.jpg,BsHB5MIcMQ9q.jpg,vXFEeQ68jdkC.jpg', 1, NULL, NULL, 5, 21, 2, 2, 58, 1, 2, 4, 2, 6, 5, 2, NULL, '2020-06-25 03:51:21', '2020-06-25 06:57:58'),
(207, 'SWR034P1', NULL, 23500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'xY4k7XMlCBVp.jpg,bIP5wSevDAAG.jpg,V2qZtSrV3LZ5.jpg', 'xY4k7XMlCBVp.jpg,bIP5wSevDAAG.jpg,V2qZtSrV3LZ5.jpg', 1, NULL, NULL, 5, 21, 2, 2, 58, 1, 2, 4, 6, 10, 10, 2, NULL, '2020-06-25 03:51:21', '2020-06-25 06:58:00'),
(208, 'SXB429P1', NULL, 32500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'TSIbRlwJkPrM.jpg,CQ44xMLTqYYb.jpg,YMs2cRw49ZJf.jpg,zvKiEsS1CyQ2.jpg', 'TSIbRlwJkPrM.jpg,CQ44xMLTqYYb.jpg,YMs2cRw49ZJf.jpg,zvKiEsS1CyQ2.jpg', 1, NULL, NULL, 5, 17, 2, 2, 59, 1, 2, 4, 5, 6, 5, 2, '11', '2020-06-25 03:51:21', '2020-06-25 06:58:02'),
(209, 'SXDE01P2', NULL, 16500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'EnZOuCyGEeUG.jpg', 'EnZOuCyGEeUG.jpg', 1, NULL, NULL, 5, 17, 2, 2, 40, 1, 2, 4, 6, 3, 3, 2, '11', '2020-06-25 03:51:21', '2020-06-25 06:58:03'),
(210, 'SXDG57P1', NULL, 39500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'SxX4IPocB3Ax.jpg,KDIPIeillM4e.jpg,i0mBhLvGGGr0.jpg,sjnTHh6x8IhM.jpg', 'SxX4IPocB3Ax.jpg,KDIPIeillM4e.jpg,i0mBhLvGGGr0.jpg,sjnTHh6x8IhM.jpg', 1, NULL, NULL, 5, 17, 2, 2, 40, 1, 2, 4, 6, 6, 5, 2, '11', '2020-06-25 03:51:21', '2020-06-25 06:58:05'),
(211, 'SXDG84P1', NULL, 32500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'XQH4l6HH6unE.jpg,NxeSjaVBJIo2.jpg,X4TZ7XzPNsg0.jpg', 'XQH4l6HH6unE.jpg,NxeSjaVBJIo2.jpg,X4TZ7XzPNsg0.jpg', 1, NULL, NULL, 5, 37, 2, 2, 29, 1, 2, 2, 13, 8, 9, 2, NULL, '2020-06-25 03:51:22', '2020-06-25 06:58:06'),
(212, 'AX2717', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'c2l7IPSK365b.jpg,SJybaKjQPhlo.jpg,WaPhwEKIE3n1.jpg', 'c2l7IPSK365b.jpg,SJybaKjQPhlo.jpg,WaPhwEKIE3n1.jpg', 1, NULL, NULL, 6, 37, 2, 2, 34, 1, 2, 5, 1, 3, 1, 1, NULL, '2020-06-25 03:51:22', '2020-06-25 06:58:08'),
(213, 'AX2718', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ypkGrPD9c7z0.jpg,ygdUvaWmsWTl.jpg,6DwJ5TUHGEpY.jpg', 'ypkGrPD9c7z0.jpg,ygdUvaWmsWTl.jpg,6DwJ5TUHGEpY.jpg', 1, NULL, NULL, 6, 37, 2, 2, 34, 1, 2, 5, 2, 3, 3, 1, NULL, '2020-06-25 03:51:22', '2020-06-25 06:58:09'),
(214, 'AX2719', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'xuNBwqgGXvbj.jpg,u2KVTnxHTLLI.jpg', 'xuNBwqgGXvbj.jpg,u2KVTnxHTLLI.jpg', 1, NULL, NULL, 6, 37, 2, 2, 34, 1, 2, 5, 1, 3, 1, 1, NULL, '2020-06-25 03:51:22', '2020-06-25 06:58:10'),
(215, 'AX5609', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'mHduBEOV1ldX.jpg,eCYv3RwufkA1.jpg,cGkaQcDedIrF.jpg,vVOlWBSRMQyD.jpg', 'mHduBEOV1ldX.jpg,eCYv3RwufkA1.jpg,cGkaQcDedIrF.jpg,vVOlWBSRMQyD.jpg', 1, NULL, NULL, 6, 37, 2, 2, 60, 1, 2, 5, 9, 4, 6, 2, NULL, '2020-06-25 03:51:22', '2020-06-25 06:58:13'),
(216, 'AX1341', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '0WUg33ac6KUk.jpg,pMKyF9Hdo0pA.jpg,fq3Wq9V35vUM.jpg', '0WUg33ac6KUk.jpg,pMKyF9Hdo0pA.jpg,fq3Wq9V35vUM.jpg', 1, NULL, NULL, 6, 38, 2, 1, 47, 1, 2, 5, 3, 7, 13, 1, '61,11', '2020-06-25 03:51:22', '2020-06-25 06:58:16'),
(217, 'AX1505', NULL, 13995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'vCN4gfCjefkN.jpg,MN8HlVOq6CIz.jpg,4PUtQTLE6xBa.jpg', 'vCN4gfCjefkN.jpg,MN8HlVOq6CIz.jpg,4PUtQTLE6xBa.jpg', 1, NULL, NULL, 6, 39, 2, 1, 61, 1, 2, 5, 2, 3, 3, 1, '61,11', '2020-06-25 03:51:22', '2020-06-25 06:58:18'),
(218, 'AX2101', NULL, 8495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'PgMoS5zU8bPW.jpg,Wy4LWEibuHaH.jpg,Lo4hmzl868CK.jpg', 'PgMoS5zU8bPW.jpg,Wy4LWEibuHaH.jpg,Lo4hmzl868CK.jpg', 1, NULL, NULL, 6, 40, 2, 2, 62, 1, 2, 5, 1, 3, 1, 1, '11', '2020-06-25 03:51:22', '2020-06-25 06:58:20'),
(219, 'AX2103', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'c7y5gY0d7BOp.jpg,GmkRby4RkBiR.jpg,9ehbNryKiQ40.jpg,X9uzMOabppig.jpg', 'c7y5gY0d7BOp.jpg,GmkRby4RkBiR.jpg,9ehbNryKiQ40.jpg,X9uzMOabppig.jpg', 1, NULL, NULL, 6, 40, 2, 2, 62, 1, 2, 5, 1, 6, 5, 1, '11', '2020-06-25 03:51:22', '2020-06-25 06:58:22'),
(220, 'AX2104', NULL, 13495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '1x1sbIGNg5W9.jpg,L8TC6AiE5bj6.jpg,HKSYdpQ479I7.jpg', '1x1sbIGNg5W9.jpg,L8TC6AiE5bj6.jpg,HKSYdpQ479I7.jpg', 1, NULL, NULL, 6, 40, 2, 2, 62, 1, 2, 5, 1, 9, 1, 1, '11', '2020-06-25 03:51:22', '2020-06-25 06:58:24'),
(221, 'AX2133', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'sQ7MtT18hUQR.jpg,HhJOawj1Avnk.jpg,kYWMuMImDh4w.jpg', 'sQ7MtT18hUQR.jpg,HhJOawj1Avnk.jpg,kYWMuMImDh4w.jpg', 1, NULL, NULL, 6, 39, 2, 2, 62, 1, 2, 5, 2, 3, 3, 1, '11', '2020-06-25 03:51:22', '2020-06-25 06:58:27'),
(222, 'AX2144', NULL, 13495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'HIvxbqj4stpy.jpg,UNjmkQFGD0Wa.jpg,ABVS2Wvs3aHb.jpg', 'HIvxbqj4stpy.jpg,UNjmkQFGD0Wa.jpg,ABVS2Wvs3aHb.jpg', 1, NULL, NULL, 6, 41, 2, 2, 37, 1, 2, 5, 1, 9, 1, 1, NULL, '2020-06-25 03:51:22', '2020-06-25 06:58:29'),
(223, 'AX2169', NULL, 15495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '5sUs8Kw13GM8.jpg,ltuxXJGXF4XD.jpg,D5a8sw7V2dTM.jpg', '5sUs8Kw13GM8.jpg,ltuxXJGXF4XD.jpg,D5a8sw7V2dTM.jpg', 1, NULL, NULL, 6, 42, 2, 2, 62, 1, 2, 5, 3, 4, 14, 1, '63', '2020-06-25 03:51:22', '2020-06-25 06:58:30'),
(224, 'AX2172', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'yJGNc2y96Tw1.jpg,6eMKxT8sd3ZD.jpg,P3uXYJilj1r0.jpg', 'yJGNc2y96Tw1.jpg,6eMKxT8sd3ZD.jpg,P3uXYJilj1r0.jpg', 1, NULL, NULL, 6, 41, 2, 2, 62, 1, 2, 5, 2, 3, 3, 1, '11', '2020-06-25 03:51:22', '2020-06-25 06:58:32'),
(225, 'AX2194', NULL, 13495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'gY4XGko2LTfQ.jpg,RlB7b8rrBxhk.jpg,SyD2cCbKHsQ2.jpg', 'gY4XGko2LTfQ.jpg,RlB7b8rrBxhk.jpg,SyD2cCbKHsQ2.jpg', 1, NULL, NULL, 6, 41, 2, 2, 62, 1, 2, 5, 3, 13, 14, 1, '11', '2020-06-25 03:51:22', '2020-06-25 06:58:34'),
(226, 'AX2329', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '5q024GasL9bv.jpg,kHvXkoisWube.jpg,s0tV9ToxG6Ds.jpg', '5q024GasL9bv.jpg,kHvXkoisWube.jpg,s0tV9ToxG6Ds.jpg', 1, NULL, NULL, 6, 41, 2, 2, 47, 1, 2, 5, 12, 3, 3, 1, NULL, '2020-06-25 03:51:22', '2020-06-25 06:58:36'),
(227, 'AX2403', NULL, 13495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'yLu4zQtBzaeB.jpg,G2RTHYPmBQLO.jpg,Pkul0bupO6v9.jpg', 'yLu4zQtBzaeB.jpg,G2RTHYPmBQLO.jpg,Pkul0bupO6v9.jpg', 1, NULL, NULL, 6, 41, 2, 2, 62, 1, 2, 5, 2, 14, 12, 1, NULL, '2020-06-25 03:51:22', '2020-06-25 06:58:37'),
(228, 'AX2510', NULL, 13495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'y9lGtgw1rRoX.jpg,rTvUBRDJg8jv.jpg,ahPRrHv374ny.jpg', 'y9lGtgw1rRoX.jpg,rTvUBRDJg8jv.jpg,ahPRrHv374ny.jpg', 1, NULL, NULL, 6, 40, 2, 1, 47, 1, 2, 5, 6, 6, 5, 1, '58,61,11,29,46', '2020-06-25 03:51:22', '2020-06-25 06:58:39'),
(229, 'AX2606', NULL, 12495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '4V2zMciKf1rX.jpg,zDJWLiARXWbu.jpg,FfCAFPGxmNvE.jpg', '4V2zMciKf1rX.jpg,zDJWLiARXWbu.jpg,FfCAFPGxmNvE.jpg', 1, NULL, NULL, 6, 43, 2, 1, 47, 1, 2, 5, 3, 6, 5, 1, '58,61,11,46', '2020-06-25 03:51:23', '2020-06-25 06:58:41'),
(230, 'AX2607', NULL, 13795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'w1ooD3pimh75.jpg,BoRSCzdQEd7K.jpg,2uzmRJgPdOQs.jpg', 'w1ooD3pimh75.jpg,BoRSCzdQEd7K.jpg,2uzmRJgPdOQs.jpg', 1, NULL, NULL, 6, 43, 2, 2, 47, 1, 2, 5, 2, 15, 2, 1, '61,11,46', '2020-06-25 03:51:23', '2020-06-25 06:58:43'),
(231, 'AX2614', NULL, 13495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'sDve0aczdaIU.jpg,XYQw5mGQuibj.jpg,5CUwqPgW3YYg.jpg', 'sDve0aczdaIU.jpg,XYQw5mGQuibj.jpg,5CUwqPgW3YYg.jpg', 1, NULL, NULL, 6, 44, 2, 1, 47, 1, 2, 5, 2, 6, 5, 1, '61,11', '2020-06-25 03:51:23', '2020-06-25 06:58:44'),
(232, 'AX2619', NULL, 13495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'OIl9kMosUlY0.jpg,ixCFYNDMdj3X.jpg', 'OIl9kMosUlY0.jpg,ixCFYNDMdj3X.jpg', 1, NULL, NULL, 6, 43, 2, 2, 47, 1, 2, 5, 1, 14, 4, 1, NULL, '2020-06-25 03:51:23', '2020-06-25 06:58:45'),
(233, 'AX2701', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'BZ2SWydoHAeg.jpg,4A1gNf8tvPGu.jpg,dUnN5S729OOH.jpg', 'BZ2SWydoHAeg.jpg,4A1gNf8tvPGu.jpg,dUnN5S729OOH.jpg', 1, NULL, NULL, 6, 45, 2, 2, 34, 1, 2, 5, 1, 9, 1, 1, NULL, '2020-06-25 03:51:23', '2020-06-25 06:58:47'),
(234, 'AX2702', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'vuD7Vkq7HIis.jpg,GGUQSrQKo40M.jpg', 'vuD7Vkq7HIis.jpg,GGUQSrQKo40M.jpg', 1, NULL, NULL, 6, 45, 2, 2, 34, 1, 2, 5, 2, 15, 2, 1, NULL, '2020-06-25 03:51:23', '2020-06-25 06:58:48'),
(235, 'AX2703', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'eq5i7WdyluGh.jpg,scXDWbGjqxHl.jpg,BZferRplOxLd.jpg,1kN5DjLeYMGJ.jpg', 'eq5i7WdyluGh.jpg,scXDWbGjqxHl.jpg,BZferRplOxLd.jpg,1kN5DjLeYMGJ.jpg', 1, NULL, NULL, 6, 45, 2, 2, 34, 1, 2, 5, 1, 3, 1, 1, NULL, '2020-06-25 03:51:23', '2020-06-25 06:58:52'),
(236, 'AX2706', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'kEGebPu7m3rj.jpg,VfESYRiOcWok.jpg,Vt9GTHG56ZWb.jpg,4UBo6IdUpsaU.jpg', 'kEGebPu7m3rj.jpg,VfESYRiOcWok.jpg,Vt9GTHG56ZWb.jpg,4UBo6IdUpsaU.jpg', 1, NULL, NULL, 6, 45, 2, 2, 34, 1, 2, 5, 1, 3, 3, 1, NULL, '2020-06-25 03:51:23', '2020-06-25 06:58:55'),
(237, 'AX2802', NULL, 13495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '2z98KjaARssY.jpg,XZAHehjYS7JP.jpg,9zM48aWtiURC.jpg', '2z98KjaARssY.jpg,XZAHehjYS7JP.jpg,9zM48aWtiURC.jpg', 1, NULL, NULL, 6, 45, 2, 2, 47, 1, 2, 5, 1, 9, 1, 1, NULL, '2020-06-25 03:51:23', '2020-06-25 06:58:57'),
(238, 'AX4347', NULL, 11495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'X1xumu2sFue3.jpg,cVxHL6jqgF4w.jpg,BMVu280XSs0k.jpg,2EzwKD1WAAuw.jpg', 'X1xumu2sFue3.jpg,cVxHL6jqgF4w.jpg,BMVu280XSs0k.jpg,2EzwKD1WAAuw.jpg', 1, NULL, NULL, 6, 19, 2, 2, 63, 1, 2, 5, 8, 10, 6, 2, NULL, '2020-06-25 03:51:23', '2020-06-25 06:59:00'),
(239, 'AX4369', NULL, 6995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'wOlF4eThL4Il.jpg,Rr7l8raGU2Sr.jpg,MYsuL8fzMcsU.jpg,c2zk9vic4BQm.jpg', 'wOlF4eThL4Il.jpg,Rr7l8raGU2Sr.jpg,MYsuL8fzMcsU.jpg,c2zk9vic4BQm.jpg', 1, NULL, NULL, 6, 19, 2, 2, 64, 1, 2, 5, 1, 7, 1, 2, NULL, '2020-06-25 03:51:23', '2020-06-25 06:59:02'),
(240, 'AX5310', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'sRUlkMoSVSNH.jpg,B5QuPbFX4t1C.jpg', 'sRUlkMoSVSNH.jpg,B5QuPbFX4t1C.jpg', 1, NULL, NULL, 6, 46, 2, 2, 54, 1, 2, 5, 7, 3, 3, 2, NULL, '2020-06-25 03:51:23', '2020-06-25 06:59:03'),
(241, 'AX5327', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'RVnRnuu8YC6n.jpg,VuZhdk1voiXL.jpg,osKuUonkOT61.jpg,KcLvQsLG218a.jpg', 'RVnRnuu8YC6n.jpg,VuZhdk1voiXL.jpg,osKuUonkOT61.jpg,KcLvQsLG218a.jpg', 1, NULL, NULL, 6, 47, 2, 2, 54, 1, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:51:23', '2020-06-25 06:59:05'),
(242, 'AX5444', NULL, 11495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'QnU8bT5KyGbU.jpg,hl715Nsw3wt1.jpg,V0HYGGRRTS2Z.jpg', 'QnU8bT5KyGbU.jpg,hl715Nsw3wt1.jpg,V0HYGGRRTS2Z.jpg', 1, NULL, NULL, 6, 19, 2, 2, 63, 1, 2, 5, 8, 3, 14, 2, NULL, '2020-06-25 03:51:23', '2020-06-25 06:59:07'),
(243, 'AX5536', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'b3JmWtcPCNF2.jpg,P3VxZ7Ds9kqc.jpg,ZLGjzf7c74gh.jpg,yIHswnyN5G9L.jpg', 'b3JmWtcPCNF2.jpg,P3VxZ7Ds9kqc.jpg,ZLGjzf7c74gh.jpg,yIHswnyN5G9L.jpg', 1, NULL, NULL, 6, 48, 2, 2, 63, 1, 2, 5, 15, 8, 11, 2, NULL, '2020-06-25 03:51:23', '2020-06-25 06:59:10'),
(244, 'AX5537', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ieOwQ2yE7LfJ.jpg,Qw8gfJIZEa27.jpg', 'ieOwQ2yE7LfJ.jpg,Qw8gfJIZEa27.jpg', 1, NULL, NULL, 6, 19, 2, 2, 63, 1, 2, 5, 6, 6, 5, 2, NULL, '2020-06-25 03:51:23', '2020-06-25 06:59:11'),
(245, 'AX5551', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'RTL4B5yjUl14.jpg,ZOG44Ct0myZm.jpg,JPpDmtTXpijB.jpg,lmf33jASO2mE.jpg', 'RTL4B5yjUl14.jpg,ZOG44Ct0myZm.jpg,JPpDmtTXpijB.jpg,lmf33jASO2mE.jpg', 1, NULL, NULL, 6, 48, 2, 2, 63, 1, 2, 5, 6, 6, 5, 2, NULL, '2020-06-25 03:51:24', '2020-06-25 06:59:14'),
(246, 'AX5552', NULL, 13495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'fEQDchhiRgYg.jpg,fytWe9fxWGrJ.jpg,Vtxqr0ZoFbeZ.jpg,quPm9XC18Gr4.jpg', 'fEQDchhiRgYg.jpg,fytWe9fxWGrJ.jpg,Vtxqr0ZoFbeZ.jpg,quPm9XC18Gr4.jpg', 3, NULL, NULL, 6, 48, 2, 2, 63, 1, 2, 5, 8, 10, 6, 2, '', '2020-06-25 03:51:24', '2020-07-06 04:00:07'),
(247, 'AX5602', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'RNxQBcq5jPah.jpg,EUgecK5VdPE7.jpg,aJFwcQUHKZ0b.jpg,WUoUA77Ls4HX.jpg', 'RNxQBcq5jPah.jpg,EUgecK5VdPE7.jpg,aJFwcQUHKZ0b.jpg,WUoUA77Ls4HX.jpg', 5, NULL, NULL, 6, 49, 2, 2, 54, 1, 2, 5, 15, 10, 6, 2, '', '2020-06-25 03:51:24', '2020-07-06 04:00:29'),
(248, 'AX5604', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'CbllVp7qAZzT.jpg,hSXFCseI6iFK.jpg,mRl0fb6x8sEY.jpg', 'CbllVp7qAZzT.jpg,hSXFCseI6iFK.jpg,mRl0fb6x8sEY.jpg', 10, NULL, NULL, 6, 49, 2, 2, 54, 1, 2, 5, 6, 3, 7, 2, '', '2020-06-25 03:51:24', '2020-07-06 04:00:53'),
(249, 'AX5606', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '9c9LphIyJTxx.jpg,g1dir371UqS1.jpg,hohIezp8CbEC.jpg,uRzh18FQQVYX.jpg', '9c9LphIyJTxx.jpg,g1dir371UqS1.jpg,hohIezp8CbEC.jpg,uRzh18FQQVYX.jpg', 1, NULL, NULL, 6, 49, 2, 2, 54, 1, 2, 5, 1, 10, 6, 2, NULL, '2020-06-25 03:51:24', '2020-06-25 06:59:22'),
(250, 'AX5610', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '8JkN7mcDdwkE.jpg,TXkykrP1h4le.jpg,kMx3EY42ugdE.jpg,43ePDXmfjBCE.jpg', '8JkN7mcDdwkE.jpg,TXkykrP1h4le.jpg,kMx3EY42ugdE.jpg,43ePDXmfjBCE.jpg', 1, NULL, NULL, 6, 49, 2, 2, 54, 1, 2, 5, 1, 9, 1, 2, NULL, '2020-06-25 03:51:24', '2020-06-25 06:59:25'),
(251, 'AX5651', NULL, 15995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'OuN4RmkZWnDb.jpg,EFWoJkizrKGu.jpg,Aoo5XhqCuBS7.jpg,3ykCkBYnQHcC.jpg', 'OuN4RmkZWnDb.jpg,EFWoJkizrKGu.jpg,Aoo5XhqCuBS7.jpg,3ykCkBYnQHcC.jpg', 1, NULL, NULL, 6, 50, 2, 1, 54, 1, 2, 5, 7, 14, 4, 2, NULL, '2020-06-25 03:51:24', '2020-06-25 06:59:28'),
(252, 'AXT1002', NULL, 12495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ZMdtHJKAtB3A.jpg,a8Dnn2MHZbOZ.jpg,sBF0M6WcjVyF.jpg,0tvKIjRNYy9k.jpg', 'ZMdtHJKAtB3A.jpg,a8Dnn2MHZbOZ.jpg,sBF0M6WcjVyF.jpg,0tvKIjRNYy9k.jpg', 1, NULL, NULL, 6, 51, 2, 5, 47, 1, 3, 5, 2, 7, 2, 1, '59,3,32,47', '2020-06-25 03:51:24', '2020-06-25 06:59:31');
INSERT INTO `product_details` (`id`, `model_no`, `series`, `price`, `material`, `buckle`, `size`, `shape`, `frame_colour`, `lens`, `visible_ray`, `dimensions`, `nib`, `length_mm`, `taper`, `clasp_type`, `clasp_size`, `lock_system`, `description`, `warranty_period`, `meta_title`, `meta_description`, `meta_keyword`, `h1`, `status`, `featured_status`, `images`, `thumb_img`, `main_category_id`, `colour_id`, `clock_type_id`, `brand_id`, `collection_id`, `movement_id`, `movement_type_id`, `case_size_id`, `case_shape_id`, `case_material_id`, `glass_material_id`, `dial_colour_id`, `strap_material_id`, `strap_colour_id`, `gender_id`, `feature_id`, `created_at`, `updated_at`) VALUES
(253, 'AXT2001', NULL, 22495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'DKyYZy5VOZ51.jpg,uhkcgEKOsiNa.jpg,Mew20syhryDI.jpg,x78TvPpPqZjF.jpg', 'DKyYZy5VOZ51.jpg,uhkcgEKOsiNa.jpg,Mew20syhryDI.jpg,x78TvPpPqZjF.jpg', 1, NULL, NULL, 6, 43, 2, 5, 61, 1, 2, 5, 2, 10, 6, 1, '59,3,6,47,52,54,55,56', '2020-06-25 03:51:24', '2020-06-25 06:59:33'),
(254, 'AXT2005', NULL, 19995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '2FCYduikcktJ.jpg,EY4JZgY1LxDe.jpg,yJeNPa7gJ9sU.jpg,42zNhHLPJD22.jpg', '2FCYduikcktJ.jpg,EY4JZgY1LxDe.jpg,yJeNPa7gJ9sU.jpg,42zNhHLPJD22.jpg', 1, NULL, NULL, 6, 43, 2, 5, 62, 1, 2, 5, 1, 7, 1, 1, '59,3,6,47,52,54,55,56', '2020-06-25 03:51:24', '2020-06-25 06:59:36'),
(255, 'AXT2007', NULL, 19995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '5WWX4gRCAsrw.jpg,wwNAJYt310mR.jpg,cvFqQpa3kLcX.jpg', '5WWX4gRCAsrw.jpg,wwNAJYt310mR.jpg,cvFqQpa3kLcX.jpg', 1, NULL, NULL, 6, 43, 2, 5, 62, 1, 2, 5, 1, 7, 1, 1, '59,3,6,47,52,54,55,56', '2020-06-25 03:51:24', '2020-06-25 06:59:37'),
(256, 'AX2708', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'KnD3wqoz3POZ.jpg,uvPR8GVgbdCr.jpg,EwvMDsKEwLu5.jpg', 'KnD3wqoz3POZ.jpg,uvPR8GVgbdCr.jpg,EwvMDsKEwLu5.jpg', 10, NULL, NULL, 6, 45, 2, 2, 34, 1, 2, 5, 10, 3, 3, 1, '', '2020-06-25 03:51:24', '2020-06-30 05:20:39'),
(257, 'AR11104', NULL, 24495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'dOKcouVUtBcP.jpg,EMJZ2npXbTeI.jpg,Yz7noud1xX9v.jpg,30lIZoJ9h46N.jpg', 'dOKcouVUtBcP.jpg,EMJZ2npXbTeI.jpg,Yz7noud1xX9v.jpg,30lIZoJ9h46N.jpg', 1, NULL, NULL, 7, 52, 2, 1, 4, 1, 2, 5, 1, 6, 5, 1, '61,11,46,51', '2020-06-25 03:51:24', '2020-06-25 06:59:42'),
(258, 'AR11252', NULL, 19995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'L84vM9IOLq1l.jpg,gB50M1j9Chsn.jpg,feSRZGYVz02g.jpg,RMKh0KIkLxrp.jpg,Z1M1uSE52YM9.jpg', 'L84vM9IOLq1l.jpg,gB50M1j9Chsn.jpg,feSRZGYVz02g.jpg,RMKh0KIkLxrp.jpg,Z1M1uSE52YM9.jpg', 1, NULL, NULL, 7, 52, 2, 2, 58, 1, 2, 5, 1, 6, 1, 2, NULL, '2020-06-25 03:51:24', '2020-06-25 06:59:44'),
(259, 'AR11011', NULL, 12795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'iXbvTr8N4gDY.jpg,CGZ2SIp8HihH.jpg,WF8YXaObpAc7.jpg', 'iXbvTr8N4gDY.jpg,CGZ2SIp8HihH.jpg,WF8YXaObpAc7.jpg', 1, NULL, NULL, 7, 53, 2, 2, 33, 1, 2, 5, 5, 3, 3, 1, NULL, '2020-06-25 03:51:24', '2020-06-25 06:59:46'),
(260, 'AR11017', NULL, 24495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'meqotCEcGeim.jpg,tkQJKNzKSJ9S.jpg,Q82D9gbM42Op.jpg,LLp8YfGwXXVg.jpg', 'meqotCEcGeim.jpg,tkQJKNzKSJ9S.jpg,Q82D9gbM42Op.jpg,LLp8YfGwXXVg.jpg', 1, NULL, NULL, 7, 53, 2, 2, 33, 1, 2, 5, 1, 6, 5, 1, '58,61,11,46', '2020-06-25 03:51:24', '2020-06-25 06:59:49'),
(261, 'AR11055', NULL, 20795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'PP5hvBvI08wc.jpg,wITWHH3578l7.jpg,bKhCxt2d9IJe.jpg', 'PP5hvBvI08wc.jpg,wITWHH3578l7.jpg,bKhCxt2d9IJe.jpg', 1, NULL, NULL, 7, 19, 2, 2, 58, 1, 2, 5, 8, 10, 6, 2, NULL, '2020-06-25 03:51:25', '2020-06-25 06:59:50'),
(262, 'AR11056', NULL, 13995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'uTny5jVYkKeg.jpg,88Zk00urPekw.jpg', 'uTny5jVYkKeg.jpg,88Zk00urPekw.jpg', 1, NULL, NULL, 7, 19, 2, 2, 58, 1, 2, 5, 13, 3, 1, 2, NULL, '2020-06-25 03:51:25', '2020-06-25 06:59:52'),
(263, 'AR11059', NULL, 24295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'gVJjCF5iG1yx.jpg,Gi65EIMRQHFL.jpg,IqezgNQDnT6c.jpg,Go0jzD7S3tVB.jpg', 'gVJjCF5iG1yx.jpg,Gi65EIMRQHFL.jpg,IqezgNQDnT6c.jpg,Go0jzD7S3tVB.jpg', 1, NULL, NULL, 7, 19, 2, 2, 58, 1, 2, 5, 16, 10, 6, 2, NULL, '2020-06-25 03:51:25', '2020-06-25 06:59:55'),
(264, 'AR11060', NULL, 18495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'YgTCy6AKU8Is.jpg,qgK577LlCaEf.jpg,GwKpfAWrMJ8c.jpg,jyy76X1EAMZE.jpg', 'YgTCy6AKU8Is.jpg,qgK577LlCaEf.jpg,GwKpfAWrMJ8c.jpg,jyy76X1EAMZE.jpg', 1, NULL, NULL, 7, 19, 2, 2, 58, 1, 2, 5, 13, 3, 1, 2, NULL, '2020-06-25 03:51:25', '2020-06-25 06:59:57'),
(265, 'AR11082', NULL, 21595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ZeFyJJxPwNfz.jpg,R1GFdhKMgRMj.jpg,muUN4PJMOCGI.jpg,ZiMn7eHboTb3.jpg', 'ZeFyJJxPwNfz.jpg,R1GFdhKMgRMj.jpg,muUN4PJMOCGI.jpg,ZiMn7eHboTb3.jpg', 1, NULL, NULL, 7, 19, 2, 1, 65, 1, 2, 5, 2, 6, 5, 1, '58,61,11,46', '2020-06-25 03:51:25', '2020-06-25 07:00:00'),
(266, 'AR11083', NULL, 24495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'EUU3e3UxkcCj.jpg,sb5gk805TviM.jpg,rnT61uVhoBzA.jpg,HlmTkr4pOmC3.jpg', 'EUU3e3UxkcCj.jpg,sb5gk805TviM.jpg,rnT61uVhoBzA.jpg,HlmTkr4pOmC3.jpg', 1, NULL, NULL, 7, 54, 2, 1, 65, 1, 2, 5, 1, 6, 5, 1, '58,61,11,46', '2020-06-25 03:51:25', '2020-06-25 07:00:02'),
(267, 'AR11092', NULL, 24295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'CfylqqDtz2wL.jpg,GC3yAMU59HNz.jpg,2hvSBjrx8rSt.jpg', 'CfylqqDtz2wL.jpg,GC3yAMU59HNz.jpg,2hvSBjrx8rSt.jpg', 1, NULL, NULL, 7, 55, 2, 2, 58, 1, 2, 5, 2, 10, 10, 2, NULL, '2020-06-25 03:51:25', '2020-06-25 07:00:04'),
(268, 'AR11100', NULL, 16295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '0cMVU3djcvW0.jpg,DTfVUFTCk1bh.jpg,f4twENVvPndO.jpg', '0cMVU3djcvW0.jpg,DTfVUFTCk1bh.jpg,f4twENVvPndO.jpg', 1, NULL, NULL, 7, 57, 2, 2, 47, 1, 2, 5, 2, 6, 5, 1, '11', '2020-06-25 03:51:25', '2020-06-25 07:00:06'),
(269, 'AR11101', NULL, 16295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'RPKhF4c6Nl8b.jpg,XNuaVrj4Twn1.jpg,QLyIzfjQq4cL.jpg,E2fzinKOX2ej.jpg', 'RPKhF4c6Nl8b.jpg,XNuaVrj4Twn1.jpg,QLyIzfjQq4cL.jpg,E2fzinKOX2ej.jpg', 1, NULL, NULL, 7, 57, 2, 2, 47, 1, 2, 5, 1, 1, 1, 1, '11', '2020-06-25 03:51:25', '2020-06-25 07:00:08'),
(270, 'AR11106', NULL, 24495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'uUriMgeviBba.jpg,pRAMfOnk1sLw.jpg,7CsMl0nSF4yg.jpg,Gemrry1rxbyZ.jpg', 'uUriMgeviBba.jpg,pRAMfOnk1sLw.jpg,7CsMl0nSF4yg.jpg,Gemrry1rxbyZ.jpg', 1, NULL, NULL, 7, 19, 2, 2, 33, 1, 2, 5, 15, 3, 3, 1, '61,11,51', '2020-06-25 03:51:25', '2020-06-25 07:00:10'),
(271, 'AR11110', NULL, 24995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ytbOh4pRqcvB.jpg,q8BNIz5iG090.jpg,OwTQ2UkyJ7I6.jpg', 'ytbOh4pRqcvB.jpg,q8BNIz5iG090.jpg,OwTQ2UkyJ7I6.jpg', 1, NULL, NULL, 7, 19, 2, 2, 58, 1, 2, 5, 13, 10, 6, 2, NULL, '2020-06-25 03:51:26', '2020-06-25 07:00:13'),
(272, 'AR11135', NULL, 14495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'UIkpf4InPYba.jpg,aAj8H2ipav0m.jpg,osUujcRjQkD3.jpg,t5k9etOS08ld.jpg', 'UIkpf4InPYba.jpg,aAj8H2ipav0m.jpg,osUujcRjQkD3.jpg,t5k9etOS08ld.jpg', 1, NULL, NULL, 7, 19, 2, 2, 33, 1, 2, 5, 1, 3, 2, 1, '11', '2020-06-25 03:51:26', '2020-06-25 07:00:15'),
(273, 'AR11143', NULL, 19995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'GtJWfDy1UuES.jpg,XNMrER9cQPZb.jpg,SrgbknxNXX3p.jpg', 'GtJWfDy1UuES.jpg,XNMrER9cQPZb.jpg,SrgbknxNXX3p.jpg', 1, NULL, NULL, 7, 52, 2, 1, 33, 1, 2, 5, 1, 3, 1, 1, '61,11,46,51', '2020-06-25 03:51:26', '2020-06-25 07:00:17'),
(274, 'AR11145', NULL, 25995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'up84kbbkfkFF.jpg,2lttNlWWg722.jpg,9IKrkcXVUeKG.jpg', 'up84kbbkfkFF.jpg,2lttNlWWg722.jpg,9IKrkcXVUeKG.jpg', 1, NULL, NULL, 7, 55, 2, 2, 58, 1, 2, 5, 1, 10, 15, 2, NULL, '2020-06-25 03:51:26', '2020-06-25 07:00:19'),
(275, 'AR11163', NULL, 18495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'eonIBw6Xj5xc.jpg,4esDni0MmjAe.jpg,VcHAoBgZUqQX.jpg', 'eonIBw6Xj5xc.jpg,4esDni0MmjAe.jpg,VcHAoBgZUqQX.jpg', 1, NULL, NULL, 7, 58, 2, 2, 34, 1, 2, 5, 5, 3, 3, 1, NULL, '2020-06-25 03:51:26', '2020-06-25 07:00:21'),
(276, 'AR11165', NULL, 27995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '6UOfUAG7EvNV.jpg,Qbv8hKxZVRGX.jpg,7luF30fHXwiC.jpg', '6UOfUAG7EvNV.jpg,Qbv8hKxZVRGX.jpg,7luF30fHXwiC.jpg', 1, NULL, NULL, 7, 59, 2, 1, 33, 1, 2, 5, 1, 10, 6, 1, '61,11', '2020-06-25 03:51:26', '2020-06-25 07:00:24'),
(277, 'AR11182', NULL, 18495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'tLtbZOsqyx10.jpg,RprnCFWCwo7d.jpg,BHdeK0TXLwrL.jpg', 'tLtbZOsqyx10.jpg,RprnCFWCwo7d.jpg,BHdeK0TXLwrL.jpg', 1, NULL, NULL, 7, 59, 2, 2, 33, 1, 2, 5, 2, 4, 5, 1, NULL, '2020-06-25 03:51:26', '2020-06-25 07:00:26'),
(278, 'AR11188', NULL, 14495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Z5AkP2o1H7IE.jpg,Q8LFPh1oRqcs.jpg,nkTjTbJyu3vO.jpg', 'Z5AkP2o1H7IE.jpg,Q8LFPh1oRqcs.jpg,nkTjTbJyu3vO.jpg', 1, NULL, NULL, 7, 59, 2, 2, 33, 1, 2, 5, 2, 3, 2, 1, '11', '2020-06-25 03:51:26', '2020-06-25 07:00:29'),
(279, 'AR11211', NULL, 14495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'IN9vuKUqCixq.jpg,yFaYBjhCsLA6.jpg,pytTC8RnHaDg.jpg', 'IN9vuKUqCixq.jpg,yFaYBjhCsLA6.jpg,pytTC8RnHaDg.jpg', 1, NULL, NULL, 7, 60, 2, 2, 47, 1, 2, 5, 5, 3, 3, 1, '11', '2020-06-25 03:51:26', '2020-06-25 07:00:30'),
(280, 'AR11215', NULL, 29995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 7, 59, 2, 1, 33, 1, 2, 5, 2, 4, 14, 1, '61,11', '2020-06-25 03:51:26', '2020-06-25 03:51:26'),
(281, 'AR11242', NULL, 25995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'kdbPDyoRydvA.jpg,biVoM2rBAIgn.jpg,6FTWSMzuv6d9.jpg', 'kdbPDyoRydvA.jpg,biVoM2rBAIgn.jpg,6FTWSMzuv6d9.jpg', 1, NULL, NULL, 7, 59, 2, 1, 33, 1, 2, 5, 1, 4, 1, 1, '61,11', '2020-06-25 03:51:26', '2020-06-25 07:00:32'),
(282, 'AR11244', NULL, 29995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'zWNLON4TnP4v.jpg,wbCRwqPuFlpD.jpg,R6akPxJAIdaJ.jpg,WjVuaX6qhk5y.jpg', 'zWNLON4TnP4v.jpg,wbCRwqPuFlpD.jpg,R6akPxJAIdaJ.jpg,WjVuaX6qhk5y.jpg', 1, NULL, NULL, 7, 59, 2, 2, 58, 1, 2, 5, 5, 10, 15, 2, NULL, '2020-06-25 03:51:26', '2020-06-25 07:00:34'),
(283, 'AR11245', NULL, 29995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'vtxZVCEozF1e.jpg,tHisH2TdywlF.jpg,uK3zrbXjRyZ3.jpg', 'vtxZVCEozF1e.jpg,tHisH2TdywlF.jpg,uK3zrbXjRyZ3.jpg', 1, NULL, NULL, 7, 59, 2, 2, 58, 1, 2, 5, 1, 9, 1, 2, NULL, '2020-06-25 03:51:26', '2020-06-25 07:00:37'),
(284, 'AR11259', NULL, 21995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ERivJVXVtlt6.jpg,niLgGQ2GxtJO.jpg,bURCn8G7NrGV.jpg', 'ERivJVXVtlt6.jpg,niLgGQ2GxtJO.jpg,bURCn8G7NrGV.jpg', 1, NULL, NULL, 7, 59, 2, 2, 33, 1, 2, 5, 6, 9, 1, 1, NULL, '2020-06-25 03:51:26', '2020-06-25 07:00:39'),
(285, 'AR11268', NULL, 25995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ow6wr55aPvzd.jpg,WkecKfXygrUh.jpg,2KWZ8a5Y2T1W.jpg', 'ow6wr55aPvzd.jpg,WkecKfXygrUh.jpg,2KWZ8a5Y2T1W.jpg', 1, NULL, NULL, 7, 59, 2, 2, 58, 1, 2, 5, 1, 9, 1, 2, NULL, '2020-06-25 03:51:26', '2020-06-25 07:00:42'),
(286, 'AR1410', NULL, 34795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '95NLTor0g6Ik.jpg,vltNpXDiIS9q.jpg,TFycS9ZTsXT6.jpg,cXnhNlaGtdWD.jpg', '95NLTor0g6Ik.jpg,vltNpXDiIS9q.jpg,TFycS9ZTsXT6.jpg,cXnhNlaGtdWD.jpg', 1, NULL, NULL, 7, 61, 2, 1, 34, 1, 2, 5, 1, 16, 1, 1, NULL, '2020-06-25 03:51:26', '2020-06-25 07:00:45'),
(287, 'AR1604', NULL, 12495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '5SeDFGqcyxIn.jpg,6PgTyf9W520C.jpg,voYje9MEOmAT.jpg', '5SeDFGqcyxIn.jpg,6PgTyf9W520C.jpg,voYje9MEOmAT.jpg', 1, NULL, NULL, 7, 21, 2, 2, 35, 2, 2, 5, 1, 3, 1, 1, NULL, '2020-06-25 03:51:26', '2020-06-25 07:00:47'),
(288, 'AR1662', NULL, 13995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'bvBDERG9hxPm.jpg,zRKsJsv80rnF.jpg,VIwURqiLmUTd.jpg', 'bvBDERG9hxPm.jpg,zRKsJsv80rnF.jpg,VIwURqiLmUTd.jpg', 1, NULL, NULL, 7, 21, 2, 2, 66, 2, 2, 5, 1, 6, 5, 1, '11', '2020-06-25 03:51:27', '2020-06-25 07:00:48'),
(289, 'AR1676', NULL, 19895.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'efrgsvAd08jR.jpg,fAk77LI4zCPY.jpg,mOAvoAq3iRK4.jpg,k35J0uP2gReY.jpg', 'efrgsvAd08jR.jpg,fAk77LI4zCPY.jpg,mOAvoAq3iRK4.jpg,k35J0uP2gReY.jpg', 1, NULL, NULL, 7, 62, 2, 2, 64, 1, 2, 5, 1, 6, 5, 1, NULL, '2020-06-25 03:51:27', '2020-06-25 07:00:51'),
(290, 'AR1681', NULL, 17795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'f3HrTjvMdSVR.jpg,2neeZnpXqEKv.jpg,q4AYWzK6aKLH.jpg', 'f3HrTjvMdSVR.jpg,2neeZnpXqEKv.jpg,q4AYWzK6aKLH.jpg', 1, NULL, NULL, 7, 62, 2, 2, 58, 1, 2, 5, 3, 3, 16, 2, NULL, '2020-06-25 03:51:27', '2020-06-25 07:00:53'),
(291, 'AR1683', NULL, 23495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'UQQ67D7Exiv1.jpg,d0xAtbapEuVT.jpg,tVqXhntW0D1l.jpg,JHVx7KFaYUyS.jpg', 'UQQ67D7Exiv1.jpg,d0xAtbapEuVT.jpg,tVqXhntW0D1l.jpg,JHVx7KFaYUyS.jpg', 1, NULL, NULL, 7, 62, 2, 2, 58, 1, 2, 5, 13, 10, 10, 2, NULL, '2020-06-25 03:51:27', '2020-06-25 07:00:57'),
(292, 'AR1702', NULL, 23295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'LYkFSIu1qis9.jpg,rdAdyBJRa0jP.jpg,j8Jtu3nsgx6s.jpg,heyIMptiuTYK.jpg', 'LYkFSIu1qis9.jpg,rdAdyBJRa0jP.jpg,j8Jtu3nsgx6s.jpg,heyIMptiuTYK.jpg', 1, NULL, NULL, 7, 21, 2, 1, 37, 1, 2, 5, 6, 6, 5, 1, '58,61,11,46', '2020-06-25 03:51:27', '2020-06-25 07:00:59'),
(293, 'AR1704', NULL, 12795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'pXESgPdHiwM5.jpg,OJfvJAVlvMMY.jpg,QVlWRCT8PZGI.jpg', 'pXESgPdHiwM5.jpg,OJfvJAVlvMMY.jpg,QVlWRCT8PZGI.jpg', 1, NULL, NULL, 7, 21, 2, 2, 33, 1, 2, 5, 4, 3, 3, 1, '46', '2020-06-25 03:51:27', '2020-06-25 07:01:01'),
(294, 'AR1785', NULL, 19795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Ah96bteSoIX2.jpg,pd6IbQlcONVY.jpg,VByzdDmsk0kf.jpg', 'Ah96bteSoIX2.jpg,pd6IbQlcONVY.jpg,VByzdDmsk0kf.jpg', 1, NULL, NULL, 7, 21, 2, 1, 65, 1, 2, 5, 4, 3, 3, 1, '58,61,11,46', '2020-06-25 03:51:27', '2020-06-25 07:01:04'),
(295, 'AR1808', NULL, 18495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'GfYbwpaWmWRN.jpg,agLJMwX4lR1v.jpg,N0n2v4wasswr.jpg,8IsHC6jgvGNV.jpg', 'GfYbwpaWmWRN.jpg,agLJMwX4lR1v.jpg,N0n2v4wasswr.jpg,8IsHC6jgvGNV.jpg', 1, NULL, NULL, 7, 21, 2, 1, 62, 1, 2, 5, 1, 6, 5, 1, '58,61,11,29,46', '2020-06-25 03:51:27', '2020-06-25 07:01:07'),
(296, 'AR1828', NULL, 16795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '3sJaArbhgHZg.jpg,BvAa4ZxMzLMA.jpg,BseVM2r0JU1W.jpg', '3sJaArbhgHZg.jpg,BvAa4ZxMzLMA.jpg,BseVM2r0JU1W.jpg', 1, NULL, NULL, 7, 21, 2, 1, 62, 1, 2, 5, 1, 3, 14, 1, '58,61,11,29,46', '2020-06-25 03:51:27', '2020-06-25 07:01:08'),
(297, 'AR1840', NULL, 24295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'dZVBKk0qBYdi.jpg,iFAeWyGxOOsN.jpg,VhBf8eTDQZ82.jpg', 'dZVBKk0qBYdi.jpg,iFAeWyGxOOsN.jpg,VhBf8eTDQZ82.jpg', 1, NULL, NULL, 7, 21, 2, 2, 30, 1, 2, 5, 3, 10, 10, 2, NULL, '2020-06-25 03:51:27', '2020-06-25 07:01:10'),
(298, 'AR1926', NULL, 27995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'V3ezipedN4io.jpg,lYKEh4X4TtLp.jpg,eVtGaF2CA2te.jpg', 'V3ezipedN4io.jpg,lYKEh4X4TtLp.jpg,eVtGaF2CA2te.jpg', 1, NULL, NULL, 7, 62, 2, 2, 58, 1, 2, 5, 5, 10, 10, 2, NULL, '2020-06-25 03:51:27', '2020-06-25 07:01:13'),
(299, 'AR1956', NULL, 24495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'zCWuoEwTrvGI.jpg,sfM2JLPyXOrT.jpg,AwZoZwMr5E0u.jpg', 'zCWuoEwTrvGI.jpg,sfM2JLPyXOrT.jpg,AwZoZwMr5E0u.jpg', 1, NULL, NULL, 7, 62, 2, 2, 58, 1, 2, 5, 6, 10, 10, 2, NULL, '2020-06-25 03:51:27', '2020-06-25 07:01:15'),
(300, 'AR1962', NULL, 20995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'EWiGQKGovdei.jpg,XQLbBSdbLQm1.jpg,8NlARiiUBMHk.jpg', 'EWiGQKGovdei.jpg,XQLbBSdbLQm1.jpg,8NlARiiUBMHk.jpg', 1, NULL, NULL, 7, 63, 2, 2, 30, 1, 2, 5, 5, 10, 10, 2, NULL, '2020-06-25 03:51:27', '2020-06-25 07:01:17'),
(301, 'AR1963', NULL, 20995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '1Exxg0bCI31A.jpg,2aCNeZiXKArU.jpg,jKP5TEEPmDr3.jpg', '1Exxg0bCI31A.jpg,2aCNeZiXKArU.jpg,jKP5TEEPmDr3.jpg', 1, NULL, NULL, 7, 63, 2, 2, 42, 1, 2, 5, 6, 8, 9, 2, NULL, '2020-06-25 03:51:27', '2020-06-25 07:01:19'),
(302, 'AR1970', NULL, 17295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '6u3xkmTFBLx7.jpg,UwcS43iOrCgV.jpg,PP0Y6n2Xtr7W.jpg', '6u3xkmTFBLx7.jpg,UwcS43iOrCgV.jpg,PP0Y6n2Xtr7W.jpg', 1, NULL, NULL, 7, 64, 2, 1, 62, 1, 2, 5, 1, 3, 1, 1, '58,61,11,29,46', '2020-06-25 03:51:28', '2020-06-25 07:01:21'),
(303, 'AR1990', NULL, 17495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Vc5GYcePqJC9.jpg,RW5yUzrOFgrZ.jpg,WGeObpk9y83M.jpg,EKwtzrc2yNMv.jpg', 'Vc5GYcePqJC9.jpg,RW5yUzrOFgrZ.jpg,WGeObpk9y83M.jpg,EKwtzrc2yNMv.jpg', 1, NULL, NULL, 7, 62, 2, 2, 58, 1, 2, 5, 13, 3, 3, 2, '46', '2020-06-25 03:51:28', '2020-06-25 07:01:24'),
(304, 'AR2411', NULL, 12495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'lrkLtOZ9L6yg.jpg,vASYc6fU5e0J.jpg,5LmBwXkmyKUr.jpg', 'lrkLtOZ9L6yg.jpg,vASYc6fU5e0J.jpg,5LmBwXkmyKUr.jpg', 1, NULL, NULL, 7, 21, 2, 2, 33, 1, 2, 5, 1, 3, 1, 1, '11', '2020-06-25 03:51:28', '2020-06-25 07:01:26'),
(305, 'AR2447', NULL, 19995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '9VOPoXILlXfV.jpg,BylHl4fITPob.jpg,bajOyyVKgUZO.jpg', '9VOPoXILlXfV.jpg,BylHl4fITPob.jpg,bajOyyVKgUZO.jpg', 1, NULL, NULL, 7, 21, 2, 1, 33, 1, 2, 5, 1, 3, 1, 1, '58,61,11,46', '2020-06-25 03:51:28', '2020-06-25 07:01:28'),
(306, 'AR2457', NULL, 16295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '4UUfe6gnzODM.jpg,DfWDjSVAWmBn.jpg,VvsN3YYmXZff.jpg', '4UUfe6gnzODM.jpg,DfWDjSVAWmBn.jpg,VvsN3YYmXZff.jpg', 1, NULL, NULL, 7, 65, 2, 2, 33, 1, 2, 5, 1, 6, 5, 1, '11', '2020-06-25 03:51:28', '2020-06-25 07:01:31'),
(307, 'AR2458', NULL, 20995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ZjNUkPHYIZ8P.jpg,qbJ58s2pODh5.jpg,YSVhukeNLrLI.jpg', 'ZjNUkPHYIZ8P.jpg,qbJ58s2pODh5.jpg,YSVhukeNLrLI.jpg', 1, NULL, NULL, 7, 65, 2, 1, 33, 1, 2, 5, 12, 6, 5, 1, '58,61,11,46', '2020-06-25 03:51:28', '2020-06-25 07:01:33'),
(308, 'AR2477', NULL, 16495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '2zUb9hgOWaH6.jpg,yg6U2hlK9ojr.jpg,aCekJTzs9v5o.jpg', '2zUb9hgOWaH6.jpg,yg6U2hlK9ojr.jpg,aCekJTzs9v5o.jpg', 1, NULL, NULL, 7, 21, 2, 2, 33, 1, 2, 5, 2, 6, 5, 1, '11', '2020-06-25 03:51:28', '2020-06-25 07:01:35'),
(309, 'AR2479', NULL, 16495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'zJGcHCcPw4dT.jpg,2fCy5Ilz50Uf.jpg,pkEjrTH9tZXS.jpg', 'zJGcHCcPw4dT.jpg,2fCy5Ilz50Uf.jpg,pkEjrTH9tZXS.jpg', 1, NULL, NULL, 7, 62, 2, 2, 64, 1, 2, 5, 1, 3, 1, 1, '11', '2020-06-25 03:51:28', '2020-06-25 07:01:37'),
(310, 'AR2481', NULL, 23295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'EDc6mhmE9CPi.jpg,Jo0zNGuR9fkx.jpg,aVoPS02yxG8g.jpg', 'EDc6mhmE9CPi.jpg,Jo0zNGuR9fkx.jpg,aVoPS02yxG8g.jpg', 1, NULL, NULL, 7, 59, 2, 1, 33, 1, 2, 5, 1, 3, 2, 1, '58,61,11,46', '2020-06-25 03:51:28', '2020-06-25 07:01:39'),
(311, 'AR2486', NULL, 23295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'HWk6tLX9VG7Q.jpg,JEHR9rnqmvcw.jpg,yipq4znqY7J6.jpg', 'HWk6tLX9VG7Q.jpg,JEHR9rnqmvcw.jpg,yipq4znqY7J6.jpg', 1, NULL, NULL, 7, 59, 2, 1, 33, 1, 2, 5, 2, 6, 5, 1, '58,61,11,46', '2020-06-25 03:51:28', '2020-06-25 07:01:41'),
(312, 'AR2513', NULL, 20995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'FpvQ403xpMyT.jpg,Hq2HYLX531hN.jpg,ULmu6yHVTYV1.jpg', 'FpvQ403xpMyT.jpg,Hq2HYLX531hN.jpg,ULmu6yHVTYV1.jpg', 1, NULL, NULL, 7, 59, 2, 1, 33, 1, 2, 5, 4, 3, 3, 1, '58,61,11,46', '2020-06-25 03:51:28', '2020-06-25 07:01:43'),
(313, 'AR7000', NULL, 26995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 7, 61, 2, 2, 44, 1, 2, 5, 6, 6, 5, 2, NULL, '2020-06-25 03:51:28', '2020-06-25 03:51:28'),
(314, 'ART3005', NULL, 20995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'hHMHVJO7FmPy.jpg,qu8LWQlcFnS7.jpg,frJslaIfrCGm.jpg', 'hHMHVJO7FmPy.jpg,qu8LWQlcFnS7.jpg,frJslaIfrCGm.jpg', 1, NULL, NULL, 7, 66, 6, 5, 33, 1, 2, 5, 6, 6, 5, 1, '59,2,3,6,36,45', '2020-06-25 03:51:28', '2020-06-25 07:01:44'),
(315, 'ART5007', NULL, 29995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'i7NjsIl2KYRA.jpg,prXoOdJku4ro.jpg,Gkab2QYpF4iL.jpg', 'i7NjsIl2KYRA.jpg,prXoOdJku4ro.jpg,Gkab2QYpF4iL.jpg', 1, NULL, NULL, 7, 66, 6, 5, 33, 1, 2, 5, 1, 9, 1, 1, '59,2,4,6,30,42,45', '2020-06-25 03:51:28', '2020-06-25 07:01:47'),
(316, 'ART5012', NULL, 25995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'khhlgj2J6ybj.jpg,abMhU9Ojpfqs.jpg,MfAFVs8hlrdZ.jpg', 'khhlgj2J6ybj.jpg,abMhU9Ojpfqs.jpg,MfAFVs8hlrdZ.jpg', 1, NULL, NULL, 7, 66, 6, 5, 62, 1, 2, 5, 3, 3, 1, 1, '59,2,4,6,30,42,45', '2020-06-25 03:51:28', '2020-06-25 07:01:50'),
(317, 'ART5024', NULL, 27995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'drEP876FNSnt.jpg,PbQ3J684kFt4.jpg,OhsSEwFpc6mM.jpg', 'drEP876FNSnt.jpg,PbQ3J684kFt4.jpg,OhsSEwFpc6mM.jpg', 1, NULL, NULL, 7, 67, 6, 5, 47, 1, 2, 5, 1, 1, 1, 1, '59,3,6,47,52,54', '2020-06-25 03:51:28', '2020-06-25 07:01:52'),
(318, 'ART5025', NULL, 27995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ii5jDtTRYjWu.jpg,ohROolrNHo0D.jpg,KswLmO3tg9Fk.jpg', 'ii5jDtTRYjWu.jpg,ohROolrNHo0D.jpg,KswLmO3tg9Fk.jpg', 1, NULL, NULL, 7, 67, 6, 5, 47, 1, 2, 5, 1, 1, 1, 1, '59,3,6,47,52,54', '2020-06-25 03:51:28', '2020-06-25 07:01:55'),
(319, 'AR11264', NULL, 27995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'xogo4h0kdAO5.jpg,P6YI0KEXwMGv.jpg,H7uMFhBfebJ0.jpg', 'xogo4h0kdAO5.jpg,P6YI0KEXwMGv.jpg,H7uMFhBfebJ0.jpg', 1, NULL, NULL, 7, 32, 2, 1, 33, 1, 2, 5, 1, 9, 1, 1, '61,11', '2020-06-25 03:51:29', '2020-06-25 07:01:57'),
(320, 'ART5009', NULL, 25995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'hnA6zoPmoVnA.jpg,ArlRFtyPSP0H.jpg,bKV4VwUSfmru.jpg', 'hnA6zoPmoVnA.jpg,ArlRFtyPSP0H.jpg,bKV4VwUSfmru.jpg', 1, NULL, NULL, 7, 66, 6, 5, 33, 1, 2, 5, 10, 3, 1, 1, '59,2,4,6,30,42,45', '2020-06-25 03:51:29', '2020-06-25 07:01:59'),
(321, 'X35011L1S', 'Diver Chic', 31900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'HlYfNwBuZNwg.jpg,6MiUGZgBb4Rt.jpg,i9lpCotMyLWA.jpg', 'HlYfNwBuZNwg.jpg,6MiUGZgBb4Rt.jpg,i9lpCotMyLWA.jpg', 1, NULL, NULL, 8, 68, 2, 2, 67, 1, 2, 2, 13, 6, 6, 2, '13', '2020-06-25 03:51:29', '2020-06-25 07:02:00'),
(322, 'X52003L1S', NULL, 31900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '27eUwmkTTNGa.jpg,wae6u2smXaep.jpg', '27eUwmkTTNGa.jpg,wae6u2smXaep.jpg', 1, NULL, NULL, 8, 69, 2, 2, 42, 1, 2, 2, 6, 6, 4, 2, NULL, '2020-06-25 03:51:29', '2020-06-25 07:02:01'),
(323, 'Y02004G7', NULL, 34500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'u0tUMqFAP0aR.jpg,gyM2xm5l2CwX.jpg,SisjYLrW3NUi.jpg', 'u0tUMqFAP0aR.jpg,gyM2xm5l2CwX.jpg,SisjYLrW3NUi.jpg', 1, NULL, NULL, 8, 70, 2, 1, 37, 1, 2, 2, 17, 4, 5, 1, '61,11,51', '2020-06-25 03:51:29', '2020-06-25 07:02:03'),
(324, 'Y16114L1', NULL, 34000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'gZwlpvMrbfQw.jpg,GA2RFyBPrEIe.jpg', 'gZwlpvMrbfQw.jpg,GA2RFyBPrEIe.jpg', 1, NULL, NULL, 8, 71, 2, 1, 54, 1, 2, 2, 5, 4, 6, 2, '61', '2020-06-25 03:51:29', '2020-06-25 07:02:03'),
(325, 'Y36004G7', NULL, 29700.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'JE9reKVsFlaQ.jpg,Ag8npkriYXvR.jpg', 'JE9reKVsFlaQ.jpg,Ag8npkriYXvR.jpg', 1, NULL, NULL, 8, 72, 2, 2, 47, 1, 2, 2, 2, 1, 2, 1, '62', '2020-06-25 03:51:29', '2020-06-25 07:02:05'),
(326, 'SOL110016', NULL, 13490.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'S9X09Vlg4zOu.jpg,1SwZyOYhIAcR.jpg,pfk89ONgSUGY.jpg,q7NFd95Ypvgn.jpg', 'S9X09Vlg4zOu.jpg,1SwZyOYhIAcR.jpg,pfk89ONgSUGY.jpg,q7NFd95Ypvgn.jpg', 1, NULL, NULL, 9, 72, 2, 2, 67, 1, 2, 5, 9, 4, 4, 2, '38', '2020-06-25 03:51:29', '2020-06-25 07:02:07'),
(327, 'SOM040015', NULL, 12190.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'QD5EkZvDmK52.jpg,5IB1epyaBwKt.jpg,C7tFhWQBKJXg.jpg,eqQgTe4ngKxq.jpg', 'QD5EkZvDmK52.jpg,5IB1epyaBwKt.jpg,C7tFhWQBKJXg.jpg,eqQgTe4ngKxq.jpg', 1, NULL, NULL, 9, 72, 7, 6, 68, 1, 2, 5, 5, 3, 7, 2, NULL, '2020-06-25 03:51:29', '2020-06-25 07:02:10'),
(328, 'S27030017', NULL, 15490.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'a6garzLG28ih.jpg,fHui1NQtNwX9.jpg,lOL8DWyp9ua2.jpg', 'a6garzLG28ih.jpg,fHui1NQtNwX9.jpg,lOL8DWyp9ua2.jpg', 1, NULL, NULL, 9, 72, 2, 2, 67, 1, 2, 5, 11, 4, 4, 2, NULL, '2020-06-25 03:51:29', '2020-06-25 07:02:12'),
(329, 'S29030017', NULL, 15990.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ztGtSFT7xvyU.jpg,1U5qaOvtnbKH.jpg', 'ztGtSFT7xvyU.jpg,1U5qaOvtnbKH.jpg', 1, NULL, NULL, 9, 72, 2, 2, 68, 1, 2, 5, 6, 4, 4, 2, NULL, '2020-06-25 03:51:29', '2020-06-25 07:02:14'),
(330, 'S32040016', NULL, 15490.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'mPzL9jtcrGeK.jpg,stXWk2VN1GHf.jpg,lxeeHB9vgUll.jpg,jICBpRZx9Q96.jpg', 'mPzL9jtcrGeK.jpg,stXWk2VN1GHf.jpg,lxeeHB9vgUll.jpg,jICBpRZx9Q96.jpg', 1, NULL, NULL, 9, 72, 2, 1, 66, 1, 2, 5, 1, 4, 5, 1, '67', '2020-06-25 03:51:29', '2020-06-25 07:02:17'),
(331, 'S66020016', NULL, 15990.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '2XEDuN9dsbMz.jpg,qdoGh7W0U6fe.jpg,E192M8PZL9RB.jpg', '2XEDuN9dsbMz.jpg,qdoGh7W0U6fe.jpg,E192M8PZL9RB.jpg', 1, NULL, NULL, 9, 72, 2, 1, 47, 1, 2, 5, 5, 4, 5, 1, '67', '2020-06-25 03:51:29', '2020-06-25 07:02:19'),
(332, 'S66080016', NULL, 15990.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'CeXsRMEWwHT1.jpg,Ngrh9Oq9yMeG.jpg,bEVYsQWZ09Ba.jpg', 'CeXsRMEWwHT1.jpg,Ngrh9Oq9yMeG.jpg,bEVYsQWZ09Ba.jpg', 1, NULL, NULL, 9, 72, 2, 1, 33, 1, 2, 5, 2, 3, 2, 1, '67', '2020-06-25 03:51:29', '2020-06-25 07:02:21'),
(333, 'S66090016', NULL, 14990.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'QtgC27qku6OM.jpg,JXIMfxzNazZH.jpg,YdwB1LRiVeNm.jpg,Dz6ruXbnGrI5.jpg', 'QtgC27qku6OM.jpg,JXIMfxzNazZH.jpg,YdwB1LRiVeNm.jpg,Dz6ruXbnGrI5.jpg', 1, NULL, NULL, 9, 73, 2, 1, 47, 1, 2, 5, 18, 17, 2, 1, '38,12,18', '2020-06-25 03:51:29', '2020-06-25 07:02:23'),
(334, 'S75060017', NULL, 15990.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '5CDMl8nTPOHx.jpg,Hb41JZjFny1z.jpg,D9tSEApWGHkR.jpg', '5CDMl8nTPOHx.jpg,Hb41JZjFny1z.jpg,D9tSEApWGHkR.jpg', 1, NULL, NULL, 9, 73, 2, 2, 67, 1, 2, 5, 10, 4, 4, 2, NULL, '2020-06-25 03:51:29', '2020-06-25 07:02:26'),
(335, 'S76090017', NULL, 15990.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'zofQWbkBhpCL.jpg,B6naM32Yil4J.jpg,hiYYkfyE02IC.jpg', 'zofQWbkBhpCL.jpg,B6naM32Yil4J.jpg,hiYYkfyE02IC.jpg', 1, NULL, NULL, 9, 73, 2, 1, 47, 1, 2, 5, 19, 3, 2, 1, '61', '2020-06-25 03:51:30', '2020-06-25 07:02:28'),
(336, 'S76120017', NULL, 15990.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'yWbOM9538IOA.jpg,XZvNF62PBzpx.jpg,H8tbImfPTgzh.jpg,gOOocIxcd3Tc.jpg', 'yWbOM9538IOA.jpg,XZvNF62PBzpx.jpg,H8tbImfPTgzh.jpg,gOOocIxcd3Tc.jpg', 1, NULL, NULL, 9, 73, 2, 1, 47, 1, 2, 5, 1, 3, 1, 1, '61', '2020-06-25 03:51:30', '2020-06-25 07:02:31'),
(337, 'S76160017', NULL, 17490.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'c5DPryX4yTAM.jpg,CJbUmOJggbpE.jpg', 'c5DPryX4yTAM.jpg,CJbUmOJggbpE.jpg', 1, NULL, NULL, 9, 73, 2, 1, 47, 1, 2, 5, 2, 4, 4, 1, '61', '2020-06-25 03:51:30', '2020-06-25 07:02:33'),
(338, 'S79050017', NULL, 15990.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'bzW9txikMCGB.jpg,FhVbLyLOSkfz.jpg,Ejr1rXCnjsBl.jpg,bpGkxbvkO8oo.jpg', 'bzW9txikMCGB.jpg,FhVbLyLOSkfz.jpg,Ejr1rXCnjsBl.jpg,bpGkxbvkO8oo.jpg', 1, NULL, NULL, 9, 74, 2, 1, 54, 1, 2, 5, 10, 3, 13, 2, '61', '2020-06-25 03:51:30', '2020-06-25 07:02:36'),
(339, 'S79070017', NULL, 16990.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'vPbRNW7WPzCI.jpg,zeNvaO0h0E5i.jpg,cP6KmcO8IgId.jpg,hA1K3OdljkJC.jpg', 'vPbRNW7WPzCI.jpg,zeNvaO0h0E5i.jpg,cP6KmcO8IgId.jpg,hA1K3OdljkJC.jpg', 1, NULL, NULL, 9, 74, 2, 1, 54, 1, 2, 5, 2, 4, 4, 2, '61', '2020-06-25 03:51:30', '2020-06-25 07:02:39'),
(340, 'S79100017', NULL, 14695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'AJKCIPEDdmLQ.jpg,GmCOgSnfaWbM.jpg,cQ5rShOUX0kU.jpg', 'AJKCIPEDdmLQ.jpg,GmCOgSnfaWbM.jpg,cQ5rShOUX0kU.jpg', 1, NULL, NULL, 9, 75, 2, 1, 54, 1, 2, 5, 14, 3, 16, 2, '61', '2020-06-25 03:51:30', '2020-06-25 07:02:40'),
(341, 'SCA040016', NULL, 15490.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'gCdzxe2tQL91.jpg,VKmC2IOyMxIp.jpg,gSErShAwPGv0.jpg', 'gCdzxe2tQL91.jpg,VKmC2IOyMxIp.jpg,gSErShAwPGv0.jpg', 1, NULL, NULL, 9, 75, 2, 2, 54, 1, 2, 5, 2, 4, 4, 2, NULL, '2020-06-25 03:51:30', '2020-06-25 07:02:42'),
(342, 'SCD120016', NULL, 14490.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'rSQoBzf1iAZZ.jpg,mAJvh1885xQu.jpg,mTbolZclqsiS.jpg', 'rSQoBzf1iAZZ.jpg,mAJvh1885xQu.jpg,mTbolZclqsiS.jpg', 1, NULL, NULL, 9, 75, 2, 2, 63, 1, 2, 5, 1, 4, 4, 2, NULL, '2020-06-25 03:51:30', '2020-06-25 07:02:45'),
(343, 'SCG120016', NULL, 15490.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'TUUi7IeLrgiH.jpg,Z4o1pyPLhH3v.jpg', 'TUUi7IeLrgiH.jpg,Z4o1pyPLhH3v.jpg', 1, NULL, NULL, 9, 75, 2, 2, 58, 1, 2, 5, 9, 4, 4, 2, NULL, '2020-06-25 03:51:30', '2020-06-25 07:02:46'),
(344, 'SCI250017', NULL, 12990.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '5SNTTMkOyUGM.jpg,CPj9uEe5ycxR.jpg,WtoJWiXhU9my.jpg,EDoSRPkAJ6I4.jpg', '5SNTTMkOyUGM.jpg,CPj9uEe5ycxR.jpg,WtoJWiXhU9my.jpg,EDoSRPkAJ6I4.jpg', 1, NULL, NULL, 9, 75, 2, 2, 67, 1, 2, 5, 6, 4, 4, 2, NULL, '2020-06-25 03:51:30', '2020-06-25 07:02:47'),
(345, 'SOT070015', NULL, 9990.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'rEjke5qY5sZ3.jpg,EiSHzfCL70Xv.jpg,XBZ3tN7oFsGV.jpg', 'rEjke5qY5sZ3.jpg,EiSHzfCL70Xv.jpg,XBZ3tN7oFsGV.jpg', 1, NULL, NULL, 9, 75, 2, 2, 34, 1, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:51:30', '2020-06-25 07:02:50'),
(346, 'SOT110015', NULL, 12190.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '8oadlDTn61LS.jpg,kxUuLbzRVgKd.jpg,ymN5JeeKJU9D.jpg', '8oadlDTn61LS.jpg,kxUuLbzRVgKd.jpg,ymN5JeeKJU9D.jpg', 1, NULL, NULL, 9, 75, 2, 2, 34, 1, 2, 5, 5, 4, 12, 2, NULL, '2020-06-25 03:51:30', '2020-06-25 07:02:52'),
(347, 'SP8150015', NULL, 11390.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'LpbQGiifWtfa.jpg,nUJuuI5zJCgV.jpg,CacvcbDJvAqR.jpg', 'LpbQGiifWtfa.jpg,nUJuuI5zJCgV.jpg,CacvcbDJvAqR.jpg', 1, NULL, NULL, 9, 75, 2, 2, 69, 1, 2, 5, 5, 3, 7, 2, NULL, '2020-06-25 03:51:30', '2020-06-25 07:02:54'),
(348, 'SP8200015', NULL, 16290.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'zWNGHFWMHGGI.jpg,a6AFkChssQT9.jpg,n7gr8gzBQPyG.jpg', 'zWNGHFWMHGGI.jpg,a6AFkChssQT9.jpg,n7gr8gzBQPyG.jpg', 1, NULL, NULL, 9, 75, 2, 2, 67, 1, 2, 5, 5, 4, 4, 2, NULL, '2020-06-25 03:51:31', '2020-06-25 07:02:56'),
(349, 'SQ1070015', NULL, 15490.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'dBWpm3gpIGgo.jpg,xs8bM0YrCWuK.jpg,mLpzfVQzRmeD.jpg', 'dBWpm3gpIGgo.jpg,xs8bM0YrCWuK.jpg,mLpzfVQzRmeD.jpg', 1, NULL, NULL, 9, 75, 2, 2, 57, 1, 2, 5, 5, 4, 4, 2, NULL, '2020-06-25 03:51:31', '2020-06-25 07:02:58'),
(350, 'SQ1110015', NULL, 13890.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'zXgQNtG7lvkL.jpg,5oR5Aak5ylkX.jpg,KJ5H7f8eWhmf.jpg,XFhvMl0XtdsD.jpg', 'zXgQNtG7lvkL.jpg,5oR5Aak5ylkX.jpg,KJ5H7f8eWhmf.jpg,XFhvMl0XtdsD.jpg', 1, NULL, NULL, 9, 75, 2, 2, 54, 1, 2, 5, 5, 3, 7, 2, NULL, '2020-06-25 03:51:31', '2020-06-25 07:03:01'),
(351, 'VSPOL2217', NULL, 14490.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '51OhZOw0QnaU.jpg', '51OhZOw0QnaU.jpg', 1, NULL, NULL, 9, 75, 2, 2, 67, 1, 2, 5, 8, 3, 3, 2, NULL, '2020-06-25 03:51:31', '2020-06-25 07:03:01'),
(352, 'VSPOL2317', NULL, 14490.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'vmUpnOzvOuMF.jpg,JNJHnsvYFDfY.jpg', 'vmUpnOzvOuMF.jpg,JNJHnsvYFDfY.jpg', 1, NULL, NULL, 9, 75, 2, 2, 67, 1, 2, 5, 9, 4, 4, 2, NULL, '2020-06-25 03:51:31', '2020-06-25 07:03:02'),
(353, 'VSP370517', NULL, 12990.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'FQintqMEuJMd.jpg', 'FQintqMEuJMd.jpg', 1, NULL, NULL, 9, 75, 2, 2, 63, 1, 2, 5, 5, 4, 4, 2, NULL, '2020-06-25 03:51:31', '2020-06-25 07:03:03'),
(354, 'VSP390117', NULL, 14990.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'HB13QOromMV0.jpg,UjkMMJrfzbdy.jpg,pHx4xk4EwQGS.jpg', 'HB13QOromMV0.jpg,UjkMMJrfzbdy.jpg,pHx4xk4EwQGS.jpg', 1, NULL, NULL, 9, 75, 2, 1, 37, 1, 2, 5, 2, 4, 17, 1, '61,11', '2020-06-25 03:51:31', '2020-06-25 07:03:05'),
(355, 'VSPCI3517', NULL, 14990.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'OgBP9gqWB1EV.jpg,rN1igV8wHoUE.jpg,OonHAVW1Xepl.jpg', 'OgBP9gqWB1EV.jpg,rN1igV8wHoUE.jpg,OonHAVW1Xepl.jpg', 1, NULL, NULL, 9, 75, 2, 2, 67, 1, 2, 5, 5, 4, 4, 2, NULL, '2020-06-25 03:51:31', '2020-06-25 07:03:07'),
(356, 'VSPCI3817', NULL, 14990.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'NCHZRJWEpzgv.jpg,258mf18HRlFq.jpg,qQWE3y6UW4SC.jpg', 'NCHZRJWEpzgv.jpg,258mf18HRlFq.jpg,qQWE3y6UW4SC.jpg', 1, NULL, NULL, 9, 75, 2, 2, 67, 1, 2, 5, 2, 4, 6, 2, NULL, '2020-06-25 03:51:31', '2020-06-25 07:03:09'),
(357, 'MK4343', NULL, 14495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'j29GdN56NvFp.jpg,HebjE8SMFlcd.jpg,uY1tvUhBTa40.jpg', 'j29GdN56NvFp.jpg,HebjE8SMFlcd.jpg,uY1tvUhBTa40.jpg', 1, NULL, NULL, 10, 76, 2, 2, 63, 1, 2, 5, 8, 10, 6, 2, NULL, '2020-06-25 03:51:31', '2020-06-25 07:03:10'),
(358, 'MK3716', NULL, 17495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'LcwB3B2CRHk5.jpg,uj3eBw29BeFj.jpg,XnGwIcbqjNA1.jpg', 'LcwB3B2CRHk5.jpg,uj3eBw29BeFj.jpg,XnGwIcbqjNA1.jpg', 1, NULL, NULL, 10, 77, 2, 2, 68, 1, 2, 5, 5, 10, 6, 2, NULL, '2020-06-25 03:51:31', '2020-06-25 07:03:13'),
(359, 'MK6671', NULL, 19995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'PljEevdkP5rh.jpg,tGlKHRAhbuQY.jpg,NFE1aGiaD5tY.jpg', 'PljEevdkP5rh.jpg,tGlKHRAhbuQY.jpg,NFE1aGiaD5tY.jpg', 1, NULL, NULL, 10, 77, 2, 2, 54, 1, 2, 5, 13, 10, 10, 2, NULL, '2020-06-25 03:51:31', '2020-06-25 07:03:16'),
(360, 'MKT5080', NULL, 25995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '1K5gsEwsMmxQ.jpg,MNiLlmCK0SMW.jpg,wI3x4xsk4Vm7.jpg', '1K5gsEwsMmxQ.jpg,MNiLlmCK0SMW.jpg,wI3x4xsk4Vm7.jpg', 1, NULL, NULL, 10, 78, 2, 5, 47, 1, 2, 5, 1, 10, 10, 1, '59,2,4,6,16,30,33,42,45', '2020-06-25 03:51:31', '2020-06-25 07:03:18'),
(361, 'MK2284', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'WY2xZ8ilNmJ2.jpg,cLVWjWJnvSSm.jpg,UwERPuUBbi13.jpg', 'WY2xZ8ilNmJ2.jpg,cLVWjWJnvSSm.jpg,UwERPuUBbi13.jpg', 1, NULL, NULL, 10, 79, 2, 2, 34, 1, 2, 5, 6, 3, 3, 2, '46', '2020-06-25 03:51:31', '2020-06-25 07:03:20'),
(362, 'MK2663', NULL, 16795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '85nRzmg7kTaQ.jpg,OT2Hid1kd4py.jpg,4OEWraDO1Ukp.jpg', '85nRzmg7kTaQ.jpg,OT2Hid1kd4py.jpg,4OEWraDO1Ukp.jpg', 1, NULL, NULL, 10, 80, 2, 2, 68, 1, 2, 5, 6, 3, 18, 2, '46', '2020-06-25 03:51:31', '2020-06-25 07:03:22'),
(363, 'MK2711', NULL, 14495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'rKsGOpfC91x6.jpg,1SaUGm2RrKc6.jpg,Ej0JA2qv7q7t.jpg', 'rKsGOpfC91x6.jpg,1SaUGm2RrKc6.jpg,Ej0JA2qv7q7t.jpg', 1, NULL, NULL, 10, 81, 2, 2, 70, 1, 2, 5, 5, 3, 8, 2, '46', '2020-06-25 03:51:31', '2020-06-25 07:03:24'),
(364, 'MK2741', NULL, 19495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'EkiKflaVtUjW.jpg,eNCSfd5BspD7.jpg,a77NdTnKEISr.jpg', 'EkiKflaVtUjW.jpg,eNCSfd5BspD7.jpg,a77NdTnKEISr.jpg', 1, NULL, NULL, 10, 82, 2, 2, 54, 1, 2, 5, 6, 3, 18, 2, '46', '2020-06-25 03:51:31', '2020-06-25 07:03:27'),
(365, 'MK2747', NULL, 10995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'iQsGQi1mak2a.jpg,XYgNzfAcQp2D.jpg,QsV8eEhXuraA.jpg', 'iQsGQi1mak2a.jpg,XYgNzfAcQp2D.jpg,QsV8eEhXuraA.jpg', 1, NULL, NULL, 10, 82, 2, 2, 54, 1, 2, 5, 1, 3, 1, 2, '46', '2020-06-25 03:51:31', '2020-06-25 07:03:28'),
(366, 'MK2750', NULL, 10995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'awnX9fwZrTpZ.jpg,Lqvj8Tzf8Dpt.jpg,dKT9qwfwsm0Q.jpg', 'awnX9fwZrTpZ.jpg,Lqvj8Tzf8Dpt.jpg,dKT9qwfwsm0Q.jpg', 1, NULL, NULL, 10, 81, 2, 2, 40, 1, 2, 5, 1, 3, 1, 2, '46', '2020-06-25 03:51:31', '2020-06-25 07:03:31'),
(367, 'MK2756', NULL, 16995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'v2jaUOF2sIx8.jpg,0hpae4j28kLM.jpg,GKLRlsIpvYfq.jpg,Ezdh6YxJLyPq.jpg', 'v2jaUOF2sIx8.jpg,0hpae4j28kLM.jpg,GKLRlsIpvYfq.jpg,Ezdh6YxJLyPq.jpg', 1, NULL, NULL, 10, 77, 2, 2, 68, 1, 2, 5, 13, 3, 3, 2, '46', '2020-06-25 03:51:31', '2020-06-25 07:03:32'),
(368, 'MK2790', NULL, 14495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'RAk3I4IEfsH4.jpg,l1A5Nb2bwb5F.jpg,b8qerrG7SHiG.jpg,tSuNocSZKBU2.jpg', 'RAk3I4IEfsH4.jpg,l1A5Nb2bwb5F.jpg,b8qerrG7SHiG.jpg,tSuNocSZKBU2.jpg', 1, NULL, NULL, 10, 83, 2, 2, 67, 1, 2, 5, 13, 3, 18, 2, '46', '2020-06-25 03:51:31', '2020-06-25 07:03:35'),
(369, 'MK2803', NULL, 10995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '3fd81ROWoePR.jpg,Rnz3Gc37XEsx.jpg,8cFuQpIWyfUs.jpg,oLThpRVdNuOe.jpg', '3fd81ROWoePR.jpg,Rnz3Gc37XEsx.jpg,8cFuQpIWyfUs.jpg,oLThpRVdNuOe.jpg', 1, NULL, NULL, 10, 82, 2, 2, 58, 1, 2, 5, 5, 3, 18, 2, '46', '2020-06-25 03:51:32', '2020-06-25 07:03:37'),
(370, 'MK2871', NULL, 13495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'GgcEC4Wag2Qk.jpg,Fcx6aAhFVA7l.jpg,B7pVsTgoRBVl.jpg', 'GgcEC4Wag2Qk.jpg,Fcx6aAhFVA7l.jpg,B7pVsTgoRBVl.jpg', 1, NULL, NULL, 10, 82, 2, 2, 58, 1, 2, 5, 5, 3, 3, 2, '46', '2020-06-25 03:51:32', '2020-06-25 07:03:39'),
(371, 'MK2872', NULL, 13495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '0ZulVERUAVaj.jpg,XHvNtKxmhQV0.jpg,q5asNlj7ZH9y.jpg', '0ZulVERUAVaj.jpg,XHvNtKxmhQV0.jpg,q5asNlj7ZH9y.jpg', 1, NULL, NULL, 10, 82, 2, 2, 58, 1, 2, 5, 1, 3, 1, 2, '46', '2020-06-25 03:51:32', '2020-06-25 07:03:41'),
(372, 'MK3190', NULL, 14995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'OSoLxB2v46bu.jpg,xOeZmEp8ycXn.jpg,EBgGjp53YRjC.jpg', 'OSoLxB2v46bu.jpg,xOeZmEp8ycXn.jpg,EBgGjp53YRjC.jpg', 1, NULL, NULL, 10, 84, 2, 2, 35, 1, 2, 5, 6, 6, 17, 2, '46', '2020-06-25 03:51:32', '2020-06-25 07:03:43'),
(373, 'MK3191', NULL, 13295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '5Jvw6RUNtjt6.jpg,SlYysSNnlzuH.jpg,qFwbOfU90PLh.jpg', '5Jvw6RUNtjt6.jpg,SlYysSNnlzuH.jpg,qFwbOfU90PLh.jpg', 1, NULL, NULL, 10, 84, 2, 2, 35, 1, 2, 5, 11, 8, 11, 2, '46', '2020-06-25 03:51:32', '2020-06-25 07:03:45'),
(374, 'MK3203', NULL, 17495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'lbUTs4zu5NiK.jpg,VYpWAKWB08HT.jpg,K57gsA4A9zhQ.jpg,9N2GCCwr2IJi.jpg', 'lbUTs4zu5NiK.jpg,VYpWAKWB08HT.jpg,K57gsA4A9zhQ.jpg,9N2GCCwr2IJi.jpg', 1, NULL, NULL, 10, 84, 2, 2, 35, 1, 2, 5, 11, 10, 10, 2, '46', '2020-06-25 03:51:32', '2020-06-25 07:03:48'),
(375, 'MK3366', NULL, 18495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'cnT0zp30YyjT.jpg,V18bhtVQmF4T.jpg,bGYoRsq71BFc.jpg', 'cnT0zp30YyjT.jpg,V18bhtVQmF4T.jpg,bGYoRsq71BFc.jpg', 1, NULL, NULL, 10, 85, 2, 2, 68, 1, 2, 5, 8, 10, 6, 2, '46', '2020-06-25 03:51:32', '2020-06-25 07:03:50'),
(376, 'MK3491', NULL, 16795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ouWWPSpL3eST.jpg,cIJvGieQStss.jpg,rI6ka7SB3gwZ.jpg,3Hv3gBQzm2pz.jpg', 'ouWWPSpL3eST.jpg,cIJvGieQStss.jpg,rI6ka7SB3gwZ.jpg,3Hv3gBQzm2pz.jpg', 1, NULL, NULL, 10, 86, 2, 2, 54, 1, 2, 5, 8, 10, 6, 2, '46', '2020-06-25 03:51:32', '2020-06-25 07:03:52'),
(377, 'MK3494', NULL, 14495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'JSdX3d8suTd8.jpg,x80ONgv1vszu.jpg,01SqTmxj98tM.jpg', 'JSdX3d8suTd8.jpg,x80ONgv1vszu.jpg,01SqTmxj98tM.jpg', 1, NULL, NULL, 10, 79, 2, 2, 34, 1, 2, 5, 13, 10, 6, 2, '46', '2020-06-25 03:51:32', '2020-06-25 07:03:53');
INSERT INTO `product_details` (`id`, `model_no`, `series`, `price`, `material`, `buckle`, `size`, `shape`, `frame_colour`, `lens`, `visible_ray`, `dimensions`, `nib`, `length_mm`, `taper`, `clasp_type`, `clasp_size`, `lock_system`, `description`, `warranty_period`, `meta_title`, `meta_description`, `meta_keyword`, `h1`, `status`, `featured_status`, `images`, `thumb_img`, `main_category_id`, `colour_id`, `clock_type_id`, `brand_id`, `collection_id`, `movement_id`, `movement_type_id`, `case_size_id`, `case_shape_id`, `case_material_id`, `glass_material_id`, `dial_colour_id`, `strap_material_id`, `strap_colour_id`, `gender_id`, `feature_id`, `created_at`, `updated_at`) VALUES
(378, 'MK3558', NULL, 16795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Xwu9ym69abkU.jpg,vnYBtUvTeb1v.jpg,3POahwBWLvDY.jpg', 'Xwu9ym69abkU.jpg,vnYBtUvTeb1v.jpg,3POahwBWLvDY.jpg', 1, NULL, NULL, 10, 87, 2, 2, 40, 1, 2, 5, 13, 10, 6, 2, '46', '2020-06-25 03:51:32', '2020-06-25 07:03:55'),
(379, 'MK3639', NULL, 15995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'dP71BPuSS5Hd.jpg,n7nbPKBS9HRP.jpg,HYiIAA36gbnO.jpg,hHZBBy7OqXoI.jpg', 'dP71BPuSS5Hd.jpg,n7nbPKBS9HRP.jpg,HYiIAA36gbnO.jpg,hHZBBy7OqXoI.jpg', 1, NULL, NULL, 10, 81, 2, 2, 70, 1, 2, 5, 15, 8, 11, 2, '46', '2020-06-25 03:51:32', '2020-06-25 07:03:58'),
(380, 'MK3640', NULL, 15995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'QRFU23rkhUk9.jpg,D2l6272qt99L.jpg,dqv3OmzJSKm6.jpg', 'QRFU23rkhUk9.jpg,D2l6272qt99L.jpg,dqv3OmzJSKm6.jpg', 1, NULL, NULL, 10, 81, 2, 2, 70, 1, 2, 5, 8, 10, 6, 2, '46', '2020-06-25 03:51:32', '2020-06-25 07:03:59'),
(381, 'MK3651', NULL, 18495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'e65vu05A6pht.jpg,LD5QEgtGfCXa.jpg,LC9Gq5tpGoQr.jpg', 'e65vu05A6pht.jpg,LD5QEgtGfCXa.jpg,LC9Gq5tpGoQr.jpg', 1, NULL, NULL, 10, 84, 2, 2, 68, 1, 2, 5, 2, 10, 6, 2, '46', '2020-06-25 03:51:32', '2020-06-25 07:04:01'),
(382, 'MK3676', NULL, 20495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'D3yy05eXOkTE.jpg,wTrMQY2HrMjb.jpg,aAr7LBJ33lVU.jpg', 'D3yy05eXOkTE.jpg,wTrMQY2HrMjb.jpg,aAr7LBJ33lVU.jpg', 1, NULL, NULL, 10, 88, 2, 2, 54, 1, 2, 5, 5, 10, 6, 2, '46', '2020-06-25 03:51:32', '2020-06-25 07:04:03'),
(383, 'MK3677', NULL, 20495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'lHNrXfVaqqH7.jpg,YDJGSB7bxsVC.jpg,PZixFuvvPpjP.jpg', 'lHNrXfVaqqH7.jpg,YDJGSB7bxsVC.jpg,PZixFuvvPpjP.jpg', 1, NULL, NULL, 10, 88, 2, 2, 54, 1, 2, 5, 8, 10, 6, 2, '46', '2020-06-25 03:51:32', '2020-06-25 07:04:04'),
(384, 'MK3679', NULL, 18495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Xd31g8hpCEVD.jpg,VzGQJomF32he.jpg,QWMVrnuFLIRp.jpg', 'Xd31g8hpCEVD.jpg,VzGQJomF32he.jpg,QWMVrnuFLIRp.jpg', 1, NULL, NULL, 10, 81, 2, 2, 57, 1, 2, 5, 6, 10, 10, 2, '46', '2020-06-25 03:51:32', '2020-06-25 07:04:06'),
(385, 'MK3700', NULL, 18495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 's9EsX5tRh3U8.jpg,nspoUriHKWz6.jpg,TZr226iSq2mK.jpg', 's9EsX5tRh3U8.jpg,nspoUriHKWz6.jpg,TZr226iSq2mK.jpg', 1, NULL, NULL, 10, 87, 2, 2, 40, 1, 2, 5, 13, 10, 6, 2, NULL, '2020-06-25 03:51:32', '2020-06-25 07:04:07'),
(386, 'MK3701', NULL, 16795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'XGBKaFgbHg4w.jpg,rhGtVmqPQHGJ.jpg,JRixiL6lvgtE.jpg', 'XGBKaFgbHg4w.jpg,rhGtVmqPQHGJ.jpg,JRixiL6lvgtE.jpg', 1, NULL, NULL, 10, 89, 2, 2, 68, 1, 2, 5, 8, 10, 6, 2, NULL, '2020-06-25 03:51:32', '2020-06-25 07:04:09'),
(387, 'MK3710', NULL, 16795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'hXQBfAOrqIIc.jpg,vCDgms5rVWal.jpg,mV7m0T6NZYfH.jpg', 'hXQBfAOrqIIc.jpg,vCDgms5rVWal.jpg,mV7m0T6NZYfH.jpg', 1, NULL, NULL, 10, 89, 2, 2, 68, 1, 2, 5, 11, 18, 19, 2, NULL, '2020-06-25 03:51:32', '2020-06-25 07:04:11'),
(388, 'MK3711', NULL, 18495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 10, 86, 2, 2, 54, 1, 2, 5, 7, 18, 19, 2, NULL, '2020-06-25 03:51:32', '2020-06-25 03:51:32'),
(389, 'MK3733', NULL, 14495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'FwpsBBn6cjg7.jpg,LJTjtTWP1sM8.jpg', 'FwpsBBn6cjg7.jpg,LJTjtTWP1sM8.jpg', 1, NULL, NULL, 10, 76, 2, 2, 63, 1, 2, 5, 5, 6, 5, 2, NULL, '2020-06-25 03:51:32', '2020-06-25 07:04:12'),
(390, 'MK3775', NULL, 25995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'vXE4f7f2P6s2.jpg,4Ag7MsxqBCEL.jpg,kXWfjzZzoTtz.jpg', 'vXE4f7f2P6s2.jpg,4Ag7MsxqBCEL.jpg,kXWfjzZzoTtz.jpg', 1, NULL, NULL, 10, 87, 2, 2, 40, 1, 2, 5, 6, 6, 5, 2, NULL, '2020-06-25 03:51:33', '2020-06-25 07:04:13'),
(391, 'MK3776', NULL, 25995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'DAM8sodyoK36.jpg,Pz5OrRYckepo.jpg,N6G9nN0WXb3s.jpg', 'DAM8sodyoK36.jpg,Pz5OrRYckepo.jpg,N6G9nN0WXb3s.jpg', 1, NULL, NULL, 10, 90, 2, 2, 40, 1, 2, 5, 8, 10, 6, 2, NULL, '2020-06-25 03:51:33', '2020-06-25 07:04:15'),
(392, 'MK3785', NULL, 18495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Kt7B4LPof7bB.jpg,fYacmKumlkqC.jpg,nSeFWjLVnsh5.jpg', 'Kt7B4LPof7bB.jpg,fYacmKumlkqC.jpg,nSeFWjLVnsh5.jpg', 1, NULL, NULL, 10, 76, 2, 2, 63, 1, 2, 5, 15, 10, 6, 2, NULL, '2020-06-25 03:51:33', '2020-06-25 07:04:17'),
(393, 'MK3853', NULL, 19995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 10, 81, 2, 2, 57, 1, 2, 5, 8, 10, 6, 2, NULL, '2020-06-25 03:51:33', '2020-06-25 03:51:33'),
(394, 'MK3897', NULL, 14495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'xvosfFt55lm7.jpg,CJphOLVxfmJh.jpg,pbbmCImVXEh1.jpg', 'xvosfFt55lm7.jpg,CJphOLVxfmJh.jpg,pbbmCImVXEh1.jpg', 1, NULL, NULL, 10, 82, 2, 2, 54, 1, 2, 5, 8, 10, 6, 2, NULL, '2020-06-25 03:51:33', '2020-06-25 07:04:19'),
(395, 'MK3904', NULL, 16995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'eHM8GBcGwPb9.jpg,HHvQZCoFCoRh.jpg,a3tTHgcPxJl4.jpg', 'eHM8GBcGwPb9.jpg,HHvQZCoFCoRh.jpg,a3tTHgcPxJl4.jpg', 1, NULL, NULL, 10, 83, 2, 2, 67, 1, 2, 5, 8, 10, 6, 2, NULL, '2020-06-25 03:51:33', '2020-06-25 07:04:21'),
(396, 'MK4408', NULL, 19995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'sItlpT7RBdfl.jpg,DySdw42Zk7mG.jpg,sI7FVZO1TtNV.jpg', 'sItlpT7RBdfl.jpg,DySdw42Zk7mG.jpg,sI7FVZO1TtNV.jpg', 1, NULL, NULL, 10, 83, 2, 2, 35, 1, 2, 5, 3, 10, 6, 2, NULL, '2020-06-25 03:51:33', '2020-06-25 07:04:23'),
(397, 'MK4451', NULL, 18495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'J3ePVmrgXovm.jpg,zMeGFwESv6lu.jpg,FmxnBNctPCeX.jpg', 'J3ePVmrgXovm.jpg,zMeGFwESv6lu.jpg,FmxnBNctPCeX.jpg', 1, NULL, NULL, 10, 83, 2, 2, 67, 1, 2, 5, 2, 10, 6, 2, NULL, '2020-06-25 03:51:33', '2020-06-25 07:04:25'),
(398, 'MK4453', NULL, 16995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'z7GoCI71BCHw.jpg,rtV34bVFphra.jpg,JubnBMVqQI1x.jpg', 'z7GoCI71BCHw.jpg,rtV34bVFphra.jpg,JubnBMVqQI1x.jpg', 1, NULL, NULL, 10, 83, 2, 2, 40, 1, 2, 5, 6, 10, 10, 2, NULL, '2020-06-25 03:51:33', '2020-06-25 07:04:27'),
(399, 'MK4457', NULL, 19995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'EF6Ox5MONKp9.jpg,pIL6WVns17aQ.jpg,wxAYYVAA2jXs.jpg', 'EF6Ox5MONKp9.jpg,pIL6WVns17aQ.jpg,wxAYYVAA2jXs.jpg', 1, NULL, NULL, 10, 91, 2, 2, 63, 1, 2, 5, 8, 10, 6, 2, NULL, '2020-06-25 03:51:34', '2020-06-25 07:04:28'),
(400, 'MK5353', NULL, 16995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'fnZpZZWny6UK.jpg,yq72KboT1NvX.jpg,EMDM070HeBJt.jpg', 'fnZpZZWny6UK.jpg,yq72KboT1NvX.jpg,EMDM070HeBJt.jpg', 1, NULL, NULL, 10, 92, 2, 1, 35, 1, 2, 5, 6, 6, 5, 2, '58,61,11,46', '2020-06-25 03:51:34', '2020-06-25 07:04:30'),
(401, 'MK5491', NULL, 16995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'b4UgPALzxB62.jpg,tT0l2LlP45Rc.jpg,TBdDTQZgSKlU.jpg', 'b4UgPALzxB62.jpg,tT0l2LlP45Rc.jpg,TBdDTQZgSKlU.jpg', 1, NULL, NULL, 10, 92, 2, 1, 35, 1, 2, 5, 13, 10, 6, 2, '58,61,11,46', '2020-06-25 03:51:34', '2020-06-25 07:04:32'),
(402, 'MK5616', NULL, 18495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'OaRfjt055EW0.jpg,X8k5gKVwyokT.jpg,Dh66PZTCQv2m.jpg,c9kJUWmuWu9A.jpg', 'OaRfjt055EW0.jpg,X8k5gKVwyokT.jpg,Dh66PZTCQv2m.jpg,c9kJUWmuWu9A.jpg', 1, NULL, NULL, 10, 92, 2, 2, 68, 1, 2, 5, 13, 10, 6, 2, '58,13', '2020-06-25 03:51:34', '2020-06-25 07:04:34'),
(403, 'MK5774', NULL, 16795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'L5cgmNQNf8Vh.jpg,ZfaZPbZ4c761.jpg,CChskwSKegRs.jpg', 'L5cgmNQNf8Vh.jpg,ZfaZPbZ4c761.jpg,CChskwSKegRs.jpg', 1, NULL, NULL, 10, 92, 2, 1, 35, 1, 2, 5, 6, 19, 20, 2, '58,61,11,29,46', '2020-06-25 03:51:34', '2020-06-25 07:04:35'),
(404, 'MK5799', NULL, 16495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ALJbvvm180Id.jpg,lSNz46gyCU8g.jpg,DHVMdLsc9n7C.jpg,oxGjFDR0S5lo.jpg', 'ALJbvvm180Id.jpg,lSNz46gyCU8g.jpg,DHVMdLsc9n7C.jpg,oxGjFDR0S5lo.jpg', 1, NULL, NULL, 10, 93, 2, 1, 63, 1, 2, 5, 8, 10, 6, 2, '58,61,11,29,46', '2020-06-25 03:51:34', '2020-06-25 07:04:38'),
(405, 'MK5841', NULL, 17995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ZUZwUacVlAH8.jpg,dkbXk4bYiRfk.jpg', 'ZUZwUacVlAH8.jpg,dkbXk4bYiRfk.jpg', 1, NULL, NULL, 10, 92, 2, 2, 68, 1, 2, 5, 8, 19, 19, 2, '58,13', '2020-06-25 03:51:34', '2020-06-25 07:04:39'),
(406, 'MK5865', NULL, 14995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'tewTMN9sjQeJ.jpg,6N4qYeCu6FTe.jpg,EozSlNvPp2VU.jpg', 'tewTMN9sjQeJ.jpg,6N4qYeCu6FTe.jpg,EozSlNvPp2VU.jpg', 1, NULL, NULL, 10, 92, 2, 2, 35, 1, 2, 5, 8, 10, 6, 2, NULL, '2020-06-25 03:51:34', '2020-06-25 07:04:41'),
(407, 'MK5896', NULL, 19495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'qRBEOiNplrLy.jpg,klQG58DFmq5C.jpg,EKxvhA4PwTNV.jpg,pqe3PUJhZa0v.jpg', 'qRBEOiNplrLy.jpg,klQG58DFmq5C.jpg,EKxvhA4PwTNV.jpg,pqe3PUJhZa0v.jpg', 1, NULL, NULL, 10, 92, 2, 1, 35, 1, 2, 5, 16, 19, 20, 2, '58,61,11,29,46', '2020-06-25 03:51:34', '2020-06-25 07:04:43'),
(408, 'MK6110', NULL, 21995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'I5stjRVmZ2AS.jpg,BFiEHnaCpSqc.jpg,1e8QZ1aEmDdK.jpg', 'I5stjRVmZ2AS.jpg,BFiEHnaCpSqc.jpg,1e8QZ1aEmDdK.jpg', 1, NULL, NULL, 10, 92, 2, 2, 68, 1, 2, 5, 8, 10, 10, 2, '13', '2020-06-25 03:51:34', '2020-06-25 07:04:45'),
(409, 'MK6282', NULL, 24295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'MUH5h7HVPP9q.jpg,9wpKwvUUfoZz.jpg', 'MUH5h7HVPP9q.jpg,9wpKwvUUfoZz.jpg', 1, NULL, NULL, 10, 94, 2, 1, 35, 1, 2, 5, 8, 10, 6, 2, '11,14,46', '2020-06-25 03:51:34', '2020-06-25 07:04:46'),
(410, 'MK6316', NULL, 20495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '4og7Kju5tBBt.jpg,CvaovDifxpEi.jpg,UyJ5OltArnQM.jpg', '4og7Kju5tBBt.jpg,CvaovDifxpEi.jpg,UyJ5OltArnQM.jpg', 1, NULL, NULL, 10, 95, 2, 1, 35, 1, 2, 5, 16, 10, 6, 2, '58,61,11,46', '2020-06-25 03:51:34', '2020-06-25 07:04:48'),
(411, 'MK6324', NULL, 20495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 's0aWl76YK46F.jpg,A3PTvYswzjYd.jpg,RRgZ27nk24AY.jpg', 's0aWl76YK46F.jpg,A3PTvYswzjYd.jpg,RRgZ27nk24AY.jpg', 1, NULL, NULL, 10, 96, 2, 1, 57, 1, 2, 5, 5, 19, 20, 2, '58,61,11,46', '2020-06-25 03:51:34', '2020-06-25 07:04:50'),
(412, 'MK6367', NULL, 20495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '36ujtvx2XQmr.jpg,uLbysbyMFwzd.jpg,XNXaTapfw552.jpg', '36ujtvx2XQmr.jpg,uLbysbyMFwzd.jpg,XNXaTapfw552.jpg', 1, NULL, NULL, 10, 97, 2, 1, 64, 1, 2, 5, 8, 20, 6, 2, '61,11', '2020-06-25 03:51:34', '2020-06-25 07:04:52'),
(413, 'MK6409', NULL, 16795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'RIfVFDFwPVXX.jpg,ixrUXnzXB32D.jpg', 'RIfVFDFwPVXX.jpg,ixrUXnzXB32D.jpg', 1, NULL, NULL, 10, 98, 2, 2, 35, 1, 2, 5, 8, 10, 6, 2, '58,11', '2020-06-25 03:51:35', '2020-06-25 07:04:52'),
(414, 'MK6421', NULL, 21995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Wjc9GvaDFR8U.jpg,Ij19n1xyaOsb.jpg,loQ6p1bUhQsV.jpg', 'Wjc9GvaDFR8U.jpg,Ij19n1xyaOsb.jpg,loQ6p1bUhQsV.jpg', 1, NULL, NULL, 10, 99, 2, 1, 35, 1, 2, 5, 11, 8, 11, 2, '58,61,11,51', '2020-06-25 03:51:35', '2020-06-25 07:04:54'),
(415, 'MK6493', NULL, 20495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'a1nvCNoLW7TW.jpg,GJz2uyYdaWKX.jpg,uBJQ1ifruFDO.jpg', 'a1nvCNoLW7TW.jpg,GJz2uyYdaWKX.jpg,uBJQ1ifruFDO.jpg', 1, NULL, NULL, 10, 96, 2, 1, 57, 1, 2, 5, 8, 10, 6, 2, '58,61,11,46', '2020-06-25 03:51:35', '2020-06-25 07:04:55'),
(416, 'MK6558', NULL, 19995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'fdsozUGBEtMn.jpg,FxJIus4RY4J4.jpg,pkULL6hOX3aA.jpg', 'fdsozUGBEtMn.jpg,FxJIus4RY4J4.jpg,pkULL6hOX3aA.jpg', 1, NULL, NULL, 10, 91, 2, 1, 35, 1, 2, 5, 15, 10, 21, 2, '61,11', '2020-06-25 03:51:35', '2020-06-25 07:04:57'),
(417, 'MK6560', NULL, 21995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'nRFLGrbPdRkr.jpg,7gNwKlWe3dZJ.jpg,v91Am4HtgqTp.jpg', 'nRFLGrbPdRkr.jpg,7gNwKlWe3dZJ.jpg,v91Am4HtgqTp.jpg', 1, NULL, NULL, 10, 91, 2, 1, 35, 1, 2, 5, 8, 10, 6, 2, '61,11', '2020-06-25 03:51:35', '2020-06-25 07:04:58'),
(418, 'MK6589', NULL, 16995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'KgP1lF7m0rNu.jpg,flpG7EQRGJcp.jpg,z2tWyL2RTjFv.jpg', 'KgP1lF7m0rNu.jpg,flpG7EQRGJcp.jpg,z2tWyL2RTjFv.jpg', 1, NULL, NULL, 10, 100, 2, 2, 54, 1, 2, 5, 8, 10, 6, 2, '13', '2020-06-25 03:51:35', '2020-06-25 07:05:00'),
(419, 'MK6641', NULL, 14495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'dSy3NgkqJ7ui.jpg,BGGWuxLMfCxt.jpg,b3i7zv7vUc09.jpg,rIL1kFsQsPui.jpg', 'dSy3NgkqJ7ui.jpg,BGGWuxLMfCxt.jpg,b3i7zv7vUc09.jpg,rIL1kFsQsPui.jpg', 1, NULL, NULL, 10, 101, 2, 2, 63, 1, 2, 5, 5, 10, 6, 2, NULL, '2020-06-25 03:51:35', '2020-06-25 07:05:03'),
(420, 'MK6694', NULL, 18495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'TmAR1FNJXkQ5.jpg,5HRHMAwE2Dpb.jpg,1Xx2iyJU5s8X.jpg', 'TmAR1FNJXkQ5.jpg,5HRHMAwE2Dpb.jpg,1Xx2iyJU5s8X.jpg', 1, NULL, NULL, 10, 101, 2, 2, 54, 1, 2, 5, 5, 4, 6, 2, NULL, '2020-06-25 03:51:35', '2020-06-25 07:05:04'),
(421, 'MK6736', NULL, 24495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ejxCt0M1qsa6.jpg,oWfkT3zxQQq1.jpg,jIniYjh5qZTY.jpg', 'ejxCt0M1qsa6.jpg,oWfkT3zxQQq1.jpg,jIniYjh5qZTY.jpg', 1, NULL, NULL, 10, 101, 2, 2, 47, 1, 2, 5, 6, 4, 6, 2, NULL, '2020-06-25 03:51:35', '2020-06-25 07:05:06'),
(422, 'MK8152', NULL, 14495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'UhUoLV4Cb7Nc.jpg,7ipgrRY0vsvu.jpg,1sjuln99xd5n.jpg,drx5PlzAJR5H.jpg', 'UhUoLV4Cb7Nc.jpg,7ipgrRY0vsvu.jpg,1sjuln99xd5n.jpg,drx5PlzAJR5H.jpg', 1, NULL, NULL, 10, 102, 2, 1, 61, 1, 2, 5, 1, 1, 1, 1, '61,11', '2020-06-25 03:51:35', '2020-06-25 07:05:08'),
(423, 'MK8295', NULL, 16795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'QLrBOuXQLea6.jpg,ItossSnu4kaw.jpg,lgLCH28ft002.jpg', 'QLrBOuXQLea6.jpg,ItossSnu4kaw.jpg,lgLCH28ft002.jpg', 1, NULL, NULL, 10, 102, 2, 1, 61, 1, 2, 5, 2, 7, 2, 1, '58,61,11,29,46', '2020-06-25 03:51:35', '2020-06-25 07:05:10'),
(424, 'MK8473', NULL, 21995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'uZUlS2V7pNe5.jpg,pNpouEAfeHnZ.jpg,fAP9boTJgu8c.jpg', 'uZUlS2V7pNe5.jpg,pNpouEAfeHnZ.jpg,fAP9boTJgu8c.jpg', 1, NULL, NULL, 10, 103, 2, 1, 37, 1, 2, 5, 1, 9, 1, 1, '58,61,11,29,46', '2020-06-25 03:51:35', '2020-06-25 07:05:11'),
(425, 'MK8574', NULL, 20495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ZAl8uqEX0th9.jpg,Z21nFt9W13VM.jpg,6mEgrUA011JC.jpg', 'ZAl8uqEX0th9.jpg,Z21nFt9W13VM.jpg,6mEgrUA011JC.jpg', 1, NULL, NULL, 10, 104, 2, 1, 33, 1, 2, 5, 2, 4, 5, 1, '61,11', '2020-06-25 03:51:36', '2020-06-25 07:05:13'),
(426, 'MKT5020', NULL, 25995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ANFNDZb04wMV.jpg,6KoVVBnRnziU.jpg,jaRDy7uECHWN.jpg', 'ANFNDZb04wMV.jpg,6KoVVBnRnziU.jpg,jaRDy7uECHWN.jpg', 1, NULL, NULL, 10, 78, 2, 5, 34, 1, 2, 5, 5, 4, 5, 1, '59,2,4,6,30,42,45', '2020-06-25 03:51:36', '2020-06-25 07:05:15'),
(427, 'MKT5063', NULL, 25995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'wgg7uM8YDScg.jpg,fXGPE7NPHYGM.jpg,vGq565UwCbtJ.jpg', 'wgg7uM8YDScg.jpg,fXGPE7NPHYGM.jpg,vGq565UwCbtJ.jpg', 1, NULL, NULL, 10, 78, 2, 5, 64, 1, 2, 5, 1, 4, 6, 2, '59,2,4,6,30,42,45', '2020-06-25 03:51:36', '2020-06-25 07:05:18'),
(428, 'MKT5069', NULL, 24495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '38QQGWzyLD6R.jpg,FK11AU8zRciJ.jpg,eSsk7g9Iwaky.jpg', '38QQGWzyLD6R.jpg,FK11AU8zRciJ.jpg,eSsk7g9Iwaky.jpg', 1, NULL, NULL, 10, 78, 2, 5, 66, 1, 2, 5, 1, 7, 1, 2, '59,2,4,6,30,42,45', '2020-06-25 03:51:36', '2020-06-25 07:05:20'),
(429, 'MKT5073', NULL, 21995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'RE7LQzJuiteF.jpg,y4ugeoWsujGq.jpg,fTk29ZpU3kZt.jpg', 'RE7LQzJuiteF.jpg,y4ugeoWsujGq.jpg,fTk29ZpU3kZt.jpg', 1, NULL, NULL, 10, 78, 2, 5, 33, 1, 4, 5, 9, 7, 8, 3, '59,2,4,6,16,30,33,42,45', '2020-06-25 03:51:36', '2020-06-25 07:05:23'),
(430, 'MK3898', NULL, 14495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ORE8GAaVA8uT.jpg,cl9Szs8vBOti.jpg,hctu2WFADjR3.jpg,h8etCQpg8ahA.jpg', 'ORE8GAaVA8uT.jpg,cl9Szs8vBOti.jpg,hctu2WFADjR3.jpg,h8etCQpg8ahA.jpg', 1, NULL, NULL, 10, 82, 2, 2, 54, 1, 2, 5, 20, 21, 11, 2, NULL, '2020-06-25 03:51:36', '2020-06-25 07:05:26'),
(431, 'MK3442', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'qrPn8CzdZv2b.jpg', 'qrPn8CzdZv2b.jpg', 1, NULL, NULL, 10, 105, 2, 2, 68, 1, 2, 5, 16, 21, 11, 2, NULL, '2020-06-25 03:51:36', '2020-06-25 07:05:27'),
(432, 'AG8344-06A', NULL, 10000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'NIJKBhnyzvYI.jpg,Rcl9HfK2WZtX.jpg,jBKybtR8TAFf.jpg', 'NIJKBhnyzvYI.jpg,Rcl9HfK2WZtX.jpg,jBKybtR8TAFf.jpg', 1, NULL, NULL, 11, 21, 3, 3, 34, 1, 2, 5, 5, 3, 1, 1, NULL, '2020-06-25 03:51:36', '2020-06-25 07:05:28'),
(433, 'AN3614-54E', NULL, 12600.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Bxspl1ao12wg.jpg,FEHJ6nDbU0Gs.jpg,r4wZ7o2do8xj.jpg', 'Bxspl1ao12wg.jpg,FEHJ6nDbU0Gs.jpg,r4wZ7o2do8xj.jpg', 1, NULL, NULL, 11, 21, 2, 1, 66, 1, 2, 5, 1, 21, 9, 1, NULL, '2020-06-25 03:51:36', '2020-06-25 07:05:30'),
(434, 'AN7110-56F', NULL, 13500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'JTf2vZkbX6zn.jpg,06EpDd0qvlAC.jpg,gXMCxuWs28uR.jpg', 'JTf2vZkbX6zn.jpg,06EpDd0qvlAC.jpg,gXMCxuWs28uR.jpg', 1, NULL, NULL, 11, 21, 2, 1, 47, 1, 2, 5, 1, 6, 5, 1, '58,61,11,46', '2020-06-25 03:51:36', '2020-06-25 07:05:31'),
(435, 'AN7124-86A', NULL, 13900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'RHQzvJ6Smnjm.jpg,WgBL4CwiQFEu.jpg,jHPkt6mquGP3.jpg', 'RHQzvJ6Smnjm.jpg,WgBL4CwiQFEu.jpg,jHPkt6mquGP3.jpg', 1, NULL, NULL, 11, 106, 2, 1, 61, 1, 2, 5, 6, 21, 9, 1, '58,61,11,46', '2020-06-25 03:51:36', '2020-06-25 07:05:33'),
(436, 'AN8080-50E', NULL, 11600.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'VPghyYhylqKU.jpg,S6TmcJB3JphP.jpg,TcqLLdRixlUz.jpg', 'VPghyYhylqKU.jpg,S6TmcJB3JphP.jpg,TcqLLdRixlUz.jpg', 1, NULL, NULL, 11, 106, 2, 1, 37, 1, 2, 5, 1, 6, 5, 1, '58,61,11,46', '2020-06-25 03:51:36', '2020-06-25 07:05:36'),
(437, 'AN8095-52E', NULL, 12500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'vKHNI7uZA8T7.jpg,aTg8sXdyVBcT.jpg,BKpZeSdQeeeo.jpg', 'vKHNI7uZA8T7.jpg,aTg8sXdyVBcT.jpg,BKpZeSdQeeeo.jpg', 1, NULL, NULL, 11, 106, 2, 1, 33, 1, 2, 5, 1, 22, 1, 1, '58,61,11,46', '2020-06-25 03:51:37', '2020-06-25 07:05:37'),
(438, 'AO3000-50B', NULL, 12500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'NjmYOwdjDLvL.jpg,K4FaNnZ0jmUp.jpg,2aDcKMlIgGfZ.jpg', 'NjmYOwdjDLvL.jpg,K4FaNnZ0jmUp.jpg,2aDcKMlIgGfZ.jpg', 1, NULL, NULL, 11, 107, 2, 2, 34, 1, 2, 5, 6, 4, 5, 1, '14', '2020-06-25 03:51:37', '2020-06-25 07:05:39'),
(439, 'AO3008-07A', NULL, 12000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'R9tXW79QVTt1.jpg,1IEcCnFxeKRO.jpg,heFRg0BaDBN9.jpg,6mdrCCYjrlGH.jpg', 'R9tXW79QVTt1.jpg,1IEcCnFxeKRO.jpg,heFRg0BaDBN9.jpg,6mdrCCYjrlGH.jpg', 1, NULL, NULL, 11, 108, 2, 2, 34, 1, 2, 5, 5, 3, 3, 1, '14', '2020-06-25 03:51:37', '2020-06-25 07:05:41'),
(440, 'AO9003-08E', NULL, 13100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'YTPOIkIvJdTY.jpg,fWCYMNoEYypt.jpg,DRlE5627rU3Z.jpg', 'YTPOIkIvJdTY.jpg,fWCYMNoEYypt.jpg,DRlE5627rU3Z.jpg', 1, NULL, NULL, 11, 109, 2, 2, 34, 1, 2, 5, 1, 3, 3, 1, '13', '2020-06-25 03:51:37', '2020-06-25 07:05:43'),
(441, 'AT2150-51A', NULL, 21100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'KBrhn8iSOmoa.jpg,HsuzxKe6BRXc.jpg,McjZVIH9Y2r3.jpg', 'KBrhn8iSOmoa.jpg,HsuzxKe6BRXc.jpg,McjZVIH9Y2r3.jpg', 1, NULL, NULL, 11, 109, 2, 1, 65, 1, 2, 5, 6, 4, 5, 1, '58,61,11,46,51', '2020-06-25 03:51:37', '2020-06-25 07:05:45'),
(442, 'AT2150-51E', NULL, 19900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'mwdRplywXD8D.jpg,HkdITFJjimQr.jpg,H1eokjU3RbXN.jpg', 'mwdRplywXD8D.jpg,HkdITFJjimQr.jpg,H1eokjU3RbXN.jpg', 1, NULL, NULL, 11, 109, 2, 1, 65, 1, 2, 5, 1, 4, 5, 1, '61,11', '2020-06-25 03:51:37', '2020-06-25 07:05:46'),
(443, 'AT2245-57E', NULL, 22000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'KZCvlmdm3mxp.jpg,Dl0sfieZYKvK.jpg', 'KZCvlmdm3mxp.jpg,Dl0sfieZYKvK.jpg', 1, NULL, NULL, 11, 110, 2, 1, 33, 1, 2, 5, 1, 9, 1, 1, '58,61,11', '2020-06-25 03:51:37', '2020-06-25 07:05:48'),
(444, 'AT8104-05A', NULL, 35000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'GGUgDYtEtHUQ.jpg,KPZPH7yraXBW.jpg,X8eTNVi4gNp1.jpg', 'GGUgDYtEtHUQ.jpg,KPZPH7yraXBW.jpg,X8eTNVi4gNp1.jpg', 1, NULL, NULL, 11, 109, 2, 1, 47, 1, 2, 5, 5, 3, 3, 1, '58,61,11', '2020-06-25 03:51:37', '2020-06-25 07:05:50'),
(445, 'AU1060-51A', NULL, 14700.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '7TYiQ1uY4KKK.jpg,qIQeQ3ZRN4Qg.jpg,J1xfWlgbbVEJ.jpg', '7TYiQ1uY4KKK.jpg,qIQeQ3ZRN4Qg.jpg,J1xfWlgbbVEJ.jpg', 1, NULL, NULL, 11, 109, 2, 2, 64, 1, 2, 5, 5, 4, 5, 1, '11', '2020-06-25 03:51:37', '2020-06-25 07:05:52'),
(446, 'AU1065-58E', NULL, 15900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'JiE2tyJHJaCF.jpg,VPxABlUN0Wnw.jpg,8nVO9gspFs0S.jpg', 'JiE2tyJHJaCF.jpg,VPxABlUN0Wnw.jpg,8nVO9gspFs0S.jpg', 1, NULL, NULL, 11, 110, 2, 2, 64, 1, 2, 5, 1, 9, 1, 1, '11', '2020-06-25 03:51:37', '2020-06-25 07:05:54'),
(447, 'AW1015-53E', NULL, 14500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'a5XjAi04viDo.jpg,GJFz695cxVU7.jpg,MvT0bR6NiAEK.jpg', 'a5XjAi04viDo.jpg,GJFz695cxVU7.jpg,MvT0bR6NiAEK.jpg', 1, NULL, NULL, 11, 109, 2, 2, 33, 1, 2, 5, 1, 9, 1, 1, '11', '2020-06-25 03:51:37', '2020-06-25 07:05:55'),
(448, 'AW1354-58E', NULL, 14100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'nPWqSPIaU0z7.jpg,gLhDGS6PU1yX.jpg,emRwEHVINkDZ.jpg', 'nPWqSPIaU0z7.jpg,gLhDGS6PU1yX.jpg,emRwEHVINkDZ.jpg', 1, NULL, NULL, 11, 109, 2, 2, 33, 1, 2, 5, 1, 9, 1, 1, '11', '2020-06-25 03:51:37', '2020-06-25 07:05:58'),
(449, 'BF2023-01A', NULL, 8900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'tlP1QZQPFV3r.jpg,UqYTmWTHlSjJ.jpg,IRvSD5sOypA9.jpg', 'tlP1QZQPFV3r.jpg,UqYTmWTHlSjJ.jpg,IRvSD5sOypA9.jpg', 1, NULL, NULL, 11, 21, 2, 2, 66, 1, 2, 5, 5, 3, 1, 1, '13', '2020-06-25 03:51:37', '2020-06-25 07:05:59'),
(450, 'BF2024-50L', NULL, 9600.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'mFQBCgAq6B8L.jpg,uEqcGVculqnw.jpg,wlEiG8vaKnoa.jpg', 'mFQBCgAq6B8L.jpg,uEqcGVculqnw.jpg,wlEiG8vaKnoa.jpg', 1, NULL, NULL, 11, 21, 2, 2, 66, 1, 2, 5, 2, 4, 12, 1, '13', '2020-06-25 03:51:37', '2020-06-25 07:06:01'),
(451, 'BI5006-81P', NULL, 6600.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'U2gkJ6mf2I6A.jpg,olaP8OV1f8wE.jpg,QajnmRrMWDtZ.jpg', 'U2gkJ6mf2I6A.jpg,olaP8OV1f8wE.jpg,QajnmRrMWDtZ.jpg', 1, NULL, NULL, 11, 19, 2, 2, 35, 1, 2, 5, 11, 4, 12, 1, '11', '2020-06-25 03:51:37', '2020-06-25 07:06:03'),
(452, 'BL8100-52W', NULL, 31000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'NPv5BHOEErQs.jpg', 'NPv5BHOEErQs.jpg', 1, NULL, NULL, 11, 109, 2, 1, 34, 1, 2, 5, 1, 4, 5, 1, '58,61,11', '2020-06-25 03:51:37', '2020-06-25 07:06:03'),
(453, 'BU2040-56A', NULL, 17900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '115W1M1BGePa.jpg,k5rMYM8vdIw3.jpg,qDoktjxtFKME.jpg', '115W1M1BGePa.jpg,k5rMYM8vdIw3.jpg,qDoktjxtFKME.jpg', 1, NULL, NULL, 11, 109, 2, 2, 62, 1, 2, 5, 6, 4, 5, 1, '58,13', '2020-06-25 03:51:37', '2020-06-25 07:06:05'),
(454, 'CA0210-51E', NULL, 26500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Ou33cdJqlLbF.jpg,rGNje5udiLMO.jpg,Kimb2nhVtsxW.jpg', 'Ou33cdJqlLbF.jpg,rGNje5udiLMO.jpg,Kimb2nhVtsxW.jpg', 1, NULL, NULL, 11, 109, 2, 1, 66, 1, 2, 5, 3, 4, 5, 1, '58,13', '2020-06-25 03:51:37', '2020-06-25 07:06:07'),
(455, 'CA0351-59E', NULL, 28700.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'X5fd2QZHIrrZ.jpg,sgox0d5EQbv5.jpg', 'X5fd2QZHIrrZ.jpg,sgox0d5EQbv5.jpg', 1, NULL, NULL, 11, 109, 2, 1, 68, 1, 1, 2, 1, 23, 5, 1, '61,11', '2020-06-25 03:51:38', '2020-06-25 07:06:08'),
(456, 'CA0370-54A', NULL, 19400.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'nixIMIBDxK1a.jpg,c9Q9HixAQDpR.jpg,z6i7UR4uHYfk.jpg', 'nixIMIBDxK1a.jpg,c9Q9HixAQDpR.jpg,z6i7UR4uHYfk.jpg', 1, NULL, NULL, 11, 109, 2, 1, 33, 1, 2, 5, 5, 4, 5, 1, '61,11', '2020-06-25 03:51:38', '2020-06-25 07:06:10'),
(457, 'CA0370-54E', NULL, 20900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'f1Arj3OSXMiM.jpg,5Q6xpZlXzU2i.jpg,colO3il24vhL.jpg', 'f1Arj3OSXMiM.jpg,5Q6xpZlXzU2i.jpg,colO3il24vhL.jpg', 1, NULL, NULL, 11, 109, 2, 1, 34, 1, 2, 5, 1, 4, 5, 1, '58,61,11', '2020-06-25 03:51:38', '2020-06-25 07:06:12'),
(458, 'CA0444-50L', NULL, 31000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'X3LUcKN0i42T.jpg', 'X3LUcKN0i42T.jpg', 1, NULL, NULL, 11, 111, 2, 1, 62, 1, 5, 5, 2, 8, 9, 1, '58,61,11,46', '2020-06-25 03:51:38', '2020-06-25 07:06:12'),
(459, 'CA4015-54E', NULL, 29900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'gmOsg41PCXIC.jpg,uZ2vymH9Yl5K.jpg,fxasYrlx5ZIp.jpg', 'gmOsg41PCXIC.jpg,uZ2vymH9Yl5K.jpg,fxasYrlx5ZIp.jpg', 1, NULL, NULL, 11, 109, 2, 1, 33, 1, 6, 2, 1, 23, 5, 1, '58,61,11,46', '2020-06-25 03:51:38', '2020-06-25 07:06:13'),
(460, 'CA4025-51W', NULL, 29900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'WN17QLxqVqAj.jpg,taQou0uRx9xR.jpg,fQzi1t1TPLdv.jpg', 'WN17QLxqVqAj.jpg,taQou0uRx9xR.jpg,fQzi1t1TPLdv.jpg', 1, NULL, NULL, 11, 109, 2, 1, 33, 1, 1, 2, 4, 23, 5, 1, '61,11', '2020-06-25 03:51:38', '2020-06-25 07:06:15'),
(461, 'CA4203-54E', NULL, 27300.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ohJsKzMXEUDe.jpg,74XhnfLIe5Eb.jpg', 'ohJsKzMXEUDe.jpg,74XhnfLIe5Eb.jpg', 1, NULL, NULL, 11, 109, 2, 1, 34, 1, 2, 5, 1, 10, 6, 1, '58,61,11,51', '2020-06-25 03:51:38', '2020-06-25 07:06:16'),
(462, 'CA4336-85E', NULL, 19900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Awof6y16tmNa.jpg,B3EVUv07l5Bp.jpg', 'Awof6y16tmNa.jpg,B3EVUv07l5Bp.jpg', 1, NULL, NULL, 11, 109, 2, 1, 71, 1, 2, 5, 1, 4, 5, 1, '58,61,11,25,46', '2020-06-25 03:51:38', '2020-06-25 07:06:17'),
(463, 'EK1124-54D', NULL, 6900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'X3XOYQkdySDD.jpg,wWdDymktEpE8.jpg,MC8Ll4dXLiLe.jpg', 'X3XOYQkdySDD.jpg,wWdDymktEpE8.jpg,MC8Ll4dXLiLe.jpg', 1, NULL, NULL, 11, 21, 2, 2, 72, 2, 2, 5, 13, 8, 22, 2, NULL, '2020-06-25 03:51:38', '2020-06-25 07:06:19'),
(464, 'EL3044-54A', NULL, 7400.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'g2Yhh96xbLJf.jpg,x7rnwjj7z9cO.jpg,2CfOqnmkhXpf.jpg', 'g2Yhh96xbLJf.jpg,x7rnwjj7z9cO.jpg,2CfOqnmkhXpf.jpg', 1, NULL, NULL, 11, 21, 2, 2, 58, 1, 2, 5, 6, 8, 22, 2, NULL, '2020-06-25 03:51:38', '2020-06-25 07:06:21'),
(465, 'EM0336-59D', NULL, 21100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 11, 109, 2, 2, 42, 1, 2, 2, 13, 8, 11, 2, NULL, '2020-06-25 03:51:38', '2020-06-25 03:51:38'),
(466, 'EM0503-83X', NULL, 14900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'WVps94UNk57E.jpg,7wveznZXQLns.jpg,YZ7gzlPophgS.jpg', 'WVps94UNk57E.jpg,7wveznZXQLns.jpg,YZ7gzlPophgS.jpg', 1, NULL, NULL, 11, 109, 2, 2, 58, 1, 2, 5, 8, 10, 6, 2, NULL, '2020-06-25 03:51:38', '2020-06-25 07:06:24'),
(467, 'EP5994-59A', NULL, 19900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'xEitiuAdUm1x.jpg,qbqVas4f5to6.jpg,1uY9QONO6jXK.jpg,PaQKNMjZfbED.jpg', 'xEitiuAdUm1x.jpg,qbqVas4f5to6.jpg,1uY9QONO6jXK.jpg,PaQKNMjZfbED.jpg', 1, NULL, NULL, 11, 109, 2, 2, 68, 1, 2, 2, 5, 8, 22, 2, NULL, '2020-06-25 03:51:38', '2020-06-25 07:06:26'),
(468, 'EQ0591-81E', NULL, 7900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'QUxdqigbO73L.jpg,CWnuv9I34fpm.jpg,lw1hJMv27Y6J.jpg', 'QUxdqigbO73L.jpg,CWnuv9I34fpm.jpg,lw1hJMv27Y6J.jpg', 1, NULL, NULL, 11, 19, 2, 2, 41, 1, 2, 5, 1, 4, 5, 2, '13', '2020-06-25 03:51:38', '2020-06-25 07:06:27'),
(469, 'ER0213-57X', NULL, 9900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'X53oMjtg2BeO.jpg,GaExfzHA0w09.jpg', 'X53oMjtg2BeO.jpg,GaExfzHA0w09.jpg', 1, NULL, NULL, 11, 19, 2, 2, 42, 1, 2, 5, 7, 4, 11, 2, NULL, '2020-06-25 03:51:38', '2020-06-25 07:06:28'),
(470, 'EW9824-53A', NULL, 9900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'nMCelgHGlktC.jpg,ff7LiHFkQREY.jpg', 'nMCelgHGlktC.jpg,ff7LiHFkQREY.jpg', 1, NULL, NULL, 11, 109, 2, 2, 72, 1, 2, 5, 5, 4, 22, 2, NULL, '2020-06-25 03:51:38', '2020-06-25 07:06:29'),
(471, 'EX0294-58H', NULL, 6300.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'YHqlUuUOJJ2r.jpg,k7gTeRNskzBs.jpg,QOYyLbvCn3pm.jpg', 'YHqlUuUOJJ2r.jpg,k7gTeRNskzBs.jpg,QOYyLbvCn3pm.jpg', 1, NULL, NULL, 11, 109, 2, 2, 73, 1, 2, 5, 3, 4, 22, 2, NULL, '2020-06-25 03:51:39', '2020-06-25 07:06:31'),
(472, 'EX1483-84A', NULL, 18900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'v8pNkgCcrk4x.jpg,uSnDwOECErXV.jpg,HUR0VGjCch5j.jpg', 'v8pNkgCcrk4x.jpg,uSnDwOECErXV.jpg,HUR0VGjCch5j.jpg', 1, NULL, NULL, 11, 109, 2, 2, 42, 1, 2, 2, 13, 4, 11, 2, NULL, '2020-06-25 03:51:39', '2020-06-25 07:06:33'),
(473, 'EZ6373-58X', NULL, 10900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'dqPCI4pNsk64.jpg,jdtzLmtStE71.jpg,xH2sGoOaX0ht.jpg', 'dqPCI4pNsk64.jpg,jdtzLmtStE71.jpg,xH2sGoOaX0ht.jpg', 1, NULL, NULL, 11, 109, 2, 2, 74, 1, 2, 2, 2, 4, 6, 2, NULL, '2020-06-25 03:51:39', '2020-06-25 07:06:35'),
(474, 'W0040G5', NULL, 13900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'pc1w4QzcTs0x.jpg,kq7nzqxAi4Ov.jpg,iO5BMFJjZ4YW.jpg', 'pc1w4QzcTs0x.jpg,kq7nzqxAi4Ov.jpg,iO5BMFJjZ4YW.jpg', 1, NULL, NULL, 12, 112, 2, 2, 37, 1, 2, 5, 3, 3, 1, 1, '13', '2020-06-25 03:51:39', '2020-06-25 07:06:37'),
(475, 'W0111L3', NULL, 13800.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'oB0AJwqwrGIa.jpg,vFEYTqPw0Sbr.jpg,jwtdv4anPNwj.jpg', 'oB0AJwqwrGIa.jpg,vFEYTqPw0Sbr.jpg,jwtdv4anPNwj.jpg', 1, NULL, NULL, 12, 113, 2, 2, 63, 1, 2, 5, 5, 10, 6, 2, '58,13', '2020-06-25 03:51:39', '2020-06-25 07:06:39'),
(476, 'W0149L5', NULL, 11000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'MX9eC5ZHuUX2.jpg,O8ETaYUkW0py.jpg,r3EVIx2eHoia.jpg', 'MX9eC5ZHuUX2.jpg,O8ETaYUkW0py.jpg,r3EVIx2eHoia.jpg', 1, NULL, NULL, 12, 114, 2, 2, 35, 1, 2, 5, 6, 1, 2, 2, '13', '2020-06-25 03:51:39', '2020-06-25 07:06:41'),
(477, 'W0218G4', NULL, 15900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'XkdHIvWaqzcx.jpg,3H3orl64eFLJ.jpg,ZHZH5Yraolr0.jpg', 'XkdHIvWaqzcx.jpg,3H3orl64eFLJ.jpg,ZHZH5Yraolr0.jpg', 1, NULL, NULL, 12, 115, 2, 2, 37, 1, 2, 5, 2, 4, 2, 1, '13', '2020-06-25 03:51:39', '2020-06-25 07:06:43'),
(478, 'W0325L8', NULL, 13400.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'lkLdmv2Yi2VE.jpg,rf78TovMA6Ih.jpg,Zb03gwHwOg6O.jpg', 'lkLdmv2Yi2VE.jpg,rf78TovMA6Ih.jpg,Zb03gwHwOg6O.jpg', 1, NULL, NULL, 12, 116, 2, 2, 35, 1, 2, 5, 5, 7, 2, 2, '58,13', '2020-06-25 03:51:39', '2020-06-25 07:06:45'),
(479, 'W0546L3', NULL, 12900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'RolhJWsGsg2X.jpg,dNCnqEUwo6vg.jpg,gAjnND5WvsOT.jpg', 'RolhJWsGsg2X.jpg,dNCnqEUwo6vg.jpg,gAjnND5WvsOT.jpg', 1, NULL, NULL, 12, 114, 2, 2, 63, 1, 2, 5, 13, 10, 6, 2, '58,13', '2020-06-25 03:51:40', '2020-06-25 07:06:47'),
(480, 'W0562L2', NULL, 8800.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'UkDmlv0uc0P8.jpg,ODlNRw8u3M0M.jpg,L3DiwbwFFGwa.jpg', 'UkDmlv0uc0P8.jpg,ODlNRw8u3M0M.jpg,L3DiwbwFFGwa.jpg', 1, NULL, NULL, 12, 117, 2, 2, 63, 1, 2, 5, 2, 7, 2, 2, '58,13', '2020-06-25 03:51:40', '2020-06-25 07:06:49'),
(481, 'W0573L3', NULL, 12500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ZKu6hsKxBqK2.jpg,9q96N9atWKXi.jpg,JKBNcAtYRx6y.jpg', 'ZKu6hsKxBqK2.jpg,9q96N9atWKXi.jpg,JKBNcAtYRx6y.jpg', 1, NULL, NULL, 12, 118, 2, 2, 35, 1, 2, 5, 16, 10, 6, 2, NULL, '2020-06-25 03:51:40', '2020-06-25 07:06:51'),
(482, 'W0600G3', NULL, 10700.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'vZEQKkKNGDjv.jpg,D9suPABkCNP5.jpg,Xz5Pa1utN9M2.jpg', 'vZEQKkKNGDjv.jpg,D9suPABkCNP5.jpg,Xz5Pa1utN9M2.jpg', 1, NULL, NULL, 12, 112, 2, 2, 37, 1, 2, 5, 2, 3, 3, 1, '58,13', '2020-06-25 03:51:40', '2020-06-25 07:06:53'),
(483, 'W0638L4', NULL, 14700.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'mL6HO7FOJ3Jm.jpg,2kAInkQyNJV9.jpg,XtMvnKbRI1Ni.jpg', 'mL6HO7FOJ3Jm.jpg,2kAInkQyNJV9.jpg,XtMvnKbRI1Ni.jpg', 1, NULL, NULL, 12, 112, 2, 2, 63, 1, 2, 5, 8, 10, 6, 2, NULL, '2020-06-25 03:51:40', '2020-06-25 07:06:55'),
(484, 'W0705L4', NULL, 13900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'lMb29M1zC33W.jpg,zudCdRIGgvUA.jpg,KEj460BO10VH.jpg', 'lMb29M1zC33W.jpg,zudCdRIGgvUA.jpg,KEj460BO10VH.jpg', 1, NULL, NULL, 12, 119, 2, 2, 63, 1, 2, 5, 8, 8, 22, 2, NULL, '2020-06-25 03:51:40', '2020-06-25 07:06:57'),
(485, 'W0716G2', NULL, 12900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'KdCE4Ef4UVlh.jpg,HTQDH03m2vSo.jpg,feHLsPT9ybNv.jpg', 'KdCE4Ef4UVlh.jpg,HTQDH03m2vSo.jpg,feHLsPT9ybNv.jpg', 1, NULL, NULL, 12, 112, 2, 2, 37, 1, 2, 5, 2, 10, 6, 1, NULL, '2020-06-25 03:51:40', '2020-06-25 07:06:59'),
(486, 'W0792G4', NULL, 9500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '9tbz0eYgHHZB.jpg,CksRcvgDRENa.jpg,s3CzMy3SA0nL.jpg', '9tbz0eYgHHZB.jpg,CksRcvgDRENa.jpg,s3CzMy3SA0nL.jpg', 1, NULL, NULL, 12, 112, 8, 7, 54, 1, 2, 5, 1, 3, 1, 1, NULL, '2020-06-25 03:51:40', '2020-06-25 07:07:01'),
(487, 'W0831L3', NULL, 13300.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '3EgEiEdWxaBB.jpg,qjBrMcYhWqbK.jpg,W12YGegBL8Zx.jpg', '3EgEiEdWxaBB.jpg,qjBrMcYhWqbK.jpg,W12YGegBL8Zx.jpg', 1, NULL, NULL, 12, 120, 2, 8, 67, 1, 2, 5, 13, 8, 22, 2, '67,38', '2020-06-25 03:51:40', '2020-06-25 07:07:03'),
(488, 'W0845L3', NULL, 15600.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ngB8afjxqasU.jpg,SRiOP3Fyi3XQ.jpg,BRInp12NVHkl.jpg,tMx4tViLhP9a.jpg', 'ngB8afjxqasU.jpg,SRiOP3Fyi3XQ.jpg,BRInp12NVHkl.jpg,tMx4tViLhP9a.jpg', 1, NULL, NULL, 12, 114, 2, 8, 45, 1, 2, 5, 5, 10, 6, 2, '67,38', '2020-06-25 03:51:40', '2020-06-25 07:07:06'),
(489, 'W0845L6', NULL, 14900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'vB19uL9ZHkE4.jpg,KDPsprTX77qG.jpg,qQypK2TUzO14.jpg,N86qs8sKarM8.jpg', 'vB19uL9ZHkE4.jpg,KDPsprTX77qG.jpg,qQypK2TUzO14.jpg,N86qs8sKarM8.jpg', 1, NULL, NULL, 12, 114, 2, 8, 40, 1, 2, 5, 5, 8, 22, 2, '67,38', '2020-06-25 03:51:40', '2020-06-25 07:07:08'),
(490, 'W0864G2', NULL, 13800.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'KBdn9k3edUxV.jpg,oYzOU5HWwcEO.jpg,zqNvgCp7xXPM.jpg', 'KBdn9k3edUxV.jpg,oYzOU5HWwcEO.jpg,zqNvgCp7xXPM.jpg', 1, NULL, NULL, 12, 112, 2, 1, 62, 1, 2, 5, 1, 7, 1, 1, '58,61,46', '2020-06-25 03:51:40', '2020-06-25 07:07:10'),
(491, 'W0870G2', NULL, 11800.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'gNQuohBz1n1e.jpg,8n03OIQUCWQh.jpg,trOTyl3Pr5p0.jpg,MvoPfiz0S2fu.jpg', 'gNQuohBz1n1e.jpg,8n03OIQUCWQh.jpg,trOTyl3Pr5p0.jpg,MvoPfiz0S2fu.jpg', 1, NULL, NULL, 12, 121, 2, 2, 33, 1, 2, 5, 6, 3, 1, 1, '66', '2020-06-25 03:51:40', '2020-06-25 07:07:13'),
(492, 'W0870G4', NULL, 9600.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'VC2pymozeXWH.jpg,bTog1xsZW4mc.jpg,GVCh7ySGpHQP.jpg,cbGGzv0UzQSW.jpg', 'VC2pymozeXWH.jpg,bTog1xsZW4mc.jpg,GVCh7ySGpHQP.jpg,cbGGzv0UzQSW.jpg', 1, NULL, NULL, 12, 121, 2, 2, 47, 1, 2, 5, 2, 3, 16, 1, '66', '2020-06-25 03:51:40', '2020-06-25 07:07:15'),
(493, 'W0874G3', NULL, 9700.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'SSn4xRVSNxQz.jpg,AHu5A282hDe5.jpg,VnhwQe9R1Yna.jpg', 'SSn4xRVSNxQz.jpg,AHu5A282hDe5.jpg,VnhwQe9R1Yna.jpg', 1, NULL, NULL, 12, 112, 2, 2, 75, 1, 2, 5, 4, 3, 3, 1, '11', '2020-06-25 03:51:41', '2020-06-25 07:07:17'),
(494, 'W0884L9', NULL, 8400.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '9surOju1YcS1.jpg,eBzg7hSfyvQJ.jpg,FthSrJGr3DsA.jpg,0JywD71OpJ4K.jpg', '9surOju1YcS1.jpg,eBzg7hSfyvQJ.jpg,FthSrJGr3DsA.jpg,0JywD71OpJ4K.jpg', 1, NULL, NULL, 12, 114, 2, 2, 70, 1, 2, 5, 7, 3, 19, 2, NULL, '2020-06-25 03:51:41', '2020-06-25 07:07:20'),
(495, 'W0934L1', NULL, 13400.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'IYGl9JssJAcA.jpg,mZ2SeYnnwazD.jpg,QZrtjoWgjtQM.jpg,hO9MZfwgKtll.jpg', 'IYGl9JssJAcA.jpg,mZ2SeYnnwazD.jpg,QZrtjoWgjtQM.jpg,hO9MZfwgKtll.jpg', 1, NULL, NULL, 12, 122, 2, 2, 64, 1, 2, 5, 7, 3, 7, 2, NULL, '2020-06-25 03:51:41', '2020-06-25 07:07:23'),
(496, 'W0990G4', NULL, 10900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'guPqtEe0jKbj.jpg,rAg1zCQyG0h8.jpg,1y6U2xFoNrIi.jpg,7FGGS96ucftS.jpg', 'guPqtEe0jKbj.jpg,rAg1zCQyG0h8.jpg,1y6U2xFoNrIi.jpg,7FGGS96ucftS.jpg', 1, NULL, NULL, 12, 112, 3, 3, 64, 1, 2, 5, 2, 10, 21, 1, '38', '2020-06-25 03:51:41', '2020-06-25 07:07:25'),
(497, 'W0995G3', NULL, 11900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'rrfcxpCqTBEm.jpg,RHQgp1OkrAcb.jpg,cUDgrLQ5xamg.jpg', 'rrfcxpCqTBEm.jpg,RHQgp1OkrAcb.jpg,cUDgrLQ5xamg.jpg', 1, NULL, NULL, 12, 112, 2, 8, 47, 1, 2, 5, 3, 10, 21, 1, '67', '2020-06-25 03:51:41', '2020-06-25 07:07:27'),
(498, 'W1016L3', NULL, 12500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'kQAsiMvIK5b8.jpg,IBGBCdtscpnD.jpg,Rg2hKFTu4i0A.jpg', 'kQAsiMvIK5b8.jpg,IBGBCdtscpnD.jpg,Rg2hKFTu4i0A.jpg', 1, NULL, NULL, 12, 114, 7, 6, 67, 1, 2, 5, 13, 8, 11, 2, NULL, '2020-06-25 03:51:41', '2020-06-25 07:07:29'),
(499, 'W1020L3', NULL, 13400.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'A8BY3U9RCfqA.jpg,lIxaC7UXeegU.jpg', 'A8BY3U9RCfqA.jpg,lIxaC7UXeegU.jpg', 1, NULL, NULL, 12, 123, 2, 2, 63, 1, 2, 5, 5, 4, 19, 2, NULL, '2020-06-25 03:51:41', '2020-06-25 07:07:30'),
(500, 'W1053L1', NULL, 11900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'GrZUFsYQm9L5.jpg,duzQE9ybBvgi.jpg,YnRX5pLjHAR7.jpg', 'GrZUFsYQm9L5.jpg,duzQE9ybBvgi.jpg,YnRX5pLjHAR7.jpg', 1, NULL, NULL, 12, 114, 2, 2, 54, 1, 2, 5, 2, 7, 2, 2, NULL, '2020-06-25 03:51:41', '2020-06-25 07:07:31'),
(501, 'W1062L3', NULL, 10800.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'N4kcmmt4RzlY.jpg,K1IkYkaPFUpG.jpg,4SGicl4a2YyF.jpg,l6GmGEwqK9de.jpg', 'N4kcmmt4RzlY.jpg,K1IkYkaPFUpG.jpg,4SGicl4a2YyF.jpg,l6GmGEwqK9de.jpg', 1, NULL, NULL, 12, 114, 2, 2, 67, 1, 2, 5, 2, 10, 6, 2, NULL, '2020-06-25 03:51:41', '2020-06-25 07:07:34'),
(502, 'W1094L2', NULL, 10300.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'z9hVjPsjZh1w.jpg,Sfaqzy6qUhFR.jpg,ly52RX4D1n6v.jpg,qDktnXq9vGus.jpg', 'z9hVjPsjZh1w.jpg,Sfaqzy6qUhFR.jpg,ly52RX4D1n6v.jpg,qDktnXq9vGus.jpg', 1, NULL, NULL, 12, 124, 2, 2, 35, 1, 2, 5, 2, 7, 2, 2, NULL, '2020-06-25 03:51:41', '2020-06-25 07:07:37'),
(503, 'W1097L3', NULL, 12100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ZUIlJyz2s6AS.jpg,tPCRFwR1ev12.jpg,e0vXkc8IpKnl.jpg', 'ZUIlJyz2s6AS.jpg,tPCRFwR1ev12.jpg,e0vXkc8IpKnl.jpg', 1, NULL, NULL, 12, 125, 2, 2, 64, 1, 2, 5, 2, 4, 6, 2, NULL, '2020-06-25 03:51:41', '2020-06-25 07:07:38');
INSERT INTO `product_details` (`id`, `model_no`, `series`, `price`, `material`, `buckle`, `size`, `shape`, `frame_colour`, `lens`, `visible_ray`, `dimensions`, `nib`, `length_mm`, `taper`, `clasp_type`, `clasp_size`, `lock_system`, `description`, `warranty_period`, `meta_title`, `meta_description`, `meta_keyword`, `h1`, `status`, `featured_status`, `images`, `thumb_img`, `main_category_id`, `colour_id`, `clock_type_id`, `brand_id`, `collection_id`, `movement_id`, `movement_type_id`, `case_size_id`, `case_shape_id`, `case_material_id`, `glass_material_id`, `dial_colour_id`, `strap_material_id`, `strap_colour_id`, `gender_id`, `feature_id`, `created_at`, `updated_at`) VALUES
(504, 'W1098L6', NULL, 12900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'HpPJiN4AA5Kn.jpg,eAtignKggzON.jpg,ND1DD60fbYx8.jpg', 'HpPJiN4AA5Kn.jpg,eAtignKggzON.jpg,ND1DD60fbYx8.jpg', 1, NULL, NULL, 12, 126, 2, 1, 54, 1, 2, 5, 21, 7, 2, 2, '61', '2020-06-25 03:51:42', '2020-06-25 07:07:41'),
(505, 'W1105G3', NULL, 12900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'LHJ8NuuOYprd.jpg,mCUGmcZ2BLye.jpg,zgovHOYKqzTS.jpg,WJDGWUlum6jO.jpg', 'LHJ8NuuOYprd.jpg,mCUGmcZ2BLye.jpg,zgovHOYKqzTS.jpg,WJDGWUlum6jO.jpg', 1, NULL, NULL, 12, 126, 2, 1, 76, 1, 2, 5, 5, 3, 3, 1, '61', '2020-06-25 03:51:42', '2020-06-25 07:07:43'),
(506, 'W1105G4', NULL, 12900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'aeUGiWjjcHh2.jpg,xoON89yWluiZ.jpg,wI8TAXj4jz2W.jpg,XCca8wcb2fsE.jpg', 'aeUGiWjjcHh2.jpg,xoON89yWluiZ.jpg,wI8TAXj4jz2W.jpg,XCca8wcb2fsE.jpg', 1, NULL, NULL, 12, 126, 2, 1, 76, 1, 2, 5, 5, 3, 2, 1, '61', '2020-06-25 03:51:42', '2020-06-25 07:07:46'),
(507, 'W1143L2', NULL, 11200.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'U9ZbJ5cM1bn0.jpg,nHoTUNS9WoqH.jpg,HEPVNPcskJMY.jpg,VuzpMfkQ2Uc4.jpg', 'U9ZbJ5cM1bn0.jpg,nHoTUNS9WoqH.jpg,HEPVNPcskJMY.jpg,VuzpMfkQ2Uc4.jpg', 1, NULL, NULL, 12, 126, 2, 2, 63, 1, 2, 5, 11, 4, 4, 2, NULL, '2020-06-25 03:51:42', '2020-06-25 07:07:48'),
(508, 'W1143L3', NULL, 12300.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'qVvUjy5fjVf5.jpg,K4vhK2XX6LyF.jpg,qMWffqt4cO3Y.jpg,kjeou1yjOPGb.jpg', 'qVvUjy5fjVf5.jpg,K4vhK2XX6LyF.jpg,qMWffqt4cO3Y.jpg,kjeou1yjOPGb.jpg', 1, NULL, NULL, 12, 126, 2, 2, 63, 1, 2, 5, 8, 4, 6, 2, NULL, '2020-06-25 03:51:42', '2020-06-25 07:07:51'),
(509, 'W1145L3', NULL, 9200.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'd801slRUQgLM.jpg,9MocYRnpzegt.jpg,Ox5qNPpGIXsP.jpg,Yqtm3pyHBwNj.jpg', 'd801slRUQgLM.jpg,9MocYRnpzegt.jpg,Ox5qNPpGIXsP.jpg,Yqtm3pyHBwNj.jpg', 1, NULL, NULL, 12, 126, 2, 2, 67, 1, 2, 5, 11, 4, 11, 2, NULL, '2020-06-25 03:51:42', '2020-06-25 07:07:53'),
(510, 'W1157L3', NULL, 11500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'O62sChmLUBug.jpg,syJYYGNZHbVF.jpg,uE9VY5jotsyo.jpg,azBMpmAMcCq4.jpg', 'O62sChmLUBug.jpg,syJYYGNZHbVF.jpg,uE9VY5jotsyo.jpg,azBMpmAMcCq4.jpg', 1, NULL, NULL, 12, 126, 2, 2, 54, 1, 2, 5, 2, 7, 2, 2, NULL, '2020-06-25 03:51:42', '2020-06-25 07:07:55'),
(511, 'W1160L3', NULL, 11900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Kz7Utm6VhXol.jpg,VNQpcp51wZRL.jpg,KaU0E6XwlpYq.jpg', 'Kz7Utm6VhXol.jpg,VNQpcp51wZRL.jpg,KaU0E6XwlpYq.jpg', 1, NULL, NULL, 12, 126, 2, 2, 64, 1, 2, 5, 2, 7, 2, 2, NULL, '2020-06-25 03:51:42', '2020-06-25 07:07:57'),
(512, 'W1181G1', NULL, 10000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '90QH4ar2fibP.jpg,xCS7An6hOwHq.jpg,kCklMmZWRtkQ.jpg,RGO9HiTybkiK.jpg', '90QH4ar2fibP.jpg,xCS7An6hOwHq.jpg,kCklMmZWRtkQ.jpg,RGO9HiTybkiK.jpg', 1, NULL, NULL, 12, 126, 2, 2, 33, 1, 2, 5, 5, 3, 1, 1, NULL, '2020-06-25 03:51:42', '2020-06-25 07:08:00'),
(513, 'W1182G2', NULL, 9300.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '7zgnzyLaJAJJ.jpg,YPwXzsl1Y9zl.jpg,QYVmq57otbcy.jpg,cUjRxyPVvCt7.jpg', '7zgnzyLaJAJJ.jpg,YPwXzsl1Y9zl.jpg,QYVmq57otbcy.jpg,cUjRxyPVvCt7.jpg', 1, NULL, NULL, 12, 126, 2, 2, 34, 1, 2, 5, 5, 3, 2, 1, NULL, '2020-06-25 03:51:42', '2020-06-25 07:08:02'),
(514, 'W1208L2', NULL, 10200.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ONweLkEkITjt.jpg,lLs4u4BOTji2.jpg,rIGId4cAl8Qr.jpg,d0LKb2yV5HXD.jpg', 'ONweLkEkITjt.jpg,lLs4u4BOTji2.jpg,rIGId4cAl8Qr.jpg,d0LKb2yV5HXD.jpg', 1, NULL, NULL, 12, 126, 2, 2, 67, 1, 2, 5, 5, 4, 4, 2, NULL, '2020-06-25 03:51:42', '2020-06-25 07:08:05'),
(515, 'W1215G1', NULL, 12300.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Lnd658xbhiT5.jpg,MQCsL8CqOAL1.jpg,aPBFsz97Bq4s.jpg,Kk13LWkjwrbb.jpg', 'Lnd658xbhiT5.jpg,MQCsL8CqOAL1.jpg,aPBFsz97Bq4s.jpg,Kk13LWkjwrbb.jpg', 1, NULL, NULL, 12, 126, 2, 1, 62, 1, 2, 5, 5, 3, 3, 1, NULL, '2020-06-25 03:51:42', '2020-06-25 07:08:08'),
(516, 'W1228L1', NULL, 10500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'pQxFNQBZr4b2.jpg,0PVfG1BjuOkf.jpg,ZT9PoAhVatL3.jpg,Y4EyZy8s7w4o.jpg', 'pQxFNQBZr4b2.jpg,0PVfG1BjuOkf.jpg,ZT9PoAhVatL3.jpg,Y4EyZy8s7w4o.jpg', 1, NULL, NULL, 12, 126, 2, 2, 75, 1, 2, 5, 5, 4, 5, 2, NULL, '2020-06-25 03:51:42', '2020-06-25 07:08:10'),
(517, 'W1228L2', NULL, 11900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'vwvQWNIpZ5WG.jpg,goi3ZdH938Oa.jpg,EuVdvWYtyCt4.jpg,mGl3DQdWs3Wo.jpg', 'vwvQWNIpZ5WG.jpg,goi3ZdH938Oa.jpg,EuVdvWYtyCt4.jpg,mGl3DQdWs3Wo.jpg', 1, NULL, NULL, 12, 126, 2, 2, 75, 1, 2, 5, 11, 4, 4, 2, NULL, '2020-06-25 03:51:42', '2020-06-25 07:08:13'),
(518, 'W1250G2', NULL, 11500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'F4nOVbpFV9xY.jpg,tPYNqJmiYsuD.jpg,xVUuRzSfk49q.jpg,8hN98oP88Yyg.jpg', 'F4nOVbpFV9xY.jpg,tPYNqJmiYsuD.jpg,xVUuRzSfk49q.jpg,8hN98oP88Yyg.jpg', 1, NULL, NULL, 12, 126, 2, 2, 62, 1, 2, 5, 2, 7, 2, 1, NULL, '2020-06-25 03:51:42', '2020-06-25 07:08:17'),
(519, 'W1253G3', NULL, 10500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'DpkNubeYR6jl.jpg,WvaFxPrLjQjp.jpg,RJsh3AxtjcGd.jpg,B73EmqBTkuSk.jpg', 'DpkNubeYR6jl.jpg,WvaFxPrLjQjp.jpg,RJsh3AxtjcGd.jpg,B73EmqBTkuSk.jpg', 1, NULL, NULL, 12, 126, 2, 2, 37, 1, 2, 5, 2, 7, 2, 1, NULL, '2020-06-25 03:51:43', '2020-06-25 07:08:19'),
(520, 'W1261G3', NULL, 10500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'PTn8pYkhZZJu.jpg,BthhZ9uDmDIj.jpg,Q1UF7vcI5A70.jpg', 'PTn8pYkhZZJu.jpg,BthhZ9uDmDIj.jpg,Q1UF7vcI5A70.jpg', 1, NULL, NULL, 12, 126, 2, 1, 47, 1, 2, 5, 1, 3, 1, 1, '61', '2020-06-25 03:51:43', '2020-06-25 07:08:21'),
(521, 'W1261G4', NULL, 10900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 's8qyopEuGpje.jpg,fQ5ngI6lhIEk.jpg,YOXC5Mkkml4j.jpg,a4sW3zhUPnmU.jpg', 's8qyopEuGpje.jpg,fQ5ngI6lhIEk.jpg,YOXC5Mkkml4j.jpg,a4sW3zhUPnmU.jpg', 1, NULL, NULL, 12, 126, 2, 1, 47, 1, 2, 5, 5, 3, 2, 1, '61', '2020-06-25 03:51:43', '2020-06-25 07:08:23'),
(522, 'W1262G4', NULL, 11900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'NQ2dAGESyc6X.jpg,3nRTTAcZnPMG.jpg,VAIMO5No5V5B.jpg', 'NQ2dAGESyc6X.jpg,3nRTTAcZnPMG.jpg,VAIMO5No5V5B.jpg', 1, NULL, NULL, 12, 126, 2, 1, 37, 1, 2, 5, 5, 3, 2, 1, '61', '2020-06-25 03:51:43', '2020-06-25 07:08:25'),
(523, 'W1265L1', NULL, 10100.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'dU3MBfgvwTYx.jpg,PvjzGdDJL81h.jpg,F6Ckav9VlcVF.jpg,xB3w9EoNqTV8.jpg', 'dU3MBfgvwTYx.jpg,PvjzGdDJL81h.jpg,F6Ckav9VlcVF.jpg,xB3w9EoNqTV8.jpg', 1, NULL, NULL, 12, 126, 2, 1, 64, 1, 2, 5, 5, 7, 2, 2, '61', '2020-06-25 03:51:43', '2020-06-25 07:08:28'),
(524, 'R12413493', NULL, 55400.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '', '', 1, NULL, NULL, 13, 127, 2, 2, 75, 3, 5, 2, 11, 8, 11, 1, '13', '2020-06-25 03:51:43', '2020-06-24 23:06:03'),
(525, 'R48744723', NULL, 55900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Rpnea4EHnud4.jpg,GCVInlq0Sny1.jpg', 'Rpnea4EHnud4.jpg,GCVInlq0Sny1.jpg', 1, NULL, NULL, 13, 128, 2, 2, 72, 1, 2, 2, 1, 4, 5, 2, NULL, '2020-06-25 03:51:43', '2020-06-25 07:08:30'),
(526, 'R48792103', NULL, 46700.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'XZUiGKOuf9jO.jpg,qxyqKcAgSN4d.jpg,wKvhRgH0VlZx.jpg', 'XZUiGKOuf9jO.jpg,qxyqKcAgSN4d.jpg,wKvhRgH0VlZx.jpg', 1, NULL, NULL, 13, 128, 2, 2, 75, 1, 2, 2, 6, 4, 5, 2, '11', '2020-06-25 03:51:43', '2020-06-25 07:08:31'),
(527, 'R48868723', NULL, 68300.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'xofFdFwIEsp5.jpg', 'xofFdFwIEsp5.jpg', 1, NULL, NULL, 13, 128, 2, 2, 54, 1, 2, 2, 6, 8, 9, 1, '11', '2020-06-25 03:51:43', '2020-06-25 07:08:32'),
(528, 'R48869183', NULL, 72000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '9p7ThqAIpdQU.jpg,w6Y10ogttfel.jpg', '9p7ThqAIpdQU.jpg,w6Y10ogttfel.jpg', 1, NULL, NULL, 13, 128, 2, 2, 54, 1, 2, 2, 1, 10, 6, 1, '11', '2020-06-25 03:51:43', '2020-06-25 07:08:34'),
(529, 'R48869733', NULL, 68300.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 13, 128, 2, 2, 54, 1, 2, 2, 6, 10, 10, 1, '11', '2020-06-25 03:51:43', '2020-06-25 03:51:43'),
(530, 'R48872723', NULL, 68300.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'BT1hU2q8UNmZ.jpg', 'BT1hU2q8UNmZ.jpg', 1, NULL, NULL, 13, 128, 2, 2, 40, 1, 2, 2, 6, 8, 9, 2, '11', '2020-06-25 03:51:43', '2020-06-25 07:08:35'),
(531, 'R48873733', NULL, 68300.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'lWGY5ASARQSK.jpg', 'lWGY5ASARQSK.jpg', 1, NULL, NULL, 13, 128, 2, 2, 40, 1, 2, 2, 6, 10, 10, 2, '11', '2020-06-25 03:51:43', '2020-06-25 07:08:37'),
(532, 'FS5340', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'OqBxTzqyEqrt.jpg,moNXD09bR8xi.jpg,LmJ1rskDHRFW.jpg', 'OqBxTzqyEqrt.jpg,moNXD09bR8xi.jpg,LmJ1rskDHRFW.jpg', 1, NULL, NULL, 14, 129, 2, 2, 34, 1, 2, 5, 2, 4, 5, 1, '11', '2020-06-25 03:51:43', '2020-06-25 07:08:40'),
(533, 'FS5381', NULL, 10995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'etWhrj5M653b.jpg,IkwJGiQANhl2.jpg,xJd6t0Mb1EjN.jpg', 'etWhrj5M653b.jpg,IkwJGiQANhl2.jpg,xJd6t0Mb1EjN.jpg', 1, NULL, NULL, 14, 130, 2, 1, 47, 1, 2, 5, 1, 3, 3, 1, '58,61,11,46', '2020-06-25 03:51:44', '2020-06-25 07:08:42'),
(534, 'FS5562SET', NULL, 17995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '9YodolZAdTVH.jpg,JE5lGKLk3DvY.jpg,gdROfqwXLXwF.jpg,NEgJX1300Is9.jpg,DXL72Gldewip.jpg,tWGnjMi8TOGa.jpg', '9YodolZAdTVH.jpg,JE5lGKLk3DvY.jpg,gdROfqwXLXwF.jpg,NEgJX1300Is9.jpg,DXL72Gldewip.jpg,tWGnjMi8TOGa.jpg', 1, NULL, NULL, 14, 131, 2, 2, 34, 1, 2, 5, 5, 4, 5, 4, NULL, '2020-06-25 03:51:44', '2020-06-25 07:08:45'),
(535, 'FS5621', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'VNNYwyx2o6Ic.jpg,rM3pyNl5LGtC.jpg,JRwNhVBeesOc.jpg', 'VNNYwyx2o6Ic.jpg,rM3pyNl5LGtC.jpg,JRwNhVBeesOc.jpg', 1, NULL, NULL, 14, 132, 2, 1, 47, 1, 2, 5, 3, 4, 14, 1, '61', '2020-06-25 03:51:44', '2020-06-25 07:08:47'),
(536, 'FS5653', NULL, 9495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'eoGuMuk9AXE1.jpg,DD3Svp9os4Ef.jpg,73jJorb5JcZC.jpg', 'eoGuMuk9AXE1.jpg,DD3Svp9os4Ef.jpg,73jJorb5JcZC.jpg', 1, NULL, NULL, 14, 133, 2, 2, 34, 1, 2, 5, 1, 8, 9, 1, '11', '2020-06-25 03:51:44', '2020-06-25 07:08:50'),
(537, 'ME3098', NULL, 18495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'kQJJMJi0IQvt.jpg,O5c11cXY0gx3.jpg,pp7gW8z0L5hs.jpg', 'kQJJMJi0IQvt.jpg,O5c11cXY0gx3.jpg,pp7gW8z0L5hs.jpg', 1, NULL, NULL, 14, 134, 3, 3, 47, 1, 2, 5, 4, 3, 3, 1, NULL, '2020-06-25 03:51:44', '2020-06-25 07:08:52'),
(538, 'AM4141', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Nj6IfrrPpwZu.jpg,FrM0ZEg4yZNn.jpg', 'Nj6IfrrPpwZu.jpg,FrM0ZEg4yZNn.jpg', 1, NULL, NULL, 14, 135, 2, 2, 40, 1, 2, 5, 13, 4, 5, 2, '11', '2020-06-25 03:51:44', '2020-06-25 07:08:53'),
(539, 'AM4579', NULL, 11295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'wc9XmUDwnOEB.jpg,wa9sfYpn13LX.jpg,nJgIEnVdAW1L.jpg', 'wc9XmUDwnOEB.jpg,wa9sfYpn13LX.jpg,nJgIEnVdAW1L.jpg', 1, NULL, NULL, 14, 136, 2, 2, 42, 1, 2, 5, 13, 4, 5, 2, NULL, '2020-06-25 03:51:44', '2020-06-25 07:08:55'),
(540, 'CH2565', NULL, 8795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 14, 137, 2, 1, 37, 1, 2, 5, 5, 3, 3, 1, '58,61,11,29,46', '2020-06-25 03:51:44', '2020-06-25 03:51:44'),
(541, 'CH2573', NULL, 7795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'oMf11p4bTeAR.jpg,Dx5XWW8qcWvs.jpg,xMwitmgEkCSN.jpg', 'oMf11p4bTeAR.jpg,Dx5XWW8qcWvs.jpg,xMwitmgEkCSN.jpg', 1, NULL, NULL, 14, 138, 2, 1, 47, 1, 2, 5, 1, 7, 1, 1, '61,11,46,51', '2020-06-25 03:51:44', '2020-06-25 07:08:56'),
(542, 'CH2891', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'IbhxZ0Ne2Aaa.jpg,y8CL2ZAwX03Z.jpg,fNCrxcaotZWV.jpg', 'IbhxZ0Ne2Aaa.jpg,y8CL2ZAwX03Z.jpg,fNCrxcaotZWV.jpg', 1, NULL, NULL, 14, 137, 2, 1, 47, 1, 2, 5, 1, 3, 3, 1, '58,61,11', '2020-06-25 03:51:44', '2020-06-25 07:08:58'),
(543, 'CH3043', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'BLTuoasxF1uS.jpg,RJcpvNlJFpVf.jpg,46NwoklezxHK.jpg,GfaStbwEeWtz.jpg', 'BLTuoasxF1uS.jpg,RJcpvNlJFpVf.jpg,46NwoklezxHK.jpg,GfaStbwEeWtz.jpg', 1, NULL, NULL, 14, 139, 2, 1, 47, 1, 2, 5, 1, 3, 1, 1, '58,61,11,46', '2020-06-25 03:51:44', '2020-06-25 07:09:01'),
(544, 'CS5004SET', NULL, 13995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'CGICXb9mrTwU.jpg,Vk5xa6Pyg4II.jpg,NJzxHn6bn3fw.jpg,UcOTA9YLCKe9.jpg,Bi7F3EdqIlow.jpg,ocfeg0tQAFz6.jpg,PsrVNdpsT9JC.jpg', 'CGICXb9mrTwU.jpg,Vk5xa6Pyg4II.jpg,NJzxHn6bn3fw.jpg,UcOTA9YLCKe9.jpg,Bi7F3EdqIlow.jpg,ocfeg0tQAFz6.jpg,PsrVNdpsT9JC.jpg', 1, NULL, NULL, 14, 139, 2, 1, 47, 1, 2, 5, 1, 4, 1, 1, '58,61,11,46', '2020-06-25 03:51:44', '2020-06-25 07:09:06'),
(545, 'ES2362', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'y2MJouTH3LwJ.jpg,UDVejLtpnRoG.jpg,PecCqZ6lKK8q.jpg', 'y2MJouTH3LwJ.jpg,UDVejLtpnRoG.jpg,PecCqZ6lKK8q.jpg', 1, NULL, NULL, 14, 140, 2, 2, 67, 1, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:51:44', '2020-06-25 07:09:07'),
(546, 'ES2776', NULL, 7495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '9ICqR2mdckD9.jpg,YoCVXKAJ0g0x.jpg', '9ICqR2mdckD9.jpg,YoCVXKAJ0g0x.jpg', 1, NULL, NULL, 14, 140, 2, 2, 40, 4, 2, 5, 1, 3, 1, 2, NULL, '2020-06-25 03:51:44', '2020-06-25 07:09:09'),
(547, 'ES3060', NULL, 6495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'etzDPTUyz5Z6.jpg,FfOqxdKEOVSX.jpg,DVOTyRoZ61hE.jpg', 'etzDPTUyz5Z6.jpg,FfOqxdKEOVSX.jpg,DVOTyRoZ61hE.jpg', 1, NULL, NULL, 14, 141, 2, 2, 58, 1, 2, 5, 5, 3, 3, 2, NULL, '2020-06-25 03:51:44', '2020-06-25 07:09:11'),
(548, 'ES3077', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'OZFa4ow7xShq.jpg,dCvrGIhDKcmz.jpg,u2Za53ZvArs9.jpg', 'OZFa4ow7xShq.jpg,dCvrGIhDKcmz.jpg,u2Za53ZvArs9.jpg', 1, NULL, NULL, 14, 141, 2, 2, 58, 1, 2, 5, 1, 3, 14, 2, NULL, '2020-06-25 03:51:44', '2020-06-25 07:09:12'),
(549, 'ES3203', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'wNU3ApyfeNui.jpg,xWnGjO26aNlj.jpg,HE8tpyQVsgnV.jpg', 'wNU3ApyfeNui.jpg,xWnGjO26aNlj.jpg,HE8tpyQVsgnV.jpg', 1, NULL, NULL, 14, 142, 2, 2, 54, 1, 2, 5, 11, 8, 11, 2, NULL, '2020-06-25 03:51:44', '2020-06-25 07:09:14'),
(550, 'ES3225', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '47Z8vH4aRfpC.jpg,PwFPNgklUFtq.jpg,5BOF6S0xNoC7.jpg', '47Z8vH4aRfpC.jpg,PwFPNgklUFtq.jpg,5BOF6S0xNoC7.jpg', 1, NULL, NULL, 14, 141, 2, 2, 58, 1, 2, 5, 5, 4, 5, 2, NULL, '2020-06-25 03:51:45', '2020-06-25 07:09:16'),
(551, 'ES3226', NULL, 10995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'xb5y7lRd25YV.jpg,sbB9Dn2c9y4U.jpg,XRRj2PvYQTQb.jpg', 'xb5y7lRd25YV.jpg,sbB9Dn2c9y4U.jpg,XRRj2PvYQTQb.jpg', 1, NULL, NULL, 14, 141, 2, 2, 58, 1, 2, 5, 8, 10, 6, 2, NULL, '2020-06-25 03:51:45', '2020-06-25 07:09:18'),
(552, 'ES3268', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'NVTUeYhBLcqa.jpg,ALYeMQ7jWnMp.jpg', 'NVTUeYhBLcqa.jpg,ALYeMQ7jWnMp.jpg', 1, NULL, NULL, 14, 141, 2, 2, 74, 1, 2, 5, 8, 10, 6, 2, NULL, '2020-06-25 03:51:45', '2020-06-25 07:09:19'),
(553, 'ES3284', NULL, 8295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'FxonKMueeCwF.jpg,xUf9nqNJ4yZK.jpg,s0woQFLJsua9.jpg', 'FxonKMueeCwF.jpg,xUf9nqNJ4yZK.jpg,s0woQFLJsua9.jpg', 1, NULL, NULL, 14, 143, 2, 2, 42, 1, 2, 5, 6, 10, 6, 2, NULL, '2020-06-25 03:51:45', '2020-06-25 07:09:21'),
(554, 'ES3405', NULL, 9495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'vBqKcKSLXoCi.jpg,ByCNqkiuyrmr.jpg,AQ2qRqWJxq3L.jpg', 'vBqKcKSLXoCi.jpg,ByCNqkiuyrmr.jpg,AQ2qRqWJxq3L.jpg', 1, NULL, NULL, 14, 143, 2, 2, 42, 1, 2, 5, 8, 10, 6, 2, NULL, '2020-06-25 03:51:45', '2020-06-25 07:09:23'),
(555, 'ES3466', NULL, 10995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'E1pVghFE3jwS.jpg,cQyqquPqs9x8.jpg,fYEmOjacBw2c.jpg', 'E1pVghFE3jwS.jpg,cQyqquPqs9x8.jpg,fYEmOjacBw2c.jpg', 1, NULL, NULL, 14, 142, 2, 2, 54, 1, 2, 5, 5, 3, 3, 2, NULL, '2020-06-25 03:51:45', '2020-06-25 07:09:24'),
(556, 'ES3707', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'dnnyC2jQlvcw.jpg,AughN8GceM3O.jpg,6wGzlgHdPhzC.jpg', 'dnnyC2jQlvcw.jpg,AughN8GceM3O.jpg,6wGzlgHdPhzC.jpg', 1, NULL, NULL, 14, 144, 2, 2, 63, 1, 2, 5, 8, 3, 3, 2, '11', '2020-06-25 03:51:45', '2020-06-25 07:09:26'),
(557, 'ES3797', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '8dxkhRWQY0X6.jpg,4xPZx71dYHxL.jpg,IcB9tMCPX1s1.jpg', '8dxkhRWQY0X6.jpg,4xPZx71dYHxL.jpg,IcB9tMCPX1s1.jpg', 1, NULL, NULL, 14, 144, 2, 2, 74, 1, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:51:45', '2020-06-25 07:09:28'),
(558, 'ES3838', NULL, 10995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'pPfjYJzx8A8b.jpg,vcnFPA1xF8yC.jpg,sC8jbdI6eRX6.jpg', 'pPfjYJzx8A8b.jpg,vcnFPA1xF8yC.jpg,sC8jbdI6eRX6.jpg', 1, NULL, NULL, 14, 145, 2, 1, 54, 1, 2, 5, 6, 3, 2, 2, '58,61,11,46', '2020-06-25 03:51:45', '2020-06-25 07:09:30'),
(559, 'ES3843', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'wbRsXeje3d2o.jpg,bAzdH5pGRVdJ.jpg,SjkAnbzc4xQm.jpg,2Jolyf9E2Xjr.jpg', 'wbRsXeje3d2o.jpg,bAzdH5pGRVdJ.jpg,SjkAnbzc4xQm.jpg,2Jolyf9E2Xjr.jpg', 1, NULL, NULL, 14, 144, 2, 2, 63, 1, 2, 5, 5, 3, 2, 2, '11', '2020-06-25 03:51:45', '2020-06-25 07:09:32'),
(560, 'ES3920SET', NULL, 30995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '7MVoqgyKILSX.jpg,ktM6waOOq076.jpg,eDaMZ6d3MuO5.jpg,s3A7nZ14siIe.jpg,WEIPNFkfQvNZ.jpg,he0395lAposR.jpg', '7MVoqgyKILSX.jpg,ktM6waOOq076.jpg,eDaMZ6d3MuO5.jpg,s3A7nZ14siIe.jpg,WEIPNFkfQvNZ.jpg,he0395lAposR.jpg', 1, NULL, NULL, 14, 144, 2, 2, 63, 1, 2, 5, 5, 4, 5, 2, '11', '2020-06-25 03:51:45', '2020-06-25 07:09:35'),
(561, 'ES3965SET', NULL, 10995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'RcyLOXQZqdP2.jpg,Tb5R9HwOqbuW.jpg,Fn6qJVwNQauq.jpg,iZRyIAnNVTjt.jpg', 'RcyLOXQZqdP2.jpg,Tb5R9HwOqbuW.jpg,Fn6qJVwNQauq.jpg,iZRyIAnNVTjt.jpg', 1, NULL, NULL, 14, 143, 2, 2, 42, 1, 2, 5, 14, 19, 6, 2, NULL, '2020-06-25 03:51:46', '2020-06-25 07:09:38'),
(562, 'ES3988', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'mdydGzLItfdD.jpg,pl3tF5JHIJJg.jpg,POYpTNVoiLoh.jpg', 'mdydGzLItfdD.jpg,pl3tF5JHIJJg.jpg,POYpTNVoiLoh.jpg', 1, NULL, NULL, 14, 144, 2, 2, 63, 1, 2, 5, 5, 3, 18, 2, '11', '2020-06-25 03:51:46', '2020-06-25 07:09:39'),
(563, 'ES4094', NULL, 10995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'kg1hEdh9vq0M.jpg,bh741xfWQ5wA.jpg,MLmNDfvcrdYU.jpg,UKIvYL8N2Vcx.jpg', 'kg1hEdh9vq0M.jpg,bh741xfWQ5wA.jpg,MLmNDfvcrdYU.jpg,UKIvYL8N2Vcx.jpg', 1, NULL, NULL, 14, 144, 2, 2, 63, 1, 7, 5, 2, 15, 2, 2, '11', '2020-06-25 03:51:46', '2020-06-25 07:09:41'),
(564, 'ES4246', NULL, 12795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '8zHMnmIHBOHE.jpg,QY7MGlUKqVwi.jpg,jJ6jqHb3y0I7.jpg', '8zHMnmIHBOHE.jpg,QY7MGlUKqVwi.jpg,jJ6jqHb3y0I7.jpg', 1, NULL, NULL, 14, 146, 2, 2, 64, 1, 8, 5, 5, 10, 6, 2, '58', '2020-06-25 03:51:46', '2020-06-25 07:09:43'),
(565, 'ES4274', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'iFqFpCDgnH27.jpg,SAO8AqcBqv9u.jpg,3b2z65t2WEMf.jpg', 'iFqFpCDgnH27.jpg,SAO8AqcBqv9u.jpg,3b2z65t2WEMf.jpg', 1, NULL, NULL, 14, 144, 2, 2, 63, 1, 8, 5, 2, 3, 3, 2, '11', '2020-06-25 03:51:46', '2020-06-25 07:09:45'),
(566, 'ES4312', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'mOSsSLXXWvRn.jpg,JeK0TxOw5vLQ.jpg,LIXhu6juUblk.jpg,Di7IE6Qc4T27.jpg', 'mOSsSLXXWvRn.jpg,JeK0TxOw5vLQ.jpg,LIXhu6juUblk.jpg,Di7IE6Qc4T27.jpg', 1, NULL, NULL, 14, 147, 2, 2, 67, 1, 7, 5, 2, 15, 2, 2, NULL, '2020-06-25 03:51:46', '2020-06-25 07:09:46'),
(567, 'ES4313', NULL, 10995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'AaggVcVZOI9Y.jpg,BEHsqHGvYOmR.jpg,GAXyJRelfIRD.jpg', 'AaggVcVZOI9Y.jpg,BEHsqHGvYOmR.jpg,GAXyJRelfIRD.jpg', 1, NULL, NULL, 14, 147, 2, 2, 67, 1, 2, 5, 13, 4, 5, 2, NULL, '2020-06-25 03:51:46', '2020-06-25 07:09:48'),
(568, 'ES4315', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '9FwwdNQ8sxSx.jpg,F4urh6Bw5pwZ.jpg,VLeReHefggju.jpg', '9FwwdNQ8sxSx.jpg,F4urh6Bw5pwZ.jpg,VLeReHefggju.jpg', 1, NULL, NULL, 14, 148, 2, 2, 54, 1, 8, 5, 8, 10, 6, 2, '58,13', '2020-06-25 03:51:46', '2020-06-25 07:09:50'),
(569, 'ES4319', NULL, 9195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'RxPWPj9ySAeG.jpg,nahUg7e4zfoP.jpg,wBTv0UoymmG7.jpg', 'RxPWPj9ySAeG.jpg,nahUg7e4zfoP.jpg,wBTv0UoymmG7.jpg', 1, NULL, NULL, 14, 148, 2, 2, 58, 1, 2, 5, 6, 8, 10, 2, '11', '2020-06-25 03:51:46', '2020-06-25 07:09:51'),
(570, 'ES4322', NULL, 10195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'GmYnYd6dBhDk.jpg,fpU8Tj8ZcU87.jpg', 'GmYnYd6dBhDk.jpg,fpU8Tj8ZcU87.jpg', 1, NULL, NULL, 14, 144, 2, 2, 63, 1, 2, 5, 13, 4, 2, 2, '11', '2020-06-25 03:51:46', '2020-06-25 07:09:53'),
(571, 'ES4333', NULL, 10995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'lGbnxpESkESS.jpg,BGY0lyxH3Nuu.jpg,WJ82hlgTNbpF.jpg,FLsVQeTjxdYe.jpg', 'lGbnxpESkESS.jpg,BGY0lyxH3Nuu.jpg,WJ82hlgTNbpF.jpg,FLsVQeTjxdYe.jpg', 1, NULL, NULL, 14, 149, 2, 2, 67, 1, 8, 5, 8, 10, 6, 2, '11', '2020-06-25 03:51:46', '2020-06-25 07:09:55'),
(572, 'ES4351', NULL, 9495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'YE4e0HhXHAuE.jpg', 'YE4e0HhXHAuE.jpg', 1, NULL, NULL, 14, 144, 2, 2, 63, 1, 2, 5, 5, 3, 18, 2, '68', '2020-06-25 03:51:46', '2020-06-25 07:09:55'),
(573, 'ES4393', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'c80gd6VVc2a2.jpg,zEGr0Yg9xEVg.jpg,19FCUMJpkMa4.jpg', 'c80gd6VVc2a2.jpg,zEGr0Yg9xEVg.jpg,19FCUMJpkMa4.jpg', 1, NULL, NULL, 14, 150, 2, 2, 75, 1, 2, 5, 6, 3, 16, 2, '13', '2020-06-25 03:51:46', '2020-06-25 07:09:57'),
(574, 'ES4428', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'NcGo3K3rA28J.jpg,TJOBuc9rLkZS.jpg,yxg8IgX4Mxje.jpg', 'NcGo3K3rA28J.jpg,TJOBuc9rLkZS.jpg,yxg8IgX4Mxje.jpg', 1, NULL, NULL, 14, 151, 2, 2, 75, 1, 2, 5, 6, 3, 3, 2, NULL, '2020-06-25 03:51:46', '2020-06-25 07:09:59'),
(575, 'ES4438', NULL, 12495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'MpZTDa4fDOkx.jpg,lNUCxJ8uVhoo.jpg,x8qMBfwy2g2Q.jpg', 'MpZTDa4fDOkx.jpg,lNUCxJ8uVhoo.jpg,x8qMBfwy2g2Q.jpg', 1, NULL, NULL, 14, 144, 2, 2, 63, 1, 8, 5, 8, 10, 6, 2, NULL, '2020-06-25 03:51:46', '2020-06-25 07:10:01'),
(576, 'ES4507', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Wpu948UcLROX.jpg,t1ueWo7JoOLt.jpg,BCq3xb4PWjQ3.jpg', 'Wpu948UcLROX.jpg,t1ueWo7JoOLt.jpg,BCq3xb4PWjQ3.jpg', 1, NULL, NULL, 14, 151, 2, 2, 75, 1, 8, 5, 1, 3, 1, 2, NULL, '2020-06-25 03:51:47', '2020-06-25 07:10:02'),
(577, 'ES4519', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'tfVyGpeYPSVl.jpg,gQt4sfrcqFYL.jpg,Tr9lVRjasCtz.jpg', 'tfVyGpeYPSVl.jpg,gQt4sfrcqFYL.jpg,Tr9lVRjasCtz.jpg', 1, NULL, NULL, 14, 142, 2, 2, 54, 1, 9, 5, 1, 9, 1, 2, '58,13', '2020-06-25 03:51:47', '2020-06-25 07:10:04'),
(578, 'ES4579', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'OJUhskzjtJ7K.jpg,2cfU1JlWkOzG.jpg,j72sPs89ssCs.jpg', 'OJUhskzjtJ7K.jpg,2cfU1JlWkOzG.jpg,j72sPs89ssCs.jpg', 1, NULL, NULL, 14, 144, 2, 2, 63, 1, 8, 5, 13, 3, 7, 2, '11', '2020-06-25 03:51:47', '2020-06-25 07:10:06'),
(579, 'ES4613', NULL, 7795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'SxFYY5BKW5pA.jpg,TmQIVb64uXy7.jpg,VpoHjE4Dwod3.jpg', 'SxFYY5BKW5pA.jpg,TmQIVb64uXy7.jpg,VpoHjE4Dwod3.jpg', 1, NULL, NULL, 14, 151, 2, 2, 40, 1, 9, 5, 13, 9, 1, 2, NULL, '2020-06-25 03:51:47', '2020-06-25 07:10:08'),
(580, 'ES4628', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'faoEDZNkl0n1.jpg,WdPPG7LU7vVh.jpg,Rn5skNE4NefL.jpg', 'faoEDZNkl0n1.jpg,WdPPG7LU7vVh.jpg,Rn5skNE4NefL.jpg', 1, NULL, NULL, 14, 144, 2, 2, 63, 1, 8, 5, 8, 10, 6, 2, '11', '2020-06-25 03:51:47', '2020-06-25 07:10:09'),
(581, 'ES4640', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'jHgbQer1u8kV.jpg,yq3WlQEHX7wV.jpg,WPMCsegJIVVT.jpg', 'jHgbQer1u8kV.jpg,yq3WlQEHX7wV.jpg,WPMCsegJIVVT.jpg', 1, NULL, NULL, 14, 152, 2, 2, 35, 1, 2, 5, 2, 10, 6, 2, NULL, '2020-06-25 03:51:47', '2020-06-25 07:10:11'),
(582, 'ES4642', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 's48jk9STlrNK.jpg,umvFOECzEWWi.jpg,dnBbWjJ6yVM0.jpg', 's48jk9STlrNK.jpg,umvFOECzEWWi.jpg,dnBbWjJ6yVM0.jpg', 1, NULL, NULL, 14, 152, 2, 2, 54, 1, 2, 5, 1, 3, 1, 2, NULL, '2020-06-25 03:51:47', '2020-06-25 07:10:13'),
(583, 'ES4648', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'gCAVSP6pLa7U.jpg,1S90ZSD28tGI.jpg,KtW8en6SkHMW.jpg', 'gCAVSP6pLa7U.jpg,1S90ZSD28tGI.jpg,KtW8en6SkHMW.jpg', 1, NULL, NULL, 14, 151, 2, 2, 40, 1, 8, 5, 13, 10, 6, 2, NULL, '2020-06-25 03:51:47', '2020-06-25 07:10:15'),
(584, 'ES4651', NULL, 6495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'rGtomUWnTvl5.jpg,qv2BohCV6zS0.jpg,IN2S4ULnSlxu.jpg', 'rGtomUWnTvl5.jpg,qv2BohCV6zS0.jpg,IN2S4ULnSlxu.jpg', 1, NULL, NULL, 14, 151, 2, 2, 40, 1, 2, 5, 10, 3, 1, 2, NULL, '2020-06-25 03:51:47', '2020-06-25 07:10:17'),
(585, 'ES4663', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'lf3ddBqsxmCQ.jpg,y5r6mvDXExUp.jpg,dhJzrYXiEvtU.jpg', 'lf3ddBqsxmCQ.jpg,y5r6mvDXExUp.jpg,dhJzrYXiEvtU.jpg', 1, NULL, NULL, 14, 153, 2, 2, 63, 1, 2, 5, 2, 3, 1, 2, NULL, '2020-06-25 03:51:47', '2020-06-25 07:10:18'),
(586, 'ES4665', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'SYMVK2FV9f0M.jpg,gi1ChopYFdt0.jpg,eRaHjZDl7A71.jpg', 'SYMVK2FV9f0M.jpg,gi1ChopYFdt0.jpg,eRaHjZDl7A71.jpg', 1, NULL, NULL, 14, 153, 2, 2, 63, 1, 8, 5, 22, 3, 23, 2, '46', '2020-06-25 03:51:47', '2020-06-25 07:10:20'),
(587, 'ES4693', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'zePHy4gavyUZ.jpg,iwjxpvzyo8J5.jpg,taF04lphbBef.jpg', 'zePHy4gavyUZ.jpg,iwjxpvzyo8J5.jpg,taF04lphbBef.jpg', 1, NULL, NULL, 14, 151, 2, 2, 40, 1, 2, 5, 13, 10, 6, 2, NULL, '2020-06-25 03:51:47', '2020-06-25 07:10:22'),
(588, 'ES4713', NULL, 10995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ZWwYPtgDkZJT.jpg,VShyQeyqxBJ0.jpg,Qi4RiXuqH1ZU.jpg', 'ZWwYPtgDkZJT.jpg,VShyQeyqxBJ0.jpg,Qi4RiXuqH1ZU.jpg', 1, NULL, NULL, 14, 154, 2, 2, 58, 1, 9, 5, 1, 9, 1, 2, NULL, '2020-06-25 03:51:47', '2020-06-25 07:10:24'),
(589, 'ES4723', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'nxlzXPwVSmGx.jpg,porxN3vRitOp.jpg,dzWuPKFjCVCI.jpg', 'nxlzXPwVSmGx.jpg,porxN3vRitOp.jpg,dzWuPKFjCVCI.jpg', 1, NULL, NULL, 14, 144, 2, 2, 63, 1, 2, 5, 23, 10, 6, 2, '11', '2020-06-25 03:51:47', '2020-06-25 07:10:26'),
(590, 'FS4487', NULL, 9495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'eWAlLzh4rgiK.jpg,IwVEnbCkuc7F.jpg,AKYmuj31vXTu.jpg', 'eWAlLzh4rgiK.jpg,IwVEnbCkuc7F.jpg,AKYmuj31vXTu.jpg', 1, NULL, NULL, 14, 129, 2, 1, 37, 1, 3, 5, 1, 7, 1, 1, '58,61,11,46', '2020-06-25 03:51:47', '2020-06-25 07:10:27'),
(591, 'FS4552', NULL, 11295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'eiobNJij0AW2.jpg,n8yb3zoLRHFa.jpg,cXdlhELCJ90G.jpg,9UL5sauUhtCw.jpg', 'eiobNJij0AW2.jpg,n8yb3zoLRHFa.jpg,cXdlhELCJ90G.jpg,9UL5sauUhtCw.jpg', 1, NULL, NULL, 14, 129, 2, 1, 37, 1, 9, 5, 1, 9, 1, 1, '58,61,11,46', '2020-06-25 03:51:47', '2020-06-25 07:10:29'),
(592, 'FS4721', NULL, 10795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'BCAL6BQ6mZ0f.jpg,qPbcOe16pMnM.jpg,D2TtdhsUOwiR.jpg', 'BCAL6BQ6mZ0f.jpg,qPbcOe16pMnM.jpg,D2TtdhsUOwiR.jpg', 1, NULL, NULL, 14, 155, 2, 1, 37, 1, 10, 5, 1, 12, 14, 1, '58,61,11,29,46', '2020-06-25 03:51:48', '2020-06-25 07:10:31'),
(593, 'FS4735', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'g5XBHbRlU0UN.jpg,TMtFO5Tn6BvM.jpg,4T5Da5m4AIm8.jpg', 'g5XBHbRlU0UN.jpg,TMtFO5Tn6BvM.jpg,4T5Da5m4AIm8.jpg', 1, NULL, NULL, 14, 156, 2, 1, 47, 1, 2, 5, 12, 3, 3, 1, '58,61,29,46', '2020-06-25 03:51:48', '2020-06-25 07:10:33'),
(594, 'FS4736', NULL, 9795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'aJCWuAx9mjM3.jpg,1gMRh1RQIwWY.jpg,gGbedonegM3W.jpg', 'aJCWuAx9mjM3.jpg,1gMRh1RQIwWY.jpg,gGbedonegM3W.jpg', 1, NULL, NULL, 14, 156, 2, 1, 47, 1, 2, 5, 1, 4, 5, 1, '58,61,29,46', '2020-06-25 03:51:48', '2020-06-25 07:10:35'),
(595, 'FS4774', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'J2pq0C9zLYwH.jpg,u3dWBntovBKa.jpg,ZkuXKeXZHHG8.jpg', 'J2pq0C9zLYwH.jpg,u3dWBntovBKa.jpg,ZkuXKeXZHHG8.jpg', 1, NULL, NULL, 14, 129, 2, 2, 34, 1, 2, 5, 1, 4, 1, 1, '11', '2020-06-25 03:51:48', '2020-06-25 07:10:36'),
(596, 'FS4813', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'dF8N843Zz0Ov.jpg,kOqLnVoguXSI.jpg,dfKLxLROfUnT.jpg', 'dF8N843Zz0Ov.jpg,kOqLnVoguXSI.jpg,dfKLxLROfUnT.jpg', 1, NULL, NULL, 14, 156, 2, 1, 47, 1, 2, 5, 1, 3, 3, 1, '58,61,29,46', '2020-06-25 03:51:48', '2020-06-25 07:10:38'),
(597, 'FS4835', NULL, 10995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'hcNoSmTEN8mL.jpg,ypIPLyEPiBIu.jpg,yuzcSfWpHDoP.jpg', 'hcNoSmTEN8mL.jpg,ypIPLyEPiBIu.jpg,yuzcSfWpHDoP.jpg', 1, NULL, NULL, 14, 156, 2, 1, 47, 1, 2, 5, 2, 3, 2, 1, '58,61,29,46', '2020-06-25 03:51:48', '2020-06-25 07:10:40'),
(598, 'FS4931', NULL, 12495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'qgK3klVXRGw8.jpg,bk8lPiMz2bCX.jpg,SWudRvTNBI90.jpg', 'qgK3klVXRGw8.jpg,bk8lPiMz2bCX.jpg,SWudRvTNBI90.jpg', 1, NULL, NULL, 14, 129, 2, 1, 37, 1, 11, 5, 1, 13, 14, 1, '58,61,29,46', '2020-06-25 03:51:49', '2020-06-25 07:10:42'),
(599, 'FS4991', NULL, 10995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'EV7TVP48oxWV.jpg,h1PK9geDfrPG.jpg,KqdAlG8yrDPQ.jpg', 'EV7TVP48oxWV.jpg,h1PK9geDfrPG.jpg,KqdAlG8yrDPQ.jpg', 1, NULL, NULL, 14, 156, 2, 1, 47, 1, 8, 5, 12, 3, 3, 1, '58,61,29,46', '2020-06-25 03:51:49', '2020-06-25 07:10:44'),
(600, 'FS5048', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'lvFd0uQ9HDuI.jpg,aLlxcWDTWzAr.jpg,KaWjbFZWb6ei.jpg', 'lvFd0uQ9HDuI.jpg,aLlxcWDTWzAr.jpg,KaWjbFZWb6ei.jpg', 1, NULL, NULL, 14, 157, 2, 2, 33, 1, 2, 5, 2, 4, 5, 1, '11', '2020-06-25 03:51:49', '2020-06-25 07:10:45'),
(601, 'FS5061', NULL, 10995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'RoKQACcWj4z0.jpg,pFsu0LbJMFrG.jpg,F0xjV9aK70nh.jpg', 'RoKQACcWj4z0.jpg,pFsu0LbJMFrG.jpg,F0xjV9aK70nh.jpg', 1, NULL, NULL, 14, 156, 2, 1, 47, 1, 10, 5, 1, 3, 2, 1, '58,61,29,46', '2020-06-25 03:51:49', '2020-06-25 07:10:47'),
(602, 'FS5066', NULL, 13795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'XgYR1gbXvJVw.jpg,9LV9Nzse1QqC.jpg,RLH4rZvLdUZO.jpg', 'XgYR1gbXvJVw.jpg,9LV9Nzse1QqC.jpg,RLH4rZvLdUZO.jpg', 1, NULL, NULL, 14, 129, 2, 1, 37, 1, 2, 5, 1, 3, 2, 1, '61,11', '2020-06-25 03:51:49', '2020-06-25 07:10:49'),
(603, 'FS5151', NULL, 10395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'UtEQkT4od1TL.jpg,vzaEZfB98wpx.jpg,TuEPvZ13DWqi.jpg,VMAOAt0eBnPi.jpg', 'UtEQkT4od1TL.jpg,vzaEZfB98wpx.jpg,TuEPvZ13DWqi.jpg,VMAOAt0eBnPi.jpg', 1, NULL, NULL, 14, 156, 2, 1, 47, 1, 10, 5, 2, 3, 3, 1, '58,61,29,46', '2020-06-25 03:51:49', '2020-06-25 07:10:51'),
(604, 'FS5280', NULL, 9495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Blvr5UM1u86a.jpg,1ywPPYOUV260.jpg,2Cdtv00LeF7z.jpg,JyPpQVYqy0VJ.jpg', 'Blvr5UM1u86a.jpg,1ywPPYOUV260.jpg,2Cdtv00LeF7z.jpg,JyPpQVYqy0VJ.jpg', 1, NULL, NULL, 14, 134, 2, 1, 47, 1, 2, 5, 1, 3, 3, 1, '61,46', '2020-06-25 03:51:49', '2020-06-25 07:10:53'),
(605, 'FS5305', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'NpF1itwnWKfk.jpg,qtUtIwHiPveP.jpg,jwlPqPBCgF77.jpg,LDLewUE9F2VG.jpg', 'NpF1itwnWKfk.jpg,qtUtIwHiPveP.jpg,jwlPqPBCgF77.jpg,LDLewUE9F2VG.jpg', 1, NULL, NULL, 14, 158, 2, 2, 47, 1, 9, 5, 1, 3, 3, 1, NULL, '2020-06-25 03:51:49', '2020-06-25 07:10:55'),
(606, 'FS5308', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'rfAiMDmKdb8K.jpg,ybvHAeslYqcp.jpg,yKpVYopptAcf.jpg', 'rfAiMDmKdb8K.jpg,ybvHAeslYqcp.jpg,yKpVYopptAcf.jpg', 1, NULL, NULL, 14, 158, 2, 2, 47, 1, 9, 5, 1, 9, 1, 1, NULL, '2020-06-25 03:51:49', '2020-06-25 07:10:57'),
(607, 'FS5322', NULL, 12795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'FgPmK8e7l2gg.jpg,2ouMk0E789WX.jpg', 'FgPmK8e7l2gg.jpg,2ouMk0E789WX.jpg', 1, NULL, NULL, 14, 129, 2, 1, 37, 1, 5, 5, 1, 3, 3, 1, '58,61,11,46', '2020-06-25 03:51:49', '2020-06-25 07:10:58'),
(608, 'FS5376', NULL, 8295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'RXrixnutLN0q.jpg,Y6ORnBV8iVi2.jpg,59AeVpaNZUDm.jpg', 'RXrixnutLN0q.jpg,Y6ORnBV8iVi2.jpg,59AeVpaNZUDm.jpg', 1, NULL, NULL, 14, 158, 2, 2, 47, 1, 8, 5, 1, 3, 1, 1, NULL, '2020-06-25 03:51:49', '2020-06-25 07:10:59'),
(609, 'FS5384', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '4xai2Q6vpsA3.jpg,X8Je6dWKQbpb.jpg,YdMw5OkZjcz1.jpg', '4xai2Q6vpsA3.jpg,X8Je6dWKQbpb.jpg,YdMw5OkZjcz1.jpg', 1, NULL, NULL, 14, 130, 2, 1, 47, 1, 2, 5, 1, 4, 5, 1, '58,61,11,46', '2020-06-25 03:51:50', '2020-06-25 07:11:01'),
(610, 'FS5391', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'dyGYTJHtwxm2.jpg,WkU0fvBH139v.jpg,8xgvtbZdFe6N.jpg', 'dyGYTJHtwxm2.jpg,WkU0fvBH139v.jpg,8xgvtbZdFe6N.jpg', 1, NULL, NULL, 14, 159, 2, 2, 34, 1, 2, 5, 1, 4, 5, 1, '11', '2020-06-25 03:51:50', '2020-06-25 07:11:03'),
(611, 'FS5403', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'rRqnYm1EUpVH.jpg,0JQKwvCAtETB.jpg', 'rRqnYm1EUpVH.jpg,0JQKwvCAtETB.jpg', 1, NULL, NULL, 14, 159, 2, 1, 34, 1, 9, 5, 4, 3, 3, 1, '61,11,46', '2020-06-25 03:51:50', '2020-06-25 07:11:04'),
(612, 'FS5436', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'tl1OLzSnWaLr.jpg,WpQTLcuGk9fQ.jpg,cFQvs8rbGFap.jpg', 'tl1OLzSnWaLr.jpg,WpQTLcuGk9fQ.jpg,cFQvs8rbGFap.jpg', 1, NULL, NULL, 14, 134, 2, 1, 47, 1, 8, 5, 2, 3, 2, 1, '29,46', '2020-06-25 03:51:50', '2020-06-25 07:11:06'),
(613, 'FS5468', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ugUcpEny4wOe.jpg,vHvtzxQDAIhJ.jpg,20o6ktZCInMA.jpg', 'ugUcpEny4wOe.jpg,vHvtzxQDAIhJ.jpg,20o6ktZCInMA.jpg', 1, NULL, NULL, 14, 134, 2, 1, 47, 1, 8, 5, 5, 3, 3, 1, '61', '2020-06-25 03:51:50', '2020-06-25 07:11:07'),
(614, 'FS5475', NULL, 12495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '6w7Ecxd9dLAO.jpg,t1UCs6cI6tt0.jpg,5Hd6E6vb4OtH.jpg', '6w7Ecxd9dLAO.jpg,t1UCs6cI6tt0.jpg,5Hd6E6vb4OtH.jpg', 1, NULL, NULL, 14, 130, 2, 1, 47, 1, 2, 5, 5, 10, 10, 1, '61,11', '2020-06-25 03:51:50', '2020-06-25 07:11:09'),
(615, 'FS5479', NULL, 9495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'aGZITb2gx0kn.jpg,o1iwwsRsA5ox.jpg,1HV2kboNHRKo.jpg', 'aGZITb2gx0kn.jpg,o1iwwsRsA5ox.jpg,1HV2kboNHRKo.jpg', 1, NULL, NULL, 14, 158, 2, 2, 47, 1, 12, 5, 3, 3, 3, 1, NULL, '2020-06-25 03:51:50', '2020-06-25 07:11:11'),
(616, 'FS5580', NULL, 10995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'FxuW3OvO0QcP.jpg,56286gYFWjMw.jpg,t0JmQhVN6A9J.jpg', 'FxuW3OvO0QcP.jpg,56286gYFWjMw.jpg,t0JmQhVN6A9J.jpg', 1, NULL, NULL, 14, 130, 2, 1, 47, 1, 2, 5, 7, 3, 1, 1, '61,11', '2020-06-25 03:51:50', '2020-06-25 07:11:12'),
(617, 'FS5586', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Lc2ojO5FftGQ.jpg,nEgU8a3UwSNJ.jpg,lq80HBytyW4C.jpg', 'Lc2ojO5FftGQ.jpg,nEgU8a3UwSNJ.jpg,lq80HBytyW4C.jpg', 1, NULL, NULL, 14, 129, 2, 1, 34, 1, 2, 5, 1, 3, 1, 1, '61,11', '2020-06-25 03:51:50', '2020-06-25 07:11:14'),
(618, 'JR1517', NULL, 14495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'jnU4ra4JuRCK.jpg,6Bo2V8gLRYhN.jpg', 'jnU4ra4JuRCK.jpg,6Bo2V8gLRYhN.jpg', 1, NULL, NULL, 14, 160, 2, 1, 77, 1, 2, 5, 3, 4, 14, 1, '61,11', '2020-06-25 03:51:50', '2020-06-25 07:11:15'),
(619, 'ME1164', NULL, 15995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Pyadptsbr2Eu.jpg,o6KN3RebG16F.jpg,g91l5hRE50zD.jpg', 'Pyadptsbr2Eu.jpg,o6KN3RebG16F.jpg,g91l5hRE50zD.jpg', 1, NULL, NULL, 14, 134, 2, 2, 47, 1, 2, 5, 6, 3, 1, 1, '58,13,44,46', '2020-06-25 03:51:50', '2020-06-25 07:11:17'),
(620, 'ME3098', NULL, 18495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'kQJJMJi0IQvt.jpg,O5c11cXY0gx3.jpg,pp7gW8z0L5hs.jpg', 'kQJJMJi0IQvt.jpg,O5c11cXY0gx3.jpg,pp7gW8z0L5hs.jpg', 1, NULL, NULL, 14, 134, 3, 3, 47, 1, 9, 5, 4, 3, 3, 1, NULL, '2020-06-25 03:51:50', '2020-06-25 07:11:19'),
(621, 'ME3100', NULL, 13795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'M0eQbyTNtdwI.jpg,BQ3UdAKHWYAj.jpg,T59qYDxw7Tzc.jpg', 'M0eQbyTNtdwI.jpg,BQ3UdAKHWYAj.jpg,T59qYDxw7Tzc.jpg', 1, NULL, NULL, 14, 156, 2, 2, 37, 1, 2, 5, 1, 3, 3, 1, NULL, '2020-06-25 03:51:50', '2020-06-25 07:11:21'),
(622, 'ME3111', NULL, 13795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'zgFtqhAxemcO.jpg,HUeDAvFS16RG.jpg,3Mkw7DXKDq1D.jpg', 'zgFtqhAxemcO.jpg,HUeDAvFS16RG.jpg,3Mkw7DXKDq1D.jpg', 1, NULL, NULL, 14, 156, 3, 3, 47, 1, 2, 5, 6, 3, 2, 1, NULL, '2020-06-25 03:51:50', '2020-06-25 07:11:22'),
(623, 'FTW4038', NULL, 22995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'WutOkAHbguQ7.jpg,zD07Cwl7UxKa.jpg,J8Wpb40LylOh.jpg,T6JFhMPUdfxP.jpg,OSyomPDN8ASI.jpg,s3BCdeS666A3.jpg', 'WutOkAHbguQ7.jpg,zD07Cwl7UxKa.jpg,J8Wpb40LylOh.jpg,T6JFhMPUdfxP.jpg,OSyomPDN8ASI.jpg,s3BCdeS666A3.jpg', 1, NULL, NULL, 15, 161, 6, 5, 62, 1, 2, 5, 24, 4, 1, 1, '1,9,20,21,23,26,33,49', '2020-06-25 03:51:50', '2020-06-25 07:11:25'),
(624, 'FTW6061', NULL, 22995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'OFGetsjlxW6v.jpg,94pUUO4FrFOf.jpg,cE0TiWhJ1D0q.jpg,VM2i0jlj0wcN.jpg,GweZkYsFhj93.jpg,3YCNF2GfN6yP.jpg', 'OFGetsjlxW6v.jpg,94pUUO4FrFOf.jpg,cE0TiWhJ1D0q.jpg,VM2i0jlj0wcN.jpg,GweZkYsFhj93.jpg,3YCNF2GfN6yP.jpg', 1, NULL, NULL, 15, 162, 6, 5, 47, 1, 2, 5, 24, 4, 5, 1, '1,9,20,21,23,26,33,49', '2020-06-25 03:51:50', '2020-06-25 07:11:29'),
(625, 'FTW7012', NULL, 16495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '05v2s4mxkenR.jpg,AwX30GH3Mima.jpg,o0V5v3UMztN4.jpg,XcRmc7nyx5ax.jpg,QlNJEzQzdesv.jpg,IFWF68Qw7TXX.jpg', '05v2s4mxkenR.jpg,AwX30GH3Mima.jpg,o0V5v3UMztN4.jpg,XcRmc7nyx5ax.jpg,QlNJEzQzdesv.jpg,IFWF68Qw7TXX.jpg', 1, NULL, NULL, 15, 163, 6, 5, 34, 1, 8, 5, 24, 10, 6, 2, '1,9,10,23,26,33', '2020-06-25 03:51:50', '2020-06-25 07:11:32'),
(626, 'FTW4016', NULL, 21995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'cwtfsaaTOMNm.jpg,DH1LJWIwJrmx.jpg,Ajzz4zBcDKFU.jpg,rlIau2ptMOAG.jpg,Ho4zGtHv0OdF.jpg,QPGiGPKDgVhj.jpg', 'cwtfsaaTOMNm.jpg,DH1LJWIwJrmx.jpg,Ajzz4zBcDKFU.jpg,rlIau2ptMOAG.jpg,Ho4zGtHv0OdF.jpg,QPGiGPKDgVhj.jpg', 1, NULL, NULL, 15, 164, 6, 5, 37, 1, 2, 5, 24, 3, 3, 1, '1,9,20,21,23,26,33,49', '2020-06-25 03:51:51', '2020-06-25 07:11:36'),
(627, 'FTW4040', NULL, 22995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '0digiAODEiCE.jpg,pe28AXuC9saC.jpg,78Pe2tKB3xql.jpg,BP5s4Hj5yFfA.jpg,s9GxDz1HlAia.jpg', '0digiAODEiCE.jpg,pe28AXuC9saC.jpg,78Pe2tKB3xql.jpg,BP5s4Hj5yFfA.jpg,s9GxDz1HlAia.jpg', 1, NULL, NULL, 15, 161, 6, 5, 62, 1, 2, 5, 24, 4, 5, 1, '1,9,20,21,23,26,33,49', '2020-06-25 03:51:51', '2020-06-25 07:11:39');
INSERT INTO `product_details` (`id`, `model_no`, `series`, `price`, `material`, `buckle`, `size`, `shape`, `frame_colour`, `lens`, `visible_ray`, `dimensions`, `nib`, `length_mm`, `taper`, `clasp_type`, `clasp_size`, `lock_system`, `description`, `warranty_period`, `meta_title`, `meta_description`, `meta_keyword`, `h1`, `status`, `featured_status`, `images`, `thumb_img`, `main_category_id`, `colour_id`, `clock_type_id`, `brand_id`, `collection_id`, `movement_id`, `movement_type_id`, `case_size_id`, `case_shape_id`, `case_material_id`, `glass_material_id`, `dial_colour_id`, `strap_material_id`, `strap_colour_id`, `gender_id`, `feature_id`, `created_at`, `updated_at`) VALUES
(628, 'FTW4041', NULL, 22995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '9wY7xNRi7CXd.jpg,Hacj9homFra4.jpg,03fb3t65JPMY.jpg,5lqTETqS8bx8.jpg,4VNCwQjtXrMQ.jpg,M0hYQS4LoFOp.jpg', '9wY7xNRi7CXd.jpg,Hacj9homFra4.jpg,03fb3t65JPMY.jpg,5lqTETqS8bx8.jpg,4VNCwQjtXrMQ.jpg,M0hYQS4LoFOp.jpg', 1, NULL, NULL, 15, 161, 6, 5, 62, 1, 2, 5, 24, 7, 1, 1, '9,20,21,23,26,33,49', '2020-06-25 03:51:51', '2020-06-25 07:11:42'),
(629, 'FTW6063', NULL, 22995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'WuNOmmECq26h.jpg,BWiBuVXn5aON.jpg,ao7ejhFFkU7O.jpg,EyYjMn7ufiE9.jpg,zsDS55Q0tAdi.jpg,nUaVlLySTwjD.jpg', 'WuNOmmECq26h.jpg,BWiBuVXn5aON.jpg,ao7ejhFFkU7O.jpg,EyYjMn7ufiE9.jpg,zsDS55Q0tAdi.jpg,nUaVlLySTwjD.jpg', 1, NULL, NULL, 15, 162, 6, 5, 47, 1, 2, 5, 24, 3, 3, 1, '1,9,20,21,23,26,33,49', '2020-06-25 03:51:51', '2020-06-25 07:11:46'),
(630, 'FTW7010', NULL, 14995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'UyOgAADtklPD.jpg,imu5sbSjrFLj.jpg,jKIq6aHlSc7z.jpg,cCaSFH2piIy7.jpg,lwu9zbRvblf4.jpg,110Htcx4RtdL.jpg', 'UyOgAADtklPD.jpg,imu5sbSjrFLj.jpg,jKIq6aHlSc7z.jpg,cCaSFH2piIy7.jpg,lwu9zbRvblf4.jpg,110Htcx4RtdL.jpg', 1, NULL, NULL, 15, 165, 6, 5, 34, 1, 2, 5, 24, 7, 1, 1, '1,9,10,23,26,33', '2020-06-25 03:51:51', '2020-06-25 07:11:49'),
(631, 'FTW2106', NULL, 19995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'MFJVRocAcwBA.jpg,UcqeBpPLCkAo.jpg,ux2bMsxR9KkS.jpg,1yLmyHm2oAc3.jpg,ekFewgxthEYv.jpg,KFnn41wEzMaD.jpg', 'MFJVRocAcwBA.jpg,UcqeBpPLCkAo.jpg,ux2bMsxR9KkS.jpg,1yLmyHm2oAc3.jpg,ekFewgxthEYv.jpg,KFnn41wEzMaD.jpg', 1, NULL, NULL, 15, 166, 6, 5, 37, 1, 2, 5, 24, 3, 3, 1, '59,3,6,17,19,22,47,52,55', '2020-06-25 03:51:51', '2020-06-25 07:11:52'),
(632, 'FTW4011', NULL, 21995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'iTLpUSs4tH5C.jpg,uI8mJY27eNHa.jpg,kFQIHymGIdwm.jpg,FUSd1gBZ8voC.jpg,mVjJrWmyG7tp.jpg,W2JeJ8Uc8EVx.jpg,QrjHZnGkXASY.jpg', 'iTLpUSs4tH5C.jpg,uI8mJY27eNHa.jpg,kFQIHymGIdwm.jpg,FUSd1gBZ8voC.jpg,mVjJrWmyG7tp.jpg,W2JeJ8Uc8EVx.jpg,QrjHZnGkXASY.jpg', 1, NULL, NULL, 15, 167, 6, 5, 37, 1, 2, 5, 24, 4, 5, 1, '1,9,20,21,23,26,33,49', '2020-06-25 03:51:51', '2020-06-25 07:11:57'),
(633, 'FTW4012', NULL, 21995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'xfuA3oGQqk0T.jpg,HXnblOOqirsi.jpg,UeikkPGo9tI3.jpg,gvZ7H3lxBffd.jpg,INEPdFal1Ylk.jpg,a9u9Ol4ZLsVy.jpg,HcDn53aV10RL.jpg', 'xfuA3oGQqk0T.jpg,HXnblOOqirsi.jpg,UeikkPGo9tI3.jpg,gvZ7H3lxBffd.jpg,INEPdFal1Ylk.jpg,a9u9Ol4ZLsVy.jpg,HcDn53aV10RL.jpg', 1, NULL, NULL, 15, 167, 6, 5, 37, 1, 2, 5, 24, 4, 14, 1, '9,20,21,23,26,33,49', '2020-06-25 03:51:51', '2020-06-25 07:12:01'),
(634, 'FTW4024', NULL, 22995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '9I6bHmkN6YTE.jpg,oFyCrbP01bOo.jpg,5pseKcO5l4Ja.jpg,5FjvmP57fsVv.jpg,yQ3apnQzAOJD.jpg,ZSxpncTg79pG.jpg,6FNZ8jLIK3c0.jpg', '9I6bHmkN6YTE.jpg,oFyCrbP01bOo.jpg,5pseKcO5l4Ja.jpg,5FjvmP57fsVv.jpg,yQ3apnQzAOJD.jpg,ZSxpncTg79pG.jpg,6FNZ8jLIK3c0.jpg', 1, NULL, NULL, 15, 168, 6, 5, 47, 1, 2, 5, 24, 4, 14, 1, '9,20,21,23,26,33,49', '2020-06-25 03:51:51', '2020-06-25 07:12:05'),
(635, 'FTW4025', NULL, 22995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'J3Xryx4CDggZ.jpg,USYDRwyu4sI7.jpg,6SI6IdOC7n28.jpg,klfoPnRsXAQ7.jpg,3nfdHWPuQx4s.jpg,OatDDZvW2yAf.jpg', 'J3Xryx4CDggZ.jpg,USYDRwyu4sI7.jpg,6SI6IdOC7n28.jpg,klfoPnRsXAQ7.jpg,3nfdHWPuQx4s.jpg,OatDDZvW2yAf.jpg', 1, NULL, NULL, 15, 168, 6, 5, 47, 1, 2, 5, 24, 7, 1, 1, '1,9,20,21,23,26,33,49', '2020-06-25 03:51:51', '2020-06-25 07:12:08'),
(636, 'FTW6011', NULL, 21995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'wIxreHNeiD9t.jpg,OvKW5i49orPT.jpg,F2hGJnHCnGFq.jpg,m5eujXUF9Qpn.jpg,gB2bkBSj9QW8.jpg,WMiwOhTvxmpT.jpg,FqCciyq2Ipbs.jpg', 'wIxreHNeiD9t.jpg,OvKW5i49orPT.jpg,F2hGJnHCnGFq.jpg,m5eujXUF9Qpn.jpg,gB2bkBSj9QW8.jpg,WMiwOhTvxmpT.jpg,FqCciyq2Ipbs.jpg', 1, NULL, NULL, 15, 169, 6, 5, 64, 1, 2, 5, 24, 4, 6, 2, '1,9,20,21,23,26,33,49', '2020-06-25 03:51:51', '2020-06-25 07:12:12'),
(637, 'FTW6018', NULL, 21995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'XPJw0vAJJ77A.jpg,ub6gR66is9JJ.jpg,lQXXgoarilSM.jpg,Bz1KEk2rK6u6.jpg,FLB82FtrIX7u.jpg,TCS9wzXn5qEv.jpg,5oUghNPLoWCe.jpg', 'XPJw0vAJJ77A.jpg,ub6gR66is9JJ.jpg,lQXXgoarilSM.jpg,Bz1KEk2rK6u6.jpg,FLB82FtrIX7u.jpg,TCS9wzXn5qEv.jpg,5oUghNPLoWCe.jpg', 1, NULL, NULL, 15, 169, 6, 5, 64, 1, 2, 5, 24, 4, 6, 2, '1,9,20,21,23,26,33,49', '2020-06-25 03:51:51', '2020-06-25 07:12:16'),
(638, 'FTW6035', NULL, 22995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'mbW1QIzbQnMz.jpg,SbD85Tti5Owx.jpg,AWPEtCtlXGpc.jpg,V2AaDWKSzgKX.jpg,JCeErXUddNVF.jpg,dC56cSg8Mo25.jpg', 'mbW1QIzbQnMz.jpg,SbD85Tti5Owx.jpg,AWPEtCtlXGpc.jpg,V2AaDWKSzgKX.jpg,JCeErXUddNVF.jpg,dC56cSg8Mo25.jpg', 1, NULL, NULL, 15, 162, 6, 5, 47, 1, 2, 5, 24, 4, 6, 2, '1,9,20,21,23,26,33,49', '2020-06-25 03:51:51', '2020-06-25 07:12:20'),
(639, 'FTW6036', NULL, 22995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Nbv1SOTt8Z8v.jpg,VQzqvehG3Zu2.jpg,lPJ6NkQ88WCp.jpg,1tXzMPR6jCOU.jpg,zlNr5Wav8AlM.jpg,1kAybsbe4KtF.jpg,ITyldLX8ML49.jpg', 'Nbv1SOTt8Z8v.jpg,VQzqvehG3Zu2.jpg,lPJ6NkQ88WCp.jpg,1tXzMPR6jCOU.jpg,zlNr5Wav8AlM.jpg,1kAybsbe4KtF.jpg,ITyldLX8ML49.jpg', 1, NULL, NULL, 15, 162, 6, 5, 47, 1, 2, 5, 24, 4, 1, 1, '1,9,20,21,23,26,33,49', '2020-06-25 03:51:51', '2020-06-25 07:12:24'),
(640, 'FTW6054', NULL, 22995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'HEhtfEuIlptK.jpg,1eQ995ts1oBQ.jpg,H9RPRe1TbjjK.jpg,D4ndIgbL9bIt.jpg,nBPx2o2PHwP8.jpg,Z4c4OVA9yAnz.jpg,Q9OLm5URdky8.jpg', 'HEhtfEuIlptK.jpg,1eQ995ts1oBQ.jpg,H9RPRe1TbjjK.jpg,D4ndIgbL9bIt.jpg,nBPx2o2PHwP8.jpg,Z4c4OVA9yAnz.jpg,Q9OLm5URdky8.jpg', 1, NULL, NULL, 15, 162, 6, 5, 47, 1, 2, 5, 24, 3, 18, 2, '1,9,20,21,23,26,33,49', '2020-06-25 03:51:51', '2020-06-25 07:12:28'),
(641, 'DZ1574', NULL, 12295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ueTTN9yPY3m6.jpg,1p54MAa0E0Mg.jpg,WpS3wBoc4wYO.jpg', 'ueTTN9yPY3m6.jpg,1p54MAa0E0Mg.jpg,WpS3wBoc4wYO.jpg', 1, NULL, NULL, 16, 170, 2, 2, 78, 1, 13, 5, 10, 24, 13, 3, NULL, '2020-06-25 03:51:52', '2020-06-25 07:12:29'),
(642, 'DZ1754', NULL, 12995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '3N5BEATceCQP.jpg,5q7b47Wdt3vJ.jpg,6XeCe6pVyfOw.jpg', '3N5BEATceCQP.jpg,5q7b47Wdt3vJ.jpg,6XeCe6pVyfOw.jpg', 1, NULL, NULL, 16, 171, 2, 2, 37, 1, 8, 5, 1, 3, 1, 1, '11', '2020-06-25 03:51:52', '2020-06-25 07:12:31'),
(643, 'DZ1765', NULL, 13495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'B8mtycmcgQ0G.jpg,BJB3s8pAV9oJ.jpg', 'B8mtycmcgQ0G.jpg,BJB3s8pAV9oJ.jpg', 1, NULL, NULL, 16, 171, 2, 2, 62, 1, 2, 5, 10, 3, 24, 1, NULL, '2020-06-25 03:51:52', '2020-06-25 07:12:33'),
(644, 'DZ1768', NULL, 13495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'X69GkihDU0Dn.jpg,Scp858B9ODbK.jpg', 'X69GkihDU0Dn.jpg,Scp858B9ODbK.jpg', 1, NULL, NULL, 16, 171, 2, 2, 37, 1, 10, 5, 2, 12, 14, 1, '11', '2020-06-25 03:51:52', '2020-06-25 07:12:34'),
(645, 'DZ1782', NULL, 9495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'MI4I1pFtl6lx.jpg,szBk5WEVdLmU.jpg,4KgT4OTpp8HM.jpg', 'MI4I1pFtl6lx.jpg,szBk5WEVdLmU.jpg,4KgT4OTpp8HM.jpg', 1, NULL, NULL, 16, 171, 2, 2, 47, 1, 2, 5, 3, 3, 3, 1, '11', '2020-06-25 03:51:52', '2020-06-25 07:12:36'),
(646, 'DZ1783', NULL, 9495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'uXtZHSWnhb10.jpg,QXyFnV6uZCpY.jpg,a4hdQ75hfKMp.jpg', 'uXtZHSWnhb10.jpg,QXyFnV6uZCpY.jpg,a4hdQ75hfKMp.jpg', 1, NULL, NULL, 16, 171, 2, 2, 37, 1, 2, 5, 3, 3, 3, 1, '11', '2020-06-25 03:51:52', '2020-06-25 07:12:37'),
(647, 'DZ1803', NULL, 10795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'oW5p0slaCO6O.jpg,lu3PcbHmf1Te.jpg,pcQZyTmLqtSD.jpg', 'oW5p0slaCO6O.jpg,lu3PcbHmf1Te.jpg,pcQZyTmLqtSD.jpg', 1, NULL, NULL, 16, 171, 2, 2, 62, 1, 10, 5, 5, 3, 3, 1, NULL, '2020-06-25 03:51:52', '2020-06-25 07:12:38'),
(648, 'DZ1819', NULL, 7495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'xhY68QnCq0HC.jpg,9sZd2NmTasPc.jpg,OCHJmMr64kjo.jpg', 'xhY68QnCq0HC.jpg,9sZd2NmTasPc.jpg,OCHJmMr64kjo.jpg', 1, NULL, NULL, 16, 171, 2, 2, 37, 1, 14, 5, 1, 7, 1, 1, NULL, '2020-06-25 03:51:52', '2020-06-25 07:12:40'),
(649, 'DZ1834', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'E7c5n37Nsx7V.jpg,G4FePJy2Gjma.jpg,ztNAbAGJbXPm.jpg', 'E7c5n37Nsx7V.jpg,G4FePJy2Gjma.jpg,ztNAbAGJbXPm.jpg', 1, NULL, NULL, 16, 174, 2, 2, 37, 5, 2, 5, 2, 3, 3, 1, NULL, '2020-06-25 03:51:52', '2020-06-25 07:12:42'),
(650, 'DZ1838', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'sgbTPxZRMBaX.jpg,yykChctpfAJm.jpg,eR1CTlGDwf5F.jpg', 'sgbTPxZRMBaX.jpg,yykChctpfAJm.jpg,eR1CTlGDwf5F.jpg', 1, NULL, NULL, 16, 174, 2, 2, 37, 1, 2, 5, 3, 3, 2, 1, NULL, '2020-06-25 03:51:52', '2020-06-25 07:12:44'),
(651, 'DZ1847', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'JOhfRsBVEgLP.jpg,NJNxB5Exmlik.jpg,rca8yonMdAok.jpg', 'JOhfRsBVEgLP.jpg,NJNxB5Exmlik.jpg,rca8yonMdAok.jpg', 1, NULL, NULL, 16, 174, 2, 2, 47, 1, 2, 5, 2, 3, 3, 1, '11', '2020-06-25 03:51:52', '2020-06-25 07:12:46'),
(652, 'DZ4297', NULL, 14295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'KoRSPO9uGbSz.jpg,fmg1Ng8DhFMM.jpg,j87qvQlySy1Z.jpg', 'KoRSPO9uGbSz.jpg,fmg1Ng8DhFMM.jpg,j87qvQlySy1Z.jpg', 1, NULL, NULL, 16, 175, 2, 1, 79, 1, 2, 5, 1, 3, 1, 1, '58,61,11,29,46', '2020-06-25 03:51:52', '2020-06-25 07:12:48'),
(653, 'DZ4330', NULL, 13295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Ke4LyFvclq90.jpg,y3FFiZPutL1q.jpg,LGNtlGRSCRhf.jpg', 'Ke4LyFvclq90.jpg,y3FFiZPutL1q.jpg,LGNtlGRSCRhf.jpg', 1, NULL, NULL, 16, 176, 2, 1, 80, 1, 2, 5, 2, 3, 3, 1, '61,11', '2020-06-25 03:51:52', '2020-06-25 07:12:50'),
(654, 'DZ4331', NULL, 15295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'bS8XctKrUTs9.jpg,KiVk2MY8h1Nd.jpg,TL25t1DMI7MI.jpg', 'bS8XctKrUTs9.jpg,KiVk2MY8h1Nd.jpg,TL25t1DMI7MI.jpg', 1, NULL, NULL, 16, 176, 2, 1, 61, 1, 2, 5, 1, 3, 1, 1, '61,11,46', '2020-06-25 03:51:52', '2020-06-25 07:12:53'),
(655, 'DZ4338', NULL, 17995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '3Ans3dgtBKB0.jpg,V8Q8xxIBJmNK.jpg,FQfRhcgw7Szd.jpg', '3Ans3dgtBKB0.jpg,V8Q8xxIBJmNK.jpg,FQfRhcgw7Szd.jpg', 1, NULL, NULL, 16, 177, 2, 1, 81, 1, 15, 5, 1, 25, 1, 1, '61,11,29,46', '2020-06-25 03:51:52', '2020-06-25 07:12:55'),
(656, 'DZ4344', NULL, 16995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'LxDXW8vJyqLQ.jpg,a66eoW3o9P6N.jpg,MZf9cjfBqsgr.jpg', 'LxDXW8vJyqLQ.jpg,a66eoW3o9P6N.jpg,MZf9cjfBqsgr.jpg', 1, NULL, NULL, 16, 177, 2, 1, 82, 1, 5, 5, 1, 3, 1, 1, '61,11,29,46', '2020-06-25 03:51:53', '2020-06-25 07:12:58'),
(657, 'DZ4372', NULL, 14995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'aeCSdQYJT5qR.jpg,IiG6bHAjVqDI.jpg,OmiYMCa9XNSC.jpg', 'aeCSdQYJT5qR.jpg,IiG6bHAjVqDI.jpg,OmiYMCa9XNSC.jpg', 1, NULL, NULL, 16, 175, 2, 1, 79, 1, 15, 5, 1, 3, 1, 1, '58,61,11,29,46', '2020-06-25 03:51:53', '2020-06-25 07:13:00'),
(658, 'DZ4421', NULL, 17495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'oro4DkZjHVhU.jpg,Kh3mu2sRS3oc.jpg,sDkxiSDr5hnP.jpg', 'oro4DkZjHVhU.jpg,Kh3mu2sRS3oc.jpg,sDkxiSDr5hnP.jpg', 1, NULL, NULL, 16, 177, 2, 1, 82, 1, 10, 5, 3, 12, 14, 1, '61,11,29,46', '2020-06-25 03:51:53', '2020-06-25 07:13:03'),
(659, 'DZ4445', NULL, 14995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'p1UISSZhNFy6.jpg,n2jm5FxyjfAi.jpg,yUAoLzQTgl4i.jpg', 'p1UISSZhNFy6.jpg,n2jm5FxyjfAi.jpg,yUAoLzQTgl4i.jpg', 1, NULL, NULL, 16, 177, 2, 1, 77, 1, 2, 5, 1, 3, 1, 1, '61,11,29,46', '2020-06-25 03:51:53', '2020-06-25 07:13:04'),
(660, 'DZ4459', NULL, 17495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'eEs3YFIWftl8.jpg,XGcuqTwZEyUq.jpg', 'eEs3YFIWftl8.jpg,XGcuqTwZEyUq.jpg', 1, NULL, NULL, 16, 177, 2, 1, 82, 1, 8, 5, 3, 3, 3, 1, '61,11,46', '2020-06-25 03:51:53', '2020-06-25 07:13:06'),
(661, 'DZ4462', NULL, 14995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'vitLxre9sAZ5.jpg,ZweEGUbggzF6.jpg', 'vitLxre9sAZ5.jpg,ZweEGUbggzF6.jpg', 1, NULL, NULL, 16, 175, 2, 1, 83, 1, 15, 5, 3, 3, 14, 1, '58,61,11,29,46', '2020-06-25 03:51:53', '2020-06-25 07:13:07'),
(662, 'DZ4468', NULL, 15995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'X2TGkXHOxO0g.jpg,p2PQFpest64H.jpg,Xak5fvQYxGYd.jpg', 'X2TGkXHOxO0g.jpg,p2PQFpest64H.jpg,Xak5fvQYxGYd.jpg', 1, NULL, NULL, 16, 175, 2, 1, 82, 1, 2, 5, 3, 3, 3, 1, '61,11,46', '2020-06-25 03:51:53', '2020-06-25 07:13:10'),
(663, 'DZT1005', NULL, 16795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '1HqHomUo4Vtk.jpg,mduNZiFAomHd.jpg,TpV7vIYp7W5K.jpg,uxqsQfu0efwq.jpg', '1HqHomUo4Vtk.jpg,mduNZiFAomHd.jpg,TpV7vIYp7W5K.jpg,uxqsQfu0efwq.jpg', 1, NULL, NULL, 16, 178, 2, 1, 76, 1, 16, 5, 3, 7, 8, 1, '59,2,6,13,42,45', '2020-06-25 03:51:53', '2020-06-25 07:13:12'),
(664, 'EFR-559GL-7A', 'Chronograph', 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'kS3JELgN4Tju.jpg,5yCAajTPUyVS.jpg,Z6FiZDM1sSZV.jpg,szEg9phCp1O9.jpg', 'kS3JELgN4Tju.jpg,5yCAajTPUyVS.jpg,Z6FiZDM1sSZV.jpg,szEg9phCp1O9.jpg', 1, NULL, NULL, 16, 178, 2, 1, 76, 1, 2, 5, 6, 3, 2, 1, '61,11,14,46', '2020-06-25 03:51:53', '2020-06-25 07:13:15'),
(665, 'ECB-900DB-1ADR', NULL, 13995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'y31c5F3CVSpp.jpg,9Rg9rd9kozbZ.jpg,r3rJYQtxXWsn.jpg,aHJs6g0nvy2K.jpg', 'y31c5F3CVSpp.jpg,9Rg9rd9kozbZ.jpg,r3rJYQtxXWsn.jpg,aHJs6g0nvy2K.jpg', 1, NULL, NULL, 16, 178, 2, 1, 61, 1, 2, 5, 1, 4, 2, 1, '61,11,14,46', '2020-06-25 03:51:53', '2020-06-25 07:13:17'),
(666, 'ECB-900DC-1ADR', NULL, 15995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'QfVVGxQnT4Wp.jpg,ytqisdDSgZPy.jpg,5VqRrtCOz9aC.jpg,FmXfRQPSsF1S.jpg', 'QfVVGxQnT4Wp.jpg,ytqisdDSgZPy.jpg,5VqRrtCOz9aC.jpg,FmXfRQPSsF1S.jpg', 1, NULL, NULL, 16, 178, 2, 2, 61, 1, 2, 5, 1, 10, 10, 1, '2,5,6,14,30,56', '2020-06-25 03:51:53', '2020-06-25 07:13:20'),
(667, 'ECB-900PB-1ADR', NULL, 13995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'PWe1MgaBN62C.jpg,02NeFbzolrVk.jpg,wbykS8ysSGYl.jpg,2h7pl13VvSuh.jpg', 'PWe1MgaBN62C.jpg,02NeFbzolrVk.jpg,wbykS8ysSGYl.jpg,2h7pl13VvSuh.jpg', 1, NULL, NULL, 16, 178, 2, 2, 61, 1, 2, 5, 1, 1, 1, 1, '2,5,6,14,30,56', '2020-06-25 03:51:53', '2020-06-25 07:13:22'),
(668, 'ECB-900PB-1CDR', NULL, 13995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ZnopXyK1GfRR.jpg', 'ZnopXyK1GfRR.jpg', 1, NULL, NULL, 16, 178, 2, 2, 61, 1, 2, 5, 1, 4, 1, 1, '2,5,6,14,30,56', '2020-06-25 03:51:53', '2020-06-25 07:13:23'),
(669, 'EF-129SG-1AVDF', NULL, 6995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'JixSv11apXFB.jpg,UYPLU4QSGx3o.jpg,gJdEcvUFl5Ik.jpg', 'JixSv11apXFB.jpg,UYPLU4QSGx3o.jpg,gJdEcvUFl5Ik.jpg', 1, NULL, NULL, 16, 178, 2, 2, 83, 1, 2, 5, 1, 4, 12, 1, '13', '2020-06-25 03:51:54', '2020-06-25 07:13:25'),
(670, 'EF-328D-1A5VDF', NULL, 7495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'PCadzvSfG9WI.jpg,z6tGAZaUS4TS.jpg,yLbzcYgvUO3q.jpg', 'PCadzvSfG9WI.jpg,z6tGAZaUS4TS.jpg,yLbzcYgvUO3q.jpg', 1, NULL, NULL, 16, 178, 2, 1, 83, 1, 2, 5, 1, 4, 12, 1, '61,13', '2020-06-25 03:51:54', '2020-06-25 07:13:27'),
(671, 'EF-550D-1AVDF', NULL, 13995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '0eN8XRHaibs8.jpg,N8S6spEmtwit.jpg,6L3K9waXhu8V.jpg,sG42sv6AWG74.jpg', '0eN8XRHaibs8.jpg,N8S6spEmtwit.jpg,6L3K9waXhu8V.jpg,sG42sv6AWG74.jpg', 1, NULL, NULL, 16, 178, 2, 1, 83, 1, 2, 5, 1, 4, 12, 1, '61,11,29,39,46,51', '2020-06-25 03:51:54', '2020-06-25 07:13:29'),
(672, 'EF-558D-2AVDF', NULL, 12995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'f0Px4B3Ah42O.jpg,RKfTTyMrDKD1.jpg,zosXzFuzh5rS.jpg,3UJWLKweWhFN.jpg,i02wUYvhvnFv.jpg', 'f0Px4B3Ah42O.jpg,RKfTTyMrDKD1.jpg,zosXzFuzh5rS.jpg,3UJWLKweWhFN.jpg,i02wUYvhvnFv.jpg', 1, NULL, NULL, 16, 178, 2, 1, 82, 1, 2, 5, 2, 4, 12, 1, '61,11,29,39,46,51', '2020-06-25 03:51:54', '2020-06-25 07:13:33'),
(673, 'EFR- S107D-1AVUDF', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'JG6Lr9e7MvTm.jpg,4L4NbHNzHZNE.jpg,dFwctS5G5AC4.jpg,lKXnUZNI42da.jpg', 'JG6Lr9e7MvTm.jpg,4L4NbHNzHZNE.jpg,dFwctS5G5AC4.jpg,lKXnUZNI42da.jpg', 1, NULL, NULL, 16, 178, 2, 2, 17, 1, 2, 5, 1, 4, 12, 1, '11', '2020-06-25 03:51:54', '2020-06-25 07:13:35'),
(674, 'EFR-527D-7AVUDF', NULL, 6595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '4DFu4cndoSQA.jpg,xsRcg2So2Blt.jpg,ZTq8DJ4dXu4g.jpg', '4DFu4cndoSQA.jpg,xsRcg2So2Blt.jpg,ZTq8DJ4dXu4g.jpg', 1, NULL, NULL, 16, 178, 2, 1, 76, 1, 2, 5, 6, 4, 12, 1, '61', '2020-06-25 03:51:54', '2020-06-25 07:13:38'),
(675, 'EFR-539L-5AVUDF', NULL, 8495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'GmsM8eEuLgjj.jpg,wDAMbxriMqvy.jpg,ah7IXmk0Q0rY.jpg', 'GmsM8eEuLgjj.jpg,wDAMbxriMqvy.jpg,ah7IXmk0Q0rY.jpg', 1, NULL, NULL, 16, 178, 2, 1, 76, 1, 2, 5, 4, 3, 1, 1, '61,11,46', '2020-06-25 03:51:54', '2020-06-25 07:13:40'),
(676, 'EFR-539L-7AVUDF', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'JKmwq8TkEVNC.jpg,9aRiiu6RdKAE.jpg,AI1Dlrz8eDbH.jpg', 'JKmwq8TkEVNC.jpg,9aRiiu6RdKAE.jpg,AI1Dlrz8eDbH.jpg', 1, NULL, NULL, 16, 178, 2, 1, 76, 1, 2, 5, 5, 3, 3, 1, '61,11,46', '2020-06-25 03:51:54', '2020-06-25 07:13:42'),
(677, 'EFR-543BK-1A9VUDF', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'g5fG0lxnPcaY.jpg,ObTPN9FO1NlI.jpg,diH6gZIk3XRm.jpg', 'g5fG0lxnPcaY.jpg,ObTPN9FO1NlI.jpg,diH6gZIk3XRm.jpg', 1, NULL, NULL, 16, 178, 2, 1, 76, 1, 2, 5, 1, 9, 1, 1, '58,61,11,46', '2020-06-25 03:51:54', '2020-06-25 07:13:44'),
(678, 'EFR-544BK-1A9VUDF', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'oSW9pl0l6Vx9.jpg,jqH5o09AgWg7.jpg,ALiTBtXSYfOC.jpg', 'oSW9pl0l6Vx9.jpg,jqH5o09AgWg7.jpg,ALiTBtXSYfOC.jpg', 1, NULL, NULL, 16, 178, 2, 1, 76, 1, 2, 5, 1, 9, 1, 1, '58,61,11,29,46', '2020-06-25 03:51:54', '2020-06-25 07:13:46'),
(679, 'EFR-559DC-1AVUDF', NULL, 12995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'aY1zFC9LKiX4.jpg,e8Nj8RTYIqHB.jpg,Js2FlSpL4kzm.jpg,JOEUozqctDv2.jpg', 'aY1zFC9LKiX4.jpg,e8Nj8RTYIqHB.jpg,Js2FlSpL4kzm.jpg,JOEUozqctDv2.jpg', 1, NULL, NULL, 16, 178, 2, 2, 76, 1, 2, 5, 1, 9, 1, 1, '58,11,39', '2020-06-25 03:51:54', '2020-06-25 07:13:48'),
(680, 'EFR-569BL-1AVUDF', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'h5bD4s972mGF.jpg,giSYzBPp5P89.jpg,PIKcZn61IhSM.jpg,Oqm0iptPy48m.jpg', 'h5bD4s972mGF.jpg,giSYzBPp5P89.jpg,PIKcZn61IhSM.jpg,Oqm0iptPy48m.jpg', 1, NULL, NULL, 16, 178, 2, 2, 76, 1, 2, 5, 1, 3, 2, 1, '11', '2020-06-25 03:51:54', '2020-06-25 07:13:50'),
(681, 'EFR-569DB-1AVUDF', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'pnlIEniNUPR5.jpg,CN4V05RyAAPx.jpg,I66iERWSoR9n.jpg,Yh2x9IBOmgFZ.jpg', 'pnlIEniNUPR5.jpg,CN4V05RyAAPx.jpg,I66iERWSoR9n.jpg,Yh2x9IBOmgFZ.jpg', 1, NULL, NULL, 16, 178, 2, 1, 76, 1, 2, 5, 1, 4, 5, 1, '61,11', '2020-06-25 03:51:54', '2020-06-25 07:13:53'),
(682, 'EFR-S567D-2AVUDF', NULL, 10995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'vaOshkkXywvA.jpg,ESaFjlAgWDlh.jpg,xiMD71IRshFx.jpg,wUGRRUOt1NG6.jpg', 'vaOshkkXywvA.jpg,ESaFjlAgWDlh.jpg,xiMD71IRshFx.jpg,wUGRRUOt1NG6.jpg', 1, NULL, NULL, 16, 178, 2, 1, 76, 1, 2, 5, 2, 4, 5, 1, '61,11,46', '2020-06-25 03:51:54', '2020-06-25 07:13:55'),
(683, 'EFV-590D-2AVUDF', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'c6bsJQhqNiHp.jpg,JfllbZS76SaL.jpg,FPK62lshMTkz.jpg,TU6iAgit77lF.jpg', 'c6bsJQhqNiHp.jpg,JfllbZS76SaL.jpg,FPK62lshMTkz.jpg,TU6iAgit77lF.jpg', 1, NULL, NULL, 16, 178, 2, 1, 47, 1, 2, 5, 2, 4, 5, 1, '61,11', '2020-06-25 03:51:54', '2020-06-25 07:13:57'),
(684, 'EFV-590D-1AVUDF', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Ks7yHCQu2r3m.jpg,FeGMiZTDsCTO.jpg,S3n0rSWIHy3P.jpg,9PsLTEuY3DKK.jpg', 'Ks7yHCQu2r3m.jpg,FeGMiZTDsCTO.jpg,S3n0rSWIHy3P.jpg,9PsLTEuY3DKK.jpg', 1, NULL, NULL, 16, 178, 2, 1, 47, 1, 2, 5, 1, 4, 5, 1, '61,11', '2020-06-25 03:51:54', '2020-06-25 07:14:00'),
(685, 'EFV-590L-1AVUDF', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'LPaEBHW7c9M8.jpg,Jvgq9huW8M4c.jpg,8ebjuri01Ji5.jpg,bv8BFrbYeMOM.jpg', 'LPaEBHW7c9M8.jpg,Jvgq9huW8M4c.jpg,8ebjuri01Ji5.jpg,bv8BFrbYeMOM.jpg', 1, NULL, NULL, 16, 178, 2, 1, 47, 1, 2, 5, 1, 3, 1, 1, '61,11', '2020-06-25 03:51:54', '2020-06-25 07:14:03'),
(686, 'EFV-590PB-1AVUDF', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '6GA0pb5PBG53.jpg,ESw1NPp84t5A.jpg,CHjNNAcWFUet.jpg,ejiHbEQPJZiF.jpg', '6GA0pb5PBG53.jpg,ESw1NPp84t5A.jpg,CHjNNAcWFUet.jpg,ejiHbEQPJZiF.jpg', 1, NULL, NULL, 16, 178, 2, 1, 47, 1, 2, 5, 1, 3, 1, 1, '61,11', '2020-06-25 03:51:55', '2020-06-25 07:14:05'),
(687, 'EFV-C100D-2AVDF', NULL, 8495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ggMk5a9VF0pD.jpg,LSNtiyZOzY4y.jpg,7eLaosWll5qJ.jpg,phpr0nXRqg3V.jpg', 'ggMk5a9VF0pD.jpg,LSNtiyZOzY4y.jpg,7eLaosWll5qJ.jpg,phpr0nXRqg3V.jpg', 1, NULL, NULL, 16, 178, 2, 2, 47, 1, 2, 5, 2, 4, 5, 1, '58,2,11,34,56', '2020-06-25 03:51:55', '2020-06-25 07:14:07'),
(689, 'ERA-120BL-2AVDF', NULL, 9495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'PaH2XSuUYdI8.jpg,Z41L6Mngt1fB.jpg,voc2R45dKeMO.jpg,Y9t9uzEQNpu5.jpg', 'PaH2XSuUYdI8.jpg,Z41L6Mngt1fB.jpg,voc2R45dKeMO.jpg,Y9t9uzEQNpu5.jpg', 1, NULL, NULL, 16, 178, 2, 2, 76, 1, 2, 5, 2, 3, 2, 1, '2,56', '2020-06-25 03:51:55', '2020-06-25 07:14:10'),
(690, 'ERA-120DB-1BVDF', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'NNBGcVbFwTLa.jpg,eJcntnSlFhGz.jpg,Wihui73NDKWY.jpg,4hVWdFW6tAEh.jpg', 'NNBGcVbFwTLa.jpg,eJcntnSlFhGz.jpg,Wihui73NDKWY.jpg,4hVWdFW6tAEh.jpg', 1, NULL, NULL, 16, 178, 2, 2, 76, 1, 2, 5, 1, 4, 5, 1, '2,14,51,56', '2020-06-25 03:51:55', '2020-06-25 07:14:12'),
(691, 'GA-100CM-8ADR', NULL, 9495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'kXzR2lqfRTDF.jpg,QaVJho1EM2Bg.jpg,T27HMMPZtMHD.jpg', 'kXzR2lqfRTDF.jpg,QaVJho1EM2Bg.jpg,T27HMMPZtMHD.jpg', 1, NULL, NULL, 16, 178, 2, 1, 76, 1, 2, 5, 1, 4, 19, 1, '2,61,11,56', '2020-06-25 03:51:55', '2020-06-25 07:14:15'),
(692, 'GA-110LT-1ADR', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ghakUPqq4O36.jpg,WwxPYLSdVUD6.jpg,HlsfQoaZkKFu.jpg,qgYbfyrEkwHa.jpg', 'ghakUPqq4O36.jpg,WwxPYLSdVUD6.jpg,HlsfQoaZkKFu.jpg,qgYbfyrEkwHa.jpg', 1, NULL, NULL, 16, 178, 2, 2, 76, 1, 2, 5, 2, 4, 1, 1, '2,5,14,56', '2020-06-25 03:51:55', '2020-06-25 07:14:17'),
(693, 'GA-110RG-7ADR', NULL, 9495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'S2dGxMSpQQVX.jpg,5gUmlC0y7sBd.jpg,BdmYZ3M2y6BM.jpg,Hh1gL0MiaHFX.jpg', 'S2dGxMSpQQVX.jpg,5gUmlC0y7sBd.jpg,BdmYZ3M2y6BM.jpg,Hh1gL0MiaHFX.jpg', 1, NULL, NULL, 16, 178, 2, 1, 76, 1, 2, 5, 1, 4, 1, 1, '2,5,61,14,32,56', '2020-06-25 03:51:55', '2020-06-25 07:14:20'),
(694, 'GA-2000-5ADR', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Js0wJXbjrINq.jpg,wmvDRqwLcYSd.jpg,niSZaAfZHAeG.jpg,p199TxkPniAl.jpg', 'Js0wJXbjrINq.jpg,wmvDRqwLcYSd.jpg,niSZaAfZHAeG.jpg,p199TxkPniAl.jpg', 1, NULL, NULL, 16, 178, 2, 2, 76, 1, 2, 5, 1, 4, 14, 1, '2,5,61,14,32,56', '2020-06-25 03:51:55', '2020-06-25 07:14:22'),
(695, 'GA-2000S-1ADR', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '4LTlj2zVPxiw.jpg,H6PYzQ612TBG.jpg,3KMDYo617KuK.jpg,2x1NSz2zJA2a.jpg', '4LTlj2zVPxiw.jpg,H6PYzQ612TBG.jpg,3KMDYo617KuK.jpg,2x1NSz2zJA2a.jpg', 1, NULL, NULL, 16, 178, 2, 2, 76, 1, 2, 5, 1, 1, 1, 1, NULL, '2020-06-25 03:51:55', '2020-06-25 07:14:25'),
(696, 'GA-400-1BDR', NULL, 8295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'zHaZ2j1egwX6.jpg,ykZv2PVgKRcN.jpg,PDw0Vykbh6b8.jpg,QbhY7Y49rnrW.jpg', 'zHaZ2j1egwX6.jpg,ykZv2PVgKRcN.jpg,PDw0Vykbh6b8.jpg,QbhY7Y49rnrW.jpg', 1, NULL, NULL, 16, 178, 2, 2, 76, 1, 2, 5, 1, 1, 1, 1, '2,5,14,32,56', '2020-06-25 03:51:55', '2020-06-25 07:14:27'),
(697, 'GA-700-4ADR', NULL, 8495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'z5xehWrY2qZD.jpg,xPpkgS4NS5jr.jpg,mbq2QtXN7YYC.jpg,bfE3FQTCHqKR.jpg', 'z5xehWrY2qZD.jpg,xPpkgS4NS5jr.jpg,mbq2QtXN7YYC.jpg,bfE3FQTCHqKR.jpg', 1, NULL, NULL, 16, 178, 2, 2, 76, 1, 2, 5, 1, 1, 8, 1, '2,14,56', '2020-06-25 03:51:55', '2020-06-25 07:14:30'),
(698, 'GA-700-7ADR', NULL, 8495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'YUmrKsT3RLOm.jpg,T8e3jYoKHq3Z.jpg,itDDp8so6n95.jpg,JJwCjDWEHFeL.jpg', 'YUmrKsT3RLOm.jpg,T8e3jYoKHq3Z.jpg,itDDp8so6n95.jpg,JJwCjDWEHFeL.jpg', 1, NULL, NULL, 16, 178, 2, 2, 76, 1, 2, 5, 1, 1, 8, 1, '2,14,56', '2020-06-25 03:51:55', '2020-06-25 07:14:33'),
(699, 'GA-700CM-8ADR', NULL, 8795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'PjPc63P1Cdwq.jpg,RLyPaTyQ7HEt.jpg,3xyPdVk5l4Qx.jpg', 'PjPc63P1Cdwq.jpg,RLyPaTyQ7HEt.jpg,3xyPdVk5l4Qx.jpg', 1, NULL, NULL, 16, 178, 2, 2, 76, 1, 2, 5, 3, 1, 14, 1, '2,14,56', '2020-06-25 03:51:55', '2020-06-25 07:14:35'),
(700, 'GSG-100-1A3DR', NULL, 14995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'FdQjhUv0uUvB.jpg,cBkM9WPskUEw.jpg,AEDS7osdDeYl.jpg,cJUnMbukAv9q.jpg', 'FdQjhUv0uUvB.jpg,cBkM9WPskUEw.jpg,AEDS7osdDeYl.jpg,cJUnMbukAv9q.jpg', 1, NULL, NULL, 16, 178, 2, 2, 76, 1, 2, 5, 3, 1, 13, 1, '2,5,14,25,56', '2020-06-25 03:51:55', '2020-06-25 07:14:38'),
(701, 'SHE-3011PG-9ADR', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ioSbnlbrPgYS.jpg,oZII2Fzcye8A.jpg,d2PzrwxJwt4A.jpg,hHfUaL61mMCB.jpg', 'ioSbnlbrPgYS.jpg,oZII2Fzcye8A.jpg,d2PzrwxJwt4A.jpg,hHfUaL61mMCB.jpg', 1, NULL, NULL, 16, 178, 2, 2, 76, 1, 2, 5, 16, 10, 6, 2, '11', '2020-06-25 03:51:55', '2020-06-25 07:14:41'),
(702, 'SHE-3011SG-7ADR', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'vDvFiRo5da4r.jpg,pabEyfoRNFCY.jpg,ipkKPFUaKK9I.jpg,7duQhoF2oSui.jpg', 'vDvFiRo5da4r.jpg,pabEyfoRNFCY.jpg,ipkKPFUaKK9I.jpg,7duQhoF2oSui.jpg', 1, NULL, NULL, 16, 178, 2, 2, 76, 1, 2, 5, 6, 10, 10, 2, '58,13', '2020-06-25 03:51:55', '2020-06-25 07:14:42'),
(703, 'SHE-3034SG-7AUDR', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'OVjnJnl52kQu.jpg,a25IKMrO5a5F.jpg,K9lT78V2F3G5.jpg', 'OVjnJnl52kQu.jpg,a25IKMrO5a5F.jpg,K9lT78V2F3G5.jpg', 1, NULL, NULL, 16, 178, 2, 2, 76, 1, 2, 5, 6, 10, 5, 2, '58,13', '2020-06-25 03:51:55', '2020-06-25 07:14:45'),
(704, 'SHE-3034SPG-7AUDR', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'bgsh7KafZb3m.jpg,5yGVzC02B07p.jpg,hBcMRt12RG7U.jpg', 'bgsh7KafZb3m.jpg,5yGVzC02B07p.jpg,hBcMRt12RG7U.jpg', 1, NULL, NULL, 16, 178, 2, 2, 67, 1, 2, 5, 6, 10, 10, 2, '58,13', '2020-06-25 03:51:56', '2020-06-25 07:14:47'),
(705, 'SHE-3047PG-5AUDR', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'wgYlRzCIa8Q2.jpg,AlhOwHYeMiCB.jpg,Rbp6kBTKFOZe.jpg,8284E8luSAZq.jpg', 'wgYlRzCIa8Q2.jpg,AlhOwHYeMiCB.jpg,Rbp6kBTKFOZe.jpg,8284E8luSAZq.jpg', 1, NULL, NULL, 16, 178, 2, 2, 67, 1, 2, 5, 4, 10, 6, 2, '58,13', '2020-06-25 03:51:56', '2020-06-25 07:14:49'),
(706, 'SHE-3047PG-9AUDR', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ZXnS6ibrDitD.jpg,NBaXyehW6H9i.jpg,QqHvmn8d6EgR.jpg,y5ZjR0X8DbEh.jpg', 'ZXnS6ibrDitD.jpg,NBaXyehW6H9i.jpg,QqHvmn8d6EgR.jpg,y5ZjR0X8DbEh.jpg', 1, NULL, NULL, 16, 178, 2, 2, 67, 1, 2, 5, 14, 10, 6, 2, '58,13', '2020-06-25 03:51:56', '2020-06-25 07:14:52'),
(707, 'SHE-3061PG-7AUDR', NULL, 10995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'q0iUCZx5DFhe.jpg,rZtoQHgoWJCB.jpg,93FTbEJZVsMO.jpg,jjRkjRqsh0l9.jpg', 'q0iUCZx5DFhe.jpg,rZtoQHgoWJCB.jpg,93FTbEJZVsMO.jpg,jjRkjRqsh0l9.jpg', 1, NULL, NULL, 16, 178, 2, 2, 63, 1, 2, 5, 6, 10, 6, 2, '58,13', '2020-06-25 03:51:56', '2020-06-25 07:14:54'),
(708, 'SHE-3066PG-4AUDF', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'NOiiSTVmjMq5.jpg,5wGHc5LP4zBY.jpg,QIuNAPYira0q.jpg,fit1I1baMGPx.jpg', 'NOiiSTVmjMq5.jpg,5wGHc5LP4zBY.jpg,QIuNAPYira0q.jpg,fit1I1baMGPx.jpg', 1, NULL, NULL, 16, 178, 2, 2, 67, 1, 2, 5, 8, 10, 6, 2, '11', '2020-06-25 03:51:56', '2020-06-25 07:14:57'),
(709, 'SHE-3066PGL-7AUDF', NULL, 8495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'k053h7zb0nWr.jpg,rU1kqnJjLAiU.jpg,28yEkwlGFc0t.jpg,iYeJNJzlzyfQ.jpg', 'k053h7zb0nWr.jpg,rU1kqnJjLAiU.jpg,28yEkwlGFc0t.jpg,iYeJNJzlzyfQ.jpg', 1, NULL, NULL, 16, 178, 2, 2, 67, 1, 2, 5, 5, 3, 2, 2, '11', '2020-06-25 03:51:56', '2020-06-25 07:14:59'),
(710, 'SHE3068PG-4AUDF', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'uveCyXbiRfHz.jpg,RFVR4KTirEjN.jpg,N5X4FZVYPeXI.jpg,7P2Cg1JNhXN1.jpg', 'uveCyXbiRfHz.jpg,RFVR4KTirEjN.jpg,N5X4FZVYPeXI.jpg,7P2Cg1JNhXN1.jpg', 1, NULL, NULL, 16, 178, 2, 2, 67, 1, 2, 5, 8, 10, 6, 2, NULL, '2020-06-25 03:51:56', '2020-06-25 07:15:02'),
(711, 'SHE-3068SPG-7AUDF', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'VPns9Yvfj2eB.jpg,921zwE3aZv33.jpg,8MOCFZe19DpS.jpg,B3Aw7YyMW6Ca.jpg', 'VPns9Yvfj2eB.jpg,921zwE3aZv33.jpg,8MOCFZe19DpS.jpg,B3Aw7YyMW6Ca.jpg', 1, NULL, NULL, 16, 178, 2, 2, 67, 1, 2, 5, 5, 10, 10, 2, '58,13', '2020-06-25 03:51:56', '2020-06-25 07:15:04'),
(712, 'SHE-4034PG-7AUDR', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'mZx2prlBH1VB.jpg,VJBGp3yihG75.jpg,emrJGtrQbp8N.jpg,GbCPQ3qWv9jx.jpg', 'mZx2prlBH1VB.jpg,VJBGp3yihG75.jpg,emrJGtrQbp8N.jpg,GbCPQ3qWv9jx.jpg', 1, NULL, NULL, 16, 178, 2, 2, 59, 1, 2, 5, 5, 10, 6, 2, '11', '2020-06-25 03:51:56', '2020-06-25 07:15:06'),
(713, 'SHE-4056PG-2AUDF', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'oVqtFE1AF2Iv.jpg,JojXeQURqmSO.jpg,eju02muT0248.jpg,gRsaWdhj1SZx.jpg', 'oVqtFE1AF2Iv.jpg,JojXeQURqmSO.jpg,eju02muT0248.jpg,gRsaWdhj1SZx.jpg', 1, NULL, NULL, 16, 178, 2, 2, 58, 1, 2, 5, 2, 10, 6, 2, '11', '2020-06-25 03:51:56', '2020-06-25 07:15:09'),
(714, 'SHE-4056SPG-7AUDF', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'WpoPRtNUS3OW.jpg,RjrOFozcpkSX.jpg,yHXG3Gqx1J19.jpg,DRfzHoQTsjcC.jpg', 'WpoPRtNUS3OW.jpg,RjrOFozcpkSX.jpg,yHXG3Gqx1J19.jpg,DRfzHoQTsjcC.jpg', 1, NULL, NULL, 16, 178, 2, 2, 58, 1, 2, 5, 6, 10, 10, 2, '11', '2020-06-25 03:51:56', '2020-06-25 07:15:11'),
(715, 'SHE-4533PG-4AUDF', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '8j0xmFzkd0uP.jpg,S4NWwxVvyEtU.jpg,geYWWvWvhOG9.jpg,JAJMOojnLcui.jpg', '8j0xmFzkd0uP.jpg,S4NWwxVvyEtU.jpg,geYWWvWvhOG9.jpg,JAJMOojnLcui.jpg', 1, NULL, NULL, 16, 178, 2, 2, 42, 1, 2, 5, 8, 10, 6, 2, '11', '2020-06-25 03:51:56', '2020-06-25 07:15:14'),
(716, 'SHE-4533PGL-7BUDF', NULL, 8495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Q1OexVLrQnPB.jpg,DnKzRPgj7xYP.jpg,zkMTIm3ieMKZ.jpg,tSATavT7ncWE.jpg', 'Q1OexVLrQnPB.jpg,DnKzRPgj7xYP.jpg,zkMTIm3ieMKZ.jpg,tSATavT7ncWE.jpg', 1, NULL, NULL, 16, 178, 2, 2, 40, 1, 2, 5, 6, 3, 2, 2, '11', '2020-06-25 03:51:56', '2020-06-25 07:15:17'),
(717, 'SHE-4057PG-7AUDF', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'BuUBi1Oj6ZPc.jpg,4P8GxQcWGp5y.jpg,zQeBtuxKETdo.jpg,UZT8YFogD68v.jpg', 'BuUBi1Oj6ZPc.jpg,4P8GxQcWGp5y.jpg,zQeBtuxKETdo.jpg,UZT8YFogD68v.jpg', 1, NULL, NULL, 16, 178, 2, 2, 63, 1, 2, 5, 6, 10, 6, 2, '11', '2020-06-25 03:51:56', '2020-06-25 07:15:20'),
(718, 'A-158WA-1DF', NULL, 1295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'E9e7QFPK8ynd.jpg,xIosJ7RhaWpJ.jpg', 'E9e7QFPK8ynd.jpg,xIosJ7RhaWpJ.jpg', 1, NULL, NULL, 16, 178, 2, 2, 63, 1, 2, 5, 1, 4, 5, 3, NULL, '2020-06-25 03:51:56', '2020-06-25 07:15:22'),
(719, 'A159WGEA-5DF', NULL, 3795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '1s1dfmdAm2Z5.jpg,HyeoLtmekN14.jpg,pZVWfodpXDLr.jpg', '1s1dfmdAm2Z5.jpg,HyeoLtmekN14.jpg,pZVWfodpXDLr.jpg', 1, NULL, NULL, 16, 178, 2, 2, 63, 1, 2, 5, 1, 4, 11, 3, NULL, '2020-06-25 03:51:57', '2020-06-25 07:15:24'),
(720, 'A159WGED-1DF', NULL, 5495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '7k3rBaUhmWYn.jpg,Qk7gboGykK6W.jpg', '7k3rBaUhmWYn.jpg,Qk7gboGykK6W.jpg', 1, NULL, NULL, 16, 178, 2, 2, 63, 1, 2, 5, 1, 4, 11, 3, NULL, '2020-06-25 03:51:57', '2020-06-25 07:15:25'),
(721, 'A168WA-1WDF', NULL, 2195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'GnzWr0sVaFP2.jpg,1Vo7l4q3wpLW.jpg', 'GnzWr0sVaFP2.jpg,1Vo7l4q3wpLW.jpg', 1, NULL, NULL, 16, 178, 2, 2, 63, 1, 2, 5, 1, 4, 5, 3, NULL, '2020-06-25 03:51:57', '2020-06-25 07:15:27'),
(722, 'A168WECM-5DF', NULL, 4395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '8zNuBA5Czcnm.jpg,xyoxHR1Om3Da.jpg,8Uo9tUJqrOAf.jpg', '8zNuBA5Czcnm.jpg,xyoxHR1Om3Da.jpg,8Uo9tUJqrOAf.jpg', 1, NULL, NULL, 16, 178, 2, 2, 54, 1, 2, 5, 1, 4, 6, 3, NULL, '2020-06-25 03:51:57', '2020-06-25 07:15:29'),
(723, 'A168WEGC-3DF', NULL, 4395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'RgZRygmHmpod.jpg,3qFLeMkKa2cM.jpg,nu8jcMunPiOY.jpg', 'RgZRygmHmpod.jpg,3qFLeMkKa2cM.jpg,nu8jcMunPiOY.jpg', 1, NULL, NULL, 16, 178, 2, 2, 54, 1, 2, 5, 1, 4, 11, 3, NULL, '2020-06-25 03:51:57', '2020-06-25 07:15:32'),
(724, 'A168WEGM-9DF', NULL, 4395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'An6ueqNyPGfK.jpg,uEaoi1Lm2pvj.jpg,pjr9XrKvuFsT.jpg,vwRKVLjk9ehh.jpg', 'An6ueqNyPGfK.jpg,uEaoi1Lm2pvj.jpg,pjr9XrKvuFsT.jpg,vwRKVLjk9ehh.jpg', 1, NULL, NULL, 16, 178, 2, 2, 54, 1, 2, 5, 7, 4, 11, 3, NULL, '2020-06-25 03:51:57', '2020-06-25 07:15:34'),
(725, 'A-178WA-1ADF', NULL, 2195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Pw7Gx3cKhAwV.jpg,18wS7IZOP4xg.jpg,TZS42CUwxrt0.jpg', 'Pw7Gx3cKhAwV.jpg,18wS7IZOP4xg.jpg,TZS42CUwxrt0.jpg', 1, NULL, NULL, 16, 178, 2, 2, 54, 1, 2, 5, 3, 4, 5, 1, NULL, '2020-06-25 03:51:57', '2020-06-25 07:15:36'),
(726, 'A700WM-7ADF', NULL, 2995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'jD7nh9Xnye9M.jpg,rw26yfci7bMa.jpg,rjw6xJ0oLXmJ.jpg,UL7tVkF2qPHv.jpg', 'jD7nh9Xnye9M.jpg,rw26yfci7bMa.jpg,rjw6xJ0oLXmJ.jpg,UL7tVkF2qPHv.jpg', 1, NULL, NULL, 16, 178, 2, 2, 54, 1, 2, 5, 3, 4, 5, 1, NULL, '2020-06-25 03:51:57', '2020-06-25 07:15:39'),
(727, 'B640WB-1ADF', NULL, 4995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'VNkOaLeh9XZl.jpg,ti18KTM7jgB7.jpg,GEzh4DqbFNcO.jpg', 'VNkOaLeh9XZl.jpg,ti18KTM7jgB7.jpg,GEzh4DqbFNcO.jpg', 1, NULL, NULL, 16, 178, 2, 2, 75, 1, 2, 5, 3, 4, 1, 1, '2,5,14,46', '2020-06-25 03:51:57', '2020-06-25 07:15:41'),
(728, 'BA-110-1ADR', 'Standard Analog Digital', 8495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'K8TDtl8At1ic.jpg,VrkCnFA5x5Gr.jpg,ICIG0uZ6XEsO.jpg,xnrD2tEgpIf8.jpg', 'K8TDtl8At1ic.jpg,VrkCnFA5x5Gr.jpg,ICIG0uZ6XEsO.jpg,xnrD2tEgpIf8.jpg', 1, NULL, NULL, 16, 178, 2, 2, 75, 1, 2, 5, 1, 4, 1, 2, '2,5,14,32,56', '2020-06-25 03:51:57', '2020-06-25 07:15:44'),
(729, 'DB-36-1AVDF', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'VJSYeNiXI6VT.jpg,SBsUTL0JCoCe.jpg,cUUP4skBRzrm.jpg', 'VJSYeNiXI6VT.jpg,SBsUTL0JCoCe.jpg,cUUP4skBRzrm.jpg', 1, NULL, NULL, 16, 178, 2, 2, 75, 1, 2, 5, 3, 4, 1, 1, NULL, '2020-06-25 03:51:57', '2020-06-25 07:15:46'),
(730, 'DW-5600BB-1DR', NULL, 5495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'd5AQ35A1HE10.jpg,ICgjkWfHzu6Q.jpg,CMlLrPoGToMa.jpg,Q37WlLtiD055.jpg', 'd5AQ35A1HE10.jpg,ICgjkWfHzu6Q.jpg,CMlLrPoGToMa.jpg,Q37WlLtiD055.jpg', 1, NULL, NULL, 16, 178, 2, 2, 75, 1, 2, 5, 1, 4, 1, 1, '58,2,13,34', '2020-06-25 03:51:57', '2020-06-25 07:15:49'),
(731, 'DW-5600BBM-1D', NULL, 5495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Ym7vvhCxg6Yx.jpg,858qqYGGtSNE.jpg', 'Ym7vvhCxg6Yx.jpg,858qqYGGtSNE.jpg', 1, NULL, NULL, 16, 178, 2, 2, 75, 1, 2, 5, 1, 4, 1, 1, '2,14', '2020-06-25 03:51:57', '2020-06-25 07:15:50'),
(732, 'DW-5600DE-2DR', NULL, 5495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'rWnmYQAnZMAm.jpg', 'rWnmYQAnZMAm.jpg', 1, NULL, NULL, 16, 178, 2, 2, 75, 1, 2, 5, 1, 4, 2, 1, '2,14', '2020-06-25 03:51:58', '2020-06-25 07:15:51'),
(733, 'DW-5600E-1VDF', NULL, 4395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'bslmmFHcuuBK.jpg,4l37uCfj6lfz.jpg', 'bslmmFHcuuBK.jpg,4l37uCfj6lfz.jpg', 1, NULL, NULL, 16, 178, 2, 2, 61, 1, 2, 5, 1, 4, 1, 1, NULL, '2020-06-25 03:51:58', '2020-06-25 07:15:52'),
(734, 'DW-6900LU-3DR', NULL, 4995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'SKKwq0oASVmc.jpg,NuLMjiQD79wE.jpg,NsdUtrIlUvGx.jpg', 'SKKwq0oASVmc.jpg,NuLMjiQD79wE.jpg,NsdUtrIlUvGx.jpg', 1, NULL, NULL, 16, 178, 2, 2, 61, 1, 2, 5, 1, 4, 1, 1, NULL, '2020-06-25 03:51:58', '2020-06-25 07:15:53'),
(735, 'EF-130D-1A2VDF', '3 Hand Analog', 6995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'CST7N0FLLm0K.jpg,sgu73vE6xiH3.jpg,IqkVGUerfRVF.jpg', 'CST7N0FLLm0K.jpg,sgu73vE6xiH3.jpg,IqkVGUerfRVF.jpg', 1, NULL, NULL, 16, 178, 2, 2, 77, 1, 2, 5, 1, 4, 5, 1, '13', '2020-06-25 03:51:58', '2020-06-25 07:15:55'),
(736, 'EF-133D-7AVDF', '3 Hand Analog', 5995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'mW1omot5IYCJ.jpg,FTrt82UsVt0N.jpg,UPCObJCE4Rq4.jpg', 'mW1omot5IYCJ.jpg,FTrt82UsVt0N.jpg,UPCObJCE4Rq4.jpg', 1, NULL, NULL, 16, 178, 2, 2, 81, 1, 2, 5, 3, 4, 5, 1, '13', '2020-06-25 03:51:58', '2020-06-25 07:15:58'),
(737, 'EF-326D-7AVDF', 'Multi Hand', 6995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Us3IoF7hdZkR.jpg,MigKnmx6zA8c.jpg,rWsH5RaQ8eQU.jpg', 'Us3IoF7hdZkR.jpg,MigKnmx6zA8c.jpg,rWsH5RaQ8eQU.jpg', 1, NULL, NULL, 16, 178, 2, 2, 81, 1, 2, 5, 3, 4, 5, 1, '58,13', '2020-06-25 03:51:58', '2020-06-25 07:16:00'),
(738, 'EF-328D-7AVUDF', 'Multi Hand', 7495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'e9Ehsp6UGtJh.jpg,0oO1UUmxSh1q.jpg,Ml13MLyN0Gd3.jpg', 'e9Ehsp6UGtJh.jpg,0oO1UUmxSh1q.jpg,Ml13MLyN0Gd3.jpg', 1, NULL, NULL, 16, 178, 2, 1, 83, 1, 2, 5, 3, 4, 5, 1, '61,13', '2020-06-25 03:51:58', '2020-06-25 07:16:02'),
(739, 'EF-328SG-1AVDF', 'Multi Hand', 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Mq89tAJVrMzJ.jpg,0nA7UlBH5pCj.jpg,BWfGxf9e3ZDo.jpg,nlmhuRhjfwo7.jpg', 'Mq89tAJVrMzJ.jpg,0nA7UlBH5pCj.jpg,BWfGxf9e3ZDo.jpg,nlmhuRhjfwo7.jpg', 1, NULL, NULL, 16, 178, 2, 1, 83, 1, 2, 5, 1, 8, 9, 1, '58,5,61', '2020-06-25 03:51:58', '2020-06-25 07:16:04'),
(740, 'EF-334D-1AVUDF', 'Multi Hand', 6995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'jm39xdZ86vEX.jpg,Q4Z6xdMt5duy.jpg,PUhq2P5QZkaf.jpg', 'jm39xdZ86vEX.jpg,Q4Z6xdMt5duy.jpg,PUhq2P5QZkaf.jpg', 1, NULL, NULL, 16, 178, 2, 1, 83, 1, 2, 5, 1, 4, 5, 1, '58,13', '2020-06-25 03:51:58', '2020-06-25 07:16:07'),
(741, 'EF-343D-7AVDF', 'Multi Hand', 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'pq7yA8FWSO2p.jpg,S0zOZKvpftZG.jpg,MUFHmR8VocuF.jpg', 'pq7yA8FWSO2p.jpg,S0zOZKvpftZG.jpg,MUFHmR8VocuF.jpg', 1, NULL, NULL, 16, 178, 2, 1, 77, 1, 2, 5, 6, 1, 5, 1, '61,13', '2020-06-25 03:51:58', '2020-06-25 07:16:08'),
(743, 'EF-522D-1AVEF', 'Chronograph', 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 178, 2, 1, 79, 1, 2, 5, 1, 4, 5, 1, '61,11', '2020-06-25 03:51:58', '2020-06-25 03:51:58'),
(744, 'EF-539SG-7AVUDF', 'Chronograph', 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'GfoRIdLjTVtj.jpg,Ob9trB63ygKE.jpg,zQ1GjsajmxQl.jpg', 'GfoRIdLjTVtj.jpg,Ob9trB63ygKE.jpg,zQ1GjsajmxQl.jpg', 1, NULL, NULL, 16, 178, 2, 1, 79, 1, 2, 5, 6, 4, 12, 1, NULL, '2020-06-25 03:51:58', '2020-06-25 07:16:11'),
(745, 'EF-546-7AVDF', 'Chronograph', 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'JpfMbBtqQMeU.jpg,tp0gTRYOVwNd.jpg,4nQQR4HP4dXq.jpg', 'JpfMbBtqQMeU.jpg,tp0gTRYOVwNd.jpg,4nQQR4HP4dXq.jpg', 1, NULL, NULL, 16, 178, 2, 1, 81, 1, 2, 5, 5, 4, 5, 1, '61,11', '2020-06-25 03:51:58', '2020-06-25 07:16:13'),
(746, 'EF-546D-1A1VDF', 'Chronograph', 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'eGSe5XKBgbLy.jpg,4ZpJaVjS4wmR.jpg,W2XEQw1UMuQC.jpg', 'eGSe5XKBgbLy.jpg,4ZpJaVjS4wmR.jpg,W2XEQw1UMuQC.jpg', 1, NULL, NULL, 16, 178, 2, 1, 81, 1, 2, 5, 1, 4, 5, 1, '61,11', '2020-06-25 03:51:58', '2020-06-25 07:16:16');
INSERT INTO `product_details` (`id`, `model_no`, `series`, `price`, `material`, `buckle`, `size`, `shape`, `frame_colour`, `lens`, `visible_ray`, `dimensions`, `nib`, `length_mm`, `taper`, `clasp_type`, `clasp_size`, `lock_system`, `description`, `warranty_period`, `meta_title`, `meta_description`, `meta_keyword`, `h1`, `status`, `featured_status`, `images`, `thumb_img`, `main_category_id`, `colour_id`, `clock_type_id`, `brand_id`, `collection_id`, `movement_id`, `movement_type_id`, `case_size_id`, `case_shape_id`, `case_material_id`, `glass_material_id`, `dial_colour_id`, `strap_material_id`, `strap_colour_id`, `gender_id`, `feature_id`, `created_at`, `updated_at`) VALUES
(747, 'EF-546D-1A4VDF', 'Chronograph', 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '6iOmNWR8RHfY.jpg,On0CpuINoIVU.jpg,Cs6FP0ybs0m0.jpg', '6iOmNWR8RHfY.jpg,On0CpuINoIVU.jpg,Cs6FP0ybs0m0.jpg', 1, NULL, NULL, 16, 178, 2, 1, 47, 1, 2, 5, 1, 4, 5, 1, '61,11', '2020-06-25 03:51:58', '2020-06-25 07:16:18'),
(748, 'EF-558D-1AVDF', 'Chronograph', 12995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'DUN8X75sG25g.jpg,hCROIwX9lc82.jpg,GL63tXZhztVp.jpg', 'DUN8X75sG25g.jpg,hCROIwX9lc82.jpg,GL63tXZhztVp.jpg', 1, NULL, NULL, 16, 178, 2, 1, 82, 1, 2, 5, 1, 4, 5, 1, '61,13,39,51', '2020-06-25 03:51:58', '2020-06-25 07:16:20'),
(749, 'EF-558D-7AVDF', 'Chronograph', 12995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'h16sR3XF11FU.jpg,ExxgNMFj79iq.jpg,finGHFxYKxXK.jpg,VbdKm35AHWX6.jpg,G3xiInoG89Xw.jpg', 'h16sR3XF11FU.jpg,ExxgNMFj79iq.jpg,finGHFxYKxXK.jpg,VbdKm35AHWX6.jpg,G3xiInoG89Xw.jpg', 1, NULL, NULL, 16, 178, 2, 1, 82, 1, 2, 5, 5, 4, 5, 1, '61,13,39,46,51', '2020-06-25 03:51:58', '2020-06-25 07:16:24'),
(750, 'EF-558SG-1AVDF', 'Chronograph', 13995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ErcF1fIkQduj.jpg,73PYjZHaUjb0.jpg,OvE7THkWJKYG.jpg,CRQqHvUZLH1h.jpg,8vRZdj6OMYqb.jpg', 'ErcF1fIkQduj.jpg,73PYjZHaUjb0.jpg,OvE7THkWJKYG.jpg,CRQqHvUZLH1h.jpg,8vRZdj6OMYqb.jpg', 1, NULL, NULL, 16, 178, 2, 1, 82, 1, 5, 5, 1, 8, 9, 1, '61,13,39,46', '2020-06-25 03:51:58', '2020-06-25 07:16:27'),
(751, 'EFM-502D-7AVDF', 'Chronograph', 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'DLkc373TJhdX.jpg,SzzU6cLz7EqG.jpg,uY3i8ITWmDfG.jpg,nt3VX9EcjAna.jpg', 'DLkc373TJhdX.jpg,SzzU6cLz7EqG.jpg,uY3i8ITWmDfG.jpg,nt3VX9EcjAna.jpg', 1, NULL, NULL, 16, 178, 2, 1, 77, 1, 2, 5, 6, 4, 5, 1, '61,11', '2020-06-25 03:51:59', '2020-06-25 07:16:30'),
(753, 'EFR-304D-2AVUDF', NULL, 9495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'tdAj386EvEye.jpg,mNhBCwFKyFwy.jpg,IeB7l2ROvwgu.jpg', 'tdAj386EvEye.jpg,mNhBCwFKyFwy.jpg,IeB7l2ROvwgu.jpg', 1, NULL, NULL, 16, 178, 2, 1, 71, 1, 2, 5, 2, 4, 5, 1, '2,61,11,25,46,56', '2020-06-25 03:51:59', '2020-06-25 07:16:34'),
(754, 'EFR-522D-1AV', 'Chronograph', 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'iYoId2GWe3xA.jpg,ElOoDiZbAoTV.jpg,rOBwFjgoY0KN.jpg', 'iYoId2GWe3xA.jpg,ElOoDiZbAoTV.jpg,rOBwFjgoY0KN.jpg', 1, NULL, NULL, 16, 178, 2, 1, 79, 1, 2, 5, 1, 4, 5, 1, '61,11', '2020-06-25 03:51:59', '2020-06-25 07:16:50'),
(755, 'EFR-526L-2AVUDF', NULL, 6495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '8F2KYvP0d0UY.jpg,IM6bQyvGuCsw.jpg,FdYNCo8hOLR4.jpg,DL8U8uclVWac.jpg', '8F2KYvP0d0UY.jpg,IM6bQyvGuCsw.jpg,FdYNCo8hOLR4.jpg,DL8U8uclVWac.jpg', 1, NULL, NULL, 16, 178, 2, 1, 39, 1, 2, 5, 2, 3, 2, 1, '61,11,46', '2020-06-25 03:51:59', '2020-06-25 07:16:53'),
(756, 'EFR-527L-1AVUDF', 'Chronograph', 6495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '082zdxDRhgaw.jpg,0k3UT88qsamN.jpg,bhotyiz5vPXN.jpg', '082zdxDRhgaw.jpg,0k3UT88qsamN.jpg,bhotyiz5vPXN.jpg', 1, NULL, NULL, 16, 178, 2, 1, 66, 1, 2, 5, 1, 3, 1, 1, '61,11', '2020-06-25 03:51:59', '2020-06-25 07:16:56'),
(757, 'EFR-534BK-9AVDF', 'Chronograph', 10995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'l8qqzt1IdbSp.jpg,9eTmsAF6sZza.jpg,cAykqZhveLz0.jpg', 'l8qqzt1IdbSp.jpg,9eTmsAF6sZza.jpg,cAykqZhveLz0.jpg', 1, NULL, NULL, 16, 178, 2, 1, 62, 1, 9, 5, 11, 9, 1, 1, '61,11', '2020-06-25 03:51:59', '2020-06-25 07:16:59'),
(758, 'EFR-534D-7AVDF', 'Chronograph', 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'wyHKeb0AoX3l.jpg,1ySpLoHBKWOC.jpg,ahOFc3dCA77X.jpg', 'wyHKeb0AoX3l.jpg,1ySpLoHBKWOC.jpg,ahOFc3dCA77X.jpg', 1, NULL, NULL, 16, 178, 2, 1, 62, 1, 2, 5, 6, 4, 5, 1, '58,61,11,46', '2020-06-25 03:51:59', '2020-06-25 07:17:02'),
(759, 'EFR-534RB-1ADR', 'Chronograph', 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '73jHBxEm0FSm.jpg,1jrB1TWEEZ2I.jpg,UmAoHkdkrrUn.jpg', '73jHBxEm0FSm.jpg,1jrB1TWEEZ2I.jpg,UmAoHkdkrrUn.jpg', 1, NULL, NULL, 16, 178, 2, 1, 62, 1, 2, 5, 1, 4, 5, 1, '61,11', '2020-06-25 03:51:59', '2020-06-25 07:17:07'),
(760, 'EFR-536BK-1A9VDF', 'Chronograph', 12995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ma49lFJXX2bH.jpg,43mE5LzIICBm.jpg,46OSWJJNWHGS.jpg', 'ma49lFJXX2bH.jpg,43mE5LzIICBm.jpg,46OSWJJNWHGS.jpg', 1, NULL, NULL, 16, 178, 2, 1, 61, 1, 9, 5, 1, 9, 1, 1, '61,11', '2020-06-25 03:51:59', '2020-06-25 07:17:10'),
(761, 'EFR-539bk-1avudf', 'Chronograph', 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '12uGiRf1oUPU.jpg,SKXwdN0zyDll.jpg,Xj8U9NgDBqbn.jpg', '12uGiRf1oUPU.jpg,SKXwdN0zyDll.jpg,Xj8U9NgDBqbn.jpg', 1, NULL, NULL, 16, 178, 2, 1, 61, 1, 2, 5, 1, 9, 1, 1, '61,11,46', '2020-06-25 03:51:59', '2020-06-25 07:17:21'),
(762, 'EFR-539L-5AVUDF', 'Chronograph', 8495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'DEezvmRicizu.jpg,ZDNtcB0CQkDA.jpg,gHDKu5CYG53c.jpg', 'DEezvmRicizu.jpg,ZDNtcB0CQkDA.jpg,gHDKu5CYG53c.jpg', 1, NULL, NULL, 16, 178, 2, 1, 61, 1, 2, 5, 4, 3, 1, 1, '61,11,46', '2020-06-25 03:51:59', '2020-06-25 07:17:38'),
(763, 'EFR-539L-7CVUDF', NULL, 8495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'lafSaghxaHXn.jpg,dFHVepV1nN1o.jpg,IEKMBKedgiei.jpg', 'lafSaghxaHXn.jpg,dFHVepV1nN1o.jpg,IEKMBKedgiei.jpg', 1, NULL, NULL, 16, 178, 2, 1, 61, 1, 2, 5, 2, 3, 2, 1, '61,11', '2020-06-25 03:52:00', '2020-06-25 07:17:45'),
(764, 'EFR-539SG-7A5VUDF', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ZAaPFaBbScZp.jpg,t6FVI0csKvBD.jpg,FlRBSUhv8mQs.jpg', 'ZAaPFaBbScZp.jpg,t6FVI0csKvBD.jpg,FlRBSUhv8mQs.jpg', 1, NULL, NULL, 16, 178, 2, 1, 79, 1, 8, 5, 6, 10, 10, 1, '61,11,46', '2020-06-25 03:52:00', '2020-06-25 07:17:49'),
(765, 'EFR-540BK-1AVUDF', NULL, 15995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'goHbw4aRD5pC.jpg,XWWovmNVV5ax.jpg,xj3x4Nm4KBGc.jpg', 'goHbw4aRD5pC.jpg,XWWovmNVV5ax.jpg,xj3x4Nm4KBGc.jpg', 1, NULL, NULL, 16, 178, 2, 1, 61, 1, 9, 5, 1, 9, 1, 1, '61,11', '2020-06-25 03:52:00', '2020-06-25 07:17:51'),
(766, 'EFR-540RB-1ADR', NULL, 19995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'dssgmrreVXvZ.jpg,BZlUJWZwbEt3.jpg,Vt1tYiTefMZi.jpg', 'dssgmrreVXvZ.jpg,BZlUJWZwbEt3.jpg,Vt1tYiTefMZi.jpg', 1, NULL, NULL, 16, 178, 2, 1, 61, 1, 2, 5, 1, 4, 5, 1, '61', '2020-06-25 03:52:00', '2020-06-25 07:17:53'),
(767, 'EFR-540RBP-1ADR', NULL, 19995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'wGocaDU4Wnat.jpg,q4a5lnX7pa7i.jpg,OgD59VhLOqLe.jpg', 'wGocaDU4Wnat.jpg,q4a5lnX7pa7i.jpg,OgD59VhLOqLe.jpg', 1, NULL, NULL, 16, 178, 2, 1, 61, 1, 2, 5, 1, 1, 1, 1, '61', '2020-06-25 03:52:00', '2020-06-25 07:17:55'),
(768, 'EFR-543L-1AVUDF', NULL, 8795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '2JKcN9nrQCqe.jpg,vQ8CSJG1F0VO.jpg,OLt5YqzHfDo9.jpg', '2JKcN9nrQCqe.jpg,vQ8CSJG1F0VO.jpg,OLt5YqzHfDo9.jpg', 1, NULL, NULL, 16, 178, 2, 1, 61, 1, 2, 5, 1, 3, 1, 1, '61,11', '2020-06-25 03:52:00', '2020-06-25 07:17:58'),
(769, 'EFR-549L-7AVUDF', NULL, 8495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'jlbTGiqcvOSb.jpg,JT7BvU93QJQp.jpg,tXDSK94AE9UD.jpg', 'jlbTGiqcvOSb.jpg,JT7BvU93QJQp.jpg,tXDSK94AE9UD.jpg', 1, NULL, NULL, 16, 178, 2, 1, 61, 1, 2, 5, 20, 3, 3, 1, '61,13,46', '2020-06-25 03:52:00', '2020-06-25 07:18:01'),
(770, 'EFR-552GL-2AVUDF', NULL, 8495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'vOpFtc4xRc2H.jpg,d9dz9lqt3GlD.jpg,nMDM0THOyHDx.jpg', 'vOpFtc4xRc2H.jpg,d9dz9lqt3GlD.jpg,nMDM0THOyHDx.jpg', 1, NULL, NULL, 16, 178, 2, 1, 47, 1, 2, 5, 2, 3, 3, 1, '58,61,11', '2020-06-25 03:52:00', '2020-06-25 07:18:03'),
(771, 'EFR-552GL-7AVUDF', 'Chronograph', 8495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'lsn1y8HwS1dU.jpg,ZRCu47j66zYP.jpg,aHyqQKLZKRcx.jpg', 'lsn1y8HwS1dU.jpg,ZRCu47j66zYP.jpg,aHyqQKLZKRcx.jpg', 1, NULL, NULL, 16, 178, 2, 1, 76, 1, 2, 5, 14, 3, 3, 1, '61,11,14,46', '2020-06-25 03:52:00', '2020-06-25 07:18:06'),
(772, 'EFR-552GL-7AVUDF', 'Chronograph', 8495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'bDChOR3ZK6S2.jpg,ijCKc5vzpzHn.jpg,WJ6KObBCalDM.jpg', 'bDChOR3ZK6S2.jpg,ijCKc5vzpzHn.jpg,WJ6KObBCalDM.jpg', 1, NULL, NULL, 16, 178, 2, 1, 76, 1, 2, 5, 14, 3, 3, 1, '61,11,14,46', '2020-06-25 03:52:01', '2020-06-25 07:18:08'),
(773, 'EFR-552L-2AVUDF', NULL, 8295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'vIHNcGWtIGin.jpg,Ssx0EBPcC7zm.jpg,ZEnL80oMuCoo.jpg', 'vIHNcGWtIGin.jpg,Ssx0EBPcC7zm.jpg,ZEnL80oMuCoo.jpg', 1, NULL, NULL, 16, 178, 2, 1, 81, 1, 2, 5, 2, 3, 2, 1, '58,61,11,46', '2020-06-25 03:52:01', '2020-06-25 07:18:11'),
(774, 'EFR-552SG-2AVUDF', NULL, 9495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'OlFw7g9RG5DF.jpg,Ahrcp9RFIQwZ.jpg,nEbgjDUq0nzs.jpg', 'OlFw7g9RG5DF.jpg,Ahrcp9RFIQwZ.jpg,nEbgjDUq0nzs.jpg', 1, NULL, NULL, 16, 178, 2, 1, 81, 1, 2, 5, 2, 10, 10, 1, '58,61,11,46', '2020-06-25 03:52:01', '2020-06-25 07:18:13'),
(775, 'EFR-553D-1BVUDF', NULL, 6995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '3cQyVFZhul9R.jpg,b9BJLZlQW0ax.jpg,I2eiecy1PDje.jpg', '3cQyVFZhul9R.jpg,b9BJLZlQW0ax.jpg,I2eiecy1PDje.jpg', 1, NULL, NULL, 16, 178, 2, 1, 81, 1, 2, 5, 1, 4, 5, 1, '61,11', '2020-06-25 03:52:01', '2020-06-25 07:18:16'),
(776, 'EFR-553D-5BVUDF', NULL, 6995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'TsC4l0HCGlhW.jpg,2TvzI8XOkxs9.jpg,fLfx8L9w0ZBJ.jpg', 'TsC4l0HCGlhW.jpg,2TvzI8XOkxs9.jpg,fLfx8L9w0ZBJ.jpg', 1, NULL, NULL, 16, 178, 2, 1, 81, 1, 2, 5, 4, 4, 5, 1, '61,11', '2020-06-25 03:52:01', '2020-06-25 07:18:18'),
(777, 'EFR-556L-1AVUDF', NULL, 9395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'N4iRGfk6ppzj.jpg,Cl9ESaeM9SoP.jpg,GUJvLCZGGIRm.jpg,AKEbQXUZi0mr.jpg', 'N4iRGfk6ppzj.jpg,Cl9ESaeM9SoP.jpg,GUJvLCZGGIRm.jpg,AKEbQXUZi0mr.jpg', 1, NULL, NULL, 16, 178, 2, 1, 81, 1, 2, 5, 1, 3, 1, 1, '61,11', '2020-06-25 03:52:01', '2020-06-25 07:18:21'),
(778, 'EFR-556PC-2AVUDF', NULL, 9595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Fgl19gV5z8mX.jpg,Ar0raAefrKxe.jpg,hf67OlUAxRNZ.jpg,Ljg0LOR6m4f8.jpg', 'Fgl19gV5z8mX.jpg,Ar0raAefrKxe.jpg,hf67OlUAxRNZ.jpg,Ljg0LOR6m4f8.jpg', 1, NULL, NULL, 16, 178, 2, 1, 81, 1, 2, 5, 2, 3, 2, 1, '61,11,14,46', '2020-06-25 03:52:01', '2020-06-25 07:18:23'),
(779, 'EFR-559DB-1A9VUDF', NULL, 10495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'h4EtKl4sHf7Y.jpg,YdDtk69B8XBm.jpg,Kg3ACishEH41.jpg,MILm9nn1scBO.jpg', 'h4EtKl4sHf7Y.jpg,YdDtk69B8XBm.jpg,Kg3ACishEH41.jpg,MILm9nn1scBO.jpg', 1, NULL, NULL, 16, 178, 2, 1, 81, 1, 2, 5, 1, 4, 5, 1, '61,11,14,46', '2020-06-25 03:52:01', '2020-06-25 07:18:26'),
(780, 'EFR-559DC-1BVUDF', NULL, 12995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '3FskkdLFYUkU.jpg,In91rc7qVs9O.jpg,FATKzx2zpjVU.jpg', '3FskkdLFYUkU.jpg,In91rc7qVs9O.jpg,FATKzx2zpjVU.jpg', 1, NULL, NULL, 16, 178, 2, 1, 81, 1, 2, 5, 1, 9, 1, 1, '61,11', '2020-06-25 03:52:01', '2020-06-25 07:18:28'),
(781, 'EFV-500D-7AVUDF', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '15PBkf2BfoSx.jpg,LFprKiTRbmTT.jpg,pUe4ENQCbWmd.jpg', '15PBkf2BfoSx.jpg,LFprKiTRbmTT.jpg,pUe4ENQCbWmd.jpg', 1, NULL, NULL, 16, 178, 2, 1, 81, 1, 2, 5, 6, 4, 5, 1, '58,61,11,29,46', '2020-06-25 03:52:01', '2020-06-25 07:18:30'),
(782, 'EFV-500GL-2AVUDF', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Rt5zJhuOYr2C.jpg,d5KcZe9V6RfI.jpg,EpTus8aIeiiX.jpg', 'Rt5zJhuOYr2C.jpg,d5KcZe9V6RfI.jpg,EpTus8aIeiiX.jpg', 1, NULL, NULL, 16, 178, 2, 1, 81, 1, 2, 5, 2, 3, 3, 1, '58,61,11,46', '2020-06-25 03:52:01', '2020-06-25 07:18:33'),
(783, 'EFV-500SG-7AVUDF', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'JuQ1IZldxGFb.jpg,IT7d9RHI7FKO.jpg,3pFyCeodm27S.jpg', 'JuQ1IZldxGFb.jpg,IT7d9RHI7FKO.jpg,3pFyCeodm27S.jpg', 1, NULL, NULL, 16, 178, 2, 1, 81, 1, 2, 5, 6, 10, 10, 1, '58,61,11,29,46', '2020-06-25 03:52:01', '2020-06-25 07:18:35'),
(784, 'EFV-520DB-2AVUDF', 'Chronograph', 8495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'V6uXs9tAjqGQ.jpg,Tuipk8bXpIQC.jpg,eri0XQH0Wf7K.jpg', 'V6uXs9tAjqGQ.jpg,Tuipk8bXpIQC.jpg,eri0XQH0Wf7K.jpg', 1, NULL, NULL, 16, 178, 2, 1, 81, 1, 2, 5, 2, 4, 5, 1, '61,11,46', '2020-06-25 03:52:01', '2020-06-25 07:18:37'),
(785, 'EFV-530D-2AVUDF', 'Chronograph', 8495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'TEZEh9uxrmyx.jpg,zVxHIjdPrOz1.jpg,DVUqDXtPZsGf.jpg', 'TEZEh9uxrmyx.jpg,zVxHIjdPrOz1.jpg,DVUqDXtPZsGf.jpg', 1, NULL, NULL, 16, 178, 2, 1, 81, 1, 2, 5, 2, 4, 5, 1, '61,11,14,46', '2020-06-25 03:52:02', '2020-06-25 07:18:39'),
(786, 'EFV-530DB-2AVUDF', 'Chronograph', 8495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'NVuxwGg3eq0M.jpg,YljwPqEpoYkJ.jpg,wCYcM8halRfz.jpg', 'NVuxwGg3eq0M.jpg,YljwPqEpoYkJ.jpg,wCYcM8halRfz.jpg', 1, NULL, NULL, 16, 178, 2, 1, 81, 1, 2, 5, 2, 4, 5, 1, '61,11,46', '2020-06-25 03:52:02', '2020-06-25 07:18:41'),
(787, 'EFV-530GL-5AVUDF', NULL, 8495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'riYBFM6GXVH7.jpg,6Od7uF2ZdJsl.jpg,sYeICPM33qfn.jpg', 'riYBFM6GXVH7.jpg,6Od7uF2ZdJsl.jpg,sYeICPM33qfn.jpg', 1, NULL, NULL, 16, 178, 2, 1, 81, 1, 2, 5, 4, 3, 3, 1, '61,11,46', '2020-06-25 03:52:02', '2020-06-25 07:18:44'),
(788, 'EFV-540DC-1BVUDF', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '9qBmGoLR3npw.jpg,YOmXpSs2NA51.jpg,pGX5yv4hoSsM.jpg,gK5MCYmll02n.jpg', '9qBmGoLR3npw.jpg,YOmXpSs2NA51.jpg,pGX5yv4hoSsM.jpg,gK5MCYmll02n.jpg', 1, NULL, NULL, 16, 178, 2, 1, 39, 1, 2, 5, 1, 9, 1, 1, '61,11,39,46', '2020-06-25 03:52:02', '2020-06-25 07:18:46'),
(789, 'EFV-540SBK-1AVUDF', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'h6nPzF5dBMbG.jpg,eC0EPjRMw17W.jpg,U0qW3TqVelei.jpg,XIBzBF1VfRnK.jpg', 'h6nPzF5dBMbG.jpg,eC0EPjRMw17W.jpg,U0qW3TqVelei.jpg,XIBzBF1VfRnK.jpg', 1, NULL, NULL, 16, 178, 2, 1, 39, 1, 2, 5, 1, 9, 1, 1, '61,11,46', '2020-06-25 03:52:02', '2020-06-25 07:18:49'),
(790, 'EQS-1000DB-1AVDR', 'Chronograph', 26995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'pusPK74J8m0s.jpg,JzEWeJsmU9Wx.jpg', 'pusPK74J8m0s.jpg,JzEWeJsmU9Wx.jpg', 1, NULL, NULL, 16, 178, 2, 1, 61, 1, 2, 5, 1, 4, 5, 1, '2,5,61,32', '2020-06-25 03:52:02', '2020-06-25 07:18:50'),
(791, 'EQS-600BL-1AUDF', 'Chronograph', 12995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'e15ZIkSm8VuV.jpg,DScmtueHO0YT.jpg,8Di3xKIYVLJy.jpg', 'e15ZIkSm8VuV.jpg,DScmtueHO0YT.jpg,8Di3xKIYVLJy.jpg', 1, NULL, NULL, 16, 178, 2, 1, 83, 1, 2, 5, 1, 3, 1, 1, '61,11,14,46', '2020-06-25 03:52:02', '2020-06-25 07:18:52'),
(792, 'ERA-600D-1A9', 'Chronograph', 13995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'rct0wdMc6d6V.jpg,kB5RC54DtUje.jpg,TJ9VnQXoS5sy.jpg', 'rct0wdMc6d6V.jpg,kB5RC54DtUje.jpg,TJ9VnQXoS5sy.jpg', 1, NULL, NULL, 16, 178, 2, 1, 83, 1, 2, 5, 1, 4, 5, 1, '61,13,46', '2020-06-25 03:52:02', '2020-06-25 07:18:55'),
(793, 'ERA-600SG-1A9VUDF', 'Chronograph', 15995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '76eWryKwuB7a.jpg,jkUvf1omvmwr.jpg,zr9tT7pht4gS.jpg,4CjIDeycRX21.jpg', '76eWryKwuB7a.jpg,jkUvf1omvmwr.jpg,zr9tT7pht4gS.jpg,4CjIDeycRX21.jpg', 1, NULL, NULL, 16, 178, 2, 1, 83, 1, 8, 5, 1, 10, 10, 1, '2,14,51,56', '2020-06-25 03:52:02', '2020-06-25 07:18:58'),
(794, 'ESK-300D-1AVUDF', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'SROFQghKlgmK.jpg,v8pk1z9gVi3b.jpg,tTo9xAgzyp8g.jpg', 'SROFQghKlgmK.jpg,v8pk1z9gVi3b.jpg,tTo9xAgzyp8g.jpg', 1, NULL, NULL, 16, 178, 2, 2, 83, 1, 2, 5, 1, 4, 5, 1, '13', '2020-06-25 03:52:02', '2020-06-25 07:19:00'),
(795, 'ETD-300D-1AVUDF', NULL, 10495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'P0upyBs8imv5.jpg,m1AvDznCGfY4.jpg,15hBNPiokb8n.jpg', 'P0upyBs8imv5.jpg,m1AvDznCGfY4.jpg,15hBNPiokb8n.jpg', 1, NULL, NULL, 16, 178, 2, 2, 23, 1, 2, 5, 1, 4, 5, 1, '2,11,25,56', '2020-06-25 03:52:02', '2020-06-25 07:19:03'),
(796, 'G-2900F-1VDR', 'Standard Digital', 4995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'lLuuJF1jQSo7.jpg,UnhJgaTUR8Mk.jpg,le3ZDRL7LIhJ.jpg', 'lLuuJF1jQSo7.jpg,UnhJgaTUR8Mk.jpg,le3ZDRL7LIhJ.jpg', 1, NULL, NULL, 16, 178, 2, 2, 23, 1, 2, 5, 2, 4, 1, 1, '2,5,61,32', '2020-06-25 03:52:03', '2020-06-25 07:19:06'),
(797, 'GA-1000-4ADR', 'Gravitymaster', 12995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'f46oRBM709NG.jpg,w29UU9ldMUUx.jpg,ciNz2Lnyf35s.jpg,GE3MPRDXO438.jpg', 'f46oRBM709NG.jpg,w29UU9ldMUUx.jpg,ciNz2Lnyf35s.jpg,GE3MPRDXO438.jpg', 1, NULL, NULL, 16, 178, 2, 2, 23, 1, 2, 5, 1, 4, 1, 1, '2,5,14,56', '2020-06-25 03:52:03', '2020-06-25 07:19:08'),
(798, 'GA-1000-4BDR', 'Gravitymaster', 12995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '99za9q1Me3cj.jpg,bTaW5wOA57sz.jpg,86L0S54W10CX.jpg', '99za9q1Me3cj.jpg,bTaW5wOA57sz.jpg,86L0S54W10CX.jpg', 1, NULL, NULL, 16, 178, 2, 2, 23, 1, 2, 5, 1, 4, 8, 1, '2,5,14,56', '2020-06-25 03:52:03', '2020-06-25 07:19:11'),
(799, 'GA-100-1A4DR', 'Standard Analog Digital', 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Xkdic7hDcfqu.jpg,RI6grxz3BEvg.jpg,SP772mt1pRO2.jpg', 'Xkdic7hDcfqu.jpg,RI6grxz3BEvg.jpg,SP772mt1pRO2.jpg', 1, NULL, NULL, 16, 178, 2, 2, 23, 1, 2, 5, 1, 4, 1, 1, '2,5,14,56', '2020-06-25 03:52:03', '2020-06-25 07:19:13'),
(800, 'GA-100A-9ADR', 'Standard Analog Digital', 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'APKkwKGrLVRR.jpg,V51JGxF2yEzS.jpg,XGWbxkOpYA7q.jpg,SqbOGG6aEko1.jpg', 'APKkwKGrLVRR.jpg,V51JGxF2yEzS.jpg,XGWbxkOpYA7q.jpg,SqbOGG6aEko1.jpg', 1, NULL, NULL, 16, 178, 2, 2, 23, 1, 2, 5, 1, 4, 1, 1, '2,5,14,46,56', '2020-06-25 03:52:03', '2020-06-25 07:19:16'),
(801, 'GA-100B-4ADR', 'Standard Analog Digital', 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'RGe7i7HQgm2h.jpg,7OSta7MvQ2Rg.jpg,YJGgDlury2SW.jpg', 'RGe7i7HQgm2h.jpg,7OSta7MvQ2Rg.jpg,YJGgDlury2SW.jpg', 1, NULL, NULL, 16, 178, 2, 2, 23, 1, 2, 5, 1, 4, 8, 1, '2,5,14,56', '2020-06-25 03:52:03', '2020-06-25 07:19:18'),
(802, 'GA-100CF-1ADR', 'Special Color Models', 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'V1Xw8JnojuKw.jpg,ydrTgJby7g1T.jpg,QcRU7whrGdOS.jpg', 'V1Xw8JnojuKw.jpg,ydrTgJby7g1T.jpg,QcRU7whrGdOS.jpg', 1, NULL, NULL, 16, 178, 2, 2, 23, 1, 2, 5, 1, 4, 1, 1, '2,5,14,32,56', '2020-06-25 03:52:03', '2020-06-25 07:19:20'),
(803, 'GA-100CM-5ADR', 'Special Color Models', 9495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'myCndyHShaKW.jpg,lHWl6NFuJUcD.jpg,CWMCZ30p5A8L.jpg', 'myCndyHShaKW.jpg,lHWl6NFuJUcD.jpg,CWMCZ30p5A8L.jpg', 1, NULL, NULL, 16, 178, 2, 2, 23, 1, 2, 5, 1, 4, 19, 1, '2,5,61,14,56', '2020-06-25 03:52:03', '2020-06-25 07:19:23'),
(804, 'GA-100CS-9ADR', 'Special Color Models', 6995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'zAlgJJlaiQKd.jpg,0ADfdNFtCFRQ.jpg,EjW3arbv3Zmp.jpg', 'zAlgJJlaiQKd.jpg,0ADfdNFtCFRQ.jpg,EjW3arbv3Zmp.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 5, 4, 19, 1, '2', '2020-06-25 03:52:03', '2020-06-25 07:19:25'),
(805, 'GA-100GBX-1A4DR', 'Special Color Models', 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'pdF4EJzS8e5k.jpg,4UPC5DBndI0L.jpg,EnAKE7dHXeRP.jpg', 'pdF4EJzS8e5k.jpg,4UPC5DBndI0L.jpg,EnAKE7dHXeRP.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 1, 4, 1, 1, '2,14,56', '2020-06-25 03:52:03', '2020-06-25 07:19:28'),
(806, 'GA-110-1BDR', 'Standard Digital', 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'mSPiBiRDwbAe.jpg,WXUCthnIUaev.jpg,mqnW7j3P3xYl.jpg', 'mSPiBiRDwbAe.jpg,WXUCthnIUaev.jpg,mqnW7j3P3xYl.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 1, 4, 1, 1, '2,5,61,14,32,56', '2020-06-25 03:52:03', '2020-06-25 07:19:30'),
(807, 'GA-110BT-1ADR', 'Standard Analog Digital', 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'RdPxOthPONV0.jpg,aSGCHRzsAH58.jpg,vFhN7QHS3Qjp.jpg,hmynADGAYY9q.jpg', 'RdPxOthPONV0.jpg,aSGCHRzsAH58.jpg,vFhN7QHS3Qjp.jpg,hmynADGAYY9q.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 1, 4, 1, 1, '2,5,61,14,56', '2020-06-25 03:52:04', '2020-06-25 07:19:33'),
(808, 'GA-110CR-4ADR', 'Standard Analog Digital', 8495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'UA1bwKrqtUHw.jpg,HIALOssDK2am.jpg,6UBAgYijLL72.jpg,UTRAqaWlDkvc.jpg', 'UA1bwKrqtUHw.jpg,HIALOssDK2am.jpg,6UBAgYijLL72.jpg,UTRAqaWlDkvc.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 1, 4, 8, 1, '2,5,61,14,56', '2020-06-25 03:52:04', '2020-06-25 07:19:35'),
(809, 'GA-110GB-1ADR', 'Standard Analog Digital', 9495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'iEQt6u5HMQ7o.jpg,m1WPXXsKipos.jpg,QwUnxEIVB58g.jpg,baNCLPrZ34r6.jpg', 'iEQt6u5HMQ7o.jpg,m1WPXXsKipos.jpg,QwUnxEIVB58g.jpg,baNCLPrZ34r6.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 1, 4, 1, 1, '2,5,61,14,56', '2020-06-25 03:52:04', '2020-06-25 07:19:38'),
(810, 'GA-110MMC-1ADR', NULL, 9495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'S7BrdIm4Nbo3.jpg,0mOGrZ0DlGHi.jpg,x283QLUa4UUl.jpg,Px64FtBHfbGG.jpg', 'S7BrdIm4Nbo3.jpg,0mOGrZ0DlGHi.jpg,x283QLUa4UUl.jpg,Px64FtBHfbGG.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 1, 4, 1, 1, '58,2,14,56', '2020-06-25 03:52:04', '2020-06-25 07:19:40'),
(811, 'GA-110RG-1ADR', 'Special Color Models', 9495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '0ULIo5v6CfzS.jpg,hS8MVYp40AMc.jpg,FLEh9CzAn4S2.jpg', '0ULIo5v6CfzS.jpg,hS8MVYp40AMc.jpg,FLEh9CzAn4S2.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 1, 4, 1, 1, '2,5,14,56', '2020-06-25 03:52:04', '2020-06-25 07:19:42'),
(812, 'GA-2000-1A2DR', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'MsCFCIum3LrJ.jpg,Vbx4FLYox3vN.jpg,TKnf3Bp0ykR4.jpg,4UtCwPvzu1gW.jpg', 'MsCFCIum3LrJ.jpg,Vbx4FLYox3vN.jpg,TKnf3Bp0ykR4.jpg,4UtCwPvzu1gW.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 1, 4, 2, 1, '2,5,13,14,56', '2020-06-25 03:52:04', '2020-06-25 07:19:44'),
(813, 'GA-2000-1A9DR', 'Standard Analog Digital', 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'xTrfkTAE8cg6.jpg,4q19ZsvTZyTN.jpg,dC8SRyFvvVIg.jpg,9uWarUlZhWcg.jpg', 'xTrfkTAE8cg6.jpg,4q19ZsvTZyTN.jpg,dC8SRyFvvVIg.jpg,9uWarUlZhWcg.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 1, 4, 1, 1, '2,14,56', '2020-06-25 03:52:04', '2020-06-25 07:19:47'),
(814, 'GA-2000-2ADR', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'qtybus8328Tx.jpg,eYqExTmEcUZX.jpg,Zr50ZWjEqSZd.jpg,SxORjVJTrOsi.jpg', 'qtybus8328Tx.jpg,eYqExTmEcUZX.jpg,Zr50ZWjEqSZd.jpg,SxORjVJTrOsi.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 2, 4, 2, 1, '2,5,13,14,56', '2020-06-25 03:52:04', '2020-06-25 07:19:49'),
(815, 'GA-2000-3ADR', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 't2d3Zz2brmjI.jpg,hYRkrwrtS0CE.jpg,yxHq6yRRYgH9.jpg,12c5ygdLGutD.jpg', 't2d3Zz2brmjI.jpg,hYRkrwrtS0CE.jpg,yxHq6yRRYgH9.jpg,12c5ygdLGutD.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 1, 4, 13, 1, '2,5,13,14,56', '2020-06-25 03:52:04', '2020-06-25 07:19:52'),
(816, 'GA-2000S-7ADR', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '9KQNw4WeLuup.jpg,GyJ4WkosTJ6G.jpg,mneeGpcBS352.jpg', '9KQNw4WeLuup.jpg,GyJ4WkosTJ6G.jpg,mneeGpcBS352.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 5, 4, 13, 1, '2,5,13,14,56', '2020-06-25 03:52:04', '2020-06-25 07:19:54'),
(817, 'GA-200-1ADR', 'Standard Analog Digital', 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'iJCd1EGzYdnj.jpg,B7AEY14mr8mU.jpg,W9js4gO69zZJ.jpg', 'iJCd1EGzYdnj.jpg,B7AEY14mr8mU.jpg,W9js4gO69zZJ.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 1, 4, 1, 1, '2,5,61,14,32,56', '2020-06-25 03:52:04', '2020-06-25 07:19:57'),
(818, 'GA-200RG-1ADR', 'Special Color Models', 9895.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'gtrji0t85B6w.jpg,dYuUeMhB1KJo.jpg,EGN7dZtYJQh8.jpg,HYD3waJhXh9M.jpg', 'gtrji0t85B6w.jpg,dYuUeMhB1KJo.jpg,EGN7dZtYJQh8.jpg,HYD3waJhXh9M.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 1, 4, 1, 1, '2,5,14,56', '2020-06-25 03:52:05', '2020-06-25 07:19:59'),
(819, 'GA-201-1ADR', 'Standard Analog Digital', 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '2gRbBvkVSwtn.jpg,MQB22FuOfRVH.jpg,kKdiW17SjuAB.jpg', '2gRbBvkVSwtn.jpg,MQB22FuOfRVH.jpg,kKdiW17SjuAB.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 1, 4, 1, 1, '2,5,61,14,32,56', '2020-06-25 03:52:05', '2020-06-25 07:20:02'),
(820, 'GA-400GB-1A4DR', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'l0XHmOA8c9rV.jpg,DY3g6H7FLD3D.jpg,w4tRhY9ZqMod.jpg', 'l0XHmOA8c9rV.jpg,DY3g6H7FLD3D.jpg,w4tRhY9ZqMod.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 1, 4, 1, 1, '2,5,14,56', '2020-06-25 03:52:05', '2020-06-25 07:20:04'),
(821, 'GA-400GB-1A9DR', NULL, 8795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 1, 4, 1, 1, '2,5,14,56', '2020-06-25 03:52:05', '2020-06-25 03:52:05'),
(822, 'GA-700CM-3ADR', 'Special Color Models', 8795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'fzK3hvMS5s3E.jpg,pn9krumZTfA5.jpg,qnQQx9DXMnZQ.jpg,2Mu4Kp3jcSiw.jpg', 'fzK3hvMS5s3E.jpg,pn9krumZTfA5.jpg,qnQQx9DXMnZQ.jpg,2Mu4Kp3jcSiw.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 1, 4, 1, 1, '2,14,56', '2020-06-25 03:52:05', '2020-07-04 03:19:40'),
(823, 'GA-700MMC-1ADR', NULL, 8495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Qw1VF9xRSIWa.jpg,M8kmOhb99tjx.jpg,TOWmChxjCfxt.jpg,0SNz6HEUWfjf.jpg', 'Qw1VF9xRSIWa.jpg,M8kmOhb99tjx.jpg,TOWmChxjCfxt.jpg,0SNz6HEUWfjf.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 8, 4, 1, 1, '2,5,61,11,56', '2020-06-25 03:52:05', '2020-07-04 03:19:43'),
(824, 'GA-710GB-1ADR', 'Standard Analog Digital', 9595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'p1EvPtE5Svj3.jpg,t5OWNsdHuvq9.jpg,JykZo9eqlXCY.jpg', 'p1EvPtE5Svj3.jpg,t5OWNsdHuvq9.jpg,JykZo9eqlXCY.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 11, 4, 1, 1, '2,14,56', '2020-06-25 03:52:05', '2020-07-04 03:19:45'),
(825, 'GA-800-1ADR', 'Standard Analog Digital', 7495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '77HYL0FkeSip.jpg,wJHeVBm7Vp8m.jpg,Y97DNfcbJAfI.jpg', '77HYL0FkeSip.jpg,wJHeVBm7Vp8m.jpg,Y97DNfcbJAfI.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 1, 4, 1, 1, '2,14,56', '2020-06-25 03:52:05', '2020-07-04 03:19:48'),
(826, 'GA-810B-1A9DR', NULL, 8195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'KVV40AOHd6Uh.jpg,g15OeSn7Atfl.jpg,MnTa4Ri62Nb6.jpg', 'KVV40AOHd6Uh.jpg,g15OeSn7Atfl.jpg,MnTa4Ri62Nb6.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 1, 4, 1, 1, '2,14', '2020-06-25 03:52:05', '2020-07-04 03:19:50'),
(827, 'GAC-100-1A2DR', 'Standard Analog Digital', 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'gGSHqpBdEVRc.jpg', 'gGSHqpBdEVRc.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 1, 4, 1, 1, '5,61,32', '2020-06-25 03:52:05', '2020-07-04 03:19:51'),
(828, 'GAS-100G-1ADR', 'Standard Analog Digital', 8195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '29MVYcyglHJq.jpg,CG44SKq0skRH.jpg,xgRoYpQ50k4Y.jpg', '29MVYcyglHJq.jpg,CG44SKq0skRH.jpg,xgRoYpQ50k4Y.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 3, 4, 1, 1, '2,14', '2020-06-25 03:52:06', '2020-07-04 03:19:53'),
(829, 'GBA-400-1A9DR', 'G\'Mix', 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'HQTEyDqdjogN.jpg,eotNV6ltde2b.jpg,QdvgvZbioZiC.jpg,5Mmsc5vkGq7h.jpg', 'HQTEyDqdjogN.jpg,eotNV6ltde2b.jpg,QdvgvZbioZiC.jpg,5Mmsc5vkGq7h.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 1, 4, 1, 1, '2,6,61,13,56', '2020-06-25 03:52:06', '2020-07-04 03:19:56'),
(830, 'GBA-400-1ADR', 'G\'Mix', 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'g5sPptrOPZwE.jpg,pSRR8BreUenq.jpg,0g9bsFIPA5uJ.jpg,WQcSp7F6mqx1.jpg', 'g5sPptrOPZwE.jpg,pSRR8BreUenq.jpg,0g9bsFIPA5uJ.jpg,WQcSp7F6mqx1.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 1, 4, 1, 1, '2,5,6,14,30,56', '2020-06-25 03:52:06', '2020-07-04 03:19:58'),
(831, 'GBA-400-4ADR', 'G\'Mix', 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '4VhBEch280lv.jpg,kLA9lKhCIzed.jpg,KByptDF2bceM.jpg,JrEXsVxlr80c.jpg', '4VhBEch280lv.jpg,kLA9lKhCIzed.jpg,KByptDF2bceM.jpg,JrEXsVxlr80c.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 1, 4, 8, 1, '2,5,6,14,30', '2020-06-25 03:52:06', '2020-07-04 03:20:01'),
(832, 'GBA-800-1ADR', 'Standard Analog Digital', 8795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'V0vWOPBRQ3Zt.jpg,bnY78sh1Jbwm.jpg,MI08CRkBJqt1.jpg', 'V0vWOPBRQ3Zt.jpg,bnY78sh1Jbwm.jpg,MI08CRkBJqt1.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 1, 4, 1, 1, '2,6,13,14,30,34,56', '2020-06-25 03:52:06', '2020-07-04 03:20:04'),
(833, 'GBD-800UC-8DR', NULL, 7495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'prIHn6doNJOc.jpg,hc5jDYix1YLJ.jpg,ZsTAuyP7EOqT.jpg,smqgQqDZgRno.jpg', 'prIHn6doNJOc.jpg,hc5jDYix1YLJ.jpg,ZsTAuyP7EOqT.jpg,smqgQqDZgRno.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 3, 4, 14, 1, '2,5,6,13,14,56', '2020-06-25 03:52:06', '2020-07-04 03:20:06'),
(834, 'GD-100GB-1DR', 'Standard Digital', 6595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'EP03E301ipkk.jpg,f5jFs73W3rsx.jpg,1dq3I33I07a7.jpg,aU2iGmuAgUPy.jpg', 'EP03E301ipkk.jpg,f5jFs73W3rsx.jpg,1dq3I33I07a7.jpg,aU2iGmuAgUPy.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 1, 4, 1, 1, '2,5,61,32', '2020-06-25 03:52:06', '2020-07-04 03:20:08'),
(835, 'GD-200-2DR', 'Standard Digital', 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '2ksWRdT7ATx2.jpg', '2ksWRdT7ATx2.jpg', 1, NULL, NULL, 16, 178, 2, 2, 78, 1, 2, 5, 2, 4, 1, 1, '2,5,61,32', '2020-06-25 03:52:06', '2020-07-04 03:20:09'),
(836, 'GD-200-4DR', 'Standard Digital', 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'UuPREUYP4amr.jpg', 'UuPREUYP4amr.jpg', 1, NULL, NULL, 16, 178, 2, 2, 78, 1, 2, 5, 1, 4, 8, 1, '2,5,61,32', '2020-06-25 03:52:06', '2020-07-04 03:20:09'),
(837, 'GD-X6900CM-5DR', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'aZuUgGZndUZI.jpg', 'aZuUgGZndUZI.jpg', 1, NULL, NULL, 16, 178, 2, 2, 81, 1, 2, 5, 1, 4, 19, 1, '2,5,61,13,32', '2020-06-25 03:52:06', '2020-07-04 03:20:09'),
(838, 'GG-1000-1A3DR', 'MUDMASTER', 15995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '7x3opEoH1kgi.jpg,AoTSwaawH4ew.jpg,PSDEqQJhkh9D.jpg', '7x3opEoH1kgi.jpg,AoTSwaawH4ew.jpg,PSDEqQJhkh9D.jpg', 1, NULL, NULL, 16, 178, 2, 2, 81, 1, 2, 5, 1, 4, 13, 1, '56', '2020-06-25 03:52:06', '2020-07-04 03:20:12'),
(839, 'GG-1000-1A5DR', 'MUDMASTER', 15995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'nN9cxjpNdQtT.jpg,cJ7TcLeGaks1.jpg,SEDbPFGEhRrO.jpg', 'nN9cxjpNdQtT.jpg,cJ7TcLeGaks1.jpg,SEDbPFGEhRrO.jpg', 1, NULL, NULL, 16, 178, 2, 2, 81, 1, 2, 5, 1, 4, 3, 1, '2,5,14,25,56', '2020-06-25 03:52:06', '2020-07-04 03:20:15'),
(840, 'GLS-8900-9DR', 'G Lide', 5995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'kHBXJHHMsNQb.jpg,7r0pMhzFkjnI.jpg,OumAJXXwuM0N.jpg', 'kHBXJHHMsNQb.jpg,7r0pMhzFkjnI.jpg,OumAJXXwuM0N.jpg', 1, NULL, NULL, 16, 178, 2, 2, 81, 1, 2, 5, 1, 4, 3, 1, '2,5,61,13,32', '2020-06-25 03:52:06', '2020-07-04 03:20:16'),
(841, 'GMA-S120MF-7A2DR', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ZPHCyeldnqWg.jpg,bq7vC2w8fpCT.jpg,lDMmdJ3147R2.jpg,vKwuBprs3IeV.jpg', 'ZPHCyeldnqWg.jpg,bq7vC2w8fpCT.jpg,lDMmdJ3147R2.jpg,vKwuBprs3IeV.jpg', 1, NULL, NULL, 16, 178, 2, 2, 81, 1, 2, 5, 4, 4, 3, 3, '2,14,56', '2020-06-25 03:52:06', '2020-07-04 03:20:19'),
(842, 'GN-1000GB-1ADR', NULL, 14995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Xhz1n6g93zZ3.jpg,Z8Kn9AzmWkHq.jpg,jwQHDE08vFue.jpg', 'Xhz1n6g93zZ3.jpg,Z8Kn9AzmWkHq.jpg,jwQHDE08vFue.jpg', 1, NULL, NULL, 16, 178, 2, 2, 81, 1, 2, 5, 1, 4, 1, 1, '2,14,56', '2020-06-25 03:52:06', '2020-07-04 03:20:21'),
(843, 'GN-1000RG-1ADR', 'Gulfmaster', 15995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'FhqTY1OeLRid.jpg,tGMab4d3aZoZ.jpg,wzkDO8bbKrjI.jpg,Y0SfwxgKKlfR.jpg', 'FhqTY1OeLRid.jpg,tGMab4d3aZoZ.jpg,wzkDO8bbKrjI.jpg,Y0SfwxgKKlfR.jpg', 1, NULL, NULL, 16, 178, 2, 2, 81, 1, 2, 5, 1, 4, 1, 1, '2,14,56', '2020-06-25 03:52:06', '2020-07-04 03:20:24'),
(844, 'GST-200CP-9ADR', 'G-Steel', 15995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'XNqeRyf8o96L.jpg,MuqpG8MEyx7g.jpg,xsNXTDgjAtbv.jpg', 'XNqeRyf8o96L.jpg,MuqpG8MEyx7g.jpg,xsNXTDgjAtbv.jpg', 1, NULL, NULL, 16, 178, 2, 2, 81, 1, 2, 5, 1, 4, 3, 1, '2,5,14,56', '2020-06-25 03:52:06', '2020-07-04 03:20:26'),
(845, 'GST-S120L-1BDR', 'G-Steel', 16995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'EsrywbDIEuvH.jpg,llj8yAI1eeuA.jpg,h6nCMLG26Vmw.jpg,YdYKU0KCzS8R.jpg', 'EsrywbDIEuvH.jpg,llj8yAI1eeuA.jpg,h6nCMLG26Vmw.jpg,YdYKU0KCzS8R.jpg', 1, NULL, NULL, 16, 178, 2, 2, 81, 1, 2, 5, 1, 3, 3, 1, '2,14,48,56', '2020-06-25 03:52:06', '2020-07-04 03:20:29'),
(846, 'GST-S130L-1ADR', 'G-Steel', 15995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '8oU0j8o6rULD.jpg,ok89AQo8dcIY.jpg,mjQbC30YH4UP.jpg,IwLjEZXuwUD6.jpg', '8oU0j8o6rULD.jpg,ok89AQo8dcIY.jpg,mjQbC30YH4UP.jpg,IwLjEZXuwUD6.jpg', 1, NULL, NULL, 16, 178, 2, 2, 81, 1, 2, 5, 1, 3, 3, 1, '2,14,48,56', '2020-06-25 03:52:07', '2020-07-04 03:20:31'),
(847, 'GWN-1000-9ADR', 'Gulfmaster', 27995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'p7lNexKbnU0D.jpg,LM6EhEjwtRHd.jpg,LXO50TfU6tPe.jpg', 'p7lNexKbnU0D.jpg,LM6EhEjwtRHd.jpg,LXO50TfU6tPe.jpg', 1, NULL, NULL, 16, 178, 2, 2, 81, 1, 2, 5, 1, 3, 3, 1, NULL, '2020-06-25 03:52:07', '2020-07-04 03:20:33'),
(848, 'HDC-700-3A3VDF', 'Youth', 2995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'mjYY2ZtSJao4.jpg,1VrF8buxkWwV.jpg,v7xO1oY0pC45.jpg,LbP7opvuoIyi.jpg', 'mjYY2ZtSJao4.jpg,1VrF8buxkWwV.jpg,v7xO1oY0pC45.jpg,LbP7opvuoIyi.jpg', 1, NULL, NULL, 16, 178, 2, 2, 81, 1, 2, 5, 1, 3, 13, 1, NULL, '2020-06-25 03:52:07', '2020-07-04 03:20:35'),
(849, 'LA680WGA-9BDF', NULL, 3695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'j7qQoaEo9TH9.jpg,aoN2TbWInGWl.jpg,jcPKXj5iUWbl.jpg,UpaMtCyWr3Ab.jpg', 'j7qQoaEo9TH9.jpg,aoN2TbWInGWl.jpg,jcPKXj5iUWbl.jpg,UpaMtCyWr3Ab.jpg', 1, NULL, NULL, 16, 178, 2, 2, 81, 1, 2, 5, 1, 4, 11, 2, NULL, '2020-06-25 03:52:07', '2020-07-04 03:20:38'),
(850, 'PRG-270-4DR', 'Triple Sensor', 13995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'wUWJupa9Zytm.jpg,eJDs49tcDVBf.jpg,Scm4rFqZvnnl.jpg', 'wUWJupa9Zytm.jpg,eJDs49tcDVBf.jpg,Scm4rFqZvnnl.jpg', 1, NULL, NULL, 16, 178, 2, 2, 81, 1, 2, 5, 1, 4, 1, 1, '61,11', '2020-06-25 03:52:07', '2020-07-04 03:20:41'),
(851, 'PRG-270B-2DR', 'Triple Sensor', 14995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'hXKZkYAdWLSC.jpg,H2JwRQkPCOUd.jpg,nf5395P0kzlv.jpg', 'hXKZkYAdWLSC.jpg,H2JwRQkPCOUd.jpg,nf5395P0kzlv.jpg', 1, NULL, NULL, 16, 178, 2, 2, 81, 1, 2, 5, 3, 4, 1, 1, '2,61,13,56', '2020-06-25 03:52:07', '2020-07-04 03:20:43'),
(852, 'PRG-300-1BDR', NULL, 12995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '8x4Qstoiwmqt.jpg,8OFo7GsZDTNh.jpg,9vHxKemu44fl.jpg', '8x4Qstoiwmqt.jpg,8OFo7GsZDTNh.jpg,9vHxKemu44fl.jpg', 1, NULL, NULL, 16, 178, 2, 2, 76, 1, 2, 5, 1, 4, 1, 1, '2,14,56', '2020-06-25 03:52:07', '2020-07-04 03:20:44'),
(853, 'SHE-3030BGD-9AUDR', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'qNTNIERkb8p7.jpg,L7YLBrHTHVFA.jpg,VTW0HKes9c7d.jpg', 'qNTNIERkb8p7.jpg,L7YLBrHTHVFA.jpg,VTW0HKes9c7d.jpg', 1, NULL, NULL, 16, 178, 2, 2, 76, 1, 5, 5, 7, 8, 11, 2, '58,13', '2020-06-25 03:52:07', '2020-07-04 03:20:46'),
(854, 'SHE-3030GD-7AUDR', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Es5S8tvNe77S.jpg,oGaLA6fhjeMT.jpg,Bld76rQs8Jhk.jpg', 'Es5S8tvNe77S.jpg,oGaLA6fhjeMT.jpg,Bld76rQs8Jhk.jpg', 1, NULL, NULL, 16, 178, 2, 2, 67, 1, 5, 5, 6, 8, 11, 2, '58,13', '2020-06-25 03:52:07', '2020-07-04 03:20:49'),
(855, 'SHE-3030GL-5AUDR', NULL, 7495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Gv6pBvEpg5Va.jpg,hRQHQvBVOLc3.jpg,RSAFmooBoTIG.jpg', 'Gv6pBvEpg5Va.jpg,hRQHQvBVOLc3.jpg,RSAFmooBoTIG.jpg', 1, NULL, NULL, 16, 178, 2, 2, 67, 1, 2, 5, 1, 3, 1, 2, '58,13', '2020-06-25 03:52:07', '2020-07-04 03:20:51'),
(856, 'SHE-3034PG-9AUDR', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'qxZK9tv62QkP.jpg,jnbN4yW1EqW6.jpg,fBUKhxzw9yTW.jpg', 'qxZK9tv62QkP.jpg,jnbN4yW1EqW6.jpg,fBUKhxzw9yTW.jpg', 1, NULL, NULL, 16, 178, 2, 2, 67, 1, 8, 5, 8, 10, 6, 2, '58,13', '2020-06-25 03:52:07', '2020-07-04 03:20:52'),
(857, 'SHE-3043BPG-7AUDR', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'SdZYhtSZzYuP.jpg,B7bTqyy1bATh.jpg,EAWScomRmQ0Z.jpg,gCCT1gLxQxsb.jpg', 'SdZYhtSZzYuP.jpg,B7bTqyy1bATh.jpg,EAWScomRmQ0Z.jpg,gCCT1gLxQxsb.jpg', 1, NULL, NULL, 16, 178, 2, 2, 58, 1, 8, 5, 13, 10, 6, 2, '58,11,40', '2020-06-25 03:52:07', '2020-07-04 03:20:55'),
(858, 'SHE-3043SG-7AUDR', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'vf85QRfd8hZs.jpg,oym2UYkNXg3J.jpg,doXibHBTDQpd.jpg', 'vf85QRfd8hZs.jpg,oym2UYkNXg3J.jpg,doXibHBTDQpd.jpg', 1, NULL, NULL, 16, 178, 2, 2, 57, 1, 2, 5, 13, 10, 10, 2, '13', '2020-06-25 03:52:07', '2020-07-04 03:20:57'),
(859, 'SHE-3046SGP-7AUDR', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'DKped5S2llcG.jpg,0EEsJUSUHIfr.jpg,RSdDqIbvlRHR.jpg', 'DKped5S2llcG.jpg,0EEsJUSUHIfr.jpg,RSdDqIbvlRHR.jpg', 1, NULL, NULL, 16, 178, 2, 2, 64, 1, 8, 5, 5, 10, 10, 2, '11', '2020-06-25 03:52:07', '2020-07-04 03:21:00'),
(860, 'SHE-3047SG-7AUDR', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'IfhyzIQwtbGt.jpg,OZ3R2I0DdsEh.jpg,TT4TpoQWH0t4.jpg', 'IfhyzIQwtbGt.jpg,OZ3R2I0DdsEh.jpg,TT4TpoQWH0t4.jpg', 1, NULL, NULL, 16, 178, 2, 2, 64, 1, 8, 5, 6, 4, 5, 2, '58,13', '2020-06-25 03:52:08', '2020-07-04 03:21:02'),
(861, 'SHE-3052SG-4AUDR', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '7IRiWOT7pi3g.jpg,p1gvk6WkyyFu.jpg,HnxWS76L05fJ.jpg', '7IRiWOT7pi3g.jpg,p1gvk6WkyyFu.jpg,HnxWS76L05fJ.jpg', 1, NULL, NULL, 16, 178, 2, 2, 64, 1, 8, 5, 13, 4, 5, 2, '58,13', '2020-06-25 03:52:08', '2020-07-04 03:21:03'),
(862, 'SHE-3803GD-9AUDR', NULL, 10995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'sNWcwrzMphqa.jpg,Qs1XS7sxWLFi.jpg,1lrwNlIZBTBh.jpg', 'sNWcwrzMphqa.jpg,Qs1XS7sxWLFi.jpg,1lrwNlIZBTBh.jpg', 1, NULL, NULL, 16, 178, 2, 2, 64, 1, 2, 5, 7, 4, 11, 2, '13', '2020-06-25 03:52:08', '2020-07-04 03:21:05'),
(863, 'SHE-3805PG-9AUDR', NULL, 9495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'AHQnxpQw8Dao.jpg,03oupj4p3kDj.jpg,3kSYA6eUTGJ1.jpg', 'AHQnxpQw8Dao.jpg,03oupj4p3kDj.jpg,3kSYA6eUTGJ1.jpg', 1, NULL, NULL, 16, 178, 2, 2, 64, 1, 8, 5, 8, 10, 6, 2, '58,13', '2020-06-25 03:52:08', '2020-07-04 03:21:07'),
(864, 'SHE-3809PG-9AUDR', NULL, 9495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'xKaocf1gMVV5.jpg,9Zqp6FXPZMBw.jpg,q34AARaJLHNo.jpg', 'xKaocf1gMVV5.jpg,9Zqp6FXPZMBw.jpg,q34AARaJLHNo.jpg', 1, NULL, NULL, 16, 178, 2, 2, 69, 1, 8, 5, 8, 10, 6, 2, '58,13', '2020-06-25 03:52:08', '2020-07-04 03:21:09'),
(865, 'SHE-4510D-7AUDR', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'OsQ2WPA85qN1.jpg,tXND0umZa8iY.jpg', 'OsQ2WPA85qN1.jpg,tXND0umZa8iY.jpg', 1, NULL, NULL, 16, 178, 2, 2, 67, 1, 2, 5, 6, 4, 5, 2, '11', '2020-06-25 03:52:08', '2020-07-04 03:21:10'),
(866, 'SHN-3008SG-1ADR', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '29GskL1addMu.jpg,THx6UjF5FslF.jpg,8DhP6jVMHN8M.jpg', '29GskL1addMu.jpg,THx6UjF5FslF.jpg,8DhP6jVMHN8M.jpg', 1, NULL, NULL, 16, 178, 2, 2, 67, 1, 2, 5, 1, 4, 5, 2, '58,13', '2020-06-25 03:52:08', '2020-07-04 03:21:12');
INSERT INTO `product_details` (`id`, `model_no`, `series`, `price`, `material`, `buckle`, `size`, `shape`, `frame_colour`, `lens`, `visible_ray`, `dimensions`, `nib`, `length_mm`, `taper`, `clasp_type`, `clasp_size`, `lock_system`, `description`, `warranty_period`, `meta_title`, `meta_description`, `meta_keyword`, `h1`, `status`, `featured_status`, `images`, `thumb_img`, `main_category_id`, `colour_id`, `clock_type_id`, `brand_id`, `collection_id`, `movement_id`, `movement_type_id`, `case_size_id`, `case_shape_id`, `case_material_id`, `glass_material_id`, `dial_colour_id`, `strap_material_id`, `strap_colour_id`, `gender_id`, `feature_id`, `created_at`, `updated_at`) VALUES
(867, 'STB-1000-1ADF', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'wN2yxKU9BsMG.jpg,x9S6U9wa2kmq.jpg,wDOxDCBkpGOU.jpg', 'wN2yxKU9BsMG.jpg,x9S6U9wa2kmq.jpg,wDOxDCBkpGOU.jpg', 1, NULL, NULL, 16, 178, 2, 2, 77, 1, 2, 5, 3, 4, 1, 1, '6', '2020-06-25 03:52:08', '2020-07-04 03:21:15'),
(868, 'STB-1000-4ADF', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'EUhwvft4HbWD.jpg,SIzWtG6Tcrcn.jpg,ZCltEptTHIj0.jpg', 'EUhwvft4HbWD.jpg,SIzWtG6Tcrcn.jpg,ZCltEptTHIj0.jpg', 1, NULL, NULL, 16, 178, 2, 2, 77, 1, 2, 5, 3, 4, 1, 1, '6', '2020-06-25 03:52:08', '2020-07-04 03:21:18'),
(869, 'W-96H-1AVDF', NULL, 1395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ovrxEQKO12Vz.jpg,lrteBbVVzpja.jpg,Knz8DgQGZNul.jpg', 'ovrxEQKO12Vz.jpg,lrteBbVVzpja.jpg,Knz8DgQGZNul.jpg', 1, NULL, NULL, 16, 178, 2, 2, 48, 1, 2, 5, 3, 4, 1, 1, '6', '2020-06-25 03:52:08', '2020-07-04 03:21:20'),
(870, 'W-96H-1BVDF', NULL, 1395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'jrIFUVga3o1W.jpg,4FRijl1kIip8.jpg,CeZ5t23xLJpl.jpg', 'jrIFUVga3o1W.jpg,4FRijl1kIip8.jpg,CeZ5t23xLJpl.jpg', 1, NULL, NULL, 16, 178, 2, 2, 48, 1, 2, 5, 3, 4, 1, 1, '6', '2020-06-25 03:52:08', '2020-07-04 03:21:22'),
(871, 'W-96H-2AVDF', NULL, 1395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'nhGLD9WiX9EU.jpg,od5UQmDFZJpZ.jpg,1Sl1NDbZcUIh.jpg', 'nhGLD9WiX9EU.jpg,od5UQmDFZJpZ.jpg,1Sl1NDbZcUIh.jpg', 1, NULL, NULL, 16, 178, 2, 2, 48, 1, 2, 5, 3, 4, 1, 1, '6', '2020-06-25 03:52:08', '2020-07-04 03:21:24'),
(872, 'W-96H-9AVDF', NULL, 1395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'YWvIGnctfAgO.jpg,tKpPg2wGp28w.jpg,DxUlCvTuzRGB.jpg,LN1EiTQ8BtTL.jpg', 'YWvIGnctfAgO.jpg,tKpPg2wGp28w.jpg,DxUlCvTuzRGB.jpg,LN1EiTQ8BtTL.jpg', 1, NULL, NULL, 16, 178, 2, 2, 48, 1, 2, 5, 3, 4, 1, 1, '6', '2020-06-25 03:52:08', '2020-07-04 03:21:27'),
(873, 'AE-1000W-1A3VDF', NULL, 2695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'V4ZU8MGypvnU.jpg,0uXvbOiLx3rQ.jpg,hdtl6xNLykY1.jpg', 'V4ZU8MGypvnU.jpg,0uXvbOiLx3rQ.jpg,hdtl6xNLykY1.jpg', 1, NULL, NULL, 16, 178, 2, 2, 48, 1, 2, 5, 3, 4, 1, 1, NULL, '2020-06-25 03:52:08', '2020-07-04 03:21:29'),
(874, 'AEQ-110W-11A3VDF', NULL, 3295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 178, 2, 2, 80, 1, 2, 5, 1, 4, 1, 1, NULL, '2020-06-25 03:52:08', '2020-06-25 03:52:08'),
(875, 'AEQ-110W-2AVDF', NULL, 3295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'brXMIGKmQY20.jpg,UBeNg3GTHAPQ.jpg,ECJ3ydTaBCR9.jpg', 'brXMIGKmQY20.jpg,UBeNg3GTHAPQ.jpg,ECJ3ydTaBCR9.jpg', 1, NULL, NULL, 16, 178, 2, 2, 80, 1, 2, 5, 1, 4, 1, 1, NULL, '2020-06-25 03:52:08', '2020-07-04 03:21:32'),
(876, 'AEQ-200W-2AVDF', NULL, 4295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'UVaqgmZHffjP.jpg,Tay0JhnZTFEA.jpg,kD4Zl5e9Z4ps.jpg', 'UVaqgmZHffjP.jpg,Tay0JhnZTFEA.jpg,kD4Zl5e9Z4ps.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 3, 4, 1, 1, NULL, '2020-06-25 03:52:08', '2020-07-04 03:21:35'),
(877, 'AEQ-200W-9AVDF', NULL, 4295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'aaSVOWHSZbIK.jpg,S8sXecI1uom2.jpg,n8xVswNZY0Qc.jpg,Pxikb7xOkFSx.jpg', 'aaSVOWHSZbIK.jpg,S8sXecI1uom2.jpg,n8xVswNZY0Qc.jpg,Pxikb7xOkFSx.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 7, 4, 1, 1, NULL, '2020-06-25 03:52:09', '2020-07-04 03:21:38'),
(878, 'AQ-230GG-9ADF', NULL, 4395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '3HQNZ3JMBQ31.jpg,7pJmXQlhIU41.jpg,3wz6KLgK68pr.jpg,GAOBtHAa9atN.jpg', '3HQNZ3JMBQ31.jpg,7pJmXQlhIU41.jpg,3wz6KLgK68pr.jpg,GAOBtHAa9atN.jpg', 1, NULL, NULL, 16, 178, 2, 2, 82, 1, 2, 5, 5, 4, 14, 3, NULL, '2020-06-25 03:52:09', '2020-07-04 03:21:40'),
(879, 'AW-80V-5BVDF', NULL, 2395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '4XaQ62iRuQ7J.jpg,COwIsajoqwlO.jpg,IQfkn1fZE5ce.jpg', '4XaQ62iRuQ7J.jpg,COwIsajoqwlO.jpg,IQfkn1fZE5ce.jpg', 1, NULL, NULL, 16, 178, 2, 2, 64, 1, 2, 5, 14, 4, 3, 1, NULL, '2020-06-25 03:52:09', '2020-07-04 03:21:42'),
(880, 'BEM-100SG-7AVDF', NULL, 4395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ZVTe13wyHGiv.jpg,I7a27ZPw9IVw.jpg,QXwwR5rAzLZ9.jpg', 'ZVTe13wyHGiv.jpg,I7a27ZPw9IVw.jpg,QXwwR5rAzLZ9.jpg', 1, NULL, NULL, 16, 21, 2, 2, 34, 4, 2, 5, 6, 4, 3, 1, '11', '2020-06-25 03:52:09', '2020-07-04 03:21:44'),
(881, 'D028 F-200W-9AUD', NULL, 1195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'x1eXlUqHbGDL.jpg,6YZ5nUjqT5bM.jpg,yMwwawi4PoPh.jpg', 'x1eXlUqHbGDL.jpg,6YZ5nUjqT5bM.jpg,yMwwawi4PoPh.jpg', 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 3, 4, 1, 1, NULL, '2020-06-25 03:52:09', '2020-07-04 03:21:47'),
(882, 'DB-360-1DF', NULL, 2195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '3gYe3gVMmiV1.jpg,UmKfglClnkGA.jpg,YbRph6pJ4x6X.jpg,dL8wyzAIf2WH.jpg', '3gYe3gVMmiV1.jpg,UmKfglClnkGA.jpg,YbRph6pJ4x6X.jpg,dL8wyzAIf2WH.jpg', 1, NULL, NULL, 16, 21, 2, 2, 34, 4, 2, 5, 3, 4, 5, 1, NULL, '2020-06-25 03:52:09', '2020-07-04 03:21:49'),
(883, 'F-200W-1AUDF', NULL, 1195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'nQhgKoaOMo7u.jpg,siqnoTeMXzt6.jpg,7tAcKwpdwulB.jpg', 'nQhgKoaOMo7u.jpg,siqnoTeMXzt6.jpg,7tAcKwpdwulB.jpg', 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 3, 4, 1, 1, NULL, '2020-06-25 03:52:09', '2020-07-04 03:21:52'),
(884, 'F-201WAM-7AVDF', NULL, 1095.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'qTBzpVxftdsY.jpg,EW5Zd8nQoHL4.jpg,RaRDz5HdZYiW.jpg,wPJBAtGdxVYH.jpg', 'qTBzpVxftdsY.jpg,EW5Zd8nQoHL4.jpg,RaRDz5HdZYiW.jpg,wPJBAtGdxVYH.jpg', 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 3, 4, 1, 1, NULL, '2020-06-25 03:52:09', '2020-07-04 03:21:54'),
(885, 'F-201WAM-9AVDF', NULL, 1095.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'tr2QR5n8fgPu.jpg,zhXS620EVQH4.jpg,2lcYK2BS4q9Y.jpg,OILbpCRd8l2M.jpg', 'tr2QR5n8fgPu.jpg,zhXS620EVQH4.jpg,2lcYK2BS4q9Y.jpg,OILbpCRd8l2M.jpg', 1, NULL, NULL, 16, 21, 2, 2, 34, 2, 2, 5, 3, 4, 1, 1, NULL, '2020-06-25 03:52:09', '2020-07-04 03:21:57'),
(886, 'GA-100CF-1A9DR', 'Special Color Models', 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'sUbZ8f2nTH2q.jpg,yUnv8bZgAgt8.jpg,gF1aar5uYmmd.jpg', 'sUbZ8f2nTH2q.jpg,yUnv8bZgAgt8.jpg,gF1aar5uYmmd.jpg', 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 1, 4, 1, 1, '2,5,61,14,56', '2020-06-25 03:52:09', '2020-07-04 03:21:59'),
(887, 'HDC-700-9AVDF', NULL, 3295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'm0LXNkCXBKcL.jpg,kIEfnXXTDCur.jpg,oQCabKk9zeYf.jpg', 'm0LXNkCXBKcL.jpg,kIEfnXXTDCur.jpg,oQCabKk9zeYf.jpg', 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 1, 4, 1, 1, NULL, '2020-06-25 03:52:09', '2020-07-04 03:22:02'),
(888, 'HDD-600G-9AVDF', NULL, 1445.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'gH5UPiSFmGCP.jpg,QQbElez5dNoo.jpg,1O3tnNERfmgh.jpg', 'gH5UPiSFmGCP.jpg,QQbElez5dNoo.jpg,1O3tnNERfmgh.jpg', 1, NULL, NULL, 16, 21, 2, 2, 34, 5, 2, 5, 3, 4, 1, 1, NULL, '2020-06-25 03:52:09', '2020-07-04 03:22:04'),
(889, 'LA670WD-1DF', NULL, 1395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'x1ypyr8liBWG.jpg,Yf841nwcxALx.jpg,qPoeelaYnLoH.jpg,mvUFEUPyvUJM.jpg', 'x1ypyr8liBWG.jpg,Yf841nwcxALx.jpg,qPoeelaYnLoH.jpg,mvUFEUPyvUJM.jpg', 1, NULL, NULL, 16, 21, 2, 2, 34, 5, 2, 5, 3, 4, 5, 2, '2', '2020-06-25 03:52:09', '2020-07-04 03:22:06'),
(890, 'LA670WGA-1DF', NULL, 3195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'WWfLT92WzKtn.jpg,JlW6eYKR5mNS.jpg,1w1yAwGcgtZH.jpg,eAtjY9N8U5NU.jpg', 'WWfLT92WzKtn.jpg,JlW6eYKR5mNS.jpg,1w1yAwGcgtZH.jpg,eAtjY9N8U5NU.jpg', 1, NULL, NULL, 16, 21, 2, 2, 42, 5, 2, 5, 7, 4, 11, 2, '2', '2020-06-25 03:52:09', '2020-07-04 03:22:09'),
(891, 'LA690WEM-7DF', NULL, 2195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'YwgdcVO9AmtZ.jpg,XeWswbrbaf1R.jpg,TvoL2Mg5TD4c.jpg,RDmNtVfadbEo.jpg', 'YwgdcVO9AmtZ.jpg,XeWswbrbaf1R.jpg,TvoL2Mg5TD4c.jpg,RDmNtVfadbEo.jpg', 1, NULL, NULL, 16, 21, 2, 2, 42, 5, 2, 5, 3, 4, 5, 2, NULL, '2020-06-25 03:52:09', '2020-07-04 03:22:11'),
(892, 'LTP-1165A-1CDF', NULL, 2695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'aFZAwjWNu2Dm.jpg,kEzqQPuq95hV.jpg,sECOMvZWZ6do.jpg,O9ND3lcHYuxP.jpg', 'aFZAwjWNu2Dm.jpg,kEzqQPuq95hV.jpg,sECOMvZWZ6do.jpg,O9ND3lcHYuxP.jpg', 1, NULL, NULL, 16, 21, 2, 2, 42, 4, 2, 5, 1, 4, 5, 2, NULL, '2020-06-25 03:52:09', '2020-07-04 03:22:14'),
(893, 'LTP-1302SG-7AVDF', NULL, 3495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'iRH1or1zZxd2.jpg,sfSqZ2wPKNO7.jpg,fjk0DzIXsVFb.jpg,BYjs4uRJirG1.jpg', 'iRH1or1zZxd2.jpg,sfSqZ2wPKNO7.jpg,fjk0DzIXsVFb.jpg,BYjs4uRJirG1.jpg', 1, NULL, NULL, 16, 21, 2, 2, 69, 1, 5, 5, 6, 8, 9, 2, '11', '2020-06-25 03:52:10', '2020-07-04 03:22:16'),
(894, 'LTP-1359RG-7AVDF', NULL, 4995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Y3bHBxKcR7h6.jpg,QaLYopz77Kdm.jpg,7h0WOUkMmHTA.jpg', 'Y3bHBxKcR7h6.jpg,QaLYopz77Kdm.jpg,7h0WOUkMmHTA.jpg', 1, NULL, NULL, 16, 21, 2, 2, 57, 1, 8, 5, 6, 10, 10, 2, '11', '2020-06-25 03:52:10', '2020-07-04 03:22:19'),
(895, 'LTP-1359SG-7AVDF', NULL, 4995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'fICOcs8N8fg0.jpg,GCvlv3A3yjdF.jpg,NBBxe1a3J3ee.jpg', 'fICOcs8N8fg0.jpg,GCvlv3A3yjdF.jpg,NBBxe1a3J3ee.jpg', 1, NULL, NULL, 16, 21, 2, 2, 57, 1, 5, 5, 6, 8, 9, 2, '11', '2020-06-25 03:52:10', '2020-07-04 03:22:21'),
(896, 'LTP-2083D-1AVDF', NULL, 3795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '3qmXnm5lVjUe.jpg,FNrUcHqjPSLc.jpg,MNX9BWQ8RgiC.jpg', '3qmXnm5lVjUe.jpg,FNrUcHqjPSLc.jpg,MNX9BWQ8RgiC.jpg', 1, NULL, NULL, 16, 21, 2, 2, 70, 1, 2, 5, 1, 4, 5, 2, '58,13,53', '2020-06-25 03:52:10', '2020-07-04 03:22:23'),
(897, 'LTP-2085SG-7AVDF', NULL, 5495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Ruwg9Q88yfXb.jpg,g0y9fKoYfQ7e.jpg,0nnqgdY1Qexs.jpg', 'Ruwg9Q88yfXb.jpg,g0y9fKoYfQ7e.jpg,0nnqgdY1Qexs.jpg', 1, NULL, NULL, 16, 21, 2, 2, 54, 1, 2, 5, 6, 8, 9, 2, '13', '2020-06-25 03:52:10', '2020-07-04 03:22:25'),
(898, 'LTP-2087GL-4AVDF', NULL, 4495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'RXhV9MKS4bzL.jpg,plypANAR4W6z.jpg,dSrLIh288HIG.jpg,AOYgcYFxiRB4.jpg', 'RXhV9MKS4bzL.jpg,plypANAR4W6z.jpg,dSrLIh288HIG.jpg,AOYgcYFxiRB4.jpg', 1, NULL, NULL, 16, 21, 2, 2, 75, 1, 2, 5, 5, 3, 8, 2, '13', '2020-06-25 03:52:10', '2020-07-04 03:22:28'),
(899, 'LTP-2087RG-7AVDF', NULL, 5495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'DkiVDxGZ7n4b.jpg,nE68dpCi8Vky.jpg,t1YzWztwzJR9.jpg,XPuNepvPg6xM.jpg', 'DkiVDxGZ7n4b.jpg,nE68dpCi8Vky.jpg,t1YzWztwzJR9.jpg,XPuNepvPg6xM.jpg', 1, NULL, NULL, 16, 21, 2, 2, 75, 1, 8, 5, 6, 10, 10, 2, '58,13', '2020-06-25 03:52:10', '2020-07-04 03:22:31'),
(900, 'LTP-2088D-2A1VDF', NULL, 4695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'yj6jZPNztOs1.jpg', 'yj6jZPNztOs1.jpg', 1, NULL, NULL, 16, 21, 2, 2, 75, 1, 2, 5, 2, 4, 5, 2, '58,13', '2020-06-25 03:52:10', '2020-07-04 03:22:31'),
(901, 'LTP-2088RG-7AVDF', NULL, 5995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'U97sFDnAf2lK.jpg,NAn2iGOO1CRA.jpg,7avOVMViFkJc.jpg', 'U97sFDnAf2lK.jpg,NAn2iGOO1CRA.jpg,7avOVMViFkJc.jpg', 1, NULL, NULL, 16, 21, 2, 2, 68, 1, 8, 5, 6, 10, 10, 2, '13', '2020-06-25 03:52:10', '2020-07-04 03:22:33'),
(902, 'LTP-E157MR-9ADF', NULL, 5495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ca7vO9FYfkns.jpg,7mCR33eIiWzH.jpg,GlyTv2Q3xHwy.jpg,LXLOa2kxh3td.jpg', 'ca7vO9FYfkns.jpg,7mCR33eIiWzH.jpg,GlyTv2Q3xHwy.jpg,LXLOa2kxh3td.jpg', 1, NULL, NULL, 16, 21, 2, 2, 58, 1, 8, 5, 14, 10, 6, 2, NULL, '2020-06-25 03:52:10', '2020-07-04 03:22:35'),
(903, 'LTP-E306RG-7AVDF', NULL, 5495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'bDckp2Qla18P.jpg,DArt4OhicPOx.jpg,3NwLm46ZvxMZ.jpg', 'bDckp2Qla18P.jpg,DArt4OhicPOx.jpg,3NwLm46ZvxMZ.jpg', 1, NULL, NULL, 16, 21, 2, 2, 68, 1, 8, 5, 6, 10, 10, 2, '58,13', '2020-06-25 03:52:10', '2020-07-04 03:22:37'),
(904, 'LTP-E306SG-1AVDF', NULL, 5495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Ef0poWm9Yb8y.jpg,EmPrFvLxFP8I.jpg,mPIkCjHiQraW.jpg', 'Ef0poWm9Yb8y.jpg,EmPrFvLxFP8I.jpg,mPIkCjHiQraW.jpg', 1, NULL, NULL, 16, 21, 2, 2, 58, 1, 5, 5, 1, 8, 9, 2, '58,13', '2020-06-25 03:52:10', '2020-07-04 03:22:39'),
(905, 'LTP-E401PG-7AVDF', NULL, 6995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '60uVUMhvRUe1.jpg,88y4HiuZniZC.jpg,C5iDBIvKq1QI.jpg', '60uVUMhvRUe1.jpg,88y4HiuZniZC.jpg,C5iDBIvKq1QI.jpg', 1, NULL, NULL, 16, 21, 2, 2, 42, 1, 5, 5, 6, 8, 6, 2, '58,13', '2020-06-25 03:52:10', '2020-07-04 03:22:41'),
(906, 'LTP-VT01L-4BUDF', NULL, 2495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'GT7zO4Hys5AY.jpg,G17LOWKg4lQW.jpg,ifDhpErBpHxo.jpg,TxYY8ucrZj6H.jpg', 'GT7zO4Hys5AY.jpg,G17LOWKg4lQW.jpg,ifDhpErBpHxo.jpg,TxYY8ucrZj6H.jpg', 1, NULL, NULL, 16, 21, 2, 2, 67, 1, 2, 5, 16, 3, 18, 2, NULL, '2020-06-25 03:52:10', '2020-07-04 03:22:43'),
(907, 'LTP-VT01L-7B3UDF', NULL, 2495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'KStf9XNzqRdE.jpg,pYbpJhNIE0Pl.jpg,rUcWplLXqf6f.jpg,TKCW3mPzQefj.jpg', 'KStf9XNzqRdE.jpg,pYbpJhNIE0Pl.jpg,rUcWplLXqf6f.jpg,TKCW3mPzQefj.jpg', 1, NULL, NULL, 16, 21, 2, 2, 67, 1, 2, 5, 6, 3, 2, 2, NULL, '2020-06-25 03:52:11', '2020-07-04 03:22:46'),
(908, 'LWS-1100H-8AVDF', NULL, 2495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '4AArdOoIfYF3.jpg,igFTQ8oxeE1i.jpg,GLQcJ4MDyUeF.jpg,7SsbGdVforDq.jpg', '4AArdOoIfYF3.jpg,igFTQ8oxeE1i.jpg,GLQcJ4MDyUeF.jpg,7SsbGdVforDq.jpg', 1, NULL, NULL, 16, 21, 2, 2, 10, 1, 2, 5, 1, 3, 1, 1, NULL, '2020-06-25 03:52:11', '2020-07-04 03:22:49'),
(909, 'LWS-1100H-9AVDF', NULL, 2495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'odmKYx67n2Ii.jpg,N1hMdlKyoJDB.jpg,jHOdF84tjYxt.jpg,0Kte4wejLBRb.jpg', 'odmKYx67n2Ii.jpg,N1hMdlKyoJDB.jpg,jHOdF84tjYxt.jpg,0Kte4wejLBRb.jpg', 1, NULL, NULL, 16, 21, 2, 2, 10, 1, 2, 5, 5, 3, 1, 1, NULL, '2020-06-25 03:52:11', '2020-07-04 03:22:51'),
(910, 'MCW-110H-1AVDF', NULL, 3995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ftZG9KuezA0Q.jpg,qrBw4gKq4jtz.jpg,FRZBHrTWXDQU.jpg', 'ftZG9KuezA0Q.jpg,qrBw4gKq4jtz.jpg,FRZBHrTWXDQU.jpg', 1, NULL, NULL, 16, 21, 2, 2, 10, 1, 2, 5, 5, 3, 1, 1, NULL, '2020-06-25 03:52:11', '2020-07-04 03:22:54'),
(911, 'MTP-1302D-7A2VDF', NULL, 2995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'nRQNzz0GV5v1.jpg,HXCkvhfOQHuv.jpg,0fx9Gg3FNR0V.jpg,4UoLlALD0GCs.jpg', 'nRQNzz0GV5v1.jpg,HXCkvhfOQHuv.jpg,0fx9Gg3FNR0V.jpg,4UoLlALD0GCs.jpg', 1, NULL, NULL, 16, 21, 2, 2, 35, 1, 2, 5, 6, 4, 5, 1, '11', '2020-06-25 03:52:11', '2020-07-04 03:22:56'),
(912, 'MTP-1302SG-7AVDF', NULL, 3795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'mdQVo3nkLxQR.jpg,34OPx1QsXhbR.jpg,yoN9jklqoL71.jpg,9Wgkds2YigAt.jpg', 'mdQVo3nkLxQR.jpg,34OPx1QsXhbR.jpg,yoN9jklqoL71.jpg,9Wgkds2YigAt.jpg', 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 2, 5, 6, 4, 5, 1, '11', '2020-06-25 03:52:11', '2020-07-04 03:22:59'),
(913, 'MTP-1314D-1AVDF', NULL, 2795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'VlC1h4SHPc24.jpg,Eim0a5SCqzKr.jpg,81yUWJYFj8jh.jpg', 'VlC1h4SHPc24.jpg,Eim0a5SCqzKr.jpg,81yUWJYFj8jh.jpg', 1, NULL, NULL, 16, 21, 2, 2, 77, 1, 2, 5, 1, 4, 5, 1, '11', '2020-06-25 03:52:11', '2020-07-04 03:23:01'),
(914, 'MTP-1314L-7AVDF', NULL, 2695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'GXdpfjXDJodw.jpg,TmWuHcmYm000.jpg,a3CfsFJXvqqv.jpg', 'GXdpfjXDJodw.jpg,TmWuHcmYm000.jpg,a3CfsFJXvqqv.jpg', 1, NULL, NULL, 16, 21, 2, 2, 77, 1, 2, 5, 5, 3, 1, 1, '11', '2020-06-25 03:52:11', '2020-07-04 03:23:02'),
(915, 'MTP-1374HD-2AVIF', NULL, 4995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'b5ToAPx67wpk.jpg,3tu3oIQkAcxf.jpg,D2iMDgNgSjUg.jpg,DSDFauztIezB.jpg', 'b5ToAPx67wpk.jpg,3tu3oIQkAcxf.jpg,D2iMDgNgSjUg.jpg,DSDFauztIezB.jpg', 1, NULL, NULL, 16, 21, 2, 2, 51, 1, 2, 5, 1, 4, 5, 1, '58,13', '2020-06-25 03:52:11', '2020-07-04 03:23:05'),
(916, 'MTP-1374HRG-9AVI', NULL, 5995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 2, 10, 10, 1, '58,13', '2020-06-25 03:52:11', '2020-06-25 03:52:11'),
(917, 'MTP-1374HSG-1AVI', NULL, 5995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ormKV9mRgmoy.jpg,J75OS9lVceww.jpg,Sn40vmSbQpDl.jpg,wSwew1ds6xIg.jpg', 'ormKV9mRgmoy.jpg,J75OS9lVceww.jpg,Sn40vmSbQpDl.jpg,wSwew1ds6xIg.jpg', 1, NULL, NULL, 16, 21, 2, 2, 51, 1, 2, 5, 1, 8, 9, 1, '58,13', '2020-06-25 03:52:11', '2020-07-04 03:23:07'),
(918, 'MTP-1374L-1A2VDF', NULL, 4695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'hHe9EkCxEpeO.jpg,EzvYfxpZ9d5a.jpg,ZyTiWrFODnPa.jpg,C3a0dnPILNx9.jpg', 'hHe9EkCxEpeO.jpg,EzvYfxpZ9d5a.jpg,ZyTiWrFODnPa.jpg,C3a0dnPILNx9.jpg', 1, NULL, NULL, 16, 21, 2, 2, 51, 1, 2, 5, 1, 3, 2, 1, '58,13', '2020-06-25 03:52:11', '2020-07-04 03:23:10'),
(919, 'MTP-1375D-1AVDF', NULL, 4995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'zf2r55eapzUp.jpg,9LfwrxGHf3eM.jpg,sxmmVw2AWjNM.jpg,6jBxoS9WlEhT.jpg', 'zf2r55eapzUp.jpg,9LfwrxGHf3eM.jpg,sxmmVw2AWjNM.jpg,6jBxoS9WlEhT.jpg', 1, NULL, NULL, 16, 21, 2, 2, 51, 1, 2, 5, 1, 4, 5, 1, '58,13', '2020-06-25 03:52:11', '2020-07-04 03:23:12'),
(920, 'MTP-1375HRG-1AVIF', NULL, 5995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '1v7ZXtGjAlAp.jpg,CmYuzmAiN6Vi.jpg,1iLVDYM8zuSf.jpg,wqnKKK45JIHS.jpg', '1v7ZXtGjAlAp.jpg,CmYuzmAiN6Vi.jpg,1iLVDYM8zuSf.jpg,wqnKKK45JIHS.jpg', 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 2, 10, 10, 1, '58,13', '2020-06-25 03:52:11', '2020-07-04 03:23:15'),
(921, 'MTP-1375SG-9AVDF', NULL, 5995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '84M685YGId8G.jpg,lbLwo5vA99p0.jpg,OIXrTdcvx7g9.jpg', '84M685YGId8G.jpg,lbLwo5vA99p0.jpg,OIXrTdcvx7g9.jpg', 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 6, 8, 9, 1, '58,13', '2020-06-25 03:52:11', '2020-07-04 03:23:17'),
(922, 'MTP-1384L-2AVDF', NULL, 4495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'IWyu2dJVtMBT.jpg,uTNF3HRyt4XB.jpg,WiIkaInTEXPw.jpg', 'IWyu2dJVtMBT.jpg,uTNF3HRyt4XB.jpg,WiIkaInTEXPw.jpg', 1, NULL, NULL, 16, 21, 2, 2, 66, 1, 2, 5, 2, 3, 3, 1, '13', '2020-06-25 03:52:12', '2020-07-04 03:23:20'),
(923, 'MTP-E200D-1A2VDF', NULL, 4495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'WWivVUdXoGTG.jpg,J8I4WnZcGsxE.jpg,f5y0rWkjLL1k.jpg,kiKdIujiKiWy.jpg', 'WWivVUdXoGTG.jpg,J8I4WnZcGsxE.jpg,f5y0rWkjLL1k.jpg,kiKdIujiKiWy.jpg', 1, NULL, NULL, 16, 21, 2, 2, 66, 1, 2, 5, 1, 4, 5, 1, '13', '2020-06-25 03:52:12', '2020-07-04 03:23:22'),
(924, 'MTP-E305HRG-7AVI', NULL, 6595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '8BYmwuEqTzSv.jpg,5LSF3fuioTuC.jpg,dtRtv9pbkvLc.jpg,NXPjxAvVXZIz.jpg', '8BYmwuEqTzSv.jpg,5LSF3fuioTuC.jpg,dtRtv9pbkvLc.jpg,NXPjxAvVXZIz.jpg', 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 1, 10, 10, 1, '58,13', '2020-06-25 03:52:12', '2020-07-04 03:23:25'),
(925, 'MTP-E305HSG-9AVI', NULL, 5995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'zmfq0CJNimlI.jpg,6Uzq3SWM2G8J.jpg,Q7e7bXIZtOXB.jpg', 'zmfq0CJNimlI.jpg,6Uzq3SWM2G8J.jpg,Q7e7bXIZtOXB.jpg', 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 6, 8, 9, 1, '58,13', '2020-06-25 03:52:12', '2020-07-04 03:23:27'),
(926, 'MTP-E305L-7A2VDF', NULL, 4995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Pfvfr01qSC2U.jpg,zAM8szSCCUMK.jpg,PNx2kfmOSJ1Q.jpg', 'Pfvfr01qSC2U.jpg,zAM8szSCCUMK.jpg,PNx2kfmOSJ1Q.jpg', 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 6, 3, 3, 1, '58,13', '2020-06-25 03:52:12', '2020-07-04 03:23:30'),
(927, 'MTP-SW320RG-2AVD', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'GyAQBKfCOENr.jpg,PjuNSdDTfWzB.jpg,sXmp2lpwTPPD.jpg,Obwezrid6DsO.jpg', 'GyAQBKfCOENr.jpg,PjuNSdDTfWzB.jpg,sXmp2lpwTPPD.jpg,Obwezrid6DsO.jpg', 1, NULL, NULL, 16, 21, 2, 2, 76, 1, 2, 5, 2, 10, 10, 1, '58,13', '2020-06-25 03:52:12', '2020-07-04 03:23:33'),
(928, 'MTP-SW320SG-1AVD', NULL, 7495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'CEO54x1aeKs3.jpg', 'CEO54x1aeKs3.jpg', 1, NULL, NULL, 16, 21, 2, 2, 76, 1, 2, 5, 1, 8, 9, 1, '58,13', '2020-06-25 03:52:12', '2020-07-04 03:23:33'),
(929, 'MTP-SW340L-2AVDF', NULL, 5295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'EUQJNCAy1QiU.jpg,EXfGVGbsdUpQ.jpg,07AfEn5UZa3k.jpg,cwPYEEz6E3Hh.jpg', 'EUQJNCAy1QiU.jpg,EXfGVGbsdUpQ.jpg,07AfEn5UZa3k.jpg,cwPYEEz6E3Hh.jpg', 1, NULL, NULL, 16, 21, 2, 2, 76, 1, 2, 5, 2, 3, 3, 1, '58,13', '2020-06-25 03:52:12', '2020-07-04 03:23:36'),
(930, 'MTP-V006L-2BUDF', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'LljTP4IVjj9h.jpg,4X6syhwmivG9.jpg,COYJLPLi15JM.jpg,k8we7uovDbG4.jpg', 'LljTP4IVjj9h.jpg,4X6syhwmivG9.jpg,COYJLPLi15JM.jpg,k8we7uovDbG4.jpg', 1, NULL, NULL, 16, 21, 2, 2, 76, 1, 2, 5, 1, 3, 1, 1, '13', '2020-06-25 03:52:12', '2020-07-04 03:23:38'),
(931, 'MTP-V300D-7A2UDF', NULL, 3295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'p6nGZ2uNekHj.jpg,MRs3Gymxnpob.jpg,wf2sTtUPpeSw.jpg,LlYrAcJ2s5qm.jpg', 'p6nGZ2uNekHj.jpg,MRs3Gymxnpob.jpg,wf2sTtUPpeSw.jpg,LlYrAcJ2s5qm.jpg', 1, NULL, NULL, 16, 21, 2, 2, 22, 1, 2, 5, 5, 4, 5, 1, '58,13', '2020-06-25 03:52:12', '2020-07-04 03:23:41'),
(932, 'MTP-VD01D-1BVUDF', NULL, 2395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 2, 5, 1, 4, 5, 1, '11', '2020-06-25 03:52:12', '2020-06-25 03:52:12'),
(933, 'MTP-VD01D-2EVUDF', NULL, 2395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'y48i9fpGa0t7.jpg,KZrMGg0T3vwB.jpg,HsNGSNALu9rd.jpg,unm6vRTJoUSv.jpg', 'y48i9fpGa0t7.jpg,KZrMGg0T3vwB.jpg,HsNGSNALu9rd.jpg,unm6vRTJoUSv.jpg', 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 2, 5, 2, 4, 5, 1, '11', '2020-06-25 03:52:12', '2020-07-04 03:23:43'),
(934, 'MTP-VD01D-7BVUDF', NULL, 2395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'wjB3Is89Lc3T.jpg,Ujev3MmVyAiT.jpg,29JrI8jpaRTi.jpg', 'wjB3Is89Lc3T.jpg,Ujev3MmVyAiT.jpg,29JrI8jpaRTi.jpg', 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 2, 5, 5, 4, 5, 1, '11', '2020-06-25 03:52:12', '2020-07-04 03:23:46'),
(935, 'MTP-VD01G-1BVUDF', NULL, 3295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'GB1tLZvllO5f.jpg,qxJlWTgFZFoc.jpg,yDDq81ovJZIR.jpg,avQgeCMoGRrH.jpg', 'GB1tLZvllO5f.jpg,qxJlWTgFZFoc.jpg,yDDq81ovJZIR.jpg,avQgeCMoGRrH.jpg', 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 2, 5, 1, 4, 11, 1, '11', '2020-06-25 03:52:13', '2020-07-04 03:23:48'),
(936, 'MTP-VD01L-3BVUDF', NULL, 2195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'FusGOa8KiurP.jpg,RxLZtkz0r71M.jpg,ahyHf7djpo30.jpg,Fo5nqHWcdCZz.jpg', 'FusGOa8KiurP.jpg,RxLZtkz0r71M.jpg,ahyHf7djpo30.jpg,Fo5nqHWcdCZz.jpg', 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 2, 5, 1, 3, 13, 1, '11', '2020-06-25 03:52:13', '2020-07-04 03:23:51'),
(937, 'MTP-VD300D-7EUDF', NULL, 3995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'gEA47q83B1JX.jpg,um6A1KaFO5jt.jpg,07qnjzh8eQfT.jpg,F9MjDelxTZok.jpg', 'gEA47q83B1JX.jpg,um6A1KaFO5jt.jpg,07qnjzh8eQfT.jpg,F9MjDelxTZok.jpg', 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 2, 5, 6, 4, 5, 1, '58,13', '2020-06-25 03:52:13', '2020-07-04 03:23:53'),
(938, 'MTP-VD300L-1EUDF', NULL, 3795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'MQGM1unYi66D.jpg,79N8GuwkWPkL.jpg,89TlN0UGax7q.jpg,vtrmEBH6gSOe.jpg', 'MQGM1unYi66D.jpg,79N8GuwkWPkL.jpg,89TlN0UGax7q.jpg,vtrmEBH6gSOe.jpg', 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 2, 5, 1, 3, 3, 1, '58,13', '2020-06-25 03:52:13', '2020-07-04 03:23:56'),
(939, 'MTP-VD300L-7EUDF', NULL, 3795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'tS05EJgFzwjQ.jpg,TRaCXUsVO72A.jpg,r5uFENqbwsXH.jpg,J4MdulrJjAl5.jpg', 'tS05EJgFzwjQ.jpg,TRaCXUsVO72A.jpg,r5uFENqbwsXH.jpg,J4MdulrJjAl5.jpg', 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 2, 5, 6, 3, 1, 1, '58,13', '2020-06-25 03:52:13', '2020-07-04 03:23:58'),
(940, 'MTP-VT01D-1BUDF', NULL, 2995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'zIb1JGYXBqwz.jpg,TgHxwI0Ths1D.jpg,W9Su0EX9ZH9r.jpg,T9T9Vb4E9myB.jpg', 'zIb1JGYXBqwz.jpg,TgHxwI0Ths1D.jpg,W9Su0EX9ZH9r.jpg,T9T9Vb4E9myB.jpg', 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 1, 4, 5, 1, NULL, '2020-06-25 03:52:13', '2020-07-04 03:24:01'),
(941, 'MTP-VT01D-2BUDF', NULL, 2995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'st08fP3GiL7o.jpg,WCjF2zkmDQEC.jpg,bWO1rmq9j5WK.jpg,XXgvv61Ck0XH.jpg', 'st08fP3GiL7o.jpg,WCjF2zkmDQEC.jpg,bWO1rmq9j5WK.jpg,XXgvv61Ck0XH.jpg', 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 2, 4, 5, 1, NULL, '2020-06-25 03:52:13', '2020-07-04 03:24:04'),
(942, 'MTP-VT01D-7BUDF', NULL, 2995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'a0XDkaKU0QTh.jpg,Mg1y5SXe49T7.jpg,6DnLXZEhazJK.jpg,i7lLJEBGDcbD.jpg', 'a0XDkaKU0QTh.jpg,Mg1y5SXe49T7.jpg,6DnLXZEhazJK.jpg,i7lLJEBGDcbD.jpg', 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 5, 4, 5, 1, NULL, '2020-06-25 03:52:13', '2020-07-04 03:24:07'),
(943, 'MTP-VT01L-1BUDF', NULL, 3495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '2u8Ilg6teLeU.jpg,ZQ5HjKVXuX7y.jpg,ohpvrPwlbZV7.jpg', '2u8Ilg6teLeU.jpg,ZQ5HjKVXuX7y.jpg,ohpvrPwlbZV7.jpg', 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 1, 3, 1, 1, NULL, '2020-06-25 03:52:13', '2020-07-04 03:24:09'),
(944, 'MTP-VT01L-2BUDF', NULL, 2495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Ey5VRGG5i6v7.jpg,y5znldLf8a2m.jpg,1nDeWZ9LVb6R.jpg,1aS83QMyYjLz.jpg', 'Ey5VRGG5i6v7.jpg,y5znldLf8a2m.jpg,1nDeWZ9LVb6R.jpg,1aS83QMyYjLz.jpg', 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 2, 3, 3, 1, NULL, '2020-06-25 03:52:13', '2020-07-04 03:24:12'),
(945, 'W-213-1AVDF', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'kD5Lsvg7S6B9.jpg,xVZzcXc4Pp4B.jpg,vIQRiLkP2CKe.jpg', 'kD5Lsvg7S6B9.jpg,xVZzcXc4Pp4B.jpg,vIQRiLkP2CKe.jpg', 1, NULL, NULL, 16, 21, 2, 2, 62, 1, 2, 5, 3, 3, 1, 1, '2,5,61,32', '2020-06-25 03:52:13', '2020-07-04 03:24:15'),
(946, 'W-216H-2BVDF', NULL, 1595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'CtxHUQoHT50t.jpg,7MPgfSLMJCPp.jpg,NSJv5RBZVEzY.jpg', 'CtxHUQoHT50t.jpg,7MPgfSLMJCPp.jpg,NSJv5RBZVEzY.jpg', 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 2, 5, 3, 3, 2, 1, NULL, '2020-06-25 03:52:13', '2020-07-04 03:24:17'),
(947, 'W-217HM-5AVDF', NULL, 1395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'UZmBIScJyBNr.jpg,8CutNDxqpGdO.jpg,BVpMTHTjCDpG.jpg,BhvfutzTqWMn.jpg', 'UZmBIScJyBNr.jpg,8CutNDxqpGdO.jpg,BVpMTHTjCDpG.jpg,BhvfutzTqWMn.jpg', 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 2, 5, 8, 3, 1, 3, '2,5,61,32', '2020-06-25 03:52:13', '2020-07-04 03:24:20'),
(948, 'W-217HM-7BVDF', NULL, 1395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'svfPnN2arFxv.jpg,CHa5zL3hke7q.jpg,Jdq6yeVg871O.jpg,b3CNISghflvZ.jpg', 'svfPnN2arFxv.jpg,CHa5zL3hke7q.jpg,Jdq6yeVg871O.jpg,b3CNISghflvZ.jpg', 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 2, 5, 1, 3, 1, 3, '2,5,61,32', '2020-06-25 03:52:13', '2020-07-04 03:24:22'),
(949, 'W-218H-2AVDF', NULL, 1395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'hP1XxrDqW8Ky.jpg,SgCaL5TdM5MN.jpg,Ce2wQ9WxDYtG.jpg,dM9Gi7AUeJxX.jpg', 'hP1XxrDqW8Ky.jpg,SgCaL5TdM5MN.jpg,Ce2wQ9WxDYtG.jpg,dM9Gi7AUeJxX.jpg', 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 2, 5, 3, 3, 1, 3, '2,5,61,32', '2020-06-25 03:52:13', '2020-07-04 03:24:25'),
(950, 'W-218H-3AVDF', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ThbgN1P4fR9m.jpg,yS7ryYonzs28.jpg,5KM117HQZtfE.jpg', 'ThbgN1P4fR9m.jpg,yS7ryYonzs28.jpg,5KM117HQZtfE.jpg', 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 2, 5, 3, 3, 13, 1, NULL, '2020-06-25 03:52:13', '2020-07-04 03:24:27'),
(951, 'W-735H-1A2VDF', NULL, 3195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'AmNZq6rLIkAD.jpg,uKxF1T3GCRpc.jpg,pUhxP0vTXkjC.jpg', 'AmNZq6rLIkAD.jpg,uKxF1T3GCRpc.jpg,pUhxP0vTXkjC.jpg', 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 2, 5, 1, 3, 1, 1, NULL, '2020-06-25 03:52:13', '2020-07-04 03:24:29'),
(952, 'W-736H-1AVDF', NULL, 2695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '2JFF6WZBtdGE.jpg,V54g6H8u5r3O.jpg,sqMw8p6oZRyr.jpg,DlXFNUy2KfhX.jpg', '2JFF6WZBtdGE.jpg,V54g6H8u5r3O.jpg,sqMw8p6oZRyr.jpg,DlXFNUy2KfhX.jpg', 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 2, 5, 3, 3, 1, 1, NULL, '2020-06-25 03:52:14', '2020-07-04 03:24:32'),
(953, 'WS-1100H-2AVDF', NULL, 2495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'uDqqstwDwONz.jpg,wfZ61pqI7uor.jpg,8xSoGqtvX83D.jpg,qRO68gUqxWbi.jpg', 'uDqqstwDwONz.jpg,wfZ61pqI7uor.jpg,8xSoGqtvX83D.jpg,qRO68gUqxWbi.jpg', 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 2, 5, 3, 3, 2, 1, NULL, '2020-06-25 03:52:14', '2020-07-04 03:24:35'),
(954, '736H-1AVDF', NULL, 2695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '6PVd8v3wSFJH.jpg,TBaw8HAg7VMh.jpg,GGY8Gyt3A4dD.jpg,HKBEw8nmQfxx.jpg', '6PVd8v3wSFJH.jpg,TBaw8HAg7VMh.jpg,GGY8Gyt3A4dD.jpg,HKBEw8nmQfxx.jpg', 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 2, 5, 3, 3, 1, 1, NULL, '2020-06-25 03:52:14', '2020-07-04 03:24:38'),
(957, 'A159WGED-1DF', NULL, 5495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'llHKdXOBN9HK.jpg,72rFMjTkrr4F.jpg', 'llHKdXOBN9HK.jpg,72rFMjTkrr4F.jpg', 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 5, 5, 3, 8, 11, 1, '2,5,13,14', '2020-06-25 03:52:14', '2020-06-25 07:20:05'),
(958, 'A700WMG-9ADF', NULL, 4295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'b8PNp7u2OTlH.jpg,gDBAZIOD8qwe.jpg,VJIBWaFuGDcu.jpg,A7coCJOSHm0X.jpg', 'b8PNp7u2OTlH.jpg,gDBAZIOD8qwe.jpg,VJIBWaFuGDcu.jpg,A7coCJOSHm0X.jpg', 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 5, 5, 7, 8, 11, 3, '58,2,5', '2020-06-25 03:52:14', '2020-07-04 03:24:41'),
(959, 'AE-1200WH-1AVDF', NULL, 2195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'G8VnQiwrGNQ0.jpg,kKeAKNRy7Uuh.jpg,et59EbFQwRnn.jpg', 'G8VnQiwrGNQ0.jpg,kKeAKNRy7Uuh.jpg,et59EbFQwRnn.jpg', 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 5, 5, 1, 8, 1, 1, '2,61,13,32', '2020-06-25 03:52:14', '2020-07-04 03:24:43'),
(960, 'TW000X219', NULL, 3195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'fURnh2br2P1v.jpg,OQ3DaVb9iTsI.jpg,tf1cqL75QMWV.jpg', 'fURnh2br2P1v.jpg,OQ3DaVb9iTsI.jpg,tf1cqL75QMWV.jpg', 1, NULL, NULL, 16, 21, 2, 2, 75, 1, 5, 5, 8, 8, 6, 2, NULL, '2020-06-25 03:52:14', '2020-07-04 03:24:45'),
(961, 'TW0TG6207', NULL, 2795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Av1XnimYuFhk.jpg,2Dpq5CZaBS5T.jpg', 'Av1XnimYuFhk.jpg,2Dpq5CZaBS5T.jpg', 1, NULL, NULL, 16, 21, 2, 2, 75, 1, 2, 5, 6, 4, 5, 1, '13', '2020-06-25 03:52:14', '2020-07-04 03:24:47'),
(962, 'TWEG18902', NULL, 3795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'jFX3fMGVYQvA.jpg,G7sNwJsZVgi4.jpg', 'jFX3fMGVYQvA.jpg,G7sNwJsZVgi4.jpg', 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 2, 5, 2, 3, 1, 1, NULL, '2020-06-25 03:52:14', '2020-07-04 03:24:48'),
(963, 'A303', NULL, 1145.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '2wio0N9K75ft.jpg,09x8TMlkz9in.jpg,xriOEzIMybZH.jpg', '2wio0N9K75ft.jpg,09x8TMlkz9in.jpg,xriOEzIMybZH.jpg', 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 5, 5, 5, 8, 11, 2, NULL, '2020-06-25 03:52:14', '2020-07-04 03:24:50'),
(964, 'A304', NULL, 1245.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '12sXqrhJHMb3.jpg,n9ZeZf30jIhh.jpg,dx6l6uTjwAIu.jpg', '12sXqrhJHMb3.jpg,n9ZeZf30jIhh.jpg,dx6l6uTjwAIu.jpg', 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 5, 5, 7, 8, 11, 1, NULL, '2020-06-25 03:52:14', '2020-07-04 03:24:52'),
(965, 'BW01', NULL, 1575.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '9F7Y7hcLx8DI.jpg,3aKbLTKPHoUq.jpg,DXNQC0yrQrR1.jpg', '9F7Y7hcLx8DI.jpg,3aKbLTKPHoUq.jpg,DXNQC0yrQrR1.jpg', 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 5, 5, 7, 8, 11, 1, '13', '2020-06-25 03:52:14', '2020-07-04 03:24:54'),
(966, 'B810', NULL, 1625.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '9fxeo61b0Hwf.jpg,NeVg5OicDGNc.jpg,99lS6mKSaQ02.jpg', '9fxeo61b0Hwf.jpg,NeVg5OicDGNc.jpg,99lS6mKSaQ02.jpg', 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 5, 5, 7, 8, 11, 2, '13', '2020-06-25 03:52:14', '2020-07-04 03:24:56'),
(967, 'BW00', NULL, 1575.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'nhh5tY4Y6Ry1.jpg,Eg01pdbA83Pf.jpg,gjdNj54WhsvL.jpg', 'nhh5tY4Y6Ry1.jpg,Eg01pdbA83Pf.jpg,gjdNj54WhsvL.jpg', 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 5, 5, 5, 8, 11, 1, '13', '2020-06-25 03:52:14', '2020-07-04 03:24:58'),
(968, 'BW02', NULL, 1575.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'BEqoNpsheSRq.jpg,2eK7pLOgJ2Tk.jpg,gpvz22IaFK5L.jpg', 'BEqoNpsheSRq.jpg,2eK7pLOgJ2Tk.jpg,gpvz22IaFK5L.jpg', 1, NULL, NULL, 16, 21, 2, 2, 42, 1, 5, 5, 5, 8, 11, 1, '13', '2020-06-25 03:52:14', '2020-07-04 03:25:01'),
(969, 'BW03', NULL, 1725.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'dUGgoKl9nll6.jpg,UxN9iB6g82Wy.jpg,FNhXjcPl0FeY.jpg', 'dUGgoKl9nll6.jpg,UxN9iB6g82Wy.jpg,FNhXjcPl0FeY.jpg', 1, NULL, NULL, 16, 21, 2, 2, 35, 1, 5, 5, 5, 8, 12, 1, '13', '2020-06-25 03:52:14', '2020-07-04 03:25:03'),
(970, 'BW04', NULL, 1725.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'n45dsC68qcqx.jpg,muQu3WULhoNs.jpg,o56ITRiqEdLC.jpg', 'n45dsC68qcqx.jpg,muQu3WULhoNs.jpg,o56ITRiqEdLC.jpg', 1, NULL, NULL, 16, 21, 2, 2, 35, 1, 5, 5, 5, 8, 12, 1, '13', '2020-06-25 03:52:14', '2020-07-04 03:25:05'),
(971, 'E510', NULL, 3445.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Lkd8nuUSAnfm.jpg,zvPiDrv6Clms.jpg,oHrb4M6iy2zJ.jpg', 'Lkd8nuUSAnfm.jpg,zvPiDrv6Clms.jpg,oHrb4M6iy2zJ.jpg', 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 5, 5, 22, 8, 11, 2, NULL, '2020-06-25 03:52:14', '2020-07-04 03:25:07'),
(972, 'J100', NULL, 2695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'GD3DVOoJQcV2.jpg,WImwTDSUTpbe.jpg,PBZsb4RxF25I.jpg', 'GD3DVOoJQcV2.jpg,WImwTDSUTpbe.jpg,PBZsb4RxF25I.jpg', 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 16, 4, 5, 2, NULL, '2020-06-25 03:52:15', '2020-07-04 03:25:09'),
(973, 'T2P031', NULL, 3995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '2d1BBpyZCBJE.jpg,6jFD3Yy2EOZk.jpg,U2wr6IDnluX7.jpg', '2d1BBpyZCBJE.jpg,6jFD3Yy2EOZk.jpg,U2wr6IDnluX7.jpg', 1, NULL, NULL, 16, 21, 2, 2, 66, 1, 2, 5, 1, 4, 5, 1, '11', '2020-06-25 03:52:15', '2020-07-04 03:25:12'),
(974, 'TI000Q80000', NULL, 3795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'lFhnp3crLhAO.jpg,VanCWCZyHNkj.jpg,xqxtdnQtSTYS.jpg', 'lFhnp3crLhAO.jpg,VanCWCZyHNkj.jpg,xqxtdnQtSTYS.jpg', 1, NULL, NULL, 16, 21, 2, 2, 58, 1, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:52:15', '2020-07-04 03:25:14'),
(975, 'TI000Q80100', NULL, 3795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'A8cIPI3VYqWg.jpg,A1vEkIlI5pMZ.jpg,F23Zrqe01xet.jpg', 'A8cIPI3VYqWg.jpg,A1vEkIlI5pMZ.jpg,F23Zrqe01xet.jpg', 1, NULL, NULL, 16, 21, 2, 2, 58, 1, 2, 5, 16, 4, 5, 2, NULL, '2020-06-25 03:52:15', '2020-07-04 03:25:16'),
(976, 'TI000R40600', NULL, 1695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'zclNnzRlo8hn.jpg,I4KfvTC6eqEU.jpg,MQe5veaMSSpQ.jpg', 'zclNnzRlo8hn.jpg,I4KfvTC6eqEU.jpg,MQe5veaMSSpQ.jpg', 1, NULL, NULL, 16, 21, 2, 2, 35, 1, 5, 5, 7, 8, 11, 1, NULL, '2020-06-25 03:52:15', '2020-07-04 03:25:18'),
(977, 'TI000R41400', NULL, 1345.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'wAnQb573XVw8.jpg,piR87wsZtHeB.jpg,2WrB3WXbEiTX.jpg', 'wAnQb573XVw8.jpg,piR87wsZtHeB.jpg,2WrB3WXbEiTX.jpg', 1, NULL, NULL, 16, 21, 2, 2, 35, 1, 2, 5, 6, 4, 5, 1, NULL, '2020-06-25 03:52:15', '2020-07-04 03:25:20'),
(978, 'TI000R421', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '6q2h4Jq8BOyX.jpg,Rq5H8UftUAXc.jpg,4SSN9XwGZtEi.jpg', '6q2h4Jq8BOyX.jpg,Rq5H8UftUAXc.jpg,4SSN9XwGZtEi.jpg', 1, NULL, NULL, 16, 21, 2, 2, 35, 1, 5, 5, 7, 8, 11, 1, '13', '2020-06-25 03:52:15', '2020-07-04 03:25:23'),
(979, 'TI000R422', NULL, 1795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Fx2EHDzQqNxT.jpg,XQRs186vSvPg.jpg,Vceq3M4ZfTAi.jpg', 'Fx2EHDzQqNxT.jpg,XQRs186vSvPg.jpg,Vceq3M4ZfTAi.jpg', 1, NULL, NULL, 16, 21, 2, 2, 35, 1, 2, 5, 6, 4, 5, 1, '13', '2020-06-25 03:52:15', '2020-07-04 03:25:25'),
(980, 'TI000T118', NULL, 1895.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '69xfLKXIwnk2.jpg,um5eN9LTYkjj.jpg,KTJJAsBl1aZl.jpg', '69xfLKXIwnk2.jpg,um5eN9LTYkjj.jpg,KTJJAsBl1aZl.jpg', 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 6, 4, 5, 1, '13', '2020-06-25 03:52:15', '2020-07-04 03:25:27'),
(981, 'TI000T60000', NULL, 2095.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'F6Puq4zatoCe.jpg,oQU8Okg4aEty.jpg,CuCjmhq5WyeE.jpg', 'F6Puq4zatoCe.jpg,oQU8Okg4aEty.jpg,CuCjmhq5WyeE.jpg', 1, NULL, NULL, 16, 21, 2, 2, 58, 1, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:52:15', '2020-07-04 03:25:28'),
(982, 'TI000T60100', NULL, 2095.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'tUVYG1Y13NRy.jpg,hgwcsSUWHBIO.jpg,4dKRRJ9qk34c.jpg', 'tUVYG1Y13NRy.jpg,hgwcsSUWHBIO.jpg,4dKRRJ9qk34c.jpg', 1, NULL, NULL, 16, 21, 2, 2, 58, 1, 2, 5, 16, 4, 5, 2, NULL, '2020-06-25 03:52:15', '2020-07-04 03:25:31'),
(983, 'TI000T60200', NULL, 2095.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'B1i584nBPkNj.jpg,9S5luPV5Xicu.jpg,hWjPWvyZhqba.jpg', 'B1i584nBPkNj.jpg,9S5luPV5Xicu.jpg,hWjPWvyZhqba.jpg', 1, NULL, NULL, 16, 21, 2, 2, 58, 1, 2, 5, 22, 4, 5, 2, NULL, '2020-06-25 03:52:15', '2020-07-04 03:25:32'),
(984, 'TI000U30300', NULL, 4145.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'sajepPxjatpa.jpg,O6rnfsaITW7U.jpg,0h23iu4mXXKr.jpg', 'sajepPxjatpa.jpg,O6rnfsaITW7U.jpg,0h23iu4mXXKr.jpg', 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 2, 5, 1, 8, 12, 1, '13', '2020-06-25 03:52:15', '2020-07-04 03:25:34'),
(985, 'TW000BW09', NULL, 1795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'dqDdzO75BxLO.jpg', 'dqDdzO75BxLO.jpg', 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 8, 5, 6, 10, 6, 2, '13', '2020-06-25 03:52:15', '2020-07-04 03:25:35'),
(986, 'TW000BW10', NULL, 1895.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '', '', 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 2, 4, 10, 1, '13', '2020-06-25 03:52:15', '2020-07-04 03:25:35'),
(987, 'TW000CS20', NULL, 1145.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'aTZu3fsDMqjq.jpg,cevyTCn8H5PY.jpg,ExisKhTvOGAH.jpg', 'aTZu3fsDMqjq.jpg,cevyTCn8H5PY.jpg,ExisKhTvOGAH.jpg', 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 5, 5, 9, 8, 11, 2, NULL, '2020-06-25 03:52:15', '2020-07-04 03:25:37'),
(988, 'TW000EL09', NULL, 3595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'x5U3WxtQHh5r.jpg,3Vnd9hHcv8pc.jpg,GPfb8WVyBbit.jpg', 'x5U3WxtQHh5r.jpg,3Vnd9hHcv8pc.jpg,GPfb8WVyBbit.jpg', 1, NULL, NULL, 16, 21, 2, 2, 65, 1, 2, 5, 4, 4, 5, 1, '13', '2020-06-25 03:52:15', '2020-07-04 03:25:39'),
(989, 'TW000EL12', NULL, 3495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Schlo74KhLMy.jpg,JwM5dTOfguW2.jpg', 'Schlo74KhLMy.jpg,JwM5dTOfguW2.jpg', 1, NULL, NULL, 16, 21, 2, 2, 65, 1, 2, 5, 1, 3, 1, 1, '13', '2020-06-25 03:52:15', '2020-07-04 03:25:40'),
(990, 'TW000EL14', NULL, 3495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'YmbQgtM8efet.jpg,zcUZcKvrMIdU.jpg', 'YmbQgtM8efet.jpg,zcUZcKvrMIdU.jpg', 1, NULL, NULL, 16, 21, 2, 2, 65, 1, 2, 5, 4, 3, 3, 1, '13', '2020-06-25 03:52:15', '2020-07-04 03:25:42'),
(991, 'TW000G714', NULL, 3175.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'TLA9RyEJZ8oa.jpg,I4DWt6umfe9j.jpg,8n9PrpWNIAWE.jpg', 'TLA9RyEJZ8oa.jpg,I4DWt6umfe9j.jpg,8n9PrpWNIAWE.jpg', 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 6, 4, 9, 1, '13', '2020-06-25 03:52:16', '2020-07-04 03:25:44');
INSERT INTO `product_details` (`id`, `model_no`, `series`, `price`, `material`, `buckle`, `size`, `shape`, `frame_colour`, `lens`, `visible_ray`, `dimensions`, `nib`, `length_mm`, `taper`, `clasp_type`, `clasp_size`, `lock_system`, `description`, `warranty_period`, `meta_title`, `meta_description`, `meta_keyword`, `h1`, `status`, `featured_status`, `images`, `thumb_img`, `main_category_id`, `colour_id`, `clock_type_id`, `brand_id`, `collection_id`, `movement_id`, `movement_type_id`, `case_size_id`, `case_shape_id`, `case_material_id`, `glass_material_id`, `dial_colour_id`, `strap_material_id`, `strap_colour_id`, `gender_id`, `feature_id`, `created_at`, `updated_at`) VALUES
(992, 'TW000G720', NULL, 3795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'iRkUeBkdzC8L.jpg,H3RMDQq3YN2d.jpg,og1u92F7DeFZ.jpg', 'iRkUeBkdzC8L.jpg,H3RMDQq3YN2d.jpg,og1u92F7DeFZ.jpg', 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 6, 4, 10, 1, '13', '2020-06-25 03:52:16', '2020-07-04 03:25:46'),
(993, 'TW000JW28', NULL, 1845.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '1yJV2jghadar.jpg', '1yJV2jghadar.jpg', 1, NULL, NULL, 16, 21, 2, 2, 42, 3, 8, 5, 2, 10, 6, 2, NULL, '2020-06-25 03:52:16', '2020-07-04 03:25:46'),
(994, 'TW000K108', NULL, 4695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'oiFFUj7JC7Mp.jpg,BstYv7DYeDAj.jpg,zqOvZ8sUFkjg.jpg', 'oiFFUj7JC7Mp.jpg,BstYv7DYeDAj.jpg,zqOvZ8sUFkjg.jpg', 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 8, 5, 2, 10, 6, 1, '13', '2020-06-25 03:52:16', '2020-07-04 03:25:49'),
(995, 'TW000K113', NULL, 4045.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'ir0DdPNJdrEW.jpg,wVky4fudqBaW.jpg,CmY1y9kTy2zA.jpg', 'ir0DdPNJdrEW.jpg,wVky4fudqBaW.jpg,CmY1y9kTy2zA.jpg', 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 6, 8, 12, 1, '13', '2020-06-25 03:52:16', '2020-07-04 03:25:51'),
(996, 'TW000L518', NULL, 2295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'g915h7C0Cyen.jpg,jdqsxOgtCmJT.jpg,OKE8zi6sz1IU.jpg', 'g915h7C0Cyen.jpg,jdqsxOgtCmJT.jpg,OKE8zi6sz1IU.jpg', 1, NULL, NULL, 16, 21, 2, 2, 75, 1, 5, 5, 11, 8, 11, 1, '13', '2020-06-25 03:52:16', '2020-07-04 03:25:53'),
(997, 'TW000L519', NULL, 2895.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '', '', 1, NULL, NULL, 16, 21, 2, 2, 75, 1, 2, 5, 2, 8, 12, 1, '13', '2020-06-25 03:52:16', '2020-07-04 03:25:53'),
(998, 'TW000L520', NULL, 2795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '7cFhT1SukmAV.jpg,vePb9JsMA06B.jpg,2cz7pKfIK8Tm.jpg', '7cFhT1SukmAV.jpg,vePb9JsMA06B.jpg,2cz7pKfIK8Tm.jpg', 1, NULL, NULL, 16, 21, 2, 2, 75, 1, 2, 5, 6, 10, 10, 1, '13', '2020-06-25 03:52:16', '2020-07-04 03:25:54'),
(999, 'TW000L521', NULL, 3195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'labf5uUUYzwk.jpg,TdmfcL2US2PY.jpg,StXXYBMXjz7s.jpg', 'labf5uUUYzwk.jpg,TdmfcL2US2PY.jpg,StXXYBMXjz7s.jpg', 1, NULL, NULL, 16, 21, 2, 2, 75, 1, 9, 5, 1, 9, 1, 1, '13', '2020-06-25 03:52:16', '2020-07-04 03:25:56'),
(1000, 'TW000Q807', NULL, 3995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'mMRc1wgQCGpC.jpg,GE2OoBnXUG50.jpg,qVVdGZ6xxAVb.jpg', 'mMRc1wgQCGpC.jpg,GE2OoBnXUG50.jpg,qVVdGZ6xxAVb.jpg', 1, NULL, NULL, 16, 21, 2, 2, 63, 1, 2, 5, 6, 4, 10, 2, '13', '2020-06-25 03:52:16', '2020-07-04 03:25:58'),
(1001, 'TW000Q810', NULL, 4395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'lC7Um2UVYGZ1.jpg,6DmpbjbH4sEp.jpg', 'lC7Um2UVYGZ1.jpg,6DmpbjbH4sEp.jpg', 1, NULL, NULL, 16, 21, 2, 2, 42, 1, 2, 5, 8, 10, 6, 2, '13', '2020-06-25 03:52:17', '2020-07-04 03:26:00'),
(1002, 'TW000R424', NULL, 2245.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'wCJ6Sv4Fu3Kh.jpg,4mcD2CPdU0WJ.jpg,lVdy3wikoOhS.jpg', 'wCJ6Sv4Fu3Kh.jpg,4mcD2CPdU0WJ.jpg,lVdy3wikoOhS.jpg', 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 6, 8, 12, 1, '13', '2020-06-25 03:52:17', '2020-07-04 03:26:02'),
(1003, 'TW000R426', NULL, 2245.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '8uvmFdPA0tFf.jpg,yXo7kBcTyeYD.jpg,hkaFrz1F7Kgl.jpg', '8uvmFdPA0tFf.jpg,yXo7kBcTyeYD.jpg,hkaFrz1F7Kgl.jpg', 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 14, 8, 12, 1, '13', '2020-06-25 03:52:17', '2020-07-04 03:26:04'),
(1004, 'TW000R430', NULL, 1595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'm3wOfxGzkxTw.jpg,gi1HU5U0MK9Q.jpg', 'm3wOfxGzkxTw.jpg,gi1HU5U0MK9Q.jpg', 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 6, 4, 5, 1, NULL, '2020-06-25 03:52:17', '2020-07-04 03:26:04'),
(1005, 'TW000R431', NULL, 1695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'hevryBxUAgGi.jpg,Nuuu0c0sLYXM.jpg,lAokMIEE8GNM.jpg', 'hevryBxUAgGi.jpg,Nuuu0c0sLYXM.jpg,lAokMIEE8GNM.jpg', 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 7, 8, 11, 1, NULL, '2020-06-25 03:52:17', '2020-07-04 03:26:06'),
(1006, 'TW000R432', NULL, 1795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'A5LPOfWITViN.jpg', 'A5LPOfWITViN.jpg', 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 5, 8, 9, 1, NULL, '2020-06-25 03:52:17', '2020-07-04 03:26:07'),
(1007, 'TW000R434', NULL, 1795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 6, 4, 5, 1, '13', '2020-06-25 03:52:17', '2020-06-25 03:52:17'),
(1008, 'TW000R436', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '8R8TH72tx69l.jpg', '8R8TH72tx69l.jpg', 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 2, 4, 5, 1, '13', '2020-06-25 03:52:17', '2020-07-04 03:26:07'),
(1009, 'TW000T122', NULL, 2245.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'Y8oO8GsNF4WN.jpg', 'Y8oO8GsNF4WN.jpg', 1, NULL, NULL, 16, 21, 2, 2, 35, 1, 2, 5, 1, 4, 5, 1, '13', '2020-06-25 03:52:17', '2020-07-04 03:26:08'),
(1010, 'TW000T304', NULL, 3295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'qRmaIX2cxyw0.jpg,3FCIeHfp67iY.jpg,uRIwhE1D9KUa.jpg', 'qRmaIX2cxyw0.jpg,3FCIeHfp67iY.jpg,uRIwhE1D9KUa.jpg', 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 2, 5, 6, 3, 3, 1, '13', '2020-06-25 03:52:17', '2020-07-04 03:26:10'),
(1011, 'TW000T306', NULL, 3645.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'M6mizoMqasbM.jpg,QN0NXCbRkB5m.jpg,J4yP2gmpUeP8.jpg', 'M6mizoMqasbM.jpg,QN0NXCbRkB5m.jpg,J4yP2gmpUeP8.jpg', 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 2, 5, 6, 4, 5, 1, '13', '2020-06-25 03:52:17', '2020-07-04 03:26:12'),
(1012, 'TW000T308', NULL, 3495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'GekyHrs0J1Uz.jpg,quRFftQVoPr2.jpg', 'GekyHrs0J1Uz.jpg,quRFftQVoPr2.jpg', 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 2, 5, 1, 3, 3, 1, '13', '2020-06-25 03:52:17', '2020-07-04 03:26:13'),
(1013, 'TW000T310', NULL, 3795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'YOIhkW14Jtdq.jpg,xkb2gtv3jhR5.jpg', 'YOIhkW14Jtdq.jpg,xkb2gtv3jhR5.jpg', 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 2, 5, 1, 3, 2, 1, '13', '2020-06-25 03:52:17', '2020-07-04 03:26:15'),
(1014, 'TW000T311', NULL, 4195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'IPNUpAPpRGjf.jpg,bSFj63HtW4I1.jpg,WZ1Grhn1PQZN.jpg', 'IPNUpAPpRGjf.jpg,bSFj63HtW4I1.jpg,WZ1Grhn1PQZN.jpg', 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 2, 5, 8, 3, 3, 1, '13', '2020-06-25 03:52:18', '2020-07-04 03:26:17'),
(1015, 'TW000T312', NULL, 3795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '1xGYFgSOAY9e.jpg,9w8dM79s6tBw.jpg,4vdl8LZg71KY.jpg', '1xGYFgSOAY9e.jpg,9w8dM79s6tBw.jpg,4vdl8LZg71KY.jpg', 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 2, 5, 2, 3, 2, 1, '13', '2020-06-25 03:52:18', '2020-07-04 03:26:18'),
(1016, 'TW000T313', NULL, 3795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'LLlq0fB0kHx1.jpg,BL7CbWiJICA2.jpg,COFoq7oNUuyw.jpg', 'LLlq0fB0kHx1.jpg,BL7CbWiJICA2.jpg,COFoq7oNUuyw.jpg', 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 2, 5, 1, 3, 1, 1, '13', '2020-06-25 03:52:18', '2020-07-04 03:26:19'),
(1017, 'TW000T316', NULL, 3295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '2rGOCd8j9vLH.jpg,sKyfvirZrpUX.jpg,ZYde0TkjOQzc.jpg,HC7PXj5PaLvM.jpg', '2rGOCd8j9vLH.jpg,sKyfvirZrpUX.jpg,ZYde0TkjOQzc.jpg,HC7PXj5PaLvM.jpg', 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 2, 5, 5, 3, 2, 1, '11', '2020-06-25 03:52:18', '2020-07-04 03:26:22'),
(1018, 'TW000T317', NULL, 3495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'BPiI3IGKIIsC.jpg,P2caXI7UUAHR.jpg,ws0rWVeqRwVX.jpg,DmGUKDiyiV78.jpg', 'BPiI3IGKIIsC.jpg,P2caXI7UUAHR.jpg,ws0rWVeqRwVX.jpg,DmGUKDiyiV78.jpg', 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 2, 5, 5, 3, 3, 1, '11', '2020-06-25 03:52:18', '2020-07-04 03:26:25'),
(1019, 'TW000T607', NULL, 2795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'rmAiSFU3U914.jpg,8waEaXtHZTMR.jpg,WmSyYYBfM7Jw.jpg', 'rmAiSFU3U914.jpg,8waEaXtHZTMR.jpg,WmSyYYBfM7Jw.jpg', 1, NULL, NULL, 16, 21, 2, 2, 42, 1, 2, 5, 6, 4, 10, 2, NULL, '2020-06-25 03:52:18', '2020-07-04 03:26:27'),
(1020, 'TW000T609', NULL, 2695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'he9iNiS2INPz.jpg,F9ueFyTV4QfC.jpg,cFhknMeXxTft.jpg', 'he9iNiS2INPz.jpg,F9ueFyTV4QfC.jpg,cFhknMeXxTft.jpg', 1, NULL, NULL, 16, 21, 2, 2, 42, 1, 9, 5, 1, 9, 1, 2, NULL, '2020-06-25 03:52:18', '2020-07-04 03:26:29'),
(1021, 'TW000T611', NULL, 1895.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'QggjhvvZVvkJ.jpg,fNoJJjqfYldg.jpg,tjyKlBywOTMv.jpg', 'QggjhvvZVvkJ.jpg,fNoJJjqfYldg.jpg,tjyKlBywOTMv.jpg', 1, NULL, NULL, 16, 21, 2, 2, 42, 1, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:52:18', '2020-07-04 03:26:32'),
(1022, 'TW000T613', NULL, 1895.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'rHL4QMFlbUdO.jpg,5m6foHKILuid.jpg,Kxvcja1jPH0o.jpg', 'rHL4QMFlbUdO.jpg,5m6foHKILuid.jpg,Kxvcja1jPH0o.jpg', 1, NULL, NULL, 16, 21, 2, 2, 42, 1, 2, 5, 16, 4, 5, 2, NULL, '2020-06-25 03:52:18', '2020-07-04 03:26:34'),
(1023, 'TW000T614', NULL, 1895.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'FjNBazDoh8Vo.jpg,qeF9EmBEN0Kd.jpg,WPv77cMBMCGS.jpg', 'FjNBazDoh8Vo.jpg,qeF9EmBEN0Kd.jpg,WPv77cMBMCGS.jpg', 1, NULL, NULL, 16, 21, 2, 2, 42, 1, 2, 5, 22, 4, 5, 2, NULL, '2020-06-25 03:52:18', '2020-07-04 03:26:36'),
(1024, 'TW000U306', NULL, 3195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'HMiygCuX1kQC.jpg,1gJpjAv7G0JN.jpg,wtVFuaMkfE5j.jpg', 'HMiygCuX1kQC.jpg,1gJpjAv7G0JN.jpg,wtVFuaMkfE5j.jpg', 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 2, 5, 6, 8, 12, 1, NULL, '2020-06-25 03:52:18', '2020-07-04 03:26:39'),
(1025, 'TW000U307', NULL, 3495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, '0M56ti3n7yP3.jpg,N6UCF3YEoaNK.jpg,i7nrBLW22T3U.jpg', '0M56ti3n7yP3.jpg,N6UCF3YEoaNK.jpg,i7nrBLW22T3U.jpg', 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 2, 5, 4, 8, 12, 1, NULL, '2020-06-25 03:52:18', '2020-07-04 03:26:41'),
(1026, 'TW000U311', NULL, 3595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'QYgNg8xdxXJt.jpg,kZS72kyJo1y6.jpg,3UkMZiQAUP1W.jpg', 'QYgNg8xdxXJt.jpg,kZS72kyJo1y6.jpg,3UkMZiQAUP1W.jpg', 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 2, 5, 6, 10, 10, 1, '13', '2020-06-25 03:52:18', '2020-07-04 03:26:43'),
(1027, 'TW000U312', NULL, 3295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, 'rFYo2lmCJD4F.jpg,smIfaFvhhHkd.jpg,LcPipcdGdqSV.jpg', 'rFYo2lmCJD4F.jpg,smIfaFvhhHkd.jpg,LcPipcdGdqSV.jpg', 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 2, 5, 4, 10, 10, 1, '13', '2020-06-25 03:52:18', '2020-07-04 03:26:45'),
(1028, 'TW000U314', NULL, 2895.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 11, 3, 3, 1, NULL, '2020-06-25 03:52:18', '2020-06-25 03:52:18'),
(1029, 'TW000U316', NULL, 3195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 6, 8, 11, 1, NULL, '2020-06-25 03:52:18', '2020-06-25 03:52:18'),
(1030, 'TW000U318', NULL, 3295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 2, 10, 10, 1, NULL, '2020-06-25 03:52:18', '2020-06-25 03:52:18'),
(1031, 'TW000U904', NULL, 2995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 5, 4, 5, 1, '13', '2020-06-25 03:52:19', '2020-06-25 03:52:19'),
(1032, 'TW000U907', NULL, 2695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 2, 4, 5, 1, '13', '2020-06-25 03:52:19', '2020-06-25 03:52:19'),
(1033, 'TW000U909', NULL, 2595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 1, 3, 1, 1, '13', '2020-06-25 03:52:19', '2020-06-25 03:52:19'),
(1034, 'TW000U912', NULL, 2995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 2, 5, 1, 3, 2, 1, '13', '2020-06-25 03:52:19', '2020-06-25 03:52:19'),
(1035, 'TW000U915', NULL, 3595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 2, 5, 4, 3, 3, 1, '13', '2020-06-25 03:52:19', '2020-06-25 03:52:19'),
(1036, 'TW000U916', NULL, 3195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 2, 5, 6, 3, 3, 1, '13', '2020-06-25 03:52:19', '2020-06-25 03:52:19'),
(1037, 'TW000W107', NULL, 2995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 58, 1, 2, 5, 9, 4, 5, 2, NULL, '2020-06-25 03:52:19', '2020-06-25 03:52:19'),
(1038, 'TW000W214', NULL, 3695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 58, 1, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:52:19', '2020-06-25 03:52:19'),
(1039, 'TW000W215', NULL, 3695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 58, 1, 2, 5, 9, 4, 5, 2, NULL, '2020-06-25 03:52:19', '2020-06-25 03:52:19'),
(1040, 'TW000W217', NULL, 3995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 58, 1, 2, 5, 6, 4, 6, 2, NULL, '2020-06-25 03:52:20', '2020-06-25 03:52:20'),
(1041, 'TW000W905', NULL, 2395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 58, 1, 2, 5, 5, 4, 11, 1, '13', '2020-06-25 03:52:20', '2020-06-25 03:52:20'),
(1042, 'TW000X108', NULL, 2995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 58, 1, 2, 5, 1, 4, 10, 1, '13', '2020-06-25 03:52:20', '2020-06-25 03:52:20'),
(1043, 'TW000X109', NULL, 2995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 58, 1, 2, 5, 6, 4, 10, 1, '13', '2020-06-25 03:52:20', '2020-06-25 03:52:20'),
(1044, 'TW000X110', NULL, 2895.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 58, 1, 2, 5, 6, 4, 6, 1, '13', '2020-06-25 03:52:20', '2020-06-25 03:52:20'),
(1045, 'TW000X117', NULL, 3495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 58, 1, 2, 5, 6, 4, 10, 1, '13', '2020-06-25 03:52:20', '2020-06-25 03:52:20'),
(1046, 'TW000X121', NULL, 2995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 58, 1, 2, 5, 6, 4, 5, 1, '13', '2020-06-25 03:52:20', '2020-06-25 03:52:20'),
(1047, 'TW0TG5906', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 5, 4, 5, 1, '13', '2020-06-25 03:52:20', '2020-06-25 03:52:20'),
(1048, 'TW0TG6203', NULL, 2995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 6, 8, 11, 1, '13', '2020-06-25 03:52:20', '2020-06-25 03:52:20'),
(1049, 'TW0TG6204', NULL, 3595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 1, 8, 6, 1, '13', '2020-06-25 03:52:20', '2020-06-25 03:52:20'),
(1050, 'TW0TG6206', NULL, 3495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 6, 4, 5, 1, '13', '2020-06-25 03:52:21', '2020-06-25 03:52:21'),
(1051, 'TW0TG6212', NULL, 3495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 1, 2, 5, 2, 4, 10, 1, '13', '2020-06-25 03:52:21', '2020-06-25 03:52:21'),
(1052, 'TW0TG6213', NULL, 3695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 1, 2, 5, 6, 4, 6, 1, '13', '2020-06-25 03:52:21', '2020-06-25 03:52:21'),
(1053, 'TW0TG6400', NULL, 1675.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 40, 1, 2, 5, 6, 8, 11, 1, '13', '2020-06-25 03:52:21', '2020-06-25 03:52:21'),
(1054, 'TW0TG6401', NULL, 1675.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 40, 1, 2, 5, 7, 8, 11, 1, '13', '2020-06-25 03:52:21', '2020-06-25 03:52:21'),
(1055, 'TW0TG6500', NULL, 1795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 2, 5, 6, 4, 5, 1, '13', '2020-06-25 03:52:21', '2020-06-25 03:52:21'),
(1056, 'TW0TG6505', NULL, 2195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 2, 5, 6, 8, 9, 1, '13', '2020-06-25 03:52:21', '2020-06-25 03:52:21'),
(1057, 'TW0TG6509', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 35, 1, 2, 5, 6, 4, 5, 1, '13', '2020-06-25 03:52:21', '2020-06-25 03:52:21'),
(1058, 'TW0TG7501', NULL, 2495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 5, 8, 11, 1, '13', '2020-06-25 03:52:21', '2020-06-25 03:52:21'),
(1059, 'TW0TL9012', NULL, 3495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 63, 1, 2, 5, 8, 8, 6, 2, NULL, '2020-06-25 03:52:21', '2020-06-25 03:52:21'),
(1060, 'TW0TL9602', NULL, 4495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 58, 1, 2, 5, 22, 8, 9, 2, NULL, '2020-06-25 03:52:21', '2020-06-25 03:52:21'),
(1061, 'TW2P66900', NULL, 10995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 1, 2, 5, 11, 8, 9, 2, '11', '2020-06-25 03:52:21', '2020-06-25 03:52:21'),
(1062, 'TW2T34700', NULL, 5295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 66, 1, 2, 5, 5, 3, 1, 1, NULL, '2020-06-25 03:52:21', '2020-06-25 03:52:21'),
(1063, 'TW2T34800', NULL, 5695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 66, 1, 2, 5, 2, 3, 3, 1, NULL, '2020-06-25 03:52:21', '2020-06-25 03:52:21'),
(1064, 'TW2T76300', NULL, 12995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 2, 5, 2, 3, 2, 1, NULL, '2020-06-25 03:52:21', '2020-06-25 03:52:21'),
(1065, 'TW2T76400', NULL, 12995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 2, 5, 1, 3, 1, 1, NULL, '2020-06-25 03:52:21', '2020-06-25 03:52:21'),
(1066, 'TW5M22700', NULL, 2695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 77, 1, 2, 5, 1, 3, 1, 1, NULL, '2020-06-25 03:52:21', '2020-06-25 03:52:21'),
(1067, 'TWEG14701', NULL, 3995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 14, 3, 3, 1, NULL, '2020-06-25 03:52:21', '2020-06-25 03:52:21'),
(1068, 'TWEG15106', NULL, 5295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 2, 5, 2, 1, 1, 1, NULL, '2020-06-25 03:52:21', '2020-06-25 03:52:21'),
(1069, 'TWEG15109', NULL, 6595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 62, 1, 2, 5, 6, 4, 10, 1, NULL, '2020-06-25 03:52:22', '2020-06-25 03:52:22'),
(1070, 'TWEG15205', NULL, 8495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 1, 18, 1, 2, 5, 1, 8, 9, 1, NULL, '2020-06-25 03:52:22', '2020-06-25 03:52:22'),
(1071, 'TWEG15213', NULL, 7495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 1, 62, 1, 2, 5, 1, 3, 1, 1, NULL, '2020-06-25 03:52:22', '2020-06-25 03:52:22'),
(1072, 'TWEG15219', NULL, 8295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 1, 62, 1, 2, 5, 5, 3, 6, 1, NULL, '2020-06-25 03:52:22', '2020-06-25 03:52:22'),
(1073, 'TWEG15607', NULL, 6245.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 1, 62, 1, 2, 5, 6, 4, 5, 1, NULL, '2020-06-25 03:52:22', '2020-06-25 03:52:22'),
(1074, 'TWEG15608', NULL, 6245.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 1, 47, 1, 2, 5, 2, 4, 5, 1, NULL, '2020-06-25 03:52:22', '2020-06-25 03:52:22'),
(1075, 'TWEG15610', NULL, 6695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 1, 47, 1, 2, 5, 6, 4, 10, 1, NULL, '2020-06-25 03:52:22', '2020-06-25 03:52:22'),
(1076, 'TWEG15811', NULL, 8645.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 1, 47, 1, 2, 5, 1, 4, 6, 1, NULL, '2020-06-25 03:52:22', '2020-06-25 03:52:22'),
(1077, 'TWEG15812', NULL, 8645.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 1, 47, 1, 2, 5, 1, 9, 1, 1, NULL, '2020-06-25 03:52:22', '2020-06-25 03:52:22'),
(1078, 'TWEG15902', NULL, 5295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 1, 47, 1, 2, 5, 6, 4, 10, 1, NULL, '2020-06-25 03:52:22', '2020-06-25 03:52:22'),
(1079, 'TWEG16404', NULL, 5745.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 2, 5, 5, 3, 8, 1, NULL, '2020-06-25 03:52:22', '2020-06-25 03:52:22'),
(1080, 'TWEG16500', NULL, 2495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 2, 5, 2, 3, 3, 1, '13', '2020-06-25 03:52:22', '2020-06-25 03:52:22'),
(1081, 'TWEG16502', NULL, 2745.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 2, 5, 1, 3, 1, 1, '13', '2020-06-25 03:52:22', '2020-06-25 03:52:22'),
(1082, 'TWEG16503', NULL, 2495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 2, 5, 4, 3, 3, 1, '13', '2020-06-25 03:52:22', '2020-06-25 03:52:22'),
(1083, 'TWEG16504', NULL, 2695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 2, 5, 4, 3, 3, 1, '13', '2020-06-25 03:52:22', '2020-06-25 03:52:22'),
(1084, 'TWEG16516', NULL, 3495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 2, 3, 3, 1, NULL, '2020-06-25 03:52:22', '2020-06-25 03:52:22'),
(1085, 'TWEG16518', NULL, 3795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 1, 3, 3, 1, NULL, '2020-06-25 03:52:22', '2020-06-25 03:52:22'),
(1086, 'TWEG16601', NULL, 3495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 2, 5, 4, 3, 3, 1, NULL, '2020-06-25 03:52:23', '2020-06-25 03:52:23'),
(1087, 'TWEG16608', NULL, 3595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 2, 5, 14, 3, 3, 1, NULL, '2020-06-25 03:52:23', '2020-06-25 03:52:23'),
(1088, 'TWEG16800', NULL, 4295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 2, 5, 6, 3, 3, 1, NULL, '2020-06-25 03:52:23', '2020-06-25 03:52:23'),
(1089, 'TWEG16801', NULL, 4695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 2, 5, 2, 3, 3, 1, NULL, '2020-06-25 03:52:23', '2020-06-25 03:52:23'),
(1090, 'TWEG16802', NULL, 4295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 2, 5, 6, 4, 5, 1, NULL, '2020-06-25 03:52:23', '2020-06-25 03:52:23'),
(1091, 'TWEG16803', NULL, 4295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 2, 5, 2, 4, 5, 1, NULL, '2020-06-25 03:52:23', '2020-06-25 03:52:23'),
(1092, 'TWEG16805', NULL, 4495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 2, 5, 2, 4, 5, 1, NULL, '2020-06-25 03:52:23', '2020-06-25 03:52:23'),
(1093, 'TWEG16402', NULL, 5745.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 2, 5, 1, 3, 1, 1, NULL, '2020-06-25 03:52:23', '2020-06-25 03:52:23'),
(1094, 'TWEG16900', NULL, 3295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 6, 3, 3, 1, NULL, '2020-06-25 03:52:23', '2020-06-25 03:52:23'),
(1095, 'TWEG16904', NULL, 3295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 3, 4, 5, 1, '13', '2020-06-25 03:52:23', '2020-06-25 03:52:23'),
(1096, 'TWEG16906', NULL, 3495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 4, 4, 5, 1, '13', '2020-06-25 03:52:23', '2020-06-25 03:52:23'),
(1097, 'TWEG16907', NULL, 3795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 2, 5, 2, 3, 3, 1, NULL, '2020-06-25 03:52:24', '2020-06-25 03:52:24'),
(1098, 'TWEG17000', NULL, 3995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 2, 5, 2, 3, 2, 1, NULL, '2020-06-25 03:52:24', '2020-06-25 03:52:24'),
(1099, 'TWEG17001', NULL, 3995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 2, 5, 6, 3, 3, 1, NULL, '2020-06-25 03:52:24', '2020-06-25 03:52:24'),
(1100, 'TWEG17006', NULL, 4695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 2, 5, 5, 4, 5, 1, NULL, '2020-06-25 03:52:24', '2020-06-25 03:52:24'),
(1101, 'TWEG17008', NULL, 2995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 2, 5, 5, 3, 3, 1, NULL, '2020-06-25 03:52:24', '2020-06-25 03:52:24'),
(1102, 'TWEG17310', NULL, 7195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 5, 4, 5, 1, NULL, '2020-06-25 03:52:24', '2020-06-25 03:52:24'),
(1103, 'TWEG 17410', NULL, 6695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 5, 4, 5, 1, NULL, '2020-06-25 03:52:24', '2020-06-25 03:52:24'),
(1104, 'TWEG 17412', NULL, 6995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 8, 4, 6, 1, NULL, '2020-06-25 03:52:24', '2020-06-25 03:52:24'),
(1105, 'TWEG 17413', NULL, 7495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 1, 4, 1, 1, NULL, '2020-06-25 03:52:24', '2020-06-25 03:52:24'),
(1106, 'TWEG 17504', NULL, 11995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 2, 4, 6, 1, NULL, '2020-06-25 03:52:24', '2020-06-25 03:52:24'),
(1107, 'TWEG 18407', NULL, 2995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 6, 4, 5, 1, NULL, '2020-06-25 03:52:24', '2020-06-25 03:52:24'),
(1108, 'TWEG 18500', NULL, 2995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 5, 3, 1, 1, NULL, '2020-06-25 03:52:24', '2020-06-25 03:52:24'),
(1109, 'TWEG 18504', NULL, 3295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 2, 3, 1, 1, NULL, '2020-06-25 03:52:24', '2020-06-25 03:52:24'),
(1110, 'TWEG 18900', NULL, 3795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 2, 5, 6, 3, 3, 1, NULL, '2020-06-25 03:52:24', '2020-06-25 03:52:24'),
(1111, 'TWEG 18901', NULL, 3795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 2, 5, 6, 3, 3, 1, NULL, '2020-06-25 03:52:24', '2020-06-25 03:52:24'),
(1112, 'TWEG 18902', NULL, 3795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 2, 5, 1, 3, 1, 1, NULL, '2020-06-25 03:52:25', '2020-06-25 03:52:25'),
(1113, 'TWEG15217', NULL, 8295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 62, 1, 2, 5, 1, 8, 11, 1, NULL, '2020-06-25 03:52:25', '2020-06-25 03:52:25'),
(1114, 'TWEL 11300', NULL, 2495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 42, 1, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:52:25', '2020-06-25 03:52:25'),
(1115, 'TWEL 11301', NULL, 2495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 42, 1, 2, 5, 4, 4, 5, 2, NULL, '2020-06-25 03:52:25', '2020-06-25 03:52:25'),
(1116, 'TWEL 11809', NULL, 3195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 67, 1, 2, 5, 5, 3, 7, 2, NULL, '2020-06-25 03:52:25', '2020-06-25 03:52:25'),
(1117, 'TWEL 11815', NULL, 1895.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 67, 1, 2, 5, 6, 3, 8, 2, NULL, '2020-06-25 03:52:25', '2020-06-25 03:52:25'),
(1118, 'TWEL 11900', NULL, 4995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 67, 1, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:52:25', '2020-06-25 03:52:25'),
(1119, 'TWEL 11902', NULL, 4995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 67, 1, 2, 5, 2, 4, 5, 2, NULL, '2020-06-25 03:52:25', '2020-06-25 03:52:25'),
(1120, 'TWEL 11905', NULL, 5695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 67, 1, 2, 5, 9, 4, 10, 2, NULL, '2020-06-25 03:52:25', '2020-06-25 03:52:25'),
(1121, 'TWEL 12000', NULL, 5295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 70, 1, 2, 5, 6, 4, 6, 2, NULL, '2020-06-25 03:52:25', '2020-06-25 03:52:25'),
(1122, 'TWEL 12100T', NULL, 6495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 40, 1, 2, 5, 5, 4, 5, 2, NULL, '2020-06-25 03:52:25', '2020-06-25 03:52:25'),
(1123, 'TWEL 12601', NULL, 4295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 57, 1, 2, 5, 13, 3, 7, 2, NULL, '2020-06-25 03:52:25', '2020-06-25 03:52:25'),
(1124, 'TWEL 13000', NULL, 3995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 63, 1, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:52:25', '2020-06-25 03:52:25'),
(1125, 'TWEL 13103', NULL, 2195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 63, 1, 2, 5, 11, 4, 11, 2, NULL, '2020-06-25 03:52:26', '2020-06-25 03:52:26'),
(1126, 'TWEL 13107', NULL, 3795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 63, 1, 2, 5, 2, 4, 10, 2, NULL, '2020-06-25 03:52:26', '2020-06-25 03:52:26'),
(1127, 'TWEL 13109', NULL, 2695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 63, 1, 2, 5, 2, 4, 6, 2, NULL, '2020-06-25 03:52:26', '2020-06-25 03:52:26'),
(1128, 'TWEL 13110', NULL, 2795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 63, 1, 2, 5, 6, 4, 10, 2, NULL, '2020-06-25 03:52:26', '2020-06-25 03:52:26'),
(1129, 'TWEL 13111', NULL, 2795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 63, 1, 2, 5, 8, 4, 10, 2, NULL, '2020-06-25 03:52:26', '2020-06-25 03:52:26'),
(1130, 'TWEL 13200', NULL, 2795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 40, 1, 2, 5, 6, 4, 10, 2, NULL, '2020-06-25 03:52:26', '2020-06-25 03:52:26'),
(1131, 'TWEL 13203', NULL, 5495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 67, 1, 2, 5, 8, 4, 6, 2, NULL, '2020-06-25 03:52:26', '2020-06-25 03:52:26'),
(1132, 'TWEL 13204', NULL, 5495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 67, 1, 2, 5, 8, 4, 6, 2, NULL, '2020-06-25 03:52:26', '2020-06-25 03:52:26'),
(1133, 'TWEL11506', NULL, 2495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 67, 1, 2, 5, 6, 4, 11, 2, NULL, '2020-06-25 03:52:27', '2020-06-25 03:52:27'),
(1134, 'TWEL12001', NULL, 4995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 63, 1, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:52:27', '2020-06-25 03:52:27'),
(1135, 'TWEL12203T', NULL, 6495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 63, 1, 2, 5, 5, 4, 5, 2, NULL, '2020-06-25 03:52:27', '2020-06-25 03:52:27'),
(1136, 'TW00PR200', NULL, 5745.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 63, 1, 2, 5, 6, 4, 11, 2, NULL, '2020-06-25 03:52:27', '2020-06-25 03:52:27'),
(1137, 'TW00PR208', NULL, 7495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 63, 1, 2, 5, 6, 4, 11, 2, NULL, '2020-06-25 03:52:27', '2020-06-25 03:52:27'),
(1138, 'TW00PR224', NULL, 3295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 63, 1, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:52:27', '2020-06-25 03:52:27'),
(1139, 'TW00PR232', NULL, 2295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 63, 1, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:52:27', '2020-06-25 03:52:27'),
(1140, 'TW00PR237', NULL, 2995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 63, 1, 2, 5, 6, 4, 11, 2, NULL, '2020-06-25 03:52:27', '2020-06-25 03:52:27'),
(1141, '2597YM01', NULL, 2345.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 63, 3, 2, 5, 7, 4, 11, 2, NULL, '2020-06-25 03:52:27', '2020-06-25 03:52:27'),
(1142, '1767SL03', NULL, 3295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 63, 1, 2, 5, 2, 3, 1, 1, '13', '2020-06-25 03:52:27', '2020-06-25 03:52:27'),
(1143, '1768SL02', NULL, 4195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 63, 1, 2, 5, 6, 3, 1, 1, '13', '2020-06-25 03:52:27', '2020-06-25 03:52:27'),
(1144, '2471WM01', NULL, 5495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 73, 3, 2, 5, 5, 3, 6, 2, NULL, '2020-06-25 03:52:27', '2020-06-25 03:52:27'),
(1145, '2569SM04', NULL, 4495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 73, 1, 2, 5, 1, 4, 5, 2, '13', '2020-06-25 03:52:27', '2020-06-25 03:52:27'),
(1146, '2575WL01', NULL, 3995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 70, 1, 2, 5, 8, 3, 3, 2, NULL, '2020-06-25 03:52:27', '2020-06-25 03:52:27'),
(1147, '2576SM01', NULL, 3595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 74, 1, 2, 5, 16, 4, 5, 2, NULL, '2020-06-25 03:52:27', '2020-06-25 03:52:27'),
(1148, '2576WM01', NULL, 4295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 74, 1, 2, 5, 8, 4, 6, 2, NULL, '2020-06-25 03:52:27', '2020-06-25 03:52:27'),
(1149, '2588KM01', NULL, 4495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 2, 5, 5, 4, 5, 2, '13', '2020-06-25 03:52:28', '2020-06-25 03:52:28');
INSERT INTO `product_details` (`id`, `model_no`, `series`, `price`, `material`, `buckle`, `size`, `shape`, `frame_colour`, `lens`, `visible_ray`, `dimensions`, `nib`, `length_mm`, `taper`, `clasp_type`, `clasp_size`, `lock_system`, `description`, `warranty_period`, `meta_title`, `meta_description`, `meta_keyword`, `h1`, `status`, `featured_status`, `images`, `thumb_img`, `main_category_id`, `colour_id`, `clock_type_id`, `brand_id`, `collection_id`, `movement_id`, `movement_type_id`, `case_size_id`, `case_shape_id`, `case_material_id`, `glass_material_id`, `dial_colour_id`, `strap_material_id`, `strap_colour_id`, `gender_id`, `feature_id`, `created_at`, `updated_at`) VALUES
(1150, '2593BM01', NULL, 1795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 73, 1, 2, 5, 6, 4, 11, 2, NULL, '2020-06-25 03:52:28', '2020-06-25 03:52:28'),
(1151, '2610SM01', NULL, 4995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 73, 1, 2, 5, 3, 4, 5, 2, '11', '2020-06-25 03:52:28', '2020-06-25 03:52:28'),
(1152, '90100KM01', NULL, 9495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 1, 2, 5, 4, 4, 5, 2, '13', '2020-06-25 03:52:28', '2020-06-25 03:52:28'),
(1153, '90100SM01', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 1, 2, 5, 1, 4, 5, 1, '13', '2020-06-25 03:52:28', '2020-06-25 03:52:28'),
(1154, '90102WL01', NULL, 9495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 77, 1, 2, 5, 5, 3, 3, 1, NULL, '2020-06-25 03:52:28', '2020-06-25 03:52:28'),
(1155, '95003SM01', NULL, 5995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 42, 1, 2, 5, 13, 4, 5, 2, NULL, '2020-06-25 03:52:28', '2020-06-25 03:52:28'),
(1156, '95040WM01', NULL, 9295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 67, 1, 2, 5, 8, 4, 6, 2, NULL, '2020-06-25 03:52:28', '2020-06-25 03:52:28'),
(1157, '95043SM01', NULL, 10995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 74, 1, 2, 5, 13, 4, 5, 2, NULL, '2020-06-25 03:52:28', '2020-06-25 03:52:28'),
(1158, '1558BM03', NULL, 5295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 40, 1, 2, 5, 6, 4, 9, 2, NULL, '2020-06-25 03:52:28', '2020-06-25 03:52:28'),
(1159, '1627BM01', NULL, 5795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 5, 4, 9, 1, '13', '2020-06-25 03:52:28', '2020-06-25 03:52:28'),
(1160, '1636YM01', NULL, 2595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 5, 4, 11, 1, '13', '2020-06-25 03:52:28', '2020-06-25 03:52:28'),
(1161, '1639SL03', NULL, 1895.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 5, 3, 1, 1, NULL, '2020-06-25 03:52:28', '2020-06-25 03:52:28'),
(1162, '1650YM04', NULL, 2595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 66, 1, 2, 5, 11, 4, 11, 1, '13', '2020-06-25 03:52:28', '2020-06-25 03:52:28'),
(1163, '1698SL01', NULL, 4295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 66, 1, 2, 5, 6, 3, 1, 1, '13', '2020-06-25 03:52:28', '2020-06-25 03:52:28'),
(1164, '1698SL02', NULL, 4295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 1, 2, 5, 1, 3, 1, 1, NULL, '2020-06-25 03:52:29', '2020-06-25 03:52:29'),
(1165, '1715YM01', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 4, 2, 5, 5, 4, 11, 1, '11', '2020-06-25 03:52:29', '2020-06-25 03:52:29'),
(1166, '1729SM03', NULL, 2595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 1, 2, 5, 1, 4, 5, 1, NULL, '2020-06-25 03:52:29', '2020-06-25 03:52:29'),
(1167, '1733KL01', NULL, 4395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 1, 33, 1, 2, 5, 1, 3, 1, 1, '13', '2020-06-25 03:52:29', '2020-06-25 03:52:29'),
(1168, '1733NM01', NULL, 5495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 1, 61, 1, 2, 5, 1, 4, 1, 1, '13', '2020-06-25 03:52:29', '2020-06-25 03:52:29'),
(1169, '1737KM01', NULL, 3595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 1, 2, 5, 6, 4, 10, 1, '13', '2020-06-25 03:52:29', '2020-06-25 03:52:29'),
(1170, '1774YL01', NULL, 2395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 76, 1, 2, 5, 1, 3, 1, 1, '13', '2020-06-25 03:52:29', '2020-06-25 03:52:29'),
(1171, '1825YM01', NULL, 2595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 76, 1, 2, 5, 11, 4, 11, 1, '11', '2020-06-25 03:52:29', '2020-06-25 03:52:29'),
(1172, '2417YM01', NULL, 2145.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 76, 3, 2, 5, 6, 4, 11, 2, NULL, '2020-06-25 03:52:29', '2020-06-25 03:52:29'),
(1173, '2471YM02', NULL, 4995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 76, 3, 2, 5, 7, 4, 11, 2, NULL, '2020-06-25 03:52:29', '2020-06-25 03:52:29'),
(1174, '2511WM07', NULL, 5495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 76, 3, 2, 5, 16, 4, 6, 2, NULL, '2020-06-25 03:52:29', '2020-06-25 03:52:29'),
(1175, '2536SM02', NULL, 1795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 76, 3, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:52:29', '2020-06-25 03:52:29'),
(1176, '2539SM01', NULL, 6495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 57, 1, 2, 5, 13, 4, 5, 2, NULL, '2020-06-25 03:52:29', '2020-06-25 03:52:29'),
(1177, '2578WM01', NULL, 5295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 57, 1, 2, 5, 8, 4, 6, 2, NULL, '2020-06-25 03:52:29', '2020-06-25 03:52:29'),
(1178, '2588NM01', NULL, 5295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 2, 5, 1, 4, 1, 2, NULL, '2020-06-25 03:52:29', '2020-06-25 03:52:29'),
(1179, '2589NM01', NULL, 5295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 2, 5, 1, 4, 1, 2, NULL, '2020-06-25 03:52:29', '2020-06-25 03:52:29'),
(1180, '2590BM01', NULL, 4995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 2, 5, 6, 4, 9, 2, NULL, '2020-06-25 03:52:29', '2020-06-25 03:52:29'),
(1181, '2594SM01', NULL, 1745.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 75, 3, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:52:29', '2020-06-25 03:52:29'),
(1182, '2598WL01', NULL, 1745.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 73, 1, 2, 5, 8, 3, 2, 2, NULL, '2020-06-25 03:52:29', '2020-06-25 03:52:29'),
(1183, '2598YL02', NULL, 1595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 73, 1, 2, 5, 7, 3, 3, 2, NULL, '2020-06-25 03:52:29', '2020-06-25 03:52:29'),
(1184, '2604WM01', NULL, 4795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 73, 1, 2, 5, 8, 4, 6, 2, NULL, '2020-06-25 03:52:30', '2020-06-25 03:52:30'),
(1185, '2606YM01', NULL, 5195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 40, 1, 2, 5, 6, 4, 11, 2, NULL, '2020-06-25 03:52:30', '2020-06-25 03:52:30'),
(1186, '311WM01', NULL, 5995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2 years Warranty', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 40, 1, 2, 5, 6, 4, 6, 2, NULL, '2020-06-25 03:52:30', '2020-06-25 03:52:30'),
(1187, '90098WL01', NULL, 7795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 77, 1, 2, 5, 4, 3, 3, 1, NULL, '2020-06-25 03:52:30', '2020-06-25 03:52:30'),
(1188, '95003WM01', NULL, 7795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 40, 1, 2, 5, 13, 4, 6, 2, NULL, '2020-06-25 03:52:30', '2020-06-25 03:52:30'),
(1189, '95023KM01', NULL, 9495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 1, 2, 5, 6, 4, 10, 2, NULL, '2020-06-25 03:52:30', '2020-06-25 03:52:30'),
(1190, '9942WM01', NULL, 5995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 42, 1, 2, 5, 8, 4, 6, 2, NULL, '2020-06-25 03:52:30', '2020-06-25 03:52:30'),
(1191, '1043YL05', NULL, 10495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 42, 4, 2, 5, 11, 3, 1, 1, NULL, '2020-06-25 03:52:30', '2020-06-25 03:52:30'),
(1192, '1107YM08', NULL, 2995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 75, 1, 2, 5, 7, 4, 11, 1, NULL, '2020-06-25 03:52:30', '2020-06-25 03:52:30'),
(1193, '1163BM01', NULL, 4295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 5, 2, 5, 5, 4, 9, 1, '11', '2020-06-25 03:52:30', '2020-06-25 03:52:30'),
(1194, '1163YM01', NULL, 4295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 5, 2, 5, 5, 4, 11, 1, '11', '2020-06-25 03:52:30', '2020-06-25 03:52:30'),
(1195, '1163YM02', NULL, 4795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 5, 2, 5, 14, 4, 11, 1, '11', '2020-06-25 03:52:30', '2020-06-25 03:52:30'),
(1196, '1163YM03', NULL, 4995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 5, 2, 5, 1, 4, 11, 1, '11', '2020-06-25 03:52:30', '2020-06-25 03:52:30'),
(1198, '1445YL04', NULL, 1945.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 57, 1, 2, 5, 5, 3, 1, 1, NULL, '2020-06-25 03:52:30', '2020-06-25 03:52:30'),
(1199, '1489KL02', NULL, 6795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 57, 1, 2, 5, 4, 3, 3, 1, NULL, '2020-06-25 03:52:30', '2020-06-25 03:52:30'),
(1200, '1494SM01', NULL, 4095.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 35, 1, 2, 5, 6, 4, 5, 1, '11', '2020-06-25 03:52:30', '2020-06-25 03:52:30'),
(1201, '1521yl08', NULL, 4995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 35, 1, 2, 5, 11, 4, 3, 1, '13', '2020-06-25 03:52:31', '2020-06-25 03:52:31'),
(1202, '1535WL03', NULL, 8295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 1, 2, 5, 5, 3, 3, 1, '13', '2020-06-25 03:52:31', '2020-06-25 03:52:31'),
(1203, '1578BM02', NULL, 2395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 1, 2, 5, 6, 4, 9, 1, NULL, '2020-06-25 03:52:31', '2020-06-25 03:52:31'),
(1205, '1578YL04', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 1, 2, 5, 5, 3, 1, 1, NULL, '2020-06-25 03:52:31', '2020-06-25 03:52:31'),
(1206, '1578YM05', NULL, 2495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 1, 2, 5, 7, 4, 11, 1, NULL, '2020-06-25 03:52:31', '2020-06-25 03:52:31'),
(1207, '15802490YM02', NULL, 5495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 1, 2, 5, 7, 4, 11, 1, NULL, '2020-06-25 03:52:31', '2020-06-25 03:52:31'),
(1208, '1580SM01', NULL, 1945.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 1, 2, 5, 6, 4, 5, 1, NULL, '2020-06-25 03:52:31', '2020-06-25 03:52:31'),
(1209, '1580SM03', NULL, 2295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 1, 2, 5, 6, 4, 5, 1, NULL, '2020-06-25 03:52:31', '2020-06-25 03:52:31'),
(1210, '1580YL05', NULL, 2395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 1, 2, 5, 11, 3, 3, 1, NULL, '2020-06-25 03:52:32', '2020-06-25 03:52:32'),
(1211, '1580YM04', NULL, 2695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 1, 2, 5, 7, 4, 11, 1, NULL, '2020-06-25 03:52:32', '2020-06-25 03:52:32'),
(1212, '1581SM03', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 75, 1, 2, 5, 6, 4, 5, 1, '13', '2020-06-25 03:52:32', '2020-06-25 03:52:32'),
(1213, '1581YM05', NULL, 2495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 75, 1, 2, 5, 7, 4, 11, 1, '13', '2020-06-25 03:52:32', '2020-06-25 03:52:32'),
(1214, '1584SM03', NULL, 2895.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 6, 4, 5, 1, '11', '2020-06-25 03:52:32', '2020-06-25 03:52:32'),
(1215, '1584SM04', NULL, 2895.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 1, 4, 5, 1, '11', '2020-06-25 03:52:32', '2020-06-25 03:52:32'),
(1216, '1584YM02', NULL, 3495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 2, 5, 6, 4, 11, 1, '13', '2020-06-25 03:52:32', '2020-06-25 03:52:32'),
(1217, '1585SL08', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 2, 5, 1, 3, 1, 1, NULL, '2020-06-25 03:52:32', '2020-06-25 03:52:32'),
(1218, '1585SM02', NULL, 2795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 2, 5, 1, 4, 5, 1, NULL, '2020-06-25 03:52:32', '2020-06-25 03:52:32'),
(1219, '1585SM04', NULL, 2595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 2, 5, 6, 4, 5, 1, NULL, '2020-06-25 03:52:32', '2020-06-25 03:52:32'),
(1220, '1585sm05', NULL, 2495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 2, 5, 2, 4, 5, 1, NULL, '2020-06-25 03:52:32', '2020-06-25 03:52:32'),
(1221, '1585SM06', NULL, 2895.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 2, 5, 6, 4, 5, 1, '11', '2020-06-25 03:52:32', '2020-06-25 03:52:32'),
(1222, '1595SL03', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 2, 5, 6, 3, 3, 1, NULL, '2020-06-25 03:52:32', '2020-06-25 03:52:32'),
(1223, '1595WL01', NULL, 11495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 2, 5, 6, 3, 1, 1, NULL, '2020-06-25 03:52:32', '2020-06-25 03:52:32'),
(1224, '1595WL09', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 2, 5, 3, 3, 1, 1, NULL, '2020-06-25 03:52:32', '2020-06-25 03:52:32'),
(1225, '1634SL03', NULL, 5595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 1, 62, 1, 2, 5, 3, 3, 3, 1, NULL, '2020-06-25 03:52:33', '2020-06-25 03:52:33'),
(1226, '1636sm01', NULL, 2295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 1, 4, 5, 1, NULL, '2020-06-25 03:52:33', '2020-06-25 03:52:33'),
(1227, '1636YL01', NULL, 1650.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 1, 2, 5, 6, 3, 1, 1, NULL, '2020-06-25 03:52:33', '2020-06-25 03:52:33'),
(1228, '1636ym01', NULL, 2595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 1, 2, 5, 5, 4, 11, 1, '13', '2020-06-25 03:52:33', '2020-06-25 03:52:33'),
(1229, '1638SM01', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 1, 2, 5, 6, 4, 5, 1, '13', '2020-06-25 03:52:33', '2020-06-25 03:52:33'),
(1230, '1638YM01', NULL, 2595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 1, 2, 5, 6, 4, 11, 1, '13', '2020-06-25 03:52:33', '2020-06-25 03:52:33'),
(1231, '1639SM01', NULL, 1945.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 6, 4, 5, 1, NULL, '2020-06-25 03:52:33', '2020-06-25 03:52:33'),
(1232, '1639SM02', NULL, 1945.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 1, 4, 5, 1, NULL, '2020-06-25 03:52:33', '2020-06-25 03:52:33'),
(1233, '1639SM03', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 1, 4, 5, 1, NULL, '2020-06-25 03:52:33', '2020-06-25 03:52:33'),
(1234, '1644YM03', NULL, 2295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 35, 1, 2, 5, 11, 4, 11, 1, '13', '2020-06-25 03:52:33', '2020-06-25 03:52:33'),
(1235, '1647YM02', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 1, 2, 5, 7, 4, 11, 1, NULL, '2020-06-25 03:52:33', '2020-06-25 03:52:33'),
(1236, '1648YM02', NULL, 1695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 42, 1, 2, 5, 7, 4, 11, 1, NULL, '2020-06-25 03:52:33', '2020-06-25 03:52:33'),
(1237, '1648YM04', NULL, 2095.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 42, 1, 2, 5, 6, 4, 11, 1, '13', '2020-06-25 03:52:33', '2020-06-25 03:52:33'),
(1238, '1650BM01', NULL, 2795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 1, 2, 5, 5, 4, 9, 1, '13', '2020-06-25 03:52:33', '2020-06-25 03:52:33'),
(1239, '1650SM01', NULL, 2595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 6, 4, 5, 1, '13', '2020-06-25 03:52:34', '2020-06-25 03:52:34'),
(1240, '1650YM03', NULL, 2595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 5, 4, 11, 1, '13', '2020-06-25 03:52:34', '2020-06-25 03:52:34'),
(1241, '1650YM05', NULL, 2995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 5, 4, 11, 1, '13', '2020-06-25 03:52:34', '2020-06-25 03:52:34'),
(1242, '1663KL02', NULL, 12995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 5, 3, 1, 1, '11', '2020-06-25 03:52:34', '2020-06-25 03:52:34'),
(1243, '1688KM02', NULL, 12995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 5, 4, 9, 1, '13', '2020-06-25 03:52:34', '2020-06-25 03:52:34'),
(1244, '1696NC01', NULL, 24995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 38, 1, 9, 2, 1, 9, 1, 1, NULL, '2020-06-25 03:52:34', '2020-06-25 03:52:34'),
(1245, '1697SM01', NULL, 2995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 1, 2, 5, 6, 4, 5, 1, '11', '2020-06-25 03:52:34', '2020-06-25 03:52:34'),
(1246, '1698BM01', NULL, 5495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 35, 1, 2, 5, 6, 4, 9, 1, NULL, '2020-06-25 03:52:34', '2020-06-25 03:52:34'),
(1247, '1698SM02', NULL, 4795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 2, 4, 5, 1, NULL, '2020-06-25 03:52:34', '2020-06-25 03:52:34'),
(1248, '1698WL01', NULL, 4795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 83, 1, 2, 5, 3, 3, 1, 1, NULL, '2020-06-25 03:52:34', '2020-06-25 03:52:34'),
(1249, '1713YM03', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 11, 4, 11, 1, '11', '2020-06-25 03:52:34', '2020-06-25 03:52:34'),
(1250, '1715YM02', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 1, 2, 5, 11, 4, 11, 1, '11', '2020-06-25 03:52:34', '2020-06-25 03:52:34'),
(1251, '1721KM01', NULL, 6795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 1, 2, 5, 2, 4, 10, 1, NULL, '2020-06-25 03:52:34', '2020-06-25 03:52:34'),
(1252, '1730SL01', NULL, 2495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 6, 3, 1, 1, '11', '2020-06-25 03:52:34', '2020-06-25 03:52:34'),
(1253, '1730SL02', NULL, 2495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 1, 3, 3, 1, '11', '2020-06-25 03:52:34', '2020-06-25 03:52:34'),
(1254, '1730SM02', NULL, 2995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 66, 1, 2, 5, 1, 4, 5, 1, '11', '2020-06-25 03:52:34', '2020-06-25 03:52:34'),
(1255, '1731SM01', NULL, 3195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 2, 5, 6, 4, 5, 1, '11', '2020-06-25 03:52:34', '2020-06-25 03:52:34'),
(1256, '17332570KM01', NULL, 10995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 1, 2, 5, 6, 4, 10, 1, NULL, '2020-06-25 03:52:35', '2020-06-25 03:52:35'),
(1257, '1733BM01', NULL, 5495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 1, 2, 5, 6, 4, 9, 1, NULL, '2020-06-25 03:52:35', '2020-06-25 03:52:35'),
(1258, '1733KL02', NULL, 4395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 2, 5, 6, 3, 3, 1, NULL, '2020-06-25 03:52:35', '2020-06-25 03:52:35'),
(1259, '1733KL03', NULL, 4995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 33, 1, 2, 5, 1, 3, 3, 1, NULL, '2020-06-25 03:52:35', '2020-06-25 03:52:35'),
(1260, '1734BM01', NULL, 5995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 1, 2, 5, 3, 4, 5, 1, '13', '2020-06-25 03:52:35', '2020-06-25 03:52:35'),
(1261, '1734KM02', NULL, 5795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 1, 2, 5, 6, 4, 10, 1, NULL, '2020-06-25 03:52:35', '2020-06-25 03:52:35'),
(1262, '1734KM03', NULL, 5095.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 1, 2, 5, 4, 4, 5, 1, NULL, '2020-06-25 03:52:35', '2020-06-25 03:52:35'),
(1263, '1734SL01', NULL, 4495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 1, 2, 5, 6, 3, 1, 1, NULL, '2020-06-25 03:52:35', '2020-06-25 03:52:35'),
(1264, '1734SL02', NULL, 4495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 1, 2, 5, 1, 3, 1, 1, NULL, '2020-06-25 03:52:35', '2020-06-25 03:52:35'),
(1265, '1734WL01', NULL, 4995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 1, 2, 5, 4, 3, 1, 1, NULL, '2020-06-25 03:52:35', '2020-06-25 03:52:35'),
(1266, '1735BM01', NULL, 2495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 66, 1, 2, 5, 11, 4, 9, 1, NULL, '2020-06-25 03:52:35', '2020-06-25 03:52:35'),
(1267, '1735YM01', NULL, 2295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 66, 1, 2, 5, 5, 4, 11, 1, NULL, '2020-06-25 03:52:35', '2020-06-25 03:52:35'),
(1268, '1768KM01', NULL, 5295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 66, 1, 2, 5, 1, 4, 10, 1, NULL, '2020-06-25 03:52:35', '2020-06-25 03:52:35'),
(1269, '1768SL04', NULL, 4395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 66, 1, 2, 5, 1, 3, 3, 1, NULL, '2020-06-25 03:52:35', '2020-06-25 03:52:35'),
(1270, '1769SM02', NULL, 4495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 66, 1, 2, 5, 6, 4, 5, 1, NULL, '2020-06-25 03:52:35', '2020-06-25 03:52:35'),
(1271, '1775SL01', NULL, 2195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 66, 1, 2, 5, 6, 3, 3, 1, NULL, '2020-06-25 03:52:35', '2020-06-25 03:52:35'),
(1272, '1802NL01', NULL, 2795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 1, 2, 5, 1, 3, 3, 1, NULL, '2020-06-25 03:52:35', '2020-06-25 03:52:35'),
(1273, '1802SL01', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 1, 2, 5, 6, 3, 3, 1, NULL, '2020-06-25 03:52:36', '2020-06-25 03:52:36'),
(1274, '1802SL03', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 1, 2, 5, 11, 3, 1, 1, NULL, '2020-06-25 03:52:36', '2020-06-25 03:52:36'),
(1275, '1806SL03', NULL, 3295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 1, 2, 5, 6, 3, 1, 1, NULL, '2020-06-25 03:52:36', '2020-06-25 03:52:36'),
(1276, '1824KM01', NULL, 3895.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 1, 2, 5, 4, 4, 10, 1, NULL, '2020-06-25 03:52:36', '2020-06-25 03:52:36'),
(1277, '1824WL01', NULL, 2995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 1, 2, 5, 4, 3, 3, 1, NULL, '2020-06-25 03:52:36', '2020-06-25 03:52:36'),
(1278, '2131BM01', NULL, 2995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 1, 2, 5, 5, 4, 9, 2, NULL, '2020-06-25 03:52:36', '2020-06-25 03:52:36'),
(1280, '2417YM02', NULL, 2245.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 3, 2, 5, 11, 4, 11, 2, NULL, '2020-06-25 03:52:36', '2020-06-25 03:52:36'),
(1281, '2419BM01', NULL, 2495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 3, 2, 5, 5, 4, 11, 2, NULL, '2020-06-25 03:52:36', '2020-06-25 03:52:36'),
(1282, '2444BM04', NULL, 5295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 1, 2, 5, 7, 4, 9, 2, NULL, '2020-06-25 03:52:36', '2020-06-25 03:52:36'),
(1284, '2455SM01', NULL, 3195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 3, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:52:36', '2020-06-25 03:52:36'),
(1285, '2455YM01', NULL, 3595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 3, 2, 5, 7, 4, 11, 2, NULL, '2020-06-25 03:52:36', '2020-06-25 03:52:36'),
(1286, '2455YM02', NULL, 3795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 3, 2, 5, 7, 4, 11, 2, NULL, '2020-06-25 03:52:36', '2020-06-25 03:52:36'),
(1287, '2457SM01', NULL, 3595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 3, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:52:36', '2020-06-25 03:52:36'),
(1288, '2457YM03', NULL, 3995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 3, 2, 5, 6, 4, 11, 2, NULL, '2020-06-25 03:52:36', '2020-06-25 03:52:36'),
(1290, '2467SM02', NULL, 2995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 1, 2, 5, 1, 4, 5, 2, NULL, '2020-06-25 03:52:37', '2020-06-25 03:52:37'),
(1291, '2468YM02', NULL, 2595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 3, 2, 5, 11, 4, 11, 2, NULL, '2020-06-25 03:52:37', '2020-06-25 03:52:37'),
(1292, '2468YM04', NULL, 3295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 3, 2, 5, 5, 4, 11, 2, NULL, '2020-06-25 03:52:37', '2020-06-25 03:52:37'),
(1293, '2468YM05', NULL, 3095.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 3, 2, 5, 7, 4, 11, 2, NULL, '2020-06-25 03:52:37', '2020-06-25 03:52:37'),
(1294, '2471YM02', NULL, 4495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 3, 2, 5, 7, 4, 11, 2, NULL, '2020-06-25 03:52:37', '2020-06-25 03:52:37'),
(1295, '2480BM02', NULL, 3395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 30, 1, 2, 5, 6, 4, 9, 2, NULL, '2020-06-25 03:52:37', '2020-06-25 03:52:37'),
(1296, '2480KM01', NULL, 2795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 30, 1, 2, 5, 8, 4, 5, 2, NULL, '2020-06-25 03:52:37', '2020-06-25 03:52:37'),
(1297, '2480SM02', NULL, 2795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 30, 1, 2, 5, 1, 4, 5, 2, NULL, '2020-06-25 03:52:37', '2020-06-25 03:52:37'),
(1298, '2480SM07', NULL, 2695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 30, 1, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:52:37', '2020-06-25 03:52:37'),
(1299, '2480SM08', NULL, 2695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 30, 1, 2, 5, 1, 4, 5, 2, NULL, '2020-06-25 03:52:37', '2020-06-25 03:52:37'),
(1300, '2480WM03', NULL, 3995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 30, 1, 2, 5, 16, 4, 6, 2, NULL, '2020-06-25 03:52:37', '2020-06-25 03:52:37'),
(1301, '2481SL02', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 58, 1, 2, 5, 6, 3, 1, 2, NULL, '2020-06-25 03:52:37', '2020-06-25 03:52:37'),
(1302, '2482SM01', NULL, 2495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 58, 1, 2, 5, 22, 4, 5, 2, NULL, '2020-06-25 03:52:37', '2020-06-25 03:52:37'),
(1303, '2482SM02', NULL, 2795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 58, 1, 2, 5, 1, 4, 5, 2, NULL, '2020-06-25 03:52:38', '2020-06-25 03:52:38'),
(1304, '2484SL01', NULL, 2655.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 58, 1, 2, 5, 5, 3, 8, 2, NULL, '2020-06-25 03:52:38', '2020-06-25 03:52:38'),
(1306, '2486SM02', NULL, 3695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 42, 1, 2, 5, 1, 4, 5, 2, NULL, '2020-06-25 03:52:38', '2020-06-25 03:52:38'),
(1307, '2511YM04', NULL, 4325.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 73, 3, 2, 5, 7, 4, 11, 2, NULL, '2020-06-25 03:52:38', '2020-06-25 03:52:38'),
(1308, '2521BM01', NULL, 2095.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 73, 1, 2, 5, 6, 4, 9, 2, NULL, '2020-06-25 03:52:38', '2020-06-25 03:52:38'),
(1309, '2527SM02', NULL, 3695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 44, 3, 2, 5, 16, 4, 5, 2, NULL, '2020-06-25 03:52:38', '2020-06-25 03:52:38'),
(1310, '2527WM01', NULL, 4695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 40, 3, 2, 5, 6, 4, 6, 2, NULL, '2020-06-25 03:52:38', '2020-06-25 03:52:38'),
(1311, '2536BM02', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 40, 3, 2, 5, 5, 4, 9, 2, NULL, '2020-06-25 03:52:38', '2020-06-25 03:52:38'),
(1312, '2544YM01', NULL, 4495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 40, 3, 2, 5, 11, 4, 11, 2, NULL, '2020-06-25 03:52:38', '2020-06-25 03:52:38'),
(1313, '2553WM01', NULL, 5095.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 40, 1, 2, 5, 13, 4, 6, 2, NULL, '2020-06-25 03:52:38', '2020-06-25 03:52:38'),
(1314, '2553WM02', NULL, 4795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 73, 1, 2, 5, 14, 4, 6, 2, NULL, '2020-06-25 03:52:38', '2020-06-25 03:52:38'),
(1315, '2554SL01', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 68, 1, 2, 5, 4, 3, 3, 2, NULL, '2020-06-25 03:52:38', '2020-06-25 03:52:38'),
(1316, '2558SM02', NULL, 3095.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 40, 1, 2, 5, 4, 4, 5, 2, '11', '2020-06-25 03:52:38', '2020-06-25 03:52:38'),
(1317, '2567YM01', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 40, 1, 2, 5, 13, 4, 11, 2, NULL, '2020-06-25 03:52:38', '2020-06-25 03:52:38'),
(1318, '2569KM01', NULL, 4995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 40, 1, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:52:39', '2020-06-25 03:52:39'),
(1319, '2569KM03', NULL, 5095.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 40, 1, 2, 5, 1, 4, 10, 2, NULL, '2020-06-25 03:52:39', '2020-06-25 03:52:39'),
(1320, '2569SM03', NULL, 4795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 40, 1, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:52:39', '2020-06-25 03:52:39'),
(1321, '2569WM02', NULL, 5295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 40, 1, 2, 5, 6, 4, 6, 2, NULL, '2020-06-25 03:52:39', '2020-06-25 03:52:39'),
(1322, '2570KM01', NULL, 4995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 1, 2, 5, 8, 4, 10, 2, NULL, '2020-06-25 03:52:39', '2020-06-25 03:52:39'),
(1323, '2570NM01', NULL, 5495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 1, 2, 5, 1, 4, 1, 2, NULL, '2020-06-25 03:52:39', '2020-06-25 03:52:39'),
(1324, '2570SM01', NULL, 4495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 68, 1, 2, 5, 2, 4, 5, 2, NULL, '2020-06-25 03:52:39', '2020-06-25 03:52:39'),
(1325, '2570SM02', NULL, 4395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 68, 1, 2, 5, 1, 4, 5, 2, NULL, '2020-06-25 03:52:39', '2020-06-25 03:52:39'),
(1326, '2572SL01', NULL, 1795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 44, 1, 2, 5, 1, 3, 1, 2, NULL, '2020-06-25 03:52:39', '2020-06-25 03:52:39'),
(1327, '2576YM01', NULL, 3995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 74, 1, 2, 5, 14, 4, 11, 2, NULL, '2020-06-25 03:52:39', '2020-06-25 03:52:39'),
(1328, '2578SM01', NULL, 4395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 45, 1, 2, 5, 2, 4, 5, 2, NULL, '2020-06-25 03:52:39', '2020-06-25 03:52:39'),
(1329, '2578WM02', NULL, 4995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 45, 1, 2, 5, 2, 4, 6, 2, NULL, '2020-06-25 03:52:39', '2020-06-25 03:52:39'),
(1330, '2578YM01', NULL, 4995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 45, 1, 2, 5, 11, 4, 11, 2, NULL, '2020-06-25 03:52:39', '2020-06-25 03:52:39');
INSERT INTO `product_details` (`id`, `model_no`, `series`, `price`, `material`, `buckle`, `size`, `shape`, `frame_colour`, `lens`, `visible_ray`, `dimensions`, `nib`, `length_mm`, `taper`, `clasp_type`, `clasp_size`, `lock_system`, `description`, `warranty_period`, `meta_title`, `meta_description`, `meta_keyword`, `h1`, `status`, `featured_status`, `images`, `thumb_img`, `main_category_id`, `colour_id`, `clock_type_id`, `brand_id`, `collection_id`, `movement_id`, `movement_type_id`, `case_size_id`, `case_shape_id`, `case_material_id`, `glass_material_id`, `dial_colour_id`, `strap_material_id`, `strap_colour_id`, `gender_id`, `feature_id`, `created_at`, `updated_at`) VALUES
(1331, '2579SM01', NULL, 3395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 45, 1, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:52:39', '2020-06-25 03:52:39'),
(1332, '2579YL01', NULL, 3195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 45, 1, 2, 5, 6, 3, 3, 2, NULL, '2020-06-25 03:52:40', '2020-06-25 03:52:40'),
(1333, '2593YL01', NULL, 1595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 73, 1, 2, 5, 11, 3, 3, 2, NULL, '2020-06-25 03:52:40', '2020-06-25 03:52:40'),
(1334, '2594BM01', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 40, 1, 2, 5, 6, 4, 9, 2, NULL, '2020-06-25 03:52:40', '2020-06-25 03:52:40'),
(1335, '2597BM01', NULL, 2345.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 40, 3, 2, 5, 6, 4, 9, 2, NULL, '2020-06-25 03:52:40', '2020-06-25 03:52:40'),
(1336, '2597SM01', NULL, 2045.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 40, 3, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:52:40', '2020-06-25 03:52:40'),
(1337, '2598SL01', NULL, 1495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 73, 1, 2, 5, 1, 3, 1, 2, NULL, '2020-06-25 03:52:40', '2020-06-25 03:52:40'),
(1338, '2599SL01', NULL, 1795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 73, 3, 2, 5, 2, 3, 1, 2, NULL, '2020-06-25 03:52:40', '2020-06-25 03:52:40'),
(1339, '2604YM01', NULL, 4495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 73, 3, 2, 5, 11, 4, 11, 2, NULL, '2020-06-25 03:52:40', '2020-06-25 03:52:40'),
(1340, '2606WM05', NULL, 3795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 40, 1, 2, 5, 8, 4, 6, 2, NULL, '2020-06-25 03:52:40', '2020-06-25 03:52:40'),
(1341, '2606YM04', NULL, 3495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 40, 1, 2, 5, 6, 4, 11, 2, NULL, '2020-06-25 03:52:40', '2020-06-25 03:52:40'),
(1342, '2628BM01', NULL, 2395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 74, 1, 2, 5, 6, 4, 9, 2, NULL, '2020-06-25 03:52:40', '2020-06-25 03:52:40'),
(1343, '390YM06', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 44, 1, 2, 5, 5, 4, 11, 1, NULL, '2020-06-25 03:52:40', '2020-06-25 03:52:40'),
(1344, '679WL01', NULL, 9995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 5, 3, 1, 1, NULL, '2020-06-25 03:52:41', '2020-06-25 03:52:41'),
(1345, '90026SL02', NULL, 6495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 2, 5, 1, 3, 1, 1, NULL, '2020-06-25 03:52:41', '2020-06-25 03:52:41'),
(1346, '90042NM01', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 2, 5, 1, 4, 1, 1, NULL, '2020-06-25 03:52:41', '2020-06-25 03:52:41'),
(1347, '90050NL01', NULL, 9795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 2, 5, 1, 3, 3, 1, NULL, '2020-06-25 03:52:41', '2020-06-25 03:52:41'),
(1348, '90083NL01', NULL, 5995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 76, 4, 2, 5, 1, 3, 3, 1, NULL, '2020-06-25 03:52:41', '2020-06-25 03:52:41'),
(1349, '90105KM02', NULL, 7795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 1, 2, 5, 6, 4, 5, 1, NULL, '2020-06-25 03:52:41', '2020-06-25 03:52:41'),
(1350, '90110WL01', NULL, 13995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 61, 1, 2, 5, 2, 3, 3, 1, NULL, '2020-06-25 03:52:41', '2020-06-25 03:52:41'),
(1351, '90111SL01', NULL, 12495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 76, 1, 2, 5, 6, 3, 1, 1, NULL, '2020-06-25 03:52:41', '2020-06-25 03:52:41'),
(1352, '9151BM01', NULL, 2095.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 4, 2, 5, 5, 4, 9, 1, NULL, '2020-06-25 03:52:41', '2020-06-25 03:52:41'),
(1353, '9151SM01', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 4, 2, 5, 5, 4, 5, 1, NULL, '2020-06-25 03:52:41', '2020-06-25 03:52:41'),
(1354, '9151SM02', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 4, 2, 5, 1, 4, 5, 1, NULL, '2020-06-25 03:52:41', '2020-06-25 03:52:41'),
(1355, '9151YM01', NULL, 2595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 4, 2, 5, 5, 4, 11, 1, NULL, '2020-06-25 03:52:41', '2020-06-25 03:52:41'),
(1356, '9151ym05', NULL, 2595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 57, 4, 2, 5, 1, 4, 11, 1, NULL, '2020-06-25 03:52:41', '2020-06-25 03:52:41'),
(1357, '9154YM05', NULL, 2395.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 57, 4, 2, 5, 1, 4, 11, 1, NULL, '2020-06-25 03:52:42', '2020-06-25 03:52:42'),
(1358, '917BM01', NULL, 1945.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 57, 1, 2, 5, 5, 4, 9, 2, '11', '2020-06-25 03:52:42', '2020-06-25 03:52:42'),
(1359, '9264SM01', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 63, 4, 2, 5, 5, 4, 5, 1, '11', '2020-06-25 03:52:42', '2020-06-25 03:52:42'),
(1360, '9264SM02', NULL, 1945.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 63, 4, 2, 5, 1, 4, 5, 1, '11', '2020-06-25 03:52:42', '2020-06-25 03:52:42'),
(1361, '9264YM02', NULL, 2595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 63, 4, 2, 5, 7, 4, 11, 1, '11', '2020-06-25 03:52:42', '2020-06-25 03:52:42'),
(1362, '9308BM01', NULL, 9495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 1, 47, 1, 2, 5, 5, 4, 9, 1, '61', '2020-06-25 03:52:42', '2020-06-25 03:52:42'),
(1363, '9315BM02', NULL, 3195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 2, 2, 5, 1, 4, 9, 1, '11', '2020-06-25 03:52:42', '2020-06-25 03:52:42'),
(1364, '9315YM01', NULL, 2795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 2, 2, 5, 5, 4, 11, 1, '11', '2020-06-25 03:52:42', '2020-06-25 03:52:42'),
(1365, '9315YM03', NULL, 2795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 2, 2, 5, 1, 4, 11, 1, '11', '2020-06-25 03:52:42', '2020-06-25 03:52:42'),
(1366, '9317YM02', NULL, 2595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 35, 2, 2, 5, 11, 4, 11, 1, '11', '2020-06-25 03:52:42', '2020-06-25 03:52:42'),
(1367, '9322WL01', NULL, 7295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 1, 34, 1, 2, 5, 6, 3, 1, 1, '61', '2020-06-25 03:52:42', '2020-06-25 03:52:42'),
(1368, '9324BM01', NULL, 7795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 1, 33, 1, 2, 5, 6, 4, 9, 1, '61', '2020-06-25 03:52:42', '2020-06-25 03:52:42'),
(1369, '9407SH02', NULL, 5900.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 2, 2, 5, 1, 4, 9, 1, NULL, '2020-06-25 03:52:42', '2020-06-25 03:52:42'),
(1370, '9439BM01', NULL, 4495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 54, 1, 2, 5, 5, 4, 9, 1, NULL, '2020-06-25 03:52:42', '2020-06-25 03:52:42'),
(1371, '9441NM01', NULL, 5995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 64, 1, 2, 5, 1, 4, 9, 1, NULL, '2020-06-25 03:52:42', '2020-06-25 03:52:42'),
(1372, '9473AP04', NULL, 4995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 35, 1, 2, 5, 1, 4, 13, 1, NULL, '2020-06-25 03:52:42', '2020-06-25 03:52:42'),
(1373, '9476SL02', NULL, 6495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 35, 1, 2, 5, 6, 3, 3, 1, '11', '2020-06-25 03:52:43', '2020-06-25 03:52:43'),
(1374, '9476SL05', NULL, 6495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 35, 1, 2, 5, 3, 3, 3, 1, '11', '2020-06-25 03:52:43', '2020-06-25 03:52:43'),
(1375, '9477NL01', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 1, 64, 1, 2, 5, 1, 3, 1, 1, '61', '2020-06-25 03:52:43', '2020-06-25 03:52:43'),
(1376, '9477SL01', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 1, 64, 1, 2, 5, 1, 3, 3, 1, '61', '2020-06-25 03:52:43', '2020-06-25 03:52:43'),
(1377, '9478QF01', NULL, 5995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 1, 66, 1, 2, 5, 1, 3, 1, 1, NULL, '2020-06-25 03:52:43', '2020-06-25 03:52:43'),
(1378, '9478QF02', NULL, 7495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 1, 66, 1, 2, 5, 4, 3, 3, 1, NULL, '2020-06-25 03:52:43', '2020-06-25 03:52:43'),
(1381, '95011YM01', NULL, 12995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 47, 1, 2, 5, 13, 4, 11, 2, NULL, '2020-06-25 03:52:43', '2020-06-25 03:52:43'),
(1382, '95025SL01', NULL, 5995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 73, 3, 2, 5, 22, 3, 23, 2, NULL, '2020-06-25 03:52:43', '2020-06-25 03:52:43'),
(1383, '95025SL02', NULL, 5995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 73, 3, 2, 5, 22, 3, 23, 2, NULL, '2020-06-25 03:52:43', '2020-06-25 03:52:43'),
(1384, '95025SL03', NULL, 5995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 73, 3, 2, 5, 22, 3, 23, 2, NULL, '2020-06-25 03:52:44', '2020-06-25 03:52:44'),
(1385, '95027SM03', NULL, 8995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 58, 1, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:52:44', '2020-06-25 03:52:44'),
(1386, '95029YM01', NULL, 14495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 58, 1, 2, 5, 13, 4, 11, 2, NULL, '2020-06-25 03:52:44', '2020-06-25 03:52:44'),
(1387, '95037YM01', NULL, 6495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 42, 1, 2, 5, 13, 4, 11, 2, NULL, '2020-06-25 03:52:44', '2020-06-25 03:52:44'),
(1388, '95087KM02', NULL, 5995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 58, 1, 2, 5, 22, 4, 10, 2, NULL, '2020-06-25 03:52:44', '2020-06-25 03:52:44'),
(1390, '9710YM01', NULL, 6995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 58, 1, 2, 5, 6, 4, 11, 2, NULL, '2020-06-25 03:52:44', '2020-06-25 03:52:44'),
(1391, '9716KM01', NULL, 5495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 58, 1, 2, 5, 6, 4, 10, 2, NULL, '2020-06-25 03:52:44', '2020-06-25 03:52:44'),
(1392, '9716WM01', NULL, 5495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 58, 1, 2, 5, 8, 4, 6, 2, NULL, '2020-06-25 03:52:44', '2020-06-25 03:52:44'),
(1393, '9717YM01', NULL, 4094.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 58, 3, 2, 5, 5, 4, 11, 2, NULL, '2020-06-25 03:52:44', '2020-06-25 03:52:44'),
(1394, '9720YM02', NULL, 5995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 73, 3, 2, 5, 5, 4, 11, 2, NULL, '2020-06-25 03:52:44', '2020-06-25 03:52:44'),
(1395, '9742YL01', NULL, 3995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 30, 3, 2, 5, 5, 3, 7, 2, NULL, '2020-06-25 03:52:44', '2020-06-25 03:52:44'),
(1396, '9743BM01', NULL, 8495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 63, 1, 2, 5, 6, 4, 9, 1, NULL, '2020-06-25 03:52:44', '2020-06-25 03:52:44'),
(1397, '9743SM02', NULL, 7995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 68, 1, 2, 5, 1, 4, 5, 2, NULL, '2020-06-25 03:52:44', '2020-06-25 03:52:44'),
(1398, '9798SM02', NULL, 6495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 68, 1, 2, 5, 13, 4, 5, 2, NULL, '2020-06-25 03:52:44', '2020-06-25 03:52:44'),
(1399, '9851YM01', NULL, 6995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 68, 5, 2, 5, 5, 4, 11, 2, NULL, '2020-06-25 03:52:44', '2020-06-25 03:52:44'),
(1400, '9929SL01', NULL, 6795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 73, 1, 2, 5, 13, 3, 23, 2, NULL, '2020-06-25 03:52:44', '2020-06-25 03:52:44'),
(1401, '9942SM01', NULL, 4995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 44, 1, 2, 5, 5, 4, 5, 2, NULL, '2020-06-25 03:52:44', '2020-06-25 03:52:44'),
(1402, '9955WM01', NULL, 6795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 42, 1, 2, 5, 8, 4, 6, 2, NULL, '2020-06-25 03:52:44', '2020-06-25 03:52:44'),
(1403, '1743YM01', NULL, 6795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 34, 1, 2, 5, 6, 4, 11, 1, NULL, '2020-06-25 03:52:45', '2020-06-25 03:52:45'),
(1404, '3089SL03', NULL, 3095.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 63, 1, 2, 5, 10, 3, 1, 1, NULL, '2020-06-25 03:52:45', '2020-06-25 03:52:45'),
(1405, '3099SL01', NULL, 2150.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 2, 5, 5, 3, 3, 1, NULL, '2020-06-25 03:52:45', '2020-06-25 03:52:45'),
(1406, '3099SP05', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 21, 2, 2, 37, 1, 2, 5, 2, 7, 2, 1, NULL, '2020-06-25 03:52:45', '2020-06-25 03:52:45'),
(1407, '3121SL02', NULL, 1650.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 34, 1, 2, 5, 3, 3, 1, 1, NULL, '2020-06-25 03:52:45', '2020-06-25 03:52:45'),
(1408, '3130SL01', NULL, 2450.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 34, 1, 2, 5, 6, 3, 3, 1, NULL, '2020-06-25 03:52:45', '2020-06-25 03:52:45'),
(1409, '38042PP03', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 34, 1, 2, 5, 1, 7, 2, 1, NULL, '2020-06-25 03:52:45', '2020-06-25 03:52:45'),
(1410, '6117SM01', NULL, 3050.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 35, 1, 2, 5, 1, 4, 5, 2, NULL, '2020-06-25 03:52:45', '2020-06-25 03:52:45'),
(1411, '6125SM02', NULL, 2095.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 58, 1, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:52:45', '2020-06-25 03:52:45'),
(1412, '6153SM01', NULL, 1850.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 63, 1, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:52:45', '2020-06-25 03:52:45'),
(1413, '6153SM02', NULL, 1850.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 63, 1, 2, 5, 16, 4, 5, 2, NULL, '2020-06-25 03:52:45', '2020-06-25 03:52:45'),
(1414, '68008SL04', NULL, 1295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 42, 1, 2, 5, 3, 3, 5, 2, NULL, '2020-06-25 03:52:45', '2020-06-25 03:52:45'),
(1415, '1478SL02', NULL, 2760.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 66, 4, 2, 5, 5, 3, 1, 1, NULL, '2020-06-25 03:52:45', '2020-06-25 03:52:45'),
(1416, '3089NM01', NULL, 3050.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 64, 1, 2, 5, 1, 4, 1, 1, NULL, '2020-06-25 03:52:46', '2020-06-25 03:52:46'),
(1417, '3089SL01', NULL, 2495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 64, 1, 2, 5, 2, 3, 1, 1, NULL, '2020-06-25 03:52:46', '2020-06-25 03:52:46'),
(1418, '3130SM02', NULL, 2595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 66, 1, 2, 5, 2, 4, 5, 1, NULL, '2020-06-25 03:52:46', '2020-06-25 03:52:46'),
(1419, '3168SM01', NULL, 2495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 51, 1, 2, 5, 5, 4, 5, 1, NULL, '2020-06-25 03:52:46', '2020-06-25 03:52:46'),
(1420, '38017PL02', NULL, 2350.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 66, 1, 2, 5, 6, 3, 3, 1, NULL, '2020-06-25 03:52:46', '2020-06-25 03:52:46'),
(1421, '38024PP49', NULL, 950.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 34, 1, 2, 5, 1, 7, 1, 1, NULL, '2020-06-25 03:52:46', '2020-06-25 03:52:46'),
(1422, '6078SM04', NULL, 2550.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 67, 1, 2, 5, 1, 4, 5, 2, NULL, '2020-06-25 03:52:46', '2020-06-25 03:52:46'),
(1423, '6188NM01', NULL, 2495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 67, 1, 2, 5, 1, 4, 1, 2, NULL, '2020-06-25 03:52:46', '2020-06-25 03:52:46'),
(1424, '6192SM01', NULL, 2150.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 63, 1, 2, 5, 2, 4, 5, 2, NULL, '2020-06-25 03:52:46', '2020-06-25 03:52:46'),
(1425, '6203SM01', NULL, 1750.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 67, 1, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:52:46', '2020-06-25 03:52:46'),
(1426, '1474SM01', NULL, 3195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 64, 4, 2, 5, 6, 4, 5, 1, NULL, '2020-06-25 03:52:46', '2020-06-25 03:52:46'),
(1427, '1474SM02', NULL, 3195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 64, 4, 2, 5, 1, 4, 5, 1, NULL, '2020-06-25 03:52:46', '2020-06-25 03:52:46'),
(1428, '1478SM01', NULL, 3195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 34, 4, 2, 5, 1, 4, 5, 1, NULL, '2020-06-25 03:52:46', '2020-06-25 03:52:46'),
(1429, '1478SM02', NULL, 3195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 34, 4, 2, 5, 4, 4, 5, 1, NULL, '2020-06-25 03:52:47', '2020-06-25 03:52:47'),
(1430, '2049SM09', NULL, 2895.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 73, 4, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:52:47', '2020-06-25 03:52:47'),
(1431, '2262SM02', NULL, 2480.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 74, 4, 2, 5, 2, 4, 5, 2, NULL, '2020-06-25 03:52:47', '2020-06-25 03:52:47'),
(1432, '2298SM01', NULL, 1695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 74, 1, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:52:47', '2020-06-25 03:52:47'),
(1433, '2298SM02', NULL, 1695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 74, 1, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:52:47', '2020-06-25 03:52:47'),
(1434, '2298SM03', NULL, 1695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 74, 1, 2, 5, 1, 4, 5, 2, NULL, '2020-06-25 03:52:47', '2020-06-25 03:52:47'),
(1435, '2394SL01', NULL, 2150.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 74, 1, 2, 5, 5, 3, 8, 2, NULL, '2020-06-25 03:52:47', '2020-06-25 03:52:47'),
(1436, '3001SM07', NULL, 2115.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 64, 1, 2, 5, 4, 4, 5, 1, NULL, '2020-06-25 03:52:47', '2020-06-25 03:52:47'),
(1437, '3021SL03', NULL, 2205.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 35, 1, 2, 5, 5, 3, 1, 1, NULL, '2020-06-25 03:52:48', '2020-06-25 03:52:48'),
(1438, '3021SL04', NULL, 2495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 35, 1, 2, 5, 1, 3, 1, 1, NULL, '2020-06-25 03:52:48', '2020-06-25 03:52:48'),
(1439, '3039SL01', NULL, 1795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 54, 1, 2, 5, 6, 3, 1, 1, NULL, '2020-06-25 03:52:48', '2020-06-25 03:52:48'),
(1440, '3039SL06', NULL, 1750.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 54, 1, 2, 5, 1, 3, 1, 1, NULL, '2020-06-25 03:52:48', '2020-06-25 03:52:48'),
(1441, '3039SM01', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 64, 1, 2, 5, 6, 4, 5, 1, NULL, '2020-06-25 03:52:48', '2020-06-25 03:52:48'),
(1442, '3039SM02', NULL, 2050.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 64, 1, 2, 5, 1, 4, 5, 1, NULL, '2020-06-25 03:52:48', '2020-06-25 03:52:48'),
(1443, '3039SM03', NULL, 2050.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 64, 1, 2, 5, 5, 4, 5, 1, NULL, '2020-06-25 03:52:48', '2020-06-25 03:52:48'),
(1444, '3039SM08', NULL, 1950.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 64, 1, 2, 5, 1, 4, 5, 1, NULL, '2020-06-25 03:52:48', '2020-06-25 03:52:48'),
(1445, '3039SP01', NULL, 1450.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 54, 1, 2, 5, 6, 4, 1, 1, NULL, '2020-06-25 03:52:48', '2020-06-25 03:52:48'),
(1446, '3089SL12', NULL, 2440.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 66, 1, 2, 5, 1, 3, 1, 1, NULL, '2020-06-25 03:52:48', '2020-06-25 03:52:48'),
(1447, '3089SM02', NULL, 2670.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 64, 1, 2, 5, 3, 4, 5, 1, NULL, '2020-06-25 03:52:48', '2020-06-25 03:52:48'),
(1448, '3089SM03', NULL, 3495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 64, 1, 2, 5, 1, 4, 5, 1, NULL, '2020-06-25 03:52:48', '2020-06-25 03:52:48'),
(1449, '3090SL04', NULL, 3650.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 66, 1, 2, 5, 1, 3, 1, 1, NULL, '2020-06-25 03:52:48', '2020-06-25 03:52:48'),
(1450, '3098SM01', NULL, 3895.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 66, 1, 2, 5, 3, 4, 5, 1, NULL, '2020-06-25 03:52:48', '2020-06-25 03:52:48'),
(1451, '3099SL02', NULL, 2150.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 34, 1, 2, 5, 1, 3, 1, 1, NULL, '2020-06-25 03:52:48', '2020-06-25 03:52:48'),
(1452, '3099SL04', NULL, 2150.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 34, 1, 2, 5, 1, 3, 3, 1, NULL, '2020-06-25 03:52:49', '2020-06-25 03:52:49'),
(1453, '3099SL06', NULL, 2150.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 34, 1, 2, 5, 1, 3, 1, 1, NULL, '2020-06-25 03:52:49', '2020-06-25 03:52:49'),
(1454, '3099SM02', NULL, 2350.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 34, 1, 2, 5, 6, 4, 5, 1, NULL, '2020-06-25 03:52:49', '2020-06-25 03:52:49'),
(1455, '3099SM04', NULL, 2495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 34, 1, 2, 5, 1, 4, 5, 1, NULL, '2020-06-25 03:52:49', '2020-06-25 03:52:49'),
(1456, '3099SP02', NULL, 2195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 34, 1, 2, 5, 6, 4, 1, 1, NULL, '2020-06-25 03:52:49', '2020-06-25 03:52:49'),
(1457, '3099SP03', NULL, 2050.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 34, 1, 2, 5, 6, 4, 1, 1, NULL, '2020-06-25 03:52:49', '2020-06-25 03:52:49'),
(1458, '3099SP04', NULL, 2050.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 34, 1, 2, 5, 1, 4, 1, 1, NULL, '2020-06-25 03:52:49', '2020-06-25 03:52:49'),
(1459, '3099SP06', NULL, 2195.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 34, 1, 2, 5, 10, 4, 1, 1, NULL, '2020-06-25 03:52:49', '2020-06-25 03:52:49'),
(1460, '3110SL01', NULL, 1795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 75, 1, 2, 5, 5, 3, 3, 1, NULL, '2020-06-25 03:52:49', '2020-06-25 03:52:49'),
(1461, '3110SM04', NULL, 1650.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 75, 1, 2, 5, 20, 4, 5, 1, NULL, '2020-06-25 03:52:49', '2020-06-25 03:52:49'),
(1462, '3114PP02', NULL, 1050.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 64, 1, 2, 5, 5, 4, 1, 1, NULL, '2020-06-25 03:52:49', '2020-06-25 03:52:49'),
(1463, '3117SL01', NULL, 1595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 66, 1, 2, 5, 5, 3, 3, 1, NULL, '2020-06-25 03:52:49', '2020-06-25 03:52:49'),
(1464, '3117SL04', NULL, 1595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 66, 1, 2, 5, 2, 3, 1, 1, NULL, '2020-06-25 03:52:49', '2020-06-25 03:52:49'),
(1465, '3117SM01', NULL, 1695.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 66, 1, 2, 5, 5, 4, 5, 1, NULL, '2020-06-25 03:52:49', '2020-06-25 03:52:49'),
(1466, '3120SL01', NULL, 1595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 64, 1, 2, 5, 5, 3, 3, 1, NULL, '2020-06-25 03:52:50', '2020-06-25 03:52:50'),
(1467, '3120SL03', NULL, 1450.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 64, 1, 2, 5, 10, 3, 1, 1, NULL, '2020-06-25 03:52:50', '2020-06-25 03:52:50'),
(1468, '3121SL01', NULL, 1495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 64, 1, 2, 5, 1, 3, 1, 1, NULL, '2020-06-25 03:52:50', '2020-06-25 03:52:50'),
(1469, '3121SM02', NULL, 1750.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 64, 1, 2, 5, 1, 4, 5, 1, NULL, '2020-06-25 03:52:50', '2020-06-25 03:52:50'),
(1470, '3123SL01', NULL, 1595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 64, 1, 2, 5, 6, 3, 1, 1, NULL, '2020-06-25 03:52:50', '2020-06-25 03:52:50'),
(1471, '3123SL02', NULL, 1595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 64, 1, 2, 5, 6, 3, 3, 1, NULL, '2020-06-25 03:52:50', '2020-06-25 03:52:50'),
(1472, '3123SL03', NULL, 1595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 64, 1, 2, 5, 1, 3, 3, 1, NULL, '2020-06-25 03:52:50', '2020-06-25 03:52:50'),
(1473, '3123SM01', NULL, 1795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 64, 1, 2, 5, 1, 4, 5, 1, NULL, '2020-06-25 03:52:50', '2020-06-25 03:52:50'),
(1474, '3123SM05', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 52, 1, 2, 5, 5, 4, 5, 1, NULL, '2020-06-25 03:52:50', '2020-06-25 03:52:50'),
(1475, '3124SL01', NULL, 1495.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 66, 1, 2, 5, 5, 3, 1, 1, NULL, '2020-06-25 03:52:50', '2020-06-25 03:52:50'),
(1476, '3124SL02', NULL, 1595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 66, 1, 2, 5, 2, 3, 3, 1, NULL, '2020-06-25 03:52:50', '2020-06-25 03:52:50'),
(1477, '3124SM01', NULL, 1850.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 66, 1, 2, 5, 6, 4, 5, 1, NULL, '2020-06-25 03:52:50', '2020-06-25 03:52:50'),
(1478, '3124SM02', NULL, 1850.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 66, 1, 2, 5, 2, 4, 5, 1, NULL, '2020-06-25 03:52:50', '2020-06-25 03:52:50'),
(1479, '3164SM02', NULL, 2295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 64, 4, 2, 5, 4, 4, 5, 1, NULL, '2020-06-25 03:52:50', '2020-06-25 03:52:50'),
(1480, '3174SM01', NULL, 1750.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 34, 1, 2, 5, 5, 4, 5, 1, NULL, '2020-06-25 03:52:50', '2020-06-25 03:52:50'),
(1481, '3175SM02', NULL, 1595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 34, 1, 2, 5, 3, 4, 5, 1, NULL, '2020-06-25 03:52:50', '2020-06-25 03:52:50'),
(1482, '3178SM02', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 33, 1, 2, 5, 5, 4, 5, 1, NULL, '2020-06-25 03:52:50', '2020-06-25 03:52:50'),
(1483, '3179SL01', NULL, 1795.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 64, 4, 2, 5, 1, 3, 1, 1, NULL, '2020-06-25 03:52:51', '2020-06-25 03:52:51'),
(1484, '3197SM01', NULL, 1950.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 34, 1, 2, 5, 5, 4, 5, 1, NULL, '2020-06-25 03:52:51', '2020-06-25 03:52:51'),
(1485, '3197SM02', NULL, 1950.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 34, 1, 2, 5, 3, 4, 5, 1, NULL, '2020-06-25 03:52:51', '2020-06-25 03:52:51'),
(1486, '3198AL02', NULL, 2095.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 34, 1, 2, 5, 2, 3, 3, 1, NULL, '2020-06-25 03:52:51', '2020-06-25 03:52:51'),
(1487, '3199NM04', NULL, 2595.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 34, 1, 2, 5, 3, 4, 1, 1, NULL, '2020-06-25 03:52:51', '2020-06-25 03:52:51'),
(1488, '38037PP09', NULL, 850.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 54, 1, 2, 5, 1, 4, 13, 1, NULL, '2020-06-25 03:52:51', '2020-06-25 03:52:51'),
(1489, '38050NL01', NULL, 4295.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 47, 1, 2, 5, 1, 3, 14, 1, NULL, '2020-06-25 03:52:51', '2020-06-25 03:52:51'),
(1490, '6015SL01', NULL, 1745.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 40, 3, 2, 5, 5, 3, 8, 2, NULL, '2020-06-25 03:52:51', '2020-06-25 03:52:51'),
(1491, '6015SL02', NULL, 1995.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 40, 3, 2, 5, 1, 3, 1, 2, NULL, '2020-06-25 03:52:51', '2020-06-25 03:52:51'),
(1492, '6015SM01', NULL, 2095.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 40, 3, 2, 5, 6, 4, 5, 2, NULL, '2020-06-25 03:52:51', '2020-06-25 03:52:51'),
(1493, '6015SM02', NULL, 2095.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, 16, 108, 2, 2, 40, 3, 2, 5, 1, 4, 5, 2, NULL, '2020-06-25 03:52:51', '2020-06-25 03:52:51');

-- --------------------------------------------------------

--
-- Table structure for table `seo_tags`
--

CREATE TABLE `seo_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(501) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_tags`
--

INSERT INTO `seo_tags` (`id`, `page_name`, `meta_title`, `meta_description`, `meta_keyword`, `h1`, `created_at`, `updated_at`) VALUES
(1, 'home', 'Home', 'home', 'home', 'home', '2020-05-02 13:15:24', '2020-05-02 13:15:24'),
(2, 'about', 'About Us', 'About Us', 'About Us', 'About Us', '2020-05-02 13:16:05', '2020-05-02 13:16:05'),
(3, 'contact', 'Contact Us', 'Contact Us', 'Contact Us', 'Contact Us', '2020-05-02 13:16:42', '2020-05-02 13:16:42'),
(4, 'blog', 'Blog', 'Blog', 'Blog', 'Blog', '2020-05-02 13:17:07', '2020-05-02 13:17:07'),
(5, 'product', 'Product', 'Product', 'Product', 'Product', '2020-05-02 13:17:33', '2020-05-02 13:17:33'),
(6, 'brand', 'Brand', 'Brand', 'Brand', 'Brand', '2020-05-14 09:58:52', '2020-05-14 09:58:52');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_adds`
--

CREATE TABLE `shipping_adds` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `address_line` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `cteated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shipping_adds`
--

INSERT INTO `shipping_adds` (`id`, `uid`, `address_line`, `city`, `state`, `country`, `pincode`, `name`, `phone`, `cteated_at`, `updated_at`) VALUES
(1, 37, 'abc', 'new delhi', 'delhi', 'india', 0, 'arun kumar', '9999999999', '2020-09-04 08:26:08', '2020-09-04 08:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `strap_colours`
--

CREATE TABLE `strap_colours` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 = inactive, 1 = active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `strap_colours`
--

INSERT INTO `strap_colours` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Black', 'black', 1, '2020-05-30 06:44:44', '2020-05-30 06:44:44'),
(2, 'Blue', 'blue', 1, '2020-05-30 06:44:44', '2020-05-30 06:44:44'),
(3, 'Brown', 'brown', 1, '2020-05-30 06:44:44', '2020-05-30 06:44:44'),
(4, 'Gold', 'gold', 1, '2020-05-30 06:44:44', '2020-05-30 06:44:44'),
(5, 'Silver', 'silver', 1, '2020-05-30 06:44:44', '2020-05-30 06:44:44'),
(6, 'Rose Gold', 'rose-gold', 1, '2020-05-30 06:44:44', '2020-05-30 06:44:44'),
(7, 'White', 'white', 1, '2020-05-30 06:44:44', '2020-05-30 06:44:44'),
(8, 'Red', 'red', 1, '2020-05-30 06:44:44', '2020-05-30 06:44:44'),
(9, 'Silver & Yellow Gold', 'silver-&-yellow-gold', 1, '2020-05-30 06:44:44', '2020-05-30 06:44:44'),
(10, 'Silver & Rose Gold', 'silver-&-rose-gold', 1, '2020-05-30 06:44:44', '2020-05-30 06:44:44'),
(11, 'Yellow Gold', 'yellow-gold', 1, '2020-05-30 06:44:44', '2020-05-30 06:44:44'),
(12, 'Silver & Gold', 'silver-&-gold', 1, '2020-05-30 06:44:44', '2020-05-30 06:44:44'),
(13, 'Green', 'green', 1, '2020-05-30 06:44:44', '2020-05-30 06:44:44'),
(14, 'Grey', 'grey', 1, '2020-05-30 06:44:44', '2020-05-30 06:44:44'),
(15, 'Steel & Rose Gold PVD', 'steel-&-rose-gold-pvd', 1, '2020-05-30 06:44:44', '2020-05-30 06:44:44'),
(16, 'Beige', 'beige', 1, '2020-05-30 06:44:45', '2020-05-30 06:44:45'),
(17, 'Siver', 'siver', 1, '2020-05-30 06:44:45', '2020-05-30 06:44:45'),
(18, 'Pink', 'pink', 1, '2020-05-30 06:44:45', '2020-05-30 06:44:45'),
(19, 'Multicolor', 'multicolor', 1, '2020-05-30 06:44:45', '2020-05-30 06:44:45'),
(20, 'White & Rose Gold', 'white-&-rose-gold', 1, '2020-05-30 06:44:45', '2020-05-30 06:44:45'),
(21, 'Silver & Rose Gold PVD', 'silver-&-rose-gold-pvd', 1, '2020-05-30 06:44:45', '2020-05-30 06:44:45'),
(22, 'Silver & Yellow', 'silver-&-yellow', 1, '2020-05-30 06:44:45', '2020-05-30 06:44:45'),
(23, 'Purple', 'purple', 1, '2020-05-30 06:44:45', '2020-05-30 06:44:45'),
(24, 'Brown & Black', 'brown-&-black', 1, '2020-05-30 06:44:45', '2020-05-30 06:44:45');

-- --------------------------------------------------------

--
-- Table structure for table `strap_materials`
--

CREATE TABLE `strap_materials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0 = inactive, 1 = active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `strap_materials`
--

INSERT INTO `strap_materials` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Rubber', 'rubber', 1, '2020-05-30 06:42:00', '2020-05-30 06:42:00'),
(2, 'Calfskin Leather', 'calfskin-leather', 1, '2020-05-30 06:42:00', '2020-05-30 06:42:00'),
(3, 'Leather', 'leather', 1, '2020-05-30 06:42:00', '2020-05-30 06:42:00'),
(4, 'Stainless Steel', 'stainless-steel', 1, '2020-05-30 06:42:00', '2020-05-30 06:42:00'),
(5, 'Gold Plated Stainless Steel', 'gold-plated-stainless-steel', 1, '2020-05-30 06:42:00', '2020-05-30 06:42:00'),
(6, 'Steel', 'steel', 1, '2020-05-30 06:42:01', '2020-05-30 06:42:01'),
(7, 'Silicone', 'silicone', 1, '2020-05-30 06:42:01', '2020-05-30 06:42:01'),
(8, 'Steel & Yellow Gold PVD', 'steel-&-yellow-gold-pvd', 1, '2020-05-30 06:42:01', '2020-05-30 06:42:01'),
(9, 'Steel & Black PVD', 'steel-&-black-pvd', 1, '2020-05-30 06:42:01', '2020-05-30 06:42:01'),
(10, 'Steel & Rose Gold PVD', 'steel-&-rose-gold-pvd', 1, '2020-05-30 06:42:01', '2020-05-30 06:42:01'),
(11, 'Textile', 'textile', 1, '2020-05-30 06:42:01', '2020-05-30 06:42:01'),
(12, 'Steel & Grey PVD', 'steel-&-grey-pvd', 1, '2020-05-30 06:42:01', '2020-05-30 06:42:01'),
(13, 'Steel & Gunmetal PVD', 'steel-&-gunmetal-pvd', 1, '2020-05-30 06:42:01', '2020-05-30 06:42:01'),
(14, 'Steel & Gold PVD', 'steel-&-gold-pvd', 1, '2020-05-30 06:42:01', '2020-05-30 06:42:01'),
(15, 'Steel & Blue PVD', 'steel-&-blue-pvd', 1, '2020-05-30 06:42:01', '2020-05-30 06:42:01'),
(16, 'Ceramic', 'ceramic', 1, '2020-05-30 06:42:01', '2020-05-30 06:42:01'),
(17, 'Nylon', 'nylon', 1, '2020-05-30 06:42:01', '2020-05-30 06:42:01'),
(18, 'Acetate & Yellow Gold PVD', 'acetate-&-yellow-gold-pvd', 1, '2020-05-30 06:42:01', '2020-05-30 06:42:01'),
(19, 'Acetate & Rose Gold PVD', 'acetate-&-rose-gold-pvd', 1, '2020-05-30 06:42:01', '2020-05-30 06:42:01'),
(20, 'Stainless Steel & Rose Gold Plated', 'stainless-steel-&-rose-gold-plated', 1, '2020-05-30 06:42:01', '2020-05-30 06:42:01'),
(21, 'Steel &Yellow Gold Pvd', 'steel-&yellow-gold-pvd', 1, '2020-05-30 06:42:01', '2020-05-30 06:42:01'),
(22, 'Stainless Steel Rhodium Plated', 'stainless-steel-rhodium-plated', 1, '2020-05-30 06:42:01', '2020-05-30 06:42:01'),
(23, 'Titanium', 'titanium', 1, '2020-05-30 06:42:01', '2020-05-30 06:42:01'),
(24, 'Green silicone bracelet', 'green-silicone-bracelet', 1, '2020-05-30 06:42:01', '2020-05-30 06:42:01'),
(25, 'Steel & Back PVD', 'steel-&-back-pvd', 1, '2020-05-30 06:42:01', '2020-05-30 06:42:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
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
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$tagFACpd5gV8rAVLKyyOmee9lLKx228SO4Fmyfvdc4eqRyyHR2HaS', 'zRnlTqnF206IOGe1bxL1TwWwmLXDBQi6Dg9DDPMwmHTyV7j2kd4HdoyDyLmq', '2020-03-06 03:42:34', '2020-04-12 07:25:02');

-- --------------------------------------------------------

--
-- Table structure for table `watch_enquiries`
--

CREATE TABLE `watch_enquiries` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_detail_id` int(10) UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mob_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `watch_enquiries`
--

INSERT INTO `watch_enquiries` (`id`, `product_detail_id`, `product_name`, `name`, `email`, `mob_no`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 2, 'ck, K2G23521, 20300, Features:-  Bluetooth,', 'alok', 'admin@gmail.com', '0123456789', 'New Enquiry | Watches', 'testing data', '2020-05-14 15:39:23', '2020-05-14 15:39:23'),
(2, 13, 'VERSACE, VEBK00518, 81000.00, Features:-', 'Abhishek kumar kushwaha', 'abhsihek.k@doorsstudio.com', '1234567890', 'New Enquiry | Watches', 'Test message', '2020-08-08 10:44:49', '2020-08-08 10:44:49'),
(3, 13, 'VERSACE, VEBK00518, 81000.00, Features:-', 'Abhishek kumar kushwaha', 'microlinkedin@gmail.com', '1234567890', 'New Enquiry | Watches', 'Test message', '2020-08-08 10:49:12', '2020-08-08 10:49:12'),
(4, 423, 'MICHAEL KORS, MK8295, 16795.00, Features:-  Date, Minutes, Small Seconds, 24h Indicator, Chronograph,', 'Shivani', 'shivanimatta23@gmail.com', '9643091908', 'New Enquiry | Watches', 'Hi there is black colour also which comes in this model so do you have that model?', '2020-08-24 16:01:06', '2020-08-24 16:01:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner_headings`
--
ALTER TABLE `banner_headings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_authors`
--
ALTER TABLE `blog_authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `case_materials`
--
ALTER TABLE `case_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `case_shapes`
--
ALTER TABLE `case_shapes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `case_sizes`
--
ALTER TABLE `case_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clock_types`
--
ALTER TABLE `clock_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colours`
--
ALTER TABLE `colours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`countries_id`),
  ADD KEY `IDX_COUNTRIES_NAME` (`countries_name`);

--
-- Indexes for table `dial_colours`
--
ALTER TABLE `dial_colours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `glass_materials`
--
ALTER TABLE `glass_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest_users`
--
ALTER TABLE `guest_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiries`
--
ALTER TABLE `inquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_categories`
--
ALTER TABLE `main_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movements`
--
ALTER TABLE `movements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movement_types`
--
ALTER TABLE `movement_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_details_brand_id_foreign` (`brand_id`),
  ADD KEY `product_details_collection_id_foreign` (`collection_id`),
  ADD KEY `product_details_movement_id_foreign` (`movement_id`),
  ADD KEY `product_details_movement_type_id_foreign` (`movement_type_id`),
  ADD KEY `product_details_case_size_id_foreign` (`case_size_id`),
  ADD KEY `product_details_case_shape_id_foreign` (`case_shape_id`),
  ADD KEY `product_details_case_material_id_foreign` (`case_material_id`),
  ADD KEY `product_details_glass_material_id_foreign` (`glass_material_id`),
  ADD KEY `product_details_dial_colour_id_foreign` (`dial_colour_id`),
  ADD KEY `product_details_strap_material_id_foreign` (`strap_material_id`),
  ADD KEY `product_details_strap_colour_id_foreign` (`strap_colour_id`),
  ADD KEY `product_details_gender_id_foreign` (`gender_id`),
  ADD KEY `product_details_main_category_id_foreign` (`main_category_id`),
  ADD KEY `product_details_colour_id_foreign` (`colour_id`),
  ADD KEY `product_details_clock_type_id_foreign` (`clock_type_id`);

--
-- Indexes for table `seo_tags`
--
ALTER TABLE `seo_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_adds`
--
ALTER TABLE `shipping_adds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strap_colours`
--
ALTER TABLE `strap_colours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strap_materials`
--
ALTER TABLE `strap_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `watch_enquiries`
--
ALTER TABLE `watch_enquiries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner_headings`
--
ALTER TABLE `banner_headings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blog_authors`
--
ALTER TABLE `blog_authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `case_materials`
--
ALTER TABLE `case_materials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `case_shapes`
--
ALTER TABLE `case_shapes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `case_sizes`
--
ALTER TABLE `case_sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `clock_types`
--
ALTER TABLE `clock_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `colours`
--
ALTER TABLE `colours`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `countries_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `dial_colours`
--
ALTER TABLE `dial_colours`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `glass_materials`
--
ALTER TABLE `glass_materials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `guest_users`
--
ALTER TABLE `guest_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `inquiries`
--
ALTER TABLE `inquiries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_categories`
--
ALTER TABLE `main_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `movements`
--
ALTER TABLE `movements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `movement_types`
--
ALTER TABLE `movement_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1494;

--
-- AUTO_INCREMENT for table `seo_tags`
--
ALTER TABLE `seo_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shipping_adds`
--
ALTER TABLE `shipping_adds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `strap_colours`
--
ALTER TABLE `strap_colours`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `strap_materials`
--
ALTER TABLE `strap_materials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `watch_enquiries`
--
ALTER TABLE `watch_enquiries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_details`
--
ALTER TABLE `product_details`
  ADD CONSTRAINT `product_details_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `product_details_case_material_id_foreign` FOREIGN KEY (`case_material_id`) REFERENCES `case_materials` (`id`),
  ADD CONSTRAINT `product_details_case_shape_id_foreign` FOREIGN KEY (`case_shape_id`) REFERENCES `case_shapes` (`id`),
  ADD CONSTRAINT `product_details_case_size_id_foreign` FOREIGN KEY (`case_size_id`) REFERENCES `case_sizes` (`id`),
  ADD CONSTRAINT `product_details_collection_id_foreign` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`),
  ADD CONSTRAINT `product_details_dial_colour_id_foreign` FOREIGN KEY (`dial_colour_id`) REFERENCES `dial_colours` (`id`),
  ADD CONSTRAINT `product_details_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`),
  ADD CONSTRAINT `product_details_glass_material_id_foreign` FOREIGN KEY (`glass_material_id`) REFERENCES `glass_materials` (`id`),
  ADD CONSTRAINT `product_details_movement_id_foreign` FOREIGN KEY (`movement_id`) REFERENCES `movements` (`id`),
  ADD CONSTRAINT `product_details_movement_type_id_foreign` FOREIGN KEY (`movement_type_id`) REFERENCES `movement_types` (`id`),
  ADD CONSTRAINT `product_details_strap_colour_id_foreign` FOREIGN KEY (`strap_colour_id`) REFERENCES `strap_colours` (`id`),
  ADD CONSTRAINT `product_details_strap_material_id_foreign` FOREIGN KEY (`strap_material_id`) REFERENCES `strap_materials` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
