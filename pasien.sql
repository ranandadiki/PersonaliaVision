-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19 Feb 2022 pada 08.28
-- Versi Server: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pasien`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', '$2y$10$19muT0EcPPe33Fk3vSnosu4c5G7i4m01L5dT8/0UiRPAEN.1woZsC'),
('diki', '$2y$10$2juIFYmM/YLM0Lzl5ZeJ1O3U/8n1zoK.piiUto2CFbJChECiir3ku'),
('dara', '$2y$10$ZeuVYXxNEhOKwqanavRV5uwvz4WvGMm7PBLzLkxuN5yiDOqmh7dpG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penanggung`
--

CREATE TABLE `penanggung` (
  `id` int(11) NOT NULL,
  `penanggung` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penanggung`
--

INSERT INTO `penanggung` (`id`, `penanggung`) VALUES
(1, 'BPJS'),
(2, 'Pribadi'),
(3, 'Pemerintah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `poliklinik`
--

CREATE TABLE `poliklinik` (
  `id` int(11) NOT NULL,
  `poli` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `poliklinik`
--

INSERT INTO `poliklinik` (`id`, `poli`) VALUES
(2, 'Poli Gigi'),
(4, 'Poli Organ Dalam'),
(5, 'Poli Umum');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `no_transaksi` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `poli` varchar(50) NOT NULL,
  `penanggung` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `no_transaksi`, `nama`, `jenis_kelamin`, `poli`, `penanggung`) VALUES
(1, 'Rs-1902-0001', 'Rananda Diki Pratama', 'P', 'Poli Umum', 'BPJS'),
(2, 'RS-1902-0002', 'Rananda EWW', 'P', 'Poli Umum', 'BPJS'),
(3, 'RS-1902-0003', 'Gilang', 'L', 'Poli Umum', 'BPJS'),
(4, 'RS-1902-0004', 'Doni', 'L', 'Poli Umum', 'BPJS'),
(5, 'RS-1902-0005', 'Dara', 'P', 'Poli Gigi', 'Pemerintah'),
(6, 'RS-1902-0006', 'Daryanti', 'P', 'Poli Gigi', 'BPJS'),
(7, 'RS-1902-0007', 'Dito', 'L', 'Poli Gigi', 'BPJS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `penanggung`
--
ALTER TABLE `penanggung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poliklinik`
--
ALTER TABLE `poliklinik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `penanggung`
--
ALTER TABLE `penanggung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `poliklinik`
--
ALTER TABLE `poliklinik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
