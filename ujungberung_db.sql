-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Mar 2020 pada 01.14
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujungberung_db`
--

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `laporan_awal`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `laporan_awal` (
`id_detail` int(4)
,`id_stock` int(5)
,`kd_produksi` varchar(8)
,`kd_model` varchar(4)
,`kd_stock` varchar(4)
,`total_pesanan` int(5)
,`tanggal_pesan` date
,`id_proses` int(2)
,`nama_proses` varchar(15)
,`warna` varchar(15)
,`tanggal_jadi` date
,`jml_in` int(4)
,`jml_out` int(4)
,`jml_bs` int(4)
,`jml_off` int(4)
,`status_proses` varchar(15)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_nama` varchar(100) NOT NULL,
  `menu_uri` varchar(100) NOT NULL,
  `menu_icon` varchar(50) NOT NULL,
  `menu_allowed` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_uri`, `menu_icon`, `menu_allowed`) VALUES
(1, 'Dashboard', 'dashboard', 'fa fa-dashboard', '+1+2+'),
(2, 'Produk', 'item', 'fa fa-barcode', '+1+');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_detail_proses`
--

CREATE TABLE `t_detail_proses` (
  `id_detail` int(4) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `jml_in` int(4) DEFAULT NULL,
  `jml_out` int(4) DEFAULT NULL,
  `jml_bs` int(4) DEFAULT NULL,
  `jml_off` int(4) DEFAULT NULL,
  `id_proses` int(2) DEFAULT NULL,
  `id_stock` int(5) DEFAULT NULL,
  `warna` varchar(15) DEFAULT NULL,
  `status_proses` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_detail_proses`
--

INSERT INTO `t_detail_proses` (`id_detail`, `tanggal`, `jml_in`, `jml_out`, `jml_bs`, `jml_off`, `id_proses`, `id_stock`, `warna`, `status_proses`) VALUES
(1, '2014-10-23', 0, 30, 0, 0, 1, 51, 'merah', 'done'),
(2, '2014-10-23', 0, 30, 0, 0, 1, 51, 'kuning', 'done'),
(3, '2014-10-23', 0, 30, 0, 0, 1, 51, 'biru', 'done'),
(4, '2014-10-24', 0, 50, 0, 0, 1, 52, 'merah', 'done'),
(5, '2014-10-24', 0, 50, 0, 0, 1, 52, 'hijau', 'done'),
(6, '2014-10-24', 0, 60, 0, 0, 1, 53, 'hijau', 'done'),
(7, '2014-10-24', 0, 60, 0, 0, 1, 53, 'coklat', 'done'),
(8, '2014-10-24', 0, 60, 0, 0, 1, 54, 'biru', 'proses mesin'),
(9, '2014-10-25', 30, 25, 5, 0, 2, 51, 'merah', 'done'),
(10, '2014-10-25', 30, 30, 0, 0, 2, 51, 'kuning', 'done'),
(11, '2014-10-25', 30, 30, 0, 0, 2, 51, 'biru', 'done'),
(12, '2014-10-25', 50, 50, 0, 0, 2, 52, 'merah', 'done'),
(13, '2014-10-25', 50, 40, 10, 0, 2, 52, 'hijau', 'done'),
(14, '2014-10-26', 60, 60, 0, 0, 2, 53, 'hijau', 'done'),
(16, '2014-10-26', 60, 60, 0, 0, 2, 53, 'coklat', 'proses rosso'),
(17, '2014-10-27', 25, 25, 0, 0, 3, 51, 'merah', 'done'),
(18, '2014-10-27', 30, 30, 0, 0, 3, 51, 'kuning', 'done'),
(19, '2014-10-27', 30, 30, 0, 0, 3, 51, 'biru', 'done'),
(20, '2014-10-28', 50, 50, 0, 0, 3, 52, 'merah', 'done'),
(21, '2014-10-28', 40, 40, 0, 0, 3, 52, 'hijau', 'done'),
(22, '2014-10-29', 60, 60, 0, 0, 3, 53, 'hijau', 'proses balikan'),
(23, '2014-10-29', 25, 25, 0, 0, 4, 51, 'merah', 'done'),
(24, '2014-10-29', 30, 30, 0, 0, 4, 51, 'kuning', 'done'),
(25, '2014-10-29', 30, 30, 0, 0, 4, 51, 'biru', 'done'),
(26, '2014-10-30', 50, 50, 0, 0, 4, 52, 'merah', 'done'),
(27, '2014-10-30', 40, 40, 0, 0, 4, 52, 'hijau', 'proses oven'),
(28, '2014-10-31', 25, 25, 0, 0, 5, 51, 'merah', 'proses packing'),
(29, '2014-10-31', 30, 30, 0, 0, 5, 51, 'kuning', 'proses packing'),
(30, '2014-10-31', 30, 30, 0, 0, 5, 51, 'biru', 'proses packing'),
(31, '2014-10-31', 50, 50, 0, 0, 5, 52, 'merah', 'proses packing');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_model`
--

CREATE TABLE `t_model` (
  `kd_model` varchar(4) NOT NULL,
  `nama_model` varchar(20) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `jml_produk` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_model`
--

INSERT INTO `t_model` (`kd_model`, `nama_model`, `deskripsi`, `jml_produk`) VALUES
('KSA', 'Kimi School ', 'Kaos kaki untuk anak umur 5-10 tahun', 2),
('KSB', 'Kimi Baby', 'Kaos kaki untuk balita ( < 5 tahun )', 4),
('KSC', 'Kimi Medium', 'Kaos kaki ukuran sedang', 0),
('KSX', 'Kimi XL', 'Kaos kaki untuk anak (>10 tahun)', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_proses`
--

CREATE TABLE `t_proses` (
  `id_proses` int(2) NOT NULL,
  `nama_proses` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_proses`
--

INSERT INTO `t_proses` (`id_proses`, `nama_proses`) VALUES
(1, 'mesin'),
(2, 'rosso'),
(3, 'balikan'),
(4, 'oven'),
(5, 'packing'),
(6, 'gudang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_stock`
--

CREATE TABLE `t_stock` (
  `id_stock` int(5) NOT NULL,
  `kd_stock` varchar(4) DEFAULT NULL,
  `warna1` varchar(15) DEFAULT NULL,
  `warna2` varchar(15) DEFAULT NULL,
  `warna3` varchar(15) DEFAULT NULL,
  `jml_w1` int(4) DEFAULT NULL,
  `jml_w2` int(4) DEFAULT NULL,
  `jml_w3` int(4) DEFAULT NULL,
  `total_pesanan` int(5) DEFAULT NULL,
  `total_jadi` int(5) DEFAULT NULL,
  `kd_model` varchar(4) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'UNPROCESSED',
  `gambar` varchar(200) NOT NULL,
  `tanggal` date NOT NULL,
  `kd_produksi` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_stock`
--

INSERT INTO `t_stock` (`id_stock`, `kd_stock`, `warna1`, `warna2`, `warna3`, `jml_w1`, `jml_w2`, `jml_w3`, `total_pesanan`, `total_jadi`, `kd_model`, `status`, `gambar`, `tanggal`, `kd_produksi`) VALUES
(51, '001', 'merah', 'kuning', 'biru', 30, 30, 30, 90, 0, 'KSA', 'UNPROCESSED', '0', '2014-10-21', 'KSA 001'),
(52, '002', 'merah', 'hijau', 'gray', 50, 50, 20, 120, 0, 'KSA', 'IN PROCESS', '0', '2014-10-22', 'KSA 002'),
(53, '001', 'hijau', 'coklat', 'merah', 60, 60, 30, 150, 0, 'KSB', 'IN PROCESS', '0', '2014-10-21', 'KSB 001'),
(54, '002', 'biru', 'merah', 'kuning', 60, 20, 40, 120, 0, 'KSB', 'IN PROCESS', '0', '2014-10-22', 'KSB 002'),
(56, '003', '', '', '', 0, 0, 0, 0, 0, 'KSB', 'IN PROCESS', '0', '0000-00-00', 'KSB 003');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(100) NOT NULL,
  `user_username` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_alamat` varchar(100) NOT NULL,
  `user_kota` varchar(15) NOT NULL,
  `user_kodepos` varchar(10) NOT NULL,
  `user_telepon` varchar(15) NOT NULL,
  `user_email` varchar(20) NOT NULL,
  `user_level` int(5) NOT NULL,
  `user_role` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `user_nama`, `user_username`, `user_password`, `user_alamat`, `user_kota`, `user_kodepos`, `user_telepon`, `user_email`, `user_level`, `user_role`) VALUES
(1, 'Eko Budi Setiawan', 'admin_kantor', '43045f34228734321398d5f04ac595b8', 'Jalan Dipatiukur', 'Bandung', '40000', '(022) - xxxxx', 'xxx@yyy.com', 1, 'Product Development Manager'),
(2, 'Fanny Andalia', 'admin_pabrik', 'e2336778d01b115657df7bdd7cae2444', 'Jalan xxx', 'Bandung', '40000', '022-xxx', 'xxx@zzz.com', 2, 'Kepala Gudang'),
(4, 'Admin', 'admin', 'e2fc714c4727ee9395f324cd2e7f331f', 'dago', 'bandung', '54321', '0811234567890', 'anon@mail.com', 1, 'Product Development Manager');

INSERT INTO `user` (`user_id`, `user_nama`, `user_username`, `user_password`, `user_alamat`, `user_kota`, `user_kodepos`, `user_telepon`, `user_email`, `user_level`, `user_role`) VALUES
(1, 'Eko Budi Setiawan', 'farhan', '81dc9bdb52d04dc20036dbd8313ed055', 'Jalan Dipatiukur', 'Bandung', '40000', '(022) - xxxxx', 'xxx@yyy.com', 1, 'Product Development Manager');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_proses`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_proses` (
`id_detail` int(4)
,`id_stock` int(5)
,`kd_produksi` varchar(8)
,`id_proses` int(2)
,`nama_proses` varchar(15)
,`warna` varchar(15)
,`tanggal` date
,`jml_in` int(4)
,`jml_out` int(4)
,`jml_bs` int(4)
,`jml_off` int(4)
,`status_proses` varchar(15)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `laporan_awal`
--
DROP TABLE IF EXISTS `laporan_awal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `laporan_awal`  AS  (select `t_detail_proses`.`id_detail` AS `id_detail`,`t_stock`.`id_stock` AS `id_stock`,`t_stock`.`kd_produksi` AS `kd_produksi`,`t_stock`.`kd_model` AS `kd_model`,`t_stock`.`kd_stock` AS `kd_stock`,`t_stock`.`total_pesanan` AS `total_pesanan`,`t_stock`.`tanggal` AS `tanggal_pesan`,`t_detail_proses`.`id_proses` AS `id_proses`,`t_proses`.`nama_proses` AS `nama_proses`,`t_detail_proses`.`warna` AS `warna`,`t_detail_proses`.`tanggal` AS `tanggal_jadi`,`t_detail_proses`.`jml_in` AS `jml_in`,`t_detail_proses`.`jml_out` AS `jml_out`,`t_detail_proses`.`jml_bs` AS `jml_bs`,`t_detail_proses`.`jml_off` AS `jml_off`,`t_detail_proses`.`status_proses` AS `status_proses` from ((`t_detail_proses` join `t_stock` on(`t_stock`.`id_stock` = `t_detail_proses`.`id_stock`)) join `t_proses` on(`t_proses`.`id_proses` = `t_detail_proses`.`id_proses`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_proses`
--
DROP TABLE IF EXISTS `view_proses`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_proses`  AS  (select `t_detail_proses`.`id_detail` AS `id_detail`,`t_stock`.`id_stock` AS `id_stock`,`t_stock`.`kd_produksi` AS `kd_produksi`,`t_detail_proses`.`id_proses` AS `id_proses`,`t_proses`.`nama_proses` AS `nama_proses`,`t_detail_proses`.`warna` AS `warna`,`t_detail_proses`.`tanggal` AS `tanggal`,`t_detail_proses`.`jml_in` AS `jml_in`,`t_detail_proses`.`jml_out` AS `jml_out`,`t_detail_proses`.`jml_bs` AS `jml_bs`,`t_detail_proses`.`jml_off` AS `jml_off`,`t_detail_proses`.`status_proses` AS `status_proses` from ((`t_detail_proses` join `t_stock` on(`t_stock`.`id_stock` = `t_detail_proses`.`id_stock`)) join `t_proses` on(`t_proses`.`id_proses` = `t_detail_proses`.`id_proses`))) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indeks untuk tabel `t_detail_proses`
--
ALTER TABLE `t_detail_proses`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `fk_proses` (`id_proses`),
  ADD KEY `fk_stock` (`id_stock`);

--
-- Indeks untuk tabel `t_model`
--
ALTER TABLE `t_model`
  ADD PRIMARY KEY (`kd_model`);

--
-- Indeks untuk tabel `t_proses`
--
ALTER TABLE `t_proses`
  ADD PRIMARY KEY (`id_proses`);

--
-- Indeks untuk tabel `t_stock`
--
ALTER TABLE `t_stock`
  ADD PRIMARY KEY (`id_stock`),
  ADD KEY `fk_model` (`kd_model`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `t_detail_proses`
--
ALTER TABLE `t_detail_proses`
  MODIFY `id_detail` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `t_stock`
--
ALTER TABLE `t_stock`
  MODIFY `id_stock` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `t_detail_proses`
--
ALTER TABLE `t_detail_proses`
  ADD CONSTRAINT `fk_proses` FOREIGN KEY (`id_proses`) REFERENCES `t_proses` (`id_proses`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_stock` FOREIGN KEY (`id_stock`) REFERENCES `t_stock` (`id_stock`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `t_stock`
--
ALTER TABLE `t_stock`
  ADD CONSTRAINT `fk_model` FOREIGN KEY (`kd_model`) REFERENCES `t_model` (`kd_model`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
