-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 19, 2018 at 06:42 PM
-- Server version: 5.5.35-1ubuntu1
-- PHP Version: 7.1.16-1+ubuntu14.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `larevel-lkeys`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_22_094941_create_products_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(7, '2016_06_01_000004_create_oauth_clients_table', 2),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0ccc51463080cc0e1bf3bf5b320acb4c3ca197f2700eb7c3b42a06cd088e13cacdf74d10047fad78', 8, 1, 'LaptopKeys', '[]', 0, '2018-10-30 23:49:23', '2018-10-30 23:49:23', '2019-10-31 05:19:23'),
('2aba3999ee90fcd7237beafc038165b04c8de2aa0c11b4286ae19fc87b137daf6628bca481a900dc', 3, 1, 'LaptopKeys', '[]', 0, '2018-10-23 07:54:10', '2018-10-23 07:54:10', '2019-10-23 13:24:10'),
('3b5e2439dbe17aa3fe0d1525de69e8c48b7b592fefb445df68a3a062f4750e89ce780b6c3829a57c', 8, 1, 'LaptopKeys', '[]', 0, '2018-10-30 23:47:52', '2018-10-30 23:47:52', '2019-10-31 05:17:52'),
('48ca9cf972633ab76013df3aca7ec2cd9fd4c1dd3e769aaaded5af77b3ab056dfd58914d9ba8b9ee', 7, 1, 'LaptopKeys', '[]', 0, '2018-10-25 01:23:57', '2018-10-25 01:23:57', '2019-10-25 06:53:57'),
('4f656f53382ca349baf07534c54e123d0151ec0b63da80542fb880dee2a8a5ad0b9839283a50da8d', 3, 1, 'LaptopKeys', '[]', 0, '2018-10-25 01:18:19', '2018-10-25 01:18:19', '2019-10-25 06:48:19'),
('54b4e7b500a944701f13ec12f65a28267835049237aa9d1ac49440fe56fd487a9e579a7e91908cd9', 7, 1, 'LaptopKeys', '[]', 0, '2018-10-25 02:26:00', '2018-10-25 02:26:00', '2019-10-25 07:56:00'),
('5900a70c532dd92d5f8df8b404b6297f052b87de6ade41fb1d00eaec1f8c18c8b5c7125b2e975762', 5, 1, 'MyApp', '[]', 0, '2018-10-25 01:19:41', '2018-10-25 01:19:41', '2019-10-25 06:49:41'),
('846639136692675cdb70fb097dd969d8f09a77b39e29271d447c5b49ebcb2d0e20abc36a5e0055d4', 8, 1, 'LaptopKeys', '[]', 0, '2018-10-30 23:06:01', '2018-10-30 23:06:01', '2019-10-31 04:36:01'),
('8ab99efa8a811f0a51c5fd065943822fd0b8e23d673ffd803eff74a49a142d234d5a03f1f8f3e7bc', 2, 1, 'LaptopKeys', '[]', 0, '2018-11-08 07:19:44', '2018-11-08 07:19:44', '2019-11-08 12:49:44'),
('96737219f21f3e5fa045ff8c46fbf9c6ca21b42838f8294e2387f44b78f18083ed8748798f7332ea', 7, 1, 'LaptopKeys', '[]', 0, '2018-10-25 02:19:59', '2018-10-25 02:19:59', '2019-10-25 07:49:59'),
('a14cb85e7e16a7eb21183a627c549f717ff7fd2f99662716604b1dcf0b0bc6c90e85e87503bbf9ad', 2, 1, 'LaptopKeys', '[]', 0, '2018-11-08 07:32:22', '2018-11-08 07:32:22', '2019-11-08 13:02:22'),
('a52c39458e0ce6da965b929a8f56b7b0e9aea66c0f321bdff4bcbf77c8d8dd8da57df65a392191e6', 2, 1, 'LaptopKeys', '[]', 0, '2018-11-08 07:32:18', '2018-11-08 07:32:18', '2019-11-08 13:02:18'),
('b07db6d2a145d84374ad996896b72d73905ae4c346d5d8b8f0aa56f2f9f02fa5b272d6f14fc14de8', 2, 1, 'LaptopKeys', '[]', 0, '2018-11-08 07:32:24', '2018-11-08 07:32:24', '2019-11-08 13:02:24'),
('c41288566acd7844d56076c6f63e5e104ac42c785f390f5ddf6bd37024f1943df1a334beb40e90e8', 8, 1, 'LaptopKeys', '[]', 0, '2018-10-30 23:48:24', '2018-10-30 23:48:24', '2019-10-31 05:18:24'),
('cd5d78e90d788a5738cb5b6ee338cd62bc21b3cdc6f2ee6c5701c726997f25d32a482d97e8b91194', 2, 1, 'LaptopKeys', '[]', 0, '2018-10-30 22:09:05', '2018-10-30 22:09:05', '2019-10-31 03:39:05'),
('e8375535f15b7f59fdbb6c2503267696246410730cdacd8c93864ea3571949d9cdcd9cfeecb7b4a9', 8, 1, 'LaptopKeys', '[]', 0, '2018-10-30 22:11:29', '2018-10-30 22:11:29', '2019-10-31 03:41:29'),
('e92b2e74079285659cb1e87c59257e89ba7571636127bf6fd93a81a989a242f23d963aac8a95e741', 7, 1, 'LaptopKeys', '[]', 0, '2018-10-25 01:22:35', '2018-10-25 01:22:35', '2019-10-25 06:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laptopkeys.com Personal Access Client', 'q0FAsih9SMk8bQfvzO5C7t7HpnCpOWHrbb4JKki5', 'http://localhost', 1, 0, 0, '2018-10-23 06:27:16', '2018-10-23 06:27:16'),
(2, NULL, 'Laptopkeys.com Password Grant Client', 'vWeLcuClBhPJQE5qMpd5AIdBV50j6Coe3XmXVndH', 'http://localhost', 0, 1, 0, '2018-10-23 06:27:16', '2018-10-23 06:27:16');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-10-23 06:27:16', '2018-10-23 06:27:16');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_author_foreign` (`author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `author`, `title`, `description`, `price`, `created_at`, `updated_at`) VALUES
(6, 1, 'Apple', 'Apple IPhone', 222, '2018-10-23 04:52:45', '2018-10-23 04:52:45'),
(7, 1, 'Apple Iphone X', 'Lopem Ipsum Priduc', 999, '2018-10-23 04:55:24', '2018-10-23 04:55:24'),
(8, 1, 'Samsung Galaxy S8', 'Samsung Galaxy S8 Lorem Ipsum', 555, '2018-10-23 04:56:33', '2018-10-23 04:56:33'),
(9, 1, 'OnePlus 3T', 'OnePlus 3T Lorem', 999, '2018-10-23 04:56:54', '2018-10-23 04:56:54'),
(10, 2, 'OnePlus 6', 'OnePlus 6 LoremIpsum Product List', 350, '2018-10-23 06:39:33', '2018-10-23 06:39:33'),
(11, 8, 'Jockey Under', 'Lorem Ipsum', 99, '2018-10-31 00:13:06', '2018-10-31 00:13:06'),
(12, 8, 'Jockey West', 'Lorem Ipsum', 99, '2018-10-31 00:47:41', '2018-10-31 00:47:41'),
(13, 8, 'Jockey West1', 'Lorem Ipsum', 99, '2018-10-31 00:47:56', '2018-10-31 00:47:56'),
(14, 2, 'gajodhar', 'Heyyy Product Hereee', 99, '2018-11-08 07:46:26', '2018-11-08 07:46:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nitin', '013.nitin@gmail.com', NULL, '$2y$10$2ef/.8e9lQbOcLsYfY3h0effjqkcLZZjPKuLwo6U23lkAVx1ZaSTe', 'tOO6VngFmIFgeob9zcyT8bolno6YgQX8xgmBggOqgerIFQTj5QPnMTGQJ3mB', '2018-10-22 07:02:27', '2018-10-22 07:02:27'),
(2, 'Markup', 'markup.ucar@gmail.com', NULL, '$2y$10$A4neofIZ0QBuCLcQThXqGuhZjbtAxRiwMKm6DonWbBCXNap2jJ1R6', NULL, '2018-10-23 06:38:46', '2018-10-23 06:38:46'),
(3, 'Ajay Rawat', 'ajay.rawat@gmail.com', NULL, '$2y$10$XAxKSJBuqGLzufyXlCCA9uGUU0fgsGUJc259pcPDxOpGb4YnFtRhi', NULL, '2018-10-23 07:47:06', '2018-10-23 07:47:06'),
(5, 'Bharat Singh', 'bharat.singh@gmail.com', NULL, '$2y$10$i0vTDUnbmBiIrk9yvA4HaODfbJfiYBHhlHNrNxni5bmxIrA06vgdS', NULL, '2018-10-25 01:19:41', '2018-10-25 01:19:41'),
(7, 'Amit Gola', 'amit.gola@gmail.com', NULL, '$2y$10$eqf1QFQNl9CMpvPXqf9kGOAHmcXTabipzWHVXCtDPdjsaZDNkKiaa', NULL, '2018-10-25 01:22:35', '2018-10-25 01:22:35'),
(8, 'Nitin XICOM', 'nitin.baluni@xicom.biz', NULL, '$2y$10$YwtMjGSFLgK4HHuGQW8lR.FUnpZzGyIpIhQKAX71oZXiiNytkezjq', NULL, '2018-10-30 22:11:29', '2018-10-30 22:11:29');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_author_foreign` FOREIGN KEY (`author`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
