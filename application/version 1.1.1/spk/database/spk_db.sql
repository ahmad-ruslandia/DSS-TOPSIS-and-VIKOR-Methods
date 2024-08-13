-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jul 2024 pada 09.05
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
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `user` varchar(16) NOT NULL,
  `pass` varchar(16) DEFAULT NULL,
  `level` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`user`, `pass`, `level`) VALUES
('admin', 'admin', 'admin'),
('user', 'user', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_alternatif`
--

CREATE TABLE `tb_alternatif` (
  `kode_alternatif` varchar(16) NOT NULL,
  `nama_alternatif` varchar(256) DEFAULT NULL,
  `keterangan` text,
  `rank_vikor` int(11) DEFAULT NULL,
  `total_vikor` double DEFAULT NULL,
  `rank_topsis` int(11) DEFAULT NULL,
  `total_topsis` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_alternatif`
--

INSERT INTO `tb_alternatif` (`kode_alternatif`, `nama_alternatif`, `keterangan`, `rank_vikor`, `total_vikor`, `rank_topsis`, `total_topsis`) VALUES
('A02', 'Pelita Harapan', 'BSU', 3, 0.31884057971014, 2, 0.47013296475043),
('A03', 'Kreatif Pemuda', 'BSU', 1, 0, 1, 0.53712701688421),
('A04', 'Kemapertika', 'BSU', 5, 1, 5, 0.12847513232688),
('A01', 'Pelita Bangsa', 'BSU', 2, 0.094202898550725, 3, 0.43185895779372),
('A05', 'Teratai Pampang', 'BSU', 4, 0.58695652173913, 4, 0.41961122757593);

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
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`user`);

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
