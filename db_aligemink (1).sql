-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 03, 2023 at 07:43 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_aligemink`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `kode_barang` varchar(50) NOT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `warna` varchar(100) DEFAULT NULL,
  `kode_kategori` varchar(5) DEFAULT NULL,
  `satuan` varchar(50) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `harga_beli` int(11) DEFAULT NULL,
  `harga_jual` int(11) DEFAULT NULL,
  `profit` int(11) DEFAULT NULL,
  `tgl_input` date DEFAULT NULL,
  `pengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`kode_barang`, `nama_barang`, `warna`, `kode_kategori`, `satuan`, `stok`, `harga_beli`, `harga_jual`, `profit`, `tgl_input`, `pengguna`) VALUES
('B001', 'Aqua', 'Bening', 'D001', '1', 100, 1000, 2500, 1500, '2023-09-26', 1),
('B002', 'Le Mineral', 'Bening', 'D002', '1', 100, 1000, 2500, 1500, '2023-09-26', 1),
('B003', 'Floridina', 'Jingga', 'D003', '1', 100, 2000, 3500, 1500, '2023-09-26', 1),
('B004', 'Kerudung Anak', 'Pink', 'K004', 'Pcs', 26, 20000, 26000, 6000, '2023-10-03', 1),
('B005', 'Kerudung Dewasa', 'Pink', 'K002', 'Pcs', 9, 20000, 26000, 6000, '2023-10-03', 1),
('B006', 'Kaos Oblong', 'Pink', 'K001', 'Pcs', 11, 20000, 26000, 6000, '2023-10-03', 1),
('B007', 'Kaos Kerah', 'Pink', 'K001', 'Pcs', 11, 20000, 26000, 6000, '2023-10-03', 1),
('B008', 'Celana Pendek Anak', 'Pink', 'K003', 'Pcs', 11, 120000, 26000, 6000, '2023-10-03', 1),
('B009', 'Celana Panjang Jeans', 'Pink', 'K001', 'Pcs', 25, 130000, 250000, 6000, '2023-10-03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `kode_kategori` varchar(30) NOT NULL,
  `nama_kategori` varchar(50) DEFAULT NULL,
  `tgl_input` date DEFAULT NULL,
  `pengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`kode_kategori`, `nama_kategori`, `tgl_input`, `pengguna`) VALUES
('K001', 'Baju Dewasa Laki-Laki', '2023-10-03', 1),
('K002', 'Baju Dewasa Perempuan', '2023-10-03', 1),
('K003', 'Baju Anak Laki-Laki', '2023-10-03', 1),
('K004', 'Baju', '2023-10-03', 1),
('K005', 'Topi', '2023-10-03', 1),
('K006', 'Produk Kebersihan', '2023-10-03', 1),
('K007', 'testing', '2023-10-03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `kode_pelanggan` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `telepon` int(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `tgl_input` date DEFAULT NULL,
  `pengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`kode_pelanggan`, `nama`, `alamat`, `telepon`, `email`, `tgl_input`, `pengguna`) VALUES
(1, 'Maulana Ali', 'Griya Intan Blok F, No. 27', 489717412, 'maulanaaalifauzieh69@gmail.com', '2023-10-03', 1),
(2, 'Abdul Aziz', 'Jl. Perjuangan', 211289379, 'dhalkjwdjawklfklakwja@hotmail.com', '2023-10-03', 1),
(3, 'Ricky Ramadan', 'Plered', 41941412, NULL, '2023-10-03', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembelian_detail`
--

CREATE TABLE `tb_pembelian_detail` (
  `id` int(11) NOT NULL,
  `tgl_input` date DEFAULT NULL,
  `kode_barang` varchar(50) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `pengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pembelian_detail`
--

INSERT INTO `tb_pembelian_detail` (`id`, `tgl_input`, `kode_barang`, `jumlah`, `pengguna`) VALUES
(6, '2023-10-03', 'B001', 5, 3),
(7, '2023-10-03', 'B001', 20, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `tgl_input` date DEFAULT NULL,
  `pengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id`, `username`, `nama`, `password`, `level`, `foto`, `tgl_input`, `pengguna`) VALUES
(1, 'admin', 'Ilham Ramadan', 'admin', '1', 'admin.jfif', '2023-09-26', 1),
(2, 'kasir', 'Ricky Ramadan', 'kasir', '2', 'fotouser.jpeg', '2023-09-26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_penjualan`
--

CREATE TABLE `tb_penjualan` (
  `kode_penjualan` varchar(50) NOT NULL,
  `tgl_penjualan` date DEFAULT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `bayar` int(11) DEFAULT NULL,
  `kembali` int(11) DEFAULT NULL,
  `diskon` int(11) DEFAULT NULL,
  `potongan` int(11) DEFAULT NULL,
  `total_b` int(11) DEFAULT NULL,
  `pengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_penjualan`
--

INSERT INTO `tb_penjualan` (`kode_penjualan`, `tgl_penjualan`, `id_pelanggan`, `bayar`, `kembali`, `diskon`, `potongan`, `total_b`, `pengguna`) VALUES
('PJ-00000001', '2021-12-04', 2, 350000, 0, 0, 0, 350000, 3),
('PJ-00000002', '2021-12-04', 2, 100000, 27000, 0, 0, 73000, 3),
('PJ-00000003', '2022-09-15', 2, 100000, 27000, 0, 0, 73000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_penjualan_detail`
--

CREATE TABLE `tb_penjualan_detail` (
  `id` int(11) NOT NULL,
  `kode_penjualan` varchar(20) DEFAULT NULL,
  `kode_barang` varchar(50) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_penjualan_detail`
--

INSERT INTO `tb_penjualan_detail` (`id`, `kode_penjualan`, `kode_barang`, `jumlah`, `total`) VALUES
(78, 'PJ-00000001', 'B001', 2, 50000),
(79, 'PJ-00000001', 'B008', 2, 300000),
(80, 'PJ-00000002', 'B001', 2, 50000),
(81, 'PJ-00000002', 'B002', 1, 23000),
(82, 'PJ-00000003', 'B001', 2, 50000),
(83, 'PJ-00000003', 'B002', 1, 23000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`kode_kategori`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`kode_pelanggan`);

--
-- Indexes for table `tb_pembelian_detail`
--
ALTER TABLE `tb_pembelian_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  ADD PRIMARY KEY (`kode_penjualan`);

--
-- Indexes for table `tb_penjualan_detail`
--
ALTER TABLE `tb_penjualan_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_pembelian_detail`
--
ALTER TABLE `tb_pembelian_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_penjualan_detail`
--
ALTER TABLE `tb_penjualan_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
