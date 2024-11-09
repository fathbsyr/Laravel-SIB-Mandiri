-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2024 at 10:17 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_sib7`
--

-- --------------------------------------------------------

--
-- Table structure for table `agama`
--

CREATE TABLE `agama` (
  `id` int(11) NOT NULL,
  `agama` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `agama`
--

INSERT INTO `agama` (`id`, `agama`) VALUES
(1, 'Islam'),
(2, 'Hindu'),
(3, 'Kristen'),
(4, 'Konghucu');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kesatuan`
--

CREATE TABLE `kesatuan` (
  `id` int(11) NOT NULL,
  `kesatuan` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kesatuan`
--

INSERT INTO `kesatuan` (`id`, `kesatuan`) VALUES
(1, 'AD'),
(2, 'AL'),
(3, 'AU');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id` int(11) NOT NULL,
  `kota` varchar(45) NOT NULL,
  `provinsi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_04_015219_create_staff_table', 1),
(5, '2024_11_07_014618_create_personal_access_tokens_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personel`
--

CREATE TABLE `personel` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nrp` varchar(45) NOT NULL,
  `alamat` text NOT NULL,
  `agama_id` int(11) NOT NULL,
  `kesatuan_id` int(11) NOT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `personel`
--

INSERT INTO `personel` (`id`, `nama`, `nrp`, `alamat`, `agama_id`, `kesatuan_id`, `foto`) VALUES
(2, 'Sihombing', '5553035', 'Gang Horas', 3, 3, 'foto-2.jpg'),
(3, 'Edi S', '0000003', 'Halim', 1, 3, NULL),
(4, 'Yogi', '126519', 'Lampung', 1, 2, NULL),
(5, 'Wahyu', '535373', 'Bandung', 1, 3, NULL),
(6, 'Didik', '8989898', 'Bekasi', 1, 2, NULL),
(7, 'Prajurit 1', '0111221', 'Depok', 1, 1, NULL),
(9, 'dhuha', '02121210', 'Bogor', 1, 1, 'foto-6694ab0653b22.jpg'),
(11, 'Arip', '080697', 'Depok', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pimpinan`
--

CREATE TABLE `pimpinan` (
  `id` int(11) NOT NULL,
  `nrp` varchar(45) DEFAULT NULL,
  `nama` varchar(45) NOT NULL,
  `jabatan` varchar(45) NOT NULL,
  `pangkat` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pimpinan`
--

INSERT INTO `pimpinan` (`id`, `nrp`, `nama`, `jabatan`, `pangkat`) VALUES
(1, '012101', 'Sihombing', 'Komandan', 'komandan'),
(2, '01112133', 'Dino', 'Kapus', 'Kapten');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id` int(11) NOT NULL,
  `wilayah` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id`, `wilayah`) VALUES
(1, 'Banten'),
(2, 'Jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('KDtVgbkDmnpXLPbgts3jqGOXpJ5ICv9E6Diyy9Zr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib0o3Z2pQNUo4TmN0Y3J5UFlBWHhoSWJSSjJTSTBRcERNNXZOSm9LZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9zdGFmZiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730692221),
('Tm7Vcmip7cgNqWmZ5W2051bGypr5fWc8ktGWV6dw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVlYb05jWHNndlZFNFlMYk9aVHNMT3lrTHZEVllTRjVZQ0hKZ3oyUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9zdGFmZiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730777514);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nip` char(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `nip`, `name`, `alamat`, `email`, `created_at`, `updated_at`) VALUES
(1, '858', 'Reid Huels', '73930 Nettie Estate\nFunkburgh, KS 94430-1159', 'mmarquardt@example.org', NULL, NULL),
(2, '491', 'Baron Corwin', '6734 Rodrigo Branch Suite 603\nNicklausland, MA 05997', 'daphne.harvey@example.org', NULL, NULL),
(3, '974', 'Zander Hahn', '9169 Filomena Trace\nGoldachester, WI 71519', 'braun.ahmad@example.com', NULL, NULL),
(4, '854', 'Ardella Yundt', '98800 White Ridges Suite 131\nMacejkovicview, MO 01543-4642', 'runolfsdottir.sven@example.org', NULL, NULL),
(5, '043', 'Barry Ledner', '8321 Rosetta Streets\nLake Santa, TX 80179-8194', 'ghickle@example.com', NULL, NULL),
(6, '313', 'Myles Reichel', '7089 Millie Field\nMarilouland, WV 44223', 'alycia08@example.net', NULL, NULL),
(7, '613', 'Laura Swaniawski', '77470 Lind Loaf Suite 473\nLake Magalifurt, IN 38440', 'rkiehn@example.com', NULL, NULL),
(8, '495', 'Lorine Zboncak Sr.', '26296 Jean Shoal Apt. 132\nWest Kattie, OH 20988', 'molly.jacobi@example.com', NULL, NULL),
(9, '793', 'Orion Bahringer', '487 Prosacco Ford Suite 572\nWest Emil, IL 75889', 'bgrant@example.com', NULL, NULL),
(10, '745', 'Gerson Swift', '8358 Eve Alley\nHartmanntown, RI 18692', 'webster18@example.net', NULL, NULL),
(11, '076', 'Rene Fadel I', '11799 Susana Parkways\nSouth Ezequielbury, NY 98515', 'stroman.vince@example.net', NULL, NULL),
(12, '021', 'Mara Zemlak', '684 Stokes Manors Apt. 917\nLauriannebury, VT 52766-8291', 'angel.hammes@example.org', NULL, NULL),
(13, '488', 'Sophie Lind', '10179 Isobel Flats Suite 988\nSouth Josie, OR 65906', 'austin.von@example.net', NULL, NULL),
(14, '440', 'Elian O\'Reilly V', '41032 Okey Lodge Apt. 504\nQuentinville, ME 98972', 'frances65@example.com', NULL, NULL),
(15, '009', 'Fatima Schuster', '3281 Kuphal Pine\nLake Javierbury, UT 31903-1553', 'wilfrid.turner@example.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tembusan`
--

CREATE TABLE `tembusan` (
  `id` int(11) NOT NULL,
  `jabatan` varchar(45) NOT NULL,
  `tugas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tembusan`
--

INSERT INTO `tembusan` (`id`, `jabatan`, `tugas_id`) VALUES
(1, 'KadisOP', 1),
(2, 'Kadispers', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tugas`
--

CREATE TABLE `tugas` (
  `id` int(11) NOT NULL,
  `no_surat` varchar(45) NOT NULL,
  `mulai` date NOT NULL,
  `akhir` date NOT NULL,
  `menimbang` text DEFAULT NULL,
  `dasar` text DEFAULT NULL,
  `prihal` text DEFAULT NULL,
  `tanggal_pembuatan` date DEFAULT NULL,
  `provinsi_id` int(11) NOT NULL,
  `personel_id` int(11) NOT NULL,
  `pimpinan_id` int(11) NOT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tugas`
--

INSERT INTO `tugas` (`id`, `no_surat`, `mulai`, `akhir`, `menimbang`, `dasar`, `prihal`, `tanggal_pembuatan`, `provinsi_id`, `personel_id`, `pimpinan_id`, `foto`) VALUES
(1, '0111/VI/2024', '2024-07-11', '2024-07-15', NULL, NULL, NULL, NULL, 1, 6, 1, 'foto-1.jpg'),
(4, '02/AD/VII/2023', '2024-07-19', '2024-07-20', NULL, NULL, NULL, NULL, 1, 4, 1, 'foto-4.jpg'),
(5, '03/AU/VII/2024', '2024-07-23', '2024-07-21', 'Berdasarkan bla bla bla bla bla bla', NULL, NULL, NULL, 2, 4, 1, ''),
(6, '04/AD/VII/2024', '2024-07-23', '2024-07-25', 'Menimbang tes', 'Dasar Tes', 'Prihal Tes', '2024-07-23', 1, 2, 1, ''),
(7, '05/AD/VII/2024', '2024-07-24', '2024-07-26', '<p>Menimbang : Bahwa dalam rangka menindaklanjuti&nbsp;telegram Kadisdikau,&nbsp; perlu dikeluarkan surat perintah pelaksanaannya.</p>', '<p>Dasar : Telegram Kadisdikau Nomor T/25/2016 tanggal 13 Januari 2016 tentang rapat revisi Kurdik Sejursarta PDE.</p>', '<p>Untuk :&nbsp;</p><ol><li>Pergi&nbsp;Wingdikum Bogor dalam rangka mengikuti kegiatan rapat revisi Kurdik Sejursarta PDE, dengan ketentuan sebagai berikut:</li></ol><ul><li>Berangkat tanggal&nbsp;18 Januari 2016 kembali tanggal&nbsp;22&nbsp; Januari 2016, berkendaraan umum/bus/dll.</li><li>Biaya perjalanan dinas pergi pulang ditanggung oleh negara.</li></ul><p>&nbsp; &nbsp;2. Melaksanakan perintah ini dengan rasa tanggung jawab.</p>', '2024-07-20', 1, 3, 2, ''),
(8, '02/AU/VII/2025', '2024-07-25', '2024-07-27', '<p>test</p>', '<p>test</p>', '<p>test</p>', '2024-07-25', 1, 3, 1, ''),
(10, '10/AU/VII/2024', '2024-07-26', '2024-07-26', '<p>Test</p>', '<p>test</p>', '<p>test</p>', '2024-07-26', 1, 11, 1, 'foto-10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `kesatuan`
--
ALTER TABLE `kesatuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kota_provinsi1_idx` (`provinsi_id`);

--
-- Indexes for table `personel`
--
ALTER TABLE `personel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nrp_UNIQUE` (`nrp`),
  ADD KEY `fk_personel_agama_idx` (`agama_id`),
  ADD KEY `fk_personel_kesatuan1_idx` (`kesatuan_id`);

--
-- Indexes for table `pimpinan`
--
ALTER TABLE `pimpinan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jabatan_UNIQUE` (`jabatan`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tembusan`
--
ALTER TABLE `tembusan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tembusan_tugas1_idx` (`tugas_id`);

--
-- Indexes for table `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `no_surat_UNIQUE` (`no_surat`),
  ADD KEY `fk_tugas_provinsi1_idx` (`provinsi_id`),
  ADD KEY `fk_tugas_personel1_idx` (`personel_id`),
  ADD KEY `fk_tugas_pimpinan1_idx` (`pimpinan_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agama`
--
ALTER TABLE `agama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kesatuan`
--
ALTER TABLE `kesatuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personel`
--
ALTER TABLE `personel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pimpinan`
--
ALTER TABLE `pimpinan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tembusan`
--
ALTER TABLE `tembusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tugas`
--
ALTER TABLE `tugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kota`
--
ALTER TABLE `kota`
  ADD CONSTRAINT `fk_kota_provinsi1` FOREIGN KEY (`provinsi_id`) REFERENCES `provinsi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `personel`
--
ALTER TABLE `personel`
  ADD CONSTRAINT `fk_personel_agama` FOREIGN KEY (`agama_id`) REFERENCES `agama` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_personel_kesatuan1` FOREIGN KEY (`kesatuan_id`) REFERENCES `kesatuan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tembusan`
--
ALTER TABLE `tembusan`
  ADD CONSTRAINT `fk_tembusan_tugas1` FOREIGN KEY (`tugas_id`) REFERENCES `tugas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tugas`
--
ALTER TABLE `tugas`
  ADD CONSTRAINT `fk_tugas_personel1` FOREIGN KEY (`personel_id`) REFERENCES `personel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tugas_pimpinan1` FOREIGN KEY (`pimpinan_id`) REFERENCES `pimpinan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tugas_provinsi1` FOREIGN KEY (`provinsi_id`) REFERENCES `provinsi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
