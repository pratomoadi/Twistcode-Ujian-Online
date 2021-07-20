-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2021 at 10:57 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `twistcode_query1`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksis`
--

CREATE TABLE `detail_transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_transaksis`
--

INSERT INTO `detail_transaksis` (`id`, `id_transaksi`, `harga`, `jumlah`, `subtotal`) VALUES
(1, 175226001, 687723522, 514, 725),
(2, 676031080, 727702978, 218, 829),
(3, 119378668, 908519065, 143, 878),
(4, 798463825, 749057440, 159, 313),
(5, 671250422, 420834498, 300, 847),
(6, 630673927, 251416631, 778, 825),
(7, 262156893, 970766438, 507, 231),
(8, 182561223, 445332473, 920, 168),
(9, 652171233, 362354779, 768, 504),
(10, 687885883, 838142606, 320, 140),
(11, 254226981, 349262624, 746, 650),
(12, 396480945, 739807073, 404, 625),
(13, 521915991, 988386710, 658, 796),
(14, 710659310, 696409289, 26, 146),
(15, 414537929, 543128363, 86, 613),
(16, 638981724, 45032994, 674, 70),
(17, 192332387, 846291417, 734, 162),
(18, 52698315, 83483037, 879, 194),
(19, 128033885, 641847498, 804, 92),
(20, 640063895, 817498927, 275, 526),
(21, 370417139, 152008393, 223, 480),
(22, 352070124, 376662494, 459, 143),
(23, 840406677, 168029286, 587, 210),
(24, 36028728, 744171305, 598, 673),
(25, 817332564, 657959057, 717, 401),
(26, 661063664, 631388393, 587, 732),
(27, 481295539, 86286020, 869, 341),
(28, 664531572, 691187966, 127, 595),
(29, 584177758, 215176333, 963, 87),
(30, 808052356, 702492788, 746, 491),
(31, 819899456, 600629036, 280, 702),
(32, 406838964, 576146536, 833, 586),
(33, 398817798, 331701642, 173, 685),
(34, 655623258, 263057260, 875, 965),
(35, 93509181, 707515466, 529, 217),
(36, 818005112, 712069945, 49, 319),
(37, 667854244, 560315863, 464, 948),
(38, 31582421, 966001848, 567, 87),
(39, 206648136, 764662332, 696, 353),
(40, 82802745, 910677824, 846, 455),
(41, 200128525, 8458546, 631, 409),
(42, 330350795, 60582995, 208, 396),
(43, 350610762, 887017983, 941, 655),
(44, 214269746, 559930619, 111, 930),
(45, 566816698, 677477417, 23, 254),
(46, 614619357, 859230354, 450, 496),
(47, 19408588, 830976658, 27, 94),
(48, 578295882, 679122460, 61, 672),
(49, 798438832, 751185433, 92, 664),
(50, 806409396, 412659313, 543, 765);

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
(4, '2021_07_20_071413_create_transaksis_table', 1),
(5, '2021_07_20_081446_create_detail_transaksis_table', 1);

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
-- Table structure for table `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal_order` date NOT NULL,
  `status_pelunasan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_pembayaran` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksis`
--

INSERT INTO `transaksis` (`id`, `tanggal_order`, `status_pelunasan`, `tanggal_pembayaran`) VALUES
(1, '2021-01-08', 'Lunas', '2021-04-01'),
(2, '2021-06-06', 'Lunas', '2021-04-03'),
(3, '2021-07-17', 'Lunas', '2021-05-17'),
(4, '2021-02-07', 'Pending', '2021-05-19'),
(5, '2021-01-28', 'Lunas', '2021-04-28'),
(6, '2021-03-01', 'Lunas', '2021-04-04'),
(7, '2021-07-02', 'Lunas', '2021-02-26'),
(8, '2021-05-19', 'Lunas', '2021-06-22'),
(9, '2021-05-04', 'Lunas', '2021-06-29'),
(10, '2021-04-21', 'Pending', '2021-07-07'),
(11, '2021-01-04', 'Lunas', '2021-01-08'),
(12, '2021-06-04', 'Lunas', '2021-04-09'),
(13, '2021-06-25', 'Lunas', '2021-04-21'),
(14, '2021-01-21', 'Pending', '2021-05-02'),
(15, '2021-02-07', 'Lunas', '2021-01-05'),
(16, '2021-07-05', 'Pending', '2021-05-07'),
(17, '2021-02-22', 'Lunas', '2021-05-25'),
(18, '2021-02-03', 'Pending', '2021-01-13'),
(19, '2021-02-05', 'Lunas', '2021-06-13'),
(20, '2021-03-11', 'Pending', '2021-01-19'),
(21, '2021-06-07', 'Lunas', '2021-04-11'),
(22, '2021-02-10', 'Lunas', '2021-05-03'),
(23, '2021-06-25', 'Lunas', '2021-03-20'),
(24, '2021-04-28', 'Lunas', '2021-05-24'),
(25, '2021-01-01', 'Lunas', '2021-03-25'),
(26, '2021-06-08', 'Pending', '2021-06-09'),
(27, '2021-05-29', 'Lunas', '2021-07-17'),
(28, '2021-04-21', 'Pending', '2021-06-07'),
(29, '2021-03-31', 'Lunas', '2021-03-03'),
(30, '2021-03-09', 'Lunas', '2021-05-15'),
(31, '2021-06-21', 'Lunas', '2021-04-26'),
(32, '2021-05-20', 'Pending', '2021-03-07'),
(33, '2021-02-03', 'Lunas', '2021-01-23'),
(34, '2021-03-05', 'Pending', '2021-04-04'),
(35, '2021-02-16', 'Lunas', '2021-06-26'),
(36, '2021-05-26', 'Pending', '2021-05-16'),
(37, '2021-04-19', 'Lunas', '2021-05-08'),
(38, '2021-05-07', 'Pending', '2021-07-08'),
(39, '2021-04-19', 'Lunas', '2021-03-28'),
(40, '2021-03-15', 'Lunas', '2021-03-13'),
(41, '2021-03-30', 'Lunas', '2021-05-30'),
(42, '2021-07-16', 'Lunas', '2021-06-30'),
(43, '2021-02-05', 'Lunas', '2021-05-17'),
(44, '2021-06-27', 'Lunas', '2021-04-28'),
(45, '2021-05-27', 'Lunas', '2021-05-20'),
(46, '2021-07-16', 'Pending', '2021-06-08'),
(47, '2021-02-22', 'Lunas', '2021-01-09'),
(48, '2021-06-14', 'Pending', '2021-01-03'),
(49, '2021-01-17', 'Lunas', '2021-02-26'),
(50, '2021-05-23', 'Lunas', '2021-04-26');

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
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_transaksis`
--
ALTER TABLE `detail_transaksis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
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
-- AUTO_INCREMENT for table `detail_transaksis`
--
ALTER TABLE `detail_transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
