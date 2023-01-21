-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2022 at 12:57 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bakery`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_user`
--

CREATE TABLE `data_user` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_user`
--

INSERT INTO `data_user` (`username`, `password`) VALUES
('admin', 'admin1');

-- --------------------------------------------------------

--
-- Table structure for table `dtbakery`
--

CREATE TABLE `dtbakery` (
  `kode` varchar(10) NOT NULL,
  `nama_bakery` varchar(50) NOT NULL,
  `jenis_bakery` varchar(30) NOT NULL,
  `stok` int(100) NOT NULL,
  `harga` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dtbakery`
--

INSERT INTO `dtbakery` (`kode`, `nama_bakery`, `jenis_bakery`, `stok`, `harga`) VALUES
('BK001', 'Butter Croissant', 'Pastry', 20, '15000'),
('BK002', 'Pie Buah', 'Cupcakes', 10, '10000'),
('BK003', 'Bunny Hugger Carrot Cupcakes', 'Cupcakes', 12, '12000'),
('BK004', 'Birthday Cake', 'Cake', 5, '55000'),
('BK005', 'Tuna Cheese Puff Bread', 'Bread', 50, '16000'),
('BK006', 'Banana Lekker Bread', 'Bread', 25, '10000'),
('BK007', 'Pastel', 'Snacks', 25, '5000'),
('BK008', 'Lemper', 'Snacks', 35, '2500'),
('BK009', 'Say Cheese Bread', 'Bread', 12, '14000');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `kode` varchar(10) NOT NULL,
  `nama_bakery` varchar(30) DEFAULT NULL,
  `jenis_bakery` varchar(30) DEFAULT NULL,
  `stok` varchar(15) DEFAULT NULL,
  `harga` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` varchar(10) NOT NULL,
  `nama_pelanggan` varchar(20) DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `nohp` varchar(12) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `nama_pelanggan`, `jenis_kelamin`, `nohp`, `alamat`) VALUES
('PG001', 'Widya Winarti', 'Perempuan', '085564332879', 'Jalan Melati Gang IV Bok B5'),
('PG002', 'Sinta Sari', 'Perempuan', '084399123448', 'Purwokerto'),
('PG003', 'Bagas Maulana', 'Laki-Laki', '081233218552', 'Jalan Mawar RT.02 No.12'),
('PG004', 'Larasati', 'Perempuan', '083411298349', 'Gang Mangga No.3 Purwokerto'),
('PG005', 'Santi', 'Perempuan', '085666345998', 'Purwokerto'),
('PG006', 'Firdaus', 'Laki-Laki', '089329912844', 'Blok B5 Jakarta Utara'),
('PG007', 'Rudi Bastian', 'Laki-Laki', '08771984721', 'Grendeng, Purwokerto'),
('PG008', 'Kevin Sanjaya', 'Laki-Laki', '082184328594', 'Cipayung'),
('PG009', 'Valencia ', 'Perempuan', '083149332189', 'Jakarta Pusat'),
('PG010', 'Zahra', 'Perempuan', '085677687557', 'Purwokerto');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `idTR` varchar(20) NOT NULL,
  `id_pelanggan` varchar(20) DEFAULT NULL,
  `totalBeli` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`idTR`, `id_pelanggan`, `totalBeli`) VALUES
('TR003', 'PG004', '40000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dtbakery`
--
ALTER TABLE `dtbakery`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`idTR`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
