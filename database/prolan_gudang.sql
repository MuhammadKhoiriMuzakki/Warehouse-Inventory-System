-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2019 at 05:04 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prolan_gudang`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_brng` varchar(12) NOT NULL,
  `nama_brng` varchar(40) DEFAULT NULL,
  `jml_brng` int(9) DEFAULT NULL,
  `harga_brng` int(25) DEFAULT NULL,
  `berat_brng` int(9) DEFAULT NULL,
  `ordered` int(10) DEFAULT NULL,
  `blok` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_brng`, `nama_brng`, `jml_brng`, `harga_brng`, `berat_brng`, `ordered`, `blok`) VALUES
('001', 'Samyang', 222, 90000, 15, 78, 'B'),
('002', 'indomie', 324, 50000, 14, 100, 'B'),
('003', 'Popmie', 55, 35000, 11, 22, 'B'),
('025', 'Pepsodent', 150, 75000, 22, 31, 'A'),
('026', 'Listerine', 70, 98000, 20, 14, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `coba`
--

CREATE TABLE `coba` (
  `time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coba`
--

INSERT INTO `coba` (`time`) VALUES
('2018-08-01'),
('2019-01-02'),
('2019-01-03'),
('2019-01-17');

-- --------------------------------------------------------

--
-- Table structure for table `inventaris`
--

CREATE TABLE `inventaris` (
  `id_inv` varchar(15) NOT NULL,
  `nama_inv` varchar(40) DEFAULT NULL,
  `jml_inv` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventaris`
--

INSERT INTO `inventaris` (`id_inv`, `nama_inv`, `jml_inv`) VALUES
('001', 'forklift', 33),
('002', 'Truck', 86),
('003', 'Crane', 5),
('004', 'container', 100);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jdwl` varchar(15) NOT NULL,
  `username` varchar(12) NOT NULL,
  `senin` tinyint(1) DEFAULT NULL,
  `selasa` tinyint(1) DEFAULT NULL,
  `rabu` tinyint(1) DEFAULT NULL,
  `kamis` tinyint(1) DEFAULT NULL,
  `jumat` tinyint(1) DEFAULT NULL,
  `sabtu` tinyint(1) DEFAULT NULL,
  `jam_tambah` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `username` varchar(12) NOT NULL,
  `password` varchar(12) NOT NULL,
  `fullname` varchar(40) NOT NULL,
  `jenis_kel` varchar(10) DEFAULT 'LAKI-LAKI',
  `tempat_lhr` varchar(15) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `status_kar` varchar(15) DEFAULT 'BELUM MENIKAH',
  `no_telp` int(14) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `alamat_kar` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`username`, `password`, `fullname`, `jenis_kel`, `tempat_lhr`, `tgl_lahir`, `status_kar`, `no_telp`, `email`, `alamat_kar`) VALUES
('iamfurry', 'lovefurry', 'Nurra', 'L', 'Bekasi', '2001-02-03', 'jomblo', 813, 'nurra@gmail.com', 'pinangranti'),
('ipuycool', 'jessnolilit', 'namadisamarkan', 'L', 'Bekasi', '2002-03-04', 'jomblo', 812, 'ipuycool@gmail.com', 'krukut'),
('Kaze', 'beliebers', 'Rinaldi', 'L', 'Bekasi', '0000-00-00', 'jomblo', 896, 'rhh@gmail.com', 'kalimalang'),
('sabil', '[C@25677bc4', 'sabil', 'Laki-laki', 'sabil', '2019-01-03', 'Belum Menikah', 12312444, 'sabil', 'sabil'),
('yusuf', 'yusuf', 'yusuf', 'Laki-laki', 'yusuf', '2019-01-15', 'Belum Menikah', 1231, 'yusuf', 'yusuf');

-- --------------------------------------------------------

--
-- Table structure for table `rec_barang`
--

CREATE TABLE `rec_barang` (
  `id_rec` varchar(12) NOT NULL,
  `id_brng` varchar(12) NOT NULL,
  `jml_brng` int(9) DEFAULT NULL,
  `asal_brng` varchar(40) DEFAULT NULL,
  `tjn_brng` varchar(40) DEFAULT NULL,
  `tgl_brng` date DEFAULT NULL,
  `ket_brng` varchar(40) DEFAULT NULL,
  `png_jwb` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `no_vis` int(10) NOT NULL,
  `nama_vis` varchar(30) NOT NULL,
  `alamat_vis` text NOT NULL,
  `tgl_msk_vis` date NOT NULL,
  `tgl_klr_vis` date NOT NULL,
  `keperluan_vis` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`no_vis`, `nama_vis`, `alamat_vis`, `tgl_msk_vis`, `tgl_klr_vis`, `keperluan_vis`) VALUES
(1111, 'joni', 'beji', '2002-05-19', '2003-05-19', 'maintenance gudang'),
(3321, 'adul', 'depok', '2001-05-19', '2002-05-19', 'Check barang'),
(3322, 'yusuf', 'yusuf', '2019-01-02', '2019-01-10', 'yusuf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_brng`);

--
-- Indexes for table `coba`
--
ALTER TABLE `coba`
  ADD PRIMARY KEY (`time`);

--
-- Indexes for table `inventaris`
--
ALTER TABLE `inventaris`
  ADD PRIMARY KEY (`id_inv`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jdwl`),
  ADD KEY `jadwal_fk1` (`username`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `rec_barang`
--
ALTER TABLE `rec_barang`
  ADD PRIMARY KEY (`id_rec`),
  ADD KEY `rec_barang_fk1` (`id_brng`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`no_vis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `no_vis` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3323;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_fk1` FOREIGN KEY (`username`) REFERENCES `karyawan` (`username`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `rec_barang`
--
ALTER TABLE `rec_barang`
  ADD CONSTRAINT `rec_barang_fk1` FOREIGN KEY (`id_brng`) REFERENCES `barang` (`id_brng`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
