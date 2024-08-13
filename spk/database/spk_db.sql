-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Agu 2024 pada 04.25
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(250) DEFAULT NULL,
  `post_description` text,
  `post_contents` longtext,
  `post_image` varchar(40) DEFAULT NULL,
  `post_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `post_last_update` datetime DEFAULT NULL,
  `post_category_id` int(11) DEFAULT NULL,
  `post_tags` varchar(225) DEFAULT NULL,
  `post_slug` varchar(250) DEFAULT NULL,
  `post_status` int(11) DEFAULT NULL COMMENT '1=Publish, 0=Unpublish',
  `post_views` int(11) DEFAULT '0',
  `post_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_description`, `post_contents`, `post_image`, `post_date`, `post_last_update`, `post_category_id`, `post_tags`, `post_slug`, `post_status`, `post_views`, `post_user_id`) VALUES
(1, 'Biodata Saya', '', '<div style=\"text-align: center;\"><span style=\"color: inherit; font-family: inherit; font-size: 24px; font-weight: bold;\"><br></span></div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\"><img src=\"http://localhost/wanda/assets/images/Picture1.png\" class=\"img-thumbnail\" style=\"width: 337.043px; height: 336px;\"></div><div style=\"text-align: center;\"><span style=\"color: inherit; font-family: inherit; font-size: 24px; font-weight: bold;\"><br></span></div><div style=\"text-align: center;\"><span style=\"color: inherit; font-family: inherit; font-size: 24px; font-weight: bold;\">Biodata Saya</span><br></div><h4 style=\"font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" color:=\"\" rgb(78,=\"\" 94,=\"\" 106);=\"\" text-align:=\"\" center;\"=\"\"><span style=\"color: inherit;\"><br></span></h4><h1 style=\"font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" color:=\"\" rgb(78,=\"\" 94,=\"\" 106);=\"\" text-align:=\"\" center;\"=\"\"></h1><h5 style=\"font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" color:=\"\" rgb(78,=\"\" 94,=\"\" 106);=\"\" outline:=\"\" 0px=\"\" !important;\"=\"\"><table align=\"center\" style=\"height: 300px; outline: 0px !important;\"><tbody style=\"outline: 0px !important;\"><tr><td><blockquote><span style=\"font-weight: normal;\">Nama&nbsp;</span></blockquote></td><td><blockquote><span style=\"font-weight: normal;\">: Wanda Dwi Athifah</span></blockquote></td></tr><tr><td><blockquote><span style=\"font-weight: 400;\">Jenis Kelamin</span></blockquote></td><td><blockquote><span style=\"font-weight: normal;\">: Perempuan</span></blockquote></td></tr><tr style=\"outline: 0px !important;\"><td><blockquote><span style=\"font-weight: 400;\">Tempat dan Tanggal Lahir</span></blockquote></td><td style=\"outline: 0px !important;\"><blockquote style=\"outline: 0px !important;\"><span style=\"font-weight: normal; outline: 0px !important;\"><span style=\"background-color: transparent; outline: 0px !important;\">: Makassar,&nbsp;</span><span style=\"background-color: transparent;\">27 Februari 2002</span></span></blockquote></td></tr><tr><td><blockquote><span style=\"font-weight: 400;\">Agama</span></blockquote></td><td><blockquote><span style=\"font-weight: normal;\">: Islam</span></blockquote></td></tr><tr><td><blockquote><span style=\"font-weight: 400;\">Kewarga Negaraan</span></blockquote></td><td><blockquote><span style=\"font-weight: normal;\">: Indonesia</span></blockquote></td></tr></tbody></table></h5><h5 style=\"font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" color:=\"\" rgb(78,=\"\" 94,=\"\" 106);=\"\" outline:=\"\" 0px=\"\" !important;\"=\"\"><br></h5><h5 style=\"font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" color:=\"\" rgb(78,=\"\" 94,=\"\" 106);=\"\" outline:=\"\" 0px=\"\" !important;\"=\"\"><br></h5><h5 style=\"font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" color:=\"\" rgb(78,=\"\" 94,=\"\" 106);=\"\" outline:=\"\" 0px=\"\" !important;\"=\"\"><br></h5><h5 style=\"font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" color:=\"\" rgb(78,=\"\" 94,=\"\" 106);=\"\" outline:=\"\" 0px=\"\" !important;\"=\"\"><br></h5>', '5baf64081721ea0ec31dd4cf11840798.jpg', '2021-07-18 04:15:10', '2023-01-30 02:07:38', 4, 'biodata,f', 'biodata-saya', 1, 14, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_site`
--

