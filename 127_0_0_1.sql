-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 03 Jun 2020 pada 12.58
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar_laravel`
--
CREATE DATABASE IF NOT EXISTS `belajar_laravel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `belajar_laravel`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` int(11) NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_06_03_000741_create_mahasiswa_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

DROP TABLE IF EXISTS `pegawai`;
CREATE TABLE IF NOT EXISTS `pegawai` (
  `pegawai_id` int(11) NOT NULL AUTO_INCREMENT,
  `pegawai_nama` varchar(50) NOT NULL,
  `pegawai_jabatan` varchar(20) NOT NULL,
  `pegawai_umur` int(11) NOT NULL,
  `pegawai_alamat` text NOT NULL,
  PRIMARY KEY (`pegawai_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`pegawai_id`, `pegawai_nama`, `pegawai_jabatan`, `pegawai_umur`, `pegawai_alamat`) VALUES
(1, 'damas', 'staf it', 28, 'Cikarang Baru'),
(2, 'juned', 'manager', 35, 'Cibitung'),
(4, 'Joni', 'Web desain', 25, 'jl. Sudirman'),
(5, 'Banara Maulana', 'praesentium', 39, 'Ds. Juanda No. 90, Pariaman 35682, KepR'),
(6, 'Kamidin Maryadi M.Farm', 'dolor', 34, 'Jr. Tambak No. 472, Banjarmasin 68340, Riau'),
(7, 'Padmi Handayani M.Ak', 'ut', 34, 'Jln. Adisumarmo No. 38, Lhokseumawe 77525, Banten'),
(8, 'Ophelia Suci Susanti', 'alias', 36, 'Kpg. Kalimantan No. 285, Sibolga 62202, Banten'),
(9, 'Gandi Saadat Hidayanto', 'qui', 28, 'Ki. Camar No. 532, Medan 59565, Aceh'),
(10, 'Mahdi Taufik Dongoran', 'eveniet', 31, 'Dk. Agus Salim No. 708, Sabang 18109, KalBar'),
(11, 'Kardi Dwi Wasita M.Pd', 'enim', 28, 'Jln. Basmol Raya No. 922, Padang 32020, SulUt'),
(12, 'Pia Mulyani', 'perspiciatis', 26, 'Ds. Abdullah No. 72, Bandung 42007, PapBar'),
(13, 'Nrima Wibowo', 'quia', 32, 'Kpg. Abdul Rahmat No. 777, Administrasi Jakarta Timur 51664, KalBar'),
(14, 'Dasa Sihombing', 'sit', 32, 'Jln. Siliwangi No. 917, Tangerang 30445, JaTim'),
(15, 'Karen Purwanti', 'necessitatibus', 39, 'Ki. Sam Ratulangi No. 110, Jambi 22128, KalTim'),
(16, 'Belinda Nasyiah', 'in', 39, 'Ki. Moch. Toha No. 304, Ternate 12197, Maluku'),
(17, 'Paramita Umi Nurdiyanti S.Ked', 'qui', 27, 'Ki. Abdul No. 427, Cimahi 87593, Papua'),
(18, 'Dacin Bakijan Rajasa', 'qui', 34, 'Kpg. Batako No. 999, Tebing Tinggi 36131, Lampung'),
(19, 'Bahuwirya Irwan Firmansyah', 'qui', 32, 'Jln. Bagas Pati No. 746, Palopo 96997, SulSel'),
(20, 'Dimas Hutapea', 'libero', 29, 'Gg. Bakau No. 754, Bitung 20931, KalSel'),
(21, 'Unjani Indah Hassanah', 'recusandae', 27, 'Ds. Merdeka No. 372, Palu 99004, KalTeng'),
(22, 'Umi Halimah', 'qui', 28, 'Jr. Ekonomi No. 918, Palu 93361, KalTeng'),
(23, 'Zelaya Permata S.T.', 'ullam', 33, 'Psr. Raden Saleh No. 364, Pariaman 30924, SulTra'),
(24, 'Calista Lintang Susanti', 'asperiores', 37, 'Kpg. Baing No. 948, Padangpanjang 53280, Banten'),
(25, 'Daliono Margana Pradana', 'voluptatem', 30, 'Psr. Sampangan No. 234, Bukittinggi 73508, SulTra'),
(26, 'Nardi Wahyudin', 'optio', 26, 'Jr. Baik No. 966, Singkawang 18696, KalUt'),
(27, 'Cahyono Manullang', 'soluta', 38, 'Jr. Honggowongso No. 408, Administrasi Jakarta Utara 13525, Banten'),
(28, 'Mahmud Bakiman Hutasoit S.I.Kom', 'nihil', 40, 'Psr. Monginsidi No. 464, Malang 46668, DKI'),
(29, 'Karen Puspasari', 'quidem', 40, 'Jln. Pahlawan No. 975, Malang 31098, KepR'),
(30, 'Suci Yolanda', 'iure', 39, 'Ds. W.R. Supratman No. 531, Banda Aceh 97261, KalTeng'),
(31, 'Umar Hasan Megantara S.Pt', 'vel', 32, 'Kpg. Monginsidi No. 638, Administrasi Jakarta Selatan 12939, Bengkulu'),
(32, 'Puti Winarsih', 'soluta', 31, 'Psr. Yap Tjwan Bing No. 131, Palembang 60199, JaTeng'),
(33, 'Carla Haryanti', 'quaerat', 38, 'Jr. Rajawali Timur No. 121, Mojokerto 34807, JaTim'),
(34, 'Asirwanda Rajata', 'deserunt', 35, 'Ds. Qrisdoren No. 817, Langsa 14712, JaTeng'),
(35, 'Cahyadi Wijaya', 'quae', 27, 'Jr. Raden Saleh No. 468, Kotamobagu 19722, KalUt'),
(36, 'Jaiman Winarno', 'enim', 40, 'Gg. Gambang No. 726, Padangpanjang 72796, SumUt'),
(37, 'Zaenab Susanti', 'quo', 29, 'Dk. Samanhudi No. 948, Banda Aceh 80106, Aceh'),
(38, 'Salimah Zalindra Zulaika S.E.', 'dolor', 30, 'Kpg. Bhayangkara No. 979, Jayapura 24504, BaBel'),
(39, 'Rachel Wijayanti', 'ut', 29, 'Kpg. Camar No. 933, Singkawang 97766, KalBar'),
(40, 'Ayu Farida', 'magni', 34, 'Dk. Tangkuban Perahu No. 602, Ambon 61490, Gorontalo'),
(41, 'Tirtayasa Nardi Pranowo', 'repellat', 26, 'Psr. Camar No. 823, Tidore Kepulauan 19238, Maluku'),
(42, 'Unggul Jabal Narpati', 'fugiat', 29, 'Jln. Imam Bonjol No. 372, Prabumulih 29940, KalSel'),
(43, 'Pia Yuni Yuliarti', 'aspernatur', 27, 'Jln. Bakin No. 272, Tidore Kepulauan 27908, DKI'),
(44, 'Tantri Jessica Mandasari S.Sos', 'vero', 29, 'Jr. Urip Sumoharjo No. 448, Pematangsiantar 93770, Lampung'),
(45, 'Laswi Purwa Siregar M.Pd', 'molestias', 29, 'Kpg. Ujung No. 38, Ternate 27696, SulUt'),
(46, 'Cemeti Marsito Anggriawan S.Kom', 'voluptas', 26, 'Jr. Bappenas No. 126, Palembang 48904, SulSel'),
(47, 'Jayadi Bahuwarna Prayoga', 'aut', 31, 'Gg. Baranang Siang Indah No. 382, Parepare 58126, Gorontalo'),
(48, 'Prasetyo Raditya Winarno M.Ak', 'rerum', 25, 'Psr. Setia Budi No. 948, Padang 99094, Maluku'),
(49, 'Raina Suryatmi', 'doloribus', 40, 'Kpg. Sampangan No. 635, Sorong 60805, SulTeng'),
(50, 'Halima Anggraini M.Pd', 'odio', 28, 'Ds. Setia Budi No. 408, Batu 64788, SulTeng'),
(51, 'Natalia Aryani', 'modi', 40, 'Jr. Bah Jaya No. 196, Surakarta 21271, Gorontalo'),
(52, 'Ciaobella Cici Novitasari', 'reprehenderit', 25, 'Dk. Raden Saleh No. 427, Tomohon 82789, BaBel'),
(53, 'Warji Laswi Saptono M.Ak', 'quae', 28, 'Jln. Arifin No. 300, Tasikmalaya 99724, DKI'),
(54, 'Lurhur Cawisono Hidayat', 'rerum', 25, 'Jln. B.Agam 1 No. 573, Salatiga 58566, MalUt');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`) USING HASH
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
--
-- Database: `db`
--
CREATE DATABASE IF NOT EXISTS `db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_analisa_hasil`
--

DROP TABLE IF EXISTS `tbl_analisa_hasil`;
CREATE TABLE IF NOT EXISTS `tbl_analisa_hasil` (
  `kd_analisa` int(11) NOT NULL AUTO_INCREMENT,
  `kd_virus` varchar(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kd_sesi` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  PRIMARY KEY (`kd_analisa`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_analisa_hasil`
--

INSERT INTO `tbl_analisa_hasil` (`kd_analisa`, `kd_virus`, `nama`, `kd_sesi`, `tanggal`) VALUES
(1, 'V1', 'Agus Saputra', 10, '2019-06-13 16:54:23'),
(2, 'V2', 'Agus Saputra', 10, '2019-06-13 17:01:16'),
(3, 'V5', 'Agus Saputra', 11, '2019-06-13 17:02:28'),
(4, 'V2', 'Agus Saputra', 11, '2019-06-13 17:04:28'),
(5, 'V1', 'Agus Saputra', 11, '2019-06-13 17:15:17'),
(6, 'V5', 'Agus Saputra', 11, '2019-06-14 07:17:40'),
(7, 'V1', 'Agus Saputra', 11, '2019-06-14 07:24:55'),
(8, 'V1', 'Agus Saputra', 11, '2019-06-14 07:25:34'),
(9, 'V1', 'Agus Saputra', 11, '2019-06-14 07:26:34'),
(10, 'V1', 'Agus Saputra', 12, '2019-06-14 07:26:59'),
(11, 'V1', 'Agus Saputra', 13, '2019-06-14 07:29:22'),
(12, 'V1', 'Agus Saputra', 14, '2019-06-14 07:29:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_gejala`
--

DROP TABLE IF EXISTS `tbl_gejala`;
CREATE TABLE IF NOT EXISTS `tbl_gejala` (
  `kd_gejala` varchar(11) NOT NULL,
  `nama_gejala` longtext DEFAULT NULL,
  `pertanyaan` longtext DEFAULT NULL,
  PRIMARY KEY (`kd_gejala`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_gejala`
--

INSERT INTO `tbl_gejala` (`kd_gejala`, `nama_gejala`, `pertanyaan`) VALUES
('G1', 'Task manager tidak dapat di akses/dibuka', 'Apakah Task manager tidak dapat di\r\nakses / dibuka?'),
('G10', 'Wallpaper tidak bisa dirubah', 'Apakah Wallpaper tidak bisa dirubah'),
('G11', 'Tampil Blue Screen ketika mengakses Fungsi Safe -Mode Windows', 'Apakah Tampil Blue Screen ketika mengakses Fungsi Safe-Mode Windows?'),
('G12', 'Banyak aplikasi tidak berfungsi dengan baik', 'Apakah banyak aplikasi tidak berfungsi\r\ndengan baik?'),
('G13', 'Tidak dapat mengupdate antivirus komputer', 'Apakah Tidak dapat mengupdate\r\nantivirus komputer?'),
('G14', 'Muncul pesan \"Windows Security Center Alert\" saat start Windows', 'Apakah Muncul pesan \"Windows\r\nSecurity Center Alert\" saat start\r\nWindows ?'),
('G15', 'Ketika PC terkoneksi dengan internet maka akan membuka web tertentu secara tiba - tiba', 'Apakah Ketika PC terkoneksi dengan\r\ninternet maka akan membuka\r\nweb tertentu secara tiba\r\n-tiba?'),
('G16', 'Pada desktop akan membuat file bernama Donâ€™t click.ini', 'Apakah Pada desktop akan membuat file bernama Donâ€™t click.ini?'),
('G17', 'Type file â€œShortcutâ€ [.lnk] mejadi â€œMovie Clip', 'Apakah Type file â€œShortcutâ€ [.lnk]\r\nmejadi â€œMovie Clip?'),
('G18', 'Registry editor (regedit) tidak bisa dibuka', 'Apakah Registry editor (regedit) tidak\r\nbisa dibuka?'),
('G19', 'Muncul Pop -up atau pesan pemberitahuan di monitor kepada user', 'Apakah Muncul Pop-up atau pesan pemberitahuan di monitor kepada user?'),
('G2', 'Antivirus atau removal tools di blok/tidak bisa dibuka', 'Apakah Antivirus atau removal tools di\r\nblok/tidak bisa dibuka?'),
('G20', 'Menu \"Start\" windows bergerak ke -kanan dan ke -kiri', 'Apakah Menu \"Start\" windows bergerak ke-kanan dan ke-kiri?'),
('G21', 'Terjadi perubahan pada nama pemilik Windows', 'Apakah Terjadi perubahan pada nama\r\npemilik Windows?'),
('G22', 'Muncul File Autorun.inf, Thumb.db, Microsoft.lnk di setiap driver, folder', 'Apakah Muncul File Autorun.inf, Thumb.db, Microsoft.lnk di setiap driver, folder?'),
('G23', 'Fitur yang terdapat pada Folder Option tidak lengkap', 'Apakah Fitur yang terdapat pada Folder\r\nOption tidak lengkap?'),
('G24', 'Username Login di active Directory (AD) windows terkunci berulang-ulang', 'Apakah Username Login di active Directory (AD) windows terkunci berulang-ulang?'),
('G25', 'Terdapat shortcut yang banyak ', 'Apakah Terdapat shortcut yang banyak ?'),
('G26', 'Muncul message error pada saat LogOn komputer', 'Apakah Muncul message error pada saat\r\nLogOn komputer?'),
('G27', 'Di folder My Documents terdapat sebuah file yang bernama database.mdb', 'Apakah Di folder My Documents terdapat sebuah file yang bernama database.mdb?'),
('G28', 'Munculnya pesan \"SHEMALE By CRY\" pada saat screen saver Windows aktif', 'Apakah Munculnya pesan \"SHEMALE By CRY\" pada saat screen saver Windows aktif?'),
('G29', 'Notifikasi jam/waktu tidak tampak pada taskbar', 'Apakah Notifikasi jam/waktu tidak\r\ntampak pada taskbar?'),
('G3', 'Menu run hilang dan tidak dapat dijalankan/di akses', 'Apakah Menu run hilang dan tidak dapat\r\ndijalankan/di akses?'),
('G30', 'Program winamp serta pengolah kata seperti MS Word di blok/tidak bisa dibuka', 'Apakah Program winamp serta pengolah kata seperti MS Word di blok/tidak bisa dibuka?'),
('G31', 'Pesan error saat menjalankan tools security tertentu', 'Apakah Pesan error saat menjalankan\r\ntools security tertentu ?'),
('G32', 'Icon MS Word berubah ektensi nya menjadi \"exe\"', 'Apakah Icon MS Word berubah ektensi\r\nnya menjadi \"exe\"?'),
('G33', 'Menampilkan pesan â€œMy World Welcome Shemale In To The World King Of The Worldâ€ pada saat membuka jendela Internet Explorer', 'Apakah tampil pesan â€œMy World Welcome Shemale In To The World King Of The Worldâ€ pada saat membuka jendela Internet Explorer?'),
('G34', 'Safe mode tidak dapat di akses/digunakan', 'Apakah Safe mode tidak dapat di akses/digunakan?'),
('G35', 'Tidak dapat mengakses situssitus tertentu ( antivirus/ windows)', 'Apakah Tidak dapat mengakses situs-situs tertentu ( antivirus/ windows)?'),
('G36', 'Ukuran file di komputer bertambah 68-80 kb dari ukuran semula', 'Apakah Ukuran file di komputer bertambah 68-80 kb dari ukuran semula?'),
('G37', 'Muncul pesan pada saat komputer pertama di hidupkan', 'Apakah Muncul pesan pada saat komputer pertama di hidupkan?'),
('G38', 'Drive CD/DVD-ROM selalu terbuka', 'Apakah Drive CD/DVD-ROM selalu\r\nterbuka?'),
('G39', 'Harddisk komputer-komputer mendadakpenuh dan mendapatkan peringatan â€œLow Disk Spaceâ€', 'Apakah Harddisk komputer-komputer mendadakpenuh dan mendapatkan peringatan â€œLow Disk Spaceâ€?'),
('G4', 'Muncul file dgn nama Kohoin.txt di setiap drive', 'Apakah muncul file dengan nama\r\nKohoin.txt di setiap drive?'),
('G40', 'File winsta.exe (C:windowsSystem32) yang bertambah besar menyesuaikan sisa ruang harddisk yang anda miliki (drive C atau system OS).', 'Apakah File winsta.exe (C:windowsSystem32) yang bertambah besar menyesuaikan sisa ruang harddisk yang anda miliki (drive C atau system OS)?'),
('G41', 'Software security di blok', 'Apakah software security di blok?'),
('G42', 'Menimbulkan notifikasi dari system windows yang menginformasikan bahwa sisa ruang harddisk anda sudah kosong', 'Apakah menimbulkan notifikasi dari system windows yang menginformasikan bahwa sisa ruang harddisk anda sudah kosong?'),
('G43', 'Muncul file dengan ekstensi EXE atau SCR serta menggunakan icon Microsoft Visual Basic Projek', 'Apakah muncul file dengan ekstensi EXE atau SCR serta menggunakan icon Microsoft Visual Basic Projek?'),
('G44', 'Semua folder pada USB di hidden (disembunyikan)', 'Apakah semua folder pada USB di hidden (disembunyikan)?'),
('G45', 'Tidak bisa mencetak data lewat printer, hal ini dilakukan dengan menginfeksi fileSpoolsv', 'Apakah Tidak bisa mencetak data lewat printer, hal ini dilakukan dengan menginfeksi fileSpoolsv?'),
('G46', 'Folder â€œC:Documents and Settingsâ€ di hidden (tidak tampak)', 'Apakah Folder â€œC:Documents and Settingsâ€ di hidden (tidak tampak)?'),
('G5', 'Command From (CMD) tidak bisa dibuka', 'Apakah command From (CMD) tidak\r\nbisa dibuka?'),
('G6', 'Tidak dapat mengakses Folder \"C:Windows\"', 'Apakah folder \"C:Windows\" tidak dapat dibuka?'),
('G7', 'Komputer menjadi lambat atau hang secara mendadak', 'Apakah komputer menjadi lambat atau hang secara mendadak?'),
('G8', 'Fungsi klik pada mouse berubah yaitu fungsi kiri menjadi klik kanan dan sebaliknya', 'Apakah fungsi klik pada mouse berubah\r\nyaitu fungsi kiri menjadi klik\r\nkanan dan sebaliknya ?'),
('G9', 'Folder option hilang/ disable', 'Apakah folder option hilang?');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kaidah`
--

DROP TABLE IF EXISTS `tbl_kaidah`;
CREATE TABLE IF NOT EXISTS `tbl_kaidah` (
  `kd_virus` varchar(11) DEFAULT NULL,
  `kd_gejala` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kaidah`
--

INSERT INTO `tbl_kaidah` (`kd_virus`, `kd_gejala`) VALUES
('V4', 'G6'),
('V4', 'G5'),
('V3', 'G5'),
('V4', 'G2'),
('V1', 'G1'),
('V1', 'G2'),
('V1', 'G18'),
('V1', 'G34'),
('V1', 'G35'),
('V1', 'G36'),
('V2', 'G1'),
('V2', 'G3'),
('V2', 'G7'),
('V2', 'G8'),
('V2', 'G19'),
('V2', 'G20'),
('V2', 'G29'),
('V2', 'G32'),
('V3', 'G4'),
('V3', 'G30'),
('V3', 'G37'),
('V4', 'G1'),
('V4', 'G17'),
('V4', 'G18'),
('V4', 'G28'),
('V4', 'G21'),
('V4', 'G31'),
('V4', 'G33'),
('V5', 'G1'),
('V5', 'G10'),
('V5', 'G9'),
('V5', 'G18'),
('V6', 'G18'),
('V6', 'G22'),
('V6', 'G25'),
('V6', 'G27'),
('V6', 'G26'),
('V7', 'G6'),
('V7', 'G14'),
('V7', 'G16'),
('V8', 'G7'),
('V8', 'G15'),
('V8', 'G11'),
('V8', 'G23'),
('V9', 'G12'),
('V9', 'G13'),
('V9', 'G24'),
('V9', 'G35'),
('V11', 'G26'),
('V11', 'G41'),
('V11', 'G43'),
('V11', 'G44'),
('V11', 'G46'),
('V10', 'G7'),
('V10', 'G39'),
('V10', 'G40'),
('V10', 'G42'),
('V10', 'G45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pakar`
--

DROP TABLE IF EXISTS `tbl_pakar`;
CREATE TABLE IF NOT EXISTS `tbl_pakar` (
  `kd_user` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pakar`
--

INSERT INTO `tbl_pakar` (`kd_user`, `nama`, `password`) VALUES
('agus', 'Agus Saputra Sijabat', '01c3c766ce47082b1b130daedd347ffd'),
('ferdy', 'Ferdyawan', 'f9af294304691d958534a8e06db9f19e');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sesi`
--

DROP TABLE IF EXISTS `tbl_sesi`;
CREATE TABLE IF NOT EXISTS `tbl_sesi` (
  `kd_sesi` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL DEFAULT '0',
  `tanggal` datetime NOT NULL,
  PRIMARY KEY (`kd_sesi`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_sesi`
--

INSERT INTO `tbl_sesi` (`kd_sesi`, `nama`, `tanggal`) VALUES
(11, 'Agus Saputra', '2019-06-13 17:01:33'),
(12, 'Agus Saputra', '2019-06-14 07:26:43'),
(13, 'Agus Saputra', '2019-06-14 07:28:59'),
(14, 'Agus Saputra', '2019-06-14 07:29:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tmp_analisa`
--

DROP TABLE IF EXISTS `tbl_tmp_analisa`;
CREATE TABLE IF NOT EXISTS `tbl_tmp_analisa` (
  `kd_sesi` int(11) DEFAULT NULL,
  `kd_virus` varchar(11) DEFAULT NULL,
  `kd_gejala` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tmp_gejala`
--

DROP TABLE IF EXISTS `tbl_tmp_gejala`;
CREATE TABLE IF NOT EXISTS `tbl_tmp_gejala` (
  `kd_sesi` int(11) DEFAULT NULL,
  `kd_gejala` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tmp_user`
--

DROP TABLE IF EXISTS `tbl_tmp_user`;
CREATE TABLE IF NOT EXISTS `tbl_tmp_user` (
  `id` int(11) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `kd_sesi` int(11) DEFAULT NULL,
  `tanggal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tmp_virus`
--

DROP TABLE IF EXISTS `tbl_tmp_virus`;
CREATE TABLE IF NOT EXISTS `tbl_tmp_virus` (
  `kd_sesi` int(11) DEFAULT NULL,
  `kd_virus` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_virus`
--

DROP TABLE IF EXISTS `tbl_virus`;
CREATE TABLE IF NOT EXISTS `tbl_virus` (
  `kd_virus` varchar(11) NOT NULL,
  `nama_virus` varchar(100) NOT NULL,
  `keterangan` longtext NOT NULL,
  `solusi` longtext NOT NULL,
  PRIMARY KEY (`kd_virus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_virus`
--

INSERT INTO `tbl_virus` (`kd_virus`, `nama_virus`, `keterangan`, `solusi`) VALUES
('V1', 'W32/Sality.AE', 'Virus yang menyebar dengan menginfeksi file executable dan upaya untuk men-download file berpotensi berbahaya dari internet. ', 'Hapus ketiga file berikut: oledsp32.dll, sysdll.dll, syslib32.dll (yang\r\nterdapat di C:WindowsSystem, C:WindowsSystem32,\r\nC:WinntSystem32 atau di salah satu folder berikut\r\nC:WindowsTemp, C:WinntTemp), dengan menggunakan\r\nrmsality (virus removal untuk virus sality dari Grisoft), download\r\nrmsality (virus removal untuk virus sality dari Grisoft) berisi tiga\r\nfile yang harus anda download ke dlm satu folder\r\nhttp://free.grisoft.com/ww.virus-removalkemudian download\r\nfileASSASSIN disini http://www.malwarebytes.org/fa-setup.exe,\r\nJika sudah tidak memungkinkan backup file yang tidak berektensi\r\n.EXE kemudian install ulang sistem operasi lalu intall antivirus\r\nseperti AVG, Norton, Avira.'),
('V10', 'StuxnetI', '-', '-'),
('V11', 'Shortcut UFD (Usb Flash Disk)', '-', '-'),
('V2', 'Virus Luna Maya', 'Menurut Adi Saputra, analis antivirus Vaksincom, virus \"Luna Maya\" merupakan virus lokal yang dibuat menggunakan bahasa pemrograman Visual Basic. ', 'Masuk pada mode \"safe mode\", tekan tombol F8 pada keyboard saat komputer dinyalakan kemudian masuk safe mode, Gunakan tools pengganti Task Manager dalam hal ini gunakan CurProcess (http://www.nirsoft.net/utils/cprocess.zip ) kemudian cari file virus\r\nâ€œAmoumain.exeâ€. Klik kiri file virus, kemudian pilih â€œKill Selected\r\nProcesses. apus file virus â€œLuna Mayaâ€ dengan ciri-ciri sebagai\r\nberikut (Memiliki type file â€œApplicationâ€ + Memiliki ukuran file â€œ37 kbâ€ + Memiliki icon file MS Word ) gunakan fungsi Search\r\nWindows dengan menggunakan filter file *.exe dan *.inf dan\r\nberukuran 37 kb hapus file virus utama seperti : Amoumain.exe,\r\nLuna Maya.exe, Love.exe, dan nt.bat Log-off komputer, kemudian\r\nlog-in kembali. Untuk anti virus bisa gunakan ansav, norman\r\nsecurity suit.'),
('V3', 'W32/Smallworm.GQK', 'Worms secara otomatis menyebar ke PC lain. Mereka dapat melakukan ini dalam beberapa cara, termasuk dengan menyalin sendiri ke removable drive, folder jaringan, atau menyebar melalui email.', 'Nonaktifkan â€œSystem Restoreâ€ selama proses pembersihan, matikan\r\nproses virus yang sedang aktif di memori dengan melalui Task\r\nManager dengan kombinasi tombol keyboard (Ctrl + Alt + Del)\r\nkemudian matikan proses virus pilih icon â€œWinampâ€ klik End\r\nProcess. Atau gunakan antivirus yang bisa membasmi virus tersebut\r\nseperti Avira, Avast atau antivirus lain yang update.'),
('V4', 'VBS/Autorun.BO', 'Worm: VBS / Autorun.BO adalah worm file skrip Windows (.WSF) yang menyebar ke semua drive logis sebagai file bernama \"usb $ 505 $ .wsf\".', 'Nonaktifkan â€œSystem Restoreâ€ selama proses pembersihan, Repair\r\nregistry Windows dengan menggunakan tools FIXREG.exe, Install\r\ntools Unlocker download ( http://unlocker.en.softonic.com ), hal ini\r\ndimaksudkan untuk menghapus beberapa folder/file yang tidak\r\ndapat dihapus secara manual . Hapus file virus berikut (C:Del.dll,\r\nC:LocalDiskC.dll, C:Autorun.inf (semua drive), C:Membership of\r\nShemale Lover.lnk, C:13. Michael Jackson - one day in your\r\nlife.mp4.lnk, C:Fotoq Imoets - http-facebook.com-profiles-123442-\r\nphotos-15595.jpeg.lnk, C:Michael Jackson ternyata belum mati -\r\nDetik.com.lnk, C:BOKEP ( New Release ) ) dengan menggunakan\r\nExploreXP ( http://www.explorerxp.com ) dan di dalam drive\r\nC:Windows hapus file berikut ini ( *appopen.dll , *appsys.exe,\r\n*desktop.ini, *dvcdrv.msc, *kernel32.dll, * regedit.exe.lnk,\r\n*regedit.exe (ukuran 68 KB), *speech.dll, *temporary files.dll,\r\n*welcomescreen.mht, *Windows.html, winsock01.exe (notepad),\r\n*Winupdt.tpx ) untuk di drive C:Windowssystem32 hapus file ini\r\n(appsys.dll, cmd.exe.lnk, encryptor.dll, taskmgr.exe.lnk,\r\nvga812.sys, Corelsetup.dll, Dvcrnme.dll, Regedit.exe (ukuran 68\r\nKB), Taskmgr.exe (ukuran 68 KB), CMD.exe (ukuran 68 KB) dan\r\nC:Recycled, C:Windowssystemsvchost.exe,\r\nC:ProgramFilesFarStoneqbtask.exe,C:Windowspchealthhelpctr\r\nbinariesmsconfig.exe,C:Windowssystem32dllchace (regedit.exe,\r\ntaskmgr.exe, cmd.exe,\r\nmsconfig.exe),C:DocumentandSetting\\%user%Desktop\r\nLocalDisk(c).lnk%Flash Disk%:Data-data Tugasku NITIP Jangan\r\nDihapus.lnk%Flash Disk%:Naughty America Album. Kemudian\r\nKosongkan/Empty pada Recycled bin (Klik kanan â€œRecycled\r\nbinâ€+Klik â€œEmpty Recycle binâ€), Copy file Regedit.exe, CMD.exe,\r\nTaskMgr.exe dan MSConfig.exe dari komuputer lain yang tidak\r\nbermasalah.'),
('V5', 'W32/Obfuscated.A!genr/virus cuakep', '-', '-'),
('V6', 'Worm:PIF/Starter.A/Virus Shortcut', '-', '-'),
('V7', 'Virus Sensei', '-', '-'),
('V8', 'W32/Xorer.AM/virus Safemode', '-', '-'),
('V9', 'Confliker', '-', '-');
--
-- Database: `dbtopik`
--
CREATE DATABASE IF NOT EXISTS `dbtopik` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbtopik`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pertanyaan`
--

DROP TABLE IF EXISTS `pertanyaan`;
CREATE TABLE IF NOT EXISTS `pertanyaan` (
  `id` varchar(10) NOT NULL,
  `pertanyaan` text NOT NULL,
  `bila_benar` varchar(10) NOT NULL,
  `bila_salah` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pertanyaan`
--

INSERT INTO `pertanyaan` (`id`, `pertanyaan`, `bila_benar`, `bila_salah`) VALUES
('P01', '<center><i><h3>Apakah anda ingin membuat website ?</center></i>', 'P02', 'P12'),
('P02', '<center><i><h3>Apakah yang anda cari website untuk company profile ?</center></i>', 'P07', 'P03'),
('P03', '<center><i><h3>Apakah yang anda cari website untuk penjualan ?</center></i>', 'P08', 'P04'),
('P04', '<center><i><h3>Apakah yang anda cari website untuk edukasi ?</center></i>', 'P09', 'P05'),
('P05', '<center><i><h3>Apakah yang anda cari website untuk sosial media ?</center></i>', 'P23', 'P06'),
('P06', '<center><i><h3>Apakah yang anda cari website untuk media informasi ?</center></i>', 'P11', 'S11'),
('P07', '<center><i><h3>Apakah anda menggunakan bahasa pemrograman PHP ?</center></i>', 'P28', 'P32'),
('P08', '<center><i><h3>Apakah anda sudah memiliki data yang lengkap untuk website penjualan tersebut ?</center></i>', 'P34', 'P35'),
('P09', '<center><i><h3>Apakah anda sudah memiliki data yang lengkap untuk website edukasi tersebut ?</center></i>', 'P36', 'P37'),
('P11', '<center><i><h3>Apakah anda sudah memiliki data yang lengkap untuk website media informasi tersebut ?</center></i>', 'P41', 'P42'),
('P12', '<center><i><h3>Apakah anda ingin membuat aplikasi mobile ?</center></i>', 'P13', 'P19'),
('P13', '<center><i><h3>Apakah yang anda cari aplikasi game ?</center></i>', 'P18', 'P14'),
('P14', '<center><i><h3>Apakah yang anda cari aplikasi untuk edukasi ?</center></i>', 'P24', 'P16'),
('P16', '<center><i><h3>Apakah yang anda cari aplikasi untuk berita ? </center></i>', 'P25', 'P17'),
('P17', '<center><i><h3>Apakah yang anda cari aplikasi untuk penjualan ?</center></i>', 'P27', 'S22'),
('P18', '<center><i><h3>Apakah anda menggunakan bahasa pemrograman Java ?</center></i>', 'P43', 'P46'),
('P19', '<center><i><h3>Apakah anda ingin membuat robotik ?</center></i>', 'P20', 'S23'),
('P20', '<center><i><h3>Apakah anda ingin membuat sensor suara ?</center></i>', 'P61', 'P21'),
('P21', '<center><i><h3>Apakah anda ingin membuat alat mini komputer ?</center></i>', 'P64', 'P22'),
('P22', '<center><i><h3>Apakah anda ingin membuat sensor suhu ?</center></i>', 'P72', 'P60'),
('P23', '<center><i><h3>Apakah anda menggunakan bahasa pemrograman PHP ?</center></i>', 'P38', 'P39'),
('P24', '<center><i><h3>Apakah anda menggunakan bahasa pemrograman Java ?</center></i>', 'P47', 'P52'),
('P25', '<center><i><h3>Apakah anda sudah mengetahui Metode penelitian yang akan digunakan untuk aplikasi Berita berbasis mobile ?</center></i>', 'P54', 'P55'),
('P27', '<center><i><h3>Apakah anda sudah mengetahui metode penelitian yang akan digunakan untuk topik aplikasi Penjualan berbasis mobile ?</center></i>', 'P57', 'P58'),
('P28', '<center><i><h3>Apakah anda sudah memiliki data yang lengkap untuk membuat website Company Profile ?</center></i>', 'P29', 'P30'),
('P29', '<center><i><h3>Apakah anda sudah memiliki beberapa contoh referensi Judul untuk website Company Profile ?</center></i>', 'S02', 'S01'),
('P30', '<center><i><h3>Apakah anda yakin masih ingin memilih website Company Profile ?</center></i>', 'P29', 'P01'),
('P31', '<center><i><h3>Apakah anda sudah memiliki beberapa contoh referensi Judul untuk website Company Profile ?</center></i>', 'S29', 'S28'),
('P32', '<center><i><h3>Apakah anda sudah memiliki data yang lengkap untuk membuat website Company Profile ?</center></i>', 'P31', 'P33'),
('P33', '<center><i><h3>Apakah anda yakin masih ingin memilih website Company Profile ?</center></i>', 'P31', 'P01'),
('P34', '<center><i><h3>Apakah anda sudah memilih beberapa referensi contoh judul untuk website Penjualan ?</center></i>', 'S03', 'S30'),
('P35', '<center><i><h3>Apakah anda yakin masih ingin memilih website Penjualan ?</center></i>', 'P34', 'P01'),
('P36', '<center><i><h3>Apakah anda sudah memiliki beberapa referensi judul untuk website Edukasi ?</center></i>', 'S05', 'S31'),
('P37', '<center><i><h3>Apakah anda masih yakin ingin memilih website Edukasi ?</center></i>', 'P36', 'P01'),
('P38', '<center><i><h3>Apakah anda sudah memiliki beberapa referensi judul untuk website Sosial Media ?</center></i>', 'S07', 'S32'),
('P39', '<center><i><h3>Apakah anda ingin mencoba topik Aplikasi Sosial Media berbasis Mobile ?</center></i>', 'P40', 'P01'),
('P40', '<center><i><h3>Apakah anda sudah memiliki beberapa referensi Judul untuk Aplikasi Sosial Media berbasis Mobile ?</center></i>', 'S34', 'S33'),
('P41', '<center><i><h3>Apakah anda sudah memiliki beberapa contoh referensi judul website media informasi ?</center></i>', 'S09', 'S35'),
('P42', '<center><i><h3>Apakah anda yakin masih ingin memilih website media informasi ?</center></i>', 'P41', 'P01'),
('P43', '<center><i><h3>Apakah anda sudah memiliki beberapa referensi judul untuk membuat aplikasi Game berbasis mobile ?</center></i>', 'P44', 'P45'),
('P44', '<center><i><h3>Apakah anda sudah mengetahui metode penelitian yang akan digunakan dalam membuat aplikasi Game ?</center></i>', 'S36', 'P45'),
('P45', '<center><i><h3>Apakah anda yakin masih ingin memilih aplikasi Game berbasis mobile ?</center></i>', 'S37', 'P01'),
('P46', '<center><i><h3>Apakah anda sudah memiliki beberapa referensi judul untuk membuat aplikasi Game berbasis mobile ?</center></i>', 'S38', 'S39'),
('P47', '<center><i><h3>Apakah anda sudah mengetahui beberapa contoh aplikasi Edukasi berbasis mobile ?</center></i>', 'P48', 'P50'),
('P48', '<center><i><h3>Apakah anda sudah memiliki beberapa referensi judul untuk membuat aplikasi Edukasi berbasis mobile ?</center></i>', 'S41', 'P49'),
('P49', '<center><i><h3>Apakah anda yakin masih ingin memilih aplikasi Edukasi berbasis mobile ?</center></i>', 'S40', 'P01'),
('P50', '<center><i><h3>Apakah anda sudah memiliki beberapa referensi judul untuk membuat aplikasi Edukasi berbasis mobile ?</center></i>', 'S41', 'P51'),
('P51', '<center><i><h3>Apakah anda yakin masih ingin memilih aplikasi Edukasi berbasis mobile ?</center></i>', 'S40', 'P01'),
('P52', '<center><i><h3>Apakah anda sudah memiliki beberapa referensi judul untuk aplikasi Edukasi berbasis mobile dengan menggunakan macromedia flash ?</center></i>', 'S42', 'P53'),
('P53', '<center><i><h3>Apakah anda yakin masih ingin memilih aplikasi Edukasi berbasis mobile dengan macromedia flash ?</center></i>', 'S43', 'P01'),
('P54', '<center><i><h3>Apakah anda sudah memiliki beberapa referensi judul untuk aplikasi berita berbasis mobile ?</center></i>', 'S44', 'S45'),
('P55', '<center><i><h3>Apakah anda sudah memiliki beberapa referensi judul untuk membuat aplikasi Berita berbasis mobile ?</center></i>', 'S44', 'P56'),
('P56', '<center><i><h3>Apakah anda yakin masih ingin memilih aplikasi Berita berbasis mobile ?</center></i>', 'S45', 'P01'),
('P57', '<center><i><h3>Apakah anda sudah memiliki beberapa referensi judul untuk aplikasi Penjualan berbasis mobile ?</center></i>', 'S20', 'S46'),
('P58', '<center><i><h3>Apakah anda sudah memiliki beberapa referensi judul untuk membuat aplikasi Penjualan berbasis mobile beserta metode penelitiannya ?</center></i>', 'S20', 'P59'),
('P59', '<center><i><h3>Apakah anda yakin masih ingin memilih  aplikasi Penjualan berbasis mobile ?</center></i>', 'S46', 'P01'),
('P60', '<center><i><h3>Apakah anda ingin membuat alat pendeteksi ?</center></i>', 'P76', 'S27'),
('P61', '<center><i><h3>Apakah anda sudah memiliki beberapa referensi judul untul robotik alat sensor suara ?</center></i>', 'P62', 'P63'),
('P62', '<center><i><h3>Apakah anda sudah mengetahui bahasa pemrograman yang bisa digunakan dalam membuat robotik ?</center></i>', 'S47', 'S48'),
('P63', '<center><i><h3>Apakah anda yakin masih ingin memilih membuat alat sensor suara ?</center></i>', 'S49', 'P01'),
('P64', '<center><i><h3>Apakah anda sudah memiliki beberapa referensi judul untuk membuat robotik mini komputer ?</center></i>', 'P65', 'P70'),
('P65', '<center><i><h3>Apakah anda sudah mengetahui alat yang digunakan untuk membuat mini komputer ?</center></i>', 'P67', 'P66'),
('P66', '<center><i><h3>Apakah anda yakin masih ingin memilih Robotik mini komputer ?</center></i>', 'P68', 'P01'),
('P67', '<center><i><h3>Apakah anda sudah mengetahui bahasa pemrograman yang akan digunakan dalam membuat robotik ?</center></i>', 'S52', 'S50'),
('P68', '<center><i><h3>Apakah anda sudah mengetahui bahasa pemrograman yang akan digunakan untuk membuat robotik ?</center></i>\r\n', 'S53', 'S50'),
('P69', '<center><i><h3>Apakah anda sudah mengetahui alat yang digunakan untuk membuat mini komputer ?</center></i>\r\n', 'P71', 'S51'),
('P70', '<center><i><h3>Apakah anda yakin masih ingin memilih  robotik alat mini komputer ?</center></i>\r\n', 'P69', 'P01'),
('P71', '<center><i><h3>Apakah anda sudah mengetahui bahasa pemrograman yang akan digunakan untuk membuat robotik ?</center></i>', 'S52', 'S50'),
('P72', '<center><i><h3>Apakah anda sudah memiliki referensi judul untuk robotik alat sensor suhu ?</center></i>\r\n', 'P73', 'P74'),
('P73', '<center><i><h3>Apakah anda sudah mengetahui bahasa pemrograman yang akan digunakan untuk membuat robotik ?</center></i>', 'S55', 'S54'),
('P74', '<center><i><h3>Apakah anda yakin masih ingin memilih  robotik alat sensor suhu ?</center></i>', 'P75', 'P01'),
('P75', '<center><i><h3>Apakah anda sudah mengetahui bahasa pemrograman yang akan digunakan untuk membuat alat robotik sensor suhu ?</center></i>', 'S57', 'S56'),
('P76', '<center><i><h3>Apakah anda sudah memiliki referensi judul untuk robotik alat sensor deteksi ?</center></i>', 'P77', 'P79'),
('P77', '<center><i><h3>Apakah anda sudah mengetahui bahasa pemrograman yang akan digunakan untuk membuat robotik ?</center></i>', 'S58', 'S59'),
('P78', '<center><i><h3>Apakah anda sudah mengetahui bahasa pemrograman yang akan digunakan untuk membuat robotik alat sensor deteksi ?</center></i>', 'S61', 'S60'),
('P79', '<center><i><h3>Apakah anda yakin masih ingin memilih  robotik alat sensor deteksi ?</center></i>', 'P78', 'P01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pertanyaan2`
--

DROP TABLE IF EXISTS `pertanyaan2`;
CREATE TABLE IF NOT EXISTS `pertanyaan2` (
  `idd` varchar(10) NOT NULL,
  `pertanyaan2` text NOT NULL,
  `bila_benarr` varchar(10) NOT NULL,
  `bila_salahh` varchar(10) NOT NULL,
  PRIMARY KEY (`idd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pertanyaan2`
--

INSERT INTO `pertanyaan2` (`idd`, `pertanyaan2`, `bila_benarr`, `bila_salahh`) VALUES
('P01', '<center><i><h3>Do you want to create a Website ?</center></i>', 'P02', 'P12'),
('P02', '<center><i><h3>Are you looking a Website for Company Profile ?</center></i>', 'P07', 'P03'),
('P03', '<center><i><h3>Are you looking a Website for E- Commerce ?</center></i>', 'P08', 'P04'),
('P04', '<center><i><h3>Are you looking a Website for Education ?</center></i>', 'P09', 'P05'),
('P05', '<center><i><h3>Are you looking a Website for Social Media ?</center></i>', 'P23', 'P06'),
('P06', '<center><i><h3>Are you looking a Website for Information Media ?</center></i>', 'P11', 'S11'),
('P07', '<center><i><h3>Are you using PHP languange programming ?</center></i>', 'P28', 'P32'),
('P08', '<center><i><h3>Do you have complete datas for E- Commerce website ?</center></i>', 'P34', 'P35'),
('P09', '<center><i><h3>Do you have complete datas for Education website ?</center></i>', 'P36', 'P37'),
('P11', '<center><i><h3>Do you have complete datas for Information Media website ?</center></i>', 'P41', 'P42'),
('P12', '<center><i><h3>Do you want to create a Mobile Application ?</center></i>', 'P13', 'P19'),
('P13', '<center><i><h3>Are you looking a application for Game ?</center></i>', 'P18', 'P14'),
('P14', '<center><i><h3>Are you looking a application for Education ?</center></i>', 'P24', 'P16'),
('P16', '<center><i><h3>Are you looking a application for News ?</center></i>', 'P25', 'P17'),
('P17', '<center><i><h3>Are you looking a application for E- Commerce ?</center></i>', 'P27', 'S22'),
('P18', '<center><i><h3>Are you using Java languange programming ?</center></i>', 'P43', 'P46'),
('P19', '<center><i><h3>Do you want to create a Robotic ?</center></i>', 'P20', 'S23'),
('P20', '<center><i><h3>Do you want build Voice Recognition ?</center></i>', 'P61', 'P21'),
('P21', '<center><i><h3>Do you want build Mini Computer ?</center></i>', 'P64', 'P22'),
('P22', '<center><i><h3>Do you want build Temperature Sensor ?</center></i>', 'P72', 'P60'),
('P23', '<center><i><h3>Are you using PHP languange programming ?</center></i>', 'P38', 'P39'),
('P24', '<center><i><h3>Are you using Java languange programming ?</center></i>', 'P47', 'P52'),
('P25', '<center><i><h3>Do you already know the method that will be used for Mobile Based News Application ?</center></i>', 'P54', 'P55'),
('P27', '<center><i><h3>Do you already know the method that will be used for Mobile Based M-Commerce Application ?</center></i>', 'P57', 'P58'),
('P28', '<center><i><h3>Do you have complete datas for Company Profile website ?</center></i>', 'P29', 'P30'),
('P29', '<center><i><h3>Do you already have some reference titles for the Company Profile Website ?</center></i>', 'S02', 'S01'),
('P30', '<center><i><h3>Are you sure still want to choose Company Profile Website ?</center></i>', 'P29', 'P01'),
('P31', '<center><i><h3>Do you already have some reference titles for the Company Profile website ?</center></i>', 'S29', 'S28'),
('P32', '<center><i><h3>Do you have complete datas for Company Profile website ?</center></i>', 'P31', 'P33'),
('P33', '<center><i><h3>Are you sure you still want to choose Company Profile Website?</center></i>', 'P31', 'P01'),
('P34', '<center><i><h3>Do you already have some reference titles for the E-Commerce website ?</center></i>', 'S03', 'S30'),
('P35', '<center><i><h3>Are you sure you still want to choose E-Commerce website?</center></i>', 'P34', 'P01'),
('P36', '<center><i><h3>Do you already have some reference titles for the Education website ?</center></i>', 'S05', 'S31'),
('P37', '<center><i><h3>Are you sure you still want to choose Education website?</center></i>', 'P36', 'P01'),
('P38', '<center><i><h3>Do you already have some reference titles for the Social Media website ?</center></i>', 'S07', 'S32'),
('P39', '<center><i><h3>Do you want to try Mobile Social Media Application ?</center></i>', 'P40', 'P01'),
('P40', '<center><i><h3>Do you already have some Titles references for Mobile Social Media-based Apps ?</center></i>', 'S34', 'S33'),
('P41', '<center><i><h3>Do you already have some reference titles for the Information Media website ?</center></i>', 'S09', 'S35'),
('P42', '<center><i><h3>Are you sure you still want to choose Information Media website?</center></i>', 'P41', 'P01'),
('P43', '<center><i><h3>Do you already have some reference titles for Mobile Game Apps ?</center></i>', 'P44', 'P45'),
('P44', '<center><i><h3>Do you already know the methods that will be used in making Game applications Mobile Based ?</center></i>', 'S36', 'P45'),
('P45', '<center><i><h3>Are you sure you still want to choose Game Apps Mobile Based ?</center></i>', 'S37', 'P01'),
('P46', '<center><i><h3>Do you already have some reference titles for the Game Apps Mobile Based ?</center></i>', 'S38', 'S39'),
('P47', '<center><i><h3>Do you already know some Education Apps mobile based ?</center></i>', 'S40', 'P01'),
('P48', '<center><i><h3>Do you already have some reference titles for Education apps mobile based ?</center></i>', 'S41', 'P49'),
('P49', '<center><i><h3>Are you sure you still want to choose Education apps mobile based ?</center></i>', 'S40', 'P01'),
('P50', '<center><i><h3>Do you already have some reference titles for Education apps mobile based ?</center></i>', 'S41', 'P51'),
('P51', '<center><i><h3>Are you sure you still want to choose Education apps mobile based ?</center></i>', 'S40', 'P01'),
('P52', '<center><i><h3>Do you already have some reference titles for Education apps mobile based using Macromedia Flash ?</center></i>', 'S42', 'P53'),
('P53', '<center><i><h3>Are you sure you still want to choose Education apps mobile based using Macromedia Flash ?</center></i>', 'S43', 'P01'),
('P54', '<center><i><h3>Do you already have some reference titles for News apps Mobile Based ?</center></i>', 'S44', 'S45'),
('P55', '<center><i><h3>Do you already have some reference titles for News Apps mobile based ?</center></i>', 'S44', 'P56'),
('P56', '<center><i><h3>Are you sure you still want to choose News apps mobile based ?</center></i>', 'S45', 'P01'),
('P57', '<center><i><h3>Do you already have some Title references for M-Commerce apps mobile based ?</center></i>', 'S20', 'S46'),
('P58', '<center><i><h3>Do you already have some Title references for M-Commerce apps mobile based and the method ?</center></i>', 'S20', 'P59'),
('P59', '<center><i><h3>Are you sure you still want to choose M-Commerce apps mobile based ?</center></i>', 'S46', 'P01'),
('P60', '<center><i><h3>Do you want build a Robotic Detector Sensor ?</center></i>', 'P76', 'S27'),
('P61', '<center><i><h3>Do you already have some reference titles for Robotic Voice Recognition ?</center></i>', 'P62', 'P63'),
('P62', '<center><i><h3>Do you already know programming language that can use for build Robotic ?</center></i>', 'S47', 'S48'),
('P63', '<center><i><h3>Are you sure you still want to choose build Robotic Voice Recognition Sensor ?</center></i>', 'S49', 'P01'),
('P64', '<center><i><h3>Do you already have some reference titles for build Robotic Mini Computer ?</center></i>', 'P65', 'P70'),
('P65', '<center><i><h3>Do you already know the tools that used to build Robotic Mini computer ?</center></i>', 'P67', 'P66'),
('P66', '<center><i><h3>Are you sure you still want to choose build Robotic Mini Computer ?</center></i>', 'P68', 'P01'),
('P67', '<center><i><h3>Do you already know programming languange that can used for build Robotic ?</center></i>', 'S52', 'S50'),
('P68', '<center><i><h3>Do you already know programming languange that can use for build Robotic ?</center></i>', 'S53', 'S50'),
('P69', '<center><i><h3>Do you already know the tools that can used for build Robotic Mini Computer ?</center></i>', 'P71', 'S51'),
('P70', '<center><i><h3>Are you sure you still want to choose build Robotic Mini Computer ?</center></i>', 'P69', 'P01'),
('P71', '<center><i><h3>Do you already know programming languange that can used for build Robotic ?</center></i>', 'S52', 'S50'),
('P72', '<center><i><h3>Do you already have some reference titles for build Robotic Temperature Sensor ?</center></i>', 'P73', 'P74'),
('P73', '<center><i><h3>Do you already know programming languange that can use for build Robotic ?</center></i>', 'S55', 'S54'),
('P74', '<center><i><h3>Are you sure you still want to choose build Robotic Temperature Sensor ?</center></i>', 'P75', 'P01'),
('P75', '<center><i><h3>Do you already know programming languange that can used for build Robotic Temperature Sensor ?</center></i>', 'S57', 'S56'),
('P76', '<center><i><h3>Do you already have some reference titles for build Robotic Detection Sensor ?</center></i>', 'P77', 'P79'),
('P77', '<center><i><h3>Do you already know programming languange that can used for build Robotic ?</center></i>', 'S58', 'S59'),
('P78', '<center><i><h3>Do you already know programming languange that can used for build Robotic Detection Sensor ?</center></i>', 'S61', 'S60'),
('P79', '<center><i><h3>Are you sure you still want to choose build Robotic Detection Sensor ?</center></i>', 'P78', 'P01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `solusi`
--

DROP TABLE IF EXISTS `solusi`;
CREATE TABLE IF NOT EXISTS `solusi` (
  `id` varchar(5) NOT NULL,
  `solusi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `solusi`
--

INSERT INTO `solusi` (`id`, `solusi`) VALUES
('S01', '<h3><B>Anda bisa mencoba topik Company Profile<Br><br>\r\nBerikut beberapa contoh referensi judul untuk website Company Profile: <Br><br>\r\n<a href=\"company1.php\" target=\"blank\">Company Profile di PT. BUANA MUKTI UTAMA Berbasis Web</a><Br><Br>\r\n<a href=\"company2.php\" target=\"blank\">Perancangan Company Profile Berbasis Web untuk Mempromosikan Tanjung Plaza Hotel Tretes</a><br><br>\r\n<a href=\"company3.php\" target=\"blank\">Perancangan Company Profile Lemon Tea Resto Berbasis Web sebagai Media Komunikasi dan Promosi</a>\r\n'),
('S02', '<h3><B>Anda bisa mencoba topik Company Profile '),
('S03', '<h3><B>Anda bisa mencoba topik website penjualan '),
('S05', '<h3><B>Anda bisa mencoba topik website edukasi \r\n'),
('S07', '<h3><B>Anda bisa mencoba topik website sosial media '),
('S08', '<h3><B>Anda bisa mencoba topik website sosial media berbasis mobile dengan bahasa pemrograman Java'),
('S09', '<h3><B>Anda bisa mencoba topik website media informasi'),
('S11', '<h3><B>Topik tidak diketahui, anda bisa mencoba memilih membuat aplikasi mobile / robotik'),
('S12', '<h3><B>Anda bisa mencoba topik aplikasi game berbasis macromedia flash'),
('S13', '<h3><B>Anda bisa mencoba topik aplikasi game'),
('S14', '<h3><B>Anda bisa mencoba topik aplikasi edukasi'),
('S15', '<h3><B>Anda bisa mencoba topik edukasi dengan menggunakan macromedia flash'),
('S20', '<h3><B>Anda bisa mencoba topik aplikasi penjualan berbasis mobile'),
('S22', '<h3><B>Topik tidak diketahui, anda bisa mencoba memilih membuat website / robotik'),
('S23', '<h3><B>Topik tidak diketahui, anda bisa memilih salah satu antara membuat website, aplikasi mobile, dan robotik\r\n'),
('S27', '<h3><B>Topik tidak diketahui, anda bisa mencoba memilih membuat aplikasi mobile / website'),
('S28', '<h3><B>Anda bisa mencoba topik company profile dengan menggunakan Macromedia Flash<Br><br>\r\nBerikut beberapa contoh referensi judul untuk Company Profile menggunakan Macromedia Flash: <Br><Br>\r\n<a href=\"company4.php\" target=\"blank\">Perancangan Aplikasi Company Profile PT. Mesana Group Berbasis Multimedia</a><Br><Br>\r\n<a href=\"company5.php\" target=\"blank\">Perancangan Company Profile Berbasis Multimedia sebagai Media Promosi dan Informasi WAROCK DISTRO GOMBONG</a><Br><Br>\r\n<a href=\"company6.php\" target=\"blank\">Perancangan Aplikasi Multimedia Interaktif Company Profile GENERIC (Studi Kasus CV. GANETIC)</a>\r\n'),
('S29', '<h3><B>Anda bisa mencoba topik website Company Profile dengan menggunakan Macromedia Flash'),
('S30', '<h3><B>Anda bisa mencoba topik penjualan<Br><bR>\r\nBerikut beberapa contoh referensi judul untuk website Penjualan: <br><br>\r\n<a href=\"penjualan1.php\" target=\"blank\">Aplikasi Penjualan Berbasis Web pada PT. PRATAPA NIRMALA PALEMBANG</a><br><br>\r\n<a href=\"penjualan2.php\" target=\"blank\">Perancangan Aplikasi Penjualan berbasis Web dengan Metode Prototyping pada CV KHATULISTIWA</a><br><br>\r\n<a href=\"penjualan3.php\" target=\"blank\">Sistem Informasi Penjualan Berbasis Web dengan Metodologi RAD (Studi Kasus: PT. SINTEX MECHATRONIC INDOJAYA)</a>'),
('S31', '<h3><B>Anda bisa mencoba topik Edukasi<Br><bR>\r\nBerikut beberapa contoh referensi judul untuk website Edukasi: <br><br>\r\n<a href=\"edukasi1.php\" target=\"blank\">Sistem Pembelajaran E-learning berbasis web</a><br><br>\r\n<a href=\"edukasi2.php\" target=\"blank\">Perancangan Aplikasi Sistem Pembelajaran Interaktif Bahasa Mandarin Berbasis Open Source E-Learning</a>'),
('S32', '<h3><B>Anda bisa mencoba topik Sosial Media<Br><bR>\r\nBerikut beberapa contoh referensi judul untuk website Sosial Media: <br><br>\r\n<a href=\"sosial1.php\" target=\"blank\">RANCANG BANGUN APLIKASI JEJARING SOSIAL UNTUK BERBAGI\r\nINFORMASI KEHILANGAN</a><br><br>\r\n<a href=\"sosial2.php\" target=\"blank\">APLIKASI JEJARING SOSIAL\r\nUNIVERSITAS MUHAMMADIYAH SURAKARTA\r\nBERBASIS HTML5 DAN PHP\r\n</a><br><br>\r\n<a href=\"sosial3.php\" target=\"blank\">PERANCANGAN WEB JEJARING SOSIAL PENELUSURAN ALUMNI\r\nSEKOLAH TINGGI TEKNOLOGI GARUT \r\n</a>'),
('S33', '<h3><B>Anda bisa mencoba topik Sosial Media<Br><bR>\r\nBerikut beberapa contoh referensi judul untuk Sosial Media berbasis Mobile: <br><br>\r\n<a href=\"sosial4.php\" target=\"blank\">Rancang Bangun Aplikasi Jejaring Sosial Kampus Berbasis GPS Pada Smartphone Android</a><br><br>\r\n<a href=\"sosial5.php\" target=\"blank\">APLIKASI SOCIAL NETWORK FOR SCHOOL\r\nBERBASIS MOBILE (STUDI KASUS SEKOLAH ISLAM AL-AZHAR JAWA TIMUR)</a>'),
('S34', '<h3><B>Anda bisa mencoba topik sosial media berbasis Mobile\r\n'),
('S35', '<h3><B>Anda bisa mencoba topik Media Informasi<Br><bR>\r\nBerikut beberapa contoh referensi judul untuk website Media Informasi: <br><br>\r\n<a href=\"informasi1.php\" target=\"blank\">Rancang Bangun Sistem Informasi Berbasis Website Sebagai Media Informasi Dan Pemasaran Pada Posyantek (Pos Pelayanan Teknologi) Studi Kasus : Posyantek Kecamatan Tegal Timur Kota Tegal</a><br><br>\r\n<a href=\"informasi2.php\" target=\"blank\">Perancangan Sistem Informasi Berbasis Web Sebagai Media\r\nInformasi dan Promosi pada MM Studio Musik\r\nBanjarnegara</a><br><br>\r\n<a href=\"informasi3.php\" target=\"blank\">PERANCANGAN MEDIA INFORMASI FORUM DISKUSI GURU BERBASIS WEB\r\n(Studi Kasus di SMPN 2 Cineam Kabupaten Tasikmalaya)</a>'),
('S36', '<h3><B>Anda bisa mencoba topik membuat aplikasi Game berbasis mobile'),
('S37', '<h3><B>Anda bisa mencoba topik membuat aplikasi Game berbasis mobile<br><br>\r\nberikut beberapa contoh judul aplikasi game berbasis mobile: <br><br>\r\n<a href=\"game1.php\" target=\"blank\">GAME EDUKASI PENGENALAN KEBUDAYAAN INDONESIA\r\nBERBASIS ANDROID</a><br><br>\r\n<a href=\"game2.php\" target=\"blank\">APLIKASI WORD PUZZLE GAME\r\nBERBASIS ANDROID</a><br><br>\r\n<a href=\"game3.php\" target=\"blank\">APLIKASI PERMAINAN TEKA-TEKI SILANG BERBASIS\r\nMOBILE MENGGUNAKAN JAVA 2 MICRO EDITION ( J 2 M E)</a>'),
('S38', '<h3><B>Anda bisa mencoba topik membuat aplikasi game berbasis mobile dengan menggunakan marcromedia flash'),
('S39', '<h3><B>Anda bisa mencoba topik aplikasi game berbasis mobile dengan menggunakan macromedia flash<br><Br>\r\nBerikut beberapa contoh judul aplikasi game berbasis mobile menggunakan macromedia flash: <Br><Br>\r\n<a href=\"game4.php\" target=\"blank\">PERANCANGAN MOBILE GAME EDUKATIF MEWARNAI GAMBAR\r\nDENGAN ADOBE FLASH CS5\r\n</a><br><br>\r\n<a href=\"game5.php\" target=\"blank\">GAME SEJARAH PERJUANGAN KAPITAN PATIMURA BERBASIS ANDROID</a><br><Br>\r\n<a href=\"game6.php\" target=\"blank\">MEMBANGUN GAME EDUKASI MATHEMATIC MAZE BERBASIS ANDROID\r\nUNTUK MENINGKATKAN KEMAMPUAN BERHITUNG PADA ANAK SEKOLAH\r\nDASAR</a>'),
('S40', '<h3><B>Anda bisa mencoba topik Edukasi berbasis mobile<Br><bR>\r\nBerikut beberapa contoh referensi judul untuk aplikasi Edukasi berbasis mobile: <br><br>\r\n<a href=\"edukasim1.php\" target=\"blank\">PERANCANGAN APLIKASI EDUKASI GIGI SEHAT\r\nBERBASIS ANDROID </a><br><br>\r\n<a href=\"edukasim2.php\" target=\"blank\">PENGENALAN BAHASA INGGRIS UNTUK ANAK MELALUI APLIKASI\r\nEDUKASI BERBASIS ANDROID</a><br><br>\r\n<a href=\"edukasim3.php\" target=\"blank\">PERANCANGAN APLIKASI GAME EDUKASI PEMBELAJARAN ANAK\r\nUSIA DINI MENGGUNAKAN LINEAR CONGRUENT METHOD (LCM)\r\nBERBASIS ANDROID</a>'),
('S41', '<h3><B>Anda bisa mencoba topik aplikasi Edukasi berbasis mobile'),
('S42', '<h3><B>Anda bisa mencoba topik aplikasi Edukasi berbasis mobile dengan menggunakan macromedia flash dan pemrograman ActionScript'),
('S43', '<h3><B>Anda bisa mencoba topik Edukasi berbasis mobile dengan menggunakan Macromedia Flash<Br><bR>\r\nBerikut beberapa contoh referensi judul untuk aplikasi Edukasi berbasis mobile dengan menggunakan macromedia flash: <br><br>\r\n<a href=\"edukasif1.php\" target=\"blank\">RANCANG BANGUN APLIKASI PEMBELAJARAN ANAK\r\nUSIA DINI BERBASIS ANDROID</a><br><br>\r\n<a href=\"edukasif2.php\" target=\"blank\">GAME PEMBELAJARAN ALAT MUSIK TRADISIONAL\r\nREBANA BERBASIS ANDROID</a><br><br>\r\n<a href=\"edukasif3.php\" target=\"blank\">PENGENALAN BAHASA INGGRIS UNTUK ANAK MELALUI APLIKASI\r\nEDUKASI BERBASIS ANDROID </a>'),
('S44', '<h3><B>Anda bisa mencoba topik aplikasi Berita berbasis mobile\r\n'),
('S45', '<h3><B>Anda bisa mencoba topik aplikasi Berita berbasis mobile<Br><bR>\r\nBerikut beberapa contoh referensi judul untuk aplikasi Berita berbasis mobile: <br><br>\r\n<a href=\"berita1.php\" target=\"blank\">Aplikasi Berita Mobile Pada Suaramerdeka.com Menggunakan\r\nPlatform Android\r\n</a><br><br>\r\n<a href=\"berita2.php\" target=\"blank\">APLIKASI MOBILE PORTAL BERITA GANTO.OR.ID BERBASIS ANDROID \r\n</a><br><br>\r\n<a href=\"berita3.php\" target=\"blank\">APLIKASI NEWS READER BERITA LOKAL\r\nBERBASIS ANDROID \r\n</a>'),
('S46', '<h3><B>Anda bisa mencoba topik aplikasi Penjualan berbasis mobile<Br><bR>\r\nBerikut beberapa contoh referensi judul untuk aplikasi Penjualan berbasis mobile: <br><br>\r\n<a href=\"penj1.php\" target=\"blank\">PERANCANGAN APLIKASI PENJUALAN BATIK BERBASIS\r\nANDROID</a><br><br>\r\n<a href=\"penj2.php\" target=\"blank\">APLIKASI PONSEL BERBASIS ANDROID UNTUK PENJUALAN\r\nPADA KIOS ECERAN Q-MONO FLOWER</a><br><br>\r\n<a href=\"penj3.php\" target=\"blank\">APLIKASI M-COMMERCE BERBASIS ANDROID PADA TOKO\r\nFANI BAGS</a>'),
('S47', '<h3><B>Anda bisa mencoba topik robotik membuat alat sensor suara '),
('S48', '<h3><B>anda bisa mencoba topik alat sensor suara dengan bahasa pemrograman diantaranya: C, C++, VB, PASCAL, ASSEMBLER'),
('S49', '<h3><B>anda bisa mencoba topik alat sensor suara dengan bahasa pemrograman diantaranya: C, C++, VB, PASCAL, ASSEMBLER<BR><BR>\r\nBerikut beberapa referensi judul untuk topik robotik alat sensor suara: <Br><Br>\r\n<a href=\"suara1.php\" target=\"blank\">APLIKASI PENGENALAN SUARA SEBAGAI PENGENDALI PERALATAN LISTRIK\r\nBERBASIS ARDUINO UNO\r\n</a><br><Br>\r\n<a href=\"suara2.php\" target=\"blank\">Implementasi Sistem Voice Recognition pada Robot Pemindah\r\nObjek sebagai Sistem Navigasi\r\n</a><br><br>\r\n<a href=\"suara3.php\" target=\"blank\">Rancang Bangun Robot Beroda dengan\r\nPengendali Suara</a>'),
('S50', '<h3><B>Anda bisa mencoba topik robotik alat mini komputer dengan menggunakan raspberry PI. dengan bahasa pemrograman diantaranya C, C++, VB, PASCAL, ASSEMBLER'),
('S51', '<h3><B>Anda bisa mencoba topik robotik alat mini komputer dengan menggunakan raspberry PI. dengan bahasa pemrograman diantaranya C, C++, VB, PASCAL, ASSEMBLER<bR><bR>\r\nBerikut beberapa referensi judul untuk topik robotik alat mini komputer dengan Raspberry PI:<br><br>\r\n<a href=\"pc1.php\" target=\"blank\">Deteksi Objek pada Arena Kontes Robot\r\nPemadam Api Indonesia Menggunakan Raspberry\r\nPi dan OpenCV</a><br><Br>\r\n<a href=\"pc2.php\" target=\"blank\">SISTEM MONITORING MENGGUNAKAN MINI PC RASPBERRY PI</a><br><br>\r\n<a href=\"pc3.php\" target=\"blank\">PENGEMBANGAN MODEL PUBLIC MONITORING SYSTEM\r\nMENGGUNAKAN RASPBERRY PI\r\n</a>'),
('S52', '<h3><B>Anda bisa mencoba topik robotik alat mini komputer'),
('S53', '<h3><B>Anda bisa mencoba topik robotik alat mini komputer dengan menggunakan Raspberry PI sebagai alatnya\r\n'),
('S54', '<h3><B>Anda bisa mencoba topik robotik membuat alat sensor suhu dengan menggunakan bahasa pemrograman C, C++, VB, PASCAL, ASSEMBLER'),
('S55', '<h3><B>Anda bisa mencoba topik robotik membuat alat sensor suhu'),
('S56', '<h3><B>Anda bisa mencoba topik robotik alat sensor suhu, dengan beberapa contoh bahasa pemrograman diantaranya C, C++, VB, PASCAL, ASSEMBLER<br><br>\r\nBerikut beberapa referensi judul untuk topik robotik alat sensor suhu: <br><BR>\r\n<a href=\"suhu1.php\" target=\"blank\">PERANCANGAN ALAT PENDETEKSI KEBAKARAN\r\nBERDASARKAN SUHU DAN ASAP BERBASIS\r\nMIKROKONTROLER AT89S52 </a><br><br>\r\n<A href=\"suhu2.php\" target=\"blank\">Rancang Bangun Prototipe Monitoring Suhu Tubuh Manusia Berbasis O.S Android Menggunakan Koneksi Bluetooth</a><br><br>\r\n<a href=\"suhu3.php\" target=\"blank\">SISTEM KENDALI SUHU DAN PEMANTAUAN KELEMBABAN UDARA RUANGAN BERBASIS ARDUINO UNO DENGAN MENGGUNAKAN SENSOR DHT22 DAN PASSIVE INFRARED (PIR)</a>'),
('S57', '<h3><B>Anda bisa mencoba topik robotik alat sensor suhu<br><br>\r\nBerikut beberapa referensi judul untuk topik robotik alat sensor suhu: <br><BR>\r\n<a href=\"suhu1.php\" target=\"blank\">PERANCANGAN ALAT PENDETEKSI KEBAKARAN\r\nBERDASARKAN SUHU DAN ASAP BERBASIS\r\nMIKROKONTROLER AT89S52 </a><br><br>\r\n<A href=\"suhu2.php\" target=\"blank\">Rancang Bangun Prototipe Monitoring Suhu Tubuh Manusia Berbasis O.S Android Menggunakan Koneksi Bluetooth</a><br><br>\r\n<a href=\"suhu3.php\" target=\"blank\">SISTEM KENDALI SUHU DAN PEMANTAUAN KELEMBABAN UDARA RUANGAN BERBASIS ARDUINO UNO DENGAN MENGGUNAKAN SENSOR DHT22 DAN PASSIVE INFRARED (PIR)</a>'),
('S58', '<h3><B>Anda bisa mencoba topik robotik alat sensor deteksi'),
('S59', '<h3><B>Anda bisa mencoba topik robotik alat sensor deteksi dengan  beberapa contoh bahasa pemrograman yang diantaranya C, C++, VB, PASCAL, ASSEMBLER'),
('S60', '<h3><B>Anda bisa mencoba topik robotik alat sensor deteksi, dengan beberapa contoh bahasa pemrograman diantaranya C, C++, VB, PASCAL, ASSEMBLER<br><br>\r\nBerikut beberapa referensi judul untuk topik robotik alat sensor deteksi: <br><BR>\r\n<a href=\"detek1.php\" target=\"blank\">ROBOT ULAR PENDETEKSI LOGAM BERBASIS\r\nMIKROKONTROLER )</a><br><br>\r\n<A href=\"detek2.php\" target=\"blank\">ROBOT PENDETEKSI WARNA</a><br><br>\r\n<a href=\"detek3.php\" target=\"blank\">PERANCANGAN ROBOT PENDETEKSI LINGKUNGAN\r\nBERBAHAYA BERBASIS LOGIKA FUZZY DAN KONTROL\r\nANDROID\r\n</a>'),
('S61', '<h3><B>Anda bisa mencoba topik robotik alat sensor deteksi<br><br>\r\nBerikut beberapa referensi judul untuk topik robotik alat sensor deteksi: <br><BR>\r\n<a href=\"detek1.php\" target=\"blank\">ROBOT ULAR PENDETEKSI LOGAM BERBASIS\r\nMIKROKONTROLER </a><br><br>\r\n<A href=\"detek2.php\" target=\"blank\">ROBOT PENDETEKSI WARNA</a><br><br>\r\n<a href=\"detek3.php\" target=\"blank\">PERANCANGAN ROBOT PENDETEKSI LINGKUNGAN\r\nBERBAHAYA BERBASIS LOGIKA FUZZY DAN KONTROL\r\nANDROID\r\n</a>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `solusi2`
--

DROP TABLE IF EXISTS `solusi2`;
CREATE TABLE IF NOT EXISTS `solusi2` (
  `idd` varchar(5) NOT NULL,
  `solusi2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `solusi2`
--

INSERT INTO `solusi2` (`idd`, `solusi2`) VALUES
('S01', '<h3><B>You can try Company Profile topic<Br><BR>\r\nHere are some examples of title references for Company Profile Website: <br><br>\r\n<a href=\"companyy1.php\" target=\"blank\">Company Profile in PT. BUANA MUKTI Web Based</a><br><Br>\r\n<a href=\"companyy2.php\" target=\"blank\">Web Basic Company Profile Programming to Promote Tanjung Plaza Tretes</a><br><br>\r\n<a href=\"companyy3.php\" target=\"blank\">Web Basic Lemon Tea Restaurant Company Profile Programming as Communication Media and Promotion\r\n'),
('S02', '<h3><B>You can try Company Profile topic'),
('S03', '<h3><B>You can try E- Commerce website Topic '),
('S05', '<h3><B>You can try Education website topic '),
('S07', '<h3><B>You can try Social Media website topic'),
('S08', '<h3><B>You can try Social Media website topic with mobile based using Java languange programming'),
('S09', '<h3><B>You can try Information Media website topic '),
('S11', '<h3><B>Unknown topic, You can try choosing Mobile Application or Robotic'),
('S12', '<h3><B>You can try Game application topic with Macromedia flash based'),
('S13', '<h3><B>You can try Game Application topic'),
('S14', '<h3><B>You can try Education Application topic'),
('S15', '<h3><B>You can try Education Application topic with Macromedia flash based'),
('S20', '<h3><B>You can try E- commerce Application Mobile Based topic'),
('S22', '<h3><B>Unknown topic, You can try choosing build Website or Robotic'),
('S23', '<h3><B>Unknown topic, You can try choose one from Build Website, Mobile Apps, and Robotic'),
('S27', '<h3><B>Unknown topic, You can try choosing build Mobile Application or Website'),
('S28', '<h3><B>You can try Company profile Website topic using Macromedia Flash<br><Br>\r\nHere are some examples of title references for Company Profile Website using Macromedia Flash: <br><br>\r\n<a href=\"companyy4.php\" target=\"blank\">Multimedia Basic Company Profile Application Programming of PT. MESANA GROUP</a><br><Br>\r\n<a href=\"companyy5.php\" target=\"blank\">Designing Company Profile Multimedia Based as Promotion Media and Information WAROCK DISTRO GOMBONG</a><br><Br>\r\n<a href=\"companyy6.php\" target=\"blank\">Interactive Multimedia Basic Application for Generic Company Profile (Case Study: CV GANETIC)'),
('S29', '<h3><B>You can try Company Profile Website using Macromedia Flash'),
('S30', '<h3><B>You can try E-commerce Website Topic<br><br>\r\nHere are some examples of title references for E-Commerce Website: <Br><Br>\r\n<a href=\"penjualann1.php\" target=\"blank\">Web Based Sales Application at PT. PRATAPA NIRMALA PALEMBANG</a><br><Br>\r\n<a href=\"penjualann2.php\" target=\"blank\">Designing Web-Based Sales Applications with Prototyping Method at CV KHATULISTIWA<br><br>\r\n<A href=\"penjualann3.php\" target=\"blank\">Web Based Sales Information System with RAD Methodology (Case Study: PT. SINTEX MECHATRONIC INDOJAYA)'),
('S31', '<h3><B>You can try Education Website Topic<br><br>\r\nHere are some examples of title references for Education Website: <Br><br>\r\n<A href=\"edukasii1.php\" target=\"blank\">Web Basic E-Learning Education System</a><br><br>\r\n<a href=\"edukasii2.php\" target=\"blank\">Interactive Mandarin Language Education System Programming with Open Source E-Learning Basic</a>'),
('S32', '<h3><B>You can try Social Media Website Topic<br><br>\r\nHere are some examples of title references for Social Media Website: <br><br>\r\n<A href=\"sosiall1.php\" target=\"blank\">Design Of Social Network Application For Sharing Loss Information</a><br><br>\r\n<a href=\"sosiall2.php\" target=\"blank\">Social Network Applications For Universitas Muhammadiyah Surakarta Based on HTML5 and PHP</a><br><br>\r\n<A href=\"sosiall3.php\" target=\"blank\">Design of Alumni Seeker Social Network Website for Sekolah Tinggi Teknologi Garut'),
('S33', '<h3><B>You can try Social Media apps mobile based topic<br><br>\r\nHere are some examples of title references for Social Media Apps Mobile Based:<br><br>\r\n<a href=\"sosiall4.php\" target=\"blank\">Design of GPS Based Campus Social Media Applications on Android Smartphone</a><br><br>\r\n<a href=\"sosiall5.php\" target=\"blank\">Application Social Media for School Mobile Based (Case Study: Sekolah ISLAM AL-AZHAR Jawa Timur</a>'),
('S34', '<h3><B>You can try Social Media apps mobile based topic'),
('S35', '<h3><B>You can try Information Media Website topic<br><Br>\r\nHere are some examples of title references for Information Media Website: <br><br>\r\n<A href=\"informasii1.php\" target=\"blank\">Information System Built Programming with Web Basic as Information Media and Marketing for Posyantek (Pos Pelayanan Terpadu) Case Study: Posyantek Kecamatan Tegal Timur Kota Tegal</a><br><br>\r\n<A href=\"informasii2.php\" target=\"blank\">Information System Programming with Web Basic as Information Media and Promotion for MM Music Studio Banjarnegara</a><br><br>\r\n<a href=\"informasii3.php\" target=\"blank\">Teacher Discussion Forum Information Media Programming with Web Basic (Case Study: SMPN 2 Cineam Kabupaten Tasikmalaya)</a>'),
('S36', '<h3><B>You can try build Game apps mobile based'),
('S37', '<h3><B>You can try build Game apps mobile based<br><br>\r\nHere are some examples of title references for Game Apps Mobile Based:<br><br>\r\n<a href=\"gamee1.php\" target=\"blank\">Indonesia Cultural Introduction Education Game with Android Basic</a><br><br>\r\n<a href=\"gamee2.php\" target=\"blank\">Word Puzzle Game Application with Android Basic</a><br><br>\r\n<a href=\"gamee3.php\" target=\"blank\">Crossword Puzzle Game Application with Mobile Basic Using Java 2 Micro Edition (J 2 M E)</a>'),
('S38', '<h3><B>You can try build Game apps mobile based topic using Macromedia Flash'),
('S39', '<h3><B>You can try build Game apps mobile based topic using Macromedia Flash<br><br>\r\nHere are some examples of title references for Game Apps Mobile Based using Macromedia Flash: <br><br>\r\n<A href=\"gamee4.php\" target=\"blank\">Image Coloring Educative Mobile Game Programming with Adobe Flash CS5</a><br><br>\r\n<a href=\"gamee5.php\" target=\"blank\">Kapitan Patimura Struggle History Game with Android Basic</a><br><br>\r\n<a href=\"gamee6.php\" target=\"blank\">Mathematic Maze Education Games Built with Android Basic to Accelerate Calculated Skill for Elementary School Children</A>'),
('S40', '<h3><B>You can try Education apps mobile based Topic<bR><bR>\r\nHere are some examples of title references for Education Apps Mobile Based:<br><br>\r\n<a href=\"edukasimm1.php\" target=\"blank\">Healthy Teeth Education Application Programming with Android Basic</a><br><br>\r\n<a href=\"edukasimm2.php\" target=\"blank\">English Introduction for Children Through Education Application with Android Basic</a><br><br>\r\n<a href=\"edukasimm3.php\" target=\"blank\">Early Childhood Learning Education Game Application Programming Using Linear Congruent Method (LCM) with Android Basic</a>'),
('S41', '<h3><B>You can try Education apps mobile based topic'),
('S42', '<h3><B>You can try Education apps mobile based using Macromedia Flash and ActionScript programming'),
('S43', '<h3><B>You can try Education apps mobile based topic using Macromedia Flash<br><br>\r\nHere are some examples of title references for Education Apps Mobile Based using Macromedia Flash: <br><Br>\r\n<a href=\"edukasiff1.php\" target=\"blank\">Early Childhood Education Application Built Programming with Android Basic</a><br><br>\r\n<A href=\"edukasiff2.php\" target=\"blank\">Rebana Traditional Musical Instrument Education Game with Android Basic</a><br><Br>\r\n<a href=\"edukasiff3.php\" target=\"blank\">English Introduction for Children Through Education Application with Android Basic</a>'),
('S44', '<h3><B>You can try News apps mobile based topic'),
('S45', '<h3><B>You can try News apps mobile based topic<br><Br>\r\nHere are some examples of title references for News Apps Mobile Based: <br><br>\r\n<a href=\"beritaa1.php\" target=\"blank\">Mobile News Application on Suaramerdeka.com Using Android Platform</a><br><br>\r\n<a href=\"beritaa2.php\" target=\"blank\">Android Basic News Portal Mobile Application Ganto.or.id</a><br><br>\r\n<A href=\"beritaa3.php\" target=\"blank\">Android Basic News Read Application</a>'),
('S46', '<h3><B>You can try M-Commerce apps mobile based topic<br><br>\r\nHere are some examples of title references for M-Commerce Apps Mobile Based:<br><br>\r\n<a href=\"penjj1.php\" target=\"blank\">Batik Sales Application Programming with Android Basic</a><br><br>\r\n<a href=\"penjj2.php\" target=\"blank\">Mobile Phone with Android Basic for Q-Mono Flower Retail Kiosks Sales</a><br><Br>\r\n<a href=\"penjj3.php\" target=\"blank\">Application M-Commerce Android Based for FANI BAGS Store</a>'),
('S47', '<h3><B>You can try build Robotic Voice Recognition Sensor topic'),
('S48', '<h3><B>You can try build Robotic Voice Recognition Sensor with programming languange: C, C++, VB, PASCAL, ASSEMBLER'),
('S49', '<h3><B>You can try build Robotic Voice Recognition Sensor with programming languange: C, C++, VB, PASCAL, ASSEMBLER<br><br>\r\nHere are some examples of title references for Robotik Voice Recognition:<br><br>\r\n<a href=\"suaraa1.php\" target=\"blank\">Voice Recognition Application as Electrical Equipment Controller Based on Arduino Uno</a><br><br>\r\n<a href=\"suaraa2.php\" target=\"blank\">Implementation of Voice Recognition System on Object Mover Robot as a Navigation System</a><br><br>\r\n<a href=\"suaraa3.php\" target=\"blank\">Wheeled Robot Built Programming with Voice Controller</a>'),
('S50', '<h3><B>You can try build Robotic Mini Computer topic using Raspberry PI with Programming languange: C, C++, VB, PASCAL, ASSEMBLER'),
('S51', '<h3><B>You can try build Robotic Mini Computer topic using Raspberry PI with Programming languange: C, C++, VB, PASCAL, ASSEMBLER<br><br>\r\nHere are some examples of title references for Robotik Mini Computer:<br><br>\r\n<a href=\"pcc1.php\" target=\"blank\">Object Detection at Indonesia Firefighters Robot Contest Arena using Raspberry PI and OpenCV</a><br><br>\r\n<a href=\"pcc2.php\" target=\"blank\">Monitoring System Using Mini PC Raspberry PI</a><br><br>\r\n<a href=\"pcc3.php\" target=\"blank\">Public Monitoring System Model Development using Raspberry PI</a>'),
('S52', '<h3><B>You can try build Robotic Mini Computer topic'),
('S53', '<h3><B>You can try build Robotic Mini Computer topic using Raspberry PI as its tool'),
('S54', '<h3><B>You can try build Robotic Temperature Sensor topic with using programming languange C, C++, VB, PASCAL, ASSEMBLER'),
('S55', '<h3><B>You can try build Robotic Temperature Sensor topic'),
('S56', '<h3><B>You can try build Robotic Temperature Sensor topic, with example programming languange: C, C++, VB, PASCAL. ASSEMBLER<br><br>\r\nHere are some examples of title references for Robotic Temperature Sensor:<br><br>\r\n<a href=\"suhuu1.php\" target=\"blank\">Design of Fire Detection Tools using Temperature and Smoke Based on AT89S52 Microcontroller</a><br><br>\r\n<a href=\"suhuu2.php\" target=\"blank\">Design of Human Body Temperature Monitoring Prototype Based on Android using Bluetooth Connection</a><br><br>\r\n<a href=\"suhuu3.php\" target=\"blank\">Temperature Controller System and Arduino Basic for Humidity Room using DHT22 Sensor and Infrared Passive (PIR)</a>'),
('S57', '<h3><B>You can try build Robotic Temperature Sensor topic<br><br>\r\nHere are some examples of title references for Robotic Temperature Sensor:<br><br>\r\n<a href=\"suhuu1.php\" target=\"blank\">Design of Fire Detection Tools using Temperature and Smoke Based on AT89S52 Microcontroller</a><br><br>\r\n<a href=\"suhuu2.php\" target=\"blank\">Design of Human Body Temperature Monitoring Prototype Based on Android using Bluetooth Connection</a><br><br>\r\n<a href=\"suhuu3.php\" target=\"blank\">Temperature Controller System and Arduino Basic for Humidity Room using DHT22 Sensor and Infrared Passive (PIR)</a>'),
('S58', '<h3><B>You can try build Robotic Detector Sensor topic'),
('S59', '<h3><B>You can try build Robotic Detector Sensor, with example programming languange C, C++, VB, PASCAL, ASSEMBLER'),
('S60', '<h3><B>You can try build Robotic Detector Sensor, with example programming languange C, C++, VB, PASCAL, ASSEMBLER<br><br>\r\nHere are some examples of title references for Robotic Detector Sensor: <br><br>\r\n<a href=\"detekk1.php\" target=\"blank\">Microcontroller Basic Metal Detection Snake Robot</a><br><br>\r\n<a href=\"detekk2.php\" target=\"blank\">Color Detection Robot</a><br><br>\r\n<a href=\"detekk3.php\" target=\"blank\">Dangerous Environment Detection Robot Programming with Android Control and Fuzzy Logic Basic</a>'),
('S61', '<h3><B>You can try build Robotic Detector Sensor<br><br>\r\nHere are some examples of title references for Robotic Detector Sensor: <br><br>\r\n<a href=\"detekk1.php\" target=\"blank\">Microcontroller Basic Metal Detection Snake Robot</a><br><br>\r\n<a href=\"detekk2.php\" target=\"blank\">Color Detection Robot</a><br><br>\r\n<a href=\"detekk3.php\" target=\"blank\">Dangerous Environment Detection Robot Programming with Android Control and Fuzzy Logic Basic</a>');
--
-- Database: `db_ciperpus306`
--
CREATE DATABASE IF NOT EXISTS `db_ciperpus306` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_ciperpus306`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

DROP TABLE IF EXISTS `buku`;
CREATE TABLE IF NOT EXISTS `buku` (
  `id_buku` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kode_buku` varchar(10) NOT NULL,
  `id_judul` int(10) UNSIGNED NOT NULL,
  `is_ada` enum('y','n') NOT NULL DEFAULT 'y',
  PRIMARY KEY (`id_buku`),
  UNIQUE KEY `uq_kode_buku` (`kode_buku`),
  KEY `fk_buku_judul` (`id_judul`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `kode_buku`, `id_judul`, `is_ada`) VALUES
(1, 'MRPM-01', 49, 'y'),
(2, 'BWSK-01', 50, 'y'),
(3, 'BWSK-02', 50, 'y'),
(4, 'AMSN-01', 51, 'y'),
(5, 'BONE-01', 89, 'y'),
(6, 'CARR-01', 88, 'y'),
(7, 'ANNAII-01', 87, 'y'),
(8, 'ANNAI-01', 86, 'y'),
(9, 'JACKAL-01', 85, 'y'),
(10, 'GODF-01', 84, 'y'),
(11, 'ALCHE-01', 83, 'y'),
(12, 'HEMING-01', 82, 'y'),
(13, 'EDEN-01', 81, 'y'),
(14, 'PEM-01', 80, 'y'),
(15, 'KOPI-01', 79, 'y'),
(16, 'RABI-01', 78, 'y'),
(17, 'INTI-01', 77, 'y'),
(18, 'MEGABI-01', 76, 'y'),
(19, 'MANBI-01', 75, 'y'),
(20, 'CESBI-01', 74, 'y'),
(21, 'KAMBI-01', 73, 'y'),
(22, 'FUMBI-01', 72, 'y'),
(23, 'POCMAT-01', 70, 'y'),
(24, 'JENFIS-01', 69, 'y'),
(25, 'OLIMFIS-01', 68, 'y'),
(26, 'CCPF-01', 67, 'y'),
(27, 'PRAKFIS-01', 66, 'y'),
(28, 'SMARFIS-01', 65, 'y'),
(29, 'SMAT-01', 64, 'y'),
(30, 'JAWMAT-01', 63, 'y'),
(31, 'JAGMAT-01', 62, 'y'),
(32, 'CCMAT-01', 60, 'y'),
(33, 'MEGAMAT-01', 59, 'y'),
(34, 'EXC-01', 54, 'y'),
(35, 'ZEXC-01', 55, 'y'),
(36, 'POWEXC-01', 56, 'y'),
(37, 'SERUMAT-01', 57, 'y'),
(38, 'SUPMAT-01', 58, 'y'),
(39, 'SERNUX-01', 52, 'y'),
(40, 'WORD-01', 53, 'y'),
(41, 'FRACI-01', 47, 'y'),
(42, 'FRACI-02', 47, 'y'),
(43, 'MUSH-01', 90, 'y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `denda`
--

DROP TABLE IF EXISTS `denda`;
CREATE TABLE IF NOT EXISTS `denda` (
  `id_pinjam` int(10) UNSIGNED NOT NULL,
  `jumlah` int(10) UNSIGNED NOT NULL,
  `tanggal_pembayaran` date NOT NULL,
  `is_dibayar` enum('y','n') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`id_pinjam`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

DROP TABLE IF EXISTS `gejala`;
CREATE TABLE IF NOT EXISTS `gejala` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kd_gejala` varchar(3) NOT NULL,
  `nama_gejala` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`id`, `kd_gejala`, `nama_gejala`) VALUES
(1, 'G01', 'Material hitam pekat'),
(2, 'G02', 'Material berdebu tebal'),
(3, 'G03', 'Material berdebu tipis'),
(4, 'G04', 'Suhu terlalu panas'),
(5, 'G05', 'Level chemical tidak standar'),
(6, 'G06', 'Material kasar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_ng`
--

DROP TABLE IF EXISTS `jenis_ng`;
CREATE TABLE IF NOT EXISTS `jenis_ng` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kd_NG` varchar(4) NOT NULL,
  `jenis_NG` varchar(20) NOT NULL,
  `definisi` varchar(255) NOT NULL,
  `solusi` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_nisn` (`kd_NG`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_ng`
--

INSERT INTO `jenis_ng` (`id`, `kd_NG`, `jenis_NG`, `definisi`, `solusi`) VALUES
(1, 'S01', 'Retak', 'material memiliki retakan dikarenakan kualitas bonde masih keras dan kasar', 'tambah waktu bonde.'),
(2, 'S02', 'Dies pecah', 'dies pecah dikarenakan material lebih keras dibandingkan dengan dies.', 'periksa level chemical bonde dan cek kehalusan debu.'),
(3, 'S03', 'Cacat', 'terdapat bagian yang tidak OK dikarenakan material tidak terbonde sempurna.', 'bonde ulang sehingga material OK.'),
(4, 'S04', 'Makikomi', 'makikomi atau retak pada bagian dalam diameter dikarenakan bonde yang tidak merata.', 'pisahkan material yang sudah dipress agar bagian yang memiliki lubang ikut terbonde.'),
(5, 'S05', 'Misrun', 'misrun dikarenakan material yang sudah terbonde terjatuh ke air sehingga debu bonde hilang.', 'bonde ulang material yang terjatuh.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `judul`
--

DROP TABLE IF EXISTS `judul`;
CREATE TABLE IF NOT EXISTS `judul` (
  `id_judul` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `isbn` varchar(15) NOT NULL DEFAULT '0',
  `judul_buku` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_judul`),
  UNIQUE KEY `uq_isbn` (`isbn`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `judul`
--

INSERT INTO `judul` (`id_judul`, `isbn`, `judul_buku`, `penulis`, `penerbit`, `cover`) VALUES
(47, '9789791758666', 'Membangun Web Berbasis PHP dengan Framework Codeigniter', 'Awan Pribadi Basuki', 'Lokomedia', '20160704064527.jpg'),
(49, '9791758603', 'Membongkar Rahasia Para Master PHP', 'Lukmanul Hakim', 'Lokomedia', '20160704064456.jpg'),
(50, '9789791758673', 'Bikin Website Super Keren dengan PHP dan JQquery', 'Lukmanul Hakim', 'Lokomedia', '20160704064424.jpg'),
(51, '9792905626', 'Ayo Memblok Situs Negatif', 'Onno W Purbo', 'Andi Publisher', '20160704064347.jpg'),
(52, '9789792902969', 'Workshop Onno: Panduan Mudah Merakit Menginstall Server Linux', 'Onno W Purbo', 'Andi Publisher', '20160704064247.jpg'),
(53, '9786020260006', 'Word 2013 Panduan Karya Tulis Ilmiah', 'Kristian Agung Prasetyo', 'Elex Media Komputindo', '20160704064224.jpg'),
(54, '9786020261430', 'Step by Step Excel 2013 Tanpa Guru', 'Arista Prasetyo Adi', 'Elex Media Komputindo', '20160704064205.jpg'),
(55, '9792947205', 'From Zero to Advance Macro Excel 2013', 'Wahana Komputer', 'Andi Publisher', '20160704064145.jpg'),
(56, '9786020261799', '125+ PowerTips untuk Excel 2007, 2010 & 2013', 'Christopher Lee', 'Elex Media Komputindo', '20160704064122.jpg'),
(57, '9789793833057', 'Belajar Seru Matematika SMP Kelas XII, VIII, IX', 'Adi Prasetia, S.Si', 'Pustaka Edukasia', '20160704064106.jpg'),
(58, '9786023080212', 'Rumus Super Matematika SMP/MTs Kelas 7, 8, 9 Resep Manjur Lulus Ujian', 'Tim Dian Cipta', 'Prima Ufuk', '20160704064005.jpg'),
(59, '9786021609712', 'Fresh Update Mega Bank Soal Matematika SMP Kelas 1, 2, 3', 'Tim Guru Eduka', 'CMedia', '20160704063941.jpg'),
(60, '9797752402', 'Cara Cepat & Mudah Taklukkan Matematika SMP', 'M. Alvianto S.Si', 'Indonesia Tera', '20160704063920.jpg'),
(62, '9789792942163', 'Jago Matematika SMP Kelas 7, 8, 9', 'TMBooks', 'Andi Publisher', '20160704063717.jpg'),
(63, '9789790830950', 'Jawara (Jadi Siswa Juara) Matematika Kelas 7, 8, 9 SMP', 'Purie Anggita, S.Si', 'Tangga Pustaka', '20160704063645.jpg'),
(64, '9789790830936', 'Smartdiary: Matematika SMP Kelas 7, 8, 9', 'Wijaya Kurnia Santoso', 'Tangga Pustaka', '20160704063623.jpg'),
(65, '9789797752392', 'Mini Smart Book Fisika SMP Kelas VII, VIII & IX', 'Hendri Hartanto', 'Indonesia Tera', '20160704063553.jpg'),
(66, '9786021137208', 'Buku Praktikum Fisika SMP/Mts Kelas 7, 8, 9', 'Diyono Harun', 'Laskar Aksara', '20160704063530.jpg'),
(67, '9789792942718', 'Cara Cespleng Pintar Fisika SMP Kelas 7, 8, 9', 'Agus Kamaludin', 'Andi Publisher', '20160704063501.jpg'),
(68, '9786021380222', 'Sukses Olimpiade Fisika SMP', 'Rini Khamilatul Ula, S.Pd., M.Si.', 'Dunia Cerdas', '20160704063432.jpg'),
(69, '9786022515142', 'Super Jenius Fisika SMP Kelas VII, VIII, IX', 'Sienta Sasika Novel', 'Grasindo', '20160704063402.jpg'),
(70, '9786021609088', 'Pocket Book: Matematika & Fisika SMP Kelas 1, 2 & 3', 'Tim Math Sains Eduka', 'CMedia', '20160704063339.jpg'),
(72, '9786021609729', 'Fresh Update Mega Bank Soal Bahasa Indonesia SMP Kelas 1, 2 & 3', 'Tim Guru Eduka', 'CMedia', '20160704063217.jpg'),
(73, '9786023040100', 'Kamus Detail Bahasa Indonesia Untuk SMP/MTs Kelas 1, 2 dan 3', 'Siti Nur\'aisyah, A.md', 'Kunci Aksara', '20160704063141.jpg'),
(74, '9789792942637', 'Cara Cespleng Pintar Bahasa Indonesia SMP Kelas 7, 8, 9', 'Agus Kamaludin, Niken Umiyati', 'Andi Publisher', '20160704063112.jpg'),
(75, '9786022416159', 'Mandiri Bahasa Indonesia untuk SMP/MTs VII', 'Tim Bahasa', 'Erlangga', '20160704063025.jpg'),
(76, '9786028596657', 'Mega Bank Soal Bahasa Indonesia SMP Kelas 1, 2 & 3', 'Tim Guru Eduka', 'CMedia', '20160704062854.jpg'),
(77, '9789797751685', 'Intisari Lengkap Bahasa Indonesia Untuk SD, SMP, SMA dan Umum', 'Moh. Kusnadi Wasrie', 'Indonesia Tera', '20160704062829.jpg'),
(78, '9789797751272', 'Rangkuman Bahasa Indonesia Lengkap untuk SD, SMP dan SMA', 'Acep Yonny', 'Indonesia Tera', '20160704062749.jpg'),
(79, '9786028811613', 'Filosofi Kopi: A Cofee Table Book', 'Dewi Dee Lestari', 'Bentang Pustaka', '20160704062723.jpg'),
(80, '9789793062921', 'Sang Pemimpi', 'Andrea Hirata', 'Bentang Pustaka', '20160704062700.jpg'),
(81, '9789791227025', 'Edensor', 'Andrea Hirata', 'Bentang Pustaka', '20160704062614.jpg'),
(82, '9789791684354', 'The Oldman and The Sea', 'Ernest Hemingway', 'Narasi', '20160704062427.jpg'),
(83, '9789792298406', 'The Alchemist', 'Paulo Coelho', 'Gramedia Pustaka Utama', '20160704062357.jpg'),
(84, '9789792286342', 'The Godfather', 'Mario Puzo', 'Gramedia Pustaka Utama', '20160704062328.jpg'),
(85, '9789790243569', 'The Day of The Jackal', 'Frederick Forsyth', 'Serambi', '20160704062306.jpg'),
(86, '9789799100603', 'Anna Karenina I', 'Leo Tolstoi', 'Kepustakaan Populer Gramedia', '20160704062236.jpg'),
(87, '9789799100665', 'Anna Karenina II', 'Leo Tolstoi', 'Kepustakaan Populer Gramedia', '20160704062207.jpg'),
(88, '9789792299519', 'Carrie', 'Stephen King', 'Gramedia Pustaka Utama', '20160704062040.jpg'),
(89, '9789796864379', 'Bag Of Bones', 'Stephen King', 'Gramedia Pustaka Utama', '20160704061649.jpg'),
(90, '9789792288131', 'Musashi', 'Eiji Yoshikawa', 'Gramedia Pustaka Utama', '20160704061536.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

DROP TABLE IF EXISTS `peminjaman`;
CREATE TABLE IF NOT EXISTS `peminjaman` (
  `id_pinjam` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tanggal_pinjam` date NOT NULL,
  `id_siswa` int(10) UNSIGNED NOT NULL,
  `id_buku` int(10) UNSIGNED NOT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `is_kembali` enum('y','n') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`id_pinjam`),
  KEY `fk_peminjaman_siswa` (`id_siswa`),
  KEY `fk_peminjaman_buku` (`id_buku`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `relasi`
--

DROP TABLE IF EXISTS `relasi`;
CREATE TABLE IF NOT EXISTS `relasi` (
  `id` int(11) NOT NULL,
  `kd_gejala` varchar(4) NOT NULL,
  `kd_NG` varchar(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `relasi`
--

INSERT INTO `relasi` (`id`, `kd_gejala`, `kd_NG`) VALUES
(1, 'G01', 'S01'),
(2, 'G03', 'S01'),
(3, 'G01', 'S02'),
(4, 'G02', 'S02'),
(5, 'G04', 'S02'),
(6, 'G06', 'S03'),
(7, 'G03', 'S04'),
(8, 'G03', 'S05'),
(9, 'G04', 'S05'),
(10, 'G05', 'S05'),
(11, 'G06', 'S05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('operator','admin') NOT NULL DEFAULT 'operator',
  `is_blokir` enum('y','n') NOT NULL DEFAULT 'n',
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `uq_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username`, `password`, `level`, `is_blokir`) VALUES
(1, 'administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'n'),
(2, 'awan pribadi', 'awan', 'e19cb7c038c2159012047e8b276bb6a2', 'operator', 'n');

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `fk_buku_judul` FOREIGN KEY (`id_judul`) REFERENCES `judul` (`id_judul`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `denda`
--
ALTER TABLE `denda`
  ADD CONSTRAINT `fk_denda_peminjaman` FOREIGN KEY (`id_pinjam`) REFERENCES `peminjaman` (`id_pinjam`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `db_gangguan_kehamilan`
--
CREATE DATABASE IF NOT EXISTS `db_gangguan_kehamilan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_gangguan_kehamilan`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pakar`
--

DROP TABLE IF EXISTS `data_pakar`;
CREATE TABLE IF NOT EXISTS `data_pakar` (
  `username` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `pertanyaan` varchar(50) NOT NULL,
  `jawaban` varchar(50) NOT NULL,
  `akses` varchar(5) NOT NULL DEFAULT 'pakar',
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_pakar`
--

INSERT INTO `data_pakar` (`username`, `password`, `pertanyaan`, `jawaban`, `akses`) VALUES
('admin', 'e10adc3949ba59abbe56e057f20f883e', 'Apa Makanan Favorit Anda?', 'bffa783a022fe2d98692014dda6d7a4c', 'pakar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_user`
--

DROP TABLE IF EXISTS `data_user`;
CREATE TABLE IF NOT EXISTS `data_user` (
  `username` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `usia` int(2) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `pertanyaan` varchar(50) NOT NULL,
  `jawaban` varchar(50) NOT NULL,
  `akses` varchar(4) NOT NULL DEFAULT 'user',
  PRIMARY KEY (`username`),
  UNIQUE KEY `username` (`username`),
  KEY `nama_user` (`nama_user`),
  KEY `usia` (`usia`),
  KEY `alamat` (`alamat`),
  KEY `jenis_kelamin` (`jenis_kelamin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_user`
--

INSERT INTO `data_user` (`username`, `password`, `nama_user`, `usia`, `jenis_kelamin`, `alamat`, `pertanyaan`, `jawaban`, `akses`) VALUES
('panji', 'e10adc3949ba59abbe56e057f20f883e', 'PANJI', 40, 'L', 'JAKARTA', 'Apa Makanan Favorit Anda?', '9bb98c41bffb2b44f24cf17e554158cf', 'user'),
('pipii', 'e10adc3949ba59abbe56e057f20f883e', 'pipii', 25, 'L', 'Kemayoran', 'Apa Makanan Favorit Anda?', 'bffa783a022fe2d98692014dda6d7a4c', 'user'),
('user1', 'e10adc3949ba59abbe56e057f20f883e', 'User 1', 27, 'P', 'Kemayoran, Jakarta Pusat', 'Apa Makanan Favorit Anda?', '8ee31981b5d2f28baa834fefc532249a', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

DROP TABLE IF EXISTS `gejala`;
CREATE TABLE IF NOT EXISTS `gejala` (
  `kode_gejala` varchar(4) NOT NULL,
  `nama_gejala` varchar(100) NOT NULL,
  `kode_induk_ya` varchar(4) NOT NULL,
  `kode_induk_tidak` varchar(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kode_gejala`),
  KEY `kode_induk_ya` (`kode_induk_ya`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`kode_gejala`, `nama_gejala`, `kode_induk_ya`, `kode_induk_tidak`) VALUES
('G001', 'Apakah tekanan darah lebih dari 120/80 mmHg ?', '', ''),
('G002', 'Apakah tekanan darah kurang dari 120/80 mmHg ?', '', 'G001'),
('G003', 'Apakah tekanan darah normal atau sama dengan 120/80 mmHg ?', '', 'G002'),
('G004', 'Apakah usia kehamilan kurang dari 20 minggu ?', 'G006', ''),
('G005', 'Apakah usia kehamilan lebih dari 20 minggu ?', '', 'G004'),
('G006', 'Apakah proteinuria/tes celup urine ?', 'G001', ''),
('G007', 'Apakah trombosit kurang dari 100.000 mm3 ?', 'G014', ''),
('G008', 'Apakah mengalami trismus/Gangguan pembukaan mulut ?', '', 'G013'),
('G009', 'Apakah sering kelelahan ?', 'G002', ''),
('G010', 'Apakah sebelumnya mengalami pingsan ?', 'G009', ''),
('G011', 'Apakah merasa depresi ?', 'G010', ''),
('G012', 'Apakah merasa stres ?', 'G011', ''),
('G013', 'Apakah sebelumnya mengalami kejang ?', '', 'G019'),
('G014', 'Apakah hasil Proteinuria 2.0 g/hari atau lebih dari 2+ dispstick ?', 'G005', ''),
('G015', 'Apakah hasil Proteinuria lebih dari 300 mg/hari atau lebih dari 1+dispstick ?', '', 'G014'),
('G016', 'Apakah mengalami oliguria/gangguan air kemih ?', 'G007', ''),
('G017', 'Apakah volume air kemih/hari kurang dari 400 ml/jam ?', 'G016', ''),
('G018', 'Apakah mengalami spasme otot/Ketegangan otot ?', 'G043', ''),
('G019', 'Apakah merasa sakit kepala ?', 'G003', ''),
('G020', 'Apakah tekanan darah meningkat > 160/110 mmHg ?', 'G031', ''),
('G021', 'Apakah pertumbuhan janin terhambat ?', 'G020', ''),
('G022', 'Apakah mengalami peningkatan kadar enzim ALT atau AST ?', 'G021', ''),
('G023', 'Apakah LDH/Laktat Dehidrogenase meningkat ?', 'G022', ''),
('G024', 'Apakah mengalami demam ?', 'G019', ''),
('G025', 'Apakah mengalami kaku kuduk ?', 'G024', ''),
('G026', 'Apakah mengalami disorientasi ?', 'G025', ''),
('G027', 'Apakah mengalami gangguan penglihatan ?', 'G028', ''),
('G028', 'Apakah mengalami muntah-muntah ?', '', 'G024'),
('G029', 'Apakah kesulitan untuk berkonsentrasi ?', 'G012', ''),
('G030', 'Apakah mengalami kejang yang terjadi bersifat menyeluruh ?', '', 'G035'),
('G031', 'Apakah merasa sakit kepala yang berat ?', 'G017', ''),
('G032', 'Apakah memiliki riwayat hipertensi sebelum kehamilan ?', 'G004', ''),
('G033', 'Apakah menderita multipara ?', 'G032', ''),
('G034', 'Apakah ada riwayat hipertensi menurun dalam keluarga ?', 'G033', ''),
('G035', 'Apakah proteinuria bersifat persisten ?', '', 'G015'),
('G036', 'Apakah mengalami sakit ulu hati ?', 'G035', ''),
('G037', 'Apakah mengalami trombositopeni ?', 'G036', ''),
('G038', 'Apakah memiliki riwayat epilepsi ?', 'G027', ''),
('G039', 'Apakah sebelumnya merasa hilang kesadaran ?', 'G026', ''),
('G040', 'Apakah merasa kaku di  muka ?', 'G008', ''),
('G041', 'Apakah merasa kaku di leher ?', 'G040', ''),
('G042', 'Apakah merasa kaku di tengkuk ?', 'G041', ''),
('G043', 'Apakah dinding perut terasa kaku ?', 'G042', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_diagnosa`
--

DROP TABLE IF EXISTS `hasil_diagnosa`;
CREATE TABLE IF NOT EXISTS `hasil_diagnosa` (
  `id_diagnosa` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `kode_penyakit` varchar(4) NOT NULL,
  `tanggal_diagnosa` datetime NOT NULL,
  `persentase` int(2) DEFAULT NULL,
  PRIMARY KEY (`id_diagnosa`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil_diagnosa`
--

INSERT INTO `hasil_diagnosa` (`id_diagnosa`, `username`, `kode_penyakit`, `tanggal_diagnosa`, `persentase`) VALUES
(3, 'rahman', 'P002', '2013-09-13 19:26:53', 80),
(4, 'rahman', 'P002', '2013-09-13 19:28:23', 60),
(5, 'rahman', 'P001', '2013-09-13 19:30:04', 90),
(6, 'rahman', 'P002', '2015-02-25 14:17:48', 120),
(7, 'rahman', '', '2015-02-25 14:21:43', 0),
(8, 'rahman', 'P002', '2015-02-26 11:45:15', 120),
(9, 'rahman', 'P001', '2015-02-26 11:50:25', 105),
(10, 'rahman', 'P002', '2015-02-26 11:52:42', 100),
(11, 'rahman', 'P002', '2015-02-26 17:47:52', 120),
(12, 'rahman', 'P002', '2015-03-03 10:30:46', 80),
(13, 'rahman', 'P002', '2015-03-03 10:31:55', 120),
(14, 'rahman', 'P002', '2015-03-03 10:40:24', 120),
(15, 'rahman', 'P002', '2015-03-03 11:08:16', 60),
(16, 'pipii', 'P002', '2018-05-22 20:57:35', 60),
(17, 'pipii', 'P002', '2018-05-22 21:03:54', 120),
(18, 'pipii', 'P001', '2018-05-22 22:54:25', 45),
(19, 'pipii', '', '2018-05-22 23:30:43', 0),
(20, 'pipii', '', '2018-05-22 23:31:20', 0),
(21, 'pipii', '', '2018-05-22 23:31:56', 0),
(22, 'pipii', '', '2018-05-22 23:32:14', 0),
(23, 'pipii', 'P002', '2018-05-22 23:33:58', 120),
(24, 'pipii', 'P002', '2018-05-22 23:34:38', 80),
(25, 'pipii', 'P002', '2018-05-22 23:34:56', 120),
(26, 'pipii', '', '2018-05-22 23:35:17', 0),
(27, 'pipii', '', '2018-05-22 23:35:50', 0),
(28, 'pipii', '', '2018-05-22 23:36:27', 0),
(29, 'pipii', 'P002', '2018-05-22 23:37:33', 120),
(30, 'pipii', 'P001', '2018-05-22 23:41:45', 40),
(31, 'pipii', '', '2018-05-22 23:43:16', 0),
(32, 'pipii', 'P001', '2018-05-22 23:46:14', 120),
(33, 'pipii', 'P002', '2018-05-22 23:46:30', 120),
(34, 'pipii', 'P001', '2018-05-22 23:47:22', 80),
(35, 'pipii', '', '2018-05-23 02:58:25', 0),
(36, 'pipii', '', '2018-05-23 02:58:44', 0),
(37, 'pipii', 'P001', '2018-05-23 03:02:45', 120),
(38, 'pipii', '', '2018-05-23 03:17:37', 0),
(39, 'pipii', 'P001', '2018-05-23 03:17:46', 10),
(40, 'pipii', '', '2018-05-23 03:18:16', 0),
(41, 'pipii', '', '2018-05-23 03:18:40', 0),
(42, 'pipii', 'P001', '2018-05-23 03:18:53', 10),
(43, 'pipii', 'P001', '2018-05-23 03:22:23', 80),
(44, 'pipii', 'P001', '2018-05-23 03:22:41', 60),
(45, 'pipii', 'P001', '2018-05-23 03:22:54', 60),
(46, 'pipii', 'P001', '2018-05-23 03:23:07', 60),
(47, 'pipii', 'P001', '2018-05-23 03:23:27', 30),
(48, 'pipii', 'P001', '2018-05-23 03:23:42', 60),
(49, 'pipii', 'P001', '2018-05-23 03:24:49', 60),
(50, 'pipii', 'P011', '2018-05-23 03:25:37', 60),
(51, 'pipii', 'P001', '2018-05-23 03:25:51', 10),
(52, 'pipii', 'P001', '2018-05-23 03:26:15', 10),
(53, 'pipii', 'P001', '2018-05-23 03:30:46', 30),
(54, 'pipii', 'P001', '2018-05-23 03:32:46', 30),
(55, 'pipii', 'P001', '2018-05-23 03:33:36', 60),
(56, 'pipii', 'P001', '2018-05-23 20:16:21', 30),
(57, 'pipii', 'P005', '2018-05-23 20:22:05', 60),
(58, 'pipii', '', '2018-05-23 20:23:10', 0),
(59, 'pipii', 'P001', '2018-05-23 20:25:09', 60),
(60, 'pipii', '', '2018-05-23 20:34:52', 0),
(61, 'pipii', 'P001', '2018-05-23 20:39:26', 60),
(62, 'pipii', '', '2018-05-23 20:39:55', 0),
(63, 'pipii', 'P001', '2018-05-23 20:40:54', 60),
(64, 'pipii', '', '2018-05-23 20:44:41', 0),
(65, 'pipii', 'P001', '2018-05-23 20:46:43', 60),
(66, 'pipii', 'P001', '2018-05-23 20:47:16', 60),
(67, 'pipii', 'P005', '2018-05-24 15:19:13', 60),
(68, 'pipii', 'P001', '2018-05-24 21:56:14', 340),
(69, 'pipii', 'P001', '2018-05-24 21:56:37', 20),
(70, 'pipii', 'P001', '2018-05-24 22:02:16', 60),
(71, 'pipii', 'P001', '2018-05-24 22:08:07', 120),
(72, 'pipii', 'P001', '2018-05-24 22:20:06', 100),
(73, 'pipii', 'P001', '2018-05-24 22:21:22', 60),
(74, 'pipii', 'P001', '2018-05-24 22:27:31', 90),
(75, 'pipii', 'P001', '2018-05-24 22:28:27', 60),
(76, 'pipii', 'P001', '2018-05-24 23:41:10', 100),
(77, 'pipii', 'P001', '2018-05-24 23:41:50', 60),
(78, 'pipii', '', '2018-05-24 23:42:47', 0),
(79, 'pipii', 'P001', '2018-05-25 00:51:48', 70),
(80, 'pipii', 'P001', '2018-05-25 00:52:03', 20),
(81, 'pipii', 'P001', '2018-05-25 00:52:16', 60),
(82, 'pipii', 'P001', '2018-05-25 00:53:12', 60),
(83, 'pipii', 'P001', '2018-05-25 01:02:11', 20),
(84, 'pipii', 'P001', '2018-05-25 01:02:33', 60),
(85, 'pipii', 'P001', '2018-05-25 01:05:01', 20),
(86, 'pipii', 'P001', '2018-05-25 01:05:08', 20),
(87, 'pipii', 'P001', '2018-05-25 01:05:19', 20),
(88, 'pipii', 'P001', '2018-05-25 01:05:32', 20),
(89, 'pipii', 'P001', '2018-05-25 01:17:21', 60),
(90, 'pipii', 'P001', '2018-05-25 01:52:01', 60),
(91, 'pipii', 'P001', '2018-05-25 01:57:56', 60),
(92, 'pipii', 'P001', '2018-05-25 01:58:42', 20),
(93, 'pipii', 'P001', '2018-05-25 01:58:52', 20),
(94, 'pipii', 'P001', '2018-05-25 01:59:00', 20),
(95, 'pipii', 'P001', '2018-05-25 02:01:42', 60),
(96, 'pipii', 'P001', '2018-05-25 02:01:53', 20),
(97, 'pipii', 'P001', '2018-05-25 02:02:07', 20),
(98, 'pipii', 'P001', '2018-05-25 02:02:18', 20),
(99, 'pipii', 'P001', '2018-05-25 03:04:07', 70),
(100, 'pipii', 'P001', '2018-05-25 03:04:34', 60),
(101, 'pipii', 'P001', '2018-05-25 03:08:04', 70),
(102, 'pipii', 'P001', '2018-05-25 03:08:19', 60),
(103, 'pipii', 'P001', '2018-05-25 03:11:28', 60),
(104, 'pipii', 'P001', '2018-05-25 03:11:47', 60),
(105, 'pipii', 'P001', '2018-05-25 03:12:31', 60),
(106, 'pipii', 'P001', '2018-05-25 03:12:48', 60),
(107, 'pipii', 'P001', '2018-05-25 03:13:51', 60),
(108, 'pipii', 'P001', '2018-05-25 03:17:44', 60),
(109, 'pipii', 'P001', '2018-05-25 03:20:47', 60),
(110, 'pipii', 'P001', '2018-05-25 03:22:10', 60),
(111, 'pipii', 'P001', '2018-05-25 03:22:21', 60),
(112, 'pipii', 'P001', '2018-05-25 03:25:49', 60),
(113, 'pipii', 'P001', '2018-05-25 03:26:22', 60),
(114, 'pipii', 'P001', '2018-05-25 03:30:40', 60),
(115, 'pipii', 'P001', '2018-05-25 03:32:42', 60),
(116, 'pipii', 'P001', '2018-05-25 03:35:58', 120),
(117, 'pipii', 'P001', '2018-05-25 03:37:27', 60),
(118, 'pipii', '', '2018-05-25 04:25:36', 0),
(119, 'pipii', 'P001', '2018-05-25 04:26:26', 20),
(120, 'pipii', 'P001', '2018-05-25 04:27:10', 140),
(121, 'pipii', 'P001', '2018-05-25 04:27:29', 60),
(122, 'pipii', 'P001', '2018-05-25 04:28:49', 20),
(123, 'pipii', 'P001', '2018-05-25 04:32:09', 60),
(124, 'pipii', 'P001', '2018-05-25 04:33:36', 180),
(125, 'pipii', 'P001', '2018-05-25 04:33:45', 60),
(126, 'pipii', 'P001', '2018-05-25 04:33:58', 60),
(127, 'pipii', 'P001', '2018-05-25 04:34:20', 60),
(128, 'pipii', 'P001', '2018-05-25 04:34:45', 60),
(129, 'pipii', 'P001', '2018-05-25 04:57:45', 90),
(130, 'pipii', 'P001', '2018-05-25 04:58:08', 150),
(131, 'pipii', 'P001', '2018-05-25 04:58:23', 60),
(132, 'pipii', 'P001', '2018-05-25 04:58:40', 60),
(133, 'pipii', 'P001', '2018-05-25 05:06:56', 60),
(134, 'pipii', 'P001', '2018-05-25 05:17:24', 20),
(135, 'pipii', 'P001', '2018-05-25 05:54:30', 70),
(136, 'pipii', 'P001', '2018-05-25 05:54:41', 60),
(137, 'pipii', 'P001', '2018-05-25 05:56:15', 60),
(138, 'pipii', 'P001', '2018-05-25 07:14:11', 60),
(139, 'pipii', 'P001', '2018-05-25 07:17:01', 130),
(140, 'pipii', 'P001', '2018-05-25 07:22:38', 220),
(141, 'pipii', 'P001', '2018-05-25 07:24:43', 60),
(142, 'pipii', 'P001', '2018-05-25 07:25:09', 70),
(143, 'pipii', 'P001', '2018-05-25 07:25:29', 60),
(144, 'pipii', 'P001', '2018-05-25 07:27:13', 60),
(145, 'pipii', 'P001', '2018-05-25 15:19:32', 60),
(146, 'pipii', 'P001', '2018-05-26 07:29:08', 110),
(147, 'pipii', 'P001', '2018-05-26 07:50:35', 60),
(148, 'pipii', 'P001', '2018-05-26 08:03:02', 60),
(149, 'pipii', '', '2018-05-26 08:10:47', 0),
(150, 'pipii', 'P001', '2018-05-26 08:13:43', 60),
(151, 'pipii', 'P001', '2018-05-26 08:19:56', 60),
(152, 'pipii', 'P001', '2018-05-26 08:58:45', 20),
(153, 'pipii', 'P011', '2018-05-26 08:59:30', 60),
(154, 'pipii', 'P005', '2018-05-26 09:06:35', 60),
(155, 'pipii', 'P011', '2018-05-26 09:07:33', 20),
(156, 'pipii', 'P001', '2018-05-26 09:08:04', 60),
(157, 'pipii', 'P001', '2018-05-26 09:27:51', 60),
(158, 'pipii', 'P005', '2018-05-26 15:11:00', 60),
(159, 'pipii', 'P001', '2018-05-26 16:45:48', 60),
(160, 'pipii', 'P005', '2018-05-27 22:37:06', 20),
(161, 'pipii', 'P001', '2018-05-29 00:34:56', 20),
(162, 'pipii', 'P001', '2018-05-29 00:43:04', 40),
(163, 'pipii', 'P001', '2018-05-29 00:59:09', 70),
(164, 'pipii', 'P001', '2018-05-29 01:01:39', 40),
(165, 'pipii', 'P001', '2018-05-29 01:15:49', 40),
(166, 'pipii', '', '2018-05-29 01:25:31', 0),
(167, 'pipii', 'P011', '2018-05-29 01:26:46', 60),
(168, 'pipii', 'P001', '2018-05-29 01:41:35', 360),
(169, 'pipii', 'P001', '2018-05-29 01:42:08', 60),
(170, 'pipii', 'P001', '2018-05-29 01:47:49', 80),
(171, 'pipii', 'P001', '2018-05-29 07:27:02', 50),
(172, 'pipii', 'P001', '2018-05-29 08:28:00', 10),
(173, 'pipii', 'P001', '2018-05-29 08:28:10', 10),
(174, 'pipii', 'P001', '2018-05-29 08:28:24', 40),
(175, 'pipii', 'P001', '2018-05-29 08:28:34', 10),
(176, 'pipii', 'P011', '2018-05-29 08:28:45', 10),
(177, 'pipii', '', '2018-05-29 15:06:56', 0),
(178, 'pipii', '', '2018-05-29 15:07:27', 0),
(179, 'pipii', 'P001', '2018-05-29 15:09:49', 60),
(180, 'pipii', 'P001', '2018-05-29 15:10:02', 40),
(181, 'pipii', 'P005', '2018-05-29 15:11:06', 60),
(182, 'pipii', 'P001', '2018-05-29 15:12:28', 10),
(183, 'pipii', '', '2018-05-29 15:14:37', 0),
(184, 'pipii', '', '2018-05-29 16:52:11', 0),
(185, 'pipii', 'P001', '2018-05-29 16:52:45', 60),
(186, 'pipii', 'P001', '2018-05-29 20:48:07', 60),
(187, 'pipii', 'P001', '2018-05-29 22:43:08', 60),
(188, 'pipii', 'P001', '2018-05-30 00:01:45', 60),
(189, 'pipii', '', '2018-05-30 03:29:57', 0),
(190, 'pipii', 'P001', '2018-05-31 19:58:25', 70),
(191, 'pipii', '', '2018-05-31 19:58:51', 0),
(192, 'pipii', '', '2018-05-31 20:00:23', 0),
(193, 'pipii', 'P001', '2018-05-31 20:14:18', 60),
(194, 'pipii', '', '2018-05-31 20:14:35', 0),
(195, 'pipii', '', '2018-05-31 20:15:22', 0),
(196, 'pipii', 'P001', '2018-05-31 20:17:09', 60),
(197, 'pipii', '', '2018-05-31 20:18:16', 0),
(198, 'pipii', 'P001', '2018-05-31 20:19:11', 60),
(199, 'pipii', 'P001', '2018-05-31 20:21:19', 120),
(200, 'pipii', 'P001', '2018-05-31 20:24:56', 60),
(201, 'pipii', '', '2018-05-31 20:25:29', 0),
(202, 'pipii', '', '2018-05-31 20:26:13', 0),
(203, 'pipii', '', '2018-05-31 20:26:24', 0),
(204, 'pipii', '', '2018-05-31 20:28:32', 0),
(205, 'pipii', 'P011', '2018-05-31 20:30:34', 60),
(206, 'pipii', 'P001', '2018-05-31 20:33:38', 60),
(207, 'pipii', 'P001', '2018-05-31 20:35:08', 60),
(208, 'pipii', 'P001', '2018-05-31 20:39:08', 60),
(209, 'pipii', 'P001', '2018-05-31 20:39:36', 60),
(210, 'pipii', '', '2018-05-31 20:43:03', 0),
(211, 'pipii', '', '2018-05-31 20:44:49', 0),
(212, 'pipii', 'P001', '2018-05-31 20:48:02', 60),
(213, 'pipii', 'P011', '2018-05-31 20:48:23', 10),
(214, 'pipii', 'P008', '2018-05-31 20:48:56', 60),
(215, 'pipii', '', '2018-05-31 20:49:09', 0),
(216, 'pipii', 'P001', '2018-05-31 20:51:04', 60),
(217, 'pipii', 'P001', '2018-05-31 20:52:18', 60),
(218, 'pipii', '', '2018-06-02 00:16:37', 0),
(219, 'pipii', 'P001', '2018-06-02 00:21:36', 60),
(220, 'pipii', 'P001', '2018-06-02 04:37:28', 40),
(221, 'pipii', 'P001', '2018-06-02 04:37:40', 60),
(222, 'pipii', '', '2018-06-02 04:51:33', 0),
(223, 'pipii', 'P001', '2018-06-03 21:19:22', 60),
(224, 'user1', 'P001', '2018-06-04 21:14:42', 60);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

DROP TABLE IF EXISTS `penyakit`;
CREATE TABLE IF NOT EXISTS `penyakit` (
  `kode_penyakit` varchar(4) NOT NULL,
  `nama_penyakit` varchar(50) NOT NULL,
  `definisi` varchar(1000) NOT NULL,
  `pengobatan` varchar(1000) NOT NULL,
  `pencegahan` varchar(500) NOT NULL,
  PRIMARY KEY (`kode_penyakit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`kode_penyakit`, `nama_penyakit`, `definisi`, `pengobatan`, `pencegahan`) VALUES
('P001', 'Hipertensi Kronis', 'Hipertensi kronis didefinisikan sebagai tekanan darah sistolik lebih atau sama dengan 140 mmhg dan atau tekanan darah diastolik lebih atau sama dengan 90 mmhg yang telah ada sebelum kehamilan, yang bertahan sampai lebih dari 20 minggu pasca partus 1 atau setelah 12 minggu.', 'Konsultasi ke dokter.', 'Selain minum obat sesuai yang diresepkan dan konsultasi dengan dokter secara teratur, Anda perlu merawat diri Anda sendiri untuk mengurangi risiko komplikasi jangka panjang hipertensi, seperti penyakit jantung atau ginjal dan stroke. Cobalah untuk mempertahankan gaya hidup sehat, memberikan perhatian khusus pada menu makan dan berat badan, hindari tembakau, dan membatasi alkohol yang Anda minum.'),
('P002', 'Superimposed Pre-Eklampsia', 'Superimposed preeklampsia adalah tekanan darah tinggi, >=140/90 dan < 160/110 mm Hg yang disertai dengan proteinuria (protein dalam air kemih) atau edema (penimbunan cairan), yang terjadi pada kehamilan 20 minggu sampai akhir minggu pertama setelah persalinan.', 'Konsultasi ke dokter.', 'Penderita dianjurkan untuk mengkonsumsi garam dalam jumlah normal dan minum air lebih banyak. Sangat penting untuk menjalani tirah baring. Penderita juga dianjurkan untuk berbaring miring ke kiri sehingga tekanan terhadap vena besar di dalam perut yang membawa darah ke jantung berkurang dan aliran darah menjadi lebih lancar.'),
('P003', 'Hipertensi Gestasional', 'Hipertensi\r\n', 'Hipertensi Gestasional', 'Hipertensi Gestasional'),
('P004', 'Pre-Eklampsia Ringan', 'Pre Eklampsia ringan adalah tekanan darah tinggi, >=140/90 dan < 160/110 mm Hg yang disertai dengan proteinuria (protein dalam air kemih) atau edema (penimbunan cairan), yang terjadi pada kehamilan 20 minggu sampai akhir minggu pertama setelah persalinan.', 'Jika pre-eklamsianya bersifat ringan, penderita cukup menjalani tirah baring di rumah, tetapi harus memeriksakan diri ke dokter setiap 2 hari.\r\nJika perbaikan tidak segera terjadi, biasanya penderita harus dirawat dan jika kelainan ini terus berlanjut, maka persalinan dilakukan sesegera mungkin.', 'Penderita dianjurkan untuk mengkonsumsi garam dalam jumlah normal dan minum air lebih banyak. Sangat penting untuk menjalani tirah baring. Penderita juga dianjurkan untuk berbaring miring ke kiri sehingga tekanan terhadap vena besar di dalam perut yang membawa darah ke jantung berkurang dan aliran darah menjadi lebih lancar.'),
('P005', 'Pre-Eklampsia Berat', 'Pre Eklampsia adalah tekanan darah tinggi (>= 160/110) yang disertai dengan proteinuria (protein dalam air kemih) atau edema (penimbunan cairan),  yang terjadi pada kehamilan 20 minggu sampai akhir minggu pertama setelah persalinan.\r\n', 'Penderita pre-eklamsi berat dirawat di rumah sakit dan menjalani tirah baring. Cairan dan magnesium sulfat diberikan melalui infus. Dalam waktu 4-6 jam, biasanya tekanan darah kembali normal dan bayi dapat dilahirkan dengan selamat. Jika tekanan darah tetap tinggi, sebelum persalinan dimulai, diberikan obat tambahan.', 'Penderita dianjurkan untuk mengkonsumsi garam dalam jumlah normal dan minum air lebih banyak. Sangat penting untuk menjalani tirah baring. Penderita juga dianjurkan untuk berbaring miring ke kiri sehingga tekanan terhadap vena besar di dalam perut yang membawa darah ke jantung berkurang dan aliran darah menjadi lebih lancar.'),
('P006', 'Eklampsia', 'Bentuk pre-eklamsi yang lebih berat, yang menyebabkan terjadinya kejang atau koma.', 'Penderita harus dirawat di rumah sakit guna pengawasan  dan perawatan secar intensif. Diperlukan obat penenang yang cukup untuk menghidarkan timbulnya kejang dapat diberi diaezepam 20 mg im. Pertolongan pertama yang perlu diberikan jika timbulnya kejangan adalah mempertahankan jalan pernapasan bebas, menghindarkan tergigitnya lidah, pemberian oksigen, dan menjaga agar penderita tidak mengalami koma.\r\nSetelah kejangan dapat diatasi dan keadaan umum penderita dapat diperbaiki maka direncanakan untuk mengakhiri kehamilan atau mempercepat persalinan.', 'meningkatkan jumlah balai pemeriksaan antenatal dn mengusahakan agar semua wanita hamil memeriksakan diri sejak hamil muda. Mencari pada tiap pemeriksaan tanda-tanda pre eklampsia dan mengobatinya segera. Mengakhiri	 kehamilan sedapat-dapatnya pada kehamilan 37 minggu ke atas apabila setelah dirawat tanda-tanda pre eklampsia tidak juga dapat dihilangkan.'),
('P007', 'Epilepsi', 'Epilepsi adalah suatu gangguan pada sistem syaraf otak manusia karena terjadinya aktivitas yang berlbihan dari sekelompok sel neuron pada otak sehingga menyebabkan berbagai reaksi pada tubuh manusia mulai dari bengong sesaat, kesemutan, gangguan kesadaran, kejang-kejang dan atau kontraksi otot.', 'Konsultasi ke dokter.', 'Perbanyak jam tidur setiap malam, cobalah untuk mengatur jadwal tidur yang teratur, dan melakukan dengan disiplin. Anda bisa mencoba untuk mengatur stres dan mempelajari teknik relaksasi yang bisa menenangkan otak, tubuh, serta pikiran guna mencegah epilepsi muncul. Ini dapat Anda lakukan dengan cara yoga atau meditasi. Hindari mengonsumsi narkoba dan alkohol. Hindari cahaya yang terang, lampu kelap-kelip, dan rangsangan visual lainnya yang bisa memicu kaget. Kurangi waktu Anda menonton TV dan b'),
('P008', 'Malaria', 'Malaria', 'Malaria', 'Malaria'),
('P009', 'Migrain', 'MigrainMigrain', 'Migrain', 'Migrain'),
('P010', 'Tetanus', 'Tetanus', 'Tetanus', 'Tetanus'),
('P011', 'Hipotensi', 'Hipotensi k', 'Hipotensi', 'Hipotensi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `relasi_penyakit_gejala`
--

DROP TABLE IF EXISTS `relasi_penyakit_gejala`;
CREATE TABLE IF NOT EXISTS `relasi_penyakit_gejala` (
  `kode_penyakit` varchar(4) NOT NULL,
  `kode_gejala` varchar(4) NOT NULL,
  `bobot` int(3) NOT NULL,
  KEY `kode_penyakit` (`kode_penyakit`),
  KEY `kode_gejala` (`kode_gejala`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `relasi_penyakit_gejala`
--

INSERT INTO `relasi_penyakit_gejala` (`kode_penyakit`, `kode_gejala`, `bobot`) VALUES
('P003', 'G001', 10),
('P003', 'G005', 10),
('P003', 'G006', 20),
('P003', 'G035', 20),
('P003', 'G036', 20),
('P003', 'G037', 20),
('P004', 'G001', 20),
('P004', 'G005', 20),
('P004', 'G006', 30),
('P004', 'G015', 30),
('P005', 'G001', 5),
('P005', 'G005', 5),
('P005', 'G006', 5),
('P005', 'G007', 5),
('P005', 'G014', 10),
('P005', 'G016', 10),
('P005', 'G017', 10),
('P005', 'G020', 10),
('P005', 'G021', 10),
('P005', 'G022', 10),
('P005', 'G023', 10),
('P005', 'G031', 10),
('P006', 'G001', 25),
('P006', 'G005', 25),
('P006', 'G006', 25),
('P006', 'G030', 25),
('P007', 'G003', 30),
('P007', 'G013', 35),
('P007', 'G038', 35),
('P008', 'G003', 10),
('P008', 'G019', 10),
('P008', 'G024', 20),
('P008', 'G025', 20),
('P008', 'G026', 20),
('P008', 'G039', 20),
('P009', 'G003', 25),
('P009', 'G019', 25),
('P009', 'G027', 25),
('P009', 'G028', 25),
('P010', 'G003', 10),
('P010', 'G008', 10),
('P010', 'G018', 10),
('P010', 'G040', 10),
('P010', 'G041', 20),
('P010', 'G042', 20),
('P010', 'G043', 20),
('P011', 'G002', 10),
('P011', 'G009', 10),
('P011', 'G010', 20),
('P011', 'G011', 20),
('P011', 'G012', 20),
('P011', 'G029', 20),
('P002', 'G001', 20),
('P002', 'G004', 20),
('P002', 'G006', 30),
('P002', 'G032', 30),
('P001', 'G001', 10),
('P001', 'G004', 10),
('P001', 'G006', 20),
('P001', 'G032', 20),
('P001', 'G033', 20),
('P001', 'G034', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_analisa`
--

DROP TABLE IF EXISTS `tmp_analisa`;
CREATE TABLE IF NOT EXISTS `tmp_analisa` (
  `username` varchar(10) NOT NULL,
  `kode_penyakit` varchar(5) NOT NULL,
  `kode_gejala` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_gejala`
--

DROP TABLE IF EXISTS `tmp_gejala`;
CREATE TABLE IF NOT EXISTS `tmp_gejala` (
  `username` varchar(10) NOT NULL,
  `kode_gejala` varchar(5) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_penyakit`
--

DROP TABLE IF EXISTS `tmp_penyakit`;
CREATE TABLE IF NOT EXISTS `tmp_penyakit` (
  `username` varchar(10) NOT NULL,
  `kode_penyakit` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `relasi_penyakit_gejala`
--
ALTER TABLE `relasi_penyakit_gejala`
  ADD CONSTRAINT `relasi_penyakit_gejala_ibfk_1` FOREIGN KEY (`kode_penyakit`) REFERENCES `penyakit` (`kode_penyakit`),
  ADD CONSTRAINT `relasi_penyakit_gejala_ibfk_2` FOREIGN KEY (`kode_gejala`) REFERENCES `gejala` (`kode_gejala`);
--
-- Database: `db_sistempakar`
--
CREATE DATABASE IF NOT EXISTS `db_sistempakar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_sistempakar`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id_admin` int(4) NOT NULL AUTO_INCREMENT,
  `nama_admin` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama_admin`, `username`, `password`) VALUES
(1, 'Aswar Kasim', 'aswarkasim', '5f4dcc3b5aa765d61d8327deb882cf99'),
(2, 'Fatmawati', 'fate', '5f4dcc3b5aa765d61d8327deb882cf99'),
(3, 'ima', 'ima', '5f4dcc3b5aa765d61d8327deb882cf99');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_gejala`
--

DROP TABLE IF EXISTS `tbl_gejala`;
CREATE TABLE IF NOT EXISTS `tbl_gejala` (
  `kode_gejala` varchar(4) NOT NULL,
  `nama_gejala` varchar(200) NOT NULL,
  `tgl_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`kode_gejala`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_gejala`
--

INSERT INTO `tbl_gejala` (`kode_gejala`, `nama_gejala`, `tgl_update`) VALUES
('G001', 'Demam', '2019-05-14 07:07:26'),
('G002', 'Keringat dingin dan menggigil', '2019-05-14 07:08:13'),
('G003', 'Sakit kepala', '2019-05-14 07:08:52'),
('G004', 'Mual dan muntah muntah', '2019-05-14 07:09:31'),
('G005', 'Gangguan Pernapasan', '2019-05-14 12:14:52'),
('G006', 'Anemia', '2019-05-14 12:16:38'),
('G007', 'Kehilangan Kesadaran', '2019-05-14 12:17:14'),
('G008', 'Nyeri pada persendian', '2019-05-14 12:17:54'),
('G009', 'Kejang', '2019-05-14 12:18:40'),
('G010', 'Kadar gula darah rendah', '2019-05-14 14:44:57'),
('G011', 'Diare terus menerus', '2019-05-14 12:19:39'),
('G012', 'Mengalami kegelisahan', '2019-05-14 13:33:01'),
('G013', 'Muntah-muntah', '2019-05-22 17:28:58'),
('G014', 'Gangguan Pernapasan', '2019-05-22 17:29:47'),
('G015', 'Anemia', '2019-05-22 17:30:07'),
('G016', 'Kehilangan Kesadaran', '2019-05-22 17:31:05'),
('G017', 'Nyeri pada persendian', '2019-05-22 17:31:18'),
('G018', 'Nyeri pada persendian', '2019-05-22 17:45:34'),
('G019', 'Kejang', '2019-05-22 17:45:56'),
('G020', 'Gangguan Pernapasan', '2019-05-22 17:51:46'),
('G021', 'Kehilangan Kesadaran', '2019-05-22 17:54:25'),
('G022', 'Kejang', '2019-05-22 17:54:52'),
('G023', 'Pendarahan', '2019-05-22 17:56:44'),
('G024', 'Anemia', '2019-05-22 17:57:31'),
('G025', 'Kehilangan Kesadaran', '2019-05-22 17:57:47'),
('G026', 'Kejang', '2019-05-22 17:58:02'),
('G027', 'Kadar gula darah rendah', '2019-05-22 17:58:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_knowledge`
--

DROP TABLE IF EXISTS `tbl_knowledge`;
CREATE TABLE IF NOT EXISTS `tbl_knowledge` (
  `id_know` int(5) NOT NULL AUTO_INCREMENT,
  `gejala` varchar(4) NOT NULL,
  `pertanyaan` text NOT NULL,
  `is_yes` text NOT NULL,
  `is_no` text NOT NULL,
  `to_yes` varchar(6) NOT NULL,
  `to_no` varchar(6) NOT NULL,
  `tgl_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_know`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_knowledge`
--

INSERT INTO `tbl_knowledge` (`id_know`, `gejala`, `pertanyaan`, `is_yes`, `is_no`, `to_yes`, `to_no`, `tgl_update`) VALUES
(55, 'G001', 'Apakah suhu badan anda sering berada diatas rata dalam waktu tertentu?', 'Ya', 'Tidak', 'G002', 'Tidak ', '2019-05-14 13:34:43'),
(56, 'G002', 'Apakah tubuh anda terkadang merasakan dingin disertai dengan keringat', 'Ya', 'Tidak', 'G003', 'G013', '2019-05-22 17:36:09'),
(57, 'G003', 'Apakah anda merasakan nyeri dibagian kepala yang berlangsung dalam kurun waktu lama?', 'Ya', 'Tidak', 'G004', 'G020', '2019-05-22 18:15:50'),
(58, 'G004', 'Apa anda mengalami masalah pencernaan seperti mual dan muntah-muntah?', 'Ya', 'Tidak', 'G005', 'Tidak ', '2019-05-22 17:20:17'),
(59, 'G005', 'Apakah anda terkadang batuk saat menghirup udara sehingga aktifitas bernafas anda terganggu?', 'Ya', 'Tidak', 'G006', 'Tidak ', '2019-05-22 18:24:48'),
(60, 'G006', 'Apakah anda mudah kelelahan dan detak jantung anda cepat dikarenakan darah rendah?', 'Ya', 'Tidak', 'G007', 'Tidak ', '2019-05-22 18:25:24'),
(61, 'G007', 'Apakah terkadang penglihatan anda menjadi tidak jelas yang mengakibatkan kesadaran anda hilang (pingsan)?', 'Ya', 'Tidak', 'G008', 'Tidak ', '2019-05-22 18:25:43'),
(62, 'G008', 'Apaka anda merasakan sakit pada bagian tubuh yang menghubungkan tulang dengan tulang (persendian) saat anda bergerak', 'Ya', 'Tidak', 'G009', 'P05', '2019-05-22 18:37:28'),
(63, 'G009', 'Apakah anda seringkali merasakan gerakan tubuh yang tidak terkendali, bergetar, dan disertai hilangnya kesadaran (kejang)?', 'Ya', 'Tidak', 'G010', 'P05', '2019-05-22 18:37:46'),
(66, 'G010', 'Apakah anda merasa lemas dan mudah merasa lapar dikarenakan kadar gula darah yang rendah?', 'Ya', 'Tidak', 'G011', 'P05', '2019-05-22 18:38:04'),
(67, 'G011', 'Ketika anda buang air besar apakah dengan frekuensi yang tinggi, sulit ditahan, dan disertai tinja yang lembek dan berair?', 'Ya', 'Tidak', 'G012', 'P05', '2019-05-22 18:27:25'),
(68, 'G012', 'Apa anda merasakan rasa takut yang intens,berlebihan, terus-menerus yang membuat anda ingin melakukan sesuatu diluar batas nalar anda?', 'Ya', 'Tidak', 'P05', 'P05', '2019-05-14 14:42:34'),
(69, 'G013', 'Apa anda mengalami masalah pencernaan seperti mual dan muntah-muntah?	', 'Ya', 'Tidak', 'G014', 'Tidak ', '2019-05-22 17:34:10'),
(70, 'G014', 'Apakah anda terkadang batuk saat menghirup udara sehingga aktifitas bernafas anda terganggu?', 'Ya', 'Tidak', 'G015', 'Tidak ', '2019-05-22 17:38:12'),
(71, 'G015', 'Apakah anda mudah kelelahan dan detak jantung anda cepat dikarenakan darah rendah?', 'Ya', 'Tidak', 'G016', 'Tidak ', '2019-05-22 17:39:36'),
(72, 'G016', 'Apakah terkadang penglihatan anda menjadi tidak jelas yang mengakibatkan kesadaran anda hilang (pingsan)?', 'Ya', 'Tidak', 'G017', 'Tidak ', '2019-05-22 17:40:26'),
(73, 'G017', 'Apaka anda merasakan sakit pada bagian tubuh yang menghubungkan tulang dengan tulang (persendian) saat anda bergerak?', 'Ya', 'Tidak', 'P03', 'P03', '2019-05-22 17:42:08'),
(74, 'G018', 'Apaka anda merasakan sakit pada bagian tubuh yang menghubungkan tulang dengan tulang (persendian) saat anda bergerak?', 'Ya', 'Tidak', 'G019', 'Tidak ', '2019-05-22 17:48:19'),
(75, 'G019', 'Apakah anda seringkali merasakan gerakan tubuh yang tidak terkendali, bergetar, dan disertai hilangnya kesadaran (kejang)?', 'Ya', 'Tidak', 'P02', 'P02', '2019-05-22 17:49:34'),
(76, 'G021', 'Apakah terkadang penglihatan anda menjadi tidak jelas yang mengakibatkan kesadaran anda hilang (pingsan)?', 'Ya', 'Tidak', 'G022', 'Tidak ', '2019-05-22 18:43:30'),
(77, 'G022', 'Apakah anda seringkali merasakan gerakan tubuh yang tidak terkendali, bergetar, dan disertai hilangnya kesadaran (kejang)?', 'Ya', 'Tidak', 'G023', 'Tidak ', '2019-05-22 18:34:30'),
(78, 'G023', 'Apakah anda pernah mengalami pendarahan di area hidung?', 'Ya', 'Tidak', 'P01', 'G024', '2019-05-22 18:34:59'),
(79, 'G026', 'Apakah anda seringkali merasakan gerakan tubuh yang tidak terkendali, bergetar, dan disertai hilangnya kesadaran (kejang)?', 'Ya', 'Tidak', 'G027', 'P04', '2019-05-22 18:12:22'),
(80, 'G027', 'Apakah anda merasa lemas dan mudah merasa lapar dikarenakan kadar gula darah yang rendah?', 'Ya', 'Tidak', 'P04', 'P04', '2019-05-22 18:13:07'),
(81, 'G020', 'Apakah anda terkadang batuk saat menghirup udara sehingga aktifitas bernafas anda terganggu?', 'Ya', 'Tidak', 'G021', 'Tidak ', '2019-05-22 18:17:58'),
(82, 'G024', 'Apakah anda mudah kelelahan dan detak jantung anda cepat dikarenakan darah rendah?', 'Ya', 'Tidak', 'G027', 'Tidak ', '2019-05-22 18:31:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pasien`
--

DROP TABLE IF EXISTS `tbl_pasien`;
CREATE TABLE IF NOT EXISTS `tbl_pasien` (
  `id_pasien` int(5) NOT NULL AUTO_INCREMENT,
  `nama_pasien` varchar(200) NOT NULL,
  `username` varchar(50) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `hp` varchar(14) NOT NULL,
  `password` varchar(20) NOT NULL,
  `tgl_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_pasien`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_penyakit`
--

DROP TABLE IF EXISTS `tbl_penyakit`;
CREATE TABLE IF NOT EXISTS `tbl_penyakit` (
  `kode_penyakit` varchar(4) NOT NULL,
  `nama_penyakit` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `penyebab` text NOT NULL,
  `akibat` text NOT NULL,
  `penanganan` text NOT NULL,
  `link_video` text NOT NULL,
  `tgl_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`kode_penyakit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_penyakit`
--

INSERT INTO `tbl_penyakit` (`kode_penyakit`, `nama_penyakit`, `deskripsi`, `penyebab`, `akibat`, `penanganan`, `link_video`, `tgl_update`) VALUES
('P01', 'MALARIA QUARTANA', '<p>Malaria quartana merupakan salah satu jenis malaria yang disebabkan oleh adanya plasmodium malariae. Jenis malara kuartana menjadi salah satu jenis malaria yang tingkat keparahannya bisa lebih besar dibandingkan dengan jenis malaria yang lain jika penanganannya tidak baik. Masa inkubasi yang terjadi pada malaria jneis quartana ini juga lebih lama dibandingkan dengan jenis malaria yang lain. Sebagai pengetahuan saja bahwa penyakit malaria ini sudah ada sejak zaman Yunani. Dahulu infeksi yang terjad pada malaria ini sangat mudah untuk diidap oleh seseorang&nbsp; namun seiring dengan peralanan jaman dan waktu lamakelamaan penyakit malaria sedikit menurun tingkat penyerangannya, walaupun pada saat ini malaria masih menjadi penyakit yang bisa menyumbangkan kematian pada seseorang dengan jumlah yang cukup besar.<br />\r\n&nbsp;</p>\r\n', '<p>disebabkan oleh adanya plasmodium malariae (jenis parasit)</p>\r\n', '<p>jika kondisi yang dialami sudah sangat parah, pasien atau penderita tersbeut bisa saja mengalami koma atau bisa saja mengalami kematian.<br />\r\n&nbsp;</p>\r\n', '<ol>\r\n	<li>Cara medis, Jika anda akan menggunakan cara medis berarti anda harus melakukan pengobatan oleh dokter, biasanya dalam pemberian obat dokter akan memberikan obat yang memiliki funsii untuk membunuh semua parasit yang ada kemudian akan memberikan obat yang bisa menyembuhka infeksi yang ada. Obat-bat yang biasanya dianjurkan oleh dokter untuk pengobatan malaria khususnya malaria quartana ialah seperti&nbsp; vaksin, Primakuin dll.</li>\r\n	<li>Cara Tradisional, Beberapa bahan tradisional tersebut ialah :Brotowali, temulawak dan kulit batang pala &ndash; Ketiga bahan ini jika dicampurkan akan menjadi ramuan yang sangat berkhasiat bagi tubuh khususnya untuk menyembuhan penyakit malaria ini. Cara pemanfaatnya sangat mudah yaitu hanya dengan merebus ketiga bahan ini secara bersamaan kemudian tunggu sampai mendidih setelah itu minum air rebusan ketiga bahan iini secara teratur</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n', 'https://www.youtube.com/watch?v=t-bQcsiDn1Y&t=271s  ', '2019-05-22 15:02:53'),
('P02', 'MALARIA TERSIANA RINGAN', '<p>Malaria tertiana adalah salah satu dari jenis-jenis malaria yang ada hubungannya dengan parasit bernama Plasmodium vivax. Parasit inilah yang pada umumnya menyebabkan adanya infeksi pada eritrosit muda di mana diameternya juga memang lebih besar ketimbang yang normal. Plasmodium vivax adalah protozoa parasit dan patogen manusia. P. vivax adalah salah satu dari empat spesies parasit malaria yang umumnya menyerang manusia. P. vivax dibawa oleh nyamuk Anopheles betina. Parasit Plasmodium vivax yang menyebabkan malaria vivax ini dapat bertahan dalam keadaan tidak aktif pada organ hati selama beberapa bulan atau tahun. Sehingga, malaria jenis ini dapat kambuh ketika parasit aktif kembali.</p>\r\n\r\n<p>malaria jenis ini dibedakan menjadi golongan yang ringan dan berat berdasarkan gejala dan cara penanganannya</p>\r\n', '<p>Malaria tertiana disebakan oleh Parasit Plasmodium vivax yang menyebabkan malaria ini dapat bertahan dalam keadaan tidak aktif pada organ hati selama beberapa bulan atau tahun. Sehingga, malaria jenis ini dapat kambuh ketika parasit aktif kembali.</p>\r\n\r\n<ol>\r\n	<li>Memiliki distribusi geografis terluas,mulai dari wilayah beriklim dingin, subtropik hingga daerah tropik.</li>\r\n	<li>Demam terjadi setiap 48 jam atau setiap hari ketiga, pada siang ataupun sore hari.&nbsp;</li>\r\n	<li>Masa inkubasi plasmodium vivax antara 12 sampai 17 haridan salah satu gejala adalah pembengkakan limpa atau splenomegali.</li>\r\n</ol>\r\n', '<ol>\r\n	<li>kesadaran menurun</li>\r\n	<li>kelemahan yang signifikan sehingga orang sulit berjalan</li>\r\n	<li>ketidakmampuan untuk makan</li>\r\n</ol>\r\n', '<p>Penanganan</p>\r\n\r\n<ol>\r\n	<li>Ringan : Pengobatan tahapan parasit dalam darah (dengan klorokuin atau ACT)&nbsp;</li>\r\n</ol>\r\n', 'https://youtu.be/-QFJWqVut-I ', '2019-05-22 15:53:17'),
('P03', 'MALARIA OVALE', '<p>Malaria ovale adalah jenis malaria paling ringan, disebabkan oleh parasit Plasmodium ovale. Masa inkubasinya sekitar 11-16 hari. Gejala<br />\r\nyang muncul hampir serupa dengan malaria tertiana dan kuartana, namun jauh lebih ringan. Selain itu, puncak demam juga lebih rendah. Bahkan, malaria ini bisa sembuh spontan tanpa pengobatan. pada malaria ovale disebabkan oleh gigitan nyamuk Anopheles betina.</p>\r\n', '<p>disebabkan oleh parasit Plasmodium ovale</p>\r\n', '<p>Dalam malaria ovale ini plasmodiumnya hanya menginfeksi sel darah merah yang masih muda atau yang bisa dikatakan masih belum matang, dalam malaria ovale ini juga tingkat parasit yang jumplahnya cukup sedikit dimana tingkat parasit ini terdapat dalam darah. Walaupun di dalam malasria ovale ini memiliki kondisi yang demikian namun jika dibandingkan dengan jenis malaria yang lain jneis malaria ovale ini masih termasuk dalam jenis malaria yang tidak berbahaya dibandingkan dengan yang lain.</p>\r\n', '<ol>\r\n	<li>pertama pengobatan malaria jenis ini adalah dengan kombinasi obat klorokuin dan primakuin. Sama seperti malaria falsiparum, jika setelah 3 hari mengonsumsi obat lini pertama tidak efektif maka akan dilanjutkan pengobatan ini kedua.</li>\r\n	<li>Pengobatan lini kedua dilanjutkan dengan peningkatan dosis primakuin</li>\r\n</ol>\r\n', 'https://youtu.be/t-bQcsiDn1Y ', '2019-05-22 15:07:00'),
('P04', 'MALARIA TERSIANA BERAT', '<p>Malaria tertiana adalah salah satu dari jenis-jenis malaria yang ada hubungannya dengan parasit bernama Plasmodium vivax. Parasit inilah yang pada umumnya menyebabkan adanya infeksi pada eritrosit muda di mana diameternya juga memang lebih besar ketimbang yang normal. Plasmodium vivax adalah protozoa parasit dan patogen manusia. P. vivax adalah salah satu dari empat spesies parasit malaria yang umumnya menyerang manusia. P. vivax dibawa oleh nyamuk Anopheles betina. Parasit Plasmodium vivax yang menyebabkan malaria vivax ini dapat bertahan dalam keadaan tidak aktif pada organ hati selama beberapa bulan atau tahun. Sehingga, malaria jenis ini dapat kambuh ketika parasit aktif kembali.</p>\r\n\r\n<p>malaria jenis ini dibedakan menjadi golongan yang ringan dan berat berdasarkan gejala dan cara penanganannya</p>\r\n', '<p>Malaria tertiana diakibatkan oleh Parasit Plasmodium vivax yang menyebabkan malaria ini dapat bertahan dalam keadaan tidak aktif pada organ hati selama beberapa bulan atau tahun. Sehingga, malaria jenis ini dapat kambuh ketika parasit aktif kembali.</p>\r\n\r\n<ol>\r\n	<li>Memiliki distribusi geografis terluas,mulai dari wilayah beriklim dingin, subtropik hingga daerah tropik.</li>\r\n	<li>Demam terjadi setiap 48 jam atau setiap hari ketiga, pada siang ataupun sore hari.&nbsp;</li>\r\n	<li>Masa inkubasi plasmodium vivax antara 12 sampai 17 haridan salah satu gejala adalah pembengkakan limpa atau splenomegali.</li>\r\n</ol>\r\n', '<ol>\r\n	<li>kejang yang terjadi terus menerus</li>\r\n	<li>gagal ginjal atau hemoglobin</li>\r\n	<li>adema paru</li>\r\n	<li>kejutan sirkulasi</li>\r\n</ol>\r\n', '<p>&nbsp;Penanganan</p>\r\n\r\n<ol>\r\n	<li>Berat : Pembersihan bentuk parasit dalam hati dengan primakuin. Primakuian adalah obat anti malaria yang paling terkenal didunia.</li>\r\n</ol>\r\n', 'https://youtu.be/-QFJWqVut-I    ', '2019-05-22 16:55:08'),
('P05', 'MALARIA TROPIKA', '<p>malaria tropika adalah 1 dari 4 jenis yang memang dianggap paling ganas dan mengerikan ketika bicara soal dampak, gejala dan komplikasinya. Malaria jenis tropika ini juga dinamakan dengan istilah malaria falciparum dan dikenal sebagai bentuk malaria paling berat sehingga memang cukup menakutkan. Apabila sedikit saja terlambat pengobatannya, penderita bakal mengalami risiko besar.</p>\r\n', '<p>penyebab utama dari malaria jenis tropika adalah parasit yang bernama Plasmodium falciparum di mana jenis malaria inilah yang paling sering terjadi komplikasi. Seluruh bentuk eritrosit juga diketahui diserang oleh malaria tropika berbeda dari jenis malaria tertiana yang hanya menyerang eritrosit muda.</p>\r\n\r\n<p>Plasmodium falciparum sendiri merupakan sebuah jenis parasit yang berbentuk cincin berukuran kecil yang diameternya saja hanya 1/3 diameter eritrosit pada umumnya. Namun plasmodium ini adalah yang satu-satunya mempunyai double chromatin atau 2 kromatin inti. Dalam siklus hidupnya, penularan malaria adalah lewat gigitan manusia dari manusia yang sudah terkena infeksi ke manusia yang sehat.</p>\r\n', '<ol>\r\n	<li>Malaria Tropika sifatnya akut, hanya tidak memiliki sifat kambuhan.</li>\r\n	<li>penyumbatan pada pembuluh darah Kapiler</li>\r\n	<li>Jika menyerang ke otak maka suplai darah ke otak akan terganggu, dan akibatnya bisa disebut Malaria Otak.</li>\r\n	<li>gagal ginjal</li>\r\n	<li>Meninggal dunia.</li>\r\n</ol>\r\n', '<ol>\r\n	<li>Pemberian obat Piperakuin hanya sekali saja disesuaikan dengan berat badan pasien.</li>\r\n	<li>Selain itu uji darah setiap minggunya agar tidak terserang malaria yang akut</li>\r\n	<li>Minum obat anti malaria sebagai obat pencegahan. Tersedia beberapa jenis obat anti malaria yang memiliki efektivitas dan mekanisme yang berbeda-beda untuk mencegah terjangkit Malaria. Terdapat jenis obat yang membutuhkan waktu cukup lama agar dapat berefek. Lakukanlah konsultasi ke dokter Anda beberapa minggu sebelum melakukan perjalanan ke daerah endemis Malaria.</li>\r\n	<li>Hindari tergigit nyamuk. Sebaiknya hindari bepergian pada senja dan malam hari untuk mencegah tergigit oleh nyamuk yang terinfeksi. Hal ini dikarenakan nyamuk anopheles lebih aktif pada malam hari.</li>\r\n	<li>Tidur dengan dilindungi kelambu.</li>\r\n	<li>Menggunakan celana dan pakaian yang berlengan panjang agar dapat dapat melindungi Anda.</li>\r\n	<li>Jangan lupakan lotion untuk mencegah gigitan nyamuk.</li>\r\n	<li>Gunakan Jaring-Jaring Pelapis Pintu dan Jendela</li>\r\n	<li>Gunakan AC karena nyamuk malaria tidak suka dengan ruangan yang terlalu dingin.</li>\r\n	<li>Bersihkan Semua Genangan Air</li>\r\n	<li>Perhatikan Kebersihan Lingkungan</li>\r\n	<li>Jangan Menggantung Baju di Tempat Terbuka</li>\r\n	<li>Pilih Baju Tidur Warna Cerah</li>\r\n	<li>Pertahankan Kondisi Tubuh Anda</li>\r\n	<li>Gunakan Tabir Surya Anti Nyamuk</li>\r\n	<li>Penuhi Kebutuhan Karbohidrat</li>\r\n	<li>&nbsp;Konsumsi Sumber Makanan Mengandung Protein Tinggi</li>\r\n	<li>Minum Air Jahe,Perasan Daun Pepaya, Madu</li>\r\n	<li>Makan Sumber Lemak Omega 3</li>\r\n</ol>\r\n', 'https://www.youtube.com/watch?v=KqECj8X141E  ', '2019-05-22 15:16:32');
--
-- Database: `devit`
--
CREATE DATABASE IF NOT EXISTS `devit` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `devit`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `aturan`
--

DROP TABLE IF EXISTS `aturan`;
CREATE TABLE IF NOT EXISTS `aturan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_penyakit` varchar(4) NOT NULL,
  `id_solusi` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_penyakit` (`id_penyakit`,`id_solusi`),
  KEY `id_soulsi` (`id_solusi`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `aturan`
--

INSERT INTO `aturan` (`id`, `id_penyakit`, `id_solusi`) VALUES
(4, 'P001', 4),
(5, 'P001', 5),
(6, 'P001', 6),
(7, 'P001', 7),
(8, 'P002', 8),
(9, 'P002', 9),
(10, 'P002', 10),
(11, 'P002', 11),
(12, 'P003', 22),
(13, 'P003', 23),
(14, 'P003', 24),
(15, 'P003', 25),
(16, 'P004', 26),
(17, 'P004', 27),
(18, 'P005', 28),
(19, 'P005', 29),
(20, 'P006', 30),
(21, 'P006', 31),
(22, 'P007', 32),
(23, 'P007', 33),
(24, 'P007', 34),
(25, 'P007', 35);

-- --------------------------------------------------------

--
-- Struktur dari tabel `diagnosa`
--

DROP TABLE IF EXISTS `diagnosa`;
CREATE TABLE IF NOT EXISTS `diagnosa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_diagnosa` varchar(6) NOT NULL,
  `tanggal` date NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `gejala` text NOT NULL,
  `hasil` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pasien` (`id_pasien`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `diagnosa`
--

INSERT INTO `diagnosa` (`id`, `no_diagnosa`, `tanggal`, `id_pasien`, `gejala`, `hasil`) VALUES
(1, 'RES001', '2014-10-10', 18, 'G001|G002|G005|G006', 0.9);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `diagnosa_view`
-- (Lihat di bawah untuk tampilan aktual)
--
DROP VIEW IF EXISTS `diagnosa_view`;
CREATE TABLE IF NOT EXISTS `diagnosa_view` (
`no_diagnosa` varchar(6)
,`nama` varchar(50)
,`kelompok` varchar(100)
,`tanggal` date
,`hasil` float
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

DROP TABLE IF EXISTS `gejala`;
CREATE TABLE IF NOT EXISTS `gejala` (
  `id` varchar(4) NOT NULL,
  `gejala` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`id`, `gejala`) VALUES
('G001', 'Suhu badan tinggi'),
('G002', 'Nafsu makan hilang'),
('G003', 'Diare'),
('G004', 'Darah keluar dari mulut dan lubang hidung'),
('G005', 'Kematian Mendadak'),
('G006', 'Selaput lendir didalam mulut, bibir dan gusi merah'),
('G007', 'Mulut keluar ludah seperti benang'),
('G008', 'Pergelanagan kaki dekat kuku bengkak'),
('G009', 'Bulu kelihatan rontok, kotor dan kering seperti bersisik'),
('G010', 'Menimbulkan gerakan putar-putar tanpa arah'),
('G011', 'Bengkak di beberapa tubuh'),
('G012', 'Gangguan pernapasan'),
('G013', 'Jika bengkak dipotong akan ada benda merah kotor bau busuk'),
('G014', 'Bengkak di celah kuku'),
('G015', 'Selaput kuku terkelupas'),
('G016', 'Sapi pincang dan lumpuh'),
('G017', 'Berat badan berkurang'),
('G018', 'Busung pada berbagai bagian tubuh'),
('G019', 'Lambung sebelah kiri atas membesar dan kencang'),
('G020', 'Bagian itu bila dipikul seperti drum');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `nama`, `username`, `password`) VALUES
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matrix`
--

DROP TABLE IF EXISTS `matrix`;
CREATE TABLE IF NOT EXISTS `matrix` (
  `no_diagnosa` varchar(6) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_penyakit` varchar(4) NOT NULL,
  `skor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matrix`
--

INSERT INTO `matrix` (`no_diagnosa`, `id_pasien`, `id_penyakit`, `skor`) VALUES
('RES001', 18, 'P001', 0.8),
('RES001', 18, 'P002', 0.9),
('RES001', 18, 'P003', 0.2),
('RES001', 18, 'P004', 0.8),
('RES001', 18, 'P005', 0),
('RES001', 18, 'P006', 0),
('RES001', 18, 'P007', 0);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `mt_aturan`
-- (Lihat di bawah untuk tampilan aktual)
--
DROP VIEW IF EXISTS `mt_aturan`;
CREATE TABLE IF NOT EXISTS `mt_aturan` (
`id` int(11)
,`penyakit` tinytext
,`solusi` tinytext
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `mt_relasi`
-- (Lihat di bawah untuk tampilan aktual)
--
DROP VIEW IF EXISTS `mt_relasi`;
CREATE TABLE IF NOT EXISTS `mt_relasi` (
`id` int(11)
,`penyakit` tinytext
,`gejala` tinytext
,`cf` float
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

DROP TABLE IF EXISTS `pasien`;
CREATE TABLE IF NOT EXISTS `pasien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `kelompok` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id`, `nama`, `kelompok`) VALUES
(1, 'Devit Suhaebi', 'Budiluhur'),
(3, 'Devit Suhaebi', 'Budiluhur'),
(5, 'xsxs', 'xsx'),
(6, 'Devit Suhaebi', 'Budiluhur'),
(7, 'Devit Suhaebi', 'Budiluhur'),
(8, 'dsdsd', 'sdsdsd'),
(9, 'sdsdsd', 'sdsdsd'),
(10, 'sdsdsd', 'sdsd'),
(11, 'dfsdf', 'dfsdf'),
(12, 'SAASAS', 'asas'),
(13, 'fgg', 'fgfdg'),
(14, 'dfdfd', 'dfdf'),
(15, 'dfdfd', 'dfdf'),
(16, 'dede', 'dede'),
(17, 'saasdasdsa', 'sasa'),
(18, 'Devit Suhaebi', 'Sapiku');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

DROP TABLE IF EXISTS `penyakit`;
CREATE TABLE IF NOT EXISTS `penyakit` (
  `id` varchar(4) NOT NULL,
  `penyakit` tinytext NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `img` varchar(60) NOT NULL DEFAULT 'no_image.png',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`id`, `penyakit`, `deskripsi`, `img`) VALUES
('P001', 'Anthrax (Radang limpa)', 'penyakit ini sangat berbahaya dan dapat menular ke manusia, wilayah yang terkena anthrax wajib diisolasi dari keluar masuknya ternak minimal sejauh 5 KM sekelilingnya. Anthrax samapai saat ini belum bisa diobati, sapi potong yang terkena anthax wajib diku', 'c2c68953472888a07da4db97eff5db27.jpg'),
('P002', 'Penyakit Mulut & Kuku', 'Penyakit mulut dan kuu adalah penyakit akut dan sangat menular yang menyerang sapi, kerbau, babi, kambing, domba dan hewan berkuku genap lainnya. Infeksi ditadai dengan pembentukan lepuh yang kemudian berkembang menjadi erosi pada selaput lendir mulut, di', '651a872add2d57522888bc48c15a7a81.jpg'),
('P003', 'Surra (Penyakit Tujuh Keliling)', 'penyakit ini juga disebabkan oleh bakteri cirri-ciri terkena penyakit ini demam berselang seling, nafsu makan kurang, dalam keadaan akut ternak akan berputar-putar karena terjadi gangguan pada syarafnya. Surra dapat diobati jika belum dalam keadaan akut, ', 'fc20c75e438c32fa0e44d216bc4fc0ba.jpg'),
('P004', 'Blakled (Radang Paha)', 'Blakled (Radang Paha)', 'cb19bb459e7bd19aeef184116a8f1fde.jpg'),
('P005', 'Kuku Busuk', 'Kuku Busuk', 'a54f4a01d3c3613eda53cae6504b63e1.jpg'),
('P006', 'Cacing Hati', 'Cacing Hati', 'fe2957fed1aa63c5f6de593c223e1440.jpg'),
('P007', 'Bloat', 'Bloat', '647dcbb90a4cce108c37eb784cf459f9.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `relasi`
--

DROP TABLE IF EXISTS `relasi`;
CREATE TABLE IF NOT EXISTS `relasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_penyakit` varchar(4) NOT NULL,
  `id_gejala` varchar(4) NOT NULL,
  `cf` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_penyakit` (`id_penyakit`),
  KEY `id_gejala` (`id_gejala`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `relasi`
--

INSERT INTO `relasi` (`id`, `id_penyakit`, `id_gejala`, `cf`) VALUES
(3, 'P001', 'G001', 0.1),
(4, 'P001', 'G002', 0.2),
(5, 'P001', 'G003', 0.3),
(6, 'P001', 'G004', 0.6),
(7, 'P001', 'G005', 0.6),
(8, 'P002', 'G001', 0.1),
(9, 'P002', 'G002', 0.1),
(10, 'P002', 'G006', 0.8),
(11, 'P002', 'G007', 0.7),
(12, 'P002', 'G008', 0.6),
(13, 'P003', 'G001', 0.2),
(14, 'P003', 'G002', 0.2),
(15, 'P003', 'G009', 0.7),
(16, 'P003', 'G010', 0.8),
(17, 'P004', 'G011', 0.2),
(18, 'P004', 'G012', 0.7),
(19, 'P004', 'G013', 0.3),
(20, 'P004', 'G002', 0.8),
(21, 'P005', 'G014', 0.5),
(22, 'P005', 'G015', 0.7),
(23, 'P005', 'G016', 0.8),
(24, 'P006', 'G017', 0.7),
(25, 'P006', 'G018', 0.8),
(26, 'P007', 'G019', 0.3),
(27, 'P007', 'G020', 0.8),
(28, 'P007', 'G012', 0.7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `solusi`
--

DROP TABLE IF EXISTS `solusi`;
CREATE TABLE IF NOT EXISTS `solusi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `solusi` tinytext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `solusi`
--

INSERT INTO `solusi` (`id`, `solusi`) VALUES
(4, 'Semua bangkai harus dibakar,begitu pula peralatan yang habis di pakai'),
(5, 'Daging sapi yang menderita penyakit antraxs tidak boleh di konsumsi'),
(6, 'Sapi-sapi yang masih sehat dievakuasi'),
(7, 'Pengobatan dilakukan dengan antibiotik'),
(8, 'Kandang dan semua peralatan di upayakan selalu bersih di cuci dengan caustic soda 2%'),
(9, 'Hindarkan tamu keluar masuk ke dalam atau lingkungan kandang penderita harus di sendirikan'),
(10, 'Pengawasan dan pemeriksaan dilakukan secara ketat terhadap sapi-sapi yang dipotong'),
(11, 'Pengobatan dilakukan dengan injeksi antibiotik atau sulfa'),
(22, 'Penderita diasingkan dikandang yang tertutup sehingga tertutup dari gigitan lalat'),
(23, 'penyemprotan dilakukan terhadap semua peralatan ataupun lingkungan yang banyak di hinggapi oleh lalat'),
(24, 'Sapi yang mati akibat penyakit surra harus di bakar atau dikubur'),
(25, 'Pengobatannya menggunakan nagonal, Arsokol, Atoxyl dan lain-lain'),
(26, 'Jika di suatu daerah dipastikan telah terjangkit penyakit ini, maka semua sapi yang sehat harus di evakuasi'),
(27, 'Sapi-sapi yang bisa di diagnosa secara awal secepatnya dilakukan dengan pengobatan antibiotik sebab penyakit ini berkembang begitu cepat'),
(28, 'Membersihkan celah kuku dengan cara merendamnya kedalam cairan copper sulphate 3% atau larutan formalin 10%'),
(29, 'Pengobatan dengan injeksi sulfa atau antibiotik, selama pengobatan kaki harus di jaga dalam keadaan kering'),
(30, 'Pembasmian penyakit terutama di tunjukan kepada pembasmian siput(bekicot), misalnya tidak membiarkan lapangan pangonan tergenang air atau drainase jelek'),
(31, 'Pengobatan penderita dengan Hexaclorophene'),
(32, 'Sekali-kali jangan ngangon pada pagi hari yang rumputnya masih basah karena embun dan air hujan'),
(33, 'Berikan pakan pendahuluan berupa jerami kering kepada sapi yang lapar sebelum di angon'),
(34, 'Penderita diberi minyak yang berasal dari tumbuh-tumbuhan, misalnya minyak kacang tanah sebanyak 0,6 liter'),
(35, 'Jika keadan penderita sudah parah, gas di upayakan bisa keluar secepatnya yakni dengan cara menusuk perut sebelah kiri dengan trocar dan cannula');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_login`
--

DROP TABLE IF EXISTS `tb_login`;
CREATE TABLE IF NOT EXISTS `tb_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_login`
--

INSERT INTO `tb_login` (`id`, `nama`, `username`, `password`) VALUES
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur untuk view `diagnosa_view`
--
DROP TABLE IF EXISTS `diagnosa_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `diagnosa_view`  AS  select `diagnosa`.`no_diagnosa` AS `no_diagnosa`,`pasien`.`nama` AS `nama`,`pasien`.`kelompok` AS `kelompok`,`diagnosa`.`tanggal` AS `tanggal`,`diagnosa`.`hasil` AS `hasil` from (`pasien` join `diagnosa` on(`diagnosa`.`id_pasien` = `pasien`.`id`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `mt_aturan`
--
DROP TABLE IF EXISTS `mt_aturan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mt_aturan`  AS  select `aturan`.`id` AS `id`,`penyakit`.`penyakit` AS `penyakit`,`solusi`.`solusi` AS `solusi` from ((`aturan` join `penyakit` on(`aturan`.`id_penyakit` = `penyakit`.`id`)) join `solusi` on(`aturan`.`id_solusi` = `solusi`.`id`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `mt_relasi`
--
DROP TABLE IF EXISTS `mt_relasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mt_relasi`  AS  select `relasi`.`id` AS `id`,`penyakit`.`penyakit` AS `penyakit`,`gejala`.`gejala` AS `gejala`,`relasi`.`cf` AS `cf` from ((`relasi` join `penyakit` on(`relasi`.`id_penyakit` = `penyakit`.`id`)) join `gejala` on(`relasi`.`id_gejala` = `gejala`.`id`)) ;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `aturan`
--
ALTER TABLE `aturan`
  ADD CONSTRAINT `aturan_ibfk_1` FOREIGN KEY (`id_solusi`) REFERENCES `solusi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `aturan_ibfk_2` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `diagnosa`
--
ALTER TABLE `diagnosa`
  ADD CONSTRAINT `diagnosa_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `relasi`
--
ALTER TABLE `relasi`
  ADD CONSTRAINT `relasi_ibfk_1` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `relasi_ibfk_2` FOREIGN KEY (`id_gejala`) REFERENCES `gejala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `gayabelajar`
--
CREATE DATABASE IF NOT EXISTS `gayabelajar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gayabelajar`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataset`
--

DROP TABLE IF EXISTS `dataset`;
CREATE TABLE IF NOT EXISTS `dataset` (
  `id_dataset` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `id_gayabelajar` int(11) NOT NULL,
  PRIMARY KEY (`id_dataset`),
  KEY `id_gayabelajar` (`id_gayabelajar`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dataset`
--

INSERT INTO `dataset` (`id_dataset`, `nama`, `id_gayabelajar`) VALUES
(1, 'AHMAD AWWALU RAMADHANI', 3),
(2, 'ALMIRA NAJWA ZAHIRAH', 2),
(3, 'BERLIANA ILMI AZZAHRA', 1),
(4, 'AMANDA BUDI ELLYA', 1),
(5, 'FHELLYZA F.K.P', 2),
(6, 'ALYA CHINTIA ANGELIE', 3),
(7, 'ANDREV BUDI ANDHIKA', 1),
(8, 'ATALLAH STIGFARICHSAN', 1),
(9, 'ATHALLA DAIVA PARAMA DELI P', 2),
(10, 'AZZAM FARRAAS DHANANJAYA', 1),
(11, 'CHELSEA OLIVIA SHAHIRA', 1),
(12, 'DHAIFULLAH DWI RAIHAN P', 2),
(13, 'DINDA VARISSA PUTRI ', 3),
(14, 'EGA PUTRA DWI RAMADHANI', 2),
(15, 'IKHLAS MUHAMMAD TAUFANI', 2),
(16, 'ILMAN RIZKI DWI TANAYA', 2),
(17, 'IZZI ARZAH ARIFIANSYAH', 2),
(18, 'KAMILIA ARINA RAHMAWATI ZAHRO', 3),
(19, 'KEYSA AURELIA PRAMESWARI', 1),
(20, 'KINANTI KHARISMANING WULAN R', 2),
(21, 'LAURA FRISKA PUTRI KUSUMA', 1),
(22, 'MAHESWARI', 2),
(23, 'MAULANA ISHAQ BIN ANGSORI', 1),
(24, 'MOCH. IRSYAD AGHA. A', 1),
(25, 'MOCHAMMAD HAIDAR FATHIR', 2),
(26, 'MUCHAMAD FIRDAUS JAILANI', 1),
(27, 'MUHAMAD TIGER BIMASAKTI', 2),
(28, 'MUHAMMAD IKRAM ARRASYID', 2),
(29, 'MUHAMMAD ILHAM ROSYID', 2),
(30, 'REZZA ADITYA PRATAMA', 1),
(31, 'SALWA AUDITA PURNADYA', 2),
(32, 'YVES APPLE GLADYS PUGUH WIDODO', 1),
(33, 'ZHEFFANYA CHEERYLIANDHIRA. KP', 1),
(34, 'LAILA RACHMAWATI', 2),
(35, 'ONKY CATUR', 1),
(36, 'HANDY KUSUMA', 2),
(37, 'AULIA FITRI RAHMADINI', 1),
(38, 'FIRMAN ADIL', 3),
(39, 'SANDY ARDI SATRIYA', 3),
(40, 'BRILIANT ACHMAD RAMADHAN', 2),
(41, 'BRIAN ADINTA LOVY', 1),
(42, 'AYUB DHIKA LUKAMANIA', 2),
(43, 'REZQIA N.L.F', 3),
(44, 'RANIA AMANTHA', 1),
(45, 'AZIZA AZ-ZAHRA', 2),
(46, 'ANIS DIAH FITRIA', 3),
(47, 'MUHAMMAD GILANG RAMADHAN', 3),
(48, 'M. ALI TSUBASA', 3),
(49, 'AULIA DEWI PRAMESTI', 2),
(50, 'M RAZIQ ', 1),
(51, 'M FADIL ALAMSYAH ', 1),
(52, 'MOCH INAM F ', 1),
(53, 'ATMAJA GALIH PAMUNGKAS', 1),
(54, 'LUNA DANISH AZZUHRA', 2),
(55, 'NAFISAH ZAHRA MUFIDA', 2),
(56, 'QONITA AMANDA TSANI', 1),
(57, 'SATRIA FAJAR NOVANTIO', 2),
(58, 'DEWI MAULIDIYAH', 1),
(59, 'FATMA INDRAWATI', 1),
(60, 'FIKRI AULKARNAIN', 3),
(61, 'NAILA ANANDA PUTRI', 2),
(62, 'AHMAD FERRY SETIAWAN', 2),
(63, 'NESSA THALITA SALSALSABILA', 2),
(64, 'VISTA ZAHROTUL', 1),
(65, 'CLEREN AZAHRA SALSABILA', 2),
(66, 'RISMA NUR', 1),
(67, 'NAJWA RIFKA ', 2),
(68, 'GALANG EKA CAHYA', 2),
(69, 'FAUZAN GALANG', 2),
(70, 'WAHYU AJI', 2),
(71, 'TENGKU RISKI', 1),
(72, 'ACHMAD SAKDILAH', 2),
(73, 'ADINDA AZAHRA', 1),
(74, 'CALISTA CINDY', 2),
(75, 'NILAM SEPTIASA', 1),
(76, 'NAFILA PUTRI', 2),
(77, 'BINTANG PASHA', 3),
(78, 'SACHIO KAKA', 2),
(79, 'KRISNANDA AJI', 2),
(80, 'KARENINA PARAMITA', 1),
(81, 'YUSRON FATIR', 2),
(82, 'ADI DWI NAOKI', 1),
(83, 'ADELA CITRA', 2),
(84, 'AMANDA DIHYA', 2),
(85, 'ALIVIO', 1),
(86, 'RANYA AVRIL', 1),
(87, 'RAVIKA', 2),
(88, 'RIKO MAULANA', 2),
(89, 'TYAS PERMATASARI', 2),
(90, 'BAYU ADNAN', 1),
(91, 'APRILA DWINA', 3),
(92, 'NATSYA', 3),
(93, 'NADILULUM', 2),
(94, 'RAFSANJANI RAYHAN', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_dataset`
--

DROP TABLE IF EXISTS `detail_dataset`;
CREATE TABLE IF NOT EXISTS `detail_dataset` (
  `id_detail_dataset` int(11) NOT NULL AUTO_INCREMENT,
  `id_dataset` int(11) NOT NULL,
  `id_pernyataan` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  PRIMARY KEY (`id_detail_dataset`),
  KEY `id_pernyataan` (`id_pernyataan`),
  KEY `id_dataset` (`id_dataset`)
) ENGINE=InnoDB AUTO_INCREMENT=2595 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_dataset`
--

INSERT INTO `detail_dataset` (`id_detail_dataset`, `id_dataset`, `id_pernyataan`, `nilai`) VALUES
(1, 1, 1, 3),
(2, 1, 2, 3),
(5, 1, 3, 2),
(6, 1, 4, 4),
(7, 1, 5, 3),
(8, 1, 6, 3),
(9, 1, 7, 4),
(10, 1, 8, 2),
(11, 1, 9, 4),
(12, 1, 10, 4),
(13, 2, 1, 3),
(14, 2, 2, 3),
(15, 2, 3, 3),
(16, 2, 4, 4),
(17, 2, 5, 4),
(18, 2, 6, 4),
(19, 2, 7, 4),
(20, 2, 8, 3),
(21, 2, 9, 3),
(22, 2, 10, 2),
(23, 1, 11, 3),
(24, 1, 12, 4),
(25, 1, 13, 4),
(26, 1, 14, 2),
(27, 1, 15, 3),
(28, 1, 16, 3),
(29, 1, 17, 2),
(30, 1, 18, 3),
(31, 1, 19, 3),
(32, 1, 20, 3),
(33, 1, 21, 4),
(34, 1, 22, 3),
(35, 1, 23, 2),
(36, 1, 24, 2),
(37, 1, 25, 2),
(38, 1, 26, 3),
(39, 1, 27, 3),
(40, 2, 11, 3),
(41, 2, 12, 4),
(42, 2, 13, 4),
(43, 2, 14, 3),
(44, 2, 15, 4),
(45, 2, 16, 3),
(46, 2, 17, 4),
(47, 2, 18, 3),
(48, 2, 19, 4),
(49, 2, 20, 3),
(50, 2, 21, 2),
(51, 2, 22, 3),
(52, 2, 23, 4),
(53, 2, 24, 2),
(54, 2, 25, 2),
(55, 2, 26, 2),
(56, 2, 27, 2),
(57, 6, 1, 2),
(58, 6, 2, 4),
(59, 6, 3, 4),
(60, 6, 4, 4),
(61, 6, 5, 4),
(62, 6, 6, 4),
(63, 6, 7, 4),
(64, 6, 8, 4),
(65, 6, 9, 4),
(66, 6, 10, 2),
(67, 6, 11, 2),
(68, 6, 12, 2),
(69, 6, 13, 2),
(70, 6, 14, 2),
(71, 6, 15, 4),
(72, 6, 16, 4),
(73, 6, 17, 4),
(74, 6, 18, 2),
(75, 6, 19, 2),
(76, 6, 20, 4),
(77, 6, 21, 2),
(78, 6, 22, 2),
(79, 6, 23, 4),
(80, 6, 24, 4),
(81, 6, 25, 2),
(82, 6, 26, 2),
(83, 6, 27, 2),
(84, 7, 1, 4),
(85, 7, 2, 4),
(86, 7, 3, 4),
(87, 7, 4, 4),
(88, 7, 5, 3),
(89, 7, 6, 2),
(90, 7, 7, 4),
(91, 7, 8, 4),
(92, 7, 9, 4),
(93, 7, 10, 3),
(94, 7, 11, 4),
(95, 7, 12, 4),
(96, 7, 13, 4),
(97, 7, 14, 4),
(98, 7, 15, 4),
(99, 7, 16, 3),
(100, 7, 17, 4),
(101, 7, 18, 4),
(102, 7, 19, 4),
(103, 7, 20, 4),
(104, 7, 21, 3),
(105, 7, 22, 4),
(106, 7, 23, 4),
(107, 7, 24, 4),
(108, 7, 25, 3),
(109, 7, 26, 4),
(110, 7, 27, 4),
(111, 8, 1, 3),
(112, 8, 2, 2),
(113, 8, 3, 4),
(114, 8, 4, 4),
(115, 8, 5, 3),
(116, 8, 6, 2),
(117, 8, 7, 4),
(118, 8, 8, 3),
(119, 8, 9, 4),
(120, 8, 10, 2),
(121, 8, 11, 4),
(122, 8, 12, 3),
(123, 8, 13, 4),
(124, 8, 14, 2),
(125, 8, 15, 4),
(126, 8, 16, 3),
(127, 8, 17, 2),
(128, 8, 18, 2),
(129, 8, 19, 4),
(130, 8, 20, 3),
(131, 8, 21, 4),
(132, 8, 22, 3),
(133, 8, 23, 4),
(134, 8, 24, 3),
(135, 8, 25, 4),
(136, 8, 26, 4),
(137, 8, 27, 3),
(138, 9, 1, 4),
(139, 9, 2, 4),
(140, 9, 3, 2),
(141, 9, 4, 3),
(142, 9, 5, 3),
(143, 9, 6, 4),
(144, 9, 7, 3),
(145, 9, 8, 3),
(146, 9, 9, 4),
(147, 9, 10, 2),
(148, 9, 11, 3),
(149, 9, 12, 4),
(150, 9, 13, 3),
(151, 9, 14, 3),
(152, 9, 15, 4),
(153, 9, 16, 3),
(154, 9, 17, 2),
(155, 9, 18, 2),
(156, 9, 19, 3),
(157, 9, 20, 4),
(158, 9, 21, 3),
(159, 9, 22, 3),
(160, 9, 23, 4),
(161, 9, 24, 3),
(162, 9, 25, 3),
(163, 9, 26, 3),
(164, 9, 27, 4),
(165, 10, 1, 4),
(166, 10, 2, 1),
(167, 10, 3, 4),
(168, 10, 4, 4),
(169, 10, 5, 4),
(170, 10, 6, 1),
(171, 10, 7, 4),
(172, 10, 8, 4),
(173, 10, 9, 4),
(174, 10, 10, 3),
(175, 10, 11, 4),
(176, 10, 12, 4),
(177, 10, 13, 4),
(178, 10, 14, 4),
(179, 10, 15, 4),
(180, 10, 16, 4),
(181, 10, 17, 4),
(182, 10, 18, 3),
(183, 10, 19, 4),
(184, 10, 20, 4),
(185, 10, 21, 1),
(186, 10, 22, 4),
(187, 10, 23, 4),
(188, 10, 24, 1),
(189, 10, 25, 1),
(190, 10, 26, 2),
(191, 10, 27, 4),
(192, 11, 1, 4),
(193, 11, 2, 2),
(194, 11, 3, 4),
(195, 11, 4, 4),
(196, 11, 5, 2),
(197, 11, 6, 2),
(198, 11, 7, 2),
(199, 11, 8, 4),
(200, 11, 9, 4),
(201, 11, 10, 2),
(202, 11, 11, 4),
(203, 11, 12, 4),
(204, 11, 13, 4),
(205, 11, 14, 4),
(206, 11, 15, 4),
(207, 11, 16, 4),
(208, 11, 17, 2),
(209, 11, 18, 2),
(210, 11, 19, 4),
(211, 11, 20, 4),
(212, 11, 21, 2),
(213, 11, 22, 4),
(214, 11, 23, 4),
(215, 11, 24, 2),
(216, 11, 25, 2),
(217, 11, 26, 4),
(218, 11, 27, 4),
(219, 12, 1, 3),
(220, 12, 2, 4),
(221, 12, 3, 4),
(222, 12, 4, 3),
(223, 12, 5, 2),
(224, 12, 6, 3),
(225, 12, 7, 2),
(226, 12, 8, 4),
(227, 12, 9, 3),
(228, 12, 10, 2),
(229, 12, 11, 4),
(230, 12, 12, 2),
(231, 12, 13, 3),
(232, 12, 14, 4),
(233, 12, 15, 3),
(234, 12, 16, 2),
(235, 12, 17, 3),
(236, 12, 18, 2),
(237, 12, 19, 4),
(238, 12, 20, 3),
(239, 12, 21, 2),
(240, 12, 22, 4),
(241, 12, 23, 2),
(242, 12, 24, 2),
(243, 12, 25, 4),
(244, 12, 26, 2),
(245, 12, 27, 2),
(246, 13, 1, 2),
(247, 13, 2, 4),
(248, 13, 3, 4),
(249, 13, 4, 4),
(250, 13, 5, 4),
(251, 13, 6, 4),
(252, 13, 7, 4),
(253, 13, 8, 4),
(254, 13, 9, 2),
(255, 13, 10, 4),
(256, 13, 11, 4),
(257, 13, 12, 4),
(258, 13, 13, 4),
(259, 13, 14, 2),
(260, 13, 15, 2),
(261, 13, 16, 4),
(262, 13, 17, 2),
(263, 13, 18, 4),
(264, 13, 19, 4),
(265, 13, 20, 4),
(266, 13, 21, 2),
(267, 13, 22, 2),
(268, 13, 23, 2),
(269, 13, 24, 2),
(270, 13, 25, 2),
(271, 13, 26, 2),
(272, 13, 27, 4),
(273, 14, 1, 4),
(274, 14, 2, 3),
(275, 14, 3, 3),
(276, 14, 4, 4),
(277, 14, 5, 4),
(278, 14, 6, 3),
(279, 14, 7, 3),
(280, 14, 8, 3),
(281, 14, 9, 4),
(282, 14, 10, 2),
(283, 14, 11, 4),
(284, 14, 12, 3),
(285, 14, 13, 3),
(286, 14, 14, 3),
(287, 14, 15, 4),
(288, 14, 16, 4),
(289, 14, 17, 2),
(290, 14, 18, 3),
(291, 14, 19, 4),
(292, 14, 20, 4),
(293, 14, 21, 2),
(294, 14, 22, 3),
(295, 14, 23, 4),
(296, 14, 24, 2),
(297, 14, 25, 3),
(298, 14, 26, 2),
(299, 14, 27, 4),
(300, 15, 1, 3),
(301, 15, 2, 4),
(302, 15, 3, 3),
(303, 15, 4, 4),
(304, 15, 5, 4),
(305, 15, 6, 3),
(306, 15, 7, 3),
(307, 15, 8, 3),
(308, 15, 9, 4),
(309, 15, 10, 3),
(310, 15, 11, 4),
(311, 15, 12, 4),
(312, 15, 13, 4),
(313, 15, 14, 3),
(314, 15, 15, 4),
(315, 15, 16, 4),
(316, 15, 17, 3),
(317, 15, 18, 2),
(318, 15, 19, 4),
(319, 15, 20, 3),
(320, 15, 21, 3),
(321, 15, 22, 4),
(322, 15, 23, 3),
(323, 15, 24, 2),
(324, 15, 25, 3),
(325, 15, 26, 4),
(326, 15, 27, 4),
(327, 16, 1, 3),
(328, 16, 2, 4),
(329, 16, 3, 2),
(330, 16, 4, 4),
(331, 16, 5, 4),
(332, 16, 6, 4),
(333, 16, 7, 3),
(334, 16, 8, 4),
(335, 16, 9, 2),
(336, 16, 10, 2),
(337, 16, 11, 4),
(338, 16, 12, 4),
(339, 16, 13, 4),
(340, 16, 14, 3),
(341, 16, 15, 4),
(342, 16, 16, 4),
(343, 16, 17, 3),
(344, 16, 18, 3),
(345, 16, 19, 4),
(346, 16, 20, 4),
(347, 16, 21, 2),
(348, 16, 22, 3),
(349, 16, 23, 2),
(350, 16, 24, 2),
(351, 16, 25, 2),
(352, 16, 26, 3),
(353, 16, 27, 3),
(354, 17, 1, 3),
(355, 17, 2, 4),
(356, 17, 3, 3),
(357, 17, 4, 3),
(358, 17, 5, 3),
(359, 17, 6, 4),
(360, 17, 7, 3),
(361, 17, 8, 3),
(362, 17, 9, 3),
(363, 17, 10, 3),
(364, 17, 11, 3),
(365, 17, 12, 3),
(366, 17, 13, 3),
(367, 17, 14, 3),
(368, 17, 15, 3),
(369, 17, 16, 3),
(370, 17, 17, 3),
(371, 17, 18, 2),
(372, 17, 19, 4),
(373, 17, 20, 3),
(374, 17, 21, 3),
(375, 17, 22, 3),
(376, 17, 23, 3),
(377, 17, 24, 3),
(378, 17, 25, 3),
(379, 17, 26, 3),
(380, 17, 27, 2),
(381, 18, 1, 3),
(382, 18, 2, 3),
(383, 18, 3, 4),
(384, 18, 4, 4),
(385, 18, 5, 4),
(386, 18, 6, 2),
(387, 18, 7, 4),
(388, 18, 8, 4),
(389, 18, 9, 3),
(390, 18, 10, 2),
(391, 18, 11, 3),
(392, 18, 12, 4),
(393, 18, 13, 4),
(394, 18, 14, 3),
(395, 18, 15, 3),
(396, 18, 16, 3),
(397, 18, 17, 4),
(398, 18, 18, 3),
(399, 18, 19, 3),
(400, 18, 20, 2),
(401, 18, 21, 2),
(402, 18, 22, 4),
(403, 18, 23, 2),
(404, 18, 24, 2),
(405, 18, 25, 2),
(406, 18, 26, 3),
(407, 18, 27, 3),
(408, 19, 1, 3),
(409, 19, 2, 4),
(410, 19, 3, 2),
(411, 19, 4, 4),
(412, 19, 5, 4),
(413, 19, 6, 4),
(414, 19, 7, 4),
(415, 19, 8, 3),
(416, 19, 9, 4),
(417, 19, 10, 2),
(418, 19, 11, 3),
(419, 19, 12, 2),
(420, 19, 13, 2),
(421, 19, 14, 4),
(422, 19, 15, 2),
(423, 19, 16, 4),
(424, 19, 17, 3),
(425, 19, 18, 2),
(426, 19, 19, 2),
(427, 19, 20, 3),
(428, 19, 21, 4),
(429, 19, 22, 3),
(430, 19, 23, 3),
(431, 19, 24, 4),
(432, 19, 25, 4),
(433, 19, 26, 2),
(434, 19, 27, 3),
(435, 20, 1, 4),
(436, 20, 2, 4),
(437, 20, 3, 2),
(438, 20, 4, 4),
(439, 20, 5, 4),
(440, 20, 6, 4),
(441, 20, 7, 4),
(442, 20, 8, 4),
(443, 20, 9, 4),
(444, 20, 10, 2),
(445, 20, 11, 4),
(446, 20, 12, 4),
(447, 20, 13, 4),
(448, 20, 14, 2),
(449, 20, 15, 4),
(450, 20, 16, 4),
(451, 20, 17, 2),
(452, 20, 18, 2),
(453, 20, 19, 4),
(454, 20, 20, 4),
(455, 20, 21, 2),
(456, 20, 22, 4),
(457, 20, 23, 4),
(458, 20, 24, 2),
(459, 20, 25, 2),
(460, 20, 26, 2),
(461, 20, 27, 2),
(462, 21, 1, 4),
(463, 21, 2, 1),
(464, 21, 3, 4),
(465, 21, 4, 4),
(466, 21, 5, 4),
(467, 21, 6, 1),
(468, 21, 7, 1),
(469, 21, 8, 2),
(470, 21, 9, 4),
(471, 21, 10, 2),
(472, 21, 11, 4),
(473, 21, 12, 3),
(474, 21, 13, 4),
(475, 21, 14, 1),
(476, 21, 15, 2),
(477, 21, 16, 4),
(478, 21, 17, 3),
(479, 21, 18, 1),
(480, 21, 19, 4),
(481, 21, 20, 4),
(482, 21, 21, 2),
(483, 21, 22, 3),
(484, 21, 23, 4),
(485, 21, 24, 1),
(486, 21, 25, 2),
(487, 21, 26, 2),
(488, 21, 27, 4),
(489, 22, 1, 4),
(490, 22, 2, 3),
(491, 22, 3, 2),
(492, 22, 4, 4),
(493, 22, 5, 3),
(494, 22, 6, 4),
(495, 22, 7, 4),
(496, 22, 8, 3),
(497, 22, 9, 4),
(498, 22, 10, 4),
(499, 22, 11, 4),
(500, 22, 12, 2),
(501, 22, 13, 3),
(502, 22, 14, 4),
(503, 22, 15, 4),
(504, 22, 16, 4),
(505, 22, 17, 2),
(506, 22, 18, 2),
(507, 22, 19, 4),
(508, 22, 20, 3),
(509, 22, 21, 1),
(510, 22, 22, 4),
(511, 22, 23, 3),
(512, 22, 24, 1),
(513, 22, 25, 4),
(514, 22, 26, 1),
(515, 22, 27, 4),
(516, 23, 1, 4),
(517, 23, 2, 3),
(518, 23, 3, 4),
(519, 23, 4, 4),
(520, 23, 5, 4),
(521, 23, 6, 3),
(522, 23, 7, 4),
(523, 23, 8, 4),
(524, 23, 9, 4),
(525, 23, 10, 3),
(526, 23, 11, 4),
(527, 23, 12, 4),
(528, 23, 13, 4),
(529, 23, 14, 4),
(530, 23, 15, 4),
(531, 23, 16, 4),
(532, 23, 17, 3),
(533, 23, 18, 4),
(534, 23, 19, 4),
(535, 23, 20, 4),
(536, 23, 21, 3),
(537, 23, 22, 4),
(538, 23, 23, 4),
(539, 23, 24, 3),
(540, 23, 25, 4),
(541, 23, 26, 4),
(542, 23, 27, 4),
(543, 24, 1, 4),
(544, 24, 2, 3),
(545, 24, 3, 4),
(546, 24, 4, 4),
(547, 24, 5, 4),
(548, 24, 6, 3),
(549, 24, 7, 3),
(550, 24, 8, 4),
(551, 24, 9, 3),
(552, 24, 10, 4),
(553, 24, 11, 3),
(554, 24, 12, 3),
(555, 24, 13, 4),
(556, 24, 14, 3),
(557, 24, 15, 4),
(558, 24, 16, 4),
(559, 24, 17, 3),
(560, 24, 18, 3),
(561, 24, 19, 4),
(562, 24, 20, 3),
(563, 24, 21, 2),
(564, 24, 22, 3),
(565, 24, 23, 3),
(566, 24, 24, 2),
(567, 24, 25, 3),
(568, 24, 26, 3),
(569, 24, 27, 3),
(570, 25, 1, 4),
(571, 25, 2, 4),
(572, 25, 3, 3),
(573, 25, 4, 4),
(574, 25, 5, 3),
(575, 25, 6, 3),
(576, 25, 7, 3),
(577, 25, 8, 4),
(578, 25, 9, 3),
(579, 25, 10, 2),
(580, 25, 11, 4),
(581, 25, 12, 3),
(582, 25, 13, 4),
(583, 25, 14, 2),
(584, 25, 15, 3),
(585, 25, 16, 4),
(586, 25, 17, 2),
(587, 25, 18, 2),
(588, 25, 19, 4),
(589, 25, 20, 3),
(590, 25, 21, 3),
(591, 25, 22, 2),
(592, 25, 23, 4),
(593, 25, 24, 2),
(594, 25, 25, 2),
(595, 25, 26, 3),
(596, 25, 27, 4),
(597, 26, 1, 3),
(598, 26, 2, 3),
(599, 26, 3, 1),
(600, 26, 4, 4),
(601, 26, 5, 3),
(602, 26, 6, 3),
(603, 26, 7, 3),
(604, 26, 8, 3),
(605, 26, 9, 2),
(606, 26, 10, 4),
(607, 26, 11, 4),
(608, 26, 12, 3),
(609, 26, 13, 4),
(610, 26, 14, 3),
(611, 26, 15, 4),
(612, 26, 16, 3),
(613, 26, 17, 2),
(614, 26, 18, 2),
(615, 26, 19, 4),
(616, 26, 20, 4),
(617, 26, 21, 3),
(618, 26, 22, 4),
(619, 26, 23, 2),
(620, 26, 24, 1),
(621, 26, 25, 2),
(622, 26, 26, 3),
(623, 26, 27, 4),
(624, 27, 1, 2),
(625, 27, 2, 3),
(626, 27, 3, 2),
(627, 27, 4, 4),
(628, 27, 5, 3),
(629, 27, 6, 2),
(630, 27, 7, 3),
(631, 27, 8, 2),
(632, 27, 9, 4),
(633, 27, 10, 3),
(634, 27, 11, 4),
(635, 27, 12, 4),
(636, 27, 13, 3),
(637, 27, 14, 3),
(638, 27, 15, 2),
(639, 27, 16, 2),
(640, 27, 17, 2),
(641, 27, 18, 3),
(642, 27, 19, 4),
(643, 27, 20, 3),
(644, 27, 21, 4),
(645, 27, 22, 2),
(646, 27, 23, 3),
(647, 27, 24, 2),
(648, 27, 25, 4),
(649, 27, 26, 2),
(650, 27, 27, 2),
(651, 28, 1, 3),
(652, 28, 2, 4),
(653, 28, 3, 3),
(654, 28, 4, 4),
(655, 28, 5, 4),
(656, 28, 6, 4),
(657, 28, 7, 4),
(658, 28, 8, 3),
(659, 28, 9, 4),
(660, 28, 10, 4),
(661, 28, 11, 3),
(662, 28, 12, 4),
(663, 28, 13, 3),
(664, 28, 14, 2),
(665, 28, 15, 4),
(666, 28, 16, 3),
(667, 28, 17, 4),
(668, 28, 18, 4),
(669, 28, 19, 3),
(670, 28, 20, 4),
(671, 28, 21, 4),
(672, 28, 22, 3),
(673, 28, 23, 4),
(674, 28, 24, 2),
(675, 28, 25, 4),
(676, 28, 26, 3),
(677, 28, 27, 4),
(678, 29, 1, 4),
(679, 29, 2, 4),
(680, 29, 3, 3),
(681, 29, 4, 4),
(682, 29, 5, 4),
(683, 29, 6, 2),
(684, 29, 7, 4),
(685, 29, 8, 3),
(686, 29, 9, 2),
(687, 29, 10, 3),
(688, 29, 11, 4),
(689, 29, 12, 3),
(690, 29, 13, 4),
(691, 29, 14, 2),
(692, 29, 15, 3),
(693, 29, 16, 2),
(694, 29, 17, 2),
(695, 29, 18, 3),
(696, 29, 19, 4),
(697, 29, 20, 3),
(698, 29, 21, 2),
(699, 29, 22, 4),
(700, 29, 23, 4),
(701, 29, 24, 3),
(702, 29, 25, 3),
(703, 29, 26, 2),
(704, 29, 27, 3),
(705, 30, 1, 3),
(706, 30, 2, 3),
(707, 30, 3, 4),
(708, 30, 4, 3),
(709, 30, 5, 4),
(710, 30, 6, 2),
(711, 30, 7, 3),
(712, 30, 8, 4),
(713, 30, 9, 3),
(714, 30, 10, 3),
(715, 30, 11, 3),
(716, 30, 12, 4),
(717, 30, 13, 3),
(718, 30, 14, 2),
(719, 30, 15, 3),
(720, 30, 16, 4),
(721, 30, 17, 4),
(722, 30, 18, 3),
(723, 30, 19, 4),
(724, 30, 20, 3),
(725, 30, 21, 2),
(726, 30, 22, 4),
(727, 30, 23, 3),
(728, 30, 24, 2),
(729, 30, 25, 2),
(730, 30, 26, 3),
(731, 30, 27, 4),
(732, 31, 1, 3),
(733, 31, 2, 4),
(734, 31, 3, 2),
(735, 31, 4, 4),
(736, 31, 5, 4),
(737, 31, 6, 4),
(738, 31, 7, 4),
(739, 31, 8, 3),
(740, 31, 9, 4),
(741, 31, 10, 3),
(742, 31, 11, 4),
(743, 31, 12, 4),
(744, 31, 13, 3),
(745, 31, 14, 4),
(746, 31, 15, 4),
(747, 31, 16, 3),
(748, 31, 17, 3),
(749, 31, 18, 4),
(750, 31, 19, 4),
(751, 31, 20, 4),
(752, 31, 21, 3),
(753, 31, 22, 4),
(754, 31, 23, 4),
(755, 31, 24, 2),
(756, 31, 25, 4),
(757, 31, 26, 4),
(758, 31, 27, 4),
(759, 32, 1, 4),
(760, 32, 2, 3),
(761, 32, 3, 2),
(762, 32, 4, 3),
(763, 32, 5, 3),
(764, 32, 6, 2),
(765, 32, 7, 3),
(766, 32, 8, 4),
(767, 32, 9, 4),
(768, 32, 10, 3),
(769, 32, 11, 4),
(770, 32, 12, 2),
(771, 32, 13, 3),
(772, 32, 14, 3),
(773, 32, 15, 3),
(774, 32, 16, 4),
(775, 32, 17, 2),
(776, 32, 18, 2),
(777, 32, 19, 2),
(778, 32, 20, 3),
(779, 32, 21, 2),
(780, 32, 22, 4),
(781, 32, 23, 2),
(782, 32, 24, 2),
(783, 32, 25, 2),
(784, 32, 26, 3),
(785, 32, 27, 2),
(786, 33, 1, 4),
(787, 33, 2, 3),
(788, 33, 3, 2),
(789, 33, 4, 3),
(790, 33, 5, 4),
(791, 33, 6, 2),
(792, 33, 7, 4),
(793, 33, 8, 4),
(794, 33, 9, 3),
(795, 33, 10, 3),
(796, 33, 11, 3),
(797, 33, 12, 4),
(798, 33, 13, 4),
(799, 33, 14, 3),
(800, 33, 15, 4),
(801, 33, 16, 4),
(802, 33, 17, 3),
(803, 33, 18, 2),
(804, 33, 19, 4),
(805, 33, 20, 4),
(806, 33, 21, 3),
(807, 33, 22, 4),
(808, 33, 23, 4),
(809, 33, 24, 2),
(810, 33, 25, 3),
(811, 33, 26, 2),
(812, 33, 27, 3),
(813, 3, 1, 4),
(814, 3, 2, 3),
(815, 3, 3, 1),
(816, 3, 4, 4),
(817, 3, 5, 4),
(818, 3, 6, 4),
(819, 3, 7, 3),
(820, 3, 8, 4),
(821, 3, 9, 4),
(822, 3, 10, 3),
(823, 3, 11, 4),
(824, 3, 12, 3),
(825, 3, 13, 4),
(826, 3, 14, 4),
(827, 3, 15, 1),
(828, 3, 16, 3),
(829, 3, 17, 4),
(830, 3, 18, 3),
(831, 3, 19, 3),
(832, 3, 20, 3),
(833, 3, 21, 4),
(834, 3, 22, 3),
(835, 3, 23, 2),
(836, 3, 24, 1),
(837, 3, 25, 3),
(838, 3, 26, 4),
(839, 3, 27, 1),
(840, 4, 1, 4),
(841, 4, 2, 3),
(842, 4, 3, 4),
(843, 4, 4, 4),
(844, 4, 5, 4),
(845, 4, 6, 3),
(846, 4, 7, 4),
(847, 4, 8, 4),
(848, 4, 9, 3),
(849, 4, 10, 3),
(850, 4, 11, 4),
(851, 4, 12, 4),
(852, 4, 13, 3),
(853, 4, 14, 3),
(854, 4, 15, 3),
(855, 4, 16, 4),
(856, 4, 17, 3),
(857, 4, 18, 3),
(858, 4, 19, 4),
(859, 4, 20, 3),
(860, 4, 21, 3),
(861, 4, 22, 4),
(862, 4, 23, 4),
(863, 4, 24, 2),
(864, 4, 25, 3),
(865, 4, 26, 3),
(866, 4, 27, 1),
(867, 5, 1, 4),
(868, 5, 2, 4),
(869, 5, 3, 1),
(870, 5, 4, 4),
(871, 5, 5, 4),
(872, 5, 6, 4),
(873, 5, 7, 4),
(874, 5, 8, 4),
(875, 5, 9, 4),
(876, 5, 10, 1),
(877, 5, 11, 4),
(878, 5, 12, 3),
(879, 5, 13, 4),
(880, 5, 14, 3),
(881, 5, 15, 2),
(882, 5, 16, 3),
(883, 5, 17, 2),
(884, 5, 18, 3),
(885, 5, 19, 4),
(886, 5, 20, 3),
(887, 5, 21, 1),
(888, 5, 22, 3),
(889, 5, 23, 1),
(890, 5, 24, 1),
(891, 5, 25, 3),
(892, 5, 26, 1),
(893, 5, 27, 2),
(894, 34, 1, 4),
(895, 34, 2, 4),
(896, 34, 3, 1),
(897, 34, 4, 4),
(898, 34, 5, 4),
(899, 34, 6, 4),
(900, 34, 7, 4),
(901, 34, 8, 3),
(902, 34, 9, 4),
(903, 34, 10, 4),
(904, 34, 11, 3),
(905, 34, 12, 3),
(906, 34, 13, 3),
(907, 34, 14, 3),
(908, 34, 15, 3),
(909, 34, 16, 2),
(910, 34, 17, 3),
(911, 34, 18, 4),
(912, 34, 19, 4),
(913, 34, 20, 3),
(914, 34, 21, 3),
(915, 34, 22, 3),
(916, 34, 23, 1),
(917, 34, 24, 1),
(918, 34, 25, 3),
(919, 34, 26, 3),
(920, 34, 27, 1),
(921, 35, 1, 4),
(922, 35, 2, 4),
(923, 35, 3, 1),
(924, 35, 4, 4),
(925, 35, 5, 4),
(926, 35, 6, 3),
(927, 35, 7, 3),
(928, 35, 8, 2),
(929, 35, 9, 3),
(930, 35, 10, 4),
(931, 35, 11, 3),
(932, 35, 12, 3),
(933, 35, 13, 3),
(934, 35, 14, 4),
(935, 35, 15, 4),
(936, 35, 16, 3),
(937, 35, 17, 3),
(938, 35, 18, 3),
(939, 35, 19, 4),
(940, 35, 20, 4),
(941, 35, 21, 4),
(942, 35, 22, 2),
(943, 35, 23, 1),
(944, 35, 24, 1),
(945, 35, 25, 1),
(946, 35, 26, 3),
(947, 35, 27, 3),
(948, 36, 1, 3),
(949, 36, 2, 4),
(950, 36, 3, 2),
(951, 36, 4, 4),
(952, 36, 5, 4),
(953, 36, 6, 4),
(954, 36, 7, 3),
(955, 36, 8, 4),
(956, 36, 9, 4),
(957, 36, 10, 3),
(958, 36, 11, 4),
(959, 36, 12, 3),
(960, 36, 13, 4),
(961, 36, 14, 4),
(962, 36, 15, 4),
(963, 36, 16, 3),
(964, 36, 17, 2),
(965, 36, 18, 4),
(966, 36, 19, 3),
(967, 36, 20, 4),
(968, 36, 21, 3),
(969, 36, 22, 3),
(970, 36, 23, 4),
(971, 36, 24, 3),
(972, 36, 25, 4),
(973, 36, 26, 4),
(974, 36, 27, 4),
(975, 37, 1, 3),
(976, 37, 2, 4),
(977, 37, 3, 4),
(978, 37, 4, 4),
(979, 37, 5, 4),
(980, 37, 6, 4),
(981, 37, 7, 4),
(982, 37, 8, 3),
(983, 37, 9, 3),
(984, 37, 10, 4),
(985, 37, 11, 4),
(986, 37, 12, 3),
(987, 37, 13, 4),
(988, 37, 14, 3),
(989, 37, 15, 4),
(990, 37, 16, 4),
(991, 37, 17, 4),
(992, 37, 18, 3),
(993, 37, 19, 2),
(994, 37, 20, 4),
(995, 37, 21, 2),
(996, 37, 22, 3),
(997, 37, 23, 2),
(998, 37, 24, 1),
(999, 37, 25, 3),
(1000, 37, 26, 3),
(1001, 37, 27, 2),
(1002, 38, 1, 4),
(1003, 38, 2, 3),
(1004, 38, 3, 1),
(1005, 38, 4, 4),
(1006, 38, 5, 4),
(1007, 38, 6, 4),
(1008, 38, 7, 2),
(1009, 38, 8, 2),
(1010, 38, 9, 2),
(1011, 38, 10, 1),
(1012, 38, 11, 3),
(1013, 38, 12, 3),
(1014, 38, 13, 4),
(1015, 38, 14, 2),
(1016, 38, 15, 3),
(1017, 38, 16, 3),
(1018, 38, 17, 3),
(1019, 38, 18, 2),
(1020, 38, 19, 4),
(1021, 38, 20, 4),
(1022, 38, 21, 4),
(1023, 38, 22, 2),
(1024, 38, 23, 1),
(1025, 38, 24, 3),
(1026, 38, 25, 1),
(1027, 38, 26, 2),
(1028, 38, 27, 4),
(1029, 39, 1, 3),
(1030, 39, 2, 4),
(1031, 39, 3, 4),
(1032, 39, 4, 4),
(1033, 39, 5, 4),
(1034, 39, 6, 4),
(1035, 39, 7, 3),
(1036, 39, 8, 2),
(1037, 39, 9, 3),
(1038, 39, 10, 3),
(1039, 39, 11, 4),
(1040, 39, 12, 3),
(1041, 39, 13, 2),
(1042, 39, 14, 4),
(1043, 39, 15, 4),
(1044, 39, 16, 4),
(1045, 39, 17, 2),
(1046, 39, 18, 3),
(1047, 39, 19, 4),
(1048, 39, 20, 3),
(1049, 39, 21, 4),
(1050, 39, 22, 3),
(1051, 39, 23, 2),
(1052, 39, 24, 1),
(1053, 39, 25, 2),
(1054, 39, 26, 3),
(1055, 39, 27, 4),
(1056, 40, 1, 2),
(1057, 40, 2, 3),
(1058, 40, 3, 1),
(1059, 40, 4, 3),
(1060, 40, 5, 3),
(1061, 40, 6, 4),
(1062, 40, 7, 2),
(1063, 40, 8, 3),
(1064, 40, 9, 3),
(1065, 40, 10, 2),
(1066, 40, 11, 3),
(1067, 40, 12, 1),
(1068, 40, 13, 4),
(1069, 40, 14, 4),
(1070, 40, 15, 1),
(1071, 40, 16, 3),
(1072, 40, 17, 3),
(1073, 40, 18, 1),
(1074, 40, 19, 3),
(1075, 40, 20, 3),
(1076, 40, 21, 3),
(1077, 40, 22, 2),
(1078, 40, 23, 2),
(1079, 40, 24, 3),
(1080, 40, 25, 2),
(1081, 40, 26, 2),
(1082, 40, 27, 2),
(1083, 41, 1, 3),
(1084, 41, 2, 3),
(1085, 41, 3, 2),
(1086, 41, 4, 4),
(1087, 41, 5, 4),
(1088, 41, 6, 1),
(1089, 41, 7, 3),
(1090, 41, 8, 2),
(1091, 41, 9, 3),
(1092, 41, 10, 3),
(1093, 41, 11, 3),
(1094, 41, 12, 3),
(1095, 41, 13, 4),
(1096, 41, 14, 3),
(1097, 41, 15, 3),
(1098, 41, 16, 3),
(1099, 41, 17, 3),
(1100, 41, 18, 3),
(1101, 41, 19, 4),
(1102, 41, 20, 4),
(1103, 41, 21, 4),
(1104, 41, 22, 4),
(1105, 41, 23, 3),
(1106, 41, 24, 1),
(1107, 41, 25, 3),
(1108, 41, 26, 3),
(1109, 41, 27, 4),
(1110, 42, 1, 3),
(1111, 42, 2, 3),
(1112, 42, 3, 3),
(1113, 42, 4, 3),
(1114, 42, 5, 3),
(1115, 42, 6, 4),
(1116, 42, 7, 3),
(1117, 42, 8, 4),
(1118, 42, 9, 4),
(1119, 42, 10, 4),
(1120, 42, 11, 3),
(1121, 42, 12, 3),
(1122, 42, 13, 4),
(1123, 42, 14, 3),
(1124, 42, 15, 3),
(1125, 42, 16, 2),
(1126, 42, 17, 2),
(1127, 42, 18, 3),
(1128, 42, 19, 4),
(1129, 42, 20, 3),
(1130, 42, 21, 2),
(1131, 42, 22, 3),
(1132, 42, 23, 3),
(1133, 42, 24, 1),
(1134, 42, 25, 2),
(1135, 42, 26, 1),
(1136, 42, 27, 2),
(1137, 43, 1, 4),
(1138, 43, 2, 3),
(1139, 43, 3, 2),
(1140, 43, 4, 4),
(1141, 43, 5, 4),
(1142, 43, 6, 4),
(1143, 43, 7, 3),
(1144, 43, 8, 3),
(1145, 43, 9, 4),
(1146, 43, 10, 3),
(1147, 43, 11, 3),
(1148, 43, 12, 3),
(1149, 43, 13, 3),
(1150, 43, 14, 2),
(1151, 43, 15, 3),
(1152, 43, 16, 2),
(1153, 43, 17, 3),
(1154, 43, 18, 4),
(1155, 43, 19, 3),
(1156, 43, 20, 3),
(1157, 43, 21, 4),
(1158, 43, 22, 3),
(1159, 43, 23, 3),
(1160, 43, 24, 4),
(1161, 43, 25, 3),
(1162, 43, 26, 3),
(1163, 43, 27, 4),
(1164, 44, 1, 4),
(1165, 44, 2, 4),
(1166, 44, 3, 1),
(1167, 44, 4, 4),
(1168, 44, 5, 4),
(1169, 44, 6, 4),
(1170, 44, 7, 3),
(1171, 44, 8, 4),
(1172, 44, 9, 4),
(1173, 44, 10, 4),
(1174, 44, 11, 4),
(1175, 44, 12, 3),
(1176, 44, 13, 4),
(1177, 44, 14, 4),
(1178, 44, 15, 3),
(1179, 44, 16, 3),
(1180, 44, 17, 4),
(1181, 44, 18, 3),
(1182, 44, 19, 4),
(1183, 44, 20, 4),
(1184, 44, 21, 3),
(1185, 44, 22, 4),
(1186, 44, 23, 2),
(1187, 44, 24, 1),
(1188, 44, 25, 3),
(1189, 44, 26, 3),
(1190, 44, 27, 3),
(1191, 45, 1, 4),
(1192, 45, 2, 4),
(1193, 45, 3, 4),
(1194, 45, 4, 4),
(1195, 45, 5, 4),
(1196, 45, 6, 4),
(1197, 45, 7, 4),
(1198, 45, 8, 3),
(1199, 45, 9, 2),
(1200, 45, 10, 2),
(1201, 45, 11, 4),
(1202, 45, 12, 3),
(1203, 45, 13, 4),
(1204, 45, 14, 3),
(1205, 45, 15, 3),
(1206, 45, 16, 3),
(1207, 45, 17, 2),
(1208, 45, 18, 1),
(1209, 45, 19, 4),
(1210, 45, 20, 4),
(1211, 45, 21, 1),
(1212, 45, 22, 2),
(1213, 45, 23, 3),
(1214, 45, 24, 1),
(1215, 45, 25, 2),
(1216, 45, 26, 2),
(1217, 45, 27, 2),
(1218, 46, 1, 3),
(1219, 46, 2, 4),
(1220, 46, 3, 4),
(1221, 46, 4, 4),
(1222, 46, 5, 4),
(1223, 46, 6, 3),
(1224, 46, 7, 3),
(1225, 46, 8, 4),
(1226, 46, 9, 2),
(1227, 46, 10, 2),
(1228, 46, 11, 2),
(1229, 46, 12, 3),
(1230, 46, 13, 3),
(1231, 46, 14, 4),
(1232, 46, 15, 4),
(1233, 46, 16, 4),
(1234, 46, 17, 3),
(1235, 46, 18, 3),
(1236, 46, 19, 2),
(1237, 46, 20, 3),
(1238, 46, 21, 4),
(1239, 46, 22, 4),
(1240, 46, 23, 3),
(1241, 46, 24, 3),
(1242, 46, 25, 3),
(1243, 46, 26, 2),
(1244, 46, 27, 3),
(1245, 47, 1, 3),
(1246, 47, 2, 4),
(1247, 47, 3, 4),
(1248, 47, 4, 3),
(1249, 47, 5, 4),
(1250, 47, 6, 4),
(1251, 47, 7, 3),
(1252, 47, 8, 3),
(1253, 47, 9, 4),
(1254, 47, 10, 3),
(1255, 47, 11, 3),
(1256, 47, 12, 4),
(1257, 47, 13, 3),
(1258, 47, 14, 4),
(1259, 47, 15, 4),
(1260, 47, 16, 3),
(1261, 47, 17, 4),
(1262, 47, 18, 4),
(1263, 47, 19, 4),
(1264, 47, 20, 3),
(1265, 47, 21, 4),
(1266, 47, 22, 3),
(1267, 47, 23, 3),
(1268, 47, 24, 2),
(1269, 47, 25, 4),
(1270, 47, 26, 3),
(1271, 47, 27, 4),
(1272, 48, 1, 3),
(1273, 48, 2, 3),
(1274, 48, 3, 4),
(1275, 48, 4, 4),
(1276, 48, 5, 4),
(1277, 48, 6, 3),
(1278, 48, 7, 4),
(1279, 48, 8, 4),
(1280, 48, 9, 4),
(1281, 48, 10, 1),
(1282, 48, 11, 4),
(1283, 48, 12, 1),
(1284, 48, 13, 1),
(1285, 48, 14, 1),
(1286, 48, 15, 1),
(1287, 48, 16, 1),
(1288, 48, 17, 3),
(1289, 48, 18, 4),
(1290, 48, 19, 3),
(1291, 48, 20, 2),
(1292, 48, 21, 4),
(1293, 48, 22, 2),
(1294, 48, 23, 1),
(1295, 48, 24, 1),
(1296, 48, 25, 4),
(1297, 48, 26, 1),
(1298, 48, 27, 4),
(1299, 49, 1, 4),
(1300, 49, 2, 4),
(1301, 49, 3, 1),
(1302, 49, 4, 3),
(1303, 49, 5, 3),
(1304, 49, 6, 4),
(1305, 49, 7, 3),
(1306, 49, 8, 3),
(1307, 49, 9, 3),
(1308, 49, 10, 3),
(1309, 49, 11, 3),
(1310, 49, 12, 3),
(1311, 49, 13, 3),
(1312, 49, 14, 2),
(1313, 49, 15, 3),
(1314, 49, 16, 3),
(1315, 49, 17, 4),
(1316, 49, 18, 3),
(1317, 49, 19, 3),
(1318, 49, 20, 3),
(1319, 49, 21, 3),
(1320, 49, 22, 3),
(1321, 49, 23, 2),
(1322, 49, 24, 2),
(1323, 49, 25, 3),
(1324, 49, 26, 3),
(1325, 49, 27, 3),
(1326, 50, 1, 4),
(1327, 50, 2, 4),
(1328, 50, 3, 1),
(1329, 50, 4, 3),
(1330, 50, 5, 4),
(1331, 50, 6, 4),
(1332, 50, 7, 3),
(1333, 50, 8, 3),
(1334, 50, 9, 2),
(1335, 50, 10, 4),
(1336, 50, 11, 3),
(1337, 50, 12, 3),
(1338, 50, 13, 4),
(1339, 50, 14, 4),
(1340, 50, 15, 4),
(1341, 50, 16, 4),
(1342, 50, 17, 2),
(1343, 50, 18, 3),
(1344, 50, 19, 4),
(1345, 50, 20, 4),
(1346, 50, 21, 4),
(1347, 50, 22, 3),
(1348, 50, 23, 2),
(1349, 50, 24, 3),
(1350, 50, 25, 3),
(1351, 50, 26, 2),
(1352, 50, 27, 4),
(1353, 51, 1, 4),
(1354, 51, 2, 3),
(1355, 51, 3, 2),
(1356, 51, 4, 3),
(1357, 51, 5, 4),
(1358, 51, 6, 3),
(1359, 51, 7, 3),
(1360, 51, 8, 4),
(1361, 51, 9, 3),
(1362, 51, 10, 2),
(1363, 51, 11, 3),
(1364, 51, 12, 3),
(1365, 51, 13, 3),
(1366, 51, 14, 4),
(1367, 51, 15, 3),
(1368, 51, 16, 3),
(1369, 51, 17, 3),
(1370, 51, 18, 3),
(1371, 51, 19, 4),
(1372, 51, 20, 3),
(1373, 51, 21, 4),
(1374, 51, 22, 3),
(1375, 51, 23, 3),
(1376, 51, 24, 1),
(1377, 51, 25, 2),
(1378, 51, 26, 3),
(1379, 51, 27, 4),
(1380, 52, 1, 4),
(1381, 52, 2, 3),
(1382, 52, 3, 2),
(1383, 52, 4, 4),
(1384, 52, 5, 4),
(1385, 52, 6, 3),
(1386, 52, 7, 4),
(1387, 52, 8, 3),
(1388, 52, 9, 2),
(1389, 52, 10, 3),
(1390, 52, 11, 3),
(1391, 52, 12, 3),
(1392, 52, 13, 0),
(1393, 52, 14, 2),
(1394, 52, 15, 4),
(1395, 52, 16, 3),
(1396, 52, 17, 2),
(1397, 52, 18, 3),
(1398, 52, 19, 4),
(1399, 52, 20, 4),
(1400, 52, 21, 3),
(1401, 52, 22, 3),
(1402, 52, 23, 2),
(1403, 52, 24, 2),
(1404, 52, 25, 1),
(1405, 52, 26, 3),
(1406, 52, 27, 2),
(1407, 53, 1, 2),
(1408, 53, 2, 4),
(1409, 53, 3, 1),
(1410, 53, 4, 4),
(1411, 53, 5, 4),
(1412, 53, 6, 4),
(1413, 53, 7, 2),
(1414, 53, 8, 3),
(1415, 53, 9, 4),
(1416, 53, 10, 4),
(1417, 53, 11, 2),
(1418, 53, 12, 1),
(1419, 53, 13, 1),
(1420, 53, 14, 1),
(1421, 53, 15, 1),
(1422, 53, 16, 4),
(1423, 53, 17, 1),
(1424, 53, 18, 1),
(1425, 53, 19, 1),
(1426, 53, 20, 1),
(1427, 53, 21, 4),
(1428, 53, 22, 4),
(1429, 53, 23, 2),
(1430, 53, 24, 1),
(1431, 53, 25, 4),
(1432, 53, 26, 4),
(1433, 53, 27, 4),
(1434, 54, 1, 3),
(1435, 54, 2, 3),
(1436, 54, 3, 4),
(1437, 54, 4, 4),
(1438, 54, 5, 4),
(1439, 54, 6, 3),
(1440, 54, 7, 4),
(1441, 54, 8, 3),
(1442, 54, 9, 3),
(1443, 54, 10, 3),
(1444, 54, 11, 4),
(1445, 54, 12, 4),
(1446, 54, 13, 3),
(1447, 54, 14, 3),
(1448, 54, 15, 4),
(1449, 54, 16, 3),
(1450, 54, 17, 3),
(1451, 54, 18, 1),
(1452, 54, 19, 4),
(1453, 54, 20, 3),
(1454, 54, 21, 3),
(1455, 54, 22, 4),
(1456, 54, 23, 4),
(1457, 54, 24, 1),
(1458, 54, 25, 3),
(1459, 54, 26, 1),
(1460, 54, 27, 3),
(1515, 55, 1, 4),
(1516, 55, 2, 3),
(1517, 55, 3, 1),
(1518, 55, 4, 4),
(1519, 55, 5, 3),
(1520, 55, 6, 4),
(1521, 55, 7, 3),
(1522, 55, 8, 2),
(1523, 55, 9, 3),
(1524, 55, 10, 3),
(1525, 55, 11, 3),
(1526, 55, 12, 3),
(1527, 55, 13, 3),
(1528, 55, 14, 2),
(1529, 55, 15, 3),
(1530, 55, 16, 3),
(1531, 55, 17, 3),
(1532, 55, 18, 3),
(1533, 55, 19, 3),
(1534, 55, 20, 2),
(1535, 55, 21, 3),
(1536, 55, 22, 3),
(1537, 55, 23, 3),
(1538, 55, 24, 2),
(1539, 55, 25, 3),
(1540, 55, 26, 3),
(1541, 55, 27, 2),
(1542, 56, 1, 4),
(1543, 56, 2, 2),
(1544, 56, 3, 1),
(1545, 56, 4, 4),
(1546, 56, 5, 4),
(1547, 56, 6, 3),
(1548, 56, 7, 2),
(1549, 56, 8, 3),
(1550, 56, 9, 2),
(1551, 56, 10, 3),
(1552, 56, 11, 3),
(1553, 56, 12, 3),
(1554, 56, 13, 4),
(1555, 56, 14, 2),
(1556, 56, 15, 3),
(1557, 56, 16, 3),
(1558, 56, 17, 2),
(1559, 56, 18, 2),
(1560, 56, 19, 2),
(1561, 56, 20, 3),
(1562, 56, 21, 4),
(1563, 56, 22, 3),
(1564, 56, 23, 2),
(1565, 56, 24, 3),
(1566, 56, 25, 2),
(1567, 56, 26, 3),
(1568, 56, 27, 3),
(1569, 57, 1, 3),
(1570, 57, 2, 3),
(1571, 57, 3, 3),
(1572, 57, 4, 3),
(1573, 57, 5, 3),
(1574, 57, 6, 4),
(1575, 57, 7, 3),
(1576, 57, 8, 3),
(1577, 57, 9, 4),
(1578, 57, 10, 4),
(1579, 57, 11, 3),
(1580, 57, 12, 3),
(1581, 57, 13, 3),
(1582, 57, 14, 3),
(1583, 57, 15, 3),
(1584, 57, 16, 2),
(1585, 57, 17, 3),
(1586, 57, 18, 3),
(1587, 57, 19, 3),
(1588, 57, 20, 3),
(1589, 57, 21, 3),
(1590, 57, 22, 3),
(1591, 57, 23, 2),
(1592, 57, 24, 2),
(1593, 57, 25, 2),
(1594, 57, 26, 2),
(1595, 57, 27, 2),
(1596, 58, 1, 4),
(1597, 58, 2, 4),
(1598, 58, 3, 1),
(1599, 58, 4, 4),
(1600, 58, 5, 4),
(1601, 58, 6, 4),
(1602, 58, 7, 4),
(1603, 58, 8, 4),
(1604, 58, 9, 4),
(1605, 58, 10, 4),
(1606, 58, 11, 3),
(1607, 58, 12, 3),
(1608, 58, 13, 3),
(1609, 58, 14, 3),
(1610, 58, 15, 3),
(1611, 58, 16, 2),
(1612, 58, 17, 2),
(1613, 58, 18, 3),
(1614, 58, 19, 4),
(1615, 58, 20, 4),
(1616, 58, 21, 3),
(1617, 58, 22, 3),
(1618, 58, 23, 1),
(1619, 58, 24, 1),
(1620, 58, 25, 3),
(1621, 58, 26, 3),
(1622, 58, 27, 1),
(1623, 59, 1, 4),
(1624, 59, 2, 3),
(1625, 59, 3, 3),
(1626, 59, 4, 4),
(1627, 59, 5, 4),
(1628, 59, 6, 4),
(1629, 59, 7, 3),
(1630, 59, 8, 4),
(1631, 59, 9, 4),
(1632, 59, 10, 3),
(1633, 59, 11, 3),
(1634, 59, 12, 3),
(1635, 59, 13, 4),
(1636, 59, 14, 3),
(1637, 59, 15, 3),
(1638, 59, 16, 4),
(1639, 59, 17, 3),
(1640, 59, 18, 3),
(1641, 59, 19, 4),
(1642, 59, 20, 4),
(1643, 59, 21, 3),
(1644, 59, 22, 3),
(1645, 59, 23, 3),
(1646, 59, 24, 2),
(1647, 59, 25, 3),
(1648, 59, 26, 3),
(1649, 59, 27, 3),
(1650, 60, 1, 4),
(1651, 60, 2, 3),
(1652, 60, 3, 2),
(1653, 60, 4, 4),
(1654, 60, 5, 4),
(1655, 60, 6, 3),
(1656, 60, 7, 3),
(1657, 60, 8, 3),
(1658, 60, 9, 4),
(1659, 60, 10, 3),
(1660, 60, 11, 3),
(1661, 60, 12, 3),
(1662, 60, 13, 4),
(1663, 60, 14, 2),
(1664, 60, 15, 4),
(1665, 60, 16, 3),
(1666, 60, 17, 3),
(1667, 60, 18, 4),
(1668, 60, 19, 3),
(1669, 60, 20, 3),
(1670, 60, 21, 4),
(1671, 60, 22, 2),
(1672, 60, 23, 3),
(1673, 60, 24, 2),
(1674, 60, 25, 3),
(1675, 60, 26, 3),
(1676, 60, 27, 4),
(1677, 61, 1, 4),
(1678, 61, 2, 4),
(1679, 61, 3, 1),
(1680, 61, 4, 4),
(1681, 61, 5, 4),
(1682, 61, 6, 4),
(1683, 61, 7, 4),
(1684, 61, 8, 4),
(1685, 61, 9, 4),
(1686, 61, 10, 3),
(1687, 61, 11, 4),
(1688, 61, 12, 4),
(1689, 61, 13, 4),
(1690, 61, 14, 2),
(1691, 61, 15, 4),
(1692, 61, 16, 4),
(1693, 61, 17, 3),
(1694, 61, 18, 4),
(1695, 61, 19, 4),
(1696, 61, 20, 4),
(1697, 61, 21, 2),
(1698, 61, 22, 4),
(1699, 61, 23, 4),
(1700, 61, 24, 1),
(1701, 61, 25, 3),
(1702, 61, 26, 4),
(1703, 61, 27, 4),
(1704, 62, 1, 3),
(1705, 62, 2, 4),
(1706, 62, 3, 2),
(1707, 62, 4, 4),
(1708, 62, 5, 3),
(1709, 62, 6, 4),
(1710, 62, 7, 3),
(1711, 62, 8, 2),
(1712, 62, 9, 3),
(1713, 62, 10, 2),
(1714, 62, 11, 3),
(1715, 62, 12, 3),
(1716, 62, 13, 4),
(1717, 62, 14, 3),
(1718, 62, 15, 2),
(1719, 62, 16, 3),
(1720, 62, 17, 3),
(1721, 62, 18, 3),
(1722, 62, 19, 4),
(1723, 62, 20, 3),
(1724, 62, 21, 2),
(1725, 62, 22, 2),
(1726, 62, 23, 2),
(1727, 62, 24, 3),
(1728, 62, 25, 3),
(1729, 62, 26, 3),
(1730, 62, 27, 4),
(1731, 63, 1, 4),
(1732, 63, 2, 3),
(1733, 63, 3, 2),
(1734, 63, 4, 4),
(1735, 63, 5, 4),
(1736, 63, 6, 3),
(1737, 63, 7, 3),
(1738, 63, 8, 4),
(1739, 63, 9, 4),
(1740, 63, 10, 3),
(1741, 63, 11, 3),
(1742, 63, 12, 3),
(1743, 63, 13, 4),
(1744, 63, 14, 2),
(1745, 63, 15, 4),
(1746, 63, 16, 4),
(1747, 63, 17, 4),
(1748, 63, 18, 4),
(1749, 63, 19, 4),
(1750, 63, 20, 3),
(1751, 63, 21, 4),
(1752, 63, 22, 4),
(1753, 63, 23, 4),
(1754, 63, 24, 2),
(1755, 63, 25, 4),
(1756, 63, 26, 4),
(1757, 63, 27, 4),
(1758, 64, 1, 4),
(1759, 64, 2, 3),
(1760, 64, 3, 3),
(1761, 64, 4, 4),
(1762, 64, 5, 4),
(1763, 64, 6, 4),
(1764, 64, 7, 4),
(1765, 64, 8, 3),
(1766, 64, 9, 3),
(1767, 64, 10, 4),
(1768, 64, 11, 3),
(1769, 64, 12, 3),
(1770, 64, 13, 4),
(1771, 64, 14, 3),
(1772, 64, 15, 2),
(1773, 64, 16, 3),
(1774, 64, 17, 2),
(1775, 64, 18, 3),
(1776, 64, 19, 4),
(1777, 64, 20, 4),
(1778, 64, 21, 3),
(1779, 64, 22, 3),
(1780, 64, 23, 2),
(1781, 64, 24, 1),
(1782, 64, 25, 3),
(1783, 64, 26, 3),
(1784, 64, 27, 3),
(1785, 65, 1, 3),
(1786, 65, 2, 4),
(1787, 65, 3, 4),
(1788, 65, 4, 4),
(1789, 65, 5, 4),
(1790, 65, 6, 4),
(1791, 65, 7, 4),
(1792, 65, 8, 3),
(1793, 65, 9, 4),
(1794, 65, 10, 4),
(1795, 65, 11, 3),
(1796, 65, 12, 3),
(1797, 65, 13, 4),
(1798, 65, 14, 3),
(1799, 65, 15, 3),
(1800, 65, 16, 3),
(1801, 65, 17, 3),
(1802, 65, 18, 3),
(1803, 65, 19, 4),
(1804, 65, 20, 3),
(1805, 65, 21, 3),
(1806, 65, 22, 3),
(1807, 65, 23, 3),
(1808, 65, 24, 1),
(1809, 65, 25, 3),
(1810, 65, 26, 3),
(1811, 65, 27, 2),
(1812, 66, 1, 4),
(1813, 66, 2, 3),
(1814, 66, 3, 1),
(1815, 66, 4, 4),
(1816, 66, 5, 3),
(1817, 66, 6, 4),
(1818, 66, 7, 3),
(1819, 66, 8, 3),
(1820, 66, 9, 3),
(1821, 66, 10, 3),
(1822, 66, 11, 3),
(1823, 66, 12, 3),
(1824, 66, 13, 3),
(1825, 66, 14, 3),
(1826, 66, 15, 3),
(1827, 66, 16, 3),
(1828, 66, 17, 3),
(1829, 66, 18, 2),
(1830, 66, 19, 3),
(1831, 66, 20, 3),
(1832, 66, 21, 2),
(1833, 66, 22, 3),
(1834, 66, 23, 2),
(1835, 66, 24, 3),
(1836, 66, 25, 2),
(1837, 66, 26, 2),
(1838, 66, 27, 3),
(1839, 67, 1, 3),
(1840, 67, 2, 4),
(1841, 67, 3, 3),
(1842, 67, 4, 4),
(1843, 67, 5, 4),
(1844, 67, 6, 4),
(1845, 67, 7, 3),
(1846, 67, 8, 4),
(1847, 67, 9, 4),
(1848, 67, 10, 3),
(1849, 67, 11, 3),
(1850, 67, 12, 3),
(1851, 67, 13, 4),
(1852, 67, 14, 4),
(1853, 67, 15, 3),
(1854, 67, 16, 4),
(1855, 67, 17, 4),
(1856, 67, 18, 3),
(1857, 67, 19, 4),
(1858, 67, 20, 3),
(1859, 67, 21, 4),
(1860, 67, 22, 3),
(1861, 67, 23, 4),
(1862, 67, 24, 2),
(1863, 67, 25, 4),
(1864, 67, 26, 4),
(1865, 67, 27, 4),
(1866, 68, 1, 4),
(1867, 68, 2, 4),
(1868, 68, 3, 2),
(1869, 68, 4, 4),
(1870, 68, 5, 3),
(1871, 68, 6, 1),
(1872, 68, 7, 4),
(1873, 68, 8, 3),
(1874, 68, 9, 4),
(1875, 68, 10, 3),
(1876, 68, 11, 4),
(1877, 68, 12, 3),
(1878, 68, 13, 4),
(1879, 68, 14, 3),
(1880, 68, 15, 2),
(1881, 68, 16, 4),
(1882, 68, 17, 4),
(1883, 68, 18, 1),
(1884, 68, 19, 4),
(1885, 68, 20, 4),
(1886, 68, 21, 3),
(1887, 68, 22, 1),
(1888, 68, 23, 2),
(1889, 68, 24, 2),
(1890, 68, 25, 3),
(1891, 68, 26, 1),
(1892, 68, 27, 4),
(1893, 69, 1, 4),
(1894, 69, 2, 4),
(1895, 69, 3, 2),
(1896, 69, 4, 4),
(1897, 69, 5, 3),
(1898, 69, 6, 1),
(1899, 69, 7, 4),
(1900, 69, 8, 3),
(1901, 69, 9, 4),
(1902, 69, 10, 3),
(1903, 69, 11, 4),
(1904, 69, 12, 3),
(1905, 69, 13, 4),
(1906, 69, 14, 3),
(1907, 69, 15, 2),
(1908, 69, 16, 4),
(1909, 69, 17, 4),
(1910, 69, 18, 1),
(1911, 69, 19, 4),
(1912, 69, 20, 4),
(1913, 69, 21, 3),
(1914, 69, 22, 1),
(1915, 69, 23, 2),
(1916, 69, 24, 2),
(1917, 69, 25, 3),
(1918, 69, 26, 1),
(1919, 69, 27, 4),
(1920, 70, 1, 3),
(1921, 70, 2, 4),
(1922, 70, 3, 2),
(1923, 70, 4, 3),
(1924, 70, 5, 3),
(1925, 70, 6, 4),
(1926, 70, 7, 3),
(1927, 70, 8, 3),
(1928, 70, 9, 4),
(1929, 70, 10, 3),
(1930, 70, 11, 4),
(1931, 70, 12, 4),
(1932, 70, 13, 4),
(1933, 70, 14, 3),
(1934, 70, 15, 3),
(1935, 70, 16, 3),
(1936, 70, 17, 2),
(1937, 70, 18, 4),
(1938, 70, 19, 2),
(1939, 70, 20, 4),
(1940, 70, 21, 2),
(1941, 70, 22, 3),
(1942, 70, 23, 2),
(1943, 70, 24, 2),
(1944, 70, 25, 2),
(1945, 70, 26, 3),
(1946, 70, 27, 1),
(1947, 71, 1, 4),
(1948, 71, 2, 4),
(1949, 71, 3, 1),
(1950, 71, 4, 4),
(1951, 71, 5, 4),
(1952, 71, 6, 1),
(1953, 71, 7, 4),
(1954, 71, 8, 3),
(1955, 71, 9, 2),
(1956, 71, 10, 3),
(1957, 71, 11, 4),
(1958, 71, 12, 4),
(1959, 71, 13, 4),
(1960, 71, 14, 3),
(1961, 71, 15, 4),
(1962, 71, 16, 4),
(1963, 71, 17, 1),
(1964, 71, 18, 1),
(1965, 71, 19, 4),
(1966, 71, 20, 4),
(1967, 71, 21, 2),
(1968, 71, 22, 4),
(1969, 71, 23, 3),
(1970, 71, 24, 1),
(1971, 71, 25, 2),
(1972, 71, 26, 2),
(1973, 71, 27, 4),
(1974, 72, 1, 4),
(1975, 72, 2, 4),
(1976, 72, 3, 1),
(1977, 72, 4, 4),
(1978, 72, 5, 4),
(1979, 72, 6, 4),
(1980, 72, 7, 4),
(1981, 72, 8, 4),
(1982, 72, 9, 4),
(1983, 72, 10, 4),
(1984, 72, 11, 4),
(1985, 72, 12, 4),
(1986, 72, 13, 4),
(1987, 72, 14, 1),
(1988, 72, 15, 4),
(1989, 72, 16, 4),
(1990, 72, 17, 4),
(1991, 72, 18, 4),
(1992, 72, 19, 4),
(1993, 72, 20, 4),
(1994, 72, 21, 3),
(1995, 72, 22, 3),
(1996, 72, 23, 3),
(1997, 72, 24, 1),
(1998, 72, 25, 2),
(1999, 72, 26, 4),
(2000, 72, 27, 4),
(2001, 73, 1, 4),
(2002, 73, 2, 4),
(2003, 73, 3, 1),
(2004, 73, 4, 4),
(2005, 73, 5, 4),
(2006, 73, 6, 4),
(2007, 73, 7, 4),
(2008, 73, 8, 4),
(2009, 73, 9, 3),
(2010, 73, 10, 4),
(2011, 73, 11, 4),
(2012, 73, 12, 4),
(2013, 73, 13, 4),
(2014, 73, 14, 2),
(2015, 73, 15, 4),
(2016, 73, 16, 4),
(2017, 73, 17, 4),
(2018, 73, 18, 4),
(2019, 73, 19, 4),
(2020, 73, 20, 4),
(2021, 73, 21, 3),
(2022, 73, 22, 4),
(2023, 73, 23, 3),
(2024, 73, 24, 2),
(2025, 73, 25, 2),
(2026, 73, 26, 3),
(2027, 73, 27, 4),
(2028, 74, 1, 3),
(2029, 74, 2, 4),
(2030, 74, 3, 2),
(2031, 74, 4, 4),
(2032, 74, 5, 4),
(2033, 74, 6, 2),
(2034, 74, 7, 4),
(2035, 74, 8, 3),
(2036, 74, 9, 2),
(2037, 74, 10, 1),
(2038, 74, 11, 4),
(2039, 74, 12, 3),
(2040, 74, 13, 4),
(2041, 74, 14, 4),
(2042, 74, 15, 3),
(2043, 74, 16, 2),
(2044, 74, 17, 1),
(2045, 74, 18, 2),
(2046, 74, 19, 4),
(2047, 74, 20, 3),
(2048, 74, 21, 2),
(2049, 74, 22, 4),
(2050, 74, 23, 4),
(2051, 74, 24, 1),
(2052, 74, 25, 4),
(2053, 74, 26, 2),
(2054, 74, 27, 2),
(2055, 75, 1, 4),
(2056, 75, 2, 4),
(2057, 75, 3, 2),
(2058, 75, 4, 4),
(2059, 75, 5, 4),
(2060, 75, 6, 3),
(2061, 75, 7, 4),
(2062, 75, 8, 3),
(2063, 75, 9, 3),
(2064, 75, 10, 3),
(2065, 75, 11, 4),
(2066, 75, 12, 4),
(2067, 75, 13, 4),
(2068, 75, 14, 3),
(2069, 75, 15, 4),
(2070, 75, 16, 3),
(2071, 75, 17, 2),
(2072, 75, 18, 3),
(2073, 75, 19, 3),
(2074, 75, 20, 3),
(2075, 75, 21, 1),
(2076, 75, 22, 3),
(2077, 75, 23, 1),
(2078, 75, 24, 1),
(2079, 75, 25, 3),
(2080, 75, 26, 2),
(2081, 75, 27, 1),
(2082, 76, 1, 4),
(2083, 76, 2, 4),
(2084, 76, 3, 2),
(2085, 76, 4, 4),
(2086, 76, 5, 4),
(2087, 76, 6, 4),
(2088, 76, 7, 4),
(2089, 76, 8, 4),
(2090, 76, 9, 4),
(2091, 76, 10, 3),
(2092, 76, 11, 4),
(2093, 76, 12, 4),
(2094, 76, 13, 4),
(2095, 76, 14, 3),
(2096, 76, 15, 4),
(2097, 76, 16, 3),
(2098, 76, 17, 4),
(2099, 76, 18, 4),
(2100, 76, 19, 4),
(2101, 76, 20, 4),
(2102, 76, 21, 3),
(2103, 76, 22, 4),
(2104, 76, 23, 4),
(2105, 76, 24, 1),
(2106, 76, 25, 4),
(2107, 76, 26, 4),
(2108, 76, 27, 4),
(2109, 77, 1, 4),
(2110, 77, 2, 2),
(2111, 77, 3, 4),
(2112, 77, 4, 4),
(2113, 77, 5, 4),
(2114, 77, 6, 4),
(2115, 77, 7, 3),
(2116, 77, 8, 3),
(2117, 77, 9, 3),
(2118, 77, 10, 2),
(2119, 77, 11, 3),
(2120, 77, 12, 3),
(2121, 77, 13, 3),
(2122, 77, 14, 2),
(2123, 77, 15, 4),
(2124, 77, 16, 3),
(2125, 77, 17, 4),
(2126, 77, 18, 3),
(2127, 77, 19, 4),
(2128, 77, 20, 3),
(2129, 77, 21, 4),
(2130, 77, 22, 3),
(2131, 77, 23, 4),
(2132, 77, 24, 3),
(2133, 77, 25, 4),
(2134, 77, 26, 3),
(2135, 77, 27, 4),
(2136, 78, 1, 3),
(2137, 78, 2, 4),
(2138, 78, 3, 1),
(2139, 78, 4, 3),
(2140, 78, 5, 4),
(2141, 78, 6, 3),
(2142, 78, 7, 4),
(2143, 78, 8, 3),
(2144, 78, 9, 2),
(2145, 78, 10, 4),
(2146, 78, 11, 4),
(2147, 78, 12, 3),
(2148, 78, 13, 4),
(2149, 78, 14, 4),
(2150, 78, 15, 2),
(2151, 78, 16, 2),
(2152, 78, 17, 4),
(2153, 78, 18, 3),
(2154, 78, 19, 4),
(2155, 78, 20, 4),
(2156, 78, 21, 4),
(2157, 78, 22, 3),
(2158, 78, 23, 2),
(2159, 78, 24, 1),
(2160, 78, 25, 4),
(2161, 78, 26, 1),
(2162, 78, 27, 4),
(2163, 79, 1, 3),
(2164, 79, 2, 4),
(2165, 79, 3, 4),
(2166, 79, 4, 3),
(2167, 79, 5, 3),
(2168, 79, 6, 4),
(2169, 79, 7, 3),
(2170, 79, 8, 3),
(2171, 79, 9, 4),
(2172, 79, 10, 3),
(2173, 79, 11, 3),
(2174, 79, 12, 4),
(2175, 79, 13, 4),
(2176, 79, 14, 3),
(2177, 79, 15, 3),
(2178, 79, 16, 3),
(2179, 79, 17, 4),
(2180, 79, 18, 3),
(2181, 79, 19, 4),
(2182, 79, 20, 3),
(2183, 79, 21, 3),
(2184, 79, 22, 4),
(2185, 79, 23, 3),
(2186, 79, 24, 3),
(2187, 79, 25, 3),
(2188, 79, 26, 3),
(2189, 79, 27, 4),
(2190, 80, 1, 3),
(2191, 80, 2, 4),
(2192, 80, 3, 1),
(2193, 80, 4, 4),
(2194, 80, 5, 4),
(2195, 80, 6, 1),
(2196, 80, 7, 3),
(2197, 80, 8, 3),
(2198, 80, 9, 3),
(2199, 80, 10, 4),
(2200, 80, 11, 4),
(2201, 80, 12, 3),
(2202, 80, 13, 4),
(2203, 80, 14, 3),
(2204, 80, 15, 2),
(2205, 80, 16, 4),
(2206, 80, 17, 2),
(2207, 80, 18, 2),
(2208, 80, 19, 3),
(2209, 80, 20, 3),
(2210, 80, 21, 3),
(2211, 80, 22, 1),
(2212, 80, 23, 2),
(2213, 80, 24, 1),
(2214, 80, 25, 3),
(2215, 80, 26, 3),
(2216, 80, 27, 3),
(2217, 81, 1, 3),
(2218, 81, 2, 3),
(2219, 81, 3, 2),
(2220, 81, 4, 3),
(2221, 81, 5, 4),
(2222, 81, 6, 4),
(2223, 81, 7, 3),
(2224, 81, 8, 4),
(2225, 81, 9, 3),
(2226, 81, 10, 4),
(2227, 81, 11, 3),
(2228, 81, 12, 4),
(2229, 81, 13, 4),
(2230, 81, 14, 2),
(2231, 81, 15, 4),
(2232, 81, 16, 3),
(2233, 81, 17, 4),
(2234, 81, 18, 3),
(2235, 81, 19, 4),
(2236, 81, 20, 3),
(2237, 81, 21, 4),
(2238, 81, 22, 3),
(2239, 81, 23, 3),
(2240, 81, 24, 3),
(2241, 81, 25, 4),
(2242, 81, 26, 3),
(2243, 81, 27, 3),
(2244, 82, 1, 4),
(2245, 82, 2, 3),
(2246, 82, 3, 1),
(2247, 82, 4, 4),
(2248, 82, 5, 4),
(2249, 82, 6, 4),
(2250, 82, 7, 4),
(2251, 82, 8, 4),
(2252, 82, 9, 3),
(2253, 82, 10, 4),
(2254, 82, 11, 3),
(2255, 82, 12, 3),
(2256, 82, 13, 4),
(2257, 82, 14, 4),
(2258, 82, 15, 3),
(2259, 82, 16, 3),
(2260, 82, 17, 4),
(2261, 82, 18, 4),
(2262, 82, 19, 3),
(2263, 82, 20, 3),
(2264, 82, 21, 3),
(2265, 82, 22, 3),
(2266, 82, 23, 3),
(2267, 82, 24, 1),
(2268, 82, 25, 1),
(2269, 82, 26, 4),
(2270, 82, 27, 4),
(2271, 83, 1, 3),
(2272, 83, 2, 4),
(2273, 83, 3, 1),
(2274, 83, 4, 4),
(2275, 83, 5, 4),
(2276, 83, 6, 3),
(2277, 83, 7, 2),
(2278, 83, 8, 4),
(2279, 83, 9, 3),
(2280, 83, 10, 2),
(2281, 83, 11, 3),
(2282, 83, 12, 3),
(2283, 83, 13, 4),
(2284, 83, 14, 1),
(2285, 83, 15, 2),
(2286, 83, 16, 3),
(2287, 83, 17, 2),
(2288, 83, 18, 3),
(2289, 83, 19, 4),
(2290, 83, 20, 3),
(2291, 83, 21, 3),
(2292, 83, 22, 2),
(2293, 83, 23, 2),
(2294, 83, 24, 1),
(2295, 83, 25, 3),
(2296, 83, 26, 1),
(2297, 83, 27, 2),
(2298, 84, 1, 2),
(2299, 84, 2, 4),
(2300, 84, 3, 4),
(2301, 84, 4, 4),
(2302, 84, 5, 3),
(2303, 84, 6, 4),
(2304, 84, 7, 4),
(2305, 84, 8, 3),
(2306, 84, 9, 3),
(2307, 84, 10, 3),
(2308, 84, 11, 4),
(2309, 84, 12, 3),
(2310, 84, 13, 4),
(2311, 84, 14, 4),
(2312, 84, 15, 3),
(2313, 84, 16, 4),
(2314, 84, 17, 1),
(2315, 84, 18, 4),
(2316, 84, 19, 4),
(2317, 84, 20, 3),
(2318, 84, 21, 1),
(2319, 84, 22, 4),
(2320, 84, 23, 4),
(2321, 84, 24, 1),
(2322, 84, 25, 2),
(2323, 84, 26, 1),
(2324, 84, 27, 1),
(2325, 85, 1, 4),
(2326, 85, 2, 3),
(2327, 85, 3, 3),
(2328, 85, 4, 4),
(2329, 85, 5, 4),
(2330, 85, 6, 3),
(2331, 85, 7, 4),
(2332, 85, 8, 4),
(2333, 85, 9, 3),
(2334, 85, 10, 4),
(2335, 85, 11, 3),
(2336, 85, 12, 3),
(2337, 85, 13, 3),
(2338, 85, 14, 3),
(2339, 85, 15, 3),
(2340, 85, 16, 2),
(2341, 85, 17, 2),
(2342, 85, 18, 2),
(2343, 85, 19, 2),
(2344, 85, 20, 2),
(2345, 85, 21, 2),
(2346, 85, 22, 4),
(2347, 85, 23, 4),
(2348, 85, 24, 2),
(2349, 85, 25, 4),
(2350, 85, 26, 2),
(2351, 85, 27, 2),
(2352, 86, 1, 4),
(2353, 86, 2, 3),
(2354, 86, 3, 3),
(2355, 86, 4, 4),
(2356, 86, 5, 4),
(2357, 86, 6, 3),
(2358, 86, 7, 3),
(2359, 86, 8, 4),
(2360, 86, 9, 3),
(2361, 86, 10, 1),
(2362, 86, 11, 3),
(2363, 86, 12, 3),
(2364, 86, 13, 3),
(2365, 86, 14, 2),
(2366, 86, 15, 4),
(2367, 86, 16, 4),
(2368, 86, 17, 3),
(2369, 86, 18, 2),
(2370, 86, 19, 4),
(2371, 86, 20, 4),
(2372, 86, 21, 1),
(2373, 86, 22, 4),
(2374, 86, 23, 4),
(2375, 86, 24, 1),
(2376, 86, 25, 3),
(2377, 86, 26, 3),
(2378, 86, 27, 2),
(2379, 87, 1, 3),
(2380, 87, 2, 4),
(2381, 87, 3, 4),
(2382, 87, 4, 4),
(2383, 87, 5, 4),
(2384, 87, 6, 4),
(2385, 87, 7, 4),
(2386, 87, 8, 4),
(2387, 87, 9, 3),
(2388, 87, 10, 3),
(2389, 87, 11, 4),
(2390, 87, 12, 4),
(2391, 87, 13, 4),
(2392, 87, 14, 3),
(2393, 87, 15, 4),
(2394, 87, 16, 4),
(2395, 87, 17, 3),
(2396, 87, 18, 3),
(2397, 87, 19, 4),
(2398, 87, 20, 3),
(2399, 87, 21, 2),
(2400, 87, 22, 4),
(2401, 87, 23, 4),
(2402, 87, 24, 1),
(2403, 87, 25, 4),
(2404, 87, 26, 2),
(2405, 87, 27, 1),
(2406, 88, 1, 3),
(2407, 88, 2, 4),
(2408, 88, 3, 4),
(2409, 88, 4, 4),
(2410, 88, 5, 4),
(2411, 88, 6, 4),
(2412, 88, 7, 4),
(2413, 88, 8, 4),
(2414, 88, 9, 3),
(2415, 88, 10, 4),
(2416, 88, 11, 3),
(2417, 88, 12, 4),
(2418, 88, 13, 4),
(2419, 88, 14, 3),
(2420, 88, 15, 4),
(2421, 88, 16, 3),
(2422, 88, 17, 2),
(2423, 88, 18, 1),
(2424, 88, 19, 4),
(2425, 88, 20, 3),
(2426, 88, 21, 2),
(2427, 88, 22, 4),
(2428, 88, 23, 4),
(2429, 88, 24, 2),
(2430, 88, 25, 4),
(2431, 88, 26, 1),
(2432, 88, 27, 1),
(2433, 89, 1, 3),
(2434, 89, 2, 4),
(2435, 89, 3, 2),
(2436, 89, 4, 3),
(2437, 89, 5, 3),
(2438, 89, 6, 4),
(2439, 89, 7, 3),
(2440, 89, 8, 3),
(2441, 89, 9, 3),
(2442, 89, 10, 1),
(2443, 89, 11, 4),
(2444, 89, 12, 3),
(2445, 89, 13, 3),
(2446, 89, 14, 2),
(2447, 89, 15, 3),
(2448, 89, 16, 3),
(2449, 89, 17, 2),
(2450, 89, 18, 3),
(2451, 89, 19, 3),
(2452, 89, 20, 3),
(2453, 89, 21, 4),
(2454, 89, 22, 3),
(2455, 89, 23, 2),
(2456, 89, 24, 1),
(2457, 89, 25, 2),
(2458, 89, 26, 2),
(2459, 89, 27, 3),
(2460, 90, 1, 4),
(2461, 90, 2, 3),
(2462, 90, 3, 4),
(2463, 90, 4, 4),
(2464, 90, 5, 4),
(2465, 90, 6, 4),
(2466, 90, 7, 4),
(2467, 90, 8, 3),
(2468, 90, 9, 3),
(2469, 90, 10, 3),
(2470, 90, 11, 3),
(2471, 90, 12, 3),
(2472, 90, 13, 3),
(2473, 90, 14, 4),
(2474, 90, 15, 2),
(2475, 90, 16, 4),
(2476, 90, 17, 4),
(2477, 90, 18, 3),
(2478, 90, 19, 2),
(2479, 90, 20, 2),
(2480, 90, 21, 2),
(2481, 90, 22, 3),
(2482, 90, 23, 4),
(2483, 90, 24, 4),
(2484, 90, 25, 4),
(2485, 90, 26, 4),
(2486, 90, 27, 4),
(2487, 91, 1, 3),
(2488, 91, 2, 1),
(2489, 91, 3, 2),
(2490, 91, 4, 4),
(2491, 91, 5, 3),
(2492, 91, 6, 2),
(2493, 91, 7, 4),
(2494, 91, 8, 3),
(2495, 91, 9, 4),
(2496, 91, 10, 2),
(2497, 91, 11, 3),
(2498, 91, 12, 3),
(2499, 91, 13, 3),
(2500, 91, 14, 3),
(2501, 91, 15, 3),
(2502, 91, 16, 3),
(2503, 91, 17, 4),
(2504, 91, 18, 3),
(2505, 91, 19, 4),
(2506, 91, 20, 3),
(2507, 91, 21, 3),
(2508, 91, 22, 3),
(2509, 91, 23, 3),
(2510, 91, 24, 4),
(2511, 91, 25, 4),
(2512, 91, 26, 4),
(2513, 91, 27, 4),
(2514, 92, 1, 3),
(2515, 92, 2, 3),
(2516, 92, 3, 2),
(2517, 92, 4, 4),
(2518, 92, 5, 4),
(2519, 92, 6, 4),
(2520, 92, 7, 3),
(2521, 92, 8, 3),
(2522, 92, 9, 2),
(2523, 92, 10, 3),
(2524, 92, 11, 3),
(2525, 92, 12, 3),
(2526, 92, 13, 3),
(2527, 92, 14, 2),
(2528, 92, 15, 3),
(2529, 92, 16, 2),
(2530, 92, 17, 3),
(2531, 92, 18, 4),
(2532, 92, 19, 3),
(2533, 92, 20, 3),
(2534, 92, 21, 4),
(2535, 92, 22, 3),
(2536, 92, 23, 3),
(2537, 92, 24, 4),
(2538, 92, 25, 3),
(2539, 92, 26, 3),
(2540, 92, 27, 4),
(2541, 93, 1, 4),
(2542, 93, 2, 3),
(2543, 93, 3, 3),
(2544, 93, 4, 4),
(2545, 93, 5, 4),
(2546, 93, 6, 3),
(2547, 93, 7, 4),
(2548, 93, 8, 3),
(2549, 93, 9, 4),
(2550, 93, 10, 3),
(2551, 93, 11, 3),
(2552, 93, 12, 3),
(2553, 93, 13, 4),
(2554, 93, 14, 4),
(2555, 93, 15, 3),
(2556, 93, 16, 4),
(2557, 93, 17, 3),
(2558, 93, 18, 4),
(2559, 93, 19, 3),
(2560, 93, 20, 3),
(2561, 93, 21, 2),
(2562, 93, 22, 2),
(2563, 93, 23, 3),
(2564, 93, 24, 1),
(2565, 93, 25, 3),
(2566, 93, 26, 1),
(2567, 93, 27, 4),
(2568, 94, 1, 4),
(2569, 94, 2, 2),
(2570, 94, 3, 1),
(2571, 94, 4, 4),
(2572, 94, 5, 4),
(2573, 94, 6, 3),
(2574, 94, 7, 4),
(2575, 94, 8, 4),
(2576, 94, 9, 3),
(2577, 94, 10, 4),
(2578, 94, 11, 3),
(2579, 94, 12, 2),
(2580, 94, 13, 4),
(2581, 94, 14, 3),
(2582, 94, 15, 4),
(2583, 94, 16, 4),
(2584, 94, 17, 3),
(2585, 94, 18, 4),
(2586, 94, 19, 4),
(2587, 94, 20, 3),
(2588, 94, 21, 4),
(2589, 94, 22, 4),
(2590, 94, 23, 2),
(2591, 94, 24, 2),
(2592, 94, 25, 3),
(2593, 94, 26, 3),
(2594, 94, 27, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_hasil`
--

DROP TABLE IF EXISTS `detail_hasil`;
CREATE TABLE IF NOT EXISTS `detail_hasil` (
  `id_detail_hasil` int(11) NOT NULL AUTO_INCREMENT,
  `id_hasil` int(11) NOT NULL,
  `id_pernyataan` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  PRIMARY KEY (`id_detail_hasil`),
  KEY `id_pernyataan` (`id_pernyataan`),
  KEY `id_hasil` (`id_hasil`)
) ENGINE=InnoDB AUTO_INCREMENT=4339 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_hasil`
--

INSERT INTO `detail_hasil` (`id_detail_hasil`, `id_hasil`, `id_pernyataan`, `nilai`) VALUES
(27, 35, 1, 1),
(28, 35, 2, 1),
(29, 35, 3, 1),
(30, 35, 1, 1),
(31, 35, 2, 1),
(32, 35, 3, 1),
(33, 35, 1, 1),
(34, 35, 2, 1),
(35, 35, 3, 1),
(36, 35, 1, 1),
(37, 35, 2, 1),
(38, 35, 3, 1),
(39, 35, 1, 1),
(40, 35, 2, 1),
(41, 35, 3, 1),
(42, 35, 1, 1),
(43, 35, 2, 1),
(44, 35, 3, 1),
(45, 36, 1, 1),
(46, 36, 2, 1),
(47, 36, 3, 1),
(48, 36, 1, 1),
(49, 36, 2, 1),
(50, 36, 3, 1),
(51, 38, 1, 1),
(52, 38, 2, 1),
(53, 38, 3, 1),
(54, 38, 1, 1),
(55, 38, 2, 1),
(56, 38, 3, 1),
(57, 38, 1, 1),
(58, 38, 2, 1),
(59, 38, 3, 1),
(60, 39, 1, 1),
(61, 39, 2, 1),
(62, 39, 3, 1),
(63, 39, 1, 1),
(64, 39, 2, 1),
(65, 39, 3, 1),
(66, 39, 1, 1),
(67, 39, 2, 1),
(68, 39, 3, 1),
(69, 39, 1, 1),
(70, 39, 2, 1),
(71, 39, 3, 1),
(72, 39, 1, 1),
(73, 39, 2, 1),
(74, 39, 3, 1),
(75, 39, 1, 1),
(76, 39, 2, 1),
(77, 39, 3, 1),
(78, 39, 1, 1),
(79, 39, 2, 1),
(80, 39, 3, 1),
(81, 40, 1, 1),
(82, 40, 2, 1),
(83, 40, 3, 1),
(84, 41, 1, 1),
(85, 41, 2, 1),
(86, 41, 3, 1),
(87, 43, 1, 4),
(88, 43, 2, 1),
(89, 43, 3, 2),
(90, 45, 1, 1),
(91, 45, 2, 1),
(92, 45, 3, 3),
(93, 48, 1, 4),
(94, 48, 2, 4),
(95, 48, 3, 4),
(96, 48, 1, 4),
(97, 48, 2, 4),
(98, 48, 3, 4),
(99, 48, 1, 4),
(100, 48, 2, 4),
(101, 48, 3, 4),
(102, 48, 1, 4),
(103, 48, 2, 4),
(104, 48, 3, 4),
(105, 48, 4, 4),
(106, 48, 5, 4),
(107, 48, 6, 3),
(108, 48, 7, 2),
(109, 48, 8, 1),
(110, 48, 9, 4),
(111, 48, 10, 3),
(112, 48, 1, 4),
(113, 48, 2, 4),
(114, 48, 3, 4),
(115, 48, 4, 4),
(116, 48, 5, 4),
(117, 48, 6, 3),
(118, 48, 7, 2),
(119, 48, 8, 1),
(120, 48, 9, 4),
(121, 48, 10, 3),
(122, 50, 1, 4),
(123, 50, 2, 3),
(124, 50, 3, 2),
(125, 50, 4, 1),
(126, 50, 5, 4),
(127, 50, 6, 3),
(128, 50, 7, 2),
(129, 50, 8, 1),
(130, 50, 9, 4),
(131, 50, 10, 3),
(132, 55, 1, 4),
(133, 55, 2, 3),
(134, 55, 3, 2),
(135, 55, 4, 3),
(136, 55, 5, 4),
(137, 55, 6, 2),
(138, 55, 7, 3),
(139, 55, 8, 4),
(140, 55, 9, 3),
(141, 55, 10, 1),
(142, 55, 11, 3),
(143, 55, 12, 4),
(144, 55, 13, 3),
(145, 55, 14, 4),
(146, 55, 15, 1),
(147, 55, 16, 2),
(148, 55, 17, 3),
(149, 55, 18, 4),
(150, 55, 19, 3),
(151, 55, 20, 3),
(152, 55, 21, 2),
(153, 56, 1, 4),
(154, 56, 2, 3),
(155, 56, 3, 2),
(156, 56, 4, 3),
(157, 56, 5, 4),
(158, 56, 6, 2),
(159, 56, 7, 3),
(160, 56, 8, 4),
(161, 56, 9, 3),
(162, 56, 10, 1),
(163, 56, 11, 3),
(164, 56, 12, 4),
(165, 56, 13, 3),
(166, 56, 14, 4),
(167, 56, 15, 1),
(168, 56, 16, 2),
(169, 56, 17, 3),
(170, 56, 18, 4),
(171, 56, 19, 3),
(172, 56, 20, 3),
(173, 56, 21, 2),
(174, 57, 1, 4),
(175, 57, 2, 3),
(176, 57, 3, 2),
(177, 57, 4, 3),
(178, 57, 5, 4),
(179, 57, 6, 2),
(180, 57, 7, 3),
(181, 57, 8, 4),
(182, 57, 9, 3),
(183, 57, 10, 1),
(184, 57, 11, 3),
(185, 57, 12, 4),
(186, 57, 13, 3),
(187, 57, 14, 4),
(188, 57, 15, 1),
(189, 57, 16, 2),
(190, 57, 17, 3),
(191, 57, 18, 4),
(192, 57, 19, 3),
(193, 57, 20, 3),
(194, 57, 21, 2),
(195, 58, 1, 4),
(196, 58, 2, 3),
(197, 58, 3, 2),
(198, 58, 4, 3),
(199, 58, 5, 4),
(200, 58, 6, 2),
(201, 58, 7, 3),
(202, 58, 8, 4),
(203, 58, 9, 3),
(204, 58, 10, 1),
(205, 58, 11, 3),
(206, 58, 12, 4),
(207, 58, 13, 3),
(208, 58, 14, 4),
(209, 58, 15, 1),
(210, 58, 16, 2),
(211, 58, 17, 3),
(212, 58, 18, 4),
(213, 58, 19, 3),
(214, 58, 20, 3),
(215, 58, 21, 2),
(216, 58, 1, 4),
(217, 58, 2, 3),
(218, 58, 3, 2),
(219, 58, 4, 3),
(220, 58, 5, 4),
(221, 58, 6, 2),
(222, 58, 7, 3),
(223, 58, 8, 4),
(224, 58, 9, 3),
(225, 58, 10, 1),
(226, 58, 11, 3),
(227, 58, 12, 4),
(228, 58, 13, 3),
(229, 58, 14, 4),
(230, 58, 15, 1),
(231, 58, 16, 2),
(232, 58, 17, 3),
(233, 58, 18, 4),
(234, 58, 19, 3),
(235, 58, 20, 3),
(236, 58, 21, 2),
(237, 58, 1, 4),
(238, 58, 2, 3),
(239, 58, 3, 2),
(240, 58, 4, 3),
(241, 58, 5, 4),
(242, 58, 6, 2),
(243, 58, 7, 3),
(244, 58, 8, 4),
(245, 58, 9, 3),
(246, 58, 10, 1),
(247, 58, 11, 3),
(248, 58, 12, 4),
(249, 58, 13, 3),
(250, 58, 14, 4),
(251, 58, 15, 1),
(252, 58, 16, 2),
(253, 58, 17, 3),
(254, 58, 18, 4),
(255, 58, 19, 3),
(256, 58, 20, 3),
(257, 58, 21, 2),
(258, 58, 1, 4),
(259, 58, 2, 3),
(260, 58, 3, 2),
(261, 58, 4, 3),
(262, 58, 5, 4),
(263, 58, 6, 2),
(264, 58, 7, 3),
(265, 58, 8, 4),
(266, 58, 9, 3),
(267, 58, 10, 1),
(268, 58, 11, 3),
(269, 58, 12, 4),
(270, 58, 13, 3),
(271, 58, 14, 4),
(272, 58, 15, 1),
(273, 58, 16, 2),
(274, 58, 17, 3),
(275, 58, 18, 4),
(276, 58, 19, 3),
(277, 58, 20, 3),
(278, 58, 21, 2),
(279, 59, 1, 4),
(280, 59, 2, 3),
(281, 59, 3, 2),
(282, 59, 4, 3),
(283, 59, 5, 4),
(284, 59, 6, 2),
(285, 59, 7, 3),
(286, 59, 8, 4),
(287, 59, 9, 3),
(288, 59, 10, 1),
(289, 59, 11, 3),
(290, 59, 12, 4),
(291, 59, 13, 3),
(292, 59, 14, 4),
(293, 59, 15, 1),
(294, 59, 16, 2),
(295, 59, 17, 3),
(296, 59, 18, 4),
(297, 59, 19, 3),
(298, 59, 20, 4),
(299, 59, 21, 2),
(300, 59, 22, 4),
(301, 59, 23, 3),
(302, 59, 24, 3),
(303, 59, 25, 4),
(304, 59, 26, 2),
(305, 59, 27, 2),
(306, 59, 1, 4),
(307, 59, 2, 3),
(308, 59, 3, 2),
(309, 59, 4, 3),
(310, 59, 5, 4),
(311, 59, 6, 2),
(312, 59, 7, 3),
(313, 59, 8, 4),
(314, 59, 9, 3),
(315, 59, 10, 1),
(316, 59, 11, 3),
(317, 59, 12, 4),
(318, 59, 13, 3),
(319, 59, 14, 4),
(320, 59, 15, 1),
(321, 59, 16, 2),
(322, 59, 17, 3),
(323, 59, 18, 4),
(324, 59, 19, 3),
(325, 59, 20, 4),
(326, 59, 21, 2),
(327, 59, 22, 4),
(328, 59, 23, 3),
(329, 59, 24, 3),
(330, 59, 25, 4),
(331, 59, 26, 2),
(332, 59, 27, 2),
(333, 59, 1, 4),
(334, 59, 2, 3),
(335, 59, 3, 2),
(336, 59, 4, 3),
(337, 59, 5, 4),
(338, 59, 6, 2),
(339, 59, 7, 3),
(340, 59, 8, 4),
(341, 59, 9, 3),
(342, 59, 10, 1),
(343, 59, 11, 3),
(344, 59, 12, 4),
(345, 59, 13, 3),
(346, 59, 14, 4),
(347, 59, 15, 1),
(348, 59, 16, 2),
(349, 59, 17, 3),
(350, 59, 18, 4),
(351, 59, 19, 3),
(352, 59, 20, 4),
(353, 59, 21, 2),
(354, 59, 22, 4),
(355, 59, 23, 3),
(356, 59, 24, 3),
(357, 59, 25, 4),
(358, 59, 26, 2),
(359, 59, 27, 2),
(360, 59, 1, 4),
(361, 59, 2, 3),
(362, 59, 3, 2),
(363, 59, 4, 3),
(364, 59, 5, 4),
(365, 59, 6, 2),
(366, 59, 7, 3),
(367, 59, 8, 4),
(368, 59, 9, 3),
(369, 59, 10, 1),
(370, 59, 11, 3),
(371, 59, 12, 4),
(372, 59, 13, 3),
(373, 59, 14, 4),
(374, 59, 15, 1),
(375, 59, 16, 2),
(376, 59, 17, 3),
(377, 59, 18, 4),
(378, 59, 19, 3),
(379, 59, 20, 4),
(380, 59, 21, 2),
(381, 59, 22, 4),
(382, 59, 23, 3),
(383, 59, 24, 3),
(384, 59, 25, 4),
(385, 59, 26, 2),
(386, 59, 27, 2),
(387, 59, 1, 4),
(388, 59, 2, 3),
(389, 59, 3, 2),
(390, 59, 4, 3),
(391, 59, 5, 4),
(392, 59, 6, 2),
(393, 59, 7, 3),
(394, 59, 8, 4),
(395, 59, 9, 3),
(396, 59, 10, 1),
(397, 59, 11, 3),
(398, 59, 12, 4),
(399, 59, 13, 3),
(400, 59, 14, 4),
(401, 59, 15, 1),
(402, 59, 16, 2),
(403, 59, 17, 3),
(404, 59, 18, 4),
(405, 59, 19, 3),
(406, 59, 20, 4),
(407, 59, 21, 2),
(408, 59, 22, 4),
(409, 59, 23, 3),
(410, 59, 24, 3),
(411, 59, 25, 4),
(412, 59, 26, 2),
(413, 59, 27, 2),
(414, 59, 1, 4),
(415, 59, 2, 3),
(416, 59, 3, 2),
(417, 59, 4, 3),
(418, 59, 5, 4),
(419, 59, 6, 2),
(420, 59, 7, 3),
(421, 59, 8, 4),
(422, 59, 9, 3),
(423, 59, 10, 1),
(424, 59, 11, 3),
(425, 59, 12, 4),
(426, 59, 13, 3),
(427, 59, 14, 4),
(428, 59, 15, 1),
(429, 59, 16, 2),
(430, 59, 17, 3),
(431, 59, 18, 4),
(432, 59, 19, 3),
(433, 59, 20, 4),
(434, 59, 21, 2),
(435, 59, 22, 4),
(436, 59, 23, 3),
(437, 59, 24, 3),
(438, 59, 25, 4),
(439, 59, 26, 2),
(440, 59, 27, 2),
(441, 61, 1, 4),
(442, 61, 2, 3),
(443, 61, 3, 2),
(444, 61, 4, 1),
(445, 61, 5, 1),
(446, 61, 6, 2),
(447, 61, 7, 3),
(448, 61, 8, 4),
(449, 61, 9, 4),
(450, 61, 10, 3),
(451, 61, 11, 2),
(452, 61, 12, 1),
(453, 61, 13, 4),
(454, 61, 14, 1),
(455, 61, 15, 3),
(456, 61, 16, 2),
(457, 61, 17, 3),
(458, 61, 18, 2),
(459, 61, 19, 1),
(460, 61, 20, 4),
(461, 61, 21, 4),
(462, 61, 22, 3),
(463, 61, 23, 2),
(464, 61, 24, 1),
(465, 61, 25, 1),
(466, 61, 26, 3),
(467, 61, 27, 2),
(468, 61, 1, 4),
(469, 61, 2, 3),
(470, 61, 3, 2),
(471, 61, 4, 1),
(472, 61, 5, 1),
(473, 61, 6, 2),
(474, 61, 7, 3),
(475, 61, 8, 4),
(476, 61, 9, 4),
(477, 61, 10, 3),
(478, 61, 11, 2),
(479, 61, 12, 1),
(480, 61, 13, 4),
(481, 61, 14, 1),
(482, 61, 15, 3),
(483, 61, 16, 2),
(484, 61, 17, 3),
(485, 61, 18, 2),
(486, 61, 19, 1),
(487, 61, 20, 4),
(488, 61, 21, 4),
(489, 61, 22, 3),
(490, 61, 23, 2),
(491, 61, 24, 1),
(492, 61, 25, 1),
(493, 61, 26, 3),
(494, 61, 27, 2),
(495, 61, 1, 4),
(496, 61, 2, 3),
(497, 61, 3, 2),
(498, 61, 4, 1),
(499, 61, 5, 1),
(500, 61, 6, 2),
(501, 61, 7, 3),
(502, 61, 8, 4),
(503, 61, 9, 4),
(504, 61, 10, 3),
(505, 61, 11, 2),
(506, 61, 12, 1),
(507, 61, 13, 4),
(508, 61, 14, 1),
(509, 61, 15, 3),
(510, 61, 16, 2),
(511, 61, 17, 3),
(512, 61, 18, 2),
(513, 61, 19, 1),
(514, 61, 20, 4),
(515, 61, 21, 4),
(516, 61, 22, 3),
(517, 61, 23, 2),
(518, 61, 24, 1),
(519, 61, 25, 1),
(520, 61, 26, 3),
(521, 61, 27, 2),
(522, 61, 1, 4),
(523, 61, 2, 3),
(524, 61, 3, 2),
(525, 61, 4, 1),
(526, 61, 5, 1),
(527, 61, 6, 2),
(528, 61, 7, 3),
(529, 61, 8, 4),
(530, 61, 9, 4),
(531, 61, 10, 3),
(532, 61, 11, 2),
(533, 61, 12, 1),
(534, 61, 13, 4),
(535, 61, 14, 1),
(536, 61, 15, 3),
(537, 61, 16, 2),
(538, 61, 17, 3),
(539, 61, 18, 2),
(540, 61, 19, 1),
(541, 61, 20, 4),
(542, 61, 21, 4),
(543, 61, 22, 3),
(544, 61, 23, 2),
(545, 61, 24, 1),
(546, 61, 25, 1),
(547, 61, 26, 3),
(548, 61, 27, 2),
(549, 63, 1, 3),
(550, 63, 2, 2),
(551, 63, 3, 4),
(552, 63, 4, 2),
(553, 63, 5, 3),
(554, 63, 6, 4),
(555, 63, 7, 3),
(556, 63, 8, 2),
(557, 63, 9, 1),
(558, 63, 10, 2),
(559, 63, 11, 3),
(560, 63, 12, 4),
(561, 63, 13, 3),
(562, 63, 14, 2),
(563, 63, 15, 1),
(564, 63, 16, 2),
(565, 63, 17, 3),
(566, 63, 18, 4),
(567, 63, 19, 3),
(568, 63, 20, 2),
(569, 63, 21, 1),
(570, 63, 22, 2),
(571, 63, 23, 3),
(572, 63, 24, 4),
(573, 63, 25, 4),
(574, 63, 26, 3),
(575, 63, 27, 2),
(576, 65, 1, 2),
(577, 65, 2, 3),
(578, 65, 3, 4),
(579, 65, 4, 3),
(580, 65, 5, 4),
(581, 65, 6, 2),
(582, 65, 7, 2),
(583, 65, 8, 4),
(584, 65, 9, 2),
(585, 65, 10, 2),
(586, 65, 11, 3),
(587, 65, 12, 4),
(588, 65, 13, 3),
(589, 65, 14, 2),
(590, 65, 15, 4),
(591, 65, 16, 2),
(592, 65, 17, 3),
(593, 65, 18, 4),
(594, 65, 19, 3),
(595, 65, 20, 2),
(596, 65, 21, 4),
(597, 65, 22, 2),
(598, 65, 23, 3),
(599, 65, 24, 4),
(600, 65, 25, 3),
(601, 65, 26, 4),
(602, 65, 27, 4),
(603, 65, 1, 2),
(604, 65, 2, 3),
(605, 65, 3, 4),
(606, 65, 4, 3),
(607, 65, 5, 4),
(608, 65, 6, 2),
(609, 65, 7, 2),
(610, 65, 8, 4),
(611, 65, 9, 2),
(612, 65, 10, 2),
(613, 65, 11, 3),
(614, 65, 12, 4),
(615, 65, 13, 3),
(616, 65, 14, 2),
(617, 65, 15, 4),
(618, 65, 16, 2),
(619, 65, 17, 3),
(620, 65, 18, 4),
(621, 65, 19, 3),
(622, 65, 20, 2),
(623, 65, 21, 4),
(624, 65, 22, 2),
(625, 65, 23, 3),
(626, 65, 24, 4),
(627, 65, 25, 3),
(628, 65, 26, 4),
(629, 65, 27, 4),
(630, 65, 1, 2),
(631, 65, 2, 3),
(632, 65, 3, 4),
(633, 65, 4, 3),
(634, 65, 5, 4),
(635, 65, 6, 2),
(636, 65, 7, 2),
(637, 65, 8, 4),
(638, 65, 9, 2),
(639, 65, 10, 2),
(640, 65, 11, 3),
(641, 65, 12, 4),
(642, 65, 13, 3),
(643, 65, 14, 2),
(644, 65, 15, 4),
(645, 65, 16, 2),
(646, 65, 17, 3),
(647, 65, 18, 4),
(648, 65, 19, 3),
(649, 65, 20, 2),
(650, 65, 21, 4),
(651, 65, 22, 2),
(652, 65, 23, 3),
(653, 65, 24, 4),
(654, 65, 25, 3),
(655, 65, 26, 4),
(656, 65, 27, 4),
(657, 65, 1, 2),
(658, 65, 2, 3),
(659, 65, 3, 4),
(660, 65, 4, 3),
(661, 65, 5, 4),
(662, 65, 6, 2),
(663, 65, 7, 2),
(664, 65, 8, 4),
(665, 65, 9, 2),
(666, 65, 10, 2),
(667, 65, 11, 3),
(668, 65, 12, 4),
(669, 65, 13, 3),
(670, 65, 14, 2),
(671, 65, 15, 4),
(672, 65, 16, 2),
(673, 65, 17, 3),
(674, 65, 18, 4),
(675, 65, 19, 3),
(676, 65, 20, 2),
(677, 65, 21, 4),
(678, 65, 22, 2),
(679, 65, 23, 3),
(680, 65, 24, 4),
(681, 65, 25, 3),
(682, 65, 26, 4),
(683, 65, 27, 4),
(684, 65, 1, 2),
(685, 65, 2, 3),
(686, 65, 3, 4),
(687, 65, 4, 3),
(688, 65, 5, 4),
(689, 65, 6, 2),
(690, 65, 7, 2),
(691, 65, 8, 4),
(692, 65, 9, 2),
(693, 65, 10, 2),
(694, 65, 11, 3),
(695, 65, 12, 4),
(696, 65, 13, 3),
(697, 65, 14, 2),
(698, 65, 15, 4),
(699, 65, 16, 2),
(700, 65, 17, 3),
(701, 65, 18, 4),
(702, 65, 19, 3),
(703, 65, 20, 2),
(704, 65, 21, 4),
(705, 65, 22, 2),
(706, 65, 23, 3),
(707, 65, 24, 4),
(708, 65, 25, 3),
(709, 65, 26, 4),
(710, 65, 27, 4),
(711, 65, 1, 2),
(712, 65, 2, 3),
(713, 65, 3, 4),
(714, 65, 4, 3),
(715, 65, 5, 4),
(716, 65, 6, 2),
(717, 65, 7, 2),
(718, 65, 8, 4),
(719, 65, 9, 2),
(720, 65, 10, 2),
(721, 65, 11, 3),
(722, 65, 12, 4),
(723, 65, 13, 3),
(724, 65, 14, 2),
(725, 65, 15, 4),
(726, 65, 16, 2),
(727, 65, 17, 3),
(728, 65, 18, 4),
(729, 65, 19, 3),
(730, 65, 20, 2),
(731, 65, 21, 4),
(732, 65, 22, 2),
(733, 65, 23, 3),
(734, 65, 24, 4),
(735, 65, 25, 3),
(736, 65, 26, 4),
(737, 65, 27, 4),
(738, 65, 1, 2),
(739, 65, 2, 3),
(740, 65, 3, 4),
(741, 65, 4, 3),
(742, 65, 5, 4),
(743, 65, 6, 2),
(744, 65, 7, 2),
(745, 65, 8, 4),
(746, 65, 9, 2),
(747, 65, 10, 2),
(748, 65, 11, 3),
(749, 65, 12, 4),
(750, 65, 13, 3),
(751, 65, 14, 2),
(752, 65, 15, 4),
(753, 65, 16, 2),
(754, 65, 17, 3),
(755, 65, 18, 4),
(756, 65, 19, 3),
(757, 65, 20, 2),
(758, 65, 21, 4),
(759, 65, 22, 2),
(760, 65, 23, 3),
(761, 65, 24, 4),
(762, 65, 25, 3),
(763, 65, 26, 4),
(764, 65, 27, 4),
(765, 65, 1, 2),
(766, 65, 2, 3),
(767, 65, 3, 4),
(768, 65, 4, 3),
(769, 65, 5, 4),
(770, 65, 6, 2),
(771, 65, 7, 2),
(772, 65, 8, 4),
(773, 65, 9, 2),
(774, 65, 10, 2),
(775, 65, 11, 3),
(776, 65, 12, 4),
(777, 65, 13, 3),
(778, 65, 14, 2),
(779, 65, 15, 4),
(780, 65, 16, 2),
(781, 65, 17, 3),
(782, 65, 18, 4),
(783, 65, 19, 3),
(784, 65, 20, 2),
(785, 65, 21, 4),
(786, 65, 22, 2),
(787, 65, 23, 3),
(788, 65, 24, 4),
(789, 65, 25, 3),
(790, 65, 26, 4),
(791, 65, 27, 4),
(792, 65, 1, 2),
(793, 65, 2, 3),
(794, 65, 3, 4),
(795, 65, 4, 3),
(796, 65, 5, 4),
(797, 65, 6, 2),
(798, 65, 7, 2),
(799, 65, 8, 4),
(800, 65, 9, 2),
(801, 65, 10, 2),
(802, 65, 11, 3),
(803, 65, 12, 4),
(804, 65, 13, 3),
(805, 65, 14, 2),
(806, 65, 15, 4),
(807, 65, 16, 2),
(808, 65, 17, 3),
(809, 65, 18, 4),
(810, 65, 19, 3),
(811, 65, 20, 2),
(812, 65, 21, 4),
(813, 65, 22, 2),
(814, 65, 23, 3),
(815, 65, 24, 4),
(816, 65, 25, 3),
(817, 65, 26, 4),
(818, 65, 27, 4),
(819, 67, 1, 2),
(820, 67, 2, 3),
(821, 67, 3, 4),
(822, 67, 4, 3),
(823, 67, 5, 4),
(824, 67, 6, 2),
(825, 67, 7, 2),
(826, 67, 8, 4),
(827, 67, 9, 2),
(828, 67, 10, 2),
(829, 67, 11, 3),
(830, 67, 12, 4),
(831, 67, 13, 3),
(832, 67, 14, 2),
(833, 67, 15, 4),
(834, 67, 16, 2),
(835, 67, 17, 3),
(836, 67, 18, 4),
(837, 67, 19, 3),
(838, 67, 20, 2),
(839, 67, 21, 4),
(840, 67, 22, 2),
(841, 67, 23, 3),
(842, 67, 24, 4),
(843, 67, 25, 3),
(844, 67, 26, 4),
(845, 67, 27, 4),
(846, 67, 1, 2),
(847, 67, 2, 3),
(848, 67, 3, 4),
(849, 67, 4, 3),
(850, 67, 5, 4),
(851, 67, 6, 2),
(852, 67, 7, 2),
(853, 67, 8, 4),
(854, 67, 9, 2),
(855, 67, 10, 2),
(856, 67, 11, 3),
(857, 67, 12, 4),
(858, 67, 13, 3),
(859, 67, 14, 2),
(860, 67, 15, 4),
(861, 67, 16, 2),
(862, 67, 17, 3),
(863, 67, 18, 4),
(864, 67, 19, 3),
(865, 67, 20, 2),
(866, 67, 21, 4),
(867, 67, 22, 2),
(868, 67, 23, 3),
(869, 67, 24, 4),
(870, 67, 25, 3),
(871, 67, 26, 4),
(872, 67, 27, 4),
(873, 67, 1, 2),
(874, 67, 2, 3),
(875, 67, 3, 4),
(876, 67, 4, 3),
(877, 67, 5, 4),
(878, 67, 6, 2),
(879, 67, 7, 2),
(880, 67, 8, 4),
(881, 67, 9, 2),
(882, 67, 10, 2),
(883, 67, 11, 3),
(884, 67, 12, 4),
(885, 67, 13, 3),
(886, 67, 14, 2),
(887, 67, 15, 4),
(888, 67, 16, 2),
(889, 67, 17, 3),
(890, 67, 18, 4),
(891, 67, 19, 3),
(892, 67, 20, 2),
(893, 67, 21, 4),
(894, 67, 22, 2),
(895, 67, 23, 3),
(896, 67, 24, 4),
(897, 67, 25, 3),
(898, 67, 26, 4),
(899, 67, 27, 4),
(900, 69, 1, 2),
(901, 69, 2, 3),
(902, 69, 3, 4),
(903, 69, 4, 3),
(904, 69, 5, 4),
(905, 69, 6, 2),
(906, 69, 7, 2),
(907, 69, 8, 4),
(908, 69, 9, 2),
(909, 69, 10, 2),
(910, 69, 11, 3),
(911, 69, 12, 4),
(912, 69, 13, 3),
(913, 69, 14, 2),
(914, 69, 15, 4),
(915, 69, 16, 2),
(916, 69, 17, 3),
(917, 69, 18, 4),
(918, 69, 19, 3),
(919, 69, 20, 2),
(920, 69, 21, 4),
(921, 69, 22, 2),
(922, 69, 23, 3),
(923, 69, 24, 4),
(924, 69, 25, 3),
(925, 69, 26, 4),
(926, 69, 27, 4),
(927, 70, 1, 2),
(928, 70, 2, 3),
(929, 70, 3, 4),
(930, 70, 4, 3),
(931, 70, 5, 4),
(932, 70, 6, 2),
(933, 70, 7, 2),
(934, 70, 8, 4),
(935, 70, 9, 2),
(936, 70, 10, 2),
(937, 70, 11, 3),
(938, 70, 12, 4),
(939, 70, 13, 3),
(940, 70, 14, 2),
(941, 70, 15, 4),
(942, 70, 16, 2),
(943, 70, 17, 3),
(944, 70, 18, 4),
(945, 70, 19, 3),
(946, 70, 20, 2),
(947, 70, 21, 4),
(948, 70, 22, 2),
(949, 70, 23, 3),
(950, 70, 24, 4),
(951, 70, 25, 3),
(952, 70, 26, 4),
(953, 70, 27, 4),
(954, 72, 1, 4),
(955, 72, 2, 3),
(956, 72, 3, 4),
(957, 72, 4, 3),
(958, 72, 5, 2),
(959, 72, 6, 3),
(960, 72, 7, 4),
(961, 72, 8, 3),
(962, 72, 9, 3),
(963, 72, 10, 3),
(964, 72, 11, 3),
(965, 72, 12, 4),
(966, 72, 13, 3),
(967, 72, 14, 4),
(968, 72, 15, 3),
(969, 72, 16, 2),
(970, 72, 17, 3),
(971, 72, 18, 4),
(972, 72, 19, 3),
(973, 72, 20, 4),
(974, 72, 21, 3),
(975, 72, 22, 3),
(976, 72, 23, 3),
(977, 72, 24, 4),
(978, 72, 25, 4),
(979, 72, 26, 2),
(980, 72, 27, 3),
(981, 72, 1, 4),
(982, 72, 2, 3),
(983, 72, 3, 4),
(984, 72, 4, 3),
(985, 72, 5, 2),
(986, 72, 6, 3),
(987, 72, 7, 4),
(988, 72, 8, 3),
(989, 72, 9, 3),
(990, 72, 10, 3),
(991, 72, 11, 3),
(992, 72, 12, 4),
(993, 72, 13, 3),
(994, 72, 14, 4),
(995, 72, 15, 3),
(996, 72, 16, 2),
(997, 72, 17, 3),
(998, 72, 18, 4),
(999, 72, 19, 3),
(1000, 72, 20, 4),
(1001, 72, 21, 3),
(1002, 72, 22, 3),
(1003, 72, 23, 3),
(1004, 72, 24, 4),
(1005, 72, 25, 4),
(1006, 72, 26, 2),
(1007, 72, 27, 3),
(1008, 73, 1, 2),
(1009, 73, 2, 3),
(1010, 73, 3, 4),
(1011, 73, 4, 3),
(1012, 73, 5, 4),
(1013, 73, 6, 2),
(1014, 73, 7, 2),
(1015, 73, 8, 4),
(1016, 73, 9, 2),
(1017, 73, 10, 2),
(1018, 73, 11, 3),
(1019, 73, 12, 4),
(1020, 73, 13, 3),
(1021, 73, 14, 2),
(1022, 73, 15, 4),
(1023, 73, 16, 2),
(1024, 73, 17, 3),
(1025, 73, 18, 4),
(1026, 73, 19, 3),
(1027, 73, 20, 2),
(1028, 73, 21, 4),
(1029, 73, 22, 2),
(1030, 73, 23, 3),
(1031, 73, 24, 4),
(1032, 73, 25, 3),
(1033, 73, 26, 4),
(1034, 73, 27, 4),
(1035, 76, 1, 2),
(1036, 76, 2, 3),
(1037, 76, 3, 4),
(1038, 76, 4, 3),
(1039, 76, 5, 4),
(1040, 76, 6, 2),
(1041, 76, 7, 2),
(1042, 76, 8, 4),
(1043, 76, 9, 2),
(1044, 76, 10, 2),
(1045, 76, 11, 3),
(1046, 76, 12, 4),
(1047, 76, 13, 3),
(1048, 76, 14, 2),
(1049, 76, 15, 4),
(1050, 76, 16, 2),
(1051, 76, 17, 3),
(1052, 76, 18, 4),
(1053, 76, 19, 3),
(1054, 76, 20, 2),
(1055, 76, 21, 4),
(1056, 76, 22, 2),
(1057, 76, 23, 3),
(1058, 76, 24, 4),
(1059, 76, 25, 3),
(1060, 76, 26, 4),
(1061, 76, 27, 4),
(1062, 76, 1, 2),
(1063, 76, 2, 3),
(1064, 76, 3, 4),
(1065, 76, 4, 3),
(1066, 76, 5, 4),
(1067, 76, 6, 2),
(1068, 76, 7, 2),
(1069, 76, 8, 4),
(1070, 76, 9, 2),
(1071, 76, 10, 2),
(1072, 76, 11, 3),
(1073, 76, 12, 4),
(1074, 76, 13, 3),
(1075, 76, 14, 2),
(1076, 76, 15, 4),
(1077, 76, 16, 2),
(1078, 76, 17, 3),
(1079, 76, 18, 4),
(1080, 76, 19, 3),
(1081, 76, 20, 2),
(1082, 76, 21, 4),
(1083, 76, 22, 2),
(1084, 76, 23, 3),
(1085, 76, 24, 4),
(1086, 76, 25, 3),
(1087, 76, 26, 4),
(1088, 76, 27, 4),
(1089, 77, 1, 4),
(1090, 77, 2, 3),
(1091, 77, 3, 2),
(1092, 77, 4, 3),
(1093, 77, 5, 4),
(1094, 77, 6, 3),
(1095, 77, 7, 4),
(1096, 77, 8, 3),
(1097, 77, 9, 3),
(1098, 77, 10, 3),
(1099, 77, 11, 2),
(1100, 77, 12, 1),
(1101, 77, 13, 4),
(1102, 77, 14, 4),
(1103, 77, 15, 2),
(1104, 77, 16, 2),
(1105, 77, 17, 1),
(1106, 77, 18, 3),
(1107, 77, 19, 4),
(1108, 77, 20, 3),
(1109, 77, 21, 2),
(1110, 77, 22, 2),
(1111, 77, 23, 2),
(1112, 77, 24, 3),
(1113, 77, 25, 4),
(1114, 77, 26, 3),
(1115, 77, 27, 3),
(1116, 78, 1, 4),
(1117, 78, 2, 4),
(1118, 78, 3, 4),
(1119, 78, 4, 3),
(1120, 78, 5, 1),
(1121, 78, 6, 4),
(1122, 78, 7, 3),
(1123, 78, 8, 2),
(1124, 78, 9, 3),
(1125, 78, 10, 4),
(1126, 78, 11, 3),
(1127, 78, 12, 1),
(1128, 78, 13, 3),
(1129, 78, 14, 4),
(1130, 78, 15, 4),
(1131, 78, 16, 3),
(1132, 78, 17, 2),
(1133, 78, 18, 4),
(1134, 78, 19, 3),
(1135, 78, 20, 3),
(1136, 78, 21, 3),
(1137, 78, 22, 3),
(1138, 78, 23, 2),
(1139, 78, 24, 2),
(1140, 78, 25, 3),
(1141, 78, 26, 4),
(1142, 78, 27, 3),
(1143, 79, 1, 4),
(1144, 79, 2, 3),
(1145, 79, 3, 4),
(1146, 79, 4, 4),
(1147, 79, 5, 3),
(1148, 79, 6, 4),
(1149, 79, 7, 4),
(1150, 79, 8, 4),
(1151, 79, 9, 4),
(1152, 79, 10, 4),
(1153, 79, 11, 4),
(1154, 79, 12, 4),
(1155, 79, 13, 3),
(1156, 79, 14, 4),
(1157, 79, 15, 3),
(1158, 79, 16, 1),
(1159, 79, 17, 2),
(1160, 79, 18, 4),
(1161, 79, 19, 3),
(1162, 79, 20, 4),
(1163, 79, 21, 1),
(1164, 79, 22, 2),
(1165, 79, 23, 1),
(1166, 79, 24, 2),
(1167, 79, 25, 3),
(1168, 79, 26, 3),
(1169, 79, 27, 4),
(1170, 116, 1, 4),
(1171, 116, 2, 2),
(1172, 116, 3, 4),
(1173, 116, 4, 3),
(1174, 116, 5, 2),
(1175, 116, 6, 1),
(1176, 116, 7, 3),
(1177, 116, 8, 4),
(1178, 116, 9, 2),
(1179, 116, 10, 3),
(1180, 116, 11, 2),
(1181, 116, 12, 1),
(1182, 116, 13, 2),
(1183, 116, 14, 4),
(1184, 116, 15, 3),
(1185, 116, 16, 1),
(1186, 116, 17, 2),
(1187, 116, 18, 3),
(1188, 116, 19, 4),
(1189, 116, 20, 1),
(1190, 116, 21, 2),
(1191, 116, 22, 3),
(1192, 116, 23, 3),
(1193, 116, 24, 3),
(1194, 116, 25, 3),
(1195, 116, 26, 3),
(1196, 116, 27, 2),
(1197, 117, 1, 2),
(1198, 117, 2, 3),
(1199, 117, 3, 4),
(1200, 117, 4, 3),
(1201, 117, 5, 4),
(1202, 117, 6, 2),
(1203, 117, 7, 2),
(1204, 117, 8, 4),
(1205, 117, 9, 2),
(1206, 117, 10, 2),
(1207, 117, 11, 3),
(1208, 117, 12, 4),
(1209, 117, 13, 3),
(1210, 117, 14, 2),
(1211, 117, 15, 4),
(1212, 117, 16, 2),
(1213, 117, 17, 3),
(1214, 117, 18, 4),
(1215, 117, 19, 3),
(1216, 117, 20, 2),
(1217, 117, 21, 4),
(1218, 117, 22, 2),
(1219, 117, 23, 3),
(1220, 117, 24, 4),
(1221, 117, 25, 3),
(1222, 117, 26, 4),
(1223, 117, 27, 4),
(1224, 125, 1, 4),
(1225, 125, 2, 3),
(1226, 125, 3, 2),
(1227, 125, 4, 3),
(1228, 125, 5, 4),
(1229, 125, 6, 3),
(1230, 125, 7, 4),
(1231, 125, 8, 3),
(1232, 125, 9, 4),
(1233, 125, 10, 3),
(1234, 125, 11, 4),
(1235, 125, 12, 3),
(1236, 125, 13, 4),
(1237, 125, 14, 3),
(1238, 125, 15, 4),
(1239, 125, 16, 3),
(1240, 125, 17, 1),
(1241, 125, 18, 2),
(1242, 125, 19, 3),
(1243, 125, 20, 1),
(1244, 125, 21, 4),
(1245, 125, 22, 3),
(1246, 125, 23, 3),
(1247, 125, 24, 3),
(1248, 125, 25, 4),
(1249, 125, 26, 3),
(1250, 125, 27, 4),
(1251, 126, 1, 4),
(1252, 126, 1, 1),
(1253, 126, 2, 2),
(1254, 126, 3, 4),
(1255, 126, 4, 2),
(1256, 126, 5, 2),
(1257, 126, 6, 2),
(1258, 126, 7, 2),
(1259, 126, 8, 1),
(1260, 126, 9, 1),
(1261, 126, 10, 1),
(1262, 126, 11, 2),
(1263, 126, 12, 3),
(1264, 126, 13, 1),
(1265, 126, 14, 1),
(1266, 126, 15, 1),
(1267, 126, 16, 1),
(1268, 126, 17, 1),
(1269, 126, 18, 1),
(1270, 126, 19, 1),
(1271, 126, 20, 1),
(1272, 126, 21, 1),
(1273, 126, 22, 1),
(1274, 126, 23, 1),
(1275, 126, 24, 1),
(1276, 126, 25, 1),
(1277, 126, 26, 1),
(1278, 126, 27, 1),
(1279, 127, 1, 1),
(1280, 127, 2, 2),
(1281, 127, 3, 1),
(1282, 127, 4, 1),
(1283, 127, 5, 1),
(1284, 127, 6, 1),
(1285, 127, 7, 1),
(1286, 127, 8, 2),
(1287, 127, 9, 3),
(1288, 127, 10, 4),
(1289, 127, 11, 3),
(1290, 127, 12, 2),
(1291, 127, 13, 4),
(1292, 127, 14, 1),
(1293, 127, 15, 2),
(1294, 127, 16, 3),
(1295, 127, 17, 4),
(1296, 127, 18, 2),
(1297, 127, 19, 3),
(1298, 127, 20, 2),
(1299, 127, 21, 3),
(1300, 127, 22, 4),
(1301, 127, 23, 2),
(1302, 127, 24, 3),
(1303, 127, 25, 3),
(1304, 127, 26, 4),
(1305, 127, 27, 1),
(1333, 128, 1, 4),
(1334, 128, 2, 3),
(1335, 128, 3, 4),
(1336, 128, 4, 3),
(1337, 128, 5, 1),
(1338, 128, 6, 3),
(1339, 128, 7, 4),
(1340, 128, 8, 3),
(1341, 128, 9, 2),
(1342, 128, 10, 3),
(1343, 128, 11, 4),
(1344, 128, 12, 3),
(1345, 128, 13, 4),
(1346, 128, 14, 3),
(1347, 128, 15, 2),
(1348, 128, 16, 4),
(1349, 128, 17, 2),
(1350, 128, 18, 3),
(1351, 128, 19, 4),
(1352, 128, 20, 2),
(1353, 128, 21, 3),
(1354, 128, 22, 4),
(1355, 128, 23, 2),
(1356, 128, 24, 4),
(1357, 128, 25, 3),
(1358, 128, 26, 4),
(1359, 128, 27, 3),
(1360, 130, 1, 4),
(1361, 130, 2, 3),
(1362, 130, 3, 2),
(1363, 130, 4, 4),
(1364, 130, 5, 2),
(1365, 130, 6, 3),
(1366, 130, 7, 4),
(1367, 130, 8, 3),
(1368, 130, 9, 2),
(1369, 130, 10, 3),
(1370, 130, 11, 4),
(1371, 130, 12, 3),
(1372, 130, 13, 2),
(1373, 130, 14, 4),
(1374, 130, 15, 3),
(1375, 130, 16, 3),
(1376, 130, 17, 4),
(1377, 130, 18, 3),
(1378, 130, 19, 3),
(1379, 130, 20, 4),
(1380, 130, 21, 3),
(1381, 130, 22, 2),
(1382, 130, 23, 1),
(1383, 130, 24, 3),
(1384, 130, 25, 4),
(1385, 130, 26, 3),
(1386, 130, 27, 4),
(1387, 130, 1, 4),
(1388, 130, 2, 3),
(1389, 130, 3, 2),
(1390, 130, 4, 4),
(1391, 130, 5, 2),
(1392, 130, 6, 3),
(1393, 130, 7, 4),
(1394, 130, 8, 3),
(1395, 130, 9, 2),
(1396, 130, 10, 3),
(1397, 130, 11, 4),
(1398, 130, 12, 3),
(1399, 130, 13, 2),
(1400, 130, 14, 4),
(1401, 130, 15, 3),
(1402, 130, 16, 3),
(1403, 130, 17, 4),
(1404, 130, 18, 3),
(1405, 130, 19, 3),
(1406, 130, 20, 4),
(1407, 130, 21, 3),
(1408, 130, 22, 2),
(1409, 130, 23, 1),
(1410, 130, 24, 3),
(1411, 130, 25, 4),
(1412, 130, 26, 3),
(1413, 130, 27, 4),
(1414, 131, 1, 4),
(1415, 131, 2, 1),
(1416, 131, 3, 2),
(1417, 131, 4, 1),
(1418, 131, 5, 3),
(1419, 131, 6, 2),
(1420, 131, 7, 1),
(1421, 131, 8, 3),
(1422, 131, 9, 2),
(1423, 131, 10, 1),
(1424, 131, 11, 3),
(1425, 131, 12, 1),
(1426, 131, 13, 2),
(1427, 131, 14, 1),
(1428, 131, 15, 3),
(1429, 131, 16, 2),
(1430, 131, 17, 3),
(1431, 131, 18, 4),
(1432, 131, 19, 2),
(1433, 131, 20, 3),
(1434, 131, 21, 2),
(1435, 131, 22, 1),
(1436, 131, 23, 3),
(1437, 131, 24, 4),
(1438, 131, 25, 2),
(1439, 131, 26, 1),
(1440, 131, 27, 1),
(1495, 137, 2, 1),
(1496, 137, 3, 3),
(1497, 137, 4, 2),
(1498, 137, 5, 2),
(1499, 137, 6, 4),
(1500, 137, 7, 4),
(1501, 137, 8, 4),
(1502, 137, 9, 4),
(1503, 137, 10, 4),
(1504, 137, 11, 4),
(1505, 137, 12, 4),
(1506, 137, 13, 4),
(1507, 137, 14, 4),
(1508, 137, 15, 4),
(1509, 137, 16, 4),
(1510, 137, 17, 4),
(1511, 137, 18, 4),
(1512, 137, 19, 4),
(1513, 137, 20, 4),
(1514, 137, 21, 4),
(1515, 137, 22, 4),
(1516, 137, 23, 4),
(1517, 137, 24, 4),
(1518, 137, 25, 4),
(1519, 137, 26, 4),
(1520, 137, 27, 4),
(1521, 137, 2, 1),
(1522, 137, 3, 3),
(1523, 137, 4, 2),
(1524, 137, 5, 2),
(1525, 137, 6, 4),
(1526, 137, 7, 4),
(1527, 137, 8, 4),
(1528, 137, 9, 4),
(1529, 137, 10, 4),
(1530, 137, 11, 4),
(1531, 137, 12, 4),
(1532, 137, 13, 4),
(1533, 137, 14, 4),
(1534, 137, 15, 4),
(1535, 137, 16, 4),
(1536, 137, 17, 4),
(1537, 137, 18, 4),
(1538, 137, 19, 4),
(1539, 137, 20, 4),
(1540, 137, 21, 4),
(1541, 137, 22, 4),
(1542, 137, 23, 4),
(1543, 137, 24, 4),
(1544, 137, 25, 4),
(1545, 137, 26, 4),
(1546, 137, 27, 4),
(1547, 138, 2, 1),
(1548, 138, 3, 3),
(1549, 138, 4, 2),
(1550, 138, 5, 2),
(1551, 138, 6, 4),
(1552, 138, 7, 4),
(1553, 138, 8, 4),
(1554, 138, 9, 4),
(1555, 138, 10, 4),
(1556, 138, 11, 4),
(1557, 138, 12, 4),
(1558, 138, 13, 4),
(1559, 138, 14, 4),
(1560, 138, 15, 4),
(1561, 138, 16, 4),
(1562, 138, 17, 4),
(1563, 138, 18, 4),
(1564, 138, 19, 4),
(1565, 138, 20, 4),
(1566, 138, 21, 4),
(1567, 138, 22, 4),
(1568, 138, 23, 4),
(1569, 138, 24, 4),
(1570, 138, 25, 4),
(1571, 138, 26, 4),
(1572, 138, 27, 4),
(1573, 138, 2, 1),
(1574, 138, 3, 3),
(1575, 138, 4, 2),
(1576, 138, 5, 2),
(1577, 138, 6, 4),
(1578, 138, 7, 4),
(1579, 138, 8, 4),
(1580, 138, 9, 4),
(1581, 138, 10, 4),
(1582, 138, 11, 4),
(1583, 138, 12, 4),
(1584, 138, 13, 4),
(1585, 138, 14, 4),
(1586, 138, 15, 4),
(1587, 138, 16, 4),
(1588, 138, 17, 4),
(1589, 138, 18, 4),
(1590, 138, 19, 4),
(1591, 138, 20, 4),
(1592, 138, 21, 4),
(1593, 138, 22, 4),
(1594, 138, 23, 4),
(1595, 138, 24, 4),
(1596, 138, 25, 4),
(1597, 138, 26, 4),
(1598, 138, 27, 4),
(1599, 138, 2, 1),
(1600, 138, 3, 3),
(1601, 138, 4, 2),
(1602, 138, 5, 2),
(1603, 138, 6, 4),
(1604, 138, 7, 4),
(1605, 138, 8, 4),
(1606, 138, 9, 4),
(1607, 138, 10, 4),
(1608, 138, 11, 4),
(1609, 138, 12, 4),
(1610, 138, 13, 4),
(1611, 138, 14, 4),
(1612, 138, 15, 4),
(1613, 138, 16, 4),
(1614, 138, 17, 4),
(1615, 138, 18, 4),
(1616, 138, 19, 4),
(1617, 138, 20, 4),
(1618, 138, 21, 4),
(1619, 138, 22, 4),
(1620, 138, 23, 4),
(1621, 138, 24, 4),
(1622, 138, 25, 4),
(1623, 138, 26, 4),
(1624, 138, 27, 4),
(1625, 138, 1, 4),
(1626, 138, 2, 1),
(1627, 138, 3, 3),
(1628, 138, 4, 2),
(1629, 138, 5, 2),
(1630, 138, 6, 4),
(1631, 138, 7, 4),
(1632, 138, 8, 4),
(1633, 138, 9, 4),
(1634, 138, 10, 4),
(1635, 138, 11, 4),
(1636, 138, 12, 4),
(1637, 138, 13, 4),
(1638, 138, 14, 4),
(1639, 138, 15, 4),
(1640, 138, 16, 4),
(1641, 138, 17, 4),
(1642, 138, 18, 4),
(1643, 138, 19, 4),
(1644, 138, 20, 4),
(1645, 138, 21, 4),
(1646, 138, 22, 4),
(1647, 138, 23, 4),
(1648, 138, 24, 4),
(1649, 138, 25, 4),
(1650, 138, 26, 4),
(1651, 138, 27, 4),
(1652, 139, 1, 4),
(1653, 139, 4, 2),
(1654, 139, 3, 4),
(1655, 139, 4, 3),
(1656, 139, 4, 4),
(1657, 139, 4, 4),
(1658, 139, 5, 4),
(1659, 139, 4, 5),
(1660, 139, 6, 4),
(1661, 139, 4, 6),
(1662, 139, 7, 4),
(1663, 139, 4, 7),
(1664, 139, 8, 4),
(1665, 139, 4, 8),
(1666, 139, 9, 4),
(1667, 139, 4, 9),
(1668, 139, 10, 4),
(1669, 139, 4, 10),
(1670, 139, 11, 4),
(1671, 139, 4, 11),
(1672, 139, 12, 4),
(1673, 139, 4, 12),
(1674, 139, 13, 4),
(1675, 139, 4, 13),
(1676, 139, 14, 4),
(1677, 139, 4, 14),
(1678, 139, 15, 4),
(1679, 139, 4, 15),
(1680, 139, 1, 4),
(1681, 139, 1, 4),
(1682, 139, 1, 4),
(1683, 139, 1, 4),
(1684, 139, 1, 4),
(1685, 139, 1, 4),
(1686, 139, 1, 4),
(1687, 139, 1, 4),
(1688, 139, 1, 4),
(1689, 139, 1, 4),
(1690, 139, 1, 4),
(1691, 139, 1, 4),
(1692, 139, 1, 4),
(1693, 139, 1, 4),
(1694, 139, 1, 4),
(1695, 139, 1, 4),
(1696, 139, 1, 4),
(1697, 139, 1, 4),
(1698, 139, 1, 4),
(1699, 139, 1, 4),
(1700, 139, 1, 4),
(1701, 139, 1, 4),
(1702, 139, 1, 4),
(1703, 139, 1, 4),
(1704, 139, 1, 4),
(1705, 139, 1, 4),
(1706, 139, 1, 4),
(1707, 139, 1, 4),
(1708, 139, 1, 4),
(1709, 139, 1, 4),
(1710, 139, 1, 4),
(1711, 139, 1, 4),
(1712, 139, 1, 4),
(1713, 139, 1, 4),
(1714, 139, 1, 4),
(1715, 139, 1, 4),
(1716, 139, 1, 4),
(1717, 139, 1, 4),
(1718, 139, 1, 4),
(1719, 139, 1, 4),
(1720, 139, 1, 4),
(1721, 139, 1, 4),
(1722, 139, 1, 4),
(1723, 139, 1, 4),
(1724, 139, 1, 4),
(1725, 139, 1, 4),
(1726, 139, 1, 4),
(1727, 139, 1, 4),
(1728, 139, 1, 4),
(1729, 139, 1, 4),
(1730, 139, 1, 4),
(1731, 139, 1, 4),
(1732, 139, 1, 4),
(1733, 139, 1, 4),
(1734, 139, 1, 4),
(1735, 139, 1, 4),
(1736, 139, 1, 4),
(1737, 139, 1, 4),
(1738, 139, 1, 4),
(1739, 139, 1, 4),
(1740, 139, 1, 4),
(1741, 139, 1, 4),
(1742, 139, 1, 4),
(1743, 139, 1, 4),
(1744, 139, 1, 4),
(1745, 139, 1, 4),
(1746, 139, 1, 4),
(1747, 139, 1, 4),
(1748, 139, 1, 4),
(1749, 139, 1, 4),
(1750, 139, 1, 4),
(1751, 139, 1, 4),
(1752, 139, 1, 4),
(1753, 139, 1, 4),
(1754, 139, 1, 4),
(1755, 139, 1, 4),
(1756, 139, 1, 4),
(1757, 139, 1, 4),
(1758, 139, 1, 4),
(1759, 139, 1, 4),
(1760, 139, 1, 4),
(1761, 139, 1, 4),
(1762, 139, 1, 4),
(1763, 139, 1, 4),
(1764, 139, 1, 4),
(1765, 139, 1, 4),
(1766, 139, 1, 4),
(1767, 139, 1, 4),
(1768, 139, 1, 4),
(1769, 139, 1, 4),
(1770, 139, 1, 4),
(1771, 139, 1, 4),
(1772, 139, 1, 4),
(1773, 139, 1, 4),
(1774, 139, 1, 4),
(1775, 139, 1, 4),
(1776, 139, 1, 4),
(1777, 139, 1, 4),
(1778, 139, 1, 4),
(1779, 139, 1, 4),
(1780, 139, 1, 4),
(1781, 139, 1, 4),
(1782, 139, 1, 4),
(1783, 139, 1, 4),
(1784, 139, 1, 4),
(1785, 139, 1, 4),
(1786, 139, 1, 4),
(1787, 139, 1, 4),
(1788, 139, 1, 4),
(1789, 139, 1, 4),
(1790, 139, 1, 4),
(1791, 139, 1, 4),
(1792, 139, 1, 4),
(1793, 139, 1, 4),
(1794, 139, 1, 4),
(1795, 139, 1, 4),
(1796, 139, 1, 4),
(1797, 139, 1, 4),
(1798, 139, 1, 4),
(1799, 139, 1, 4),
(1800, 139, 1, 4),
(1801, 139, 1, 4),
(1802, 139, 1, 4),
(1803, 139, 1, 4),
(1804, 139, 1, 4),
(1805, 139, 1, 4),
(1806, 139, 1, 4),
(1807, 139, 1, 4),
(1808, 139, 1, 4),
(1809, 139, 1, 4),
(1810, 139, 1, 4),
(1811, 139, 1, 4),
(1812, 139, 1, 4),
(1813, 139, 1, 4),
(1814, 139, 1, 4),
(1815, 139, 1, 4),
(1816, 139, 1, 4),
(1817, 139, 1, 4),
(1818, 139, 1, 4),
(1819, 139, 1, 4),
(1820, 139, 1, 4),
(1821, 139, 1, 4),
(1822, 139, 1, 4),
(1823, 139, 1, 4),
(1824, 139, 1, 4),
(1825, 139, 1, 4),
(1826, 139, 1, 4),
(1827, 139, 1, 4),
(1828, 139, 1, 4),
(1829, 139, 1, 4),
(1830, 139, 1, 4),
(1831, 139, 1, 4),
(1832, 139, 1, 4),
(1833, 139, 1, 4),
(1834, 139, 1, 4),
(1835, 139, 1, 4),
(1836, 139, 1, 4),
(1837, 139, 1, 4),
(1838, 139, 1, 4),
(1839, 139, 1, 4),
(1840, 139, 1, 4),
(1841, 139, 1, 4),
(1842, 139, 1, 4),
(1843, 139, 1, 4),
(1844, 139, 1, 4),
(1845, 139, 1, 4),
(1846, 139, 1, 4),
(1847, 139, 1, 4),
(1848, 139, 1, 4),
(1849, 139, 1, 4),
(1850, 139, 1, 4),
(1851, 139, 1, 4),
(1852, 139, 1, 4),
(1853, 139, 1, 4),
(1854, 139, 1, 4),
(1855, 139, 1, 4),
(1856, 139, 1, 4),
(1857, 139, 1, 4),
(1858, 139, 1, 4),
(1859, 139, 1, 4),
(1860, 139, 1, 4),
(1861, 139, 1, 4),
(1862, 139, 1, 4),
(1863, 139, 1, 4),
(1864, 139, 1, 4),
(1865, 139, 1, 4),
(1866, 139, 1, 4),
(1867, 139, 1, 4),
(1868, 139, 1, 4),
(1869, 139, 1, 4),
(1870, 139, 1, 4),
(1871, 139, 1, 4),
(1872, 139, 1, 4),
(1873, 139, 1, 4),
(1874, 139, 1, 4),
(1875, 139, 1, 4),
(1876, 139, 1, 4),
(1877, 139, 1, 4),
(1878, 139, 1, 4),
(1879, 139, 1, 4),
(1880, 139, 1, 4),
(1881, 139, 1, 4),
(1882, 139, 1, 4),
(1883, 139, 1, 4),
(1884, 139, 1, 4),
(1885, 139, 1, 4),
(1886, 139, 1, 4),
(1887, 139, 1, 4),
(1888, 139, 1, 4),
(1889, 139, 1, 4),
(1890, 139, 1, 4),
(1891, 139, 1, 4),
(1892, 139, 1, 4),
(1893, 139, 1, 4),
(1894, 139, 1, 4),
(1895, 139, 1, 4),
(1896, 139, 1, 4),
(1897, 139, 1, 4),
(1898, 139, 1, 4),
(1899, 139, 1, 4),
(1900, 139, 1, 4),
(1901, 139, 1, 4),
(1902, 139, 1, 4),
(1903, 139, 1, 4),
(1904, 139, 1, 4),
(1905, 139, 1, 4),
(1906, 139, 1, 4),
(1907, 139, 1, 4),
(1908, 139, 1, 4),
(1909, 139, 1, 4),
(1910, 139, 1, 4),
(1911, 139, 1, 4),
(1912, 139, 1, 4),
(1913, 139, 1, 4),
(1914, 139, 1, 4),
(1915, 139, 1, 4),
(1916, 139, 1, 4),
(1917, 139, 1, 4),
(1918, 139, 1, 4),
(1919, 139, 1, 4),
(1920, 139, 1, 4),
(1921, 139, 1, 4),
(1922, 139, 1, 4),
(1923, 139, 1, 4),
(1924, 139, 1, 4),
(1925, 139, 1, 4),
(1926, 139, 1, 4),
(1927, 139, 1, 4),
(1928, 139, 1, 4),
(1929, 139, 1, 4),
(1930, 139, 1, 4),
(1931, 139, 1, 4),
(1932, 139, 1, 4),
(1933, 139, 1, 4),
(1934, 139, 1, 4),
(1935, 139, 1, 4),
(1936, 139, 1, 4),
(1937, 139, 1, 4),
(1938, 139, 1, 4),
(1939, 139, 1, 4),
(1940, 139, 1, 4),
(1941, 139, 1, 4),
(1942, 139, 1, 4),
(1943, 139, 1, 4),
(1944, 139, 1, 4),
(1945, 139, 1, 4),
(1946, 139, 1, 4),
(1947, 139, 1, 4),
(1948, 139, 1, 4),
(1949, 139, 1, 4),
(1950, 139, 1, 4),
(1951, 139, 1, 4),
(1952, 139, 1, 4),
(1953, 139, 1, 4),
(1954, 139, 1, 4),
(1955, 139, 1, 4),
(1956, 139, 1, 4),
(1957, 139, 1, 4),
(1958, 139, 1, 4),
(1959, 139, 1, 4),
(1960, 139, 1, 4),
(1961, 139, 1, 4),
(1962, 139, 1, 4),
(1963, 139, 1, 4),
(1964, 139, 1, 4),
(1965, 139, 1, 4),
(1966, 139, 1, 4),
(1967, 139, 1, 4),
(1968, 139, 1, 4),
(1969, 139, 1, 4),
(1970, 139, 1, 4),
(1971, 139, 1, 4),
(1972, 139, 1, 4),
(1973, 139, 1, 4),
(1974, 139, 1, 4),
(1975, 139, 1, 4),
(1976, 139, 1, 4),
(1977, 139, 1, 4),
(1978, 139, 1, 4),
(1979, 139, 1, 4),
(1980, 139, 1, 4),
(1981, 139, 1, 4),
(1982, 139, 1, 4),
(1983, 139, 1, 4),
(1984, 139, 1, 4),
(1985, 139, 1, 4),
(1986, 139, 1, 4),
(1987, 139, 1, 4),
(1988, 139, 1, 4),
(1989, 139, 1, 4),
(1990, 139, 1, 4),
(1991, 139, 1, 4),
(1992, 139, 1, 4),
(1993, 139, 1, 4),
(1994, 139, 1, 4),
(1995, 139, 1, 4),
(1996, 139, 1, 4),
(1997, 139, 1, 4),
(1998, 139, 1, 4),
(1999, 139, 1, 4),
(2000, 139, 1, 4),
(2001, 139, 1, 4),
(2002, 139, 1, 4),
(2003, 139, 1, 4),
(2004, 139, 1, 4),
(2005, 139, 1, 4),
(2006, 139, 1, 4),
(2007, 139, 1, 4),
(2008, 139, 1, 4),
(2009, 139, 1, 4),
(2010, 139, 1, 4),
(2011, 139, 1, 4),
(2012, 139, 1, 4),
(2013, 139, 1, 4),
(2014, 139, 1, 4),
(2015, 139, 1, 4),
(2016, 139, 1, 4),
(2017, 139, 1, 4),
(2018, 139, 1, 4),
(2019, 139, 1, 4),
(2020, 139, 1, 4),
(2021, 139, 1, 4),
(2022, 139, 1, 4),
(2023, 139, 1, 4),
(2024, 139, 1, 4),
(2025, 139, 1, 4),
(2026, 139, 1, 4),
(2027, 139, 1, 4),
(2028, 139, 1, 4),
(2029, 139, 1, 4),
(2030, 139, 1, 4),
(2031, 139, 1, 4),
(2032, 139, 1, 4),
(2033, 139, 1, 4),
(2034, 139, 1, 4),
(2035, 139, 1, 4),
(2036, 139, 1, 4),
(2037, 139, 1, 4),
(2038, 139, 1, 4),
(2039, 139, 1, 4),
(2040, 139, 1, 4),
(2041, 139, 1, 4),
(2042, 139, 1, 4),
(2043, 139, 1, 4),
(2044, 139, 1, 4),
(2045, 139, 1, 4),
(2046, 139, 1, 4),
(2047, 139, 1, 4),
(2048, 139, 1, 4),
(2049, 139, 1, 4),
(2050, 139, 1, 4),
(2051, 139, 1, 4),
(2052, 139, 1, 4),
(2053, 139, 1, 4),
(2054, 139, 1, 4),
(2055, 139, 1, 4),
(2056, 139, 1, 4),
(2057, 139, 1, 4),
(2058, 139, 1, 4),
(2059, 139, 1, 4),
(2060, 139, 1, 4),
(2061, 139, 1, 4),
(2062, 139, 1, 4),
(2063, 139, 1, 4),
(2064, 139, 1, 4),
(2065, 139, 1, 4),
(2066, 139, 1, 4),
(2067, 139, 1, 4),
(2068, 139, 1, 4),
(2069, 139, 1, 4),
(2070, 139, 1, 4),
(2071, 139, 1, 4),
(2072, 139, 1, 4),
(2073, 139, 1, 4),
(2074, 139, 1, 4),
(2075, 139, 1, 4),
(2076, 139, 1, 4),
(2077, 139, 1, 4),
(2078, 139, 1, 4),
(2079, 139, 1, 4),
(2080, 139, 1, 4),
(2081, 139, 1, 4),
(2082, 139, 1, 4),
(2083, 139, 1, 4),
(2084, 139, 1, 4),
(2085, 139, 1, 4),
(2086, 139, 1, 4),
(2087, 139, 1, 4),
(2088, 139, 1, 4),
(2089, 139, 1, 4),
(2090, 139, 1, 4),
(2091, 139, 1, 4),
(2092, 139, 1, 4),
(2093, 139, 1, 4),
(2094, 139, 1, 4),
(2095, 139, 1, 4),
(2096, 139, 1, 4),
(2097, 139, 1, 4),
(2098, 139, 1, 4),
(2099, 139, 1, 4),
(2100, 139, 1, 4),
(2101, 139, 1, 4),
(2102, 139, 1, 4),
(2103, 139, 1, 4),
(2104, 139, 1, 4),
(2105, 139, 1, 4),
(2106, 139, 1, 4),
(2107, 139, 1, 4),
(2108, 139, 1, 4),
(2109, 139, 1, 4),
(2110, 139, 1, 4),
(2111, 139, 1, 4),
(2112, 139, 1, 4),
(2113, 139, 1, 4),
(2114, 139, 1, 4),
(2115, 139, 1, 4),
(2116, 139, 1, 4),
(2117, 139, 1, 4),
(2118, 139, 1, 4),
(2119, 139, 1, 4),
(2120, 139, 1, 4),
(2121, 139, 1, 4),
(2122, 139, 1, 4),
(2123, 139, 1, 4),
(2124, 139, 1, 4),
(2125, 139, 1, 4),
(2126, 139, 1, 4),
(2127, 139, 1, 4),
(2128, 139, 1, 4),
(2129, 139, 1, 4),
(2130, 139, 1, 4),
(2131, 139, 1, 4),
(2132, 139, 1, 4),
(2133, 139, 1, 4),
(2134, 139, 1, 4),
(2135, 139, 1, 4),
(2136, 139, 1, 4),
(2137, 139, 1, 4),
(2138, 139, 1, 4),
(2139, 139, 1, 4),
(2140, 139, 1, 4),
(2141, 139, 1, 4),
(2142, 139, 1, 4),
(2143, 139, 1, 4),
(2144, 139, 1, 4),
(2145, 139, 1, 4),
(2146, 139, 1, 4),
(2147, 139, 1, 4),
(2148, 139, 1, 4),
(2149, 139, 1, 4),
(2150, 139, 1, 4),
(2151, 139, 1, 4),
(2152, 139, 1, 4),
(2153, 139, 1, 4),
(2154, 139, 1, 4),
(2155, 139, 1, 4),
(2156, 139, 1, 4),
(2157, 139, 1, 4),
(2158, 139, 1, 4),
(2159, 139, 1, 4),
(2160, 139, 1, 4),
(2161, 139, 1, 4),
(2162, 139, 1, 4),
(2163, 139, 1, 4),
(2164, 139, 1, 4),
(2165, 139, 1, 4),
(2166, 139, 1, 4),
(2167, 139, 1, 4),
(2168, 139, 1, 4),
(2169, 139, 1, 4),
(2170, 139, 1, 4),
(2171, 139, 1, 4),
(2172, 139, 1, 4),
(2173, 139, 1, 4),
(2174, 139, 1, 4),
(2175, 139, 1, 4),
(2176, 139, 1, 4),
(2177, 139, 1, 4),
(2178, 139, 1, 4),
(2179, 139, 1, 4),
(2180, 139, 1, 4),
(2181, 139, 1, 4),
(2182, 139, 1, 4),
(2183, 139, 1, 4),
(2184, 139, 1, 4),
(2185, 139, 1, 4),
(2186, 139, 1, 4),
(2187, 139, 1, 4),
(2188, 139, 1, 4),
(2189, 139, 1, 4),
(2190, 139, 1, 4),
(2191, 139, 1, 4),
(2192, 139, 1, 4),
(2193, 139, 1, 4),
(2194, 139, 1, 4),
(2195, 139, 1, 4),
(2196, 139, 1, 4),
(2197, 139, 1, 4),
(2198, 139, 1, 4),
(2199, 139, 1, 4),
(2200, 139, 1, 4),
(2201, 139, 1, 4),
(2202, 139, 1, 4),
(2203, 139, 1, 4),
(2204, 139, 1, 4),
(2205, 139, 1, 4),
(2206, 139, 1, 4),
(2207, 139, 1, 4),
(2208, 139, 1, 4),
(2209, 139, 1, 4),
(2210, 139, 1, 4),
(2211, 139, 1, 4),
(2212, 139, 1, 4),
(2213, 139, 1, 4),
(2214, 139, 1, 4),
(2215, 139, 1, 4),
(2216, 139, 1, 4),
(2217, 139, 1, 4),
(2218, 139, 1, 4),
(2219, 139, 1, 4),
(2220, 139, 1, 4),
(2221, 139, 1, 4),
(2222, 139, 1, 4),
(2223, 139, 1, 4),
(2224, 139, 1, 4),
(2225, 139, 1, 4),
(2226, 139, 1, 4),
(2227, 139, 1, 4),
(2228, 139, 1, 4),
(2229, 139, 1, 4),
(2230, 139, 1, 4),
(2231, 139, 1, 4),
(2232, 139, 1, 4),
(2233, 139, 1, 4),
(2234, 139, 1, 4),
(2235, 139, 1, 4),
(2236, 139, 1, 4),
(2237, 139, 1, 4),
(2238, 139, 1, 4),
(2239, 139, 1, 4),
(2240, 139, 1, 4),
(2241, 139, 1, 4),
(2242, 139, 1, 4),
(2243, 139, 1, 4),
(2244, 139, 1, 4),
(2245, 139, 1, 4),
(2246, 139, 1, 4),
(2247, 139, 1, 4),
(2248, 139, 1, 4),
(2249, 139, 1, 4),
(2250, 139, 1, 4),
(2251, 139, 1, 4),
(2252, 139, 1, 4),
(2253, 139, 1, 4),
(2254, 139, 1, 4),
(2255, 139, 1, 4),
(2256, 139, 1, 4),
(2257, 139, 1, 4),
(2258, 139, 1, 4),
(2259, 139, 1, 4),
(2260, 139, 1, 4),
(2261, 139, 1, 4),
(2262, 139, 1, 4),
(2263, 139, 1, 4),
(2264, 139, 1, 4),
(2265, 139, 1, 4),
(2266, 139, 1, 4),
(2267, 139, 1, 4),
(2268, 139, 1, 4),
(2269, 139, 1, 4),
(2270, 139, 1, 4),
(2271, 139, 1, 4),
(2272, 139, 1, 4),
(2273, 139, 1, 4),
(2274, 139, 1, 4),
(2275, 139, 1, 4),
(2276, 139, 1, 4),
(2277, 139, 1, 4),
(2278, 139, 1, 4),
(2279, 139, 1, 4),
(2280, 139, 1, 4),
(2281, 139, 1, 4),
(2282, 139, 1, 4),
(2283, 139, 1, 4),
(2284, 139, 1, 4),
(2285, 139, 1, 4),
(2286, 139, 1, 4),
(2287, 139, 1, 4),
(2288, 139, 1, 4),
(2289, 139, 1, 4),
(2290, 139, 1, 4),
(2291, 139, 1, 4),
(2292, 139, 1, 4),
(2293, 139, 1, 4),
(2294, 139, 1, 4),
(2295, 139, 1, 4),
(2296, 139, 1, 4),
(2297, 139, 1, 4),
(2298, 139, 1, 4),
(2299, 139, 1, 4),
(2300, 139, 1, 4),
(2301, 139, 1, 4),
(2302, 139, 1, 4),
(2303, 139, 1, 4),
(2304, 139, 1, 4),
(2305, 139, 1, 4),
(2306, 139, 1, 4),
(2307, 139, 1, 4),
(2308, 139, 1, 4),
(2309, 139, 1, 4),
(2310, 139, 1, 4),
(2311, 139, 1, 4),
(2312, 139, 1, 4),
(2313, 139, 1, 4),
(2314, 139, 1, 4),
(2315, 139, 1, 4),
(2316, 139, 1, 4),
(2317, 139, 1, 4),
(2318, 139, 1, 4),
(2319, 139, 1, 4),
(2320, 139, 1, 4),
(2321, 139, 1, 4),
(2322, 139, 1, 4),
(2323, 139, 1, 4),
(2324, 139, 1, 4),
(2325, 139, 1, 4),
(2326, 139, 1, 4),
(2327, 139, 1, 4),
(2328, 139, 1, 4),
(2329, 139, 1, 4),
(2330, 139, 1, 4),
(2331, 139, 1, 4),
(2332, 139, 1, 4),
(2333, 139, 1, 4),
(2334, 139, 1, 4),
(2335, 139, 1, 4),
(2336, 139, 1, 4),
(2337, 139, 1, 4),
(2338, 139, 1, 4),
(2339, 139, 1, 4),
(2340, 139, 1, 4),
(2341, 139, 1, 4),
(2342, 139, 1, 4),
(2343, 139, 1, 4),
(2344, 139, 1, 4),
(2345, 139, 1, 4),
(2346, 139, 1, 4),
(2347, 139, 1, 4),
(2348, 139, 1, 4),
(2349, 139, 1, 4),
(2350, 139, 1, 4),
(2351, 139, 1, 4),
(2352, 139, 1, 4),
(2353, 139, 1, 4),
(2354, 139, 1, 4),
(2355, 139, 1, 4),
(2356, 139, 1, 4),
(2357, 139, 1, 4),
(2358, 139, 1, 4),
(2359, 139, 1, 4),
(2360, 139, 1, 4),
(2361, 139, 1, 4),
(2362, 139, 1, 4),
(2363, 139, 1, 4),
(2364, 139, 1, 4),
(2365, 139, 1, 4),
(2366, 139, 1, 4),
(2367, 139, 1, 4),
(2368, 139, 1, 4),
(2369, 139, 1, 4),
(2370, 139, 1, 4),
(2371, 139, 1, 4),
(2372, 139, 1, 4),
(2373, 139, 1, 4),
(2374, 139, 1, 4),
(2375, 139, 1, 4),
(2376, 139, 1, 4),
(2377, 139, 1, 4),
(2378, 139, 1, 4),
(2379, 139, 1, 4),
(2380, 139, 1, 4),
(2381, 139, 1, 4),
(2382, 139, 1, 4),
(2383, 139, 1, 4),
(2384, 139, 1, 4),
(2385, 139, 1, 4),
(2386, 139, 1, 4),
(2387, 139, 1, 4),
(2388, 139, 1, 4),
(2389, 139, 1, 4),
(2390, 139, 1, 4),
(2391, 139, 1, 4),
(2392, 139, 1, 4),
(2393, 139, 1, 4),
(2394, 139, 1, 4),
(2395, 139, 1, 4),
(2396, 139, 1, 4),
(2397, 139, 1, 4),
(2398, 139, 1, 4),
(2399, 139, 1, 4),
(2400, 139, 1, 4),
(2401, 139, 1, 4),
(2402, 139, 1, 4),
(2403, 139, 1, 4),
(2404, 139, 1, 4),
(2405, 139, 1, 4),
(2406, 139, 1, 4),
(2407, 139, 1, 4),
(2408, 139, 1, 4),
(2409, 139, 1, 4),
(2410, 139, 1, 4),
(2411, 139, 1, 4),
(2412, 139, 1, 4),
(2413, 139, 1, 4),
(2414, 139, 1, 4),
(2415, 139, 1, 4),
(2416, 139, 1, 4),
(2417, 139, 1, 4),
(2418, 139, 1, 4),
(2419, 139, 1, 4),
(2420, 139, 1, 4),
(2421, 139, 1, 4),
(2422, 139, 1, 4),
(2423, 139, 1, 4),
(2424, 139, 1, 4),
(2425, 139, 1, 4),
(2426, 139, 1, 4),
(2427, 139, 1, 4),
(2428, 139, 1, 4),
(2429, 139, 1, 4),
(2430, 139, 1, 4),
(2431, 139, 1, 4),
(2432, 139, 1, 4),
(2433, 139, 1, 4),
(2434, 139, 1, 4),
(2435, 139, 1, 4),
(2436, 139, 1, 4),
(2437, 139, 1, 4),
(2438, 139, 1, 4),
(2439, 139, 1, 4),
(2440, 139, 1, 4),
(2441, 139, 1, 4),
(2442, 139, 1, 4),
(2443, 139, 1, 4),
(2444, 139, 1, 4),
(2445, 139, 1, 4),
(2446, 139, 1, 4),
(2447, 139, 1, 4),
(2448, 139, 1, 4),
(2449, 139, 1, 4),
(2450, 139, 1, 4),
(2451, 139, 1, 4),
(2452, 139, 1, 4),
(2453, 139, 1, 4),
(2454, 139, 1, 4),
(2455, 139, 1, 4),
(2456, 139, 1, 4),
(2457, 139, 1, 4),
(2458, 139, 1, 4),
(2459, 139, 1, 4),
(2460, 139, 1, 4),
(2461, 139, 1, 4),
(2462, 139, 1, 4),
(2463, 139, 1, 4),
(2464, 139, 1, 4),
(2465, 139, 1, 4),
(2466, 139, 1, 4),
(2467, 139, 1, 4),
(2468, 139, 1, 4),
(2469, 139, 1, 4),
(2470, 139, 1, 4),
(2471, 139, 1, 4),
(2472, 139, 1, 4),
(2473, 139, 1, 4),
(2474, 139, 1, 4),
(2475, 139, 1, 4),
(2476, 139, 1, 4),
(2477, 139, 1, 4),
(2478, 139, 1, 4),
(2479, 139, 1, 4),
(2480, 139, 1, 4),
(2481, 139, 1, 4),
(2482, 139, 1, 4),
(2483, 139, 1, 4),
(2484, 139, 1, 4),
(2485, 139, 1, 4),
(2486, 139, 1, 4),
(2487, 139, 1, 4),
(2488, 139, 1, 4),
(2489, 139, 1, 4),
(2490, 139, 1, 4),
(2491, 139, 1, 4),
(2492, 139, 1, 4),
(2493, 139, 1, 4),
(2494, 139, 1, 4),
(2495, 139, 1, 4),
(2496, 139, 1, 4),
(2497, 139, 1, 4),
(2498, 139, 1, 4),
(2499, 139, 1, 4),
(2500, 139, 1, 4),
(2501, 139, 1, 4),
(2502, 139, 1, 4),
(2503, 139, 1, 4),
(2504, 139, 1, 4),
(2505, 139, 1, 4),
(2506, 139, 1, 4),
(2507, 139, 1, 4),
(2508, 139, 1, 4),
(2509, 139, 1, 4),
(2510, 139, 1, 4),
(2511, 139, 1, 4),
(2512, 139, 1, 4),
(2513, 139, 1, 4),
(2514, 139, 1, 4),
(2515, 139, 1, 4),
(2516, 139, 1, 4),
(2517, 139, 1, 4),
(2518, 139, 1, 4),
(2519, 139, 1, 4),
(2520, 139, 1, 4),
(2521, 139, 1, 4),
(2522, 139, 1, 4),
(2523, 139, 1, 4),
(2524, 139, 1, 4),
(2525, 139, 1, 4),
(2526, 139, 1, 4),
(2527, 139, 1, 4),
(2528, 139, 1, 4),
(2529, 139, 1, 4),
(2530, 139, 1, 4),
(2531, 139, 1, 4),
(2532, 139, 1, 4),
(2533, 139, 1, 4),
(2534, 139, 1, 4),
(2535, 139, 1, 4),
(2536, 139, 1, 4),
(2537, 139, 1, 4),
(2538, 139, 1, 4),
(2539, 139, 1, 4),
(2540, 139, 1, 4),
(2541, 139, 1, 4),
(2542, 139, 1, 4),
(2543, 139, 1, 4),
(2544, 139, 1, 4),
(2545, 139, 1, 4),
(2546, 139, 1, 4),
(2547, 139, 1, 4),
(2548, 139, 1, 4),
(2549, 139, 1, 4),
(2550, 139, 1, 4),
(2551, 139, 1, 4),
(2552, 139, 1, 4),
(2553, 139, 1, 4),
(2554, 139, 1, 4),
(2555, 139, 1, 4),
(2556, 139, 1, 4),
(2557, 139, 1, 4),
(2558, 139, 1, 4),
(2559, 139, 1, 4),
(2560, 139, 1, 4),
(2561, 139, 1, 4),
(2562, 139, 1, 4),
(2563, 139, 1, 4),
(2564, 139, 1, 4),
(2565, 139, 1, 4),
(2566, 139, 1, 4),
(2567, 139, 1, 4),
(2568, 139, 1, 4),
(2569, 139, 1, 4),
(2570, 139, 1, 4),
(2571, 139, 1, 4),
(2572, 139, 1, 4),
(2573, 139, 1, 4),
(2574, 139, 1, 4),
(2575, 139, 1, 4),
(2576, 139, 1, 4),
(2577, 139, 1, 4),
(2578, 139, 1, 4),
(2579, 139, 1, 4),
(2580, 139, 1, 4),
(2581, 139, 1, 4),
(2582, 139, 1, 4),
(2583, 139, 1, 4),
(2584, 139, 1, 4),
(2585, 139, 1, 4),
(2586, 139, 1, 4),
(2587, 139, 1, 4),
(2588, 139, 1, 4),
(2589, 139, 1, 4),
(2590, 139, 1, 4),
(2591, 139, 1, 4),
(2592, 139, 1, 4),
(2593, 139, 1, 4),
(2594, 139, 1, 4),
(2595, 139, 1, 4),
(2596, 139, 1, 4),
(2597, 139, 1, 4),
(2598, 139, 1, 4),
(2599, 139, 1, 4),
(2600, 139, 1, 4),
(2601, 139, 1, 4),
(2602, 139, 1, 4),
(2603, 139, 1, 4),
(2604, 139, 1, 4),
(2605, 139, 1, 4),
(2606, 139, 1, 4),
(2607, 139, 1, 4),
(2608, 139, 1, 4),
(2609, 139, 1, 4),
(2610, 139, 1, 4),
(2611, 139, 1, 4),
(2612, 139, 1, 4),
(2613, 139, 1, 4),
(2614, 139, 1, 4),
(2615, 139, 1, 4),
(2616, 139, 1, 4),
(2617, 139, 1, 4),
(2618, 139, 1, 4),
(2619, 139, 1, 4),
(2620, 139, 1, 4),
(2621, 139, 1, 4),
(2622, 139, 1, 4),
(2623, 139, 1, 4),
(2624, 139, 1, 4),
(2625, 139, 1, 4),
(2626, 139, 1, 4),
(2627, 139, 1, 4),
(2628, 139, 1, 4),
(2629, 139, 1, 4),
(2630, 139, 1, 4),
(2631, 139, 1, 4),
(2632, 139, 1, 4),
(2633, 139, 1, 4),
(2634, 139, 1, 4),
(2635, 139, 1, 4),
(2636, 139, 1, 4),
(2637, 139, 1, 4),
(2638, 139, 1, 4),
(2639, 139, 1, 4),
(2640, 139, 1, 4),
(2641, 139, 1, 4),
(2642, 139, 1, 4),
(2643, 139, 1, 4),
(2644, 139, 1, 4),
(2645, 139, 1, 4),
(2646, 139, 1, 4),
(2647, 139, 1, 4),
(2648, 139, 1, 4),
(2649, 139, 1, 4),
(2650, 139, 1, 4),
(2651, 139, 1, 4),
(2652, 139, 1, 4),
(2653, 139, 1, 4),
(2654, 139, 1, 4),
(2655, 139, 1, 4),
(2656, 139, 1, 4),
(2657, 139, 1, 4),
(2658, 139, 1, 4),
(2659, 139, 1, 4),
(2660, 139, 1, 4),
(2661, 139, 1, 4),
(2662, 139, 1, 4),
(2663, 139, 1, 4),
(2664, 139, 1, 4),
(2665, 139, 1, 4),
(2666, 139, 1, 4),
(2667, 139, 1, 4),
(2668, 139, 1, 4),
(2669, 139, 1, 4),
(2670, 139, 1, 4),
(2671, 139, 1, 4),
(2672, 139, 1, 4),
(2673, 139, 1, 4),
(2674, 139, 1, 4),
(2675, 139, 1, 4),
(2676, 139, 1, 4),
(2677, 139, 1, 4),
(2678, 139, 1, 4),
(2679, 139, 1, 4),
(2680, 139, 1, 4),
(2681, 139, 1, 4),
(2682, 139, 1, 4),
(2683, 139, 1, 4),
(2684, 139, 1, 4),
(2685, 139, 1, 4),
(2686, 139, 1, 4),
(2687, 139, 1, 4),
(2688, 139, 1, 4),
(2689, 139, 1, 4),
(2690, 139, 1, 4),
(2691, 139, 1, 4),
(2692, 139, 1, 4),
(2693, 139, 1, 4),
(2694, 139, 1, 4),
(2695, 139, 1, 4),
(2696, 139, 1, 4),
(2697, 139, 1, 4),
(2698, 139, 1, 4),
(2699, 139, 1, 4),
(2700, 139, 1, 4),
(2701, 139, 1, 4),
(2702, 139, 1, 4),
(2703, 139, 1, 4),
(2704, 139, 1, 4),
(2705, 139, 1, 4),
(2706, 139, 1, 4),
(2707, 139, 1, 4),
(2708, 139, 1, 4),
(2709, 139, 1, 4),
(2710, 139, 1, 4),
(2711, 139, 1, 4),
(2712, 139, 1, 4),
(2713, 139, 1, 4),
(2714, 139, 1, 4),
(2715, 139, 1, 4),
(2716, 139, 1, 4),
(2717, 139, 1, 4),
(2718, 139, 1, 4),
(2719, 139, 1, 4),
(2720, 139, 1, 4),
(2721, 139, 1, 4),
(2722, 139, 1, 4),
(2723, 139, 1, 4),
(2724, 139, 1, 4),
(2725, 139, 1, 4),
(2726, 139, 1, 4),
(2727, 139, 1, 4),
(2728, 139, 1, 4),
(2729, 139, 1, 4),
(2730, 139, 1, 4),
(2731, 139, 1, 4),
(2732, 139, 1, 4),
(2733, 139, 1, 4),
(2734, 139, 1, 4),
(2735, 139, 1, 4),
(2736, 139, 1, 4),
(2737, 139, 1, 4),
(2738, 139, 1, 4),
(2739, 139, 1, 4),
(2740, 139, 1, 4),
(2741, 139, 1, 4),
(2742, 139, 1, 4),
(2743, 139, 1, 4),
(2744, 139, 1, 4),
(2745, 139, 1, 4),
(2746, 139, 1, 4),
(2747, 139, 1, 4),
(2748, 139, 1, 4),
(2749, 139, 1, 4),
(2750, 139, 1, 4),
(2751, 139, 1, 4),
(2752, 139, 1, 4),
(2753, 139, 1, 4),
(2754, 139, 1, 4),
(2755, 139, 1, 4),
(2756, 139, 1, 4),
(2757, 139, 1, 4),
(2758, 139, 1, 4),
(2759, 139, 1, 4),
(2760, 139, 1, 4),
(2761, 139, 1, 4),
(2762, 139, 1, 4),
(2763, 139, 1, 4),
(2764, 139, 1, 4),
(2765, 139, 1, 4),
(2766, 139, 1, 4),
(2767, 139, 1, 4),
(2768, 139, 1, 4),
(2769, 139, 1, 4),
(2770, 139, 1, 4),
(2771, 139, 1, 4),
(2772, 139, 1, 4),
(2773, 139, 1, 4),
(2774, 139, 1, 4),
(2775, 139, 1, 4),
(2776, 139, 1, 4),
(2777, 139, 1, 4),
(2778, 139, 1, 4),
(2779, 139, 1, 4),
(2780, 139, 1, 4),
(2781, 139, 1, 4),
(2782, 139, 1, 4),
(2783, 139, 1, 4),
(2784, 139, 1, 4),
(2785, 139, 1, 4),
(2786, 139, 1, 4),
(2787, 139, 1, 4),
(2788, 139, 1, 4),
(2789, 139, 1, 4),
(2790, 139, 1, 4),
(2791, 139, 1, 4),
(2792, 139, 1, 4),
(2793, 139, 1, 4),
(2794, 139, 1, 4),
(2795, 139, 1, 4),
(2796, 139, 1, 4),
(2797, 139, 1, 4),
(2798, 139, 1, 4),
(2799, 139, 1, 4),
(2800, 139, 1, 4),
(2801, 139, 1, 4),
(2802, 139, 1, 4),
(2803, 139, 1, 4),
(2804, 139, 1, 4),
(2805, 139, 1, 4),
(2806, 139, 1, 4),
(2807, 139, 1, 4),
(2808, 139, 1, 4),
(2809, 139, 1, 4),
(2810, 139, 1, 4),
(2811, 139, 1, 4),
(2812, 139, 1, 4),
(2813, 139, 1, 4),
(2814, 139, 1, 4),
(2815, 139, 1, 4),
(2816, 139, 1, 4),
(2817, 139, 1, 4),
(2818, 139, 1, 4),
(2819, 139, 1, 4),
(2820, 139, 1, 4),
(2821, 139, 1, 4),
(2822, 139, 1, 4),
(2823, 139, 1, 4),
(2824, 139, 1, 4),
(2825, 139, 1, 4),
(2826, 139, 1, 4),
(2827, 139, 1, 4),
(2828, 139, 1, 4),
(2829, 139, 1, 4),
(2830, 139, 1, 4),
(2831, 139, 1, 4),
(2832, 139, 1, 4),
(2833, 139, 1, 4),
(2834, 139, 1, 4),
(2835, 139, 1, 4),
(2836, 139, 1, 4),
(2837, 139, 1, 4),
(2838, 139, 1, 4),
(2839, 139, 1, 4),
(2840, 139, 1, 4),
(2841, 139, 1, 4),
(2842, 139, 1, 4),
(2843, 139, 1, 4),
(2844, 139, 1, 4),
(2845, 139, 1, 4),
(2846, 139, 1, 4),
(2847, 139, 1, 4),
(2848, 139, 1, 4),
(2849, 139, 1, 4),
(2850, 139, 1, 4),
(2851, 139, 1, 4),
(2852, 139, 1, 4),
(2853, 139, 1, 4),
(2854, 139, 1, 4),
(2855, 139, 1, 4),
(2856, 139, 1, 4),
(2857, 139, 1, 4),
(2858, 139, 1, 4),
(2859, 139, 1, 4),
(2860, 139, 1, 4),
(2861, 139, 1, 4),
(2862, 139, 1, 4),
(2863, 139, 1, 4),
(2864, 139, 1, 4),
(2865, 139, 1, 4),
(2866, 139, 1, 4),
(2867, 139, 1, 4),
(2868, 139, 1, 4),
(2869, 139, 1, 4),
(2870, 139, 1, 4),
(2871, 139, 1, 4),
(2872, 139, 1, 4),
(2873, 139, 1, 4),
(2874, 139, 1, 4),
(2875, 139, 1, 4),
(2876, 139, 1, 4),
(2877, 139, 1, 4),
(2878, 139, 1, 4),
(2879, 139, 1, 4),
(2880, 139, 1, 4),
(2881, 139, 1, 4),
(2882, 139, 1, 4),
(2883, 139, 1, 4),
(2884, 139, 1, 4),
(2885, 139, 1, 4),
(2886, 139, 1, 4),
(2887, 139, 1, 4),
(2888, 139, 1, 4),
(2889, 139, 1, 4),
(2890, 139, 1, 4),
(2891, 139, 1, 4),
(2892, 139, 1, 4),
(2893, 139, 1, 4),
(2894, 139, 1, 4),
(2895, 139, 1, 4),
(2896, 139, 1, 4),
(2897, 139, 1, 4),
(2898, 139, 1, 4),
(2899, 139, 1, 4),
(2900, 139, 1, 4),
(2901, 139, 1, 4),
(2902, 139, 1, 4),
(2903, 139, 1, 4),
(2904, 139, 1, 4),
(2905, 139, 1, 4),
(2906, 139, 1, 4),
(2907, 139, 1, 4),
(2908, 139, 1, 4),
(2909, 139, 1, 4),
(2910, 139, 1, 4),
(2911, 139, 1, 4),
(2912, 139, 1, 4),
(2913, 139, 1, 4),
(2914, 139, 1, 4),
(2915, 139, 1, 4),
(2916, 139, 1, 4),
(2917, 139, 1, 4),
(2918, 139, 1, 4),
(2919, 139, 1, 4),
(2920, 139, 1, 4),
(2921, 139, 1, 4),
(2922, 139, 1, 4),
(2923, 139, 1, 4),
(2924, 139, 1, 4),
(2925, 139, 1, 4),
(2926, 139, 1, 4),
(2927, 139, 1, 4),
(2928, 139, 1, 4),
(2929, 139, 1, 4),
(2930, 139, 1, 4),
(2931, 139, 1, 4),
(2932, 139, 1, 4),
(2933, 139, 1, 4),
(2934, 139, 1, 4),
(2935, 139, 1, 4),
(2936, 139, 1, 4),
(2937, 139, 1, 4),
(2938, 139, 1, 4),
(2939, 139, 1, 4),
(2940, 139, 1, 4),
(2941, 139, 1, 4),
(2942, 139, 1, 4),
(2943, 139, 1, 4),
(2944, 139, 1, 4),
(2945, 139, 1, 4),
(2946, 139, 1, 4),
(2947, 139, 1, 4),
(2948, 139, 1, 4),
(2949, 139, 1, 4),
(2950, 139, 1, 4),
(2951, 139, 1, 4),
(2952, 139, 1, 4),
(2953, 139, 1, 4),
(2954, 139, 1, 4),
(2955, 139, 1, 4),
(2956, 139, 1, 4),
(2957, 139, 1, 4),
(2958, 139, 1, 4),
(2959, 139, 1, 4),
(2960, 139, 1, 4),
(2961, 139, 1, 4),
(2962, 139, 1, 4),
(2963, 139, 1, 4),
(2964, 139, 1, 4),
(2965, 139, 1, 4),
(2966, 139, 1, 4),
(2967, 139, 1, 4),
(2968, 139, 1, 4),
(2969, 139, 1, 4),
(2970, 139, 1, 4),
(2971, 139, 1, 4),
(2972, 139, 1, 4),
(2973, 139, 1, 4),
(2974, 139, 1, 4),
(2975, 139, 1, 4),
(2976, 139, 1, 4),
(2977, 139, 1, 4),
(2978, 139, 1, 4),
(2979, 139, 1, 4),
(2980, 139, 1, 4),
(2981, 139, 1, 4),
(2982, 139, 1, 4),
(2983, 139, 1, 4),
(2984, 139, 1, 4),
(2985, 139, 1, 4),
(2986, 139, 1, 4),
(2987, 139, 1, 4),
(2988, 139, 1, 4),
(2989, 139, 1, 4),
(2990, 139, 1, 4),
(2991, 139, 1, 4),
(2992, 139, 1, 4),
(2993, 139, 1, 4),
(2994, 139, 1, 4),
(2995, 139, 1, 4),
(2996, 139, 1, 4),
(2997, 139, 1, 4),
(2998, 139, 1, 4),
(2999, 139, 1, 4),
(3000, 139, 1, 4),
(3001, 139, 1, 4),
(3002, 139, 1, 4),
(3003, 139, 1, 4),
(3004, 139, 1, 4),
(3005, 139, 1, 4),
(3006, 139, 1, 4),
(3007, 139, 1, 4),
(3008, 139, 1, 4),
(3009, 139, 1, 4),
(3010, 139, 1, 4),
(3011, 139, 1, 4),
(3012, 139, 1, 4),
(3013, 139, 1, 4),
(3014, 139, 1, 4),
(3015, 139, 1, 4),
(3016, 139, 1, 4),
(3017, 139, 1, 4),
(3018, 139, 1, 4),
(3019, 139, 1, 4),
(3020, 139, 1, 4),
(3021, 139, 1, 4),
(3022, 139, 1, 4),
(3023, 139, 1, 4),
(3024, 139, 1, 4),
(3025, 139, 1, 4),
(3026, 139, 1, 4),
(3027, 139, 1, 4),
(3028, 139, 1, 4),
(3029, 139, 1, 4),
(3030, 139, 1, 4),
(3031, 139, 1, 4),
(3032, 139, 1, 4),
(3033, 139, 1, 4),
(3034, 139, 1, 4),
(3035, 139, 1, 4),
(3036, 139, 1, 4),
(3037, 139, 1, 4),
(3038, 139, 1, 4),
(3039, 139, 1, 4),
(3040, 139, 1, 4),
(3041, 139, 1, 4),
(3042, 139, 1, 4),
(3043, 139, 1, 4),
(3044, 139, 1, 4),
(3045, 139, 1, 4),
(3046, 139, 1, 4),
(3047, 139, 1, 4),
(3048, 139, 1, 4),
(3049, 139, 1, 4),
(3050, 139, 1, 4),
(3051, 139, 1, 4),
(3052, 139, 1, 4),
(3053, 139, 1, 4),
(3054, 139, 1, 4),
(3055, 139, 1, 4),
(3056, 139, 1, 4),
(3057, 139, 1, 4),
(3058, 139, 1, 4),
(3059, 139, 1, 4),
(3060, 139, 1, 4),
(3061, 139, 1, 4),
(3062, 139, 1, 4),
(3063, 139, 1, 4),
(3064, 139, 1, 4),
(3065, 139, 1, 4),
(3066, 139, 1, 4),
(3067, 139, 1, 4),
(3068, 139, 1, 4),
(3069, 139, 1, 4),
(3070, 139, 1, 4),
(3071, 139, 1, 4),
(3072, 139, 1, 4),
(3073, 139, 1, 4),
(3074, 139, 1, 4),
(3075, 139, 1, 4),
(3076, 139, 1, 4),
(3077, 139, 1, 4),
(3078, 139, 1, 4),
(3079, 139, 1, 4),
(3080, 139, 1, 4),
(3081, 139, 1, 4),
(3082, 139, 1, 4),
(3083, 139, 1, 4),
(3084, 139, 1, 4),
(3085, 139, 1, 4),
(3086, 139, 1, 4),
(3087, 139, 1, 4),
(3088, 139, 1, 4),
(3089, 139, 1, 4),
(3090, 139, 1, 4),
(3091, 139, 1, 4),
(3092, 139, 1, 4),
(3093, 139, 1, 4),
(3094, 139, 1, 4),
(3095, 139, 1, 4),
(3096, 139, 1, 4),
(3097, 139, 1, 4),
(3098, 139, 1, 4),
(3099, 139, 1, 4),
(3100, 139, 1, 4),
(3101, 139, 1, 4),
(3102, 139, 1, 4),
(3103, 139, 1, 4),
(3104, 139, 1, 4),
(3105, 139, 1, 4),
(3106, 139, 1, 4),
(3107, 139, 1, 4),
(3108, 139, 1, 4),
(3109, 139, 1, 4),
(3110, 139, 1, 4),
(3111, 139, 1, 4),
(3112, 139, 1, 4),
(3113, 139, 1, 4),
(3114, 139, 1, 4);
INSERT INTO `detail_hasil` (`id_detail_hasil`, `id_hasil`, `id_pernyataan`, `nilai`) VALUES
(3115, 139, 1, 4),
(3116, 139, 1, 4),
(3117, 139, 1, 4),
(3118, 139, 1, 4),
(3119, 139, 1, 4),
(3120, 139, 1, 4),
(3121, 139, 1, 4),
(3122, 139, 1, 4),
(3123, 139, 1, 4),
(3124, 139, 1, 4),
(3125, 139, 1, 4),
(3126, 139, 1, 4),
(3127, 139, 1, 4),
(3128, 139, 1, 4),
(3129, 139, 1, 4),
(3130, 139, 1, 4),
(3131, 139, 1, 4),
(3132, 139, 1, 4),
(3133, 139, 1, 4),
(3134, 139, 1, 4),
(3135, 139, 1, 4),
(3136, 139, 1, 4),
(3137, 139, 1, 4),
(3138, 139, 1, 4),
(3139, 139, 1, 4),
(3140, 139, 1, 4),
(3141, 139, 1, 4),
(3142, 139, 1, 4),
(3143, 139, 1, 4),
(3144, 139, 1, 4),
(3145, 139, 1, 4),
(3146, 139, 1, 4),
(3147, 139, 1, 4),
(3148, 139, 1, 4),
(3149, 139, 1, 4),
(3150, 139, 1, 4),
(3151, 139, 1, 4),
(3152, 139, 1, 4),
(3153, 139, 1, 4),
(3154, 139, 1, 4),
(3155, 139, 1, 4),
(3156, 139, 1, 4),
(3157, 139, 1, 4),
(3158, 139, 1, 4),
(3159, 139, 1, 4),
(3160, 139, 1, 4),
(3161, 139, 1, 4),
(3162, 139, 1, 4),
(3163, 139, 1, 4),
(3164, 139, 1, 4),
(3165, 139, 1, 4),
(3166, 139, 1, 4),
(3167, 139, 1, 4),
(3168, 139, 1, 4),
(3169, 139, 1, 4),
(3170, 139, 1, 4),
(3171, 139, 1, 4),
(3172, 139, 1, 4),
(3173, 139, 1, 4),
(3174, 139, 1, 4),
(3175, 139, 1, 4),
(3176, 139, 1, 4),
(3177, 139, 1, 4),
(3178, 139, 1, 4),
(3179, 139, 1, 4),
(3180, 139, 1, 4),
(3181, 139, 1, 4),
(3182, 139, 1, 4),
(3183, 139, 1, 4),
(3184, 139, 1, 4),
(3185, 139, 1, 4),
(3186, 139, 1, 4),
(3187, 139, 1, 4),
(3188, 139, 1, 4),
(3189, 139, 1, 4),
(3190, 139, 1, 4),
(3191, 139, 1, 4),
(3192, 139, 1, 4),
(3193, 139, 1, 4),
(3194, 139, 1, 4),
(3195, 139, 1, 4),
(3196, 139, 1, 4),
(3197, 139, 1, 4),
(3198, 139, 1, 4),
(3199, 139, 1, 4),
(3200, 139, 1, 4),
(3201, 139, 1, 4),
(3202, 139, 1, 4),
(3203, 139, 1, 4),
(3204, 139, 1, 4),
(3205, 139, 1, 4),
(3206, 139, 1, 4),
(3207, 139, 1, 4),
(3208, 139, 1, 4),
(3209, 139, 1, 4),
(3210, 139, 1, 4),
(3211, 139, 1, 4),
(3212, 139, 1, 4),
(3213, 139, 1, 4),
(3214, 139, 1, 4),
(3215, 139, 1, 4),
(3216, 139, 1, 4),
(3217, 139, 1, 4),
(3218, 139, 1, 4),
(3219, 139, 1, 4),
(3220, 139, 1, 4),
(3221, 139, 1, 4),
(3222, 139, 1, 4),
(3223, 139, 1, 4),
(3224, 139, 1, 4),
(3225, 139, 1, 4),
(3226, 139, 1, 4),
(3227, 139, 1, 4),
(3228, 139, 1, 4),
(3229, 139, 1, 4),
(3230, 139, 1, 4),
(3231, 139, 1, 4),
(3232, 139, 1, 4),
(3233, 139, 1, 4),
(3234, 139, 1, 4),
(3235, 139, 1, 4),
(3236, 139, 1, 4),
(3237, 139, 1, 4),
(3238, 139, 1, 4),
(3239, 139, 1, 4),
(3240, 139, 1, 4),
(3241, 139, 1, 4),
(3242, 139, 1, 4),
(3243, 139, 1, 4),
(3244, 139, 1, 4),
(3245, 139, 1, 4),
(3246, 139, 1, 4),
(3247, 139, 1, 4),
(3248, 139, 1, 4),
(3249, 139, 1, 4),
(3250, 139, 1, 4),
(3251, 139, 1, 4),
(3252, 139, 1, 4),
(3253, 139, 1, 4),
(3254, 139, 1, 4),
(3255, 139, 1, 4),
(3256, 139, 1, 4),
(3257, 139, 1, 4),
(3258, 139, 1, 4),
(3259, 139, 1, 4),
(3260, 139, 1, 4),
(3261, 139, 1, 4),
(3262, 139, 1, 4),
(3263, 139, 1, 4),
(3264, 139, 1, 4),
(3265, 139, 1, 4),
(3266, 139, 1, 4),
(3267, 139, 1, 4),
(3268, 139, 1, 4),
(3269, 139, 1, 4),
(3270, 139, 1, 4),
(3271, 139, 1, 4),
(3272, 139, 1, 4),
(3273, 139, 1, 4),
(3274, 139, 1, 4),
(3275, 139, 1, 4),
(3276, 139, 1, 4),
(3277, 139, 1, 4),
(3278, 139, 1, 4),
(3279, 139, 1, 4),
(3280, 139, 1, 4),
(3281, 139, 1, 4),
(3282, 139, 1, 4),
(3283, 139, 1, 4),
(3284, 139, 1, 4),
(3285, 139, 1, 4),
(3286, 139, 1, 4),
(3287, 139, 1, 4),
(3288, 139, 1, 4),
(3289, 139, 1, 4),
(3290, 139, 1, 4),
(3291, 139, 1, 4),
(3292, 139, 1, 4),
(3293, 139, 1, 4),
(3294, 139, 1, 4),
(3295, 139, 1, 4),
(3296, 139, 1, 4),
(3297, 139, 1, 4),
(3298, 139, 1, 4),
(3299, 139, 1, 4),
(3300, 139, 1, 4),
(3301, 139, 1, 4),
(3302, 139, 1, 4),
(3303, 139, 1, 4),
(3304, 139, 1, 4),
(3305, 139, 1, 4),
(3306, 139, 1, 4),
(3307, 139, 1, 4),
(3308, 139, 1, 4),
(3309, 139, 1, 4),
(3310, 139, 1, 4),
(3311, 139, 1, 4),
(3312, 139, 1, 4),
(3313, 139, 1, 4),
(3314, 139, 1, 4),
(3315, 139, 1, 4),
(3316, 139, 1, 4),
(3317, 139, 1, 4),
(3318, 139, 1, 4),
(3319, 139, 1, 4),
(3320, 139, 1, 4),
(3321, 139, 1, 4),
(3322, 139, 1, 4),
(3323, 139, 1, 4),
(3324, 139, 1, 4),
(3325, 139, 1, 4),
(3326, 139, 1, 4),
(3327, 139, 1, 4),
(3328, 139, 1, 4),
(3329, 139, 1, 4),
(3330, 139, 1, 4),
(3331, 139, 1, 4),
(3332, 139, 1, 4),
(3333, 139, 1, 4),
(3334, 139, 1, 4),
(3335, 139, 1, 4),
(3336, 139, 1, 4),
(3337, 139, 1, 4),
(3338, 139, 1, 4),
(3339, 139, 1, 4),
(3340, 139, 1, 4),
(3341, 139, 1, 4),
(3342, 139, 1, 4),
(3343, 139, 1, 4),
(3344, 139, 1, 4),
(3345, 139, 1, 4),
(3346, 139, 1, 4),
(3347, 139, 1, 4),
(3348, 139, 1, 4),
(3349, 139, 1, 4),
(3350, 139, 1, 4),
(3351, 139, 1, 4),
(3352, 139, 1, 4),
(3353, 139, 1, 4),
(3354, 139, 1, 4),
(3355, 139, 1, 4),
(3356, 139, 1, 4),
(3357, 139, 1, 4),
(3358, 139, 1, 4),
(3359, 139, 1, 4),
(3360, 139, 1, 4),
(3361, 139, 1, 4),
(3362, 139, 1, 4),
(3363, 139, 1, 4),
(3364, 139, 1, 4),
(3365, 139, 1, 4),
(3366, 139, 1, 4),
(3367, 139, 1, 4),
(3368, 139, 1, 4),
(3369, 139, 1, 4),
(3370, 139, 1, 4),
(3371, 139, 1, 4),
(3372, 139, 1, 4),
(3373, 139, 1, 4),
(3374, 139, 1, 4),
(3375, 139, 1, 4),
(3376, 139, 1, 4),
(3377, 139, 1, 4),
(3378, 139, 1, 4),
(3379, 139, 1, 4),
(3380, 139, 1, 4),
(3381, 139, 1, 4),
(3382, 139, 1, 4),
(3383, 139, 1, 4),
(3384, 139, 1, 4),
(3385, 139, 1, 4),
(3386, 139, 1, 4),
(3387, 139, 1, 4),
(3388, 139, 1, 4),
(3389, 139, 1, 4),
(3390, 139, 1, 4),
(3391, 139, 1, 4),
(3392, 139, 1, 4),
(3393, 139, 1, 4),
(3394, 139, 1, 4),
(3395, 139, 1, 4),
(3396, 139, 1, 4),
(3397, 139, 1, 4),
(3398, 139, 1, 4),
(3399, 139, 1, 4),
(3400, 139, 1, 4),
(3401, 139, 1, 4),
(3402, 139, 1, 4),
(3403, 139, 1, 4),
(3404, 139, 1, 4),
(3405, 139, 1, 4),
(3406, 139, 1, 4),
(3407, 139, 1, 4),
(3408, 139, 1, 4),
(3409, 139, 1, 4),
(3410, 139, 1, 4),
(3411, 139, 1, 4),
(3412, 139, 1, 4),
(3413, 139, 1, 4),
(3414, 139, 1, 4),
(3415, 139, 1, 4),
(3416, 139, 1, 4),
(3417, 139, 1, 4),
(3418, 139, 1, 4),
(3419, 139, 1, 4),
(3420, 139, 1, 4),
(3421, 139, 1, 4),
(3422, 139, 1, 4),
(3423, 139, 1, 4),
(3424, 139, 1, 4),
(3425, 139, 1, 4),
(3426, 139, 1, 4),
(3427, 139, 1, 4),
(3428, 139, 1, 4),
(3429, 139, 1, 4),
(3430, 139, 1, 4),
(3431, 139, 1, 4),
(3432, 139, 1, 4),
(3433, 139, 1, 4),
(3434, 139, 1, 4),
(3435, 139, 1, 4),
(3436, 139, 1, 4),
(3437, 139, 1, 4),
(3438, 139, 1, 4),
(3439, 139, 1, 4),
(3440, 139, 1, 4),
(3441, 139, 1, 4),
(3442, 139, 1, 4),
(3443, 139, 1, 4),
(3444, 139, 1, 4),
(3445, 139, 1, 4),
(3446, 139, 1, 4),
(3447, 139, 1, 4),
(3448, 139, 1, 4),
(3449, 139, 1, 4),
(3450, 139, 1, 4),
(3451, 139, 1, 4),
(3452, 139, 1, 4),
(3453, 139, 1, 4),
(3454, 139, 1, 4),
(3455, 139, 1, 4),
(3456, 139, 1, 4),
(3457, 139, 1, 4),
(3458, 139, 1, 4),
(3459, 139, 1, 4),
(3460, 139, 1, 4),
(3461, 139, 1, 4),
(3462, 139, 1, 4),
(3463, 139, 1, 4),
(3464, 139, 1, 4),
(3465, 139, 1, 4),
(3466, 139, 1, 4),
(3467, 139, 1, 4),
(3468, 139, 1, 4),
(3469, 139, 1, 4),
(3470, 139, 1, 4),
(3471, 139, 1, 4),
(3472, 139, 1, 4),
(3473, 139, 1, 4),
(3474, 139, 1, 4),
(3475, 139, 1, 4),
(3476, 139, 1, 4),
(3477, 139, 1, 4),
(3478, 139, 1, 4),
(3479, 139, 1, 4),
(3480, 139, 1, 4),
(3481, 139, 1, 4),
(3482, 139, 1, 4),
(3483, 139, 1, 4),
(3484, 139, 1, 4),
(3485, 139, 1, 4),
(3486, 139, 1, 4),
(3487, 139, 1, 4),
(3488, 139, 1, 4),
(3489, 139, 1, 4),
(3490, 139, 1, 4),
(3491, 139, 1, 4),
(3492, 139, 1, 4),
(3493, 139, 1, 4),
(3494, 139, 1, 4),
(3495, 139, 1, 4),
(3496, 139, 1, 4),
(3497, 139, 1, 4),
(3498, 139, 1, 4),
(3499, 139, 1, 4),
(3500, 139, 1, 4),
(3501, 139, 1, 4),
(3502, 139, 1, 4),
(3503, 139, 1, 4),
(3504, 139, 1, 4),
(3505, 139, 1, 4),
(3506, 139, 1, 4),
(3507, 139, 1, 4),
(3508, 139, 1, 4),
(3509, 139, 1, 4),
(3510, 139, 1, 4),
(3511, 139, 1, 4),
(3512, 139, 1, 4),
(3513, 139, 1, 4),
(3514, 139, 1, 4),
(3515, 139, 1, 4),
(3516, 139, 1, 4),
(3517, 139, 1, 4),
(3518, 139, 1, 4),
(3519, 139, 1, 4),
(3520, 139, 1, 4),
(3521, 139, 1, 4),
(3522, 139, 1, 4),
(3523, 139, 1, 4),
(3524, 139, 1, 4),
(3525, 139, 1, 4),
(3526, 139, 1, 4),
(3527, 139, 1, 4),
(3528, 139, 1, 4),
(3529, 139, 1, 4),
(3530, 139, 1, 4),
(3531, 139, 1, 4),
(3532, 139, 1, 4),
(3533, 139, 1, 4),
(3534, 139, 1, 4),
(3535, 139, 1, 4),
(3536, 139, 1, 4),
(3537, 139, 1, 4),
(3538, 139, 1, 4),
(3539, 139, 1, 4),
(3540, 139, 1, 4),
(3541, 139, 1, 4),
(3542, 139, 1, 4),
(3543, 139, 1, 4),
(3544, 139, 1, 4),
(3545, 139, 1, 4),
(3546, 139, 1, 4),
(3547, 139, 1, 4),
(3548, 139, 1, 4),
(3549, 139, 1, 4),
(3550, 139, 1, 4),
(3551, 139, 1, 4),
(3552, 139, 1, 4),
(3553, 139, 1, 4),
(3554, 139, 1, 4),
(3555, 139, 1, 4),
(3556, 139, 1, 4),
(3557, 139, 1, 4),
(3558, 139, 1, 4),
(3559, 139, 1, 4),
(3560, 139, 1, 4),
(3561, 139, 1, 4),
(3562, 139, 1, 4),
(3563, 139, 1, 4),
(3564, 139, 1, 4),
(3565, 139, 1, 4),
(3566, 139, 1, 4),
(3567, 139, 1, 4),
(3568, 139, 1, 4),
(3569, 139, 1, 4),
(3570, 139, 1, 4),
(3571, 139, 1, 4),
(3572, 139, 1, 4),
(3573, 139, 1, 4),
(3574, 139, 1, 4),
(3575, 139, 1, 4),
(3576, 139, 1, 4),
(3577, 139, 1, 4),
(3578, 139, 1, 4),
(3579, 139, 1, 4),
(3580, 139, 1, 4),
(3581, 139, 1, 4),
(3582, 139, 1, 4),
(3583, 139, 1, 4),
(3584, 139, 1, 4),
(3585, 139, 1, 4),
(3586, 139, 1, 4),
(3587, 139, 1, 4),
(3588, 139, 1, 4),
(3589, 139, 1, 4),
(3590, 139, 1, 4),
(3591, 139, 1, 4),
(3592, 139, 1, 4),
(3593, 139, 1, 4),
(3594, 139, 1, 4),
(3595, 139, 1, 4),
(3596, 139, 1, 4),
(3597, 139, 1, 4),
(3598, 139, 1, 4),
(3599, 139, 1, 4),
(3600, 139, 1, 4),
(3601, 139, 1, 4),
(3602, 139, 1, 4),
(3603, 139, 1, 4),
(3604, 139, 1, 4),
(3605, 139, 1, 4),
(3606, 139, 1, 4),
(3607, 139, 1, 4),
(3608, 139, 1, 4),
(3609, 139, 1, 4),
(3610, 139, 1, 4),
(3611, 139, 1, 4),
(3612, 139, 1, 4),
(3613, 139, 1, 4),
(3614, 139, 1, 4),
(3615, 139, 1, 4),
(3616, 139, 1, 4),
(3617, 139, 1, 4),
(3618, 139, 1, 4),
(3619, 139, 1, 4),
(3620, 139, 1, 4),
(3621, 139, 1, 4),
(3622, 139, 1, 4),
(3623, 139, 1, 4),
(3624, 139, 1, 4),
(3625, 139, 1, 4),
(3626, 139, 1, 4),
(3627, 139, 1, 4),
(3628, 139, 1, 4),
(3629, 139, 1, 4),
(3630, 139, 1, 4),
(3631, 139, 1, 4),
(3632, 139, 1, 4),
(3633, 139, 1, 4),
(3634, 139, 1, 4),
(3635, 139, 1, 4),
(3636, 139, 1, 4),
(3637, 139, 1, 4),
(3638, 139, 1, 4),
(3639, 139, 1, 4),
(3640, 139, 1, 4),
(3641, 139, 1, 4),
(3642, 139, 1, 4),
(3643, 139, 1, 4),
(3644, 139, 1, 4),
(3645, 139, 1, 4),
(3646, 139, 1, 4),
(3647, 139, 1, 4),
(3648, 139, 1, 4),
(3649, 139, 1, 4),
(3650, 139, 1, 4),
(3651, 139, 1, 4),
(3652, 139, 1, 4),
(3653, 139, 1, 4),
(3654, 139, 1, 4),
(3655, 139, 1, 4),
(3656, 139, 1, 4),
(3657, 139, 1, 4),
(3658, 139, 1, 4),
(3659, 139, 1, 4),
(3660, 139, 1, 4),
(3661, 139, 1, 4),
(3662, 139, 1, 4),
(3663, 139, 1, 4),
(3664, 139, 1, 4),
(3665, 139, 1, 4),
(3666, 139, 1, 4),
(3667, 139, 1, 4),
(3668, 139, 1, 4),
(3669, 139, 1, 4),
(3670, 139, 1, 4),
(3671, 139, 1, 4),
(3672, 139, 1, 4),
(3673, 139, 1, 4),
(3674, 139, 1, 4),
(3675, 139, 1, 4),
(3676, 139, 1, 4),
(3677, 139, 1, 4),
(3678, 139, 1, 4),
(3679, 139, 1, 4),
(3680, 139, 1, 4),
(3681, 139, 1, 4),
(3682, 139, 1, 4),
(3683, 139, 1, 4),
(3684, 139, 1, 4),
(3685, 139, 1, 4),
(3686, 139, 1, 4),
(3687, 139, 1, 4),
(3688, 139, 1, 4),
(3689, 139, 1, 4),
(3690, 139, 1, 4),
(3691, 139, 1, 4),
(3692, 139, 1, 4),
(3693, 139, 1, 4),
(3694, 139, 1, 4),
(3695, 139, 1, 4),
(3696, 139, 1, 4),
(3697, 139, 1, 4),
(3698, 139, 1, 4),
(3699, 139, 1, 4),
(3700, 139, 1, 4),
(3701, 139, 1, 4),
(3702, 139, 1, 4),
(3703, 139, 1, 4),
(3704, 139, 1, 4),
(3705, 139, 1, 4),
(3706, 139, 1, 4),
(3707, 139, 1, 4),
(3708, 139, 1, 4),
(3709, 139, 1, 4),
(3710, 139, 1, 4),
(3711, 139, 1, 4),
(3712, 139, 1, 4),
(3713, 139, 1, 4),
(3714, 139, 1, 4),
(3715, 139, 1, 4),
(3716, 139, 1, 4),
(3717, 139, 1, 4),
(3718, 139, 1, 4),
(3719, 139, 1, 4),
(3720, 139, 1, 4),
(3721, 139, 1, 4),
(3722, 139, 1, 4),
(3723, 139, 1, 4),
(3724, 139, 1, 4),
(3725, 139, 1, 4),
(3726, 139, 1, 4),
(3727, 139, 1, 4),
(3728, 139, 1, 4),
(3729, 139, 1, 4),
(3730, 139, 1, 4),
(3731, 139, 1, 4),
(3732, 139, 1, 4),
(3733, 139, 1, 4),
(3734, 139, 1, 4),
(3735, 139, 1, 4),
(3736, 139, 1, 4),
(3737, 139, 1, 4),
(3738, 139, 1, 4),
(3739, 139, 1, 4),
(3740, 139, 1, 4),
(3741, 139, 1, 4),
(3742, 139, 1, 4),
(3743, 139, 1, 4),
(3744, 139, 1, 4),
(3745, 139, 1, 4),
(3746, 139, 1, 4),
(3747, 139, 1, 4),
(3748, 139, 1, 4),
(3749, 139, 1, 4),
(3750, 139, 1, 4),
(3751, 139, 1, 4),
(3752, 139, 1, 4),
(3753, 139, 1, 4),
(3754, 139, 1, 4),
(3755, 139, 1, 4),
(3756, 139, 1, 4),
(3757, 139, 1, 4),
(3758, 139, 1, 4),
(3759, 139, 1, 4),
(3760, 139, 1, 4),
(3761, 139, 1, 4),
(3762, 139, 1, 4),
(3763, 139, 1, 4),
(3764, 139, 1, 4),
(3765, 139, 1, 4),
(3766, 139, 1, 4),
(3767, 139, 1, 4),
(3768, 139, 1, 4),
(3769, 139, 1, 4),
(3770, 139, 1, 4),
(3771, 139, 1, 4),
(3772, 139, 1, 4),
(3773, 139, 1, 4),
(3774, 139, 1, 4),
(3775, 139, 1, 4),
(3776, 139, 1, 4),
(3777, 139, 1, 4),
(3778, 139, 1, 4),
(3779, 139, 1, 4),
(3780, 139, 1, 4),
(3781, 139, 1, 4),
(3782, 139, 1, 4),
(3783, 139, 1, 4),
(3784, 139, 1, 4),
(3785, 139, 1, 4),
(3786, 139, 1, 4),
(3787, 139, 1, 4),
(3788, 139, 1, 4),
(3789, 139, 1, 4),
(3790, 139, 1, 4),
(3791, 139, 1, 4),
(3792, 139, 1, 4),
(3793, 139, 1, 4),
(3794, 139, 1, 4),
(3795, 139, 1, 4),
(3796, 139, 1, 4),
(3797, 139, 1, 4),
(3798, 139, 1, 4),
(3799, 139, 1, 4),
(3800, 139, 1, 4),
(3801, 139, 1, 4),
(3802, 139, 1, 4),
(3803, 139, 1, 4),
(3804, 139, 1, 4),
(3805, 139, 1, 4),
(3806, 139, 1, 4),
(3807, 139, 1, 4),
(3808, 139, 1, 4),
(3809, 139, 1, 4),
(3810, 139, 1, 4),
(3811, 139, 1, 4),
(3812, 139, 1, 4),
(3813, 139, 1, 4),
(3814, 139, 1, 4),
(3815, 139, 1, 4),
(3816, 139, 1, 4),
(3817, 139, 1, 4),
(3818, 139, 1, 4),
(3819, 139, 1, 4),
(3820, 139, 1, 4),
(3821, 139, 1, 4),
(3822, 139, 1, 4),
(3823, 139, 1, 4),
(3824, 139, 1, 4),
(3825, 139, 1, 4),
(3826, 139, 1, 4),
(3827, 139, 1, 4),
(3828, 139, 1, 4),
(3829, 139, 1, 4),
(3830, 139, 1, 4),
(3831, 139, 1, 4),
(3832, 139, 1, 4),
(3833, 139, 1, 4),
(3834, 139, 1, 4),
(3835, 139, 1, 4),
(3836, 139, 1, 4),
(3837, 139, 1, 4),
(3838, 139, 1, 4),
(3839, 139, 1, 4),
(3840, 139, 1, 4),
(3841, 139, 1, 4),
(3842, 139, 1, 4),
(3843, 139, 1, 4),
(3844, 139, 1, 4),
(3845, 139, 1, 4),
(3846, 139, 1, 4),
(3847, 139, 1, 4),
(3848, 139, 1, 4),
(3849, 139, 1, 4),
(3850, 139, 1, 4),
(3851, 139, 1, 4),
(3852, 139, 1, 4),
(3853, 139, 1, 4),
(3854, 139, 1, 4),
(3855, 139, 1, 4),
(3856, 139, 1, 4),
(3857, 139, 1, 4),
(3858, 139, 1, 4),
(3859, 139, 1, 4),
(3860, 139, 1, 4),
(3861, 139, 1, 4),
(3862, 139, 1, 4),
(3863, 139, 1, 4),
(3864, 139, 1, 4),
(3865, 139, 1, 4),
(3866, 139, 1, 4),
(3867, 139, 1, 4),
(3868, 139, 1, 4),
(3869, 139, 1, 4),
(3870, 139, 1, 4),
(3871, 139, 1, 4),
(3872, 139, 1, 4),
(3873, 139, 1, 4),
(3874, 139, 1, 4),
(3875, 139, 1, 4),
(3876, 139, 1, 4),
(3877, 139, 1, 4),
(3878, 139, 1, 4),
(3879, 139, 1, 4),
(3880, 139, 1, 4),
(3881, 139, 1, 4),
(3882, 139, 1, 4),
(3883, 139, 1, 4),
(3884, 139, 1, 4),
(3885, 139, 1, 4),
(3886, 139, 1, 4),
(3887, 139, 1, 4),
(3888, 139, 1, 4),
(3889, 139, 1, 4),
(3890, 139, 1, 4),
(3891, 139, 1, 4),
(3892, 139, 1, 4),
(3893, 139, 1, 4),
(3894, 139, 1, 4),
(3895, 139, 1, 4),
(3896, 139, 1, 4),
(3897, 139, 1, 4),
(3898, 139, 1, 4),
(3899, 139, 1, 4),
(3900, 139, 1, 4),
(3901, 139, 1, 4),
(3902, 139, 1, 4),
(3903, 139, 1, 4),
(3904, 139, 1, 4),
(3905, 139, 1, 4),
(3906, 139, 1, 4),
(3907, 139, 1, 4),
(3908, 139, 1, 4),
(3909, 139, 1, 4),
(3910, 139, 1, 4),
(3911, 139, 1, 4),
(3912, 139, 1, 4),
(3913, 139, 1, 4),
(3914, 139, 1, 4),
(3915, 139, 1, 4),
(3916, 139, 1, 4),
(3917, 139, 1, 4),
(3918, 139, 1, 4),
(3919, 139, 1, 4),
(3920, 139, 1, 4),
(3921, 139, 1, 4),
(3922, 139, 1, 4),
(3923, 139, 1, 4),
(3924, 139, 1, 4),
(3925, 139, 1, 4),
(3926, 139, 1, 4),
(3927, 139, 1, 4),
(3928, 139, 1, 4),
(3929, 139, 1, 4),
(3930, 139, 1, 4),
(3931, 139, 1, 4),
(3932, 139, 1, 4),
(3933, 139, 1, 4),
(3934, 139, 1, 4),
(3935, 139, 1, 4),
(3936, 140, 2, 4),
(3937, 140, 3, 4),
(3938, 140, 4, 4),
(3939, 140, 5, 4),
(3940, 140, 6, 4),
(3941, 140, 7, 4),
(3942, 140, 8, 4),
(3943, 140, 9, 4),
(3944, 140, 10, 4),
(3945, 140, 11, 4),
(3946, 140, 12, 4),
(3947, 140, 13, 4),
(3948, 140, 14, 4),
(3949, 140, 15, 4),
(3950, 140, 16, 4),
(3951, 140, 17, 4),
(3952, 140, 18, 4),
(3953, 140, 19, 4),
(3954, 140, 20, 4),
(3955, 140, 21, 4),
(3956, 140, 22, 4),
(3957, 140, 23, 4),
(3958, 140, 24, 4),
(3959, 140, 25, 4),
(3960, 140, 26, 4),
(3961, 140, 27, 4),
(3962, 140, 2, 4),
(3963, 140, 3, 4),
(3964, 140, 4, 4),
(3965, 140, 5, 4),
(3966, 140, 6, 4),
(3967, 140, 7, 4),
(3968, 140, 8, 4),
(3969, 140, 9, 4),
(3970, 140, 10, 4),
(3971, 140, 11, 4),
(3972, 140, 12, 4),
(3973, 140, 13, 4),
(3974, 140, 14, 4),
(3975, 140, 15, 4),
(3976, 140, 16, 4),
(3977, 140, 17, 4),
(3978, 140, 18, 4),
(3979, 140, 19, 4),
(3980, 140, 20, 4),
(3981, 140, 21, 4),
(3982, 140, 22, 4),
(3983, 140, 23, 4),
(3984, 140, 24, 4),
(3985, 140, 25, 4),
(3986, 140, 26, 4),
(3987, 140, 27, 3),
(3988, 141, 1, 4),
(3989, 141, 2, 4),
(3990, 141, 3, 4),
(3991, 141, 4, 4),
(3992, 141, 5, 4),
(3993, 141, 6, 4),
(3994, 141, 7, 4),
(3995, 141, 8, 4),
(3996, 141, 9, 4),
(3997, 141, 10, 4),
(3998, 141, 11, 4),
(3999, 141, 12, 3),
(4000, 141, 13, 4),
(4001, 141, 14, 4),
(4002, 141, 15, 4),
(4003, 141, 16, 4),
(4004, 141, 17, 4),
(4005, 141, 18, 4),
(4006, 141, 19, 4),
(4007, 141, 20, 4),
(4008, 141, 21, 4),
(4009, 141, 22, 4),
(4010, 141, 23, 4),
(4011, 141, 24, 4),
(4012, 141, 25, 4),
(4013, 141, 26, 4),
(4014, 141, 27, 4),
(4015, 141, 1, 4),
(4016, 141, 2, 4),
(4017, 141, 3, 4),
(4018, 141, 4, 4),
(4019, 141, 5, 4),
(4020, 141, 6, 4),
(4021, 141, 7, 4),
(4022, 141, 8, 4),
(4023, 141, 9, 4),
(4024, 141, 10, 4),
(4025, 141, 11, 4),
(4026, 141, 12, 3),
(4027, 141, 13, 4),
(4028, 141, 14, 4),
(4029, 141, 15, 4),
(4030, 141, 16, 4),
(4031, 141, 17, 4),
(4032, 141, 18, 4),
(4033, 141, 19, 4),
(4034, 141, 20, 4),
(4035, 141, 21, 4),
(4036, 141, 22, 4),
(4037, 141, 23, 4),
(4038, 141, 24, 4),
(4039, 141, 25, 4),
(4040, 141, 26, 4),
(4041, 141, 27, 4),
(4042, 141, 1, 4),
(4043, 141, 2, 4),
(4044, 141, 3, 4),
(4045, 141, 4, 4),
(4046, 141, 5, 4),
(4047, 141, 6, 4),
(4048, 141, 7, 4),
(4049, 141, 8, 4),
(4050, 141, 9, 4),
(4051, 141, 10, 4),
(4052, 141, 11, 4),
(4053, 141, 12, 3),
(4054, 141, 13, 4),
(4055, 141, 14, 4),
(4056, 141, 15, 4),
(4057, 141, 16, 4),
(4058, 141, 17, 4),
(4059, 141, 18, 4),
(4060, 141, 19, 4),
(4061, 141, 20, 4),
(4062, 141, 21, 4),
(4063, 141, 22, 4),
(4064, 141, 23, 4),
(4065, 141, 24, 4),
(4066, 141, 25, 4),
(4067, 141, 26, 4),
(4068, 141, 27, 4),
(4069, 141, 1, 4),
(4070, 141, 2, 4),
(4071, 141, 3, 4),
(4072, 141, 4, 4),
(4073, 141, 5, 4),
(4074, 141, 6, 4),
(4075, 141, 7, 4),
(4076, 141, 8, 4),
(4077, 141, 9, 4),
(4078, 141, 10, 4),
(4079, 141, 11, 4),
(4080, 141, 12, 3),
(4081, 141, 13, 4),
(4082, 141, 14, 4),
(4083, 141, 15, 4),
(4084, 141, 16, 4),
(4085, 141, 17, 4),
(4086, 141, 18, 4),
(4087, 141, 19, 4),
(4088, 141, 20, 4),
(4089, 141, 21, 4),
(4090, 141, 22, 4),
(4091, 141, 23, 4),
(4092, 141, 24, 4),
(4093, 141, 25, 4),
(4094, 141, 26, 4),
(4095, 141, 27, 4),
(4096, 142, 1, 4),
(4097, 142, 2, 4),
(4098, 142, 3, 4),
(4099, 142, 4, 4),
(4100, 142, 5, 4),
(4101, 142, 6, 4),
(4102, 142, 7, 4),
(4103, 142, 8, 4),
(4104, 142, 9, 4),
(4105, 142, 10, 4),
(4106, 142, 11, 4),
(4107, 142, 12, 3),
(4108, 142, 13, 4),
(4109, 142, 14, 4),
(4110, 142, 15, 4),
(4111, 142, 16, 4),
(4112, 142, 17, 4),
(4113, 142, 18, 4),
(4114, 142, 19, 4),
(4115, 142, 20, 4),
(4116, 142, 21, 4),
(4117, 142, 22, 4),
(4118, 142, 23, 4),
(4119, 142, 24, 4),
(4120, 142, 25, 4),
(4121, 142, 26, 4),
(4122, 142, 27, 4),
(4123, 143, 1, 4),
(4124, 143, 2, 4),
(4125, 143, 3, 4),
(4126, 143, 4, 4),
(4127, 143, 5, 4),
(4128, 143, 6, 4),
(4129, 143, 7, 4),
(4130, 143, 8, 4),
(4131, 143, 9, 4),
(4132, 143, 10, 4),
(4133, 143, 11, 4),
(4134, 143, 12, 3),
(4135, 143, 13, 4),
(4136, 143, 14, 4),
(4137, 143, 15, 4),
(4138, 143, 16, 4),
(4139, 143, 17, 4),
(4140, 143, 18, 4),
(4141, 143, 19, 4),
(4142, 143, 20, 4),
(4143, 143, 21, 4),
(4144, 143, 22, 4),
(4145, 143, 23, 4),
(4146, 143, 24, 4),
(4147, 143, 25, 4),
(4148, 143, 26, 4),
(4149, 143, 27, 4),
(4150, 143, 1, 4),
(4151, 143, 2, 4),
(4152, 143, 3, 4),
(4153, 143, 4, 4),
(4154, 143, 5, 4),
(4155, 143, 6, 4),
(4156, 143, 7, 4),
(4157, 143, 8, 4),
(4158, 143, 9, 4),
(4159, 143, 10, 4),
(4160, 143, 11, 4),
(4161, 143, 12, 3),
(4162, 143, 13, 4),
(4163, 143, 14, 4),
(4164, 143, 15, 4),
(4165, 143, 16, 4),
(4166, 143, 17, 4),
(4167, 143, 18, 4),
(4168, 143, 19, 4),
(4169, 143, 20, 4),
(4170, 143, 21, 4),
(4171, 143, 22, 4),
(4172, 143, 23, 4),
(4173, 143, 24, 4),
(4174, 143, 25, 4),
(4175, 143, 26, 4),
(4176, 143, 27, 4),
(4177, 144, 1, 4),
(4178, 144, 2, 4),
(4179, 144, 3, 4),
(4180, 144, 4, 4),
(4181, 144, 5, 4),
(4182, 144, 6, 4),
(4183, 144, 7, 4),
(4184, 144, 8, 3),
(4185, 144, 9, 4),
(4186, 144, 10, 1),
(4187, 144, 11, 2),
(4188, 144, 12, 3),
(4189, 144, 13, 4),
(4190, 144, 14, 2),
(4191, 144, 15, 2),
(4192, 144, 16, 2),
(4193, 144, 17, 2),
(4194, 144, 18, 3),
(4195, 144, 19, 3),
(4196, 144, 20, 3),
(4197, 144, 21, 4),
(4198, 144, 22, 3),
(4199, 144, 23, 2),
(4200, 144, 24, 3),
(4201, 144, 25, 3),
(4202, 144, 26, 3),
(4203, 144, 27, 1),
(4204, 134, 1, 4),
(4205, 134, 2, 4),
(4206, 134, 3, 4),
(4207, 134, 4, 4),
(4208, 134, 5, 4),
(4209, 134, 6, 4),
(4210, 134, 7, 4),
(4211, 134, 8, 3),
(4212, 134, 9, 4),
(4213, 134, 10, 1),
(4214, 134, 11, 2),
(4215, 134, 12, 3),
(4216, 134, 13, 4),
(4217, 134, 14, 2),
(4218, 134, 15, 2),
(4219, 134, 16, 2),
(4220, 134, 17, 2),
(4221, 134, 18, 3),
(4222, 134, 19, 3),
(4223, 134, 20, 3),
(4224, 134, 21, 4),
(4225, 134, 22, 3),
(4226, 134, 23, 2),
(4227, 134, 24, 3),
(4228, 134, 25, 3),
(4229, 134, 26, 3),
(4230, 134, 27, 4),
(4231, 146, 1, 4),
(4232, 146, 2, 4),
(4233, 146, 3, 3),
(4234, 146, 4, 2),
(4235, 146, 5, 3),
(4236, 146, 6, 3),
(4237, 146, 7, 3),
(4238, 146, 8, 2),
(4239, 146, 9, 3),
(4240, 146, 10, 2),
(4241, 146, 11, 2),
(4242, 146, 12, 2),
(4243, 146, 13, 3),
(4244, 146, 14, 4),
(4245, 146, 15, 2),
(4246, 146, 16, 3),
(4247, 146, 17, 1),
(4248, 146, 18, 2),
(4249, 146, 19, 3),
(4250, 146, 20, 4),
(4251, 146, 21, 2),
(4252, 146, 22, 3),
(4253, 146, 23, 4),
(4254, 146, 24, 3),
(4255, 146, 25, 4),
(4256, 146, 26, 4),
(4257, 146, 27, 3),
(4258, 147, 1, 4),
(4259, 147, 2, 4),
(4260, 147, 3, 3),
(4261, 147, 4, 3),
(4262, 147, 5, 4),
(4263, 147, 6, 2),
(4264, 147, 7, 4),
(4265, 147, 8, 3),
(4266, 147, 9, 4),
(4267, 147, 10, 2),
(4268, 147, 11, 3),
(4269, 147, 12, 4),
(4270, 147, 13, 2),
(4271, 147, 14, 3),
(4272, 147, 15, 2),
(4273, 147, 16, 2),
(4274, 147, 17, 3),
(4275, 147, 18, 3),
(4276, 147, 19, 2),
(4277, 147, 20, 1),
(4278, 147, 21, 3),
(4279, 147, 22, 2),
(4280, 147, 23, 3),
(4281, 147, 24, 3),
(4282, 147, 25, 4),
(4283, 147, 26, 3),
(4284, 147, 27, 2),
(4285, 145, 1, 4),
(4286, 145, 2, 3),
(4287, 145, 3, 3),
(4288, 145, 4, 4),
(4289, 145, 5, 4),
(4290, 145, 6, 4),
(4291, 145, 7, 4),
(4292, 145, 8, 3),
(4293, 145, 9, 3),
(4294, 145, 10, 4),
(4295, 145, 11, 3),
(4296, 145, 12, 3),
(4297, 145, 13, 4),
(4298, 145, 14, 3),
(4299, 145, 15, 2),
(4300, 145, 16, 3),
(4301, 145, 17, 2),
(4302, 145, 18, 3),
(4303, 145, 19, 4),
(4304, 145, 20, 4),
(4305, 145, 21, 3),
(4306, 145, 22, 3),
(4307, 145, 23, 2),
(4308, 145, 24, 1),
(4309, 145, 25, 3),
(4310, 145, 26, 3),
(4311, 145, 27, 3),
(4312, 149, 1, 4),
(4313, 149, 2, 3),
(4314, 149, 3, 3),
(4315, 149, 4, 2),
(4316, 149, 5, 1),
(4317, 149, 6, 4),
(4318, 149, 7, 3),
(4319, 149, 8, 2),
(4320, 149, 9, 3),
(4321, 149, 10, 1),
(4322, 149, 11, 4),
(4323, 149, 12, 3),
(4324, 149, 13, 3),
(4325, 149, 14, 2),
(4326, 149, 15, 3),
(4327, 149, 16, 3),
(4328, 149, 17, 4),
(4329, 149, 18, 4),
(4330, 149, 19, 3),
(4331, 149, 20, 4),
(4332, 149, 21, 1),
(4333, 149, 22, 3),
(4334, 149, 23, 4),
(4335, 149, 24, 3),
(4336, 149, 25, 4),
(4337, 149, 26, 3),
(4338, 149, 27, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gaya_belajar`
--

DROP TABLE IF EXISTS `gaya_belajar`;
CREATE TABLE IF NOT EXISTS `gaya_belajar` (
  `id_gayabelajar` int(11) NOT NULL AUTO_INCREMENT,
  `gaya_belajar` varchar(255) NOT NULL,
  `saran_belajar` text NOT NULL,
  PRIMARY KEY (`id_gayabelajar`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gaya_belajar`
--

INSERT INTO `gaya_belajar` (`id_gayabelajar`, `gaya_belajar`, `saran_belajar`) VALUES
(1, 'Visual', 'Gunakan ilustrasi, grafik, diagram, dan slide untuk memperkuat pembelajaran. Untuk anak-anak, membuat grafik stiker warna-warni dalam buku tugas akan sangat efektif. Berikan spidol berwarna dan stabilo. Jika dia menulis huruf berwarna, dia lebih mungkin dapat memvisualisasikan kata-kata yang akan membantunya untuk mengingat.'),
(2, 'Auditory', 'Apabila membaca buku, bisa sambil diucapkan dengan suara pelan untuk lebih mudah mengingat, Belajar dengan diskusi bersama teman supaya lebih mudah memahami maupun mengingat materi. Pada saat dirumah orang tua dapat membantu dengan membacakan materi pelajaran.'),
(3, 'Kinestetik', 'Belajar sambil melakukan aktivitas yang melibatkan gerakan, misalnya sambil berjalan atau sesederhana menjetikkan jari, saat mendapatkan materi belajar, bila memungkinkan segera coba praktikkan. Belajar dengan mencoba soal - soal yang langsung berhubungan dengan materi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

DROP TABLE IF EXISTS `hasil`;
CREATE TABLE IF NOT EXISTS `hasil` (
  `id_hasil` int(255) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `tanggal_tes` datetime NOT NULL,
  `id_gayabelajar` int(11) NOT NULL,
  PRIMARY KEY (`id_hasil`),
  KEY `id_user` (`id_user`),
  KEY `id_gayabelajar` (`id_gayabelajar`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `id_user`, `tanggal_tes`, `id_gayabelajar`) VALUES
(28, 123, '2019-04-11 23:44:12', 1),
(29, 123, '2019-04-11 23:47:19', 1),
(30, 123, '2019-04-11 23:47:44', 1),
(31, 123, '2019-04-11 23:47:53', 1),
(32, 123, '2019-04-11 23:48:06', 1),
(33, 123, '2019-04-11 23:49:42', 1),
(34, 123, '2019-04-11 23:50:30', 1),
(35, 123, '2019-04-11 23:50:56', 1),
(36, 123, '2019-04-12 00:14:49', 1),
(37, 123, '2019-04-12 00:15:27', 1),
(38, 123, '2019-04-12 00:15:38', 1),
(39, 123, '2019-04-12 00:17:32', 1),
(40, 123, '2019-04-12 00:37:22', 1),
(41, 123, '2019-04-12 00:38:24', 1),
(42, 123, '2019-04-12 00:40:07', 1),
(43, 123, '2019-04-12 00:40:11', 1),
(44, 123, '2019-04-12 00:41:11', 1),
(45, 123, '2019-04-12 00:41:18', 1),
(46, 123, '2019-04-12 00:43:14', 1),
(47, 123, '2019-04-12 00:43:14', 1),
(48, 123, '2019-04-12 00:43:18', 1),
(49, 123, '2019-04-12 00:46:34', 1),
(50, 124, '2019-04-12 00:46:43', 1),
(51, 124, '2019-04-13 23:44:43', 1),
(52, 124, '2019-04-13 23:51:48', 1),
(53, 124, '2019-04-13 23:52:59', 1),
(54, 124, '2019-04-13 23:53:23', 1),
(55, 123, '2019-04-21 20:27:26', 1),
(56, 123, '2019-04-21 20:29:06', 1),
(57, 123, '2019-04-21 20:30:33', 1),
(58, 123, '2019-04-21 20:32:57', 1),
(59, 123, '2019-04-21 20:45:22', 1),
(60, 123, '2019-04-21 21:19:48', 1),
(61, 123, '2019-04-21 21:20:04', 1),
(62, 123, '2019-04-21 21:51:08', 1),
(63, 123, '2019-04-21 21:51:12', 1),
(64, 123, '2019-04-21 21:53:02', 1),
(65, 123, '2019-04-21 21:53:08', 1),
(66, 123, '2019-04-21 22:21:52', 1),
(67, 123, '2019-04-21 22:21:56', 1),
(68, 123, '2019-04-21 22:27:27', 1),
(69, 123, '2019-04-21 22:27:45', 1),
(70, 123, '2019-04-21 22:34:06', 1),
(71, 123, '2019-04-21 22:41:00', 1),
(72, 123, '2019-04-21 22:41:03', 1),
(73, 123, '2019-04-21 22:50:22', 2),
(74, 123, '2019-04-21 23:08:54', 1),
(75, 123, '2019-04-21 23:09:32', 1),
(76, 123, '2019-04-21 23:09:44', 3),
(77, 123, '2019-04-25 20:19:44', 2),
(78, 123, '2019-04-25 20:32:03', 2),
(79, 124, '2019-04-25 22:06:00', 3),
(80, 124, '2019-04-25 22:26:51', 1),
(81, 124, '2019-04-26 17:16:11', 1),
(82, 124, '2019-05-03 01:37:15', 1),
(83, 124, '2019-05-03 01:38:04', 1),
(84, 124, '2019-05-03 01:39:05', 1),
(85, 124, '2019-05-03 01:40:10', 1),
(86, 124, '2019-05-03 01:41:25', 1),
(87, 124, '2019-05-03 01:42:41', 1),
(88, 124, '2019-05-03 01:43:34', 1),
(89, 124, '2019-05-03 01:44:37', 1),
(90, 124, '2019-05-03 01:44:38', 1),
(91, 124, '2019-05-03 01:46:24', 1),
(92, 124, '2019-05-03 01:48:22', 1),
(93, 124, '2019-05-03 01:48:35', 1),
(94, 124, '2019-05-03 01:49:06', 1),
(95, 124, '2019-05-03 01:49:15', 1),
(96, 124, '2019-05-03 01:50:33', 1),
(97, 124, '2019-05-03 01:51:37', 1),
(98, 124, '2019-05-03 01:51:40', 1),
(99, 124, '2019-05-03 01:51:41', 1),
(100, 124, '2019-05-03 01:51:59', 1),
(101, 124, '2019-05-03 01:52:18', 1),
(102, 124, '2019-05-03 01:52:50', 1),
(103, 124, '2019-05-03 01:52:52', 1),
(104, 124, '2019-05-03 01:54:03', 1),
(105, 124, '2019-05-03 01:54:32', 1),
(106, 124, '2019-05-03 01:54:34', 1),
(107, 124, '2019-05-03 01:54:43', 1),
(108, 124, '2019-05-03 01:55:31', 1),
(109, 124, '2019-05-03 01:55:34', 1),
(110, 124, '2019-05-03 01:56:09', 1),
(111, 124, '2019-05-03 01:56:10', 1),
(112, 124, '2019-05-03 01:57:13', 1),
(113, 124, '2019-05-03 01:57:28', 1),
(114, 124, '2019-05-03 01:58:24', 1),
(115, 124, '2019-05-03 01:58:25', 1),
(116, 124, '2019-05-03 01:58:27', 1),
(117, 124, '2019-05-03 02:05:01', 3),
(118, 124, '2019-05-08 13:13:15', 1),
(119, 124, '2019-05-08 13:14:13', 1),
(120, 124, '2019-05-08 13:14:58', 1),
(121, 124, '2019-05-08 13:15:23', 1),
(122, 124, '2019-05-10 00:04:16', 1),
(123, 124, '2019-05-10 16:53:00', 1),
(124, 124, '2019-05-10 18:14:40', 1),
(125, 124, '2019-05-10 18:15:13', 2),
(126, 124, '2019-05-10 18:34:55', 3),
(127, 124, '2019-05-10 19:30:16', 3),
(128, 124, '2019-05-11 14:48:35', 1),
(129, 124, '2019-05-11 14:50:29', 1),
(130, 130, '2019-05-11 22:05:58', 2),
(131, 129, '2019-05-11 22:06:00', 3),
(134, 130, '2019-05-12 18:47:19', 3),
(135, 131, '0000-00-00 00:00:00', 1),
(136, 132, '0000-00-00 00:00:00', 1),
(137, 129, '2019-05-17 04:13:36', 1),
(138, 129, '2019-05-17 15:36:00', 1),
(139, 129, '2019-05-17 15:42:30', 3),
(140, 129, '2019-05-17 15:57:28', 1),
(141, 129, '2019-05-17 16:01:14', 1),
(142, 129, '2019-05-17 16:04:10', 1),
(143, 129, '2019-05-17 16:04:22', 1),
(144, 129, '2019-05-17 16:05:19', 3),
(145, 129, '2019-05-17 16:10:42', 1),
(146, 130, '2019-05-17 16:15:17', 2),
(147, 130, '2019-05-17 16:17:19', 2),
(148, 130, '2019-05-17 16:20:19', 1),
(149, 129, '2019-06-06 00:17:58', 3),
(150, 129, '2019-06-07 11:32:50', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pernyataan`
--

DROP TABLE IF EXISTS `pernyataan`;
CREATE TABLE IF NOT EXISTS `pernyataan` (
  `id_pernyataan` int(12) NOT NULL AUTO_INCREMENT,
  `kode_pernyataan` varchar(20) NOT NULL,
  `pernyataan` text NOT NULL,
  PRIMARY KEY (`id_pernyataan`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pernyataan`
--

INSERT INTO `pernyataan` (`id_pernyataan`, `kode_pernyataan`, `pernyataan`) VALUES
(1, 'F1', 'Saya mencatat rumus matematika dengan memberikan tanda stabilo berwarna supaya mudah dibaca.'),
(2, 'F2', 'Saya kesulitan membaca materi ketika suasana di kelas ramai.'),
(3, 'F3', 'Saat guru meminta untuk menyampaikan pendapat, saya menyampaikannya dengan suara yang pelan'),
(4, 'F4', 'Saya selalu menyimpan kembali buku dan alat tulis pada tempatnya setelah selesai belajar. '),
(5, 'F5', 'Saya berlatih pelajaran matematika dengan cara mengerjakan soal – soal latihan. '),
(6, 'F6', 'Suara - suara gaduh sangat mengganggu konsentrasi saya ketika mendengarkan penjelasan guru.'),
(7, 'F7', 'Menjelang PAS, saya biasanya belajar dengan cara menuliskan kembali materi yang baru dipelajari.'),
(8, 'F8', 'Sebelum menghadapi ulangan Pengetahuan Sosial, saya membaca materi yang sangat banyak .'),
(9, 'F9', 'Saya lebih mudah memahami materi dari guru yang menjelaskan daripada saya membaca sendiri'),
(10, 'F10', 'Saya sering lupa jika hanya mendengarkan perintah tugas dari guru tanpa mencatatnya'),
(11, 'F11', 'Saya mengingat dengan baik pembicaraan teman dalam sebuah diskusi'),
(12, 'F12', 'Saya menggunakan jari telunjuk untuk menemukan kata-kata dalam bacaan'),
(13, 'F13', 'Saya senang berdiskusi dengan teman sebangku dalam mengerjakan tugas kelompok'),
(14, 'F14', 'Saya lebih suka membaca cerita daripada mendengarkan cerita'),
(15, 'F15', 'Saya menggunakan jari telunjuk sebagai penunjuk ketika membaca'),
(16, 'F16', 'Untuk menghafalkan materi tentang Pengetahuan Alam, saya lebih mudah dengan membacanya sendiri'),
(17, 'F17', 'Saya lebih senang bercerita daripada harus menulis cerita'),
(18, 'F18', 'Saya menyentuh pundak teman ketika hendak mengajaknya berbicara.'),
(19, 'F19', 'Menjelang PAS, orang tua membantu saya belajar dengan membacakan materi, agar mudah diingat'),
(20, 'F20', 'Sebelum PAS pengetahuan alam, saya membaca sekilas materi secara keseluruhan'),
(21, 'F21', 'Saya merasa bosan jika hanya duduk diam terlalu lama di dalam kelas'),
(22, 'F22', 'Saya selalu mencatat apa saja yang selalu diucapkan oleh guru'),
(23, 'F23', 'Saya harus membaca berulang kali dengan keras untuk menghafalkan materi yang sedang dipelajari'),
(24, 'F24', 'Saya memainkan alat tulis ketika mendengarkan penjelasan dari guru'),
(25, 'F25', 'Saya kesulitan memahami materi jika hanya membaca tanpa mengucapkannya'),
(26, 'F26', 'Saya kesulitan untuk memahami materi pelajaran jika hanya mendengarkan penjelasan dari guru.'),
(27, 'F27', 'Saya lebih suka bermain daripada menonton televisi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(12) NOT NULL AUTO_INCREMENT,
  `no_induk` int(12) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(12) NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `no_induk` (`no_induk`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `no_induk`, `nama`, `password`, `level`) VALUES
(2, 109345, 'Fahkry Raditya Kamal', '79a91412ad3792662aaa310214572592', 'siswa'),
(123, 3214, 'Akbar Barokah', '72c936fc65ed18442a81ea8ca4b5ab20', 'admin'),
(124, 5432, 'Arief Rachman Alfiansyah', '79a91412ad3792662aaa310214572592', 'siswa'),
(129, 9090, 'Ardi Prasetyo', 'dd97813dd40be87559aaefed642c3fbb', 'siswa'),
(130, 9091, 'Riyan Wahyu Akhmada', 'ba4e586503b7cb15e2b54b9729c066ed', 'siswa'),
(131, 4444, 'Julia Sasongko', 'dbc4d84bfcfe2284ba11beffb853a8c4', 'siswa'),
(132, 2222, 'qiu', '934b535800b1cba8f96a5d72f72f1611', 'siswa'),
(133, 6969, 'Igor Babang Tampan', 'dd97813dd40be87559aaefed642c3fbb', 'siswa');

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `dataset`
--
ALTER TABLE `dataset`
  ADD CONSTRAINT `dataset_ibfk_1` FOREIGN KEY (`id_gayabelajar`) REFERENCES `gaya_belajar` (`id_gayabelajar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_dataset`
--
ALTER TABLE `detail_dataset`
  ADD CONSTRAINT `detail_dataset_ibfk_1` FOREIGN KEY (`id_pernyataan`) REFERENCES `pernyataan` (`id_pernyataan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_dataset_ibfk_2` FOREIGN KEY (`id_dataset`) REFERENCES `dataset` (`id_dataset`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_hasil`
--
ALTER TABLE `detail_hasil`
  ADD CONSTRAINT `detail_hasil_ibfk_1` FOREIGN KEY (`id_hasil`) REFERENCES `hasil` (`id_hasil`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_hasil_ibfk_2` FOREIGN KEY (`id_pernyataan`) REFERENCES `pernyataan` (`id_pernyataan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD CONSTRAINT `hasil_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hasil_ibfk_2` FOREIGN KEY (`id_gayabelajar`) REFERENCES `gaya_belajar` (`id_gayabelajar`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `kanbanm2`
--
CREATE DATABASE IF NOT EXISTS `kanbanm2` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `kanbanm2`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bead`
--

DROP TABLE IF EXISTS `bead`;
CREATE TABLE IF NOT EXISTS `bead` (
  `idbead` int(11) NOT NULL AUTO_INCREMENT,
  `stock` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `material_idmaterial` varchar(15) NOT NULL,
  PRIMARY KEY (`idbead`),
  KEY `fk_bead_material1` (`material_idmaterial`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `bead`
--

INSERT INTO `bead` (`idbead`, `stock`, `status`, `material_idmaterial`) VALUES
(1, '2', 'Full', 'GU001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `belt`
--

DROP TABLE IF EXISTS `belt`;
CREATE TABLE IF NOT EXISTS `belt` (
  `idbelt` int(11) NOT NULL AUTO_INCREMENT,
  `stock` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `material_idmaterial` varchar(15) NOT NULL,
  PRIMARY KEY (`idbelt`),
  KEY `fk_belt_material1` (`material_idmaterial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `carcass`
--

DROP TABLE IF EXISTS `carcass`;
CREATE TABLE IF NOT EXISTS `carcass` (
  `idcarcass` int(11) NOT NULL AUTO_INCREMENT,
  `stok` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `material_idmaterial` varchar(15) NOT NULL,
  PRIMARY KEY (`idcarcass`),
  KEY `fk_carcass_material1` (`material_idmaterial`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `carcass`
--

INSERT INTO `carcass` (`idcarcass`, `stok`, `status`, `material_idmaterial`) VALUES
(1, '1', 'Remain', 'FR001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `group_shift`
--

DROP TABLE IF EXISTS `group_shift`;
CREATE TABLE IF NOT EXISTS `group_shift` (
  `idgroup_shift` varchar(10) NOT NULL,
  `nama_group` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idgroup_shift`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `group_shift`
--

INSERT INTO `group_shift` (`idgroup_shift`, `nama_group`) VALUES
('A', 'Group A'),
('B', 'Group B'),
('C', 'Group C'),
('D', 'Group D');

-- --------------------------------------------------------

--
-- Struktur dari tabel `innerliner`
--

DROP TABLE IF EXISTS `innerliner`;
CREATE TABLE IF NOT EXISTS `innerliner` (
  `idinnerliner` int(11) NOT NULL AUTO_INCREMENT,
  `stock` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `material_idmaterial` varchar(15) NOT NULL,
  PRIMARY KEY (`idinnerliner`),
  KEY `fk_innerliner_material1` (`material_idmaterial`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `innerliner`
--

INSERT INTO `innerliner` (`idinnerliner`, `stock`, `status`, `material_idmaterial`) VALUES
(1, '3', 'Full', 'FY001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jlb`
--

DROP TABLE IF EXISTS `jlb`;
CREATE TABLE IF NOT EXISTS `jlb` (
  `idjlb` int(11) NOT NULL AUTO_INCREMENT,
  `stock` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `material_idmaterial` varchar(15) NOT NULL,
  PRIMARY KEY (`idjlb`),
  KEY `fk_jlb_material1` (`material_idmaterial`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `jlb`
--

INSERT INTO `jlb` (`idjlb`, `stock`, `status`, `material_idmaterial`) VALUES
(1, '1', 'Full', 'FX124');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(45) NOT NULL,
  `level` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `level`) VALUES
(1, 'damas', '123456', 'admin'),
(2, 'owi', '123456', 'member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `material`
--

DROP TABLE IF EXISTS `material`;
CREATE TABLE IF NOT EXISTS `material` (
  `idmaterial` varchar(15) NOT NULL,
  `nama_material` varchar(45) DEFAULT NULL,
  `spectire_idspectire` varchar(40) NOT NULL,
  PRIMARY KEY (`idmaterial`),
  KEY `spectire_idspectire` (`spectire_idspectire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `material`
--

INSERT INTO `material` (`idmaterial`, `nama_material`, `spectire_idspectire`) VALUES
('DN001', 'Sidewall', '225/45R17V H452 LBI'),
('DR001', 'Tread', '225/45R17V H452 LBI'),
('FH001', 'Belt 1', '225/45R17V H452 LBI'),
('FR001', 'Carcass 1', '225/45R17V H452 LBI'),
('FW001', 'Carcass 2', '225/45R17V H452 LBI'),
('FX001', 'Belt 2', '225/45R17V H452 LBI'),
('FX124', 'Jlb', '225/45R17V H452 LBI'),
('FY001', 'Inner liner', '225/45R17V H452 LBI'),
('GU001', 'Bead', '225/45R17V H452 LBI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `plan_produksi`
--

DROP TABLE IF EXISTS `plan_produksi`;
CREATE TABLE IF NOT EXISTS `plan_produksi` (
  `id_planproduksi` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `jumlah` varchar(45) DEFAULT NULL,
  `seqwen` varchar(45) NOT NULL,
  `group_shift_idgroup_shift` varchar(10) NOT NULL,
  `spectire_idspectire` varchar(40) NOT NULL,
  `shift_idshift` int(11) NOT NULL,
  `sidewall` varchar(45) DEFAULT NULL,
  `innerliner` varchar(45) DEFAULT NULL,
  `carcass1` varchar(45) DEFAULT NULL,
  `carcass2` varchar(45) DEFAULT NULL,
  `belt1` varchar(45) DEFAULT NULL,
  `belt2` varchar(45) DEFAULT NULL,
  `jlb` varchar(45) DEFAULT NULL,
  `tread` varchar(45) DEFAULT NULL,
  `bead` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_planproduksi`),
  KEY `fk_plan_produksi_group_shift1` (`group_shift_idgroup_shift`),
  KEY `fk_plan_produksi_spectire1` (`spectire_idspectire`),
  KEY `fk_plan_produksi_shift2` (`shift_idshift`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `plan_produksi`
--

INSERT INTO `plan_produksi` (`id_planproduksi`, `tanggal`, `jumlah`, `seqwen`, `group_shift_idgroup_shift`, `spectire_idspectire`, `shift_idshift`, `sidewall`, `innerliner`, `carcass1`, `carcass2`, `belt1`, `belt2`, `jlb`, `tread`, `bead`) VALUES
(1, '2020-01-09', '100', '1', 'A', '225/45R17V H452 LBI', 1, 'DN001', 'FY001', 'FR001', 'FW001', 'FH001', 'FX001', 'FX124', 'DR001', 'GU001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shift`
--

DROP TABLE IF EXISTS `shift`;
CREATE TABLE IF NOT EXISTS `shift` (
  `idshift` int(11) NOT NULL,
  `nama_shift` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idshift`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `shift`
--

INSERT INTO `shift` (`idshift`, `nama_shift`) VALUES
(1, 'Shift 1'),
(2, 'Shift 2'),
(3, 'Shift 3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sidewall`
--

DROP TABLE IF EXISTS `sidewall`;
CREATE TABLE IF NOT EXISTS `sidewall` (
  `idsidewall` int(11) NOT NULL AUTO_INCREMENT,
  `stock` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `material_idmaterial` varchar(15) NOT NULL,
  PRIMARY KEY (`idsidewall`),
  KEY `fk_kanbansidewall_material1` (`material_idmaterial`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `sidewall`
--

INSERT INTO `sidewall` (`idsidewall`, `stock`, `status`, `material_idmaterial`) VALUES
(1, '2', 'Full', 'DN001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `spectire`
--

DROP TABLE IF EXISTS `spectire`;
CREATE TABLE IF NOT EXISTS `spectire` (
  `idspectire` varchar(40) NOT NULL,
  `nama_tire` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idspectire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `spectire`
--

INSERT INTO `spectire` (`idspectire`, `nama_tire`) VALUES
('225/45R17V H452 LBI', 'Ventus Prime '),
('245/50R18Y H457  LBI', 'Ventus Evo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tread`
--

DROP TABLE IF EXISTS `tread`;
CREATE TABLE IF NOT EXISTS `tread` (
  `idtread` int(11) NOT NULL,
  `stock` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `material_idmaterial` varchar(15) NOT NULL,
  PRIMARY KEY (`idtread`),
  KEY `fk_tread_material1` (`material_idmaterial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tread`
--

INSERT INTO `tread` (`idtread`, `stock`, `status`, `material_idmaterial`) VALUES
(0, '1', 'Full', 'DR001');

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bead`
--
ALTER TABLE `bead`
  ADD CONSTRAINT `fk_bead_material1` FOREIGN KEY (`material_idmaterial`) REFERENCES `material` (`idmaterial`);

--
-- Ketidakleluasaan untuk tabel `belt`
--
ALTER TABLE `belt`
  ADD CONSTRAINT `fk_belt_material1` FOREIGN KEY (`material_idmaterial`) REFERENCES `material` (`idmaterial`);

--
-- Ketidakleluasaan untuk tabel `carcass`
--
ALTER TABLE `carcass`
  ADD CONSTRAINT `fk_carcass_material1` FOREIGN KEY (`material_idmaterial`) REFERENCES `material` (`idmaterial`);

--
-- Ketidakleluasaan untuk tabel `innerliner`
--
ALTER TABLE `innerliner`
  ADD CONSTRAINT `fk_innerliner_material1` FOREIGN KEY (`material_idmaterial`) REFERENCES `material` (`idmaterial`);

--
-- Ketidakleluasaan untuk tabel `jlb`
--
ALTER TABLE `jlb`
  ADD CONSTRAINT `fk_jlb_material1` FOREIGN KEY (`material_idmaterial`) REFERENCES `material` (`idmaterial`);

--
-- Ketidakleluasaan untuk tabel `material`
--
ALTER TABLE `material`
  ADD CONSTRAINT `material_ibfk_1` FOREIGN KEY (`spectire_idspectire`) REFERENCES `spectire` (`idspectire`);

--
-- Ketidakleluasaan untuk tabel `plan_produksi`
--
ALTER TABLE `plan_produksi`
  ADD CONSTRAINT `fk_plan_produksi_group_shift1` FOREIGN KEY (`group_shift_idgroup_shift`) REFERENCES `group_shift` (`idgroup_shift`),
  ADD CONSTRAINT `fk_plan_produksi_shift2` FOREIGN KEY (`shift_idshift`) REFERENCES `shift` (`idshift`),
  ADD CONSTRAINT `fk_plan_produksi_spectire1` FOREIGN KEY (`spectire_idspectire`) REFERENCES `spectire` (`idspectire`);

--
-- Ketidakleluasaan untuk tabel `sidewall`
--
ALTER TABLE `sidewall`
  ADD CONSTRAINT `fk_kanbansidewall_material1` FOREIGN KEY (`material_idmaterial`) REFERENCES `material` (`idmaterial`);

--
-- Ketidakleluasaan untuk tabel `tread`
--
ALTER TABLE `tread`
  ADD CONSTRAINT `fk_tread_material1` FOREIGN KEY (`material_idmaterial`) REFERENCES `material` (`idmaterial`);
--
-- Database: `kanboard`
--
CREATE DATABASE IF NOT EXISTS `kanboard` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `kanboard`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `actions`
--

DROP TABLE IF EXISTS `actions`;
CREATE TABLE IF NOT EXISTS `actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `event_name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `action_has_params`
--

DROP TABLE IF EXISTS `action_has_params`;
CREATE TABLE IF NOT EXISTS `action_has_params` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_id` int(11) NOT NULL,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `action_id` (`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `columns`
--

DROP TABLE IF EXISTS `columns`;
CREATE TABLE IF NOT EXISTS `columns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `task_limit` int(11) DEFAULT 0,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hide_in_dashboard` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_title_project` (`title`,`project_id`),
  KEY `columns_project_idx` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `columns`
--

INSERT INTO `columns` (`id`, `title`, `position`, `project_id`, `task_limit`, `description`, `hide_in_dashboard`) VALUES
(37, 'BACKLOG', 1, 10, 0, '', 0),
(38, 'SIAP', 2, 10, 0, '', 0),
(39, 'SEDANG DALAM PENGERJAAN', 3, 10, 0, '', 0),
(40, 'FINISH', 4, 10, 0, '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `column_has_move_restrictions`
--

DROP TABLE IF EXISTS `column_has_move_restrictions`;
CREATE TABLE IF NOT EXISTS `column_has_move_restrictions` (
  `restriction_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `src_column_id` int(11) NOT NULL,
  `dst_column_id` int(11) NOT NULL,
  `only_assigned` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`restriction_id`),
  UNIQUE KEY `role_id` (`role_id`,`src_column_id`,`dst_column_id`),
  KEY `project_id` (`project_id`),
  KEY `src_column_id` (`src_column_id`),
  KEY `dst_column_id` (`dst_column_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `column_has_restrictions`
--

DROP TABLE IF EXISTS `column_has_restrictions`;
CREATE TABLE IF NOT EXISTS `column_has_restrictions` (
  `restriction_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `column_id` int(11) NOT NULL,
  `rule` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`restriction_id`),
  UNIQUE KEY `role_id` (`role_id`,`column_id`,`rule`),
  KEY `project_id` (`project_id`),
  KEY `column_id` (`column_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT 0,
  `date_creation` bigint(20) DEFAULT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `date_modification` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `comments_reference_idx` (`reference`),
  KEY `comments_task_idx` (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `currencies`
--

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE IF NOT EXISTS `currencies` (
  `currency` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` float DEFAULT 0,
  UNIQUE KEY `currency` (`currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `custom_filters`
--

DROP TABLE IF EXISTS `custom_filters`;
CREATE TABLE IF NOT EXISTS `custom_filters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_shared` tinyint(1) DEFAULT 0,
  `append` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `external_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `external_id`, `name`) VALUES
(1, '', 'A'),
(2, '', 'B'),
(3, '', 'C'),
(4, '', 'D');

-- --------------------------------------------------------

--
-- Struktur dari tabel `group_has_users`
--

DROP TABLE IF EXISTS `group_has_users`;
CREATE TABLE IF NOT EXISTS `group_has_users` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  UNIQUE KEY `group_id` (`group_id`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `group_has_users`
--

INSERT INTO `group_has_users` (`group_id`, `user_id`) VALUES
(1, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `invites`
--

DROP TABLE IF EXISTS `invites`;
CREATE TABLE IF NOT EXISTS `invites` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`email`,`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `last_logins`
--

DROP TABLE IF EXISTS `last_logins`;
CREATE TABLE IF NOT EXISTS `last_logins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auth_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_creation` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `last_logins`
--

INSERT INTO `last_logins` (`id`, `auth_type`, `user_id`, `ip`, `user_agent`, `date_creation`) VALUES
(2, 'Database', 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 1579890900),
(3, 'Database', 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 1579890915),
(4, 'Database', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 1579890930),
(5, 'Database', 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 1579919452),
(6, 'Database', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 1579919531),
(7, 'Database', 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36', 1579919688),
(8, 'RememberMe', 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 1580105500),
(9, 'Database', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 1580105824),
(10, 'RememberMe', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 1580182477),
(11, 'RememberMe', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 1580300977),
(12, 'Database', 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 1580301225),
(13, 'Database', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 1580301314),
(14, 'Database', 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 1580301746),
(15, 'Database', 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 1580301793),
(16, 'Database', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 1580302583),
(17, 'Database', 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 1580304292),
(18, 'Database', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 1580306373),
(19, 'Database', 2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 1580306749),
(20, 'Database', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 1580308507),
(21, 'Database', 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 1580308611),
(22, 'Database', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.92 Safari/537.36', 1591017972);

-- --------------------------------------------------------

--
-- Struktur dari tabel `links`
--

DROP TABLE IF EXISTS `links`;
CREATE TABLE IF NOT EXISTS `links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opposite_id` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `label` (`label`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `links`
--

INSERT INTO `links` (`id`, `label`, `opposite_id`) VALUES
(1, 'relates to', 0),
(2, 'blocks', 3),
(3, 'is blocked by', 2),
(4, 'duplicates', 5),
(5, 'is duplicated by', 4),
(6, 'is a child of', 7),
(7, 'is a parent of', 6),
(8, 'targets milestone', 9),
(9, 'is a milestone of', 8),
(10, 'fixes', 11),
(11, 'is fixed by', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset`
--

DROP TABLE IF EXISTS `password_reset`;
CREATE TABLE IF NOT EXISTS `password_reset` (
  `token` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_expiration` int(11) NOT NULL,
  `date_creation` int(11) NOT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`token`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `plugin_schema_versions`
--

DROP TABLE IF EXISTS `plugin_schema_versions`;
CREATE TABLE IF NOT EXISTS `plugin_schema_versions` (
  `plugin` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`plugin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `predefined_task_descriptions`
--

DROP TABLE IF EXISTS `predefined_task_descriptions`;
CREATE TABLE IF NOT EXISTS `predefined_task_descriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) DEFAULT 1,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_modified` bigint(20) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT 0,
  `is_private` tinyint(1) DEFAULT 0,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identifier` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `start_date` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `end_date` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `owner_id` int(11) DEFAULT 0,
  `priority_default` int(11) DEFAULT 0,
  `priority_start` int(11) DEFAULT 0,
  `priority_end` int(11) DEFAULT 3,
  `email` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `predefined_email_subjects` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `projects`
--

INSERT INTO `projects` (`id`, `name`, `is_active`, `token`, `last_modified`, `is_public`, `is_private`, `description`, `identifier`, `start_date`, `end_date`, `owner_id`, `priority_default`, `priority_start`, `priority_end`, `email`, `predefined_email_subjects`) VALUES
(10, 'H1201A', 1, '', 1580308292, 0, 1, NULL, '', '', '', 2, 0, 0, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `project_activities`
--

DROP TABLE IF EXISTS `project_activities`;
CREATE TABLE IF NOT EXISTS `project_activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_creation` bigint(20) DEFAULT NULL,
  `event_name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `creator_id` (`creator_id`),
  KEY `project_id` (`project_id`),
  KEY `task_id` (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `project_activities`
--

INSERT INTO `project_activities` (`id`, `date_creation`, `event_name`, `creator_id`, `project_id`, `task_id`, `data`) VALUES
(42, 1580307555, 'task.create', 2, 10, 23, '{\"task_id\":23,\"task\":{\"id\":\"23\",\"title\":\"225\\/45R17V H452 LBI\",\"description\":\"\",\"date_creation\":\"1580307555\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"10\",\"column_id\":\"37\",\"owner_id\":\"2\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"2\",\"date_modification\":\"1580307555\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"18\",\"date_moved\":\"1580307555\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"SPEC\",\"project_name\":\"H1201A\",\"column_title\":\"BACKLOG\",\"assignee_username\":\"mahardi\",\"assignee_name\":\"mahardidamas\",\"creator_username\":\"mahardi\",\"creator_name\":\"mahardidamas\",\"category_description\":null,\"column_position\":\"1\"}}'),
(43, 1580307583, 'task.create', 2, 10, 24, '{\"task_id\":24,\"task\":{\"id\":\"24\",\"title\":\"245\\/50R17W H452 LBI\",\"description\":\"\",\"date_creation\":\"1580307582\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"10\",\"column_id\":\"37\",\"owner_id\":\"2\",\"position\":\"2\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"2\",\"date_modification\":\"1580307582\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"18\",\"date_moved\":\"1580307582\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"SPEC\",\"project_name\":\"H1201A\",\"column_title\":\"BACKLOG\",\"assignee_username\":\"mahardi\",\"assignee_name\":\"mahardidamas\",\"creator_username\":\"mahardi\",\"creator_name\":\"mahardidamas\",\"category_description\":null,\"column_position\":\"1\"}}'),
(44, 1580307671, 'task.move.column', 2, 10, 23, '{\"task_id\":\"23\",\"task\":{\"id\":\"23\",\"title\":\"225\\/45R17V H452 LBI\",\"description\":\"\",\"date_creation\":\"1580307555\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"10\",\"column_id\":\"38\",\"owner_id\":\"2\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"2\",\"date_modification\":\"1580307670\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"18\",\"date_moved\":\"1580307670\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"SPEC\",\"project_name\":\"H1201A\",\"column_title\":\"SIAP\",\"assignee_username\":\"mahardi\",\"assignee_name\":\"mahardidamas\",\"creator_username\":\"mahardi\",\"creator_name\":\"mahardidamas\",\"category_description\":null,\"column_position\":\"2\"},\"changes\":{\"src_column_id\":\"37\",\"dst_column_id\":\"38\",\"date_moved\":\"1580307555\"},\"project_id\":\"10\",\"position\":1,\"column_id\":\"38\",\"swimlane_id\":\"18\",\"src_column_id\":\"37\",\"dst_column_id\":\"38\",\"date_moved\":\"1580307555\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),
(45, 1580307678, 'task.move.column', 2, 10, 23, '{\"task_id\":\"23\",\"task\":{\"id\":\"23\",\"title\":\"225\\/45R17V H452 LBI\",\"description\":\"\",\"date_creation\":\"1580307555\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"10\",\"column_id\":\"39\",\"owner_id\":\"2\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"2\",\"date_modification\":\"1580307677\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"18\",\"date_moved\":\"1580307677\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"SPEC\",\"project_name\":\"H1201A\",\"column_title\":\"SEDANG DALAM PENGERJAAN\",\"assignee_username\":\"mahardi\",\"assignee_name\":\"mahardidamas\",\"creator_username\":\"mahardi\",\"creator_name\":\"mahardidamas\",\"category_description\":null,\"column_position\":\"3\"},\"changes\":{\"src_column_id\":\"38\",\"dst_column_id\":\"39\",\"date_moved\":\"1580307670\"},\"project_id\":\"10\",\"position\":1,\"column_id\":\"39\",\"swimlane_id\":\"18\",\"src_column_id\":\"38\",\"dst_column_id\":\"39\",\"date_moved\":\"1580307670\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),
(46, 1580307680, 'task.move.column', 2, 10, 24, '{\"task_id\":\"24\",\"task\":{\"id\":\"24\",\"title\":\"245\\/50R17W H452 LBI\",\"description\":\"\",\"date_creation\":\"1580307582\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"10\",\"column_id\":\"38\",\"owner_id\":\"2\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"2\",\"date_modification\":\"1580307679\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"18\",\"date_moved\":\"1580307679\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"SPEC\",\"project_name\":\"H1201A\",\"column_title\":\"SIAP\",\"assignee_username\":\"mahardi\",\"assignee_name\":\"mahardidamas\",\"creator_username\":\"mahardi\",\"creator_name\":\"mahardidamas\",\"category_description\":null,\"column_position\":\"2\"},\"changes\":{\"src_column_id\":\"37\",\"dst_column_id\":\"38\",\"date_moved\":\"1580307582\"},\"project_id\":\"10\",\"position\":1,\"column_id\":\"38\",\"swimlane_id\":\"18\",\"src_column_id\":\"37\",\"dst_column_id\":\"38\",\"date_moved\":\"1580307582\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),
(47, 1580307757, 'task.create', 2, 10, 25, '{\"task_id\":25,\"task\":{\"id\":\"25\",\"title\":\"215\\/40R17W H452 LBI\",\"description\":\"\",\"date_creation\":\"1580307756\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"10\",\"column_id\":\"37\",\"owner_id\":\"2\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"2\",\"date_modification\":\"1580307756\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"18\",\"date_moved\":\"1580307756\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"SPEC\",\"project_name\":\"H1201A\",\"column_title\":\"BACKLOG\",\"assignee_username\":\"mahardi\",\"assignee_name\":\"mahardidamas\",\"creator_username\":\"mahardi\",\"creator_name\":\"mahardidamas\",\"category_description\":null,\"column_position\":\"1\"}}'),
(48, 1580307773, 'task.create', 2, 10, 26, '{\"task_id\":26,\"task\":{\"id\":\"26\",\"title\":\"DN001\",\"description\":\"\",\"date_creation\":\"1580307773\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"red\",\"project_id\":\"10\",\"column_id\":\"39\",\"owner_id\":\"2\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"2\",\"date_modification\":\"1580307773\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"17\",\"date_moved\":\"1580307773\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"MATERIAL\",\"project_name\":\"H1201A\",\"column_title\":\"SEDANG DALAM PENGERJAAN\",\"assignee_username\":\"mahardi\",\"assignee_name\":\"mahardidamas\",\"creator_username\":\"mahardi\",\"creator_name\":\"mahardidamas\",\"category_description\":null,\"column_position\":\"3\"}}'),
(49, 1580307783, 'task.create', 2, 10, 27, '{\"task_id\":27,\"task\":{\"id\":\"27\",\"title\":\"FY001\",\"description\":\"\",\"date_creation\":\"1580307783\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"10\",\"column_id\":\"39\",\"owner_id\":\"2\",\"position\":\"2\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"2\",\"date_modification\":\"1580307783\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"17\",\"date_moved\":\"1580307783\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"MATERIAL\",\"project_name\":\"H1201A\",\"column_title\":\"SEDANG DALAM PENGERJAAN\",\"assignee_username\":\"mahardi\",\"assignee_name\":\"mahardidamas\",\"creator_username\":\"mahardi\",\"creator_name\":\"mahardidamas\",\"category_description\":null,\"column_position\":\"3\"}}'),
(50, 1580307844, 'task.create', 2, 10, 28, '{\"task_id\":28,\"task\":{\"id\":\"28\",\"title\":\"FH001\",\"description\":\"\",\"date_creation\":\"1580307844\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"green\",\"project_id\":\"10\",\"column_id\":\"39\",\"owner_id\":\"2\",\"position\":\"3\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"2\",\"date_modification\":\"1580307844\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"17\",\"date_moved\":\"1580307844\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"MATERIAL\",\"project_name\":\"H1201A\",\"column_title\":\"SEDANG DALAM PENGERJAAN\",\"assignee_username\":\"mahardi\",\"assignee_name\":\"mahardidamas\",\"creator_username\":\"mahardi\",\"creator_name\":\"mahardidamas\",\"category_description\":null,\"column_position\":\"3\"}}'),
(51, 1580307900, 'task.create', 2, 10, 29, '{\"task_id\":29,\"task\":{\"id\":\"29\",\"title\":\"FX002\",\"description\":\"\",\"date_creation\":\"1580307900\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"green\",\"project_id\":\"10\",\"column_id\":\"39\",\"owner_id\":\"2\",\"position\":\"4\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"2\",\"date_modification\":\"1580307900\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"17\",\"date_moved\":\"1580307900\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"MATERIAL\",\"project_name\":\"H1201A\",\"column_title\":\"SEDANG DALAM PENGERJAAN\",\"assignee_username\":\"mahardi\",\"assignee_name\":\"mahardidamas\",\"creator_username\":\"mahardi\",\"creator_name\":\"mahardidamas\",\"category_description\":null,\"column_position\":\"3\"}}'),
(52, 1580307959, 'task.create', 2, 10, 30, '{\"task_id\":30,\"task\":{\"id\":\"30\",\"title\":\"FX023\",\"description\":\"\",\"date_creation\":\"1580307959\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"blue\",\"project_id\":\"10\",\"column_id\":\"39\",\"owner_id\":\"2\",\"position\":\"5\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"2\",\"date_modification\":\"1580307959\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"17\",\"date_moved\":\"1580307959\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"MATERIAL\",\"project_name\":\"H1201A\",\"column_title\":\"SEDANG DALAM PENGERJAAN\",\"assignee_username\":\"mahardi\",\"assignee_name\":\"mahardidamas\",\"creator_username\":\"mahardi\",\"creator_name\":\"mahardidamas\",\"category_description\":null,\"column_position\":\"3\"}}'),
(53, 1580307970, 'task.create', 2, 10, 31, '{\"task_id\":31,\"task\":{\"id\":\"31\",\"title\":\"FR0002\",\"description\":\"\",\"date_creation\":\"1580307970\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"blue\",\"project_id\":\"10\",\"column_id\":\"39\",\"owner_id\":\"2\",\"position\":\"6\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"2\",\"date_modification\":\"1580307970\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"17\",\"date_moved\":\"1580307970\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"MATERIAL\",\"project_name\":\"H1201A\",\"column_title\":\"SEDANG DALAM PENGERJAAN\",\"assignee_username\":\"mahardi\",\"assignee_name\":\"mahardidamas\",\"creator_username\":\"mahardi\",\"creator_name\":\"mahardidamas\",\"category_description\":null,\"column_position\":\"3\"}}'),
(54, 1580307973, 'task.move.position', 2, 10, 30, '{\"task_id\":\"30\",\"task\":{\"id\":\"30\",\"title\":\"FX023\",\"description\":\"\",\"date_creation\":\"1580307959\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"blue\",\"project_id\":\"10\",\"column_id\":\"39\",\"owner_id\":\"2\",\"position\":\"3\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"2\",\"date_modification\":\"1580307959\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"17\",\"date_moved\":\"1580307959\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"MATERIAL\",\"project_name\":\"H1201A\",\"column_title\":\"SEDANG DALAM PENGERJAAN\",\"assignee_username\":\"mahardi\",\"assignee_name\":\"mahardidamas\",\"creator_username\":\"mahardi\",\"creator_name\":\"mahardidamas\",\"category_description\":null,\"column_position\":\"3\"},\"changes\":{\"src_column_id\":\"39\",\"dst_column_id\":\"39\"},\"project_id\":\"10\",\"position\":3,\"column_id\":\"39\",\"swimlane_id\":\"17\",\"src_column_id\":\"39\",\"dst_column_id\":\"39\",\"date_moved\":\"1580307959\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),
(55, 1580307974, 'task.move.position', 2, 10, 31, '{\"task_id\":\"31\",\"task\":{\"id\":\"31\",\"title\":\"FR0002\",\"description\":\"\",\"date_creation\":\"1580307970\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"blue\",\"project_id\":\"10\",\"column_id\":\"39\",\"owner_id\":\"2\",\"position\":\"4\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"2\",\"date_modification\":\"1580307970\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"17\",\"date_moved\":\"1580307970\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"MATERIAL\",\"project_name\":\"H1201A\",\"column_title\":\"SEDANG DALAM PENGERJAAN\",\"assignee_username\":\"mahardi\",\"assignee_name\":\"mahardidamas\",\"creator_username\":\"mahardi\",\"creator_name\":\"mahardidamas\",\"category_description\":null,\"column_position\":\"3\"},\"changes\":{\"src_column_id\":\"39\",\"dst_column_id\":\"39\"},\"project_id\":\"10\",\"position\":4,\"column_id\":\"39\",\"swimlane_id\":\"17\",\"src_column_id\":\"39\",\"dst_column_id\":\"39\",\"date_moved\":\"1580307970\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\"}'),
(56, 1580308119, 'task.create', 2, 10, 32, '{\"task_id\":32,\"task\":{\"id\":\"32\",\"title\":\"FX124\",\"description\":\"\",\"date_creation\":\"1580308119\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"deep_orange\",\"project_id\":\"10\",\"column_id\":\"39\",\"owner_id\":\"2\",\"position\":\"7\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"2\",\"date_modification\":\"1580308119\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"17\",\"date_moved\":\"1580308119\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"MATERIAL\",\"project_name\":\"H1201A\",\"column_title\":\"SEDANG DALAM PENGERJAAN\",\"assignee_username\":\"mahardi\",\"assignee_name\":\"mahardidamas\",\"creator_username\":\"mahardi\",\"creator_name\":\"mahardidamas\",\"category_description\":null,\"column_position\":\"3\"}}'),
(57, 1580308132, 'task.create', 2, 10, 33, '{\"task_id\":33,\"task\":{\"id\":\"33\",\"title\":\"DR001\",\"description\":\"\",\"date_creation\":\"1580308132\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"red\",\"project_id\":\"10\",\"column_id\":\"39\",\"owner_id\":\"2\",\"position\":\"8\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"2\",\"date_modification\":\"1580308132\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"17\",\"date_moved\":\"1580308132\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"MATERIAL\",\"project_name\":\"H1201A\",\"column_title\":\"SEDANG DALAM PENGERJAAN\",\"assignee_username\":\"mahardi\",\"assignee_name\":\"mahardidamas\",\"creator_username\":\"mahardi\",\"creator_name\":\"mahardidamas\",\"category_description\":null,\"column_position\":\"3\"}}'),
(58, 1580308147, 'task.create', 2, 10, 34, '{\"task_id\":34,\"task\":{\"id\":\"34\",\"title\":\"GU001\",\"description\":\"\",\"date_creation\":\"1580308146\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"grey\",\"project_id\":\"10\",\"column_id\":\"39\",\"owner_id\":\"2\",\"position\":\"9\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"2\",\"date_modification\":\"1580308146\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"17\",\"date_moved\":\"1580308146\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"MATERIAL\",\"project_name\":\"H1201A\",\"column_title\":\"SEDANG DALAM PENGERJAAN\",\"assignee_username\":\"mahardi\",\"assignee_name\":\"mahardidamas\",\"creator_username\":\"mahardi\",\"creator_name\":\"mahardidamas\",\"category_description\":null,\"column_position\":\"3\"}}'),
(59, 1580308285, 'task.create', 2, 10, 35, '{\"task_id\":35,\"task\":{\"id\":\"35\",\"title\":\"DN002\",\"description\":\"\",\"date_creation\":\"1580308285\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"red\",\"project_id\":\"10\",\"column_id\":\"38\",\"owner_id\":\"2\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"2\",\"date_modification\":\"1580308285\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"17\",\"date_moved\":\"1580308285\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"MATERIAL\",\"project_name\":\"H1201A\",\"column_title\":\"SIAP\",\"assignee_username\":\"mahardi\",\"assignee_name\":\"mahardidamas\",\"creator_username\":\"mahardi\",\"creator_name\":\"mahardidamas\",\"category_description\":null,\"column_position\":\"2\"}}'),
(60, 1580308292, 'task.create', 2, 10, 36, '{\"task_id\":36,\"task\":{\"id\":\"36\",\"title\":\"FY031\",\"description\":\"\",\"date_creation\":\"1580308292\",\"date_completed\":null,\"date_due\":\"0\",\"color_id\":\"yellow\",\"project_id\":\"10\",\"column_id\":\"37\",\"owner_id\":\"2\",\"position\":\"1\",\"score\":\"0\",\"is_active\":\"1\",\"category_id\":\"0\",\"creator_id\":\"2\",\"date_modification\":\"1580308292\",\"reference\":\"\",\"date_started\":\"0\",\"time_spent\":\"0\",\"time_estimated\":\"0\",\"swimlane_id\":\"17\",\"date_moved\":\"1580308292\",\"recurrence_status\":\"0\",\"recurrence_trigger\":\"0\",\"recurrence_factor\":\"0\",\"recurrence_timeframe\":\"0\",\"recurrence_basedate\":\"0\",\"recurrence_parent\":null,\"recurrence_child\":null,\"priority\":\"0\",\"external_provider\":null,\"external_uri\":null,\"category_name\":null,\"swimlane_name\":\"MATERIAL\",\"project_name\":\"H1201A\",\"column_title\":\"BACKLOG\",\"assignee_username\":\"mahardi\",\"assignee_name\":\"mahardidamas\",\"creator_username\":\"mahardi\",\"creator_name\":\"mahardidamas\",\"category_description\":null,\"column_position\":\"1\"}}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `project_daily_column_stats`
--

DROP TABLE IF EXISTS `project_daily_column_stats`;
CREATE TABLE IF NOT EXISTS `project_daily_column_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `column_id` int(11) NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `score` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_daily_column_stats_idx` (`day`,`project_id`,`column_id`),
  KEY `column_id` (`column_id`),
  KEY `project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `project_daily_column_stats`
--

INSERT INTO `project_daily_column_stats` (`id`, `day`, `project_id`, `column_id`, `total`, `score`) VALUES
(104, '2020-01-29', 10, 37, 2, 0),
(105, '2020-01-29', 10, 38, 2, 0),
(106, '2020-01-29', 10, 39, 10, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `project_daily_stats`
--

DROP TABLE IF EXISTS `project_daily_stats`;
CREATE TABLE IF NOT EXISTS `project_daily_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `avg_lead_time` int(11) NOT NULL DEFAULT 0,
  `avg_cycle_time` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_daily_stats_idx` (`day`,`project_id`),
  KEY `project_id` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `project_daily_stats`
--

INSERT INTO `project_daily_stats` (`id`, `day`, `project_id`, `avg_lead_time`, `avg_cycle_time`) VALUES
(55, '2020-01-29', 10, 356, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `project_has_categories`
--

DROP TABLE IF EXISTS `project_has_categories`;
CREATE TABLE IF NOT EXISTS `project_has_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_project_category` (`project_id`,`name`),
  KEY `categories_project_idx` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `project_has_files`
--

DROP TABLE IF EXISTS `project_has_files`;
CREATE TABLE IF NOT EXISTS `project_has_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_image` tinyint(1) DEFAULT 0,
  `size` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `project_has_groups`
--

DROP TABLE IF EXISTS `project_has_groups`;
CREATE TABLE IF NOT EXISTS `project_has_groups` (
  `group_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `group_id` (`group_id`,`project_id`),
  KEY `project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `project_has_metadata`
--

DROP TABLE IF EXISTS `project_has_metadata`;
CREATE TABLE IF NOT EXISTS `project_has_metadata` (
  `project_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `changed_by` int(11) NOT NULL DEFAULT 0,
  `changed_on` int(11) NOT NULL DEFAULT 0,
  UNIQUE KEY `project_id` (`project_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `project_has_notification_types`
--

DROP TABLE IF EXISTS `project_has_notification_types`;
CREATE TABLE IF NOT EXISTS `project_has_notification_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `notification_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_id` (`project_id`,`notification_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `project_has_roles`
--

DROP TABLE IF EXISTS `project_has_roles`;
CREATE TABLE IF NOT EXISTS `project_has_roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `project_id` (`project_id`,`role`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `project_has_users`
--

DROP TABLE IF EXISTS `project_has_users`;
CREATE TABLE IF NOT EXISTS `project_has_users` (
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `idx_project_user` (`project_id`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `project_has_users`
--

INSERT INTO `project_has_users` (`project_id`, `user_id`, `role`) VALUES
(10, 2, 'project-manager');

-- --------------------------------------------------------

--
-- Struktur dari tabel `project_role_has_restrictions`
--

DROP TABLE IF EXISTS `project_role_has_restrictions`;
CREATE TABLE IF NOT EXISTS `project_role_has_restrictions` (
  `restriction_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `rule` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`restriction_id`),
  UNIQUE KEY `role_id` (`role_id`,`rule`),
  KEY `project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `remember_me`
--

DROP TABLE IF EXISTS `remember_me`;
CREATE TABLE IF NOT EXISTS `remember_me` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sequence` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiration` int(11) DEFAULT NULL,
  `date_creation` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `remember_me`
--

INSERT INTO `remember_me` (`id`, `user_id`, `ip`, `user_agent`, `token`, `sequence`, `expiration`, `date_creation`) VALUES
(18, 3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', '6b9bf407e00875da107c03be1311d6dd127da131df3d5b8dc25f1dfdb1dbf529', 'b67f3f98c08e40198766e39da9cf68000c09af94b0f1109903c887e24a5f', 1585492611, 1580308611),
(19, 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.92 Safari/537.36', '1b702e6a5172365923d30fe848853f7ee2e0ea3cfbf1fd653e602bf261986529', '2cf8f56630db2f4bcd8de5554f7ff69b9d455def91e21fd62ae3e9762f3d', 1596201972, 1591017972);

-- --------------------------------------------------------

--
-- Struktur dari tabel `schema_version`
--

DROP TABLE IF EXISTS `schema_version`;
CREATE TABLE IF NOT EXISTS `schema_version` (
  `version` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `schema_version`
--

INSERT INTO `schema_version` (`version`) VALUES
(133);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_at` int(11) NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `expire_at`, `data`) VALUES
('5cvad26reasfgolonh5vevf3rr', 1580107246, 'csrf|a:1:{s:60:\"a47b36902cbe7d21094d089ee672e1f1f36aceb7db5e3abb768e4fa26181\";b:1;}'),
('cdr6t0gbfnlug1uk622l4br9ds', 1580310846, 'csrf|a:0:{}hasRememberMe|b:1;user|a:23:{s:2:\"id\";i:3;s:8:\"username\";s:5:\"damas\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:13:\"Damas Mahardi\";s:5:\"email\";s:15:\"damas@yahoo.com\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:8:\"app-user\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:0;hasSubtaskInProgress|b:0;'),
('fh56dsaepminm3qvpfvmrmqivu', 1580116377, 'csrf|a:0:{}hasRememberMe|b:1;user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";N;s:5:\"email\";N;s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";N;s:8:\"language\";N;s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"1\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";N;}postAuthenticationValidated|b:0;hasSubtaskInProgress|b:0;filters:1|s:11:\"status:open\";'),
('hhkil437begi2ggqtuhkfs05n9', 1591019798, 'csrf|a:0:{}hasRememberMe|b:1;user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";N;s:5:\"email\";N;s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";N;s:8:\"language\";N;s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";N;}postAuthenticationValidated|b:0;hasSubtaskInProgress|b:0;'),
('loajg3eb5ufmt2maceogem20lm', 1579933070, 'csrf|a:2:{s:60:\"508c37427f85d4e5d750ee4f0130e1b4afbcedab65fa3f7d72343a619fbb\";b:1;s:60:\"52c4d790ae6c85b2dfbc7ac6e93957a3f2a245ad0649ce8deb54a0155844\";b:1;}hasRememberMe|b:1;user|a:23:{s:2:\"id\";i:2;s:8:\"username\";s:7:\"mahardi\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";s:12:\"mahardidamas\";s:5:\"email\";s:0:\"\";s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";s:0:\"\";s:8:\"language\";s:0:\"\";s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:8:\"app-user\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";s:0:\"\";}postAuthenticationValidated|b:0;hasSubtaskInProgress|b:0;flash|a:0:{}filters:4|s:11:\"status:open\";filters:2|s:11:\"status:open\";filters:1|s:11:\"status:open\";'),
('rhfj62us938dcadae8undrbv9m', 1580252244, 'user|a:23:{s:2:\"id\";i:1;s:8:\"username\";s:5:\"admin\";s:12:\"is_ldap_user\";b:0;s:4:\"name\";N;s:5:\"email\";N;s:9:\"google_id\";N;s:9:\"github_id\";N;s:21:\"notifications_enabled\";s:1:\"0\";s:8:\"timezone\";N;s:8:\"language\";N;s:18:\"disable_login_form\";s:1:\"0\";s:19:\"twofactor_activated\";b:0;s:16:\"twofactor_secret\";N;s:5:\"token\";s:0:\"\";s:20:\"notifications_filter\";s:1:\"4\";s:15:\"nb_failed_login\";s:1:\"0\";s:20:\"lock_expiration_date\";s:1:\"0\";s:9:\"gitlab_id\";N;s:4:\"role\";s:9:\"app-admin\";s:9:\"is_active\";s:1:\"1\";s:11:\"avatar_path\";N;s:16:\"api_access_token\";N;s:6:\"filter\";N;}postAuthenticationValidated|b:1;hasSubtaskInProgress|b:0;filters:2|s:11:\"status:open\";filters:1|s:11:\"status:open\";filters:3|s:11:\"status:open\";csrf|a:8:{s:60:\"79ab06436ef9bff3d59b77c2ce5972e2785fe9bf3473c70fbc62a3ef96ff\";b:1;s:60:\"7ac1d8ae7abd3d5468060b5f15e6de5dd1a13367883a8834be0da6b9ba46\";b:1;s:60:\"d619230c4bef71ea6e0f78ccb13670cbbb55af0780e85026e66b5c40fb38\";b:1;s:60:\"cd7e40cd2c884c2437ef99c4865c596dc78c62294bae7be541d6ab7a4f5a\";b:1;s:60:\"afaca0eba6fcb1470ab0fe1ac47a061368bdf020044527be57a7aba56dcd\";b:1;s:60:\"b3f90d8097b8f254abd7727306fa1ebcb8d8762a0af602da6499b8a6977b\";b:1;s:60:\"a05d58acdd2997d2789a482b0666625e0862aff41893f5767a0ffa5bbce7\";b:1;s:60:\"b8910ff5f1759d734f66a5f1dd9ecfb18e2d11f2bf0f06635679caab31c0\";b:1;}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `changed_by` int(11) NOT NULL DEFAULT 0,
  `changed_on` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`option`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`option`, `value`, `changed_by`, `changed_on`) VALUES
('api_token', '0fde96ab43568a586f9e4ab95e6a38e7a955dcc6124a073f023e951a4197', 0, 0),
('application_currency', 'USD', 0, 0),
('application_date_format', 'm/d/Y', 1, 1579890846),
('application_language', 'id_ID', 1, 1579890846),
('application_stylesheet', '', 1, 1579890846),
('application_time_format', 'H:i', 1, 1579890846),
('application_timezone', 'UTC', 1, 1579890846),
('application_url', '', 1, 1579890846),
('board_columns', 'BACKLOG,SIAP,SEDANG DALAM PENGERJAAN,FINISH', 1, 1580306390),
('board_highlight_period', '172800', 0, 0),
('board_private_refresh_interval', '10', 0, 0),
('board_public_refresh_interval', '60', 0, 0),
('calendar_project_tasks', 'date_started', 0, 0),
('calendar_user_subtasks_time_tracking', '0', 0, 0),
('calendar_user_tasks', 'date_started', 0, 0),
('cfd_include_closed_tasks', '1', 1, 1580306390),
('default_color', 'yellow', 1, 1580306390),
('disable_private_project', '0', 1, 1580306390),
('integration_gravatar', '0', 0, 0),
('password_reset', '1', 1, 1579890846),
('project_categories', '', 1, 1580306390),
('subtask_restriction', '0', 1, 1580306390),
('subtask_time_tracking', '1', 1, 1580306390),
('webhook_token', 'b652b0d2d3e086025f8c3b6797f571b2139ea7bbfdca534f680ba7e41a32', 0, 0),
('webhook_url', '', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `subtasks`
--

DROP TABLE IF EXISTS `subtasks`;
CREATE TABLE IF NOT EXISTS `subtasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) DEFAULT 0,
  `time_estimated` float DEFAULT NULL,
  `time_spent` float DEFAULT NULL,
  `task_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `subtasks_task_idx` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `subtask_time_tracking`
--

DROP TABLE IF EXISTS `subtask_time_tracking`;
CREATE TABLE IF NOT EXISTS `subtask_time_tracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `subtask_id` int(11) NOT NULL,
  `start` bigint(20) DEFAULT NULL,
  `end` bigint(20) DEFAULT NULL,
  `time_spent` float DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `subtask_id` (`subtask_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `swimlanes`
--

DROP TABLE IF EXISTS `swimlanes`;
CREATE TABLE IF NOT EXISTS `swimlanes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) DEFAULT 1,
  `is_active` int(11) DEFAULT 1,
  `project_id` int(11) DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`project_id`),
  KEY `swimlanes_project_idx` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `swimlanes`
--

INSERT INTO `swimlanes` (`id`, `name`, `position`, `is_active`, `project_id`, `description`) VALUES
(17, 'MATERIAL', 2, 1, 10, ''),
(18, 'SPEC', 1, 1, 10, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `color_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `project_id` (`project_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tasks`
--

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_creation` bigint(20) DEFAULT NULL,
  `date_completed` bigint(20) DEFAULT NULL,
  `date_due` bigint(20) DEFAULT NULL,
  `color_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `column_id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT 0,
  `position` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT 1,
  `category_id` int(11) DEFAULT 0,
  `creator_id` int(11) DEFAULT 0,
  `date_modification` int(11) DEFAULT 0,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `date_started` bigint(20) DEFAULT NULL,
  `time_spent` float DEFAULT 0,
  `time_estimated` float DEFAULT 0,
  `swimlane_id` int(11) NOT NULL,
  `date_moved` bigint(20) DEFAULT NULL,
  `recurrence_status` int(11) NOT NULL DEFAULT 0,
  `recurrence_trigger` int(11) NOT NULL DEFAULT 0,
  `recurrence_factor` int(11) NOT NULL DEFAULT 0,
  `recurrence_timeframe` int(11) NOT NULL DEFAULT 0,
  `recurrence_basedate` int(11) NOT NULL DEFAULT 0,
  `recurrence_parent` int(11) DEFAULT NULL,
  `recurrence_child` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT 0,
  `external_provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_task_active` (`is_active`),
  KEY `column_id` (`column_id`),
  KEY `tasks_reference_idx` (`reference`),
  KEY `tasks_project_idx` (`project_id`),
  KEY `tasks_swimlane_ibfk_1` (`swimlane_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `date_creation`, `date_completed`, `date_due`, `color_id`, `project_id`, `column_id`, `owner_id`, `position`, `score`, `is_active`, `category_id`, `creator_id`, `date_modification`, `reference`, `date_started`, `time_spent`, `time_estimated`, `swimlane_id`, `date_moved`, `recurrence_status`, `recurrence_trigger`, `recurrence_factor`, `recurrence_timeframe`, `recurrence_basedate`, `recurrence_parent`, `recurrence_child`, `priority`, `external_provider`, `external_uri`) VALUES
(23, '225/45R17V H452 LBI', '', 1580307555, NULL, 0, 'yellow', 10, 39, 2, 1, 0, 1, 0, 2, 1580307677, '', 0, 0, 0, 18, 1580307677, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL),
(24, '245/50R17W H452 LBI', '', 1580307582, NULL, 0, 'yellow', 10, 38, 2, 1, 0, 1, 0, 2, 1580307679, '', 0, 0, 0, 18, 1580307679, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL),
(25, '215/40R17W H452 LBI', '', 1580307756, NULL, 0, 'yellow', 10, 37, 2, 1, 0, 1, 0, 2, 1580307756, '', 0, 0, 0, 18, 1580307756, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL),
(26, 'DN001', '', 1580307773, NULL, 0, 'red', 10, 39, 2, 1, 0, 1, 0, 2, 1580307773, '', 0, 0, 0, 17, 1580307773, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL),
(27, 'FY001', '', 1580307783, NULL, 0, 'yellow', 10, 39, 2, 2, 0, 1, 0, 2, 1580307783, '', 0, 0, 0, 17, 1580307783, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL),
(28, 'FH001', '', 1580307844, NULL, 0, 'green', 10, 39, 2, 5, 0, 1, 0, 2, 1580307844, '', 0, 0, 0, 17, 1580307844, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL),
(29, 'FX002', '', 1580307900, NULL, 0, 'green', 10, 39, 2, 6, 0, 1, 0, 2, 1580307900, '', 0, 0, 0, 17, 1580307900, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL),
(30, 'FX023', '', 1580307959, NULL, 0, 'blue', 10, 39, 2, 3, 0, 1, 0, 2, 1580307959, '', 0, 0, 0, 17, 1580307959, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL),
(31, 'FR0002', '', 1580307970, NULL, 0, 'blue', 10, 39, 2, 4, 0, 1, 0, 2, 1580307970, '', 0, 0, 0, 17, 1580307970, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL),
(32, 'FX124', '', 1580308119, NULL, 0, 'deep_orange', 10, 39, 2, 7, 0, 1, 0, 2, 1580308119, '', 0, 0, 0, 17, 1580308119, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL),
(33, 'DR001', '', 1580308132, NULL, 0, 'red', 10, 39, 2, 8, 0, 1, 0, 2, 1580308132, '', 0, 0, 0, 17, 1580308132, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL),
(34, 'GU001', '', 1580308146, NULL, 0, 'grey', 10, 39, 2, 9, 0, 1, 0, 2, 1580308146, '', 0, 0, 0, 17, 1580308146, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL),
(35, 'DN002', '', 1580308285, NULL, 0, 'red', 10, 38, 2, 1, 0, 1, 0, 2, 1580308285, '', 0, 0, 0, 17, 1580308285, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL),
(36, 'FY031', '', 1580308292, NULL, 0, 'yellow', 10, 37, 2, 1, 0, 1, 0, 2, 1580308292, '', 0, 0, 0, 17, 1580308292, 0, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `task_has_external_links`
--

DROP TABLE IF EXISTS `task_has_external_links`;
CREATE TABLE IF NOT EXISTS `task_has_external_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dependency` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_creation` int(11) NOT NULL,
  `date_modification` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `creator_id` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `task_id` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `task_has_files`
--

DROP TABLE IF EXISTS `task_has_files`;
CREATE TABLE IF NOT EXISTS `task_has_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_image` tinyint(1) DEFAULT 0,
  `task_id` int(11) NOT NULL,
  `date` bigint(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `size` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `files_task_idx` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `task_has_links`
--

DROP TABLE IF EXISTS `task_has_links`;
CREATE TABLE IF NOT EXISTS `task_has_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `opposite_task_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_has_links_unique` (`link_id`,`task_id`,`opposite_task_id`),
  KEY `opposite_task_id` (`opposite_task_id`),
  KEY `task_has_links_task_index` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `task_has_metadata`
--

DROP TABLE IF EXISTS `task_has_metadata`;
CREATE TABLE IF NOT EXISTS `task_has_metadata` (
  `task_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `changed_by` int(11) NOT NULL DEFAULT 0,
  `changed_on` int(11) NOT NULL DEFAULT 0,
  UNIQUE KEY `task_id` (`task_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `task_has_tags`
--

DROP TABLE IF EXISTS `task_has_tags`;
CREATE TABLE IF NOT EXISTS `task_has_tags` (
  `task_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  UNIQUE KEY `tag_id` (`tag_id`,`task_id`),
  KEY `task_id` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transitions`
--

DROP TABLE IF EXISTS `transitions`;
CREATE TABLE IF NOT EXISTS `transitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `src_column_id` int(11) NOT NULL,
  `dst_column_id` int(11) NOT NULL,
  `date` bigint(20) DEFAULT NULL,
  `time_spent` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `src_column_id` (`src_column_id`),
  KEY `dst_column_id` (`dst_column_id`),
  KEY `transitions_task_index` (`task_id`),
  KEY `transitions_project_index` (`project_id`),
  KEY `transitions_user_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transitions`
--

INSERT INTO `transitions` (`id`, `user_id`, `project_id`, `task_id`, `src_column_id`, `dst_column_id`, `date`, `time_spent`) VALUES
(13, 2, 10, 23, 37, 38, 1580307671, 116),
(14, 2, 10, 23, 38, 39, 1580307678, 8),
(15, 2, 10, 24, 37, 38, 1580307680, 98);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_ldap_user` tinyint(1) DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_id` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notifications_enabled` tinyint(1) DEFAULT 0,
  `timezone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disable_login_form` tinyint(1) DEFAULT 0,
  `twofactor_activated` tinyint(1) DEFAULT 0,
  `twofactor_secret` char(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `notifications_filter` int(11) DEFAULT 4,
  `nb_failed_login` int(11) DEFAULT 0,
  `lock_expiration_date` bigint(20) DEFAULT NULL,
  `gitlab_id` int(11) DEFAULT NULL,
  `role` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'app-user',
  `is_active` tinyint(1) DEFAULT 1,
  `avatar_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_access_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filter` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_idx` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `is_ldap_user`, `name`, `email`, `google_id`, `github_id`, `notifications_enabled`, `timezone`, `language`, `disable_login_form`, `twofactor_activated`, `twofactor_secret`, `token`, `notifications_filter`, `nb_failed_login`, `lock_expiration_date`, `gitlab_id`, `role`, `is_active`, `avatar_path`, `api_access_token`, `filter`) VALUES
(1, 'admin', '$2y$10$GzDCeQl/GdH.pCZfz4fWdO3qmayutRCmxEIY9U9t1k9q9F89VNDCm', 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, NULL, '', 4, 0, 0, NULL, 'app-admin', 1, NULL, NULL, NULL),
(2, 'mahardi', '$2y$10$/7yUpw2z88yJBIoRBr8an.9r4lRbVWLYKkFykVsuC6PJkZ6Kl.QW.', 0, 'mahardidamas', '', NULL, NULL, 0, '', '', 0, 0, NULL, '', 4, 0, 0, NULL, 'app-user', 1, NULL, NULL, ''),
(3, 'damas', '$2y$10$zFb0N7uI4YFWMexdlIf.n.GKy5B1tvup.36oU.18xE6SrkaMlGF6O', 0, 'Damas Mahardi', 'damas@yahoo.com', NULL, NULL, 0, '', '', 0, 0, NULL, '', 4, 0, 0, NULL, 'app-user', 1, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_has_metadata`
--

DROP TABLE IF EXISTS `user_has_metadata`;
CREATE TABLE IF NOT EXISTS `user_has_metadata` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `changed_by` int(11) NOT NULL DEFAULT 0,
  `changed_on` int(11) NOT NULL DEFAULT 0,
  UNIQUE KEY `user_id` (`user_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_has_notifications`
--

DROP TABLE IF EXISTS `user_has_notifications`;
CREATE TABLE IF NOT EXISTS `user_has_notifications` (
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  UNIQUE KEY `user_has_notifications_unique_idx` (`user_id`,`project_id`),
  KEY `user_has_notifications_ibfk_2` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_has_notification_types`
--

DROP TABLE IF EXISTS `user_has_notification_types`;
CREATE TABLE IF NOT EXISTS `user_has_notification_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `notification_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_has_notification_types_user_idx` (`user_id`,`notification_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_has_unread_notifications`
--

DROP TABLE IF EXISTS `user_has_unread_notifications`;
CREATE TABLE IF NOT EXISTS `user_has_unread_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date_creation` bigint(20) NOT NULL,
  `event_name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `actions`
--
ALTER TABLE `actions`
  ADD CONSTRAINT `actions_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `action_has_params`
--
ALTER TABLE `action_has_params`
  ADD CONSTRAINT `action_has_params_ibfk_1` FOREIGN KEY (`action_id`) REFERENCES `actions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `columns`
--
ALTER TABLE `columns`
  ADD CONSTRAINT `columns_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `column_has_move_restrictions`
--
ALTER TABLE `column_has_move_restrictions`
  ADD CONSTRAINT `column_has_move_restrictions_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `column_has_move_restrictions_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `project_has_roles` (`role_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `column_has_move_restrictions_ibfk_3` FOREIGN KEY (`src_column_id`) REFERENCES `columns` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `column_has_move_restrictions_ibfk_4` FOREIGN KEY (`dst_column_id`) REFERENCES `columns` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `column_has_restrictions`
--
ALTER TABLE `column_has_restrictions`
  ADD CONSTRAINT `column_has_restrictions_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `column_has_restrictions_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `project_has_roles` (`role_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `column_has_restrictions_ibfk_3` FOREIGN KEY (`column_id`) REFERENCES `columns` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `custom_filters`
--
ALTER TABLE `custom_filters`
  ADD CONSTRAINT `custom_filters_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `custom_filters_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `group_has_users`
--
ALTER TABLE `group_has_users`
  ADD CONSTRAINT `group_has_users_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `group_has_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `last_logins`
--
ALTER TABLE `last_logins`
  ADD CONSTRAINT `last_logins_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `password_reset`
--
ALTER TABLE `password_reset`
  ADD CONSTRAINT `password_reset_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `predefined_task_descriptions`
--
ALTER TABLE `predefined_task_descriptions`
  ADD CONSTRAINT `predefined_task_descriptions_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `project_activities`
--
ALTER TABLE `project_activities`
  ADD CONSTRAINT `project_activities_ibfk_1` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_activities_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_activities_ibfk_3` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `project_daily_column_stats`
--
ALTER TABLE `project_daily_column_stats`
  ADD CONSTRAINT `project_daily_column_stats_ibfk_1` FOREIGN KEY (`column_id`) REFERENCES `columns` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_daily_column_stats_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `project_daily_stats`
--
ALTER TABLE `project_daily_stats`
  ADD CONSTRAINT `project_daily_stats_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `project_has_categories`
--
ALTER TABLE `project_has_categories`
  ADD CONSTRAINT `project_has_categories_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `project_has_files`
--
ALTER TABLE `project_has_files`
  ADD CONSTRAINT `project_has_files_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `project_has_groups`
--
ALTER TABLE `project_has_groups`
  ADD CONSTRAINT `project_has_groups_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_has_groups_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `project_has_metadata`
--
ALTER TABLE `project_has_metadata`
  ADD CONSTRAINT `project_has_metadata_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `project_has_notification_types`
--
ALTER TABLE `project_has_notification_types`
  ADD CONSTRAINT `project_has_notification_types_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `project_has_roles`
--
ALTER TABLE `project_has_roles`
  ADD CONSTRAINT `project_has_roles_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `project_has_users`
--
ALTER TABLE `project_has_users`
  ADD CONSTRAINT `project_has_users_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_has_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `project_role_has_restrictions`
--
ALTER TABLE `project_role_has_restrictions`
  ADD CONSTRAINT `project_role_has_restrictions_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_role_has_restrictions_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `project_has_roles` (`role_id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `remember_me`
--
ALTER TABLE `remember_me`
  ADD CONSTRAINT `remember_me_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `subtasks`
--
ALTER TABLE `subtasks`
  ADD CONSTRAINT `subtasks_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `subtask_time_tracking`
--
ALTER TABLE `subtask_time_tracking`
  ADD CONSTRAINT `subtask_time_tracking_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subtask_time_tracking_ibfk_2` FOREIGN KEY (`subtask_id`) REFERENCES `subtasks` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `swimlanes`
--
ALTER TABLE `swimlanes`
  ADD CONSTRAINT `swimlanes_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_ibfk_2` FOREIGN KEY (`column_id`) REFERENCES `columns` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_swimlane_ibfk_1` FOREIGN KEY (`swimlane_id`) REFERENCES `swimlanes` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `task_has_external_links`
--
ALTER TABLE `task_has_external_links`
  ADD CONSTRAINT `task_has_external_links_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `task_has_files`
--
ALTER TABLE `task_has_files`
  ADD CONSTRAINT `task_has_files_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `task_has_links`
--
ALTER TABLE `task_has_links`
  ADD CONSTRAINT `task_has_links_ibfk_1` FOREIGN KEY (`link_id`) REFERENCES `links` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_has_links_ibfk_2` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_has_links_ibfk_3` FOREIGN KEY (`opposite_task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `task_has_metadata`
--
ALTER TABLE `task_has_metadata`
  ADD CONSTRAINT `task_has_metadata_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `task_has_tags`
--
ALTER TABLE `task_has_tags`
  ADD CONSTRAINT `task_has_tags_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_has_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transitions`
--
ALTER TABLE `transitions`
  ADD CONSTRAINT `transitions_ibfk_1` FOREIGN KEY (`src_column_id`) REFERENCES `columns` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transitions_ibfk_2` FOREIGN KEY (`dst_column_id`) REFERENCES `columns` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transitions_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transitions_ibfk_4` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transitions_ibfk_5` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_has_metadata`
--
ALTER TABLE `user_has_metadata`
  ADD CONSTRAINT `user_has_metadata_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_has_notifications`
--
ALTER TABLE `user_has_notifications`
  ADD CONSTRAINT `user_has_notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_has_notifications_ibfk_2` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_has_notification_types`
--
ALTER TABLE `user_has_notification_types`
  ADD CONSTRAINT `user_has_notification_types_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_has_unread_notifications`
--
ALTER TABLE `user_has_unread_notifications`
  ADD CONSTRAINT `user_has_unread_notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `laravel`
--
CREATE DATABASE IF NOT EXISTS `laravel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravel`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

DROP TABLE IF EXISTS `pegawai`;
CREATE TABLE IF NOT EXISTS `pegawai` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Raisa Suci Hartati', 'Kpg. Dago No. 489, Sorong 62954, KalTeng', NULL, NULL),
(2, 'Siti Palastri', 'Dk. Daan No. 591, Payakumbuh 30914, SulTra', NULL, NULL),
(3, 'Aurora Ilsa Nasyiah', 'Ki. Cikapayang No. 993, Malang 73331, NTT', NULL, NULL),
(4, 'Jamal Uwais', 'Ki. Basket No. 63, Ambon 39363, KalUt', NULL, NULL),
(5, 'Nabila Uyainah', 'Ki. Badak No. 351, Padangsidempuan 25170, Aceh', NULL, NULL),
(6, 'Satya Manullang', 'Dk. Sugiyopranoto No. 954, Langsa 77615, BaBel', NULL, NULL),
(7, 'Kasim Budiman', 'Jln. Banal No. 219, Tangerang 22457, Papua', NULL, NULL),
(8, 'Agnes Hana Winarsih M.Kom.', 'Ki. Padang No. 190, Pontianak 81244, DIY', NULL, NULL),
(9, 'Among Joko Marpaung M.Kom.', 'Ds. Supomo No. 588, Bau-Bau 70894, SumBar', NULL, NULL),
(10, 'Baktianto Kusumo S.E.', 'Kpg. Casablanca No. 773, Balikpapan 84946, Jambi', NULL, NULL);
--
-- Database: `laraveleq`
--
CREATE DATABASE IF NOT EXISTS `laraveleq` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laraveleq`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_06_03_020549_create_pegawais_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`(250))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

DROP TABLE IF EXISTS `pegawai`;
CREATE TABLE IF NOT EXISTS `pegawai` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Hani Novitasari M.Pd', 'Ds. Karel S. Tubun No. 702, Pangkal Pinang 60453, Banten', NULL, NULL),
(2, 'Jindra Kuswoyo', 'Gg. Bass No. 735, Langsa 27264, JaTim', NULL, NULL),
(3, 'Maryanto Galar Prasetya S.T.', 'Kpg. Uluwatu No. 671, Tasikmalaya 94139, DKI', NULL, NULL),
(4, 'Abyasa Hutasoit', 'Dk. Baya Kali Bungur No. 971, Tidore Kepulauan 77776, KepR', NULL, NULL),
(5, 'Gamblang Karma Rajata S.Pt', 'Jln. Tambun No. 271, Banjarmasin 93770, Maluku', NULL, NULL),
(6, 'Wulan Usamah S.Psi', 'Jln. Raden No. 630, Sibolga 96069, Gorontalo', NULL, NULL),
(7, 'Kamila Zulaika', 'Jr. Bakit  No. 414, Kendari 95686, SumSel', NULL, NULL),
(8, 'Sabri Jabal Hutagalung', 'Psr. Banceng Pondok No. 364, Ambon 99656, BaBel', NULL, NULL),
(9, 'Alika Wijayanti', 'Dk. Camar No. 105, Tanjungbalai 57714, JaBar', NULL, NULL),
(10, 'Paulin Suci Lestari S.Farm', 'Ki. Raden No. 755, Administrasi Jakarta Barat 56719, Papua', NULL, NULL),
(11, 'Wage Ramadan', 'Kpg. Ronggowarsito No. 544, Tarakan 24085, BaBel', NULL, NULL),
(12, 'Azalea Cinta Lestari M.Ak', 'Psr. Monginsidi No. 403, Tarakan 81403, Riau', NULL, NULL),
(13, 'Dwi Napitupulu', 'Psr. Zamrud No. 905, Kendari 96243, BaBel', NULL, NULL),
(14, 'Alika Prastuti', 'Kpg. Suryo Pranoto No. 378, Kediri 83587, SumBar', NULL, NULL),
(15, 'Mila Halima Uyainah S.IP', 'Kpg. Sukabumi No. 311, Bukittinggi 35693, SulSel', NULL, NULL),
(16, 'Adika Ibrahim Suwarno', 'Jr. Gading No. 717, Bukittinggi 68689, KalBar', NULL, NULL),
(17, 'Karya Adriansyah', 'Jr. Agus Salim No. 815, Salatiga 76262, NTB', NULL, NULL),
(18, 'Makuta Samosir', 'Gg. Salatiga No. 313, Bitung 32021, SumBar', NULL, NULL),
(19, 'Warta Rafi Salahudin M.M.', 'Dk. Lada No. 941, Padangpanjang 98954, Lampung', NULL, NULL),
(20, 'Wasis Sirait', 'Dk. Sutarjo No. 483, Gorontalo 34028, Maluku', NULL, NULL),
(21, 'Taswir Anggriawan', 'Jr. Tentara Pelajar No. 487, Malang 94060, KepR', NULL, NULL),
(22, 'Wardaya Salahudin', 'Psr. Sentot Alibasa No. 654, Palangka Raya 13117, Jambi', NULL, NULL),
(23, 'Laras Ayu Yuniar M.Pd', 'Jr. Zamrud No. 899, Surakarta 43845, Gorontalo', NULL, NULL),
(24, 'Rika Restu Widiastuti S.Psi', 'Kpg. Kali No. 488, Banjarmasin 52226, MalUt', NULL, NULL),
(25, 'Wani Hasna Yolanda', 'Ki. Ciumbuleuit No. 815, Pangkal Pinang 63262, SulSel', NULL, NULL),
(26, 'Umar Luwes Maryadi', 'Gg. Madrasah No. 98, Serang 60081, PapBar', NULL, NULL),
(27, 'Salsabila Winarsih', 'Ds. Mahakam No. 350, Bukittinggi 82554, DKI', NULL, NULL),
(28, 'Almira Rahmawati', 'Dk. Suprapto No. 615, Bandung 28297, Lampung', NULL, NULL),
(29, 'Luis Koko Latupono S.Pt', 'Dk. Rumah Sakit No. 874, Gunungsitoli 37606, Riau', NULL, NULL),
(30, 'Rina Uyainah', 'Kpg. Gatot Subroto No. 305, Sawahlunto 11119, SumSel', NULL, NULL),
(31, 'Raditya Ajimat Prasetyo M.M.', 'Dk. Bakit  No. 202, Sungai Penuh 35382, JaTeng', NULL, NULL),
(32, 'Raden Sihombing', 'Kpg. Laksamana No. 278, Surabaya 56429, PapBar', NULL, NULL),
(33, 'Uchita Ilsa Yulianti S.Sos', 'Kpg. Warga No. 222, Sibolga 51010, SulTra', NULL, NULL),
(34, 'Dagel Limar Mansur S.Pd', 'Jln. Hang No. 663, Metro 76408, Bengkulu', NULL, NULL),
(35, 'Karsana Utama Thamrin S.T.', 'Jln. Haji No. 971, Administrasi Jakarta Pusat 21981, SulBar', NULL, NULL),
(36, 'Padmi Hastuti', 'Jr. Laksamana No. 850, Mataram 53534, SumBar', NULL, NULL),
(37, 'Cinthia Siska Mardhiyah S.I.Kom', 'Psr. Ters. Jakarta No. 232, Sibolga 24297, DKI', NULL, NULL),
(38, 'Luluh Irawan', 'Jln. Jagakarsa No. 159, Jambi 37279, SulBar', NULL, NULL),
(39, 'Michelle Fitriani Wastuti S.I.Kom', 'Ki. Dr. Junjunan No. 173, Bengkulu 63255, Bali', NULL, NULL),
(40, 'Johan Prasasta', 'Psr. Wora Wari No. 210, Pagar Alam 40514, Bengkulu', NULL, NULL),
(41, 'Daliono Wacana M.Kom.', 'Dk. Baan No. 872, Prabumulih 59409, Bali', NULL, NULL),
(42, 'Suci Farida', 'Jr. Kalimantan No. 597, Serang 28661, Riau', NULL, NULL),
(43, 'Ganjaran Simanjuntak', 'Gg. Ahmad Dahlan No. 203, Tangerang Selatan 15718, PapBar', NULL, NULL),
(44, 'Mahesa Nasim Halim M.TI.', 'Kpg. Kusmanto No. 306, Kotamobagu 59432, KalBar', NULL, NULL),
(45, 'Zulfa Julia Halimah M.M.', 'Ds. Sutarto No. 112, Magelang 97169, KalSel', NULL, NULL),
(46, 'Almira Andriani', 'Jr. Babakan No. 967, Langsa 90432, Bali', NULL, NULL),
(47, 'Qori Palastri M.TI.', 'Jr. Gatot Subroto No. 668, Administrasi Jakarta Selatan 80583, SulTra', NULL, NULL),
(48, 'Zalindra Pertiwi S.Gz', 'Ki. Kalimantan No. 250, Balikpapan 85371, KalTim', NULL, NULL),
(49, 'Cinthia Usyi Permata', 'Ki. Sudirman No. 183, Kendari 69240, KalBar', NULL, NULL),
(50, 'Putri Yulia Yuniar S.I.Kom', 'Psr. Bakin No. 755, Palangka Raya 51391, Bali', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`) USING HASH
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
--
-- Database: `mydbsas`
--
CREATE DATABASE IF NOT EXISTS `mydbsas` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mydbsas`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `table1wrewe`
--

DROP TABLE IF EXISTS `table1wrewe`;
CREATE TABLE IF NOT EXISTS `table1wrewe` (
  `idtable1wrewe` int(11) NOT NULL,
  `table1wrewecol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtable1wrewe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
--
-- Database: `pakar_gigi_mulut`
--
CREATE DATABASE IF NOT EXISTS `pakar_gigi_mulut` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pakar_gigi_mulut`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_konsul`
--

DROP TABLE IF EXISTS `hasil_konsul`;
CREATE TABLE IF NOT EXISTS `hasil_konsul` (
  `username` varchar(200) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `nama_gejala` varchar(1000) NOT NULL,
  `nama_penyakit` varchar(1000) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil_konsul`
--

INSERT INTO `hasil_konsul` (`username`, `nama_lengkap`, `nama_gejala`, `nama_penyakit`, `tanggal`) VALUES
('yul', 'Yulismawati', 'Gigi terasa sakit', 'Karies Gigi', '2019-03-21'),
('yul', 'Yulismawati', 'Gigi sensitif', 'Karies Gigi', '2019-03-21'),
('yul', 'Yulismawati', 'Gigi terasa nyeri saat mengkonsumsi makanan manis, panas atau dingin', 'Karies Gigi', '2019-03-21'),
('yul', 'Yulismawati', 'Lubang yang terlihat pada gigi', 'Karies Gigi', '2019-03-21'),
('yul', 'Yulismawati', 'Terdapat noda berwarna coklat, hitam atau putih pada permukaan gigi', 'Karies Gigi', '2019-03-21'),
('damas', 'Damas Mahardi', 'Gigi terasa sakit', 'Karies Gigi', '2020-01-05'),
('damas', 'Damas Mahardi', 'Gigi sensitif', 'Karies Gigi', '2020-01-05'),
('damas', 'Damas Mahardi', 'Lubang yang terlihat pada gigi', 'Karies Gigi', '2020-01-05'),
('damas', 'Damas Mahardi', 'Adanya perubahan warna pada gusi', 'Kelainan Dentofacial', '2020-01-06'),
('damas', 'Damas Mahardi', 'Terdapat benjolan, kulit yang terkelupas, atau bercak di mulut', 'Kelainan Dentofacial', '2020-01-06'),
('damas', 'Damas Mahardi', 'Gigi tidak tepat dalam posisi lengkung', 'Kelainan Dentofacial', '2020-01-06'),
('damas', 'Damas Mahardi', 'Gigi terasa sakit', 'Jaringan Pulpa dan Periapikal', '2020-01-06'),
('damas', 'Damas Mahardi', 'Gigi sensitif', 'Jaringan Pulpa dan Periapikal', '2020-01-06'),
('damas', 'Damas Mahardi', 'Nyeri dalam beberapa menit atau beberapa jam', 'Jaringan Pulpa dan Periapikal', '2020-01-06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_gejala`
--

DROP TABLE IF EXISTS `tabel_gejala`;
CREATE TABLE IF NOT EXISTS `tabel_gejala` (
  `kode_gejala` varchar(5) NOT NULL,
  `nama_gejala` text NOT NULL,
  PRIMARY KEY (`kode_gejala`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_gejala`
--

INSERT INTO `tabel_gejala` (`kode_gejala`, `nama_gejala`) VALUES
('G01', 'Gigi terasa sakit'),
('G02', 'Gigi sensitif'),
('G03', 'Gigi terasa nyeri saat mengkonsumsi makanan manis, panas atau dingin'),
('G04', 'Lubang yang terlihat pada gigi'),
('G05', 'Terdapat noda berwarna coklat, hitam atau putih pada permukaan gigi'),
('G06', 'Gigi sakit yang menusuk tajam serta intens'),
('G07', 'Rasa sakit cepat mereda saat tidak mengkonsumsi makanan panas dan manis'),
('G08', 'Nyeri dalam beberapa menit atau beberapa jam'),
('G09', 'Nyeri bertambah parah saat malam hari'),
('G10', 'Gusi Bengkak'),
('G11', 'Gusi terasa nyeri'),
('G12', 'Gusi Turun'),
('G13', 'Gusi mudah berdarah saat menyikat gigi atau menggunakan benang gigi dan meninggalkan noda kemerahan pada sikat gigi atau benang gigi'),
('G14', 'Adanya perubahan pada warna gusi dari merah muda sehat menjadi merah muda  kehitaman'),
('G15', 'Nyeri saat mengunyah makanan'),
('G16', 'Gusi bengkak dan berwarna merah atau keunguan'),
('G17', 'Gusi terasa lunak saat disentuh'),
('G18', 'Terdapat penumpukan  plak dan karang gigi'),
('G19', 'Mulut terasa tidak enak dan nafas menjadi bau'),
('G20', 'Gusi menyusut serta gigi terlihat lebih tinggi dari biasanya'),
('G21', 'Keluar nanah pada bagian pembatas gigi dan gusi'),
('G22', 'Jarak satu gigi dan gigi lainnya terasa renggang'),
('G23', 'Gigi tanggal'),
('G24', 'Gusi bengkak, gusi kemerahan dan pendarahan serta gangguan pada tulang pendukung gigi'),
('G25', 'Bau Mulut'),
('G26', 'Rasa tidak enak di mulut'),
('G27', 'Gigi renggang hingga susah untuk makan'),
('G28', 'Gusi berwarna gelap'),
('G29', 'Gusi terasa nyeri saat disentuh'),
('G30', 'Gusi mudah berdarah'),
('G31', 'Jumlah gigi berlebih'),
('G32', 'Bentuk gigi tidak normal'),
('G33', 'Warna gigi tidak normal'),
('G34', 'Ukuran gigi tidak normal'),
('G35', 'Timbul rasa tidak nyaman pada anak hingga nafsu makan menurun'),
('G36', 'Susah tidur'),
('G37', 'Timbul warna kemerahan pada tepi mulut'),
('G38', 'Timbulnya rasa sakit pada area sekitar rahang'),
('G39', 'Bengkak pada area gigi yang sakit'),
('G40', 'Rasa tidak nyaman saat mengunyah makanan'),
('G41', 'Sulit membuka mulut'),
('G42', 'Gusi berdarah'),
('G43', 'Adanya pembekakan gusi diantara dua gigi'),
('G44', 'Adanya perubahan warna pada gusi'),
('G45', 'Terdapat saku pada gusi'),
('G46', 'Gusi turun (resesi gingiva)'),
('G47', 'Terdapat cairan pada sekitaran gigi dan mulut'),
('G48', 'Terdapat benjolan, kulit yang terkelupas, atau bercak di mulut'),
('G49', 'Dasar rongga agak terasa kasar dan tidak dapat digerakkan'),
('G50', 'Sulit mengunyah makanan'),
('G51', 'Gigi tidak tepat dalam posisi lengkung'),
('G52', 'Ukuran gigi lebih besar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_penyakit`
--

DROP TABLE IF EXISTS `tabel_penyakit`;
CREATE TABLE IF NOT EXISTS `tabel_penyakit` (
  `kode_penyakit` varchar(4) NOT NULL,
  `nama_penyakit` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `solusi` text NOT NULL,
  PRIMARY KEY (`kode_penyakit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_penyakit`
--

INSERT INTO `tabel_penyakit` (`kode_penyakit`, `nama_penyakit`, `keterangan`, `solusi`) VALUES
('P01', 'Karies Gigi', 'Gigi terasa sakit, sensistif, nyeri ringan hingga tajam saat mengkonsums/menggigit  makanan manis, panas atau dingin, lubang yang terlihat pada gigi, noda berwarna coklat, hitam atau putih pada permukaan gigi.', 'Menjaga kebersihan mulut dengan baik untuk meminimalisir penyebab penyakit   mulut dan membuang plak. karies dapat dicegah  dengan pembersihan dan pemeriksaan gigi teratur. \r\nPengaturan konsumsi makanan bergula, dimana gula yang tersisa pada mulut dapat memproduksi asam oleh bakteri.\r\nMengkonsumsi permen karet xillitol dapat membantu melindungi gigi.\r\n'),
('P02', 'Jaringan Pulpa dan Periapikal', 'Rasa sakit yang menusuk tajam dan intens, sakit cepat mereda setelah pemicunya dijauhkan dari gigi dan mulut seperti makanan yang terlalu panas atau manis', 'Disarankan untuk langsung ke dokter gigi saat menyadari adanya lubang gigi atau rasa ngilu pada gigi saat terkena makanan panas dan dingin.'),
('P03', 'Gingivitis dan Periodontal', 'Gusi bengkak, gusi terasa nyeri, gusi turun, gusi mudah berdarah saat menyikat gigi atau menggunakan benang gigi serta terlihat kemerahan pada saat sikat gigi atau benang gigi, perubahan pada warna gusi dari merah muda yang sehat menjadi merah muda kehitaman, nafas bau, nyeri saat mengunyah makanan, gusi bengkak dan berwarna merah keunguan, gusi terasa lunak jika disentuh, penumpukkan plak dan karang gigi pada gigi, mulut terasa tidak enak dan nafas menjadi bau, penysutan gusi sehingga ukuran gigi terlihat lebih tinggi dari biasanya, keluarnya nanah pada bagian yang membatasi gigi dan gusi, jarak antara satu gigi dan gigi lainnya terasa renggang serta gigi tanggal', 'program kebersihan gigi yang baik, dan dipertahankan dengan konsisten. Pembersihan yang lengkap dengan sikat gigi dan benang gigi dan umumnya dengan waktu 3-5 menit. Membersihkan dengan benang gigi sebelum menyikat gigi dapat membersihkan partikel makanan dan bakteri.'),
('P04', 'Gangguan Gusi dan Hubungan Alveolar tak bergigi lainnya', 'Gusi terasa bengkak kemerahan, pendarahan serta gangguan pada tulang pendukung gigi', 'Rutin menyikat gigi setidaknya 2x sehari dengan pasta gigi berfluoride. selain itu rutin untuk memeriksakan gigi ke dokter gigi untuk membantu menceegah penyakit gigi dan mulut.'),
('P05', 'Plak, karang gigi dan stain', 'Gusi berwarna gelap, gusi terasa nyeri bila disentuh dan gusi mudah berdarah', 'Menyikat gigi secara teratur sebnayak 2x sehari selama 2 menit. beralih ke sikat gigi elektrik, menggunakan pasta gigi yang tepat, menggunakan benang gigi (dental floss), memakai obat kumur, perhatikan diet anda, ubah kebiasaan merokok. Apabila sudah terdapat karang gigi silahkan pergi ke dokter gigi untuk membersihkan karang gigi.'),
('P06', 'Gangguan Perkembangan Gigi dan Erupsi Gigi', 'Jumlah gigi berlebih, bentuk gigi tidak normal, warna gigi tidak normal, ukuran gigi tidak normal, timbul rasa tidak nyaman pada anak', 'Lakukan pemeriksaan kondisi perkembangan gigi dengan dokter gigi dan mulut yang anda percayai.'),
('P07', 'Impaksi Gigi dan Terbenam', 'Rasa sakit pada area rahang, munculnya pembngkakan pada daerah gigi yang sakit, rasa tidak nyaman saat mengunyah makanan, bau mulut, kesulotan saat membuka mulut dan gusi berdarah', 'Konsultasi dengan dokter gigi bagaimana penanganan selanjutnya.'),
('P08', 'Gangguan Gigi dan Jaringan Pendukung lainnya', 'Terjadinya pembengkakan papila interdental atau gusi diantara dua gigi, perubahan warna pada gusi, terbentuknya saku gusi, resesi gingiva atau gusi turun, serta adanya kerusakan tulang alveolar yang cukup besar', 'Merubah kebiasaan merawat gigi dan mulut yang buruk, mengubah kebiasaan memakan makanan manis dan minuman masnis, alkohol, dan kebiasaan merokok. Menggosok gigi 2x sehari, dan periksa secara rutin pada dokter gigi.'),
('P09', 'Kista dalam Rongga Mulut', 'Adanya kantong berisi cairan disekitar gigi dan mulut dan Terdapat benjolan, kulit yang terkelupas, atau bercak di mulut', 'dengan tindakan operasi bedah mulut, dilakukan oleh dokter gigi atau dokter gigi spesialis bedah mulut dan maksilofasial.'),
('P10', 'Kelainan Dentofacial', 'Gigi tidak tepat pada posisi yang semestinya dan ukuran gigi lebih besar', 'Pemeriksaan pada dokter gigi.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_rules`
--

DROP TABLE IF EXISTS `tabel_rules`;
CREATE TABLE IF NOT EXISTS `tabel_rules` (
  `kode_penyakit` varchar(5) NOT NULL,
  `kode_gejala` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_rules`
--

INSERT INTO `tabel_rules` (`kode_penyakit`, `kode_gejala`) VALUES
('P01', 'G01'),
('P01', 'G02'),
('P01', 'G03'),
('P01', 'G04'),
('P01', 'G05'),
('P02', 'G06'),
('P02', 'G07'),
('P02', 'G08'),
('P02', 'G09'),
('P03', 'G08'),
('P03', 'G10'),
('P03', 'G11'),
('P03', 'G12'),
('P03', 'G13'),
('P03', 'G14'),
('P03', 'G15'),
('P03', 'G16'),
('P03', 'G17'),
('P03', 'G18'),
('P03', 'G19'),
('P03', 'G20'),
('P03', 'G21'),
('P03', 'G22'),
('P03', 'G23'),
('P06', 'G31'),
('P06', 'G32'),
('P06', 'G33'),
('P06', 'G34'),
('P06', 'G35'),
('P06', 'G36'),
('P06', 'G37'),
('P07', 'G38'),
('P07', 'G39'),
('P07', 'G40'),
('P07', 'G41'),
('P07', 'G42'),
('P08', 'G43'),
('P08', 'G44'),
('P08', 'G45'),
('P08', 'G46'),
('P09', 'G47'),
('P09', 'G48'),
('P09', 'G49'),
('P09', 'G50'),
('P10', 'G51'),
('P10', 'G52'),
('P04', 'G10'),
('P04', 'G24'),
('P04', 'G25'),
('P04', 'G26'),
('P04', 'G27'),
('P05', 'G10'),
('P05', 'G28'),
('P05', 'G29'),
('P05', 'G30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_user`
--

DROP TABLE IF EXISTS `tabel_user`;
CREATE TABLE IF NOT EXISTS `tabel_user` (
  `username` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `usia` int(3) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `level` varchar(10) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tabel_user`
--

INSERT INTO `tabel_user` (`username`, `nama_lengkap`, `password`, `usia`, `alamat`, `level`) VALUES
('abgvin', 'Muhamad apri', '567428359f345727ed135bca8eb0fde0', 23, 'Padang', 'user'),
('admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 0, '', 'admin'),
('damas', 'Damas Mahardi', 'e10adc3949ba59abbe56e057f20f883e', 27, 'cibarusah', 'user'),
('yul', 'Yulismawati', 'e306018545c56281306f0cfa8b134fdf', 48, 'Rawang', 'user');
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

DROP TABLE IF EXISTS `pma__bookmark`;
CREATE TABLE IF NOT EXISTS `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

DROP TABLE IF EXISTS `pma__central_columns`;
CREATE TABLE IF NOT EXISTS `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`db_name`,`col_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

--
-- Dumping data untuk tabel `pma__central_columns`
--

INSERT INTO `pma__central_columns` (`db_name`, `col_name`, `col_type`, `col_length`, `col_collation`, `col_isNull`, `col_extra`, `col_default`) VALUES
('kanbanm2', 'id_planproduksi', 'int', '11', '', 0, 'auto_increment,', ''),
('kanbanm2', 'seqwen', 'varchar', '45', 'utf8_general_ci', 0, ',', ''),
('kanbanm2', 'tanggal', 'date', '', '', 0, ',', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

DROP TABLE IF EXISTS `pma__column_info`;
CREATE TABLE IF NOT EXISTS `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

DROP TABLE IF EXISTS `pma__designer_settings`;
CREATE TABLE IF NOT EXISTS `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data untuk tabel `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"relation_lines\":\"true\",\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

DROP TABLE IF EXISTS `pma__export_templates`;
CREATE TABLE IF NOT EXISTS `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

DROP TABLE IF EXISTS `pma__favorite`;
CREATE TABLE IF NOT EXISTS `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

DROP TABLE IF EXISTS `pma__history`;
CREATE TABLE IF NOT EXISTS `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

DROP TABLE IF EXISTS `pma__navigationhiding`;
CREATE TABLE IF NOT EXISTS `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

DROP TABLE IF EXISTS `pma__pdf_pages`;
CREATE TABLE IF NOT EXISTS `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

DROP TABLE IF EXISTS `pma__recent`;
CREATE TABLE IF NOT EXISTS `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"laravel\",\"table\":\"pegawai\"},{\"db\":\"laraveleq\",\"table\":\"pegawai\"},{\"db\":\"eqlaravel\",\"table\":\"pegawais\"},{\"db\":\"belajar_laravel\",\"table\":\"mahasiswa\"},{\"db\":\"belajar_laravel\",\"table\":\"pegawai\"},{\"db\":\"belajar_laravel\",\"table\":\"users\"},{\"db\":\"belajar_laravel\",\"table\":\"password_resets\"},{\"db\":\"belajar_laravel\",\"table\":\"migrations\"},{\"db\":\"kanboard\",\"table\":\"actions\"},{\"db\":\"kanboard\",\"table\":\"columns\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

DROP TABLE IF EXISTS `pma__relation`;
CREATE TABLE IF NOT EXISTS `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

DROP TABLE IF EXISTS `pma__savedsearches`;
CREATE TABLE IF NOT EXISTS `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

DROP TABLE IF EXISTS `pma__table_coords`;
CREATE TABLE IF NOT EXISTS `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

DROP TABLE IF EXISTS `pma__table_info`;
CREATE TABLE IF NOT EXISTS `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

DROP TABLE IF EXISTS `pma__table_uiprefs`;
CREATE TABLE IF NOT EXISTS `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

DROP TABLE IF EXISTS `pma__tracking`;
CREATE TABLE IF NOT EXISTS `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

DROP TABLE IF EXISTS `pma__userconfig`;
CREATE TABLE IF NOT EXISTS `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-06-03 12:57:52', '{\"Console\\/Mode\":\"show\",\"lang\":\"id\",\"Console\\/Height\":-18}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

DROP TABLE IF EXISTS `pma__usergroups`;
CREATE TABLE IF NOT EXISTS `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N',
  PRIMARY KEY (`usergroup`,`tab`,`allowed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

DROP TABLE IF EXISTS `pma__users`;
CREATE TABLE IF NOT EXISTS `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`,`usergroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';
--
-- Database: `sbp`
--
CREATE DATABASE IF NOT EXISTS `sbp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sbp`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `basispengetahuan`
--

DROP TABLE IF EXISTS `basispengetahuan`;
CREATE TABLE IF NOT EXISTS `basispengetahuan` (
  `namapenyakit` varchar(100) NOT NULL,
  `gejala` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `basispengetahuan`
--

INSERT INTO `basispengetahuan` (`namapenyakit`, `gejala`) VALUES
('Penyakit Layu Fusarium (Fusarium oxysporum f. sp. Melongenae Schlecht)', 'Warna jaringan akar coklat'),
('Penyakit Layu Fusarium (Fusarium oxysporum f. sp. Melongenae Schlecht)', 'Akar membusuk'),
('Layu Bakteri (Ralstonia (Pseudomonas solanacearum E.F.Sm)', 'Akar menjadi Kecoklatan'),
('Penyakit Nematoda Buncak Akar (Root Knot Nemotade)', 'Rambut akar sedikit'),
('Penyakit Nematoda Buncak Akar (Root Knot Nemotade)', 'Akar lebih sedikit'),
('Penyakit Layu Fusarium (Fusarium oxysporum f. sp. Melongenae Schlecht)', 'Warna jaringan batang coklat'),
('Layu Bakteri (Ralstonia (Pseudomonas solanacearum E.F.Sm)', 'Jaringan sekuler bawah batang kecoklatan'),
('Bercak Daun Cercospora (Cercospora capsici Heald et Wolf)', 'Terdapat bercak pada batang '),
('Ulat Bawang (Onion caterpillar, Beet armyworm)', 'Pangkal batang menunjukkan bekas gigitan ulat'),
('Ulat Bawang (Onion caterpillar, Beet armyworm)', 'Pangkal batang terpotong ï¿½ potong'),
('Ulat Bawang (Onion caterpillar, Beet armyworm)', 'Batang rebah '),
('Ulat Bawang (Onion caterpillar, Beet armyworm)', 'Batang rusak dan berceceran '),
('Ulat Tanah (Cut Worm)', 'Pangkal batang menunjukkan bekas gigitan ulat'),
('Ulat Tanah (Cut Worm)', 'Pangkal batang terpotong ï¿½ potong'),
('Ulat Tanah (Cut Worm)', 'Batang rebah '),
('Ulat Tanah (Cut Worm)', 'Batang rusak dan berceceran '),
('Penyakit Embun Buluk/Tepung Palsu (Downy mildew) ', 'Tanaman kerdil'),
('Penyakit otomatis, Antraknose (Antrachnose) ', 'Tanaman mati mendadak '),
('Penyakit Buluk Penicillium (Blue Mold) ', 'Tanaman menimbulkan bau busuk yang menyengat'),
('Penyakit Nematoda Buncak Akar (Root Knot Nemotade)', 'Tanaman lebih kaku'),
('Penyakit Nematoda Buncak Akar (Root Knot Nemotade)', 'Tanaman lebih kerdil '),
('Penyakit Nematoda Buncak Akar (Root Knot Nemotade)', 'Tanaman menguning'),
('Trips (Thrips parvispinus Karny) ', 'Pucuk tanaman mati'),
('Kutu Daun Persik (Myzus persicae Sulz.)', 'Tanaman menjadi keriput '),
('Kutu Daun Persik (Myzus persicae Sulz.)', 'Tanaman kerdil'),
('Virus Mosaik', 'pertumbuhan tanaman terhambat '),
('Virus Kuning', 'Tanaman kerdil'),
('Penyakit Layu Fusarium (Fusarium oxysporum f. sp. Melongenae Schlecht)', 'Buah kecil'),
('Penyakit Layu Fusarium (Fusarium oxysporum f. sp. Melongenae Schlecht)', 'Buah gugur'),
('Layu Bakteri (Ralstonia (Pseudomonas solanacearum E.F.Sm)', 'Warna buah kekuningan'),
('Layu Bakteri (Ralstonia (Pseudomonas solanacearum E.F.Sm)', 'Buah membusuk'),
('Antraknosa/Penyakit Patek (Colletotrichum capsici (Syd.) Bult. Et. Bisby)', 'Bercak kecil coklat kehitaman pada buah'),
('Antraknosa/Penyakit Patek (Colletotrichum capsici (Syd.) Bult. Et. Bisby)', 'Buah keriput'),
('Antraknosa/Penyakit Patek (Colletotrichum capsici (Syd.) Bult. Et. Bisby)', 'Warna kulit buah seperti jerami padi'),
('Busuk Buah (Fruit rot) ', 'Terdapat bercak kecil kebasah-basahan pada buah '),
('Busuk Buah (Fruit rot) ', 'Buah mengering'),
('Busuk Buah (Fruit rot) ', 'Biji yang \r\nterserang menjadi coklat\r\n'),
('Busuk Buah (Fruit rot) ', 'biji yang terserang menjadi keriput '),
('Ulat Grayak (Spodoptera litura F.)', 'Timbul lubang yang tidak beraturan pada buah '),
('Virus Kerupuk', 'Bunga dan Bakal buah berguguran'),
('Ulat Grayak (Spodoptera litura F.)', 'Tanaman gundul'),
('Tungau Kuning (Polyphagotarsonemus latus Banks) ', 'Tunas dan bunga gugur '),
('Ulat Buah (Helicoverpa armigera Hubner) ', 'Buah membusuk'),
('Ulat Buah (Helicoverpa armigera Hubner) ', 'Buah berlubang '),
('Lalat Buah (Bactrocera sp)', 'Buah membusuk'),
('Lalat Buah (Bactrocera sp)', 'Terdapat titik coklat kehitaman pada pangkal buah'),
('Lalat Buah (Bactrocera sp)', 'Pangkal buah berlubang '),
('Lalat Buah (Bactrocera sp)', 'Buah jatuh ke tanah '),
('Penyakit Trotol, Bercak Ungu (Purple blotch) ', 'Umbi membusuk'),
('Penyakit Trotol, Bercak Ungu (Purple blotch) ', 'Jaringan umbi mengering '),
('Penyakit Embun Buluk/Tepung Palsu (Downy mildew) ', 'Umbi membusuk'),
('Penyakit Embun Buluk/Tepung Palsu (Downy mildew) ', 'Umbi berkerut '),
('Penyakit Embun Buluk/Tepung Palsu (Downy mildew) ', 'Umbi berwarna kecoklatan '),
('Penyakit Embun Buluk/Tepung Palsu (Downy mildew) ', 'Bagian umbi dalam tampak kering dan pucat '),
('Penyakit Buluk Penicillium (Blue Mold) ', 'Umbi membusuk'),
('Penyakit Buluk Penicillium (Blue Mold) ', 'Lapisan umbi terdapat bercak merah keunguan '),
('Penyakit Buluk Penicillium (Blue Mold) ', 'Lapisan umbi tampak basah'),
('Penyakit Buluk Penicillium (Blue Mold) ', 'Lapisan umbi terpisah-pisah '),
('Penyakit Buluk Penicillium (Blue Mold) ', 'Umbi berair'),
('Virus Kerdil Kuning, Virus Mosaik (Onion Yellow Dwarf Virus) ', 'Umbi berukuran kecil '),
('Penyakit Nematoda Buncak Akar (Root Knot Nemotade)', 'Terdapat puru berbentuk bulat pada akar'),
('Penyakit Nematoda Buncak Akar (Root Knot Nemotade)', 'Akar lebih pendek'),
('Hama Putih atau Trips (Thrips)', 'Umbi berukuran kecil '),
('Penyakit Layu Fusarium (Fusarium oxysporum f. sp. Melongenae Schlecht)', 'Daun Menguning'),
('Layu Bakteri (Ralstonia (Pseudomonas solanacearum E.F.Sm)', 'Daun layu'),
('Bercak Daun Cercospora (Cercospora capsici Heald et Wolf)', 'Daun Menguning'),
('Bercak Daun Cercospora (Cercospora capsici Heald et Wolf)', 'Terdapat bercak bulat dan kering pada daun'),
('Bercak Daun Cercospora (Cercospora capsici Heald et Wolf)', 'Bercak pada daun berwarna pucat sampai putih'),
('Bercak Daun Cercospora (Cercospora capsici Heald et Wolf)', 'Bercak pada daun menyerupai mata kodok (frogeyes) '),
('Virus Kerupuk', 'Daun melengkung ke bawah '),
('Virus Kerupuk', 'Daun berwarna hijau pekat '),
('Virus Kerupuk', 'Permukaan daun tidak rata'),
('Virus Kerupuk', 'Daun terkesan regas seperti kerupuk '),
('Virus Kerupuk', 'Daun mati'),
('Virus Mosaik', 'Warna daun belang '),
('Virus Mosaik', 'Daun cekung '),
('Virus Mosaik', 'Daun mengeriting '),
('Virus Mosaik', 'Daun memanjang '),
('Virus Mosaik', 'Bentuk daun menyempit'),
('Virus Kuning', 'Helai daun mengalami ï¿½vein clearingï¿½'),
('Virus Kuning', 'Pucuk daun berwarna kuning jelas'),
('Virus Kuning', 'tulang daun menebal'),
('Virus Kuning', 'Daun menggulung keatas'),
('Virus Kuning', 'Daun menyusut'),
('Tungau Kuning (Polyphagotarsonemus latus Banks) ', 'Daun mengeriting '),
('Tungau Kuning (Polyphagotarsonemus latus Banks) ', 'Daun menyusut'),
('Tungau Kuning (Polyphagotarsonemus latus Banks) ', 'Warna daun berubah menjadi warna tembaga/kecoklata'),
('Tungau Kuning (Polyphagotarsonemus latus Banks) ', 'Daun terpuntir'),
('Tungau Kuning (Polyphagotarsonemus latus Banks) ', 'Daun menebal'),
('Trips (Thrips parvispinus Karny) ', 'Daun mengeriting '),
('Trips (Thrips parvispinus Karny) ', 'Permukaan bawah daun berwarna keperak-perakan'),
('Trips (Thrips parvispinus Karny) ', 'Bercak daun berwarna putih'),
('Trips (Thrips parvispinus Karny) ', 'Daun mengering '),
('Trips (Thrips parvispinus Karny) ', 'Daun keriput '),
('Trips (Thrips parvispinus Karny) ', 'Daun timbul benjolan seperti tumor '),
('Ulat Grayak (Spodoptera litura F.)', 'Daun layu'),
('Ulat Grayak (Spodoptera litura F.)', 'Warna daun kekuningan'),
('Kutu Kebul (Bemisia tabaci) ', 'Daun mati'),
('Kutu Kebul (Bemisia tabaci) ', 'Sel-sel dan jaringan daun rusak'),
('Kutu Kebul (Bemisia tabaci) ', 'Bercak nekrotik pada daun '),
('Ulat Grayak (Spodoptera litura F.)', 'Daun transparan'),
('Ulat Grayak (Spodoptera litura F.)', 'Daun rusak '),
('Penyakit Trotol, Bercak Ungu (Purple blotch) ', 'Daun terdapat bercak melekuk '),
('Penyakit Trotol, Bercak Ungu (Purple blotch) ', 'Bercak daun berwarna putih atau kelabu '),
('Penyakit Trotol, Bercak Ungu (Purple blotch) ', 'Bercak daun memebentuk zona berwarna ungu jika sud'),
('Penyakit Trotol, Bercak Ungu (Purple blotch) ', 'Ujung daun kering '),
('Penyakit Embun Buluk/Tepung Palsu (Downy mildew) ', 'Ujung daun terdapat bercak hijau pucat'),
('Penyakit Embun Buluk/Tepung Palsu (Downy mildew) ', 'Terdapat miselium dan spora pada bercak daun '),
('Penyakit Bercak daun Cercospora (Cercospora leaf Spot) ', 'Bercak daun bulat dan memanjang'),
('Penyakit Bercak daun Cercospora (Cercospora leaf Spot) ', 'Bercak daun berwarna coklat dengan tepi menguning '),
('Penyakit Bercak daun Cercospora (Cercospora leaf Spot) ', 'Jumlah bercak terbanyak pada ujung daun'),
('Penyakit Bercak daun Cercospora (Cercospora leaf Spot) ', 'jaringan pada bercak daun mati '),
('Penyakit otomatis, Antraknose (Antrachnose) ', 'Bercak daun berwarna putih'),
('Penyakit otomatis, Antraknose (Antrachnose) ', 'Bercak daun melebar dan menjadi putih kehijauan '),
('Penyakit otomatis, Antraknose (Antrachnose) ', 'Daun bawah rebah'),
('Penyakit otomatis, Antraknose (Antrachnose) ', 'Pangkal daun mengecil '),
('Mati pucuk ', 'Ujung daun busuk kebasah-basahan'),
('Mati pucuk ', 'Ujung daun berwarna coklat'),
('Mati pucuk ', 'Ujung daun mati'),
('Virus Kerdil Kuning, Virus Mosaik (Onion Yellow Dwarf Virus) ', 'Bentuk daun lebih kecil '),
('Virus Kerdil Kuning, Virus Mosaik (Onion Yellow Dwarf Virus) ', 'Warna daun belang hijau pucat sampai kekuningan '),
('Virus Kerdil Kuning, Virus Mosaik (Onion Yellow Dwarf Virus) ', 'Daun berpilin'),
('Hama Putih atau Trips (Thrips)', 'Daun bernoda putih mengkilat seperti perak '),
('Hama Putih atau Trips (Thrips)', 'Seluruh daun berwarna putih jika sudah parah'),
('Lalat Pengorok Daun (Liriomyza chinensis)', 'Terdapat bintik-bintik putih pada daun'),
('Lalat Pengorok Daun (Liriomyza chinensis)', 'daun penuh dengan korokan '),
('Lalat Pengorok Daun (Liriomyza chinensis)', 'Daun menjadi kering dan warna daun seperti terbaka');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

DROP TABLE IF EXISTS `gejala`;
CREATE TABLE IF NOT EXISTS `gejala` (
  `idgejala` varchar(10) NOT NULL,
  `gejala` varchar(1000) NOT NULL,
  `daerah` varchar(10) NOT NULL,
  `jenistanaman` varchar(20) NOT NULL,
  PRIMARY KEY (`idgejala`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`idgejala`, `gejala`, `daerah`, `jenistanaman`) VALUES
('G001', 'Daun Menguning', 'Daun', 'Cabai'),
('G002', 'Warna jaringan akar coklat', 'Akar', 'Cabai'),
('G003', 'Warna jaringan batang coklat', 'Batang', 'Cabai'),
('G004', 'Akar membusuk', 'Akar', 'Cabai'),
('G005', 'Buah kecil', 'Buah/Umbi', 'Cabai'),
('G006', 'Buah gugur', 'Buah/Umbi', 'Cabai'),
('G007', 'Daun layu', 'Daun', 'Cabai'),
('G008', 'Jaringan sekuler bawah batang kecoklatan', 'Batang', 'Cabai'),
('G009', 'Akar menjadi Kecoklatan', 'Akar', 'Cabai'),
('G010', 'Warna buah kekuningan', 'Buah/Umbi', 'Cabai'),
('G011', 'Buah membusuk', 'Buah/Umbi', 'Cabai'),
('G012', 'Terdapat bercak bulat dan kering pada daun', 'Daun', 'Cabai'),
('G013', 'Bercak pada daun berwarna pucat sampai putih', 'Daun', 'Cabai'),
('G014', 'Bercak pada daun menyerupai mata kodok (frogeyes) ', 'Daun', 'Cabai'),
('G015', 'Terdapat bercak pada batang ', 'Batang', 'Cabai'),
('G016', 'Bercak kecil coklat kehitaman pada buah', 'Buah/Umbi', 'Cabai'),
('G017', 'Buah keriput', 'Buah/Umbi', 'Cabai'),
('G018', 'Warna kulit buah seperti jerami padi', 'Buah/Umbi', 'Cabai'),
('G019', 'Terdapat bercak kecil kebasah-basahan pada buah ', 'Buah/Umbi', 'Cabai'),
('G020', 'Buah mengering', 'Buah/Umbi', 'Cabai'),
('G021', 'Biji yang \r\nterserang menjadi coklat\r\n', 'Biji', 'Cabai'),
('G022', 'biji yang terserang menjadi keriput ', 'Biji', 'Cabai'),
('G023', 'Daun melengkung ke bawah ', 'Daun', 'Cabai'),
('G024', 'Daun berwarna hijau pekat ', 'Daun', 'Cabai'),
('G025', 'Permukaan daun tidak rata', 'Daun', 'Cabai'),
('G026', 'Daun terkesan regas seperti kerupuk ', 'Daun', 'Cabai'),
('G027', 'Daun mati', 'Daun', 'Cabai'),
('G028', 'Bunga dan Bakal buah berguguran', 'Bunga', 'Cabai'),
('G029', 'Warna daun belang ', 'Daun', 'Cabai'),
('G030', 'Daun cekung ', 'Daun', 'Cabai'),
('G031', 'Daun mengeriting ', 'Daun', 'Cabai'),
('G032', 'Daun memanjang ', 'Daun', 'Cabai'),
('G033', 'Bentuk daun menyempit', 'Daun', 'Cabai'),
('G034', 'pertumbuhan tanaman terhambat ', 'Batang', 'Cabai'),
('G035', 'Helai daun mengalami “vein clearing”', 'Daun', 'Cabai'),
('G036', 'Pucuk daun berwarna kuning jelas', 'Daun', 'Cabai'),
('G037', 'tulang daun menebal', 'Daun', 'Cabai'),
('G038', 'Daun menggulung keatas', 'Daun', 'Cabai'),
('G039', 'Daun menyusut', 'Daun', 'Cabai'),
('G041', 'Warna daun berubah menjadi warna tembaga/kecoklatan', 'Daun', 'Cabai'),
('G042', 'Daun terpuntir', 'Daun', 'Cabai'),
('G043', 'Tunas dan bunga gugur ', 'Bunga', 'Cabai'),
('G044', 'Permukaan bawah daun berwarna keperak-perakan', 'Daun', 'Cabai'),
('G045', 'Bercak daun berwarna putih', 'Daun', 'Cabai'),
('G046', 'Daun mengering ', 'Daun', 'Cabai'),
('G047', 'Daun keriput ', 'Daun', 'Cabai'),
('G048', 'Daun timbul benjolan seperti tumor ', 'Daun', 'Cabai'),
('G049', 'Pucuk tanaman mati', 'Batang', 'Cabai'),
('G050', 'Tanaman menjadi keriput ', 'Batang', 'Cabai'),
('G051', 'Warna daun kekuningan', 'Daun', 'Cabai'),
('G052', 'Sel-sel dan jaringan daun rusak', 'Daun', 'Cabai'),
('G053', 'Bercak nekrotik pada daun ', 'Daun', 'Cabai'),
('G054', 'Daun transparan', 'Daun', 'Cabai'),
('G055', 'Timbul lubang yang tidak beraturan pada buah ', 'Buah/Umbi', 'Cabai'),
('G056', 'Daun rusak ', 'Daun', 'Cabai'),
('G057', 'Tanaman gundul', 'Batang', 'Cabai'),
('G058', 'Buah berlubang ', 'Buah/Umbi', 'Cabai'),
('G059', 'Terdapat titik coklat kehitaman pada pangkal buah', 'Buah/Umbi', 'Cabai'),
('G060', 'Pangkal buah berlubang ', 'Buah/Umbi', 'Cabai'),
('G061', 'Buah jatuh ke tanah ', 'Buah/Umbi', 'Cabai'),
('G062', 'Pangkal batang menunjukkan bekas gigitan ulat', 'Batang', 'Bawang'),
('G063', 'Pangkal batang terpotong – potong', 'Batang', 'Bawang'),
('G064', 'Batang rebah ', 'Batang', 'Bawang'),
('G065', 'Batang rusak dan berceceran ', 'Batang', 'Bawang'),
('G066', 'Daun bernoda putih mengkilat seperti perak ', 'Daun', 'Bawang'),
('G067', 'Seluruh daun berwarna putih jika sudah parah', 'Daun', 'Bawang'),
('G068', 'Umbi berukuran kecil ', 'Buah/Umbi', 'Bawang'),
('G069', 'Terdapat bintik-bintik putih pada daun', 'Daun', 'Bawang'),
('G070', 'daun penuh dengan korokan ', 'Daun', 'Bawang'),
('G071', 'Daun menjadi kering dan warna daun seperti terbakar', 'Daun', 'Cabai'),
('G072', 'Daun terdapat bercak melekuk ', 'Daun', 'Bawang'),
('G073', 'Bercak daun berwarna putih atau kelabu ', 'Daun', 'Cabai'),
('G074', 'Bercak daun memebentuk zona berwarna ungu jika sudah parah', 'Daun', 'Cabai'),
('G075', 'Ujung daun kering ', 'Daun', 'Cabai'),
('G076', 'Umbi membusuk', 'Buah/Umbi', 'Bawang'),
('G077', 'Jaringan umbi mengering ', 'Buah/Umbi', 'Bawang'),
('G078', 'Ujung daun terdapat bercak hijau pucat', 'Daun', 'Bawang'),
('G079', 'Terdapat miselium dan spora pada bercak daun ', 'Daun', 'Bawang'),
('G080', 'Tanaman kerdil', 'Batang', 'Bawang'),
('G081', 'Umbi berkerut ', 'Buah/Umbi', 'Bawang'),
('G082', 'Umbi berwarna kecoklatan ', 'Buah/Umbi', 'Bawang'),
('G083', 'Bagian umbi dalam tampak kering dan pucat ', 'Buah/Umbi', 'Bawang'),
('G084', 'Bercak daun bulat dan memanjang', 'Daun', 'Bawang'),
('G085', 'Bercak daun berwarna coklat dengan tepi menguning ', 'Daun', 'Bawang'),
('G086', 'Jumlah bercak terbanyak pada ujung daun', 'Daun', 'Bawang'),
('G087', 'jaringan pada bercak daun mati ', 'Daun', 'Bawang'),
('G088', 'Bercak daun berwarna putih', 'Daun', 'Bawang'),
('G089', 'Bercak daun melebar dan menjadi putih kehijauan ', 'Daun', 'Bawang'),
('G090', 'Tanaman mati mendadak ', 'Batang', 'Bawang'),
('G091', 'Daun bawah rebah', 'Daun', 'Bawang'),
('G092', 'Pangkal daun mengecil ', 'Daun', 'Bawang'),
('G093', 'Daun terpelintir', 'Daun', 'Bawang'),
('G094', 'Daun menguning ', 'Daun', 'Bawang'),
('G095', 'Daun terkulai/layu ', 'Daun', 'Bawang'),
('G097', 'Dasar umbi terdapat cendawan keputih-putihan', 'Buah/Umbi', 'Bawang'),
('G098', 'Pangkal umbi berair ', 'Buah/Umbi', 'Bawang'),
('G100', 'Ujung daun busuk kebasah-basahan', 'Daun', 'Bawang'),
('G101', 'Ujung daun berwarna coklat', 'Daun', 'Bawang'),
('G102', 'Ujung daun mati', 'Daun', 'Bawang'),
('G103', 'Lapisan umbi terdapat bercak merah keunguan ', 'Buah/Umbi', 'Bawang'),
('G104', 'Lapisan umbi tampak basah', 'Buah/Umbi', 'Bawang'),
('G105', 'Lapisan umbi terpisah-pisah ', 'Buah/Umbi', 'Bawang'),
('G106', 'Umbi berair', 'Buah/Umbi', 'Bawang'),
('G107', 'Tanaman menimbulkan bau busuk yang menyengat', 'Batang', 'Bawang'),
('G108', 'Bentuk daun lebih kecil ', 'Daun', 'Bawang'),
('G109', 'Warna daun belang hijau pucat sampai kekuningan ', 'Daun', 'Bawang'),
('G110', 'Daun berpilin', 'Daun', 'Bawang'),
('G111', 'Terdapat puru berbentuk bulat pada akar', 'Akar', 'Bawang'),
('G112', 'Akar lebih pendek', 'Akar', 'Bawang'),
('G113', 'Rambut akar sedikit ', 'Batang', 'Bawang'),
('G114', 'Tanaman lebih kaku', 'Batang', 'Bawang'),
('G115', 'Tanaman lebih kerdil ', 'Batang', 'Bawang'),
('G116', 'Tanaman menguning', 'Batang', 'Bawang'),
('G117', 'Rambut akar sedikit', 'Akar', 'Bawang'),
('G118', 'Akar lebih sedikit', 'Akar', 'Bawang'),
('G119', 'Daun menebal', 'Daun', 'Cabai'),
('P600', 'q', 'Batang', 'Bawang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

DROP TABLE IF EXISTS `penyakit`;
CREATE TABLE IF NOT EXISTS `penyakit` (
  `idpenyakit` varchar(20) NOT NULL,
  `namapenyakit` varchar(1000) NOT NULL,
  `jenistanaman` varchar(20) NOT NULL,
  `kulturteknis` varchar(1000) NOT NULL,
  `fisikmekanis` varchar(1000) NOT NULL,
  `kimiawi` varchar(1000) NOT NULL,
  `hayati` varchar(1000) NOT NULL,
  PRIMARY KEY (`idpenyakit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`idpenyakit`, `namapenyakit`, `jenistanaman`, `kulturteknis`, `fisikmekanis`, `kimiawi`, `hayati`) VALUES
('P001', 'Penyakit Layu Fusarium (Fusarium oxysporum f. sp. Melongenae Schlecht)', 'Cabai', 'Penggunaan benih sehat, penggiliran tanaman, perbaikan drainase dan \r\nsanitasi terhadap lingkungan. ', 'Mengeradikasi tanaman terserang dengan cara dicabut dan dimusnahkan', 'Apabila tetap tidak dapat menekan serangan penyakit, maka dapat \r\nmenggunakan fungisida efektif yang telah terdaftar dan mendapatkan izin \r\ndari Menteri Pertanian, seperti : Saco P dan Anaconda 50 WP.', 'Pemanfaatan agens antagonis Trichoderma spp. Dan Gliocladium spp. \r\nyang diaplikasikan pada kantong pesemaian sebanyak 5 gram per kantong, 3 \r\nhari sebelum penanaman benih atau bersamaan dengan penanaman benih. '),
('P002', 'Layu Bakteri (Ralstonia (Pseudomonas solanacearum E.F.Sm)', 'Cabai', 'Pergiliran tanaman, perbaikan aerasi tanah dengan pembuatan guludan \r\nsetinggi 40 – 50 cm, penurunan pH tanah dengan memberi belerang, \r\npenggunaan benih sehat serta sanitasi dengan mengeradikasi tanaman \r\nterserang dan sisa tanaman sakit dengan cara dicabut dan dimusnahkan.', '', 'Apabila tetap tidak dapat menekan serangan penyakit, maka dapat \r\nmenggunakan bakterisida efektif yang telah terdaftar dan mendapatkan izin \r\ndari Menteri Pertanian, seperti : Bactocyn 150 L dan Stamycin 20 WP.', 'a. Pemanfaatan agens antagonis Trichoderma spp. dan Gliocladium spp. \r\nyang diaplikasikan pada kantong pesemaian sebanyak 5 gram per kantong, 3 hari sebelum penanaman benih atau bersamaan dengan \r\npenanaman benih. \r\nb. Pemanfaatan mikroba antagonis Pseudomonas fluorescens. '),
('P003', 'Bercak Daun Cercospora (Cercospora capsici Heald et Wolf)', 'Cabai', 'a. Pemilihan bibit yang bebas patogen, perbaikan drainase,dan sanitasi \r\nterhadap lingkungan. \r\nb. Pola tanam : - menanam pada musim kemarau \r\n-  pergiliran tanaman dengan tanaman non Solanaceae.', 'Mengeradikasi tanaman terserang dengan cara dicabut dan dimusnahkan. ', 'Apabila tetap tidak dapat menekan serangan penyakit, maka dapat \r\nmenggunakan fungisida efektif yang telah terdaftar dan mendapatkan izin \r\ndari Menteri Pertanian, seperti : Acrobat 50 WP, Broconil 75 WP, Daconil \r\n500 F, Fitozeb 80 WP, Greenville 80 WP, Haticol 70 WP, Scorpio 250 EC, \r\nVelimex 80 WP dan lain-lain. ', ''),
('P004', 'Antraknosa/Penyakit Patek (Colletotrichum capsici (Syd.) Bult. Et. Bisby)', 'Cabai', 'a. Penggunaan benih sehat, perendaman benih dalam air panas ± 55°C \r\nselama 30 menit. \r\nb. Pola tanam : - menanam pada musim kemarau \r\n-  pergiliran tanaman dengan tanaman non solanaceae. \r\nc. Perbaikan drainase serta sanitasi dan pemusnahan gulma dan buah cabai \r\nyang terserang penyakit. ', '', 'Apabila tetap tidak dapat menekan serangan penyakit dan gejala \r\nserangan semakin meluas, maka dapat menggunakan fungisida efektif yang \r\ntelah terdaftar dan mendapatkan izin dari Menteri Pertanian, seperti : Agronil \r\n75 WP, Belvo 80 WDG, Conasol 50 SC, Daconil 500 F, Judo 70 WP, \r\nPromaneb 80 WP, Topsin M 500 F, Velimex 80 WP dan lain-lain.', 'a. Pemanfaatan agens antagonis Trichoderma spp. dan Gliocladium spp. \r\nyang diaplikasikan pada kantong pesemaian sebanyak 5 gram per kantong, 3 hari sebelum penanaman benih atau bersamaan dengan \r\npenanaman benih. \r\nb. Pemanfaatan mikroba antagonis Pseudomonas fluorescens dan Bacillus \r\nsubtilis yang diaplikasikan mulai fase pembuangan hingga 2 minggu \r\nsetelah pembuangan dengan selang waktu 1 minggu. '),
('P005', 'Busuk Buah (Fruit rot) ', 'Cabai', 'a. Pemilihan bibit yang bebas patogen, perbaikan drainase,dan sanitasi \r\nterhadap lingkungan. \r\nb. Pola tanam : - menanam pada musim kemarau \r\n-  pergiliran tanaman dengan tanaman non Solanaceae. ', 'Mengeradikasi tanaman terserang dengan cara dicabut dan dimusnahkan. ', 'Apabila tetap tidak dapat menekan serangan penyakit, maka dapat \r\nmenggunakan fungisida efektif yang telah terdaftar dan mendapatkan izin \r\ndari Menteri Pertanian, seperti : Acrobat 50 WP, Broconil 75 WP, Daconil \r\n500 F, Fitozeb 80 WP, Greenville 80 WP, Haticol 70 WP, Scorpio 250 EC, \r\nVelimex 80 WP dan lain-lain', ''),
('P006', 'Virus Kerupuk', 'Cabai', 'a. Menggunakan bibit tanaman yang sehat (tidak mengandung virus) atau \r\nbukan dari daerah terserang. b. Melakukan rotasi / pergiliran tanaman dengan tanaman bukan inang virus \r\n(terutama bukan famili Solanaceae, seperti : tomat, cabai, kentang \r\ntembakau dan famili Cucurbitaceae seperti : mentimun). \r\nc. Melakukan sanitasi lingkungan, terutama mengendalikan tanaman \r\npengganggu/gulma. ', 'a. Penggunaan mulsa plastik perak di dataran tinggi dan jerami didataran \r\nrendah mengurangi infestasi serangga afid yang berperan sebagai vektor \r\nvirus. \r\nb. Eradikasi tanaman sakit, yaitu tanaman yang menunjukkan gejala segera \r\ndicabut dan dimusnahkan. ', '', ''),
('P007', 'Virus Mosaik', 'Cabai', 'a. Menggunakan bibit tanaman yang sehat (tidak mengandung virus) atau \r\nbukan berasal dari daerah terserang. \r\nb. Pemupukan yang berimbang, yaitu 150 – 200 kg Urea, 450 – 500 kg Za, \r\n100 – 150 kg TSP, 100 – 150 kg KCL, 20 – 30 tonpupuk organik per \r\nhektar.                                                              c. Imunisasi tanaman cabai dengan virus CMV yang dilemahkan dengan \r\nsatelit virus CARNA-5 dapat menahan serangan CMV yang lebih ganas \r\nd. Sanitasi terhadap lingkungan, terutama mengendalikan gulma yang \r\ndapat menjadi tanaman inang virus. ', 'a. Penggunaan mulsa plastik perak di dataran tinggi dan jerami didataran \r\nrendah mengurangi infestasi serangga afid yang berperan sebagai vektor \r\nvirus. \r\nb. Pemusnahan terhadap tanaman muda yang terinfeksi virus. ', '', ''),
('P008', 'Virus Kuning', 'Cabai', 'a. Menggunakan bibit tanaman yang sehat (tidak mengandung virus) atau \r\nbukan berasal dari daerah terserang. \r\nb. Melakukan rotasi tanaman dengan tanaman bukan inang virus (terutama \r\nbukan dari famili Solanaceae seperti tomat, cabai, kentang, tembakau \r\ndan famili Cucurbitaceae seperti mentimun). \r\nc. Melakukan sanitasi lingkungan, terutama mengendalikan tumbuhan \r\npengganggu/gulma berdaun lebar dari jenis babadotan, gulma bunga \r\nkancing dan ciplukan yang dapat menjadi tanaman inang virus. ', 'a. Penggunaan mulsa perak di dataran tinggi dan jerami didatarn rendah \r\nmengurangi infestasi serangga pengisap daun. \r\nb. Eradikasi tanaman sakit, yaitu tanaman yang menunjukkan gejala segera \r\ndicabut dan dimusnahkan supaya tidak menjadi sumber penularan ke \r\ntanaman lain yang sehat. ', '', ''),
('P009', 'Tungau Kuning (Polyphagotarsonemus latus Banks) ', 'Cabai', 'Sanitasi terhadap lingkungan.', 'Mengeradikasi bagian tanaman terserang dan memusnahkannya. ', 'Apabila berdasarkan hasil pengamatan tanaman contoh, serangan \r\nmencapai lebih atau sama dengan 15 % per tanaman contoh, maka dapat digunakan pestisida efektif yang tedaftar dan berdasarkan izin dari Menteri Pertanian untuk menekan populasi, seperti :  Apollo 500 SC, Mesurol 50 WP, Mitisun 570 WP, Pegasus 500 EC,Terminator 135 EC dan Tokuthion 500 EC. ', 'Pemanfaatan musuh alami yaitu predator Amblyseius cucumeris'),
('P010', 'Trips (Thrips parvispinus Karny) ', 'cabai', 'Membakar sisa jerami/mulsa yang dipakai selama pertanaman, serta \r\nmelakukan sanitasi dan pemusnahan bagian tanaman yang terserang', 'a. Penggunaan mulsa plastik yang dikombinasikan dengan tanaman \r\nperangkap caisin dapat menunda serangan yang biasanya terjadi pada \r\numur 14 hari setelah tanam. \r\nb. Penggunaan perangkap likat warna biru, putih atau kuning sebanyak 40 \r\nbuah per hektar atau 2 buah per 500 m² dipasang ditengah pertanaman \r\nsejak tanaman berumur 2 minggu. Setiap minggu perangkap diolesi \r\ndengan oli atau perekat. Perangkap likat dipasang dengan ketinggian \r\nsedikit diatas tajuk tanaman. ', 'Apabila berdasarkan hasil pengamatan tanaman contoh, serangan \r\nmencapai lebih atau sama dengan 15 % per tanaman contoh, maka dapat \r\ndigunakan pestisida efektif yang tedaftar dan berdasarkan izin dari Menteri \r\nPertanian untuk menekan populasi, seperti : Abuki 50 SL, Agrimec 18 EC, \r\nAmirid 200 SL, Anwavin 500 EC, Delouse 200 SL, Demolish 18 EC, \r\n \r\nLavista 200 EC, Regent 50 SC dan Sidamec 20 EC dan lain-lain.  ', 'Pemanfaatan musuh alami predator Coccinella repanda, Amblysius \r\ncucumeris, Orius minutes, Arachnidea dan patogen Entomophtora SP'),
('P011', 'Kutu Daun Persik (Myzus persicae Sulz.)', 'Cabai', 'Sanitasi dan pemusnahan gulma dan bagian tanaman yang terserang dengan \r\ncara dibakar. ', 'a. Menggunakan kain kassa / kelambu baik di bedengan pesemaian maupun \r\ndi lapangan. \r\nb. Penggunaan perangkap air berwarna kuning sebanyak 40 buah per hektar \r\natau 2 buah per 500 m² dipasang ditengah pertanaman sejak tanaman \r\nberumur 2 minggu.', 'Apabila berdasarkan hasil tanaman contoh, jumlah kutu daun lebih dari \r\n7 ekor per 10 daun contoh atau serangan mencapai lebih atau sama dengan \r\n15 % pertanaman contoh, maka dapat menggunakan insektisida yang efektif \r\nyang telah terdaftar dan mendapatkan izin dari Menteri Pertanian, seperti : \r\nMarshal 200 EC, Padan 50 SP, Tetrin 30 EC dan Voltage 560 EC. ', 'Pemanfaatan musuh alami parasitoid Aphidius sp., predator kumbang \r\nCoccinella transversalis, Menochillus sexmaculata, Chrysopa sp., larva \r\nSyrphidae, Harmonia octomaculata, Microphis lineate, Veranius sp. Dan \r\npatogen Entomophthora sp., Verticillium sp. '),
('P012', 'Kutu Kebul (Bemisia tabaci) ', 'Cabai', 'a. Menanam pinggiran lahan dengan tanaman jagung atau bunga matahari \r\nsebagai barier dan memperbanyak popolasi agens hayati. \r\nb. Pergiliran (rotasi) tanaman dengan tanaman bukan inang virus (terutama \r\nbukan famili Solanaceae seperti tomat, cabai, kentang dan Cucurbitaceae \r\nseperti mentimun).                          c. Sanitasi lingkungan, terutama mengendalikan gulma daun lebar \r\nbabadotan dan ciplukan yang dapat menjadi tanaman inang virus. \r\nd. Tumpang sari antara tanaman sayuran, cabai dengan tagetes untuk \r\nmengurangi resiko serangan. ', 'Pemasangan perangkap likat berwarna kuning (40 buah per ha), pemasangan \r\nkelambu di pembibitan sampai di pertanaman terutama saat populasi tinggi / \r\nmusim kemarau dan sisa tanaman terserang dikumpulkan dan dibakar. ', 'Apabila tetap tidak dapat menekan populasi hama, maka dapat \r\nmenggunakan insektisida efektif yang telah terdaftar dan mendapatkan izin \r\ndari Menteri Pertanian, seperti : Actara 25 WG dan Pegasus 500 SC. ', 'a. Kumbang predator Menochilus sexmaculatus (Coccinelidae), mampu \r\nmemangsa 200 – 400 ekor nimfa kutu kebul. \r\nb. Tabuhan parasitoid nimfa Encarcia formosa serangga betinanya mampu \r\nmenghasilkan telur sebanyak 100 – 200 butir, untuk tanaman cabai 1 ekor \r\nE. formosa setiap 4 tanaman/minggu dilakukan selama 8 – 10 minggu. \r\nc. Untuk meningkatkan musuh alami dilapangan diperlukan pelepasan \r\nparasitoid dan predator secara berkala'),
('P013', 'Ulat Grayak (Spodoptera litura F.)', 'Cabai', 'Sanitasi lahan dari gulma dan melakukan pengolahan lahan yang intensif. ', 'a. Pembutitan, mengumpulkan larva atau pupa dan bagian tanaman yang \r\nterserang kemudian memusnahkannya. \r\nb. Penggunaan perangkap feromonoid seks untuk ngengat sebanyak 40 buah \r\nper hektar atau 2 buah per 500 m² dipasang ditengah pertanaman sejak \r\ntanaman berumur 2 minggu. ', 'Apabila berdasarkan hasi pengamatan tanaman contoh, serangan \r\nmencapai lebih atau sama dengan 12,5 % per tanaman contoh, maka dapat \r\nmenggunakan insektisida efektif yang telah terdaftar dan mendapat izin dari Menteri Pertanian untuk menekan populasi hama, seperti :  Actan 400 SL, \r\nAmonite 25 EC, Barrier 20 SP, Cucak Rowo 25 EC, Daitona 400 EC, Gladiator 25 EC, Matador 25 EC, Prozinon 600 EC, Trajet 25 EC, Veto 650 EC dan lain-lain. ', 'Pemanfaatan musuh alami pathogen Sl-NPV (Spodoptera litura – \r\nNuclear Polyhedrosis Virus), predator Sycanus sp., Andrallus spinideus, \r\nSelonepnis geminada, parasitoid Apanteles sp., Telenomus spodopterae, \r\nMicroplistis similis, Peribeae sp. '),
('P014', 'Ulat Buah (Helicoverpa armigera Hubner) ', 'Cabai', 'Sanitasi lahan dari gulma serta sanitasi terhadap buah yang \r\nterserang/berlubang untuk dikumpulkan dan dimusnahkan. ', '', 'Apabila tetap tidak dapat menekan populasi hama, maka dapat \r\nmenggunakan insektisida efektif yang telah terdaftar dan mendapatkan izin \r\ndari Menteri Pertanian, seperti : Bima 10 WP dan Proaxis 15 SC.', 'Memanfaatkan musuh alami yang dapat menyerang ulat buah, antara \r\nlain : parasitoid telur Trichogramma nana, parasitoid larva  Diadegma \r\nargenteopilosa, cendawan Metharrhizium dan nematode parasit serangga \r\n(“Entomophagous nematodes”). '),
('P015', 'Lalat Buah (Bactrocera sp)', 'Cabai', 'a. Pencacahan (pembongkaran) tanah sekitar tanaman agar kepompong yang \r\nberada di dalam tanah terkena sinar matahari, terganggu hidupnya dan \r\nakhirnya mati. \r\nb. Sanitasi buah yang terserang baik yang gugur maupun yang masih berada \r\ndipohon, dikumpulkan dan dimusnahkan dengan cara dibakar atau \r\ndibenamkan dalam tanah.', 'Penggunaan perangkap dengan atraktan Metil Eugenol (ME) atau \r\nminyak Melaleuca brachteata (MMB) dengan dosis 1 ml / perangkap \r\nsebanyak 40 buah per hektar atau 2 buah per 500 m² yang dipasang ditengah \r\npartanaman sejak tanaman berumur 2 minggu. Setiap 2 minggu atraktan \r\nditambah. Perangkap dipasang dengan ketinggian ± 50 cm (sedikit diatas \r\ntajuk tanaman). ', 'Apabila tetap tidak dapat menekan populasi hama, maka dapat \r\nmenggunakan insektisida efektif yang telah terdaftar dan mendapatkan izin \r\ndari Menteri Pertanian, seperti : Bima 10 WP dan Bestox 50 EC. ', 'Pemanfaatan musuh alami parasitoid famili Braconidae (Biosteres sp., \r\nOpius sp.), predator famili Formicidae (semut), Arachnidae (laba-laba), \r\nStaphylinidae (kumbang), Dermaptera (cecopet). '),
('P016', 'Penyakit Trotol, Bercak Ungu (Purple blotch) ', 'Bawang', '', 'Pencelupan bibit umbi maksimal 3 menit dalam larutan agens hayati \r\nPseudomonas fluorescens (Pf) dosis 1 ml/l air dengan kepadatan populasi ï¿½ \r\n109.', 'Jika ambang pengendalian bercak ungu telah mencapai (AP penyakit \r\nbercak ungu adalah jika kerusakan daun sebesar 10 % pertanaman contoh) \r\nlakukan penyemprotan dengan fungisida efektif yang terdaftar dan diizinkan \r\noleh Menteri Pertanian, seperti : Agrokol 70 WP, Alterna 90 WP, Bazoka \r\n450 SC, Daconil 500 F, Fitozeb 80 WP, Nustar 400 EC, Oktanil 75 WP, \r\nPromidon 50 WP, Solid 60 WP, Tonikur 250 EC, Tropicol 82 WP, Ziflo 76 \r\nWG dan lain-lain. Adapun waktu penyemprotan paling baik sore hari. ', ''),
('P017', 'Penyakit Embun Buluk/Tepung Palsu (Downy mildew) ', 'Bawang', 'a. Mencegah menanam bawang merah di sekitar area serangan atau bekas \r\ntanah/area terserang, penggunaan bibit umbi dari tanaman yang sehat, \r\nmengadakan pergiliran tanaman pada areal serangan selama 3 tahun. \r\nb. Penggunaan pupuk yang berimbang, karena penggunaan pupuk N yang \r\nberlebih dapat mengakibatkan tanaman menjadi sekulen karena \r\nbertambahnya ukuran sel yang tipis, sehingga mudah terserang penyakit. \r\nc. Menghindari kelembaban tinggi dengan perbaikan drainase tanah dan \r\nsanitasi/membakar sisa tanaman sesudah panen. ', 'Perendaman bibit umbi maksimal 3 menit dalam larutan agens hayati \r\nPseudomonas fluorescens (Pf) dosis 1 ml/l air dengan kepadatan populasi ± \r\n109. ', 'Penggunaan agens hayati (semprotkan 10 cc Pf/l air 1-2 kali/minggu \r\ndengan kepadatan populasi ± 109 dan volume semprot 500 l/ha) atau \r\nfungisida yang terdaftar dan diizinkan oleh Menteri Pertanian pada awal \r\nmunculnya gejala, seperti : Daconil 75 WP atau Folirfos 400 AS.', ''),
('P018', 'Penyakit Bercak daun Cercospora (Cercospora leaf Spot) ', 'Bawang', 'Menggunakan bibit umbi dari tanaman yang sehat, melakukan sanitasi \r\nlapangan secara cermat dan mengurangi suhu pada kelembaban kebun. ', 'Memotong daun yang terserang dan memusnahkannya. ', 'Menggunakan fungisida efektif yang terdaftar dan diizinkan oleh \r\nMenteri Pertanian, seperti : Benhasil 50 WP dan Colanta 70 WP.', ''),
('P019', 'Penyakit otomatis, Antraknose (Antrachnose) ', 'Bawang', 'a. Waktu tanam yang tepat yaitu penanaman pada musim kemarau, \r\nmenanam varietas yang tahan seperti varietas Sumenep dan penggunaan \r\nbibit umbi yang berasal dari tanaman sehat. \r\nb. Penggunaan pupuk yang berimbang, misalnya penggunaan pupuk N yang \r\nberlebih dapat mengakibatkan tanaman menjadi sekulen karena \r\nbertambahnya ukuran sel yang tipis, sehingga mudah terserang penyakit. \r\nc. Segera mencabut dan memusnahkan tanaman yang terserang. ', 'Perendaman bibit umbi maksimal 3 menit dalam larutan agens hayati \r\nPseudomonas fluorescens (Pf) dosis 1 ml/l air dengan kepadatan populasi ± \r\n109. ', 'Jika ambang pengendalian penyakit antraknosa telah tercapai (AP \r\npenyakit antraknosa adalah jika kerusakan daun sebesar 10 % pertanaman \r\ncontoh) lakukan penyemprotan fungisida efektif dan dianjurkan, seperti : \r\nDerosal 60 WP. Penyemprotan sebaiknya dilakukan pada sore hari. ', 'Penggunaan pestisida nabati seperti daun dan biji nimbi. '),
('P020', ' Penyakit Moler atau Layu Fusarium (Fusarium Basal Plate Rot) ', 'Bawang', ' Penyakit Moler atau Layu Fusarium (Fusarium Basal Plate Rot) ', 'Melakukan perendaman bibit umbi bawang merah sebelum ditanam \r\ndengan cara aplikasi agens hayati Trichoderma spp, atau Gliocladium spp atau fusarium non patogen, atau dengan pencelupan bibit umbi maksimal 3 menit dalam larutan Pf dosis 1 ml/l air dengan kepadatan populasi ± 109.', 'Pencelupan dan perlakuan tanah dengan fungisida efektif yang \r\nterdaftar dan dilegalkan oleh Menteri Pertanian, seperti : Anaconda 50 WP \r\ndan Saco P. ', ''),
('P021', 'Mati pucuk ', 'Bawang', 'Menanam varietas bibit umbi yang tahan dan sehat, mengurangi kerapatan \r\ntanaman dengan mengatur jarak tanam, sanitasi rumput-rumputan, perbaikan \r\ndrainase, menghindari pelukaan umbi baik pada saat tanam ataupun panen, \r\nrotasi tanaman dalam waktu yang lama, mencabut dan memusnahkan \r\ntanaman yang terserang.', 'Melakukan perendaman bibit umbi bawang merah sebelum ditanam \r\ndengan cara aplikasi agens hayati Trichoderma spp, atau Gliocladium spp atau fusarium non patogen, atau dengan pencelupan bibit umbi maksimal 3 menit dalam larutan Pf dosis 1 ml/l air dengan kepadatan populasi ± 109. ', '', ''),
('P022', 'Penyakit Buluk Penicillium (Blue Mold) ', 'Bawang', 'Pergiliran tanaman dengan jenis tanaman lain (bukan dari jenis bawang – \r\nbawangan atau Allium) serta menjaga drainase agar tanah tidak terlalu becek.', 'Pemberian lampu dan kipas angin agar tidak mudah lembab pada saat \r\nmelakukan penyimpanan. ', '', ''),
('P023', 'Virus Kerdil Kuning, Virus Mosaik (Onion Yellow Dwarf Virus) ', 'Bawang', 'Penanaman umbi yang bebas virus dan ditanam didaerah bebas virus yang \r\nletaknya jauh dari sumber penyakit, pergiliran tanaman selain jenis Allium  \r\ndan mencabut tanaman yang terserang. ', 'Eradikasi tanaman yang menunjukkan gejala serangan', '', ''),
('P024', 'Penyakit Nematoda Buncak Akar (Root Knot Nemotade)', 'Bawang', 'Sterilisasi lahan sebelum proses penanaman, pengaturan sistem pengairan / \r\ndrainase dan kondisi kelembaban dipertahankan dengan baik. ', '', '', ''),
('P025', 'Ulat Bawang (Onion caterpillar, Beet armyworm)', 'Bawang', 'Sanitasi gulma karena dapat menarik serangga betina untuk meletakkan\r\ntelur, pengumpulan larva kemudian memusnahkannya, pengolahan lahan\r\nuntuk membongkar persembunyian ulat.', '', '', 'Memanfaatkan predator ulat tanah, yaitu burung'),
('P026', 'Hama Putih atau Trips (Thrips)', 'Bawang', 'Penyiraman dilakukan pada siang hari untuk menghilangkan nimfa trips\r\nyang menempel pada daun dan menurunkan suhu disekitar tanaman.', '', 'Apabila populasi dan serangan terus meningkat (belum ada ambang\r\npengendaliannya) dilakukan pengendalian dengan insektisida efektif yang\r\ntelah resmi terdaftar oleh Menteri Pertanian, seperti : Padan 50 SP.', 'Pemanfaatan predator hama, yaitu : Micraspis crocea dan Menochilus\r\nsexmaculatus.'),
('P027', 'Ulat Tanah (Cut Worm)', 'Bawang', 'Penyiraman dilakukan pada siang hari untuk menghilangkan nimfa trips\r\nyang menempel pada daun dan menurunkan suhu disekitar tanaman.', '', 'Apabila populasi dan serangan terus meningkat (belum ada ambang\r\npengendaliannya) dilakukan pengendalian dengan insektisida efektif yang\r\ntelah resmi terdaftar oleh Menteri Pertanian, seperti : Padan 50 SP.', 'Pemanfaatan predator hama, yaitu : Micraspis crocea dan Menochilus\r\nsexmaculatus.'),
('P028', 'Lalat Pengorok Daun (Liriomyza chinensis)', 'Bawang', 'a. Penanaman varietas toleran; seperti varietas Philipine dan Pergiliran\r\ntanaman dengan menanam tanaman selain bawang merah.\r\nb. Budidaya tanaman sehat; upayakan tanaman tumbuh subur melalui\r\npengairan yang cukup, pemupukan berimbang, dan penyiangan gulma.\r\nc. Penanaman tanaman perangkap; misalnya menanam tanaman kacang\r\nmerah yang ditanam lebih awal (± 2 minggu sebelum tanam bawang\r\nmerah) di sekitar pinggiran tanaman bawang merah, setiap daun kacang\r\nmerah yang terserang pengorok daun dipetik/diambil dan dimusnahkan.', 'a. Penggunaan mulsa plastik; mulsa plastik berwarna perak dipasang\r\nsebelum tanam, lalu diberi lubang disetiap titik jarak tanam dengan garis\r\ntengah lubang yang cukup untuk berkembangnya tanaman bawang merah\r\nsampai panen akan mematikan larva yang jatuh dari daun.\r\nb. Pengambilan daun yang menunjukkan gejala korokan dipotong dan\r\ndibutit lalu dimusnahkan atau dengan pemasangan kain kelambu.\r\nc. Pemasangan likat perangkap; lalat pengorok daun tertarik pada warna\r\nkuning. Pasanglah likat perangkap kuning (dari kertas atau plastik)\r\nberperekat, dengan ukuran 16 cm x 16 cm yang dipasang pada\r\ntriplek/seng berukuran sama, dengan ketinggian ± 0,5 m dari permukaan\r\ntanah. Jumlah perangkap 80 – 100 buah/ha, disebar merata di\r\npertanaman.\r\nd. Perangkap lampu neon (TL 10 watt) dengan waktu nyala mulai pukul\r\n18.00 – 24.00 paling efisien dan efektif untuk menangkap imago.\r\n523.', 'Apabila populasi dan serangan terus meningkat (belum ada ambang\r\npengendaliannya) dilakukan pengendalian dengan insektisida efektif yang\r\ntelah resmi terdaftar oleh Menteri Pertanian, seperti : Cyrrotex 75 SP, Midic\r\n10 WP, Trigard 75 WP dan Prodigy 100 SC.', 'Pengendalian Biologis dengan menggunakan parasitoid Hemiptarsenus\r\nvaricornis, Opius sp, Neochrysocharis sp., Asecodes sp., Chrysocharis sp.,\r\nChrysonotomya sp., Gronotoma sp., Quadrasticus sp., Digyphus isaea, dan\r\npredator Coenosia humilis.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `iduser` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`iduser`, `username`, `password`, `nama`) VALUES
('U001', 'admin', 'admin', 'admin');
--
-- Database: `sispakdb`
--
CREATE DATABASE IF NOT EXISTS `sispakdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sispakdb`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(1) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'pam', 'pam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamus`
--

DROP TABLE IF EXISTS `kamus`;
CREATE TABLE IF NOT EXISTS `kamus` (
  `id_kamus` int(2) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `ket` text NOT NULL,
  PRIMARY KEY (`id_kamus`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kamus`
--

INSERT INTO `kamus` (`id_kamus`, `nama`, `gambar`, `ket`) VALUES
(12, 'Blok Mesin', '85blokmesin.jpg', ' Sebagai tempat dudukan komponen-komponen busi, poros pengkol, dll.'),
(13, 'Busi', '53busi.jpg', 'Untuk memercikan bunga api.'),
(14, 'Piston', '71piston.png', 'Piston mempunyai bentuk seperti silinder. Bekerja dan bergerak\r\nsecara translasi (gerak bolak-balik) di dalam silinder. Piston merupakan\r\nsumbu geser yang terpasang presisi di dalam sebuah silinder. Dengan\r\ntujuan, baik untuk mengubah volume dari tabung, menekan fluida dalam\r\nsilinder, membuka-tutup jalur aliran atau pun kombinasi semua itu. Piston\r\nterdorong sebagai akibat dari ekspansi tekanan sebagai hasil\r\npembakaran. Piston selalu menerima temperatur dan tekanan yang\r\ntinggi, bergerak dengan kecepatan tinggi dan terus menerus.'),
(15, 'Camshaft', '34camshaft.png', 'Camshaft adalah sebuah alat yang digunakan dalam mesin untuk\r\nmenjalankan poppet valve. Dia terdiri dari batangan silinder. Cam\r\nmembuka katup dengan menekannya, atau dengan mekanisme bantuan\r\nlainnya, ketika mereka berputar.'),
(16, 'Kipas Radiator', '39kipas radiator.jpg', 'Mendinginkan antara radiator dengan mesin bagian luar.'),
(17, 'Bak engkol', '75bak engkol.png', 'Crankcase (bak engkol) biasanya terbuat dari aluminium die\r\ncasting dengan sedikit campuran logam.\r\nBak engkol fungsinya sebagai rumah dari komponen yang ada di\r\nbagian dalamnya, yaitu komponen:\r\n- Generator atau alternator untuk pembangkit daya tenaga listriknya\r\nsepeda motor\r\n- Pompa oli\r\n- Kopling\r\n- Poros engkol dan bantalan peluru\r\n- Gigi persneling atau gigi transmisi\r\n- Sebagai penampung oli pelumas\r\n\r\nBak engkol terletak di bawah silinder dan biasanya merupakan\r\nbagian yang ditautkan pada rangka sepeda motor.'),
(18, 'Radiator', '36radiator.jpg', 'Komponen untuk mendinginkan air yang telah menyerap panas dari mesin, dengan cara membuang panas air tersebut melalui sirip-sirip pendinginannya'),
(19, 'Busi', '40busi.png', 'Tujuan adanya busi dalam hal\r\nini adalah untuk mengalirkan pulsa atau arus tegangan tinggi dari tutup\r\n(terminal) busi ke bagian elektroda tengah ke elektroda sisi melewati\r\ncelah udara dan kemudian berakhir ke masa (ground).'),
(20, 'Alternator', '81alternator.jpg', 'Sebagai generator listrik sekaligus mensuplai baterai.'),
(21, 'Saringan Oli', '74saringan oli.png', 'Menyaring oli dari kotoran-kotoran untuk menjaga agar oli selalu dalam keadaan bersih terutama dari kotoran-kotoran seperti partikulat, serpihan-serpihan besi dan kotoran-kotoran yang lain'),
(26, 'Saringan Udara', '61filter udara.jpg', 'Menyaring udara kotor seperti debu agar tidak masuk ke dalam sistem injeksi'),
(27, 'Oli Rem ', '23Oli Rem.jpg', 'Melumasi komponen logam yang bergesekan yaitu cakram dan kampas. Keduanya akan menghentikan laju kendaraan dan minyak rem akan membuat kedua logam yang bergesekan ini tidak kering dan tahan terhadap panas. Selain itu, minyak rem memiliki fungsi lai yaitu penyalur tenaga hidrolik karena munyal rem memiliki sifat seperti fluida (cairan) dalam sistem tertutup lainnya.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsul_diagnosa`
--

DROP TABLE IF EXISTS `konsul_diagnosa`;
CREATE TABLE IF NOT EXISTS `konsul_diagnosa` (
  `id_kd` int(5) NOT NULL AUTO_INCREMENT,
  `gejala_dan_kerusakan` varchar(200) NOT NULL,
  `bila_benar` int(2) NOT NULL,
  `bila_salah` int(2) NOT NULL,
  `mulai` char(1) NOT NULL,
  `selesai` char(1) NOT NULL,
  PRIMARY KEY (`id_kd`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konsul_diagnosa`
--

INSERT INTO `konsul_diagnosa` (`id_kd`, `gejala_dan_kerusakan`, `bila_benar`, `bila_salah`, `mulai`, `selesai`) VALUES
(1, 'Kerusakan tidak teridentifikasi!', 1, 1, 'N', 'Y'),
(2, 'Apakah mesin mobil dalam keadaan hidup?', 3, 24, 'Y', 'N'),
(3, 'Apakah temperature meter menunjukan garis panas?', 4, 5, 'N', 'N'),
(4, 'Over Heating / Panas Berlebih', 1, 1, 'N', 'Y'),
(5, 'apakah lampu indikator check engine menyala?', 6, 34, 'N', 'N'),
(6, 'Malfungsi atau masalah pada mesin', 1, 1, 'N', 'Y'),
(24, 'Apakah Mesin mobil dalam keadaan mati? ', 25, 1, 'N', 'N'),
(25, 'Apakah Engine Stop Switch dalam posisi tidak aktif?', 26, 33, 'N', 'N'),
(26, 'Apakah Bensin keluar dengan baik?', 27, 30, 'N', 'N'),
(27, 'Apakah bensin menghasilkan bunga api?', 28, 29, 'N', 'N'),
(28, 'spark plug (busi) rusak', 1, 1, 'N', 'Y'),
(29, 'cap spark plug terdapat air', 1, 1, 'N', 'Y'),
(30, 'Apakah bensin pada karburator keluar dengan baik?', 31, 32, 'N', 'N'),
(31, 'bensin mampet pada filter bensin.', 1, 1, 'N', 'Y'),
(32, 'cylinder head rusak', 1, 1, 'N', 'Y'),
(33, 'Sikring injeksi', 1, 1, 'N', 'Y'),
(34, 'Apakah kerusakan pada bagian pengapian?', 35, 40, 'N', 'N'),
(35, 'Apakah lampu indicator spedo meter mati.', 36, 37, 'N', 'N'),
(36, 'Skring utama  karatan atau putus', 1, 1, 'N', 'Y'),
(37, 'Battery lemah', 1, 1, 'N', 'Y'),
(40, 'Apakah Kerusakan pada kipas radiator?', 41, 76, 'N', 'N'),
(41, 'Sikring kipas radiator karatan atau putus', 1, 1, 'N', 'Y'),
(76, 'Apakah kerusakan pada bagian mesin?', 77, 94, 'N', 'N'),
(77, 'Apakah oli keluar dari baut pembuangan oli?', 78, 79, 'N', 'N'),
(78, 'Plug mesin pembuangan oli rusak', 1, 1, 'N', 'Y'),
(79, 'Apakah keluar asap yang tidak normal?', 80, 83, 'N', 'N'),
(80, 'Apakah throttle valve tidak kotor?', 81, 82, 'N', 'N'),
(81, 'Camshaft chain rusak', 1, 1, 'N', 'Y'),
(82, 'Piston lecet atau baret', 1, 1, 'N', 'Y'),
(83, 'Apakah Perpindahan gigi sulit dilakukan?', 84, 85, 'N', 'N'),
(84, 'Gigi transmisi rusak', 1, 1, 'N', 'Y'),
(85, 'Apakah mobil tidak bertenaga?', 86, 89, 'N', 'N'),
(86, 'Apakah stasioner/ putaran mesin tidak stabil?', 87, 88, 'N', 'N'),
(87, 'Katup pemasukan udara rusak', 1, 1, 'N', 'Y'),
(88, 'Saringan udara kotor', 1, 1, 'N', 'Y'),
(89, 'Apakah sewaktu pindah gigi, pergerakan kopling dan rantai terasa kasar?', 90, 91, 'N', 'N'),
(90, 'Kanvas kopling aus', 1, 1, 'N', 'Y'),
(91, 'Apakah suara mesin normal?', 92, 93, 'N', 'N'),
(92, 'Selang bensin bocor', 1, 1, 'N', 'Y'),
(93, 'Panas mobil berlebihan atau radiator rusak ', 1, 1, 'N', 'Y'),
(94, 'Apakah berkurangnya daya pengereman?', 95, 1, 'N', 'N'),
(95, 'Minyak rem habis', 1, 1, 'N', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `memiliki`
--

DROP TABLE IF EXISTS `memiliki`;
CREATE TABLE IF NOT EXISTS `memiliki` (
  `id_kd` int(3) NOT NULL,
  `id_solusi` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `memiliki`
--

INSERT INTO `memiliki` (`id_kd`, `id_solusi`) VALUES
(4, 2),
(28, 12),
(29, 13),
(31, 14),
(32, 15),
(33, 16),
(36, 17),
(37, 18),
(41, 20),
(78, 38),
(81, 39),
(82, 40),
(84, 41),
(87, 42),
(88, 43),
(90, 44),
(92, 45),
(93, 46),
(95, 47),
(1, 49),
(6, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menganalisa`
--

DROP TABLE IF EXISTS `menganalisa`;
CREATE TABLE IF NOT EXISTS `menganalisa` (
  `id_ahd` int(3) NOT NULL AUTO_INCREMENT,
  `id_tamu` int(5) NOT NULL,
  `id_kd` int(5) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_ahd`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menganalisa`
--

INSERT INTO `menganalisa` (`id_ahd`, `id_tamu`, `id_kd`, `tanggal`) VALUES
(21, 35, 4, '2019-05-16'),
(22, 35, 4, '2019-05-16'),
(23, 35, 41, '2019-05-16'),
(24, 35, 96, '2019-07-08'),
(25, 35, 1, '2019-07-08'),
(26, 35, 1, '2019-07-08'),
(27, 35, 6, '2019-07-08'),
(28, 35, 6, '2019-07-08'),
(29, 35, 4, '2019-07-08'),
(30, 35, 7, '2019-07-08'),
(31, 35, 6, '2019-07-08'),
(32, 35, 32, '2019-07-08'),
(33, 35, 31, '2019-07-11'),
(34, 35, 4, '2019-07-11'),
(35, 35, 1, '2019-07-13'),
(36, 35, 4, '2019-07-13'),
(37, 35, 33, '2019-07-17'),
(38, 35, 1, '2019-07-21'),
(39, 35, 33, '2019-07-21'),
(40, 35, 4, '2019-07-21'),
(41, 35, 6, '2019-07-21'),
(42, 35, 4, '2019-07-21'),
(43, 35, 6, '2019-07-21'),
(44, 35, 6, '2019-07-21'),
(45, 35, 6, '2019-07-21'),
(46, 35, 4, '2019-07-22'),
(47, 35, 37, '2019-07-22'),
(48, 35, 1, '2019-07-22'),
(49, 35, 88, '2019-07-22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `solusi`
--

DROP TABLE IF EXISTS `solusi`;
CREATE TABLE IF NOT EXISTS `solusi` (
  `id_solusi` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kerusakan` text NOT NULL,
  `penyebab` text NOT NULL,
  `solusi` text NOT NULL,
  `perawatan` text NOT NULL,
  PRIMARY KEY (`id_solusi`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `solusi`
--

INSERT INTO `solusi` (`id_solusi`, `nama_kerusakan`, `penyebab`, `solusi`, `perawatan`) VALUES
(2, 'Over Heating Bermasalah', '1. Cairan didalam tanki kering atau habis.\n2. Sikring kelistrikan untuk pompa dan kipas radiator putus(aliran listrik terputus).\n3. Sirip kotor.\n4. Sering terkena banjir atau terkena air.\n5. Saat membersihkan sirip radiator menggunakan air bertekanan tinggi atau saat kondisi mesin masih panas', '1. Isi cadangan cairan sesuai batas upper dan lower.\n2. Jangan menggunakan air murni karena tidak mengandung bahan pencegah karat, kerak, dan tidak mengurangi penguapan dan stabilitas suhu.\n3. Untuk membersihkan kotoran yang menempel pada kisi kisi cukup semprot dengan air bertekanan sedang . jangan terlalu kencang karena akan merusak kisi kisi. Untuk kotoran yang membandel cabut manual dengan pinset.\n4. Apabila karet tutup radiator rusak dan isi tangki cadangan berkurang dengan cepat maka harus ganti karet tutup radiator.\n5. Apabila cairan tidak mengalir dari tanki cadangan ke radiator maka pompa radiator rusak dan harus diganti.\n', '1. Cek penampung (reservoir) cairan cadangan.jangan sampai kering, lakukan pengecekan minimal seminggu sekali. Harus menggunakan cairan khusus (coolant) .\r\n2. Bersihkan secara rutin kotoran yang menempel pada kisi kisi yang membuat sirkulasi udara terganggu.\r\n3. Karet tutup radiator haru diperiksa secara berkala,  setiap 8000 km\r\n'),
(3, 'Check Engine Bermasalah', '-Sensor tidak berfungsi atau error\r\n-Percikan air saat melewati banjir', 'Cabut kenektor aki negatif saat mesin mati. Hubungkan kabel konektor aki negatif dan positif, tunggu selama tiga detik, lalu pasang kembali.\r\n', 'Servis berkala ke bengkel.'),
(12, 'Spark plug (busi) rusak', 'pemakaian spark plug yang sudah terlalu lama ( sudah mencapai life time) dan tidak diganti.', 'Ganti busi/spark plug', 'Ganti spark plug harus diganti setiap 6000 km.'),
(13, 'Cap spark plug terdapat air', 'karet cap bocor  ( rusak atau tidak kencang saat pemasangan).', '1. apabila rusak harus diganti.\r\n2. Apabila kurang kencang antara cap dan kabel listrik maka harus dikencangkan cap sprk plug tersebut.', 'cek cap spark plug secara berkala minimal seminggu sekali.'),
(14, 'bensin mampet pada filter bensin.', 'tangki bensin kotor sehingga kotoran pada tangki mengalir pada filter menyebabkan filter bensin tersumbat.', 'kuras tangki bensi dan besihkan tangki bensin beserta filter bensin', 'gunakan bensin yang berkualitas baik.'),
(15, 'Cylinder head rusak', '1.  silinder head memuai\r\n2.  silinder head retak', 'ganti cylinder head', 'cek kebocoran oli pada cylinder head.'),
(16, 'Sikring injeksi', '1. konsleting \r\n2. life time\r\n', 'Ganti sikring injeksi (warna merah no 10)', '1. cek kondisi sikring secara berkala minimal 1 bulan sekali.\r\n2. Hati hati ketika memperbaiki kabel kabel kelistrikan (jangan sampai terjadi konsleting)'),
(17, 'Skring utama  karatan atau putus', '1. konsleting \r\n2. life time', 'ganti sikring utama (warna hijau no 30)', '1. cek kondisi sikring secara berkala minimal 1 bulan sekali.\r\n2. Hati hati ketika memperbaiki kabel kabel kelistrikan (jangan sampai terjadi konsleting)'),
(18, 'battery lemah', '1. Batrei shield rusak.\r\n2. Kiprok tidak befungsi dengan baik (ketika batre sudah terisi penuh, kiprok masih melakukan pengisian pada batrei atau kiprok sama sekali tidak mengisi batre)', 'Ganti aki dan cek arus kelistrikan pada kiprok', '1. Jika menggunakan aki basah maka bersihkan shield batre menggunakan air hangat dan lakukan pengecasan manual.\r\n2. Jika menggunaka aki kering maka lakukan pengecasan saja.\r\n'),
(19, 'Sikring horn (klakson)', '1. konsleting \r\n2. life time', ' Ganti sikring klakson (warna biru no 15)', '1. cek kondisi sikring secara berkala minimal 1 bulan sekali.\r\n2. Hati hati ketika memperbaiki kabel kabel kelistrikan  pada klakson(jangan sampai terjadi konsleting)'),
(20, 'Sikring kipas radiator karatan atau putus', '1. konsleting \r\n2. life time', 'Ganti sikring kipas radiator (warna merah no 10)', '1. cek kondisi sikring secara berkala minimal 1 bulan sekali.\r\n2. Hati hati ketika memperbaiki kabel kabel kelistrikan pada kipas radiator(jangan sampai terjadi konsleting)'),
(38, 'Plug mesin pembuangan oli rusak', '1. saat pergantian oli, pemasangan plug miring.\r\n2. Terdapat kotoran pada plug yang mengakibatkan ulir plug rusak.', '1. Hati-hati saat penggantian oli\r\n2. Bersihkan plug pada saat pemasangan plug', 'tidak ada perawatan'),
(39, 'Camshaft chain rusak', 'bantalan camshaft chain rusak', '1. ganti bantalan camshaft chain.\r\n2. Ganti camshaft chain', 'cek bantalan camshaft chain secara berkala minimal 3 bln sekali.'),
(40, 'Piston lecet atau baret', '1. ring kompresi pada piston rusak\r\n2. oli mesin kering atau oli mesin encer\r\n3. dinding ruang bakar lecet.', 'ganti piston', 'cek kekentalan dan level oli mesin secara berkala'),
(41, 'Gigi transmisi rusak', '1. oli mesin encer atau kering\r\n2. kanvas kopling habis\r\n3. stelan kopling tidak sesuai atau tidak pas', '1. ganti kanvas kopling\r\n2. ganti gigi transmisi\r\n3. stel kopling dengan sesuai', '1. cek kekentalan dan level oli mesin secara berkala\r\n2. cek stelan kopling'),
(42, 'Katup pemasukan udara rusak', '1. camshaft chain kendur\r\n2. menggunakan bahan bakar berkualitas rendah\r\n3. adanya lumpur pada oli', ' ganti katup pemasukan udara', 'tune up secara berkala'),
(43, 'Saringan udara kotor', '1. Life time\r\n2. Sering terkena air ', 'Ganti saringan udara', 'Sering membersih kan saringan udara menggunakan angina bertekanan rendah'),
(44, 'kanvas kopling aus', '1. setelan kopling tidak pas\r\n2. oli encer\r\n3. life time', ' ganti kanvas kopling ', '1. jaga kondisi oli\r\n2. stel kopling dengan tepat'),
(45, 'Selang bensin bocor', '1. selang bensin tertekuk\r\n2. selang bensin retak akibat sering terkena panas\r\n', '1. selang bensin jangan sampai tertekuk\r\n2. ganti selang', 'cek kondisi selang'),
(46, 'Panas mobil berlebihan atau radiator rusak', '1. pompa coolant rusak\r\n2. air radiator habis\r\n3. kipas radiator mati', '1. ganti pompa radiator apabila rusak\r\n2. perbaiki komponen kipas radiator\r\n3. ganti radiator\r\n', 'cek level air radiator'),
(47, 'Minyak rem habis', 'Minyak rem habis', 'ganti selang rem', 'selang rem jangan sampai tertekuk'),
(49, 'Kerusakan tidak teridentifiksi', '-', '-', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tamu`
--

DROP TABLE IF EXISTS `tamu`;
CREATE TABLE IF NOT EXISTS `tamu` (
  `id_tamu` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelamin` varchar(10) NOT NULL,
  `alamat` text NOT NULL,
  `pekerjaan` varchar(15) NOT NULL,
  `noip` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tamu`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tamu`
--

INSERT INTO `tamu` (`id_tamu`, `username`, `password`, `nama`, `kelamin`, `alamat`, `pekerjaan`, `noip`) VALUES
(32, 'andi', 'andi', 'Andi', 'Pria', 'Cirebon', 'pengusaha', '::1'),
(33, 'sinta', 'sinta', 'Sinta', 'Wanita', 'Tasikmalaya', 'Mahasiswa', '::1'),
(34, 'handoko', 'handoko', 'handoko', 'Pria', 'cirebon', 'buruh', '::1'),
(35, 'budi', 'budi', 'budi', 'Pria', 'bogor', 'siswa', '::1');
--
-- Database: `sispakdbd`
--
CREATE DATABASE IF NOT EXISTS `sispakdbd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sispakdbd`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `diagnosa_cikungunya`
--

DROP TABLE IF EXISTS `diagnosa_cikungunya`;
CREATE TABLE IF NOT EXISTS `diagnosa_cikungunya` (
  `ID` int(11) NOT NULL,
  `Solusi_dan_Pertanyaan` text NOT NULL,
  `Bila_Benar` varchar(11) NOT NULL,
  `Bila_Salah` varchar(11) NOT NULL,
  `Mulai` varchar(11) NOT NULL,
  `Selesai` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `diagnosa_cikungunya`
--

INSERT INTO `diagnosa_cikungunya` (`ID`, `Solusi_dan_Pertanyaan`, `Bila_Benar`, `Bila_Salah`, `Mulai`, `Selesai`) VALUES
(1, 'Apakah anda mengalami Demam hingga 39 derajat?', '2', '0', 'Y', '0'),
(2, 'Apakah anda mengalami nyeri otot dan sendi?', '3', '0', 'Y', '0'),
(3, 'Apakah anda mengalami sendi bengkak?', '4', '0', 'Y', '0'),
(4, 'Apakah nda mengalami nyei pada tulang?', '5', '0', 'Y', '0'),
(5, 'Apakah anda mengalami sakit kepala?', '6', '0', 'Y', '0'),
(6, 'Apakah anda mengalami ruam di tubuh?', '7', '0', 'Y', '0'),
(7, 'Apakah anda merasa lemas?', '8', '0', 'Y', '0'),
(8, 'Apakah anda mengalami Mual mual?', '9', '0', 'Y', '0'),
(9, 'Berdasarkan geja yang anda alami bahwa anada di nyatakan terkena penyakit cikungunya, segeralah bawa ke dokter agar mendapatkan penanganan yang lebih intensif', '0', '0', 'N', 'N'),
(0, ' Maaf sementara sistem belum bisa mendiagnosa penyakit yang anda derita             ', '0', '0', 'N', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `diagnosa_gejaladbd`
--

DROP TABLE IF EXISTS `diagnosa_gejaladbd`;
CREATE TABLE IF NOT EXISTS `diagnosa_gejaladbd` (
  `ID` int(11) NOT NULL,
  `Solusi_dan_Pertanyaan` text NOT NULL,
  `Bila_Benar` varchar(11) NOT NULL,
  `Bila_Salah` varchar(11) NOT NULL,
  `Mulai` varchar(11) NOT NULL,
  `Selesai` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `diagnosa_gejaladbd`
--

INSERT INTO `diagnosa_gejaladbd` (`ID`, `Solusi_dan_Pertanyaan`, `Bila_Benar`, `Bila_Salah`, `Mulai`, `Selesai`) VALUES
(1, 'apakah anda mmiliki bintik merah  pada kulit?', '2', '0', 'Y', '0'),
(2, 'Apakah anda sering mengaami nyeri dibagian belakang?', '3', '0', 'Y', '0'),
(3, 'apakah anda seing mengalami mimisan, gusi berdarah atau bawah kulit?', '4', '0', 'y', '0'),
(4, 'Apakah anda mengalami nyeri kepala berat?', '5', '0', 'Y', '0'),
(6, 'Apakahnafsu makan anda mnurun?', '6', '0', 'Y', '0'),
(5, 'Apakah nafsu akan anda meurun?', '7', '0', 'Y', 'o'),
(7, 'Apakah anda mengalami nyeri pada sendi oto dan tulang', '8', '0', 'Y', '0'),
(8, 'Apakah anda mengalami nyeri kepala berat?', '9', '0', 'Y', '0'),
(0, 'Maaf sementara sistem belum bisa mendiagnosa penyakit yang anda derita', '0', '0', 'N', 'N'),
(9, 'Dari gejala yang anda dialami kami dapat menyimpulkan ahwa anda mengalami penyait demam berdarah, segera lakukan penanganan kepada hali medis', '0', '0', 'N', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `diagnosa_malaria`
--

DROP TABLE IF EXISTS `diagnosa_malaria`;
CREATE TABLE IF NOT EXISTS `diagnosa_malaria` (
  `ID` int(11) NOT NULL,
  `Solusi_dan_Pertanyaan` text NOT NULL,
  `Bila_Benar` varchar(11) NOT NULL,
  `Bila_Salah` varchar(11) NOT NULL,
  `Mulai` varchar(11) NOT NULL,
  `Selesai` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `diagnosa_malaria`
--

INSERT INTO `diagnosa_malaria` (`ID`, `Solusi_dan_Pertanyaan`, `Bila_Benar`, `Bila_Salah`, `Mulai`, `Selesai`) VALUES
(1, 'Apakah anda Menglamai gangguan kesadaran?', '2', '0', 'Y', 'Y'),
(2, 'Apakah anda mengalami gangguan pernapasan?', '3', '4', 'Y', 'Y'),
(3, 'Apakah anda mengalami anemia berat?', '4', '0', 'Y', 'Y'),
(4, 'Apakah anda mengalami kejang-kejang?', '5', '0', 'Y', 'Y'),
(5, 'Apakah anda mengalami disfungsi?', '6', '0', 'Y', 'Y'),
(6, 'Apakah anda mengalami Gagal Ginjal?', '7', '0', 'Y', 'Y'),
(7, 'Apakah anda mengalami kolaps kardiovaskuler?', '8', '0', 'Y', 'Y'),
(8, 'Apakah anda mengalami demam tinggi disertai dengan menggigil berat?', '9', '0', 'Y', 'Y'),
(0, 'Mohon maaf kami belum bisa mendiagnosa penyaki yang anda derita', '0', '0', 'N', 'N'),
(9, ' Berdasarkan gjala yang anda alami, kami menyimpulkanbahwa anda positif menderita penyakit malaria', '0', '0', 'N', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `diagnosa_viruszika`
--

DROP TABLE IF EXISTS `diagnosa_viruszika`;
CREATE TABLE IF NOT EXISTS `diagnosa_viruszika` (
  `ID` int(11) NOT NULL,
  `Solusi_dan_Pertanyaan` text NOT NULL,
  `Bila_Benar` varchar(11) NOT NULL,
  `Bila_Salah` varchar(11) NOT NULL,
  `Mulai` varchar(11) NOT NULL,
  `Selesai` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `diagnosa_viruszika`
--

INSERT INTO `diagnosa_viruszika` (`ID`, `Solusi_dan_Pertanyaan`, `Bila_Benar`, `Bila_Salah`, `Mulai`, `Selesai`) VALUES
(2, 'Apakah anda merasa deman?', '3', '0', 'Y', '0'),
(3, 'Apakah kulit anda menjadi ruam?', '4', '0', 'Y', '0'),
(4, 'Apakah anda merasa nyeri otot?', '5', '0', 'Y', '0'),
(5, 'Apakah anda merasa Nyeri Sendi?', '6', '0', 'Y', '0'),
(0, 'Mohon Maaf kami belu bisa mendiagsa penyakit yang anda alami', '0', '0', 'N', 'N'),
(1, 'Apakah tubuh ana terasa lemah dan lelah?', '2', '0', 'Y', '0'),
(6, 'Apakah anda mengalami Peradangan kelopak mata?', '7', '0', 'Y', '0'),
(7, 'Berdasarkan geja yang anda alami bahwa anada di nyatakan terkena penyakit cikungunya, segeralah bawa ke dokter agar mendapatkan penanganan yang lebih intensif | ', '0', '0', 'N', 'N');
--
-- Database: `sistempakar`
--
CREATE DATABASE IF NOT EXISTS `sistempakar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sistempakar`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

DROP TABLE IF EXISTS `gejala`;
CREATE TABLE IF NOT EXISTS `gejala` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_gejala` varchar(100) NOT NULL,
  `pertanyaan` varchar(150) NOT NULL,
  `detail` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hama`
--

DROP TABLE IF EXISTS `hama`;
CREATE TABLE IF NOT EXISTS `hama` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_hama` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hama`
--

INSERT INTO `hama` (`id`, `nama_hama`, `deskripsi`) VALUES
(0, '-', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

DROP TABLE IF EXISTS `obat`;
CREATE TABLE IF NOT EXISTS `obat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_obat` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

DROP TABLE IF EXISTS `pengguna`;
CREATE TABLE IF NOT EXISTS `pengguna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `username`, `password`) VALUES
(1, 'admin', 'b30e4c80db9f696c1094a6f4ee31162cf2a8d207a3f75867064d3f60da436e7a68f92a25be632271ea40a62d5be83a5bf75297bcd58ffdaf6c5ae5fa37dd5e7d');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

DROP TABLE IF EXISTS `penyakit`;
CREATE TABLE IF NOT EXISTS `penyakit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_penyakit` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`id`, `nama_penyakit`, `deskripsi`) VALUES
(0, '-', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_keputusan`
--

DROP TABLE IF EXISTS `tabel_keputusan`;
CREATE TABLE IF NOT EXISTS `tabel_keputusan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nilai_gejala` varchar(100) NOT NULL,
  `id_penyakit` int(11) NOT NULL,
  `id_hama` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_penyakit` (`id_penyakit`),
  KEY `id_obat` (`id_obat`),
  KEY `idhama` (`id_hama`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_pilihan`
--

DROP TABLE IF EXISTS `tmp_pilihan`;
CREATE TABLE IF NOT EXISTS `tmp_pilihan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_gejala` int(11) NOT NULL,
  `nilai` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_gejala` (`id_gejala`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tabel_keputusan`
--
ALTER TABLE `tabel_keputusan`
  ADD CONSTRAINT `tabel_keputusan_ibfk_1` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id`),
  ADD CONSTRAINT `tabel_keputusan_ibfk_2` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id`),
  ADD CONSTRAINT `tabel_keputusan_ibfk_3` FOREIGN KEY (`id_hama`) REFERENCES `hama` (`id`);

--
-- Ketidakleluasaan untuk tabel `tmp_pilihan`
--
ALTER TABLE `tmp_pilihan`
  ADD CONSTRAINT `tmp_pilihan_ibfk_1` FOREIGN KEY (`id_gejala`) REFERENCES `gejala` (`id`);
--
-- Database: `sistem_pakar`
--
CREATE DATABASE IF NOT EXISTS `sistem_pakar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sistem_pakar`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pakar`
--

DROP TABLE IF EXISTS `pakar`;
CREATE TABLE IF NOT EXISTS `pakar` (
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pakar`
--

INSERT INTO `pakar` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbaturan`
--

DROP TABLE IF EXISTS `tbaturan`;
CREATE TABLE IF NOT EXISTS `tbaturan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kodegejala1` varchar(3) NOT NULL,
  `kodegejala2` varchar(3) DEFAULT NULL,
  `kodediag` varchar(3) NOT NULL,
  `kodesolusi` varchar(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kodegejala1` (`kodegejala1`),
  KEY `kodegejala2` (`kodegejala2`),
  KEY `kodesolusi` (`kodesolusi`),
  KEY `kode_diag` (`kodediag`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbaturan`
--

INSERT INTO `tbaturan` (`id`, `kodegejala1`, `kodegejala2`, `kodediag`, `kodesolusi`) VALUES
(1, 'G01', 'G02', 'D03', 'S03'),
(2, 'G01', 'G03', 'D01', 'S01'),
(3, 'G01', NULL, 'D02', 'S02'),
(4, 'G04', 'G05', 'D04', 'S04'),
(5, 'G04', 'G06', 'D03', 'S05'),
(6, 'G04', 'G07', 'D03', 'S06'),
(7, 'G04', 'G08', 'D01', 'S07'),
(8, 'G04', 'G09', 'D05', 'S08'),
(9, 'G04', 'G10', 'D06', 'S09'),
(10, 'G04', 'G11', 'D07', 'S10'),
(11, 'G04', 'G12', 'D08', 'S11'),
(12, 'G04', 'G13', 'D05', 'S12'),
(13, 'G04', NULL, 'D02', 'S13'),
(14, 'G14', 'G15', 'D09', 'S14'),
(15, 'G14', 'G16', 'D05', 'S15'),
(16, 'G14', NULL, 'D05', 'S16'),
(17, 'G17', 'G18', 'D08', 'S17'),
(18, 'G17', 'G03', 'D01', 'S01'),
(19, 'G17', 'G19', 'D10', 'S18'),
(20, 'G17', NULL, 'D09', 'S14'),
(21, 'G20', NULL, 'D09', 'S19'),
(22, 'G21', 'G18', 'D08', 'S17'),
(23, 'G21', 'G22', 'D01', 'S20'),
(24, 'G21', 'G16', 'D05', 'S15'),
(25, 'G21', 'G23', 'D07', 'S10'),
(26, 'G21', 'G24', 'D06', 'S21'),
(27, 'G21', 'G25', 'D11', 'S22'),
(28, 'G21', NULL, 'D09', 'S14'),
(29, 'G26', 'G27', 'D05', 'S23'),
(30, 'G26', 'G28', 'D06', 'S24'),
(31, 'G26', 'G29', 'D12', 'S25'),
(32, 'G26', NULL, 'D09', 'S14'),
(33, 'G30', NULL, 'D05', 'S26'),
(34, 'G31', NULL, 'D04', 'S27'),
(35, 'G32', 'G33', 'D07', 'S10'),
(36, 'G32', 'G34', 'D12', 'S28'),
(37, 'G32', NULL, 'D04', 'S29'),
(38, 'G35', 'G36', 'D12', 'S30'),
(39, 'G35', NULL, 'D13', 'S31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbbasis`
--

DROP TABLE IF EXISTS `tbbasis`;
CREATE TABLE IF NOT EXISTS `tbbasis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kodediag` varchar(3) NOT NULL,
  `kodegejala` varchar(3) NOT NULL,
  `mb` float NOT NULL,
  `md` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kodediag` (`kodediag`),
  KEY `kodegejala` (`kodegejala`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbbasis`
--

INSERT INTO `tbbasis` (`id`, `kodediag`, `kodegejala`, `mb`, `md`) VALUES
(1, 'D01', 'G01', 0.9, 0.1),
(2, 'D01', 'G03', 0.8, 0.2),
(3, 'D01', 'G04', 0.9, 0.1),
(4, 'D01', 'G08', 0.8, 0.2),
(5, 'D01', 'G17', 0.8, 0.2),
(6, 'D01', 'G21', 0.6, 0.4),
(7, 'D01', 'G22', 0.8, 0.2),
(8, 'D02', 'G01', 0.9, 0.1),
(9, 'D02', 'G04', 0.9, 0.1),
(10, 'D03', 'G01', 0.6, 0.4),
(11, 'D03', 'G02', 0.9, 0.1),
(12, 'D03', 'G04', 0.7, 0.3),
(13, 'D03', 'G06', 0.9, 0.1),
(14, 'D03', 'G07', 0.8, 0.2),
(15, 'D04', 'G04', 0.7, 0.3),
(16, 'D04', 'G05', 0.8, 0.2),
(17, 'D04', 'G31', 0.9, 0.1),
(18, 'D04', 'G32', 0.7, 0.3),
(19, 'D05', 'G04', 0.8, 0.2),
(20, 'D05', 'G09', 0.9, 0.1),
(21, 'D05', 'G13', 0.8, 0.2),
(22, 'D05', 'G14', 0.8, 0.2),
(23, 'D05', 'G16', 0.9, 0.1),
(24, 'D05', 'G21', 0.7, 0.3),
(25, 'D05', 'G26', 0.7, 0.3),
(26, 'D05', 'G27', 0.9, 0.1),
(27, 'D05', 'G30', 0.9, 0.1),
(28, 'D06', 'G04', 0.7, 0.3),
(29, 'D06', 'G10', 0.9, 0.1),
(30, 'D06', 'G21', 0.7, 0.3),
(31, 'D06', 'G24', 0.8, 0.2),
(32, 'D06', 'G26', 0.7, 0.3),
(33, 'D06', 'G28', 0.8, 0.2),
(34, 'D07', 'G04', 0.7, 0.3),
(35, 'D07', 'G11', 0.9, 0.1),
(36, 'D07', 'G21', 0.7, 0.3),
(37, 'D07', 'G23', 0.8, 0.2),
(38, 'D07', 'G32', 0.8, 0.2),
(39, 'D07', 'G33', 0.8, 0.2),
(40, 'D08', 'G04', 0.7, 0.3),
(41, 'D08', 'G12', 0.8, 0.2),
(42, 'D08', 'G17', 0.7, 0.3),
(43, 'D08', 'G18', 0.8, 0.2),
(44, 'D08', 'G21', 0.9, 0.1),
(45, 'D09', 'G14', 0.8, 0.2),
(46, 'D09', 'G15', 0.9, 0.1),
(47, 'D09', 'G17', 0.6, 0.4),
(48, 'D09', 'G20', 0.9, 0.1),
(49, 'D09', 'G21', 0.8, 0.2),
(50, 'D09', 'G26', 0.8, 0.2),
(51, 'D10', 'G17', 0.7, 0.3),
(52, 'D10', 'G19', 0.9, 0.1),
(53, 'D11', 'G21', 0.7, 0.3),
(54, 'D11', 'G25', 0.9, 0.1),
(55, 'D12', 'G26', 0.8, 0.2),
(56, 'D12', 'G29', 0.9, 0.1),
(57, 'D12', 'G32', 0.6, 0.4),
(58, 'D12', 'G34', 0.8, 0.2),
(59, 'D12', 'G35', 0.7, 0.3),
(60, 'D12', 'G36', 0.8, 0.2),
(61, 'D13', 'G35', 0.8, 0.2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbdiagnosis`
--

DROP TABLE IF EXISTS `tbdiagnosis`;
CREATE TABLE IF NOT EXISTS `tbdiagnosis` (
  `kodediag` varchar(3) NOT NULL,
  `namadiag` varchar(50) NOT NULL,
  PRIMARY KEY (`kodediag`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbdiagnosis`
--

INSERT INTO `tbdiagnosis` (`kodediag`, `namadiag`) VALUES
('D01', 'Masalah pada Power Supply'),
('D02', 'Masalah pada Motherboard'),
('D03', 'Masalah Umum'),
('D04', 'Masalah pada Monitor'),
('D05', 'Masalah pada Harddisk'),
('D06', 'Masalah pada RAM'),
('D07', 'Masalah pada VGA Card'),
('D08', 'Masalah pada Prosesor'),
('D09', 'Masalah pada Sistem Operasi'),
('D10', 'Masalah pada Hardware Lain'),
('D11', 'Masalah pada LAN'),
('D12', 'Masalah pada Driver'),
('D13', 'Masalah pada Port USB');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbgejala`
--

DROP TABLE IF EXISTS `tbgejala`;
CREATE TABLE IF NOT EXISTS `tbgejala` (
  `kodegejala` varchar(3) NOT NULL,
  `namagejala` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`kodegejala`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbgejala`
--

INSERT INTO `tbgejala` (`kodegejala`, `namagejala`, `status`) VALUES
('G01', 'Komputer mati total', 1),
('G02', 'Koneksi kabel Power ke Power Supply belum terpasang dengan baik', 0),
('G03', 'Tegangan listrik tidak stabil', 0),
('G04', 'Komputer hidup tapi tidak booting', 1),
('G05', 'Lampu power monitor mati meski telah ditekan tombol powernya', 0),
('G06', 'koneksi kabel power monitor dan kabel VGA belum terpasang dengan baik', 0),
('G07', 'Pin kabel konektor VGA bengkok atau patah', 0),
('G08', 'Dengan multi tester - kabel merah dan hitam Power Supply tegangannya di bawah kapasitas tegangan Power Supply (12 atau 5 Volt)', 0),
('G09', 'Terdapat pesan DISK BOOT FAILURE atau semacamnya', 0),
('G10', 'Terdengar suara beep berkali-kali dan panjang', 0),
('G11', 'Terdengar suara beep 1 atau 2 kali', 0),
('G12', 'Prosesor overheat', 0),
('G13', 'Harddisk atau Windows Corrupt', 0),
('G14', 'Komputer booting tetapi selalu masuk safe mode', 1),
('G15', 'Sistem Operasi Bermasalah', 0),
('G16', 'Kapasitas Harddisk low space / data pada Harddisk terfragmentasi / Harddisk bad sector', 0),
('G17', 'Komputer mati total tiba-tiba setelah menyala', 1),
('G18', 'CPU terlalu panas/overheat', 0),
('G19', 'Terdapat masalah pada Hardware lain', 0),
('G20', 'Komputer menyala tapi hanya masuk ke setting BIOS', 1),
('G21', 'Komputer mengalami macet (hang)', 1),
('G22', 'Power Supply kekurangan daya', 0),
('G23', 'heatsink pada VGA Card mengalami panas yang tidak biasa', 0),
('G24', '2 RAM terpasang dan hanya 1 terbaca atau RAM yang digunakan tidak identik', 0),
('G25', 'Terasa berat ketika mengkases data dari komputer lain', 0),
('G26', 'Komputer mengalami blue screen windows', 1),
('G27', 'Munculnya blue screen of death dengan pesan pada bagian storage', 0),
('G28', 'Terdapat sektor RAM yang mengalami cacat fisik', 0),
('G29', 'Terdapat Driver yang bermasalah', 0),
('G30', 'Terdengar suara aneh dari Harddisk', 1),
('G31', 'Monitor berkedip saat digunakan', 1),
('G32', 'Terdapat garis-garis pada monitor', 1),
('G33', 'Pin-pin pada VGA Card kotor', 0),
('G34', 'Driver VGA belum diperbarui', 0),
('G35', 'Semua port USB tidak berfungsi', 1),
('G36', 'Driver hardware yang terpasang ke port USB belum diperbarui / terpasang', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbjawaban`
--

DROP TABLE IF EXISTS `tbjawaban`;
CREATE TABLE IF NOT EXISTS `tbjawaban` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kodegejala1` varchar(3) NOT NULL,
  `kodegejala2` varchar(3) DEFAULT NULL,
  `jawab` int(1) NOT NULL,
  `cf` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbjawaban`
--

INSERT INTO `tbjawaban` (`id`, `kodegejala1`, `kodegejala2`, `jawab`, `cf`) VALUES
(113, 'G01', NULL, 1, 0),
(114, 'G01', 'G02', 1, 0.84),
(115, 'G01', 'G03', 0, 0.92),
(135, 'G14', NULL, 1, 0),
(136, 'G20', NULL, 1, 0),
(137, 'G26', NULL, 1, 0),
(138, 'G26', 'G27', 1, 0.88),
(139, 'G26', 'G28', 1, 0.84),
(140, 'G26', 'G29', 1, 0.88),
(141, 'G14', 'G15', 1, 0.92),
(142, 'G14', 'G16', 1, 0.92),
(143, 'G04', NULL, 1, 0),
(144, 'G04', 'G05', 1, 0.76),
(145, 'G04', 'G06', 0, 0.88),
(146, 'G04', 'G07', 0, 0.76),
(147, 'G04', 'G08', 1, 0.76),
(148, 'G04', 'G09', 1, 0.92),
(149, 'G04', 'G10', 1, 0.88),
(150, 'G04', 'G11', 1, 0.96),
(151, 'G04', 'G12', 1, 0.76),
(152, 'G04', 'G13', 0, 0.76),
(153, 'G17', NULL, 1, 0),
(154, 'G17', 'G18', 1, 0.76),
(155, 'G17', 'G03', 1, 0.84),
(156, 'G17', 'G19', 1, 0.88),
(157, 'G21', NULL, 1, 0),
(158, 'G21', 'G18', 1, 0.92),
(159, 'G21', 'G22', 1, 0.76),
(160, 'G21', 'G16', 1, 0.84),
(161, 'G21', 'G23', 1, 0.76),
(162, 'G21', 'G24', 1, 0.76),
(163, 'G21', 'G25', 1, 0.88),
(164, 'G30', NULL, 1, 0),
(165, 'G31', NULL, 1, 0),
(166, 'G32', NULL, 1, 0),
(167, 'G32', 'G33', 1, 0.84),
(168, 'G32', 'G34', 0, 0.68),
(169, 'G35', NULL, 1, 0),
(170, 'G35', 'G36', 0, 0.76);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbriwayat`
--

DROP TABLE IF EXISTS `tbriwayat`;
CREATE TABLE IF NOT EXISTS `tbriwayat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nokonsul` varchar(9) NOT NULL,
  `nim` varchar(9) NOT NULL,
  `tanggal` date NOT NULL,
  `hasildiag` varchar(3) NOT NULL,
  `kodegejala1` varchar(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nim` (`nim`),
  KEY `hasildiag` (`hasildiag`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbriwayat`
--

INSERT INTO `tbriwayat` (`id`, `nokonsul`, `nim`, `tanggal`, `hasildiag`, `kodegejala1`) VALUES
(60, '19082301', '201731088', '2019-08-23', 'D03', 'G01'),
(61, '19082302', '201731244', '2019-08-23', 'D03', 'G01'),
(62, '19082303', '201731088', '2019-08-23', 'D09', 'G20'),
(63, '19082304', '201731088', '2019-08-23', 'D04', 'G31'),
(69, '19082305', '201731088', '2019-08-23', 'D01', 'G01'),
(71, '19082306', '311610440', '2020-01-13', 'D03', 'G01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbsolusi`
--

DROP TABLE IF EXISTS `tbsolusi`;
CREATE TABLE IF NOT EXISTS `tbsolusi` (
  `kodesolusi` varchar(3) NOT NULL,
  `namasolusi` varchar(900) NOT NULL,
  PRIMARY KEY (`kodesolusi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbsolusi`
--

INSERT INTO `tbsolusi` (`kodesolusi`, `namasolusi`) VALUES
('S01', 'Gunakan stabilizer atau UPS untuk menstabilkan tegangan listrik. Periksa semua koneksi kabel power supply. Terdapat beberapa kabel koneksi yang berasal dari power supply dan memiliki fungsi yang berbeda ? beda. Pastikan semua kabel terpasang dengan benar dan tidak adan yang longgar. Hal ini dilakukan untuk memastikan pasokan daya listrik berkerja secara optimal. Apabila semua kabel sudah terpasang dengan benar dan masih mati total maka perlu diganti dengan yang baru.'),
('S02', 'Perlu diganti dengan motherboard yang baru dan sama seperti tipe sebelumnya atau bisa juga dengan membawa langsung ke tempat produsen komputer tersebut.'),
('S03', 'Hubungkan kabel power ke Power Supply dengan benar dan jangan sampai longgar.'),
('S04', 'Terdapat kerusakan pada monitor komputer. Monitor dapat dibawa ke tempat servis monitor untuk ditangani ahli monitor.'),
('S05', 'Hubungkan kabel power Monitor dan kabel VGA ke CPU dengan benar dan jangan sampai longgar. Apabila masih belum bisa lakukan uji coba dengan menggunakan kabel power Monitor dan VGA yang lain.'),
('S06', 'Jika memang ada yang bengkok coba luruskan dan tancapkan lagi ke slot VGA Card CPU lalu hidupkan CPU kembali. jika ada yang patah berarti harus diganti kabel konektor VGA monitornya.'),
('S07', 'Dengan menggunakan tester bila ternyata tegangannya kurang dari 12 atau 5 volt (tergantung kapasitas Power Supply) berarti power supply harus di ganti.'),
('S08', 'Lakukan pengecekan kondisi kabel IDE atau SATA pada Hardisk - pastikan sudah terpasang dengan benar. Untuk 2 hardisk IDE yang terpasang pada 1 kabel cek posisi jumper untuk setingan Master dan Slavenya supaya jangan tertukar. Cek apakah Hardisk sudah terdeteksi oleh BIOS atau belum. Coba di-detect satu persatu. Kalau sama BIOS tidak terdeteksi berarti masalahnya ada pada hardisk tersebut. Coba pegang permukaan hardisk. Untuk hardisk yang hidup akan terasa getarannya.'),
('S09', 'Buka cover CPU lalu cabut RAM. Coba bersihkan bagian kaki RAM (pin) dengan penghapus dan pasang RAM kembali pada tempatnya dan nyalakan kembali Komputer. jika belum bisa pindahkan RAM di slot lain. jika masih juga maka RAM perlu diganti atau cek di komputer lain'),
('S10', 'Coba lepas dulu VGA Card/kaki VGA Card atau pin-nya dibersihkan dan dipasangkan kembali dengan benar. Jika belum bisa maka coba ganti VGA Card dengan yang lain dulu atau cek di komputer lain'),
('S11', 'Cek kondisi Heatsink dan fan Processor. Apakah fan masih bisa berputar atau kotor atau bahkan ada kerusakan sehingga fan terlepas dari dudukannya. Bersihkan fan atau heatsink apabila kotor. Kalau komputer masih bisa masuk ke BIOS maka temperatur processor ini bisa dilihat pada bagian Hardware Monitor.'),
('S12', 'Hal ini bisa dilihat dari pesan yang menunjukkan adanya file yang rusak atau hilang. Coba dicek dulu kondisi RAM. Kalau terpasang lebih dari satu dan tidak kompatibel biasanya muncul error sistem windows corupt jadi lepaskan dulu memory yang tidak sejenis. Periksa kabel SATA harddisk apakah kendor atau tidak. Jika tidak coba lakukan Repair Harddisk. Atau langkah terakhir adalah install ulang windows'),
('S13', 'Jika kipas Processor / VGA berputar tetapi komputer masih belum menyala maka kemungkinan ada yang tidak beres dengan BIOS motherboard atau motherboard memang sudah rusak. Coba lakukan RESET BIOS dengan cara mengganti baterai CMOS lalu tunggu selama 30 menit dan nyalakan komputer. Jika masih belum bisa maka motherboard perlu diganti.'),
('S14', 'Lakukan install ulang windows atau repair windows'),
('S15', 'Apabila windows sudah diinstall ulang atau OS masih dalam keadaan baik-baik saja maka kemungkinan terjadi harddisk bad sector. Pada Safe Mode lakukan scan disk dengan cara Klik start Program - Program - Accessories - System Tools lalu pilih Scandisk. Atau bisa juga dengan cara Klik start Program - Search program and file - ketik cmd. Nanti akan masuk ke mode dos lalu ketik CHKDSK - Enter. Biarkan sistem bekerja sampai selesai lalu restart komputer.'),
('S16', 'Harddisk perlu diganti yang baru.'),
('S17', 'Untuk mengatasi hal ini maka kurangi beban kerja komputer ketika sudah mencapai suhu yang tinggi. Hal ini bisa dilakukan dengan cara menutup aplikasi yang dapat memberatkan kerja dari komputer. Cara kedua adalah gunakan kipas atau fan extra untuk membantu mengoptimalkan proses pendinginan pada sistem komputer. Berikan tambahan kipas di dalam komputer bila perlu. Jika heatsink atau fan prosesor kotor langsung dibersihkan.'),
('S18', 'Lakukan pengecekan terhadap seluruh hardware seperti RAM/VGA Card/Harddisk/dll karena hardware yang tidak kompatibel ataupun proses penginstallan hardware yang salah prosedur sehingga menyebabkan hardware menjadi malfungsi. Gunakanlah hardware yang kompatibel dan juga sesuai dengan spesifikasi umum dari komputer. Apabila mungkin selalu cek pemasangan soket-soket dari hardware agar tidak terjadi error pada saat komputer dijalankan dan mengalami gejala mati sendiri.'),
('S19', 'Lakukan install ulang windows. Jika masih belum bisa bongkar baterai CMOS. Dengan cara ini kamu dapat mereset BIOS secara otomatis. Cabutlah CMOS pada perangkat lalu masukan kembali saat kondisi komputer sudah menyala.'),
('S20', 'Cek daya yang ada pada Power Supply. Apabila daya-nya lebih kecil dari yang tertera pada Power Supply maka Power Supply harus diganti.'),
('S21', 'Periksalah kembali RAM yang terpasang dengan kapasitas memori yang terbaca oleh komputer sebab ada kalanya ketika memasang beberapa keping RAM tetapi yang terbaca hanya satu keping saja. Beberapa RAM yang digunakan tetapi tidak identik (sama tipe dan kapasitasnya) bukannya malah mempercepat komputer tetapi malah memperlambat dan membuat hang komputer.'),
('S22', 'Untuk memastikan komputer hang karena koneksi jaringan (LAN) lepaskan dulu kabel jaringan pada komputer kemudian jalankan komputer seperti biasa. Apabila semua berjalan secara normal dapat dipastikan komputer hang karena koneksi jaringan. Beberapa cara yang bisa dilakukan adalah pastikan konektor RJ45 terpasang dengan benar bila perlu lakukan crimping ulang. Gunakan perintah ping untuk memeriksa koneksi jaringan (contoh perintah: ping -l 200 192.168.0.1). Lakukan reset pada hub (switch) LAN. Caranya bisa dengan mencabut kabel power Hub/Switch tersebut lalu tunggu beberapa saat kemudian masukan kembali. Cara lain yang bisa dilakukan adalah dengan memindahkan kabel jaringan dari port yang satu ke port yang lain (biasanya ada beberapa port dalam hub yang menjadi rusak karena masalah-masalah tertentu).'),
('S23', 'Apabila hal ini telah banyak dialami dengan cukup sering maka ada baiknya segera memeriksakan harddisk atau penyimpanan yang dimiliki. Bahkan apabila perlu segera bersiap untuk mencari pengganti dari harddisk karena besar kemungkinan harddisk mengalami kerusakan yang cukup parah.'),
('S24', 'Apabila RAM mengalami cacat fisik maka sudah seharusnya RAM digantikan dengan yang baru agar tidak bertambah parah pada kinerja Komputer.'),
('S25', 'Apabila driver mengalami kerusakan maka tentunya komunikasi antara sistem operasi tidak akan bisa berjalan dengan lancar dan bahkan bisa mengakibatkan crash sistem yang cukup parah seperti Blue Screen Windows. Lakukan update atau pembaruan pada semua driver.'),
('S26', 'Apabila harddisk bekerja normal namun hanya mengeluarkan suara terus menerus dan mengganggu bisa dengan melakukan Defrag Harddisk menggunakan Software Disk Defrag. Apabila harddisk berbunyi click....dan harddisk tidak dapat di akses kemungkinan 50:50 harddisk bisa diperbaiki atau memang sudah rusak. Buka unit harddisk dari Komputer lalu masukan ke tas kantong static kemudian tutup rapat lalu masukan ke kulkas. Biarkan sekitar 20 menit sampai 1 jam di ruang pembuat es. Setelah itu keluarkan dari Frezer dan dikeringkan dari embun air. Kemudian nyalakan kembali pada Komputer. Head harddisk yang terkunci bisa kembali bekerja. Bila menemukan masalah seperti ini secepatnya back up data bila harddisk masih bisa membaca data'),
('S27', 'Periksa refresh rate vertikal monitor Anda : Pertama Klik tombol Start - kemudian klik Run - Lalu Ketikan control kemudian klik tombol OK. Carilah ikon berlabel ?Display? dan double klik. Pada jendela Display Properties klik tab Settings - Kemudian Klik tombol ?Advanced? dan kemudian klik tab ?monitor?. Di bawah bagian ?Monitor settings? Anda akan melihat menu drop-down berlabel ?Screen refresh rate\' dan pastikan bahwa refresh rate layar 75Hz atau lebih. Jika sudah silahkan merestart ulang komputer agar pengaturan baru ini bisa bekerja. Langkah kedua bisa dengan memperbarui Driver VGA Card. Langkah terakhir apabila masih belum bisa juga adalah melakukan service monitor di tempat service'),
('S28', 'Lakukan pembaruan driver untuk VGA. Jika belum bisa bisa dengan menggunakan software bantuan seperti Pixel Repair. '),
('S29', 'Monitor perlu dibawa ke tempat service atau diganti.'),
('S30', 'Lakukan scan hardware menggunakan device manager : Klik Start - klik Run - Ketik \"devmgmt.msc\" dan kemudian klik OK. Device Manager akan terbuka. Pada Device Manager klik pada Computer. Klik pada Scan for hardware changes. Check USB device apakah sudah berfungsi sekarang. Langkah kedua bisa dengan melakukan restart komputer. Langkah kedua Disable and re-enable the USB controller melalui device manager dan restart komputer (otomatis komputer akan melakukan scan hardware dan reinstall semua USB Controller.'),
('S31', 'CPU perlu dibawa ke tempat service untuk ditindaklanjuti lebih jauh.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `nim` varchar(9) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `divisi` varchar(25) NOT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`nim`, `nama`, `divisi`) VALUES
('201531079', 'Dhifafiah Rafidah Mahasin', 'Akomodasi'),
('201531189', 'Ian Ahmad Fachriza', 'Software'),
('201631202', 'Givary', 'Software'),
('201731088', 'Tajul Arifin Sirajudin', 'Hardware'),
('201731244', 'Alwi Muhammad', 'Software'),
('311610440', 'Damas Mahardi', 'Software');

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbaturan`
--
ALTER TABLE `tbaturan`
  ADD CONSTRAINT `kode_diag` FOREIGN KEY (`kodediag`) REFERENCES `tbdiagnosis` (`kodediag`),
  ADD CONSTRAINT `kodegejala1` FOREIGN KEY (`kodegejala1`) REFERENCES `tbgejala` (`kodegejala`),
  ADD CONSTRAINT `kodegejala2` FOREIGN KEY (`kodegejala2`) REFERENCES `tbgejala` (`kodegejala`),
  ADD CONSTRAINT `kodesolusi` FOREIGN KEY (`kodesolusi`) REFERENCES `tbsolusi` (`kodesolusi`);

--
-- Ketidakleluasaan untuk tabel `tbbasis`
--
ALTER TABLE `tbbasis`
  ADD CONSTRAINT `kodediag` FOREIGN KEY (`kodediag`) REFERENCES `tbdiagnosis` (`kodediag`),
  ADD CONSTRAINT `kodegejala` FOREIGN KEY (`kodegejala`) REFERENCES `tbgejala` (`kodegejala`);

--
-- Ketidakleluasaan untuk tabel `tbriwayat`
--
ALTER TABLE `tbriwayat`
  ADD CONSTRAINT `hasildiag` FOREIGN KEY (`hasildiag`) REFERENCES `tbdiagnosis` (`kodediag`),
  ADD CONSTRAINT `nim` FOREIGN KEY (`nim`) REFERENCES `user` (`nim`);
--
-- Database: `sp_jagung`
--
CREATE DATABASE IF NOT EXISTS `sp_jagung` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sp_jagung`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `nama_admin` varchar(40) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `username`, `password`) VALUES
(1, 'Annas Al Amin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

DROP TABLE IF EXISTS `gejala`;
CREATE TABLE IF NOT EXISTS `gejala` (
  `id_gejala` char(3) NOT NULL,
  `nama_gejala` varchar(100) NOT NULL,
  `tingkat_kepercayaan` float NOT NULL,
  `jawaban_ya` char(3) DEFAULT NULL,
  `jawaban_tidak` char(3) DEFAULT NULL,
  PRIMARY KEY (`id_gejala`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `nama_gejala`, `tingkat_kepercayaan`, `jawaban_ya`, `jawaban_tidak`) VALUES
('G01', 'Warna putih seperti tepung pada permukaan atas maupun bagian bawah daun.', 0.7, '', 'G06'),
('G02', 'Terdapat garis-garis berwarna putih sampai kekuningan pada permukaan daun.', 0.8, 'G01', 'G06'),
('G03', 'Daun-daun menggulung serta terpuntir.', 0.6, 'G02', 'G06'),
('G04', 'Tanaman jagung kerdil.', 0.9, 'G03', 'G06'),
('G05', 'Ukuran tongkol kecil.', 0.7, 'G04', 'G06'),
('G06', 'Permukaan daun atas dan bawah terdapat bercak kecil, bulat sampai oval.', 0.8, '', 'G66'),
('G07', 'Bercak berwarna coklat kemerahan pada daun.', 0.7, 'G06', 'G66'),
('G08', 'Terdapat bisul pada daun.', 0.7, 'G07', 'G66'),
('G09', 'Daun menjadi mengering.', 0.8, 'G08', 'G66'),
('G10', 'Daun berbecak berwarna hijau keabu-abuan atau coklat.', 0.6, 'G66', 'G77'),
('G11', 'Bercak memanjang dan berbentuk elips.', 0.7, 'G10', 'G77'),
('G12', 'Tanaman cepat mati atau mengering.', 0.8, 'G11', 'G77'),
('G13', 'Bercak berbentuk kumparan memanjang dan teratur.', 0.9, 'G77', 'G61'),
('G14', 'Biji jagung rusak/busuk.', 0.7, 'G13', 'G61'),
('G15', 'Tongkol jagung gugur.', 0.6, 'G14', 'G61'),
('G16', 'Tanaman jagung tampak layu atau mati.', 0.9, 'G15', 'G61'),
('G17', 'Bagian dalam batang busuk.', 0.8, 'G61', 'G22'),
('G18', 'Tanaman mudah rebah.', 0.6, 'G17', 'G22'),
('G19', 'Pangkal batang yang terinfeksi berwarna merah jambu sampai kemerahan.', 0.7, 'G18', 'G22'),
('G20', 'Isi batang terbelah-belah berongga.', 0.9, 'G19', 'G22'),
('G21', 'Daun berwarna hijau keabu-abuan pudar.', 0.7, 'G20', 'G22'),
('G22', 'Bercak berwarna agak kemerahan atau abu-abu pada pelepah daun.', 0.8, '', 'G24'),
('G23', 'Bercak berkembang dan terpisah-pisah seperti gejala panu.', 0.8, 'G22', 'G24'),
('G24', 'Terdapat bercak coklat dan kelayuan pada akar.', 0.7, '', 'G27'),
('G25', 'Buku-buku batang bawah membelah.', 0.8, 'G24', 'G27'),
('G26', 'Bagian dalam batang terutama serabut berwarna hitam.', 0.7, 'G25', 'G27'),
('G27', 'Pembengkakan pada biji-biji tongkol.', 0.8, '', 'G30'),
('G28', 'Bengkakan biji-biji tongkol ditutupi jaringan kehijauan, putih perak dan berkilau.', 0.9, 'G27', 'G30'),
('G29', 'Bagian dalam  bengkakan biji tongkol berwarna gelap.', 0.8, 'G28', 'G30'),
('G30', 'Pangkal kelobot tongkol yang terinfeksi tampat memucat.', 0.7, '', 'G44'),
('G31', 'Kelobot yang terinfeksi berwarna coklat.', 0.75, 'G30', 'G44'),
('G32', 'Biji berubah menjadi coklat, kisut, dan busuk.', 0.85, 'G31', 'G44'),
('G33', 'Pangkal biji terlihat jamur putih.', 0.75, 'G32', 'G44'),
('G34', 'Daun berwarna mosaik dan hijau dengan diselingi garis-garis kuning.', 0.65, 'G55', 'G01'),
('G35', 'Tanaman tampak lebih kekuningan.', 0.74, 'G34', 'G01'),
('G44', 'Tanaman jagung kerdil ', 0.68, '', 'G01'),
('G55', 'Ukuran tongkol kecil ', 0.79, 'G44', 'G01'),
('G61', 'Tanaman jagung tampak layu atau mati ', 0.66, '', 'G22'),
('G66', 'Permukaan daun atas dan bawah terdapat bercak kecil, bulat sampai oval', 0.77, '', 'G77'),
('G77', 'Bercak berwarna coklat kemerahan pada daun ', 0.69, '', 'G61');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_diagnosa`
--

DROP TABLE IF EXISTS `hasil_diagnosa`;
CREATE TABLE IF NOT EXISTS `hasil_diagnosa` (
  `id_konsultasi` int(11) NOT NULL AUTO_INCREMENT,
  `id_penyakit` char(3) NOT NULL,
  `tingkat_kepercayaan` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `tanggal` datetime NOT NULL,
  PRIMARY KEY (`id_konsultasi`),
  KEY `id_pengguna` (`id_pengguna`),
  KEY `id_penyakit` (`id_penyakit`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `hasil_diagnosa`
--

INSERT INTO `hasil_diagnosa` (`id_konsultasi`, `id_penyakit`, `tingkat_kepercayaan`, `id_pengguna`, `tanggal`) VALUES
(9, 'P04', 0, 1, '2019-06-16 00:44:17'),
(10, 'P05', 0, 1, '2019-06-16 00:45:03'),
(11, 'P06', 0, 1, '2019-06-16 00:45:35'),
(12, 'P07', 0, 1, '2019-06-16 00:46:13'),
(13, 'P08', 0, 1, '2019-06-16 00:47:26'),
(14, 'P09', 0, 1, '2019-06-16 00:48:26'),
(15, 'P10', 0, 1, '2019-06-16 00:49:20'),
(16, 'P01', 0, 1, '2019-06-16 00:52:10'),
(17, 'P02', 0, 1, '2019-06-16 00:52:24'),
(32, 'P01', 72, 3, '2019-07-01 07:06:08'),
(33, 'P01', 56, 3, '2019-07-01 07:07:05'),
(34, 'P01', 56, 3, '2019-07-01 07:07:19'),
(35, 'P01', 56, 3, '2019-07-01 07:07:59'),
(36, 'P01', 56, 3, '2019-07-01 07:08:03'),
(37, 'P01', 48, 3, '2019-07-01 07:09:16'),
(38, 'P01', 24, 3, '2019-07-01 07:11:57'),
(39, 'P02', 21, 3, '2019-07-01 07:16:26'),
(40, 'P01', 56, 3, '2019-07-01 10:28:20'),
(41, 'P01', 1, 3, '2019-07-02 10:00:06'),
(42, 'P01', 58, 3, '2019-07-02 10:02:28'),
(45, 'P01', 19, 3, '2019-07-27 21:20:01'),
(46, 'P01', 29, 3, '2019-07-27 21:23:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengetahuan`
--

DROP TABLE IF EXISTS `pengetahuan`;
CREATE TABLE IF NOT EXISTS `pengetahuan` (
  `id_penyakit` char(3) NOT NULL,
  `id_gejala` char(3) NOT NULL,
  KEY `id_penyakit` (`id_penyakit`),
  KEY `id_gejala` (`id_gejala`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengetahuan`
--

INSERT INTO `pengetahuan` (`id_penyakit`, `id_gejala`) VALUES
('P01', 'G01'),
('P01', 'G02'),
('P01', 'G03'),
('P01', 'G04'),
('P01', 'G05'),
('P02', 'G06'),
('P02', 'G07'),
('P02', 'G08'),
('P02', 'G09'),
('P03', 'G66'),
('P03', 'G10'),
('P03', 'G11'),
('P03', 'G12'),
('P04', 'G77'),
('P04', 'G13'),
('P04', 'G14'),
('P04', 'G15'),
('P04', 'G16'),
('P05', 'G61'),
('P05', 'G17'),
('P05', 'G18'),
('P05', 'G19'),
('P05', 'G20'),
('P05', 'G21'),
('P06', 'G22'),
('P06', 'G23'),
('P07', 'G24'),
('P07', 'G25'),
('P07', 'G26'),
('P08', 'G27'),
('P08', 'G28'),
('P08', 'G29'),
('P09', 'G30'),
('P09', 'G31'),
('P09', 'G32'),
('P09', 'G33'),
('P10', 'G44'),
('P10', 'G55'),
('P10', 'G34'),
('P10', 'G35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

DROP TABLE IF EXISTS `pengguna`;
CREATE TABLE IF NOT EXISTS `pengguna` (
  `id_pengguna` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pengguna` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id_pengguna`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama_pengguna`, `email`, `username`, `password`) VALUES
(1, 'Annas Al Amin', 'annasinside@gmail.com', 'a3isagod', '1234annas'),
(3, 'z', 'z@gmail.com', 'z', 'z');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

DROP TABLE IF EXISTS `penyakit`;
CREATE TABLE IF NOT EXISTS `penyakit` (
  `id_penyakit` char(3) NOT NULL,
  `nama_penyakit` varchar(50) NOT NULL,
  `faktor_kepastian` float NOT NULL,
  `definisi` text DEFAULT NULL,
  `solusi` text DEFAULT NULL,
  `foto1` varchar(100) DEFAULT NULL,
  `foto2` varchar(100) DEFAULT NULL,
  `foto3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_penyakit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `nama_penyakit`, `faktor_kepastian`, `definisi`, `solusi`, `foto1`, `foto2`, `foto3`) VALUES
('P01', 'Penyakit Bulai (Peronosclerospora Maydis)', 0.8, 'Tanaman jagung yang terinfeksi dan tumbuh selama musim kemarau merupakan sumber inokulum pertama di Indonesia. Jamur dapat bertahan hidup sebagai miselium dalam embrio biji yang terinfeksi. Bila biji ini ditanam, jamurnya ikut berkembang dan menginfeksi bibit, selanjutnya dapat menjadi sumber inokulum (penyakit). Infeksi terjadi melalui stomata daun jagung muda (di bawah umur satu bulan) dan jamur berkembang secara lokal atau sistemik. Sporangia (konidia) dan sporangiofora dihasilkan pada permukaan daun yang basah dalam gelap. Sporangia berperan sebagai inokulum sekunder. ', '1.Tanam varietas jagung yang tahan bulai seperti Kalingga, Arjuna.\r\n2.Wiyasa, Bromo, Parikesit, dan Hibrida Cl.\r\n3.Tidak menanam benih jagung yang berasal dari tanaman sakit.\r\n4.Tanam jagung secara serempak pada awal sampai akhir musim kemarau. Penanaman jagung pada peralihan musim (marengan atau labuhan) akan menderita kerugian besar karena bulai.\r\n5.Perlakuan benih dengan fungisida sistemik seperti Ridomil 35 SD ,(5 g formulasi/kg benih Ridomil mengandung bahan aktif metalaksil 35%).\r\n', 'p1 - Copy - Copy.jpg', 'p1 - Copy.jpg', 'p1.jpg'),
('P02', 'Karat Daun (Puccinia Polysora Underw)', 0.7, 'Teliospora jamur jarang ditemukan dan tahap spora ini tidak begitu penting dalam siklus penyakit. Urediniospora berperan penting sebagai inokulum pertama dan kedua melalui penyebaran angin dan Trieng inf eksi tanaman jagung lainriya. Jamur karat ini sekurang kurangnya terdiri dari dua ras berdasarkan ukuran urediniospora. Di Bogor ditemukan berukuran (25-37) x (20-25) atau rata-rata 30 x 22,9 m, sedang di dataran tinggi di Pacet (1150 berukuran lebih besar, (2853) x (20-30) atau rata-rata 36 x 24. Di Amerika Serikat telah ditemukan 7 ras jamur karat ini.\r\n', '1.Menanam varietas tahankarat daun, seperti Lamuru, Sukmaraga, Palakka, Bima-1 atau Semar-10.\r\n2.Pemusnahan seluruh bagian tanaman sampai ke akarnya (Eradikasi tanaman) pada tanaman terinfeksi karat daun maupun gulma.\r\n3.Penyemprotan fungisida menggunakan bahan aktif benomil. Dosis/konsentrasi sesuai petunjuk  di kemasan.\r\n', 'p2 - Copy - Copy.jpg', 'p2 - Copy.jpg', 'p2.jpg'),
('P03', 'Hawar Daun Jagung (Helminthosporium Turcicum Pass)', 0.7, 'Jamur H. turcicum bertahan hidup sampai satu tahun berupa miselium dorman dalam daun, kelobot, atau bagian tanaman lainnya pada sisa-sisa tanaman di lapang. Diantara konidia yang tua dapat berubah menjadi klamidospora yang berdinding tebal sehingga dapat bertahan lama. Konidia dapat tersebar jauh oleh angin sampai menginfeksi daun jagung. Infeksi kedua terjadi di antara tanaman jagung sekitarnya dari bercakbercak yang banyak terbentuk pada daun. ', '1.Menanam varietas tahan hawar daun, seperti : Bisma, Pioner-2, pioner-14, Semar-2 dan semar-5.\r\n2.Pemusnahan seluruh bagian tanaman sampai ke akarnya (Eradikasi tanaman) pada tanaman terinfeksi bercak daun.\r\n3.Penyemprotan  fungisida  menggunakan bahan aktif mankozeb atau dithiocarbamate. Dosis sesuai petunjuk di kemasan.\r\n', 'p3 - Copy - Copy.jpg', 'p3 - Copy.jpg', 'p3.jpg'),
('P04', 'Bercak Daun (Bipolaris Maydis Syn)', 0.8, 'Jamur bertahan hidup sebagai miselium dan spora dalam sisa-sisa tanaman jagung di lapang atau pada biji simpanan di peti-peti dan gudang. Konidia terbawa angin atau percikan air hujan sampai pada tanaman jagung sehingga terjadi infeksi pertama. Sporulasi pada bercak-bercak menghasilkan tambahan inokulum pertama dan kedua. Pada keadaan yang baik, siklus lengkap penyakit oleh ras T berlangsung selama 3 sampai 4 hari. Biji jagung yang terinfeksi berperan sebagai sumber inokulum pertama dalam penyebaran penyakit ini. Biji yang terinfeksi tidak meracuni hewan ternak yang memakannya. ', '1.Gunakan varietas tahan.\r\n2.Pembajakan tanah yang bersih dapat mengurangi infeksi.\r\n3.Hindari menanam jagung terlalu rapat.\r\n4.Gunakan fungisida sistemik, terutama sejak bunga jantan muncul dengan interval 7-10 hari.\r\n5.Hindari menanam jagung yang bersitoplasma jantan mandul.\r\n', 'p4 - Copy - Copy.jpg', 'p4 - Copy.jpg', 'p4.jpg'),
('P05', 'Busuk Batang Jagung (Gibberella Roseum F.sp. Cerea', 0.5, 'Peritesia matang pada keadaan cuaca hangat dan basah/lembab. Askospora dari dalam peritesia dipancarkan keluar bila telah matang dan tersebar oleh angin ke batang dan tongkol jagung lainnya. Bila askospora berkecambah, jaringan jagung tertembus dan terjadi infeksi. Tanaman jagung sakit menghasilkan pertumbuhan miselium berwarna merah nila dan memproduksi konidia bila cuaca hangat dan lembab. Jamur bertahan hidup pada sisa-sisa tanaman jagung terutama pada batang, kelobot dan tongkol. ', '1.Melakukan pergiliran tanaman.\r\n2.Melakukan pemupukan berimbang, menghindari pemberian N tinggi dan K rendah.\r\n3.Drainase baik.\r\n4.Pengendalian penyakit busuk batang (Fusarium) secara hayati dapat dilakukan dengan cendawan   antagonis Trichodermasp.\r\n', 'p5 - Copy - Copy.jpg', 'p5 - Copy.jpg', 'p5.jpg'),
('P06', 'Busuk Pelepah (Rhizoctonia Zeae Voorhess)', 0.65, 'Rhizoctonia zeae bertahan hidup sebagai  miselium istirahat dan sklerotia, pada biji, tanah dan sisa-sisa tanaman di lapang. Bila lingkungan baik, sklerotia berkecambah/memperbanyak diri  dan menyebar melalui pelepah daun secara melompat lompat dengan hifa udaranya sampai ke tongkol. Hifa tersebut khas dengan penyempitan pada sudut percabangan yang tegak lurus. Jamur tidak memproduksi spora.', '1.Tanam varietas tahan.\r\n2.Pilih varietas dengan pelepah berkurang di bawah batang untuk menghindari perkembangan penyakit.\r\n3.Sebaiknya menanam jagung pada awal musim kemarau.\r\n', 'p6 - Copy - Copy.jpg', 'p6 - Copy.jpg', 'p6.jpg'),
('P07', 'Busuk Arang (Macrophomina Phaseoli (Mambl.) Ashby)', 0.75, 'Jamur ini bertahan hidup pada sisa-sisa tanaman di lapang dalam bentuk sklerotia. Miselia jamur menginfeksi akar dan berkembang dalam jaringan korteks batang. Bibit jagung yang ditanam timbul gejala hawar bila terserang. ', 'Lakukan pemberiaan air agar kelembaban tetap tinggi bila  tanaman jagung telah bermalai, terutama untuk daerah beririgasi pada pertanaman musim kemarau. Penyakit-penyakit Tongkol, Biji dan Malai oleh Jamur  ', 'p7 - Copy - Copy.jpg', 'p7 - Copy.jpg', 'p7.jpg'),
('P08', 'Penyakit Gosong (Ustilago Maydis (DC.) Cda', 0.85, 'Teliospora dapat bertahan hidup lama dalam tanah pada lingkungan yang kurang baik karena berdinding sel tebal. Sporidia yang dihasilkan dari teliospora yang berkecambah terbawa oleh arus angin dan percikan air dapat menginfeksi jagung muda. Miselium yang berinti dua menembus daun jagung melalui stomata, pelukaan, atau langsung melalui dinding sel yang dapat merangsang sel inang memperbanyak diri sehingga terjadi bengkakan. ', '1.Tanam varietas yang tahan.\r\n2.Buang dan bakar bagian yang terinfeksi sebelum bengkakan pecah.\r\n3.Jaga kesuburan tanah yang seimbang.\r\n', 'p8 - Copy - Copy.jpeg', 'p8 - Copy.jpeg', 'p8.jpeg'),
('P09', 'Busuk Tongkol Diplodia (Diplodia Maydis (Berk.) Sa', 0.95, 'Jamur ini bertahan hidup dengan spora dalam piknidia berdinding tebal pada sisa-sisa tanaman di lapang dan spora/miselium pada benih. Pada keadaan lembab dan hangat, spora keluar dari dalam piknidia dan tersebar oleh angin, hujan, atau oleh serangga. Infeksi pertama pada jagung terjadi melalui dasar batang, mesokotil, dan akar atau pada buku-buku di bawah tongkol sampai dasar batang. Patogen kemudian berkembang dalam batang menyebabkan busuk batang. Patogen yang terbawa dalam benih, bila ditanam timbul gejala hawar pada bibit. ', '1.Galur-galur murni umumnya tahan Diplodia.\r\n2.Lakukan panen lebih awal.\r\n3.Penyimpanan yang lebih baik dengan kandungan air tongkol di bawah 20% atau untuk biji di bawah 15%.\r\n', 'p9 - Copy - Copy.jpg', 'p9 - Copy.jpg', 'p9.jpg'),
('P10', 'Virus Mosaik Kerdil Jagung (Maize Dwarf Mosaic Vir', 0.9, 'Mula-mula pada daun muda tampak gejala belang/mosaik terang dan hijau gelap yang tidak beraturan, kemudian berkembang menjadi garis-garis sempit sepanjang tulang daun, tampak seperti pulau-pulau hijau gelap dengan latar belakang kuning (klorotik). Pada tanaman dewasa, daun menjadi hijau kekuningan, kadang-kadang diikuti gejala kerdil, anakan banyak, kuncup tongkol bertambah, dan biji-biji tongkol berkurang. Inf eksi lebih dini dapat memperlemah tanaman terhadap penyakit busuk batang/akar sehingga tanaman cepat mati. Gejala di lapang tampak pada tanaman umur satu bulan setelah tanam. Pada permukaan daun jagung banyak ditemukan vektor Aphida. Partikel virus berbentuk bulat, berukuran 12-15 x 750 nm. ', '1.Mencabut tanaman jagung terinfeksi virus seawal mungkin agar tidak menjadi sumber infeksi bagi tanaman sekitarnya ataupun pertanaman musim mendatang.\r\n2.Melakukan pergiliran tanaman, tidak menanam tanaman jagung secara terus menerus di lahan yang sama.\r\n3.Penyemprotan pestisida apabila di lapangan populasi vektor cukup tinggi. Dosis/konsentrasi tidak melebihi anjuran dalam  kemasan.\r\n4.Tidak menanam benih jagung dari tanaman terinfeksi virus.\r\n', 'p10 - Copy - Copy.jpg', 'p10 - Copy.jpg', 'p10.jpg'),
('P11', 'Gudiken', 0, 'w', 'w', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_diagnosa`
--

DROP TABLE IF EXISTS `tmp_diagnosa`;
CREATE TABLE IF NOT EXISTS `tmp_diagnosa` (
  `id_pengguna` int(11) NOT NULL,
  `id_penyakit` char(3) NOT NULL,
  `id_gejala` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_gejala`
--

DROP TABLE IF EXISTS `tmp_gejala`;
CREATE TABLE IF NOT EXISTS `tmp_gejala` (
  `id_pengguna` int(11) NOT NULL,
  `id_gejala` char(3) DEFAULT NULL,
  `status` int(3) NOT NULL,
  `cf` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_penyakit`
--

DROP TABLE IF EXISTS `tmp_penyakit`;
CREATE TABLE IF NOT EXISTS `tmp_penyakit` (
  `id_pengguna` int(11) NOT NULL,
  `id_penyakit` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `hasil_diagnosa`
--
ALTER TABLE `hasil_diagnosa`
  ADD CONSTRAINT `hasil_diagnosa_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`),
  ADD CONSTRAINT `hasil_diagnosa_ibfk_2` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id_penyakit`);

--
-- Ketidakleluasaan untuk tabel `pengetahuan`
--
ALTER TABLE `pengetahuan`
  ADD CONSTRAINT `pengetahuan_ibfk_1` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id_penyakit`),
  ADD CONSTRAINT `pengetahuan_ibfk_2` FOREIGN KEY (`id_gejala`) REFERENCES `gejala` (`id_gejala`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
