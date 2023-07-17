-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 17 Jul 2023 pada 06.19
-- Versi server: 8.0.31
-- Versi PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2110010411ci4webgis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data`
--

DROP TABLE IF EXISTS `data`;
CREATE TABLE IF NOT EXISTS `data` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_master_data` int UNSIGNED NOT NULL,
  `kode_wilayah` varchar(7) NOT NULL,
  `nilai` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `data_id_master_data_foreign` (`id_master_data`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `data`
--

INSERT INTO `data` (`id`, `id_master_data`, `kode_wilayah`, `nilai`) VALUES
(1, 1, '11', 5870),
(2, 1, '12', 15311),
(3, 1, '13', 5758),
(4, 1, '14', 7899),
(5, 1, '15', 3927),
(6, 1, '16', 9000),
(7, 1, '17', 2151),
(8, 1, '18', 8825),
(9, 1, '19', 1658),
(10, 1, '21', 2502),
(11, 1, '31', 11034),
(12, 1, '32', 52786),
(13, 1, '33', 35959),
(14, 1, '34', 4065),
(15, 1, '35', 40646),
(16, 1, '36', 14249),
(17, 1, '51', 4586),
(18, 1, '52', 5376),
(19, 1, '53', 5971),
(20, 1, '61', 5433),
(21, 1, '62', 3031),
(22, 1, '63', 4578),
(23, 1, '64', 5041),
(24, 1, '65', 0),
(25, 1, '71', 2624),
(26, 1, '72', 3300),
(27, 1, '73', 9266),
(28, 1, '74', 3003),
(29, 1, '75', 1300),
(30, 1, '76', 1528),
(31, 1, '81', 1973),
(32, 1, '82', 1391),
(33, 1, '91', 1092),
(34, 1, '94', 3702);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kode_wilayah`
--

DROP TABLE IF EXISTS `kode_wilayah`;
CREATE TABLE IF NOT EXISTS `kode_wilayah` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode_wilayah` varchar(7) NOT NULL,
  `nama_wilayah` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `kode_wilayah`
--

INSERT INTO `kode_wilayah` (`id`, `kode_wilayah`, `nama_wilayah`) VALUES
(1, '11', 'ACEH'),
(2, '12', 'SUMATERA UTARA'),
(3, '13', 'SUMATERA BARAT'),
(4, '14', 'RIAU'),
(5, '15', 'JAMBI'),
(6, '16', 'SUMATERA SELATAN'),
(7, '17', 'BENGKULU'),
(8, '18', 'LAMPUNG'),
(9, '19', 'KEPULAUAN BANGKA BELITUNG'),
(10, '21', 'KEPULAUAN RIAU'),
(11, '31', 'DKI JAKARTA'),
(12, '32', 'JAWA BARAT'),
(13, '33', 'JAWA TENGAH'),
(14, '34', 'DI YOGYAKARTA'),
(15, '35', 'JAWA TIMUR'),
(16, '36', 'BANTEN'),
(17, '51', 'BALI'),
(18, '52', 'NUSA TENGGARA BARAT'),
(19, '53', 'NUSA TENGGARA TIMUR'),
(20, '61', 'KALIMANTAN BARAT'),
(21, '62', 'KALIMANTAN TENGAH'),
(22, '63', 'KALIMANTAN SELATAN'),
(23, '64', 'KALIMANTAN TIMUR'),
(24, '65', 'KALIMANTAN UTARA'),
(25, '71', 'SULAWESI UTARA'),
(26, '72', 'SULAWESI TENGAH'),
(27, '73', 'SULAWESI SELATAN'),
(28, '74', 'SULAWESI TENGGARA'),
(29, '75', 'GORONTALO'),
(30, '76', 'SULAWESI BARAT'),
(31, '81', 'MALUKU'),
(32, '82', 'MALUKU UTARA'),
(33, '91', 'PAPUA BARAT'),
(34, '94', 'PAPUA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_data`
--

DROP TABLE IF EXISTS `master_data`;
CREATE TABLE IF NOT EXISTS `master_data` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `master_data`
--

INSERT INTO `master_data` (`id`, `nama`) VALUES
(1, 'Jumlah Proyeksi Penduduk Menurut Provinsi 2023');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int NOT NULL,
  `batch` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2023-07-12-125627', 'App\\Database\\Migrations\\MasterData', 'default', 'App', 1689166730, 1),
(2, '2023-07-12-125643', 'App\\Database\\Migrations\\KodeWilayah', 'default', 'App', 1689166730, 1),
(3, '2023-07-12-125655', 'App\\Database\\Migrations\\Data', 'default', 'App', 1689166730, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
