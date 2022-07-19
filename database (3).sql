-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2022 at 05:59 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_database`
--

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kelas` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kompetensi_keahlian` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama_kelas`, `kompetensi_keahlian`, `created_at`, `updated_at`) VALUES
(2, 'ips', 'IPS\r\n tak lain merupakan ilmu pengetahuan yang berkaitan dengan lingkungan sosial. Cabang ilmu pengetahuan ini mempelajari tingkah laku manusia sebagai anggota dalam masyarakat', '2022-06-20 02:19:17', '2022-07-20 02:19:17'),
(3, 'ipa', 'IPA \r\nmerupakan ilmu pengetahuan yang mempelajari gejala-gejala melalui serangkaian proses yang dikenal dengan proses ilmiah', '2022-06-20 02:19:17', '2022-07-20 02:19:17');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_07_01_123554_create_petugas_table', 1),
(6, '2021_07_01_123659_create_kelas_table', 1),
(7, '2021_07_01_123746_create_spp_table', 1),
(8, '2021_07_10_224442_create_permission_tables', 1),
(9, '2021_07_15_072638_create_siswa_table', 1),
(10, '2021_07_15_072759_create_pembayaran_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 12),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 9),
(3, 'App\\Models\\User', 10),
(3, 'App\\Models\\User', 11);

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
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_pembayaran` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `petugas_id` bigint(20) UNSIGNED NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `nisn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_bayar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bulan_bayar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_bayar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah_bayar` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `kode_pembayaran`, `petugas_id`, `siswa_id`, `nisn`, `tanggal_bayar`, `bulan_bayar`, `tahun_bayar`, `jumlah_bayar`, `created_at`, `updated_at`) VALUES
(1, 'SPPR8AOJ0', 1, 2, '08909096', '2021-07-20 10:59:42', 'Januari', '2022', 170000, '2021-07-20 03:59:42', '2022-07-20 03:59:42'),
(4, 'SPPR2SOCO', 1, 2, '08909096', '2021-07-20 10:59:42', 'April', '2021', 170000, '2021-07-20 03:59:42', '2021-07-20 03:59:42'),
(5, 'SPPRAHBCI', 1, 2, '08909096', '2021-07-20 10:59:42', 'Mei', '2021', 170000, '2021-07-20 03:59:42', '2021-07-20 03:59:42'),
(6, 'SPPREMITZ', 1, 7, '9849386', '2022-06-28 16:34:39', 'Februari', '2022', 175000, '2022-06-28 09:34:39', '2022-06-28 09:34:39'),
(7, 'SPPR9UE5M', 1, 2, '000001', '2022-06-28 16:35:03', 'Maret', '2023', 0, '2022-06-28 09:35:03', '2022-06-28 09:35:03'),
(8, 'SPPRZSVZC', 1, 2, '000001', '2022-06-28 16:35:31', 'Mei', '2022', 175000, '2022-06-28 09:35:31', '2022-06-28 09:35:31'),
(9, 'SPPRGCPHX', 1, 7, '9849386', '2022-06-28 16:36:05', 'Desember', '2022', 175000, '2022-06-28 09:36:05', '2022-06-28 09:36:05'),
(10, 'SPPR8AX9P', 1, 6, '837487', '2022-06-28 16:36:38', 'Juni', '2021', 170000, '2022-06-28 09:36:38', '2022-06-28 09:36:38'),
(11, 'SPPRXA4DS', 2, 5, '8723862', '2022-06-29 07:08:19', 'Juni', '2020', 165000, '2022-06-29 00:08:19', '2022-06-29 00:08:19'),
(12, 'SPPRTNKBS', 2, 5, '8723862', '2022-06-29 07:10:39', 'Maret', '2022', 175000, '2022-06-29 00:10:39', '2022-06-29 00:10:39');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'create-siswa', 'web', '2021-07-20 02:19:13', '2021-07-20 02:19:13'),
(2, 'read-siswa', 'web', '2021-07-20 02:19:13', '2021-07-20 02:19:13'),
(3, 'update-siswa', 'web', '2021-07-20 02:19:13', '2021-07-20 02:19:13'),
(4, 'delete-siswa', 'web', '2021-07-20 02:19:13', '2021-07-20 02:19:13'),
(5, 'create-users', 'web', '2021-07-20 02:19:13', '2021-07-20 02:19:13'),
(6, 'read-users', 'web', '2021-07-20 02:19:13', '2021-07-20 02:19:13'),
(7, 'update-users', 'web', '2021-07-20 02:19:13', '2021-07-20 02:19:13'),
(8, 'delete-users', 'web', '2021-07-20 02:19:13', '2021-07-20 02:19:13'),
(9, 'create-spp', 'web', '2021-07-20 02:19:14', '2021-07-20 02:19:14'),
(10, 'read-spp', 'web', '2021-07-20 02:19:14', '2021-07-20 02:19:14'),
(11, 'update-spp', 'web', '2021-07-20 02:19:14', '2021-07-20 02:19:14'),
(12, 'delete-spp', 'web', '2021-07-20 02:19:14', '2021-07-20 02:19:14'),
(13, 'create-kelas', 'web', '2021-07-20 02:19:14', '2021-07-20 02:19:14'),
(14, 'read-kelas', 'web', '2021-07-20 02:19:14', '2021-07-20 02:19:14'),
(15, 'update-kelas', 'web', '2021-07-20 02:19:14', '2021-07-20 02:19:14'),
(16, 'delete-kelas', 'web', '2021-07-20 02:19:14', '2021-07-20 02:19:14'),
(17, 'create-roles', 'web', '2021-07-20 02:19:14', '2021-07-20 02:19:14'),
(18, 'read-roles', 'web', '2021-07-20 02:19:14', '2021-07-20 02:19:14'),
(19, 'update-roles', 'web', '2021-07-20 02:19:14', '2021-07-20 02:19:14'),
(20, 'delete-roles', 'web', '2021-07-20 02:19:15', '2021-07-20 02:19:15'),
(21, 'create-permissions', 'web', '2021-07-20 02:19:15', '2021-07-20 02:19:15'),
(22, 'read-permissions', 'web', '2021-07-20 02:19:15', '2021-07-20 02:19:15'),
(23, 'update-permissions', 'web', '2021-07-20 02:19:15', '2021-07-20 02:19:15'),
(24, 'delete-permissions', 'web', '2021-07-20 02:19:15', '2021-07-20 02:19:15'),
(25, 'create-pembayaran', 'web', '2021-07-20 02:19:15', '2021-07-20 02:19:15'),
(26, 'read-pembayaran', 'web', '2021-07-20 02:19:15', '2021-07-20 02:19:15'),
(28, 'delete-pembayaran', 'web', '2021-07-20 02:19:15', '2021-07-20 02:19:15');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `kode_petugas` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_petugas` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_kelamin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id`, `user_id`, `kode_petugas`, `nama_petugas`, `jenis_kelamin`, `created_at`, `updated_at`) VALUES
(1, 1, 'PTG8M1CF', 'Admin', 'Laki-laki', '2021-07-20 02:19:18', '2022-07-20 02:19:18'),
(2, 2, 'PTG0M2BX', 'adit', 'laki-laki', '2021-07-20 02:19:19', '2022-07-20 02:19:19'),
(5, 2, 'PTG0M2BX', 'umi ', 'perempuan', '2021-07-20 02:19:19', '2022-07-20 02:19:19'),
(6, 12, 'PTGRTOYAP', 'adit', NULL, '2022-06-29 15:29:25', '2022-06-29 15:29:25');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2021-07-20 02:19:15', '2021-07-20 02:19:15'),
(2, 'petugas', 'web', '2021-07-20 02:19:16', '2021-07-20 02:19:16'),
(3, 'siswa', 'web', '2021-07-20 02:19:17', '2022-07-20 02:19:17');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(2, 2),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(10, 2),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(14, 2),
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
(26, 2),
(28, 1);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_siswa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nisn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nis` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_siswa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_kelamin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_telepon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `kode_siswa`, `nisn`, `nis`, `nama_siswa`, `jenis_kelamin`, `alamat`, `no_telepon`, `user_id`, `kelas_id`, `created_at`, `updated_at`) VALUES
(2, 'ipa ', '000001', '000001', 'adit aja ', 'laki- laki ', 'DIY', '08599865056', 4, 3, '2022-06-20 02:19:20', '2022-07-20 02:19:20'),
(5, 'ips', '8723862', '83748374', 'Fardan bactian', 'Laki-laki', 'jogja', '088888856', 9, 2, '2022-06-20 04:05:21', '2022-07-20 04:05:21'),
(6, 'ips ', '837487', '8059045', 'umi ', 'perempuan ', 'jepara ', '08785858698', 10, 2, '2022-06-20 04:05:48', '2022-07-20 04:05:48'),
(7, 'ips ', '9849386', '0394034', 'mas ganteg raihan ', 'Laki-laki', 'banjarmasin ', '8278734', 11, 2, '2022-06-20 04:06:11', '2022-07-20 04:06:11'),
(8, 'ipa ', '000001', '000001', 'zaid ', 'laki- laki ', 'DIY', '08599865056', 4, 3, '2022-06-20 02:19:20', '2022-07-20 02:19:20');

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tahun` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nominal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`id`, `tahun`, `nominal`, `created_at`, `updated_at`) VALUES
(1, '2020', '165000', '2021-07-20 02:19:15', '2022-07-20 02:19:15'),
(2, '2021', '170000', '2021-07-20 02:19:15', '2022-07-20 02:19:15'),
(3, '2022', '175000', '2021-07-20 02:19:15', '2022-07-20 02:19:15'),
(4, '2023', '0', '2021-07-20 02:19:15', '2022-07-20 02:19:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin123', 'admin@students.amikom.ac.id', NULL, '$2y$10$zDfvJK8w8Ap4yhcAtvDA7.N4.fCwJp42vAKnl.RP7TyIcp9pq7Sie', NULL, NULL, NULL, '2021-07-20 02:19:18', '2021-07-20 02:19:18'),
(2, 'adit123', 'adit@students.amikom.ac.id', NULL, '$2y$10$gNsvVKkEZQxRAO0Efd9Cnefp1SLJsNQMABZEb1T3/5lxqeNmRaAy6', NULL, NULL, NULL, '2021-07-20 02:19:18', '2021-07-20 02:19:18'),
(3, 'zaid', 'zaid@students.amikom.ac.id', NULL, '$2y$10$iARJBXmG.m7PrH/nf3OExOaHoAew7J3QLu6L3SmiSldzv.aCiLT72', NULL, NULL, NULL, '2021-07-20 02:19:19', '2021-07-20 02:19:19'),
(4, 'fardan bactian ', 'fardan@students.amikom.ac.id', NULL, '$2y$10$pNZvBUHRe1oHxEB0D2PfDO.uXIceluQo67VpL.tO0AqDsxYRu20Rq', NULL, NULL, NULL, '2021-07-20 02:19:20', '2021-07-20 02:19:20'),
(9, 'norman', NULL, NULL, '$2y$10$MGyxBpLFqHl4cL.8416GxOau7tIezHYmHlEtXqijSf7d//PU3fGFW', NULL, NULL, NULL, '2021-07-20 04:05:21', '2021-07-20 04:05:21'),
(10, 'umi ', NULL, NULL, '$2y$10$Az5WoMVzML6Ub3.Ii0TWjebiET5oQQijFu5UvWdLW17RK4hmVI7aS', NULL, NULL, NULL, '2021-07-20 04:05:48', '2021-07-20 04:05:48'),
(11, 'umi zubaidah', NULL, NULL, '$2y$10$okDK5U4ot8sqNxD8bTGMvu3brDnsYsbFBOFru7jcjG85JVqaiKlR6', NULL, NULL, NULL, '2021-07-20 04:06:11', '2021-07-20 04:06:11'),
(12, 'adit', NULL, NULL, '$2y$10$PA7Oruf0MIxs/XTgWZutv.zEpbQqtOPNRYKkH/fMR68gfKqSa7e4u', NULL, NULL, NULL, '2022-06-29 15:29:25', '2022-06-29 15:29:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembayaran_petugas_id_foreign` (`petugas_id`),
  ADD KEY `pembayaran_siswa_id_foreign` (`siswa_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `petugas_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_user_id_foreign` (`user_id`),
  ADD KEY `siswa_kelas_id_foreign` (`kelas_id`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
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
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `spp`
--
ALTER TABLE `spp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_petugas_id_foreign` FOREIGN KEY (`petugas_id`) REFERENCES `petugas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembayaran_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `petugas`
--
ALTER TABLE `petugas`
  ADD CONSTRAINT `petugas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