CREATE TABLE `tbl_site` (
  `site_id` int(11) NOT NULL,
  `site_name` varchar(100) DEFAULT NULL,
  `site_title` varchar(200) DEFAULT NULL,
  `site_favicon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_site`
--

INSERT INTO `tbl_site` (`site_id`, `site_name`, `site_title`, `site_favicon`) VALUES
(1, 'SPK Bank Sampah Aktif - Metode TOPSIS dan VIKOR', 'SPK', 'favicon5.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(60) DEFAULT NULL,
  `user_password` varchar(40) DEFAULT NULL,
  `user_level` varchar(10) DEFAULT NULL,
  `user_status` varchar(10) DEFAULT '1',
  `user_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_level`, `user_status`, `user_photo`) VALUES
(3, 'Ahmad Ruslandia Papua', 'ruslandiaamin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '1', '1', 'picture.jpg'),
(4, 'user', 'user@gmail.com', 'ee11cbb19052e40b07aac0ca060c23ee', '2', '1', '848aea04c3862361fa4ef3f2ce01592f.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_visitors`
--

CREATE TABLE `tbl_visitors` (
  `visit_id` int(11) NOT NULL,
  `visit_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `visit_ip` varchar(50) DEFAULT NULL,
  `visit_platform` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_visitors`
--

INSERT INTO `tbl_visitors` (`visit_id`, `visit_date`, `visit_ip`, `visit_platform`) VALUES
(541327, '2019-03-18 14:07:36', '::1', 'Firefox'),
(541328, '2019-03-19 03:33:51', '::1', 'Chrome'),
(541329, '2019-03-20 01:00:19', '::1', 'Chrome'),
(541330, '2019-04-05 01:53:28', '::1', 'Firefox'),
(541331, '2019-04-06 01:37:35', '::1', 'Chrome'),
(541332, '2019-04-06 23:04:12', '::1', 'Chrome'),
(541333, '2019-04-09 12:19:32', '::1', 'Chrome'),
(541334, '2019-04-10 01:33:03', '::1', 'Chrome'),
(541335, '2019-04-11 03:30:38', '::1', 'Chrome'),
(541336, '2019-04-11 03:30:38', '::1', 'Chrome'),
(541337, '2019-04-12 03:51:42', '::1', 'Chrome'),
(541338, '2019-04-12 21:55:51', '::1', 'Chrome'),
(541339, '2019-04-14 01:30:40', '::1', 'Chrome'),
(541340, '2019-04-15 01:42:53', '::1', 'Chrome'),
(541341, '2019-05-08 02:07:09', '::1', 'Chrome'),
(541342, '2019-05-21 05:55:14', '::1', 'Firefox'),
(541343, '2019-08-28 07:08:22', '::1', 'Firefox'),
(541344, '2019-12-17 06:04:57', '::1', 'Firefox'),
(541345, '2019-12-18 01:34:25', '::1', 'Firefox'),
(541346, '2019-12-19 02:21:23', '::1', 'Firefox'),
(541347, '2019-12-20 07:47:00', '::1', 'Firefox'),
(541348, '2019-12-28 02:58:34', '::1', 'Firefox'),
(541349, '2019-12-29 08:48:39', '::1', 'Firefox'),
(541350, '2019-12-30 03:24:04', '::1', 'Firefox'),
(541351, '2019-12-31 02:47:15', '::1', 'Firefox'),
(541352, '2020-01-01 02:24:55', '::1', 'Firefox'),
(541353, '2020-01-02 01:58:25', '::1', 'Firefox'),
(541354, '2020-01-03 03:15:30', '::1', 'Firefox'),
(541355, '2020-01-04 03:31:49', '::1', 'Firefox'),
(541356, '2020-01-05 06:58:35', '127.0.0.1', 'Firefox'),
(541357, '2020-01-06 06:03:25', '::1', 'Firefox'),
(541358, '2020-01-07 00:57:59', '::1', 'Firefox'),
(541359, '2020-01-08 05:53:44', '::1', 'Firefox'),
(541360, '2020-01-12 04:18:15', '::1', 'Firefox'),
(541361, '2021-07-17 05:50:59', '::1', 'Chrome'),
(541362, '2021-07-18 04:11:28', '::1', 'Chrome'),
(541363, '2021-07-24 12:52:48', '::1', 'Chrome'),
(541364, '2022-08-02 08:29:19', '::1', 'Chrome'),
(541365, '2022-08-02 16:17:01', '::1', 'Chrome'),
(541366, '2022-08-06 13:44:03', '::1', 'Chrome'),
(541367, '2022-08-06 16:43:52', '::1', 'Chrome'),
(541368, '2022-08-08 03:31:11', '::1', 'Chrome'),
(541369, '2022-08-10 01:48:25', '::1', 'Chrome'),
(541370, '2022-08-13 03:15:53', '::1', 'Chrome'),
(541371, '2022-08-30 12:32:37', '::1', 'Chrome'),
(541372, '2022-09-02 14:53:02', '::1', 'Chrome'),
(541373, '2022-09-10 16:14:14', '::1', 'Chrome'),
(541374, '2022-12-07 07:08:34', '::1', 'Chrome'),
(541375, '2022-12-07 16:00:09', '::1', 'Chrome'),
(541376, '2022-12-08 16:19:36', '::1', 'Chrome'),
(541377, '2022-12-10 07:06:23', '::1', 'Chrome'),
(541378, '2022-12-12 10:58:07', '::1', 'Chrome'),
(541379, '2023-01-24 09:49:20', '::1', 'Chrome'),
(541380, '2023-01-24 16:10:17', '::1', 'Chrome'),
(541381, '2023-01-26 06:19:21', '::1', 'Chrome'),
(541382, '2023-01-26 21:06:17', '::1', 'Chrome'),
(541383, '2023-01-27 13:50:26', '127.0.0.1', 'Chrome'),
(541384, '2023-01-28 07:03:19', '::1', 'Chrome'),
(541385, '2023-01-28 16:07:38', '::1', 'Chrome'),
(541386, '2023-01-29 16:17:21', '::1', 'Chrome'),
(541387, '2023-01-31 15:02:16', '::1', 'Chrome'),
(541388, '2023-02-01 14:12:15', '::1', 'Chrome'),
(541389, '2023-02-01 16:23:47', '::1', 'Chrome'),
(541390, '2023-02-02 16:23:14', '::1', 'Chrome'),
(541391, '2023-02-03 13:53:31', '127.0.0.1', 'Chrome'),
(541392, '2023-02-04 07:56:56', '::1', 'Chrome'),
(541393, '2023-02-04 16:10:08', '::1', 'Chrome'),
(541394, '2023-02-06 13:11:39', '::1', 'Chrome'),
(541395, '2023-10-06 12:07:47', '::1', 'Chrome'),
(541396, '2023-10-06 16:00:06', '::1', 'Chrome'),
(541397, '2024-08-08 07:24:01', '::1', 'Chrome'),
(541398, '2024-08-09 13:59:50', '::1', 'Chrome'),
(541399, '2024-08-09 16:47:15', '::1', 'Chrome'),
(541400, '2024-08-10 16:38:02', '::1', 'Chrome'),
(541401, '2024-08-11 16:06:08', '::1', 'Chrome'),
(541402, '2024-08-12 15:40:33', '127.0.0.1', 'Chrome'),
(541403, '2024-08-12 16:29:30', '::1', 'Chrome'),
(541404, '2024-08-13 01:52:02', '127.0.0.1', 'Chrome');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_alternatif`
--

CREATE TABLE `tb_alternatif` (
  `kode_alternatif` varchar(16) NOT NULL,
  `nama_alternatif` varchar(256) DEFAULT NULL,
  `keterangan` text,
  `alamat` varchar(255) DEFAULT NULL,
  `nama_pengelola` varchar(255) DEFAULT NULL,
  `nomor_telepon` bigint(20) DEFAULT NULL,
  `rank_vikor` int(11) DEFAULT NULL,
  `total_vikor` double DEFAULT NULL,
  `rank_topsis` int(11) DEFAULT NULL,
  `total_topsis` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_alternatif`
--

INSERT INTO `tb_alternatif` (`kode_alternatif`, `nama_alternatif`, `keterangan`, `alamat`, `nama_pengelola`, `nomor_telepon`, `rank_vikor`, `total_vikor`, `rank_topsis`, `total_topsis`) VALUES
('A02', 'Pelita Harapan', 'BSU', 'Jl. Pelita Raya', 'Surasmi', 6285255796911, 3, 0.31884057971014, 2, 0.47013296475043),
('A03', 'Kreatif Pemuda', 'BSU', 'Jl. Pendidikan', 'Arkan Ahmad', 6285399959635, 1, 0, 1, 0.53712701688421),
('A04', 'Kemapertika', 'BSU', 'Jl. Perintis Kemerdekaan', 'Suryani', 6289623145656, 5, 1, 5, 0.12847513232688),
('A01', 'Pelita Bangsa', 'BSU', 'Jl. Pelita Raya', 'Rosmini', 6281356656456, 2, 0.094202898550725, 3, 0.43185895779372),
('A05', 'Teratai Pampang', 'BSU', 'Jl. Pampang', 'Tima Khilala', 6282196978181, 4, 0.58695652173913, 4, 0.41961122757593);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_crips`
--

CREATE TABLE `tb_crips` (
  `kode_crips` int(11) NOT NULL,
  `kode_kriteria` varchar(16) DEFAULT NULL,
  `nama_crips` varchar(255) DEFAULT NULL,
  `nilai` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_crips`
--

INSERT INTO `tb_crips` (`kode_crips`, `kode_kriteria`, `nama_crips`, `nilai`) VALUES
(505, 'C1', '<= 2 Jam', 1),
(506, 'C1', '> 2 Jam s.d. 4 Jam', 2),
(507, 'C1', '> 4 Jam s.d.  6 Jam', 3),
(508, 'C1', '> 6 Jam s.d. 8 Jam', 4),
(509, 'C1', '>= 8 Jam', 5),
(510, 'C7', 'Blacklist', 25),
(511, 'C7', 'Netral', 50),
(512, 'C7', 'Whitelist', 100),
(513, 'C6', '1', 5),
(514, 'C6', '2', 25),
(515, 'C6', '3', 50),
(516, 'C6', '4', 75),
(517, 'C6', '>= 5', 100),
(518, 'C5', '> 80 KG/ Minggu', 5),
(519, 'C5', '> 60 KG s.d. 80 KG/ Minggu', 4),
(520, 'C5', '> 40 KG s.d. 60 KG/ Minggu', 3),
(521, 'C5', '<= 20 KG/ Minggu', 1),
(522, 'C5', '> 20 KG s.d. 40 KG/ Minggu', 2),
(523, 'C4', '>= 20 Karyawan', 5),
(524, 'C4', '> 15 Karyawan s.d. 20 Karyawan', 4),
(525, 'C4', '> 10 Karyawan s.d. 15 Karyawan', 3),
(526, 'C4', '> 5 Karyawan s.d. 10 Karyawan', 2),
(527, 'C4', '<= 5 Karyawan', 1),
(528, 'C3', '>=200 Rumah Tangga', 5),
(529, 'C3', '> 150 Rumah Tangga s.d. 200 Rumah Tangga', 4),
(530, 'C3', '> 50 Rumah Tangga s.d. 100 Rumah Tangga', 2),
(531, 'C3', '<= 50 Rumah Tangga', 1),
(532, 'C3', '> 100 Rumah Tangga s.d. 150 Rumah Tangga', 3),
(533, 'C2', '5 Hari', 5),
(534, 'C2', '4 Hari', 4),
(535, 'C2', '3 Hari', 3),
(536, 'C2', '2 Hari', 2),
(537, 'C2', '1 Hari', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kriteria`
--

CREATE TABLE `tb_kriteria` (
  `kode_kriteria` varchar(16) NOT NULL,
  `nama_kriteria` varchar(256) DEFAULT NULL,
  `atribut` varchar(16) DEFAULT NULL,
  `bobot` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kriteria`
--

INSERT INTO `tb_kriteria` (`kode_kriteria`, `nama_kriteria`, `atribut`, `bobot`) VALUES
('C1', 'Jam Operasional', 'benefit', 4),
('C2', 'Jadwal Operasional', 'benefit', 4),
('C3', 'Jumlah Nasabah', 'benefit', 4),
('C4', 'Jumlah Tenaga Kerja', 'benefit', 3),
('C5', 'Jumlah Sampah yang Dikumpulkan', 'benefit', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_rel_alternatif`
--

CREATE TABLE `tb_rel_alternatif` (
  `ID` int(11) NOT NULL,
  `kode_alternatif` varchar(16) DEFAULT NULL,
  `kode_kriteria` varchar(16) DEFAULT NULL,
  `kode_crips` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_rel_alternatif`
--

INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `kode_crips`) VALUES
(66, 'A04', 'C1', 505),
(75, 'A05', 'C4', 525),
(74, 'A05', 'C3', 530),
(64, 'A03', 'C5', 519),
(58, 'A02', 'C5', 522),
(63, 'A03', 'C4', 527),
(57, 'A02', 'C4', 527),
(62, 'A03', 'C3', 531),
(56, 'A02', 'C3', 528),
(61, 'A03', 'C2', 536),
(55, 'A02', 'C2', 537),
(60, 'A03', 'C1', 509),
(54, 'A02', 'C1', 505),
(73, 'A05', 'C2', 536),
(52, 'A01', 'C5', 520),
(51, 'A01', 'C4', 526),
(50, 'A01', 'C3', 531),
(49, 'A01', 'C2', 536),
(48, 'A01', 'C1', 507),
(67, 'A04', 'C2', 537),
(68, 'A04', 'C3', 531),
(69, 'A04', 'C4', 526),
(70, 'A04', 'C5', 521),
(72, 'A05', 'C1', 508),
(76, 'A05', 'C5', 521);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indeks untuk tabel `tbl_site`
--
ALTER TABLE `tbl_site`
  ADD PRIMARY KEY (`site_id`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `tbl_visitors`
--
ALTER TABLE `tbl_visitors`
  ADD PRIMARY KEY (`visit_id`);

--
-- Indeks untuk tabel `tb_alternatif`
--
ALTER TABLE `tb_alternatif`
  ADD PRIMARY KEY (`kode_alternatif`);

--
-- Indeks untuk tabel `tb_crips`
--
ALTER TABLE `tb_crips`
  ADD PRIMARY KEY (`kode_crips`);

--
-- Indeks untuk tabel `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  ADD PRIMARY KEY (`kode_kriteria`);

--
-- Indeks untuk tabel `tb_rel_alternatif`
--
ALTER TABLE `tb_rel_alternatif`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_site`
--
ALTER TABLE `tbl_site`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_visitors`
--
ALTER TABLE `tbl_visitors`
  MODIFY `visit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=541405;

--
-- AUTO_INCREMENT untuk tabel `tb_crips`
--
ALTER TABLE `tb_crips`
  MODIFY `kode_crips` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=538;

--
-- AUTO_INCREMENT untuk tabel `tb_rel_alternatif`
--
ALTER TABLE `tb_rel_alternatif`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
