-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2023 at 04:04 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_nadip`
--

-- --------------------------------------------------------

--
-- Table structure for table `tab_agama`
--

CREATE TABLE `tab_agama` (
  `id` int(11) NOT NULL,
  `agama` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tab_agama`
--

INSERT INTO `tab_agama` (`id`, `agama`) VALUES
(1, 'islam'),
(2, 'kristen'),
(3, 'protestan'),
(4, 'khatolik'),
(5, 'hindu'),
(6, 'budha'),
(7, 'khonguchu'),
(8, 'lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `tab_mahasiswa`
--

CREATE TABLE `tab_mahasiswa` (
  `nim` varchar(12) NOT NULL,
  `no_ktp` varchar(16) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(15) DEFAULT NULL,
  `prodi` int(11) DEFAULT NULL,
  `provinsi` int(11) DEFAULT NULL,
  `Agama` int(11) DEFAULT NULL,
  `alamat_lengkap` varchar(255) DEFAULT NULL,
  `tgl_masuk` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tab_mahasiswa`
--

INSERT INTO `tab_mahasiswa` (`nim`, `no_ktp`, `nama_lengkap`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `prodi`, `provinsi`, `Agama`, `alamat_lengkap`, `tgl_masuk`) VALUES
('11000111', '321001001', 'Dwi', 'Jakarta', '0000-00-00', 'Pria', 1, 1, 0, 'Jl. Bumi Raya gang.D', '0000-00-00'),
('11000112', '321001002', 'Aulia', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 1, 'Jl. Kayu Jati', '0000-00-00'),
('11000113', '321001003', 'Chika', 'Solo', '0000-00-00', 'Wanita', 1, 3, 2, 'Jl. Gotong Royong', '0000-00-00'),
('11000114', '321001004', 'Fikri', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Bumi Raya gang.D', '0000-00-00'),
('11000115', '321001005', 'Harun', 'Bantul', '0000-00-00', 'Pria', 2, 8, 1, 'jl. Sindet', '0000-00-00'),
('11000116', '321001006', 'Kirana', 'Bantul', '0000-00-00', 'Pria', 1, 8, 4, 'Jl. Malioboro', '0000-00-00'),
('11000117', '321001007', 'Kevin', 'Solo', '0000-00-00', 'Wanita', 1, 3, 2, 'Jl.Raya Solo', '0000-00-00'),
('11000118', '321001008', 'Hisyam', 'Bandung', '0000-00-00', 'Pria', 2, 2, 1, 'Jl.Cipray', '0000-00-00'),
('11000119', '321001009', 'Joshua', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl.Semper Barat', '0000-00-00'),
('11000120', '321001010', 'Keisya', 'Banten', '0000-00-00', 'Pria', 2, 6, 1, 'Jl. Kandang sapi', '0000-00-00'),
('11000121', '321001011', 'Irwan', 'Lombok', '0000-00-00', 'Wanita', 2, 7, 2, 'Jl.Adyaksa', '0000-00-00'),
('11000122', '321001012', 'Luna', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 2, 'Jl. Daan Mogot', '0000-00-00'),
('11000123', '321001013', 'Lala', 'Bantul', '0000-00-00', 'Wanita', 1, 8, 4, 'jl. Sindet', '0000-00-00'),
('11000124', '321001014', 'Monika', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 4, 'Jl. Ahmad Yani', '0000-00-00'),
('11000125', '321001015', 'Rafa', 'Banten', '0000-00-00', 'Wanita', 2, 6, 3, 'Jl. Karah', '0000-00-00'),
('11000126', '321001016', 'Tristan', 'Maluku', '0000-00-00', 'Pria', 1, 4, 1, 'Jl. Gayung Kebon Sari', '0000-00-00'),
('11000127', '321001017', 'Usman', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Bung Tomo', '0000-00-00'),
('11000128', '321001018', 'Jery', 'Aceh', '0000-00-00', 'Wanita', 2, 3, 1, 'Jl. Mayjen Sungkono', '0000-00-00'),
('11000129', '321001019', 'Iqbal', 'Banten', '0000-00-00', 'Pria', 1, 6, 4, 'Jl. Darmo', '0000-00-00'),
('11000130', '321001020', 'Andi', 'NTB', '0000-00-00', 'Wanita', 2, 7, 2, 'Jl. Kupang Gunung', '0000-00-00'),
('11000131', '321001021', 'Elsa', 'Solo', '0000-00-00', 'Pria', 2, 8, 2, 'Jl. Arjuno', '0000-00-00'),
('11000132', '321001022', 'Mia', 'Bantul', '0000-00-00', 'Pria', 1, 8, 1, 'Jl. Prapen', '0000-00-00'),
('11000133', '321001023', 'Dika', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Keramat Jati', '0000-00-00'),
('11000134', '321001024', 'Fadel', 'Bandung', '0000-00-00', 'Pria', 2, 2, 2, 'Jl. Tidar', '0000-00-00'),
('11000135', '321001025', 'Lukman', 'Semarang', '0000-00-00', 'Pria', 1, 3, 3, 'Jl. Lontar', '0000-00-00'),
('11000136', '321001026', 'Mila', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Kebon Jeruk', '0000-00-00'),
('11000137', '321001027', 'Paul', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 2, 'Jl. Bung Tomo', '0000-00-00'),
('11000138', '321001028', 'Oskar', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Bumi Raya gang.D', '0000-00-00'),
('11000139', '321001029', 'Okky', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 1, 'Jl. Cipinang Muara', '0000-00-00'),
('11000140', '321001030', 'Putri', 'Solo', '0000-00-00', 'Wanita', 1, 3, 2, 'Jl. Nginden', '0000-00-00'),
('11000141', '321001031', 'Fitri', 'Maluku', '0000-00-00', 'Pria', 1, 4, 4, 'Jl. Kenjeran', '0000-00-00'),
('11000142', '321001032', 'Dodi', 'Jakarta', '0000-00-00', 'Wanita', 2, 1, 1, 'Jl. Swadaya', '0000-00-00'),
('11000143', '321001033', 'Gilang', 'Aceh', '0000-00-00', 'Pria', 1, 1, 1, 'Jl. Kutai', '0000-00-00'),
('11000144', '321001034', 'Tika', 'Bandung', '0000-00-00', 'Wanita', 1, 2, 2, 'Jl. Pegangsangan', '0000-00-00'),
('11000145', '321001035', 'Mira', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 2, 'Jl. Mastrip', '0000-00-00'),
('11000146', '321001036', 'Qiqi', 'Banten', '0000-00-00', 'Pria', 2, 6, 4, 'Jl. Indragiri', '0000-00-00'),
('11000147', '321001037', 'Tobi', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Semper Barat', '0000-00-00'),
('11000148', '321001038', 'Sisi', 'Solo', '0000-00-00', 'Pria', 2, 3, 1, 'Jl. Gajah Mada', '0000-00-00'),
('11000149', '321001039', 'Sela', 'Solo', '0000-00-00', 'Pria', 1, 3, 1, 'Jl. Arjuno', '0000-00-00'),
('11000150', '321001040', 'Virza', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Bumi Raya III', '0000-00-00'),
('11000151', '321001041', 'Winda', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Ampera Raya', '0000-00-00'),
('11000152', '321001042', 'Wiliam', 'Bandung', '0000-00-00', 'Pria', 2, 2, 2, 'Jl. Meganti', '0000-00-00'),
('11000153', '321001043', 'Wira', 'Maluku', '0000-00-00', 'Pria', 2, 4, 2, 'Jl. Jambangan', '0000-00-00'),
('11000154', '321001044', 'Nanda', 'Bantul', '0000-00-00', 'Pria', 2, 8, 1, 'Jl. Gajah Mada', '0000-00-00'),
('11000155', '321001045', 'Indah', 'Jakarta', '0000-00-00', 'Wanita', 2, 1, 1, 'Jl. Arjuna', '0000-00-00'),
('11000156', '321001046', 'Farid', 'Banten', '0000-00-00', 'Pria', 2, 6, 2, 'Jl. AdityaWarman', '0000-00-00'),
('11000157', '321001047', 'Gabriel', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 1, 'Jl. Madrasah II', '0000-00-00'),
('11000158', '321001048', 'Cakra', 'Bantul', '0000-00-00', 'Pria', 2, 8, 3, 'Jl. Hayam Wuruk', '0000-00-00'),
('11000159', '321001049', 'karina', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 2, 'Jl. Ciputat Raya', '0000-00-00'),
('11000160', '321001050', 'Latif', 'Bandung', '0000-00-00', 'Pria', 2, 2, 1, 'Jl. Banyu Urip', '0000-00-00'),
('11000161', '321001051', 'Samuel', 'NTB', '0000-00-00', 'Pria', 2, 7, 4, 'Jl. Darmo Kali', '0000-00-00'),
('11000162', '321001052', 'Salsa', 'Solo', '0000-00-00', 'Pria', 1, 3, 2, 'Jl. Sumur Lewut', '0000-00-00'),
('11000163', '321001053', 'Nida', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 1, 'Jl. Palmerah ', '0000-00-00'),
('11000164', '321001054', 'Hilmi', 'Aceh', '0000-00-00', 'Pria', 1, 9, 1, 'Jl. Lakar Santri', '0000-00-00'),
('11000165', '321001055', 'Jonatan', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Cipinang Muara', '0000-00-00'),
('11000166', '321001056', 'Utari', 'Bandung', '0000-00-00', 'Pria', 2, 2, 1, 'Jl. KH Ahmad Dahlan', '0000-00-00'),
('11000167', '321001057', 'Vino', 'Jakarta', '0000-00-00', 'Wanita', 2, 1, 2, 'Jl. Mangga Besar', '0000-00-00'),
('11000168', '321001058', 'Cinta', 'NTB', '0000-00-00', 'Pria', 2, 7, 3, 'Jl. Laban Sari', '0000-00-00'),
('11000169', '321001059', 'Febri', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Cideng', '0000-00-00'),
('11000170', '321001060', 'Adinda', 'Jakarta', '0000-00-00', 'Wanita', 2, 1, 2, 'Jl. Ciledug Raya', '0000-00-00'),
('11000171', '321001061', 'Ela', 'Solo', '0000-00-00', 'Wanita', 1, 8, 1, 'Jl. Gubeng', '0000-00-00'),
('11000172', '321001062', 'Erlan', 'Banten', '0000-00-00', 'Pria', 1, 6, 1, 'Jl. Keputih', '0000-00-00'),
('11000173', '321001063', 'Septi', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 2, 'Jl. Fatmawati', '0000-00-00'),
('11000174', '321001064', 'Naila', 'Solo', '0000-00-00', 'Pria', 2, 8, 1, 'Jl. Zamhun', '0000-00-00'),
('11000175', '321001065', 'Pedro', 'Jakarta', '0000-00-00', 'Pria', 1, 1, 1, 'Jl. Madrasah II', '0000-00-00'),
('11000176', '321001066', 'Umi', 'Jakarta', '0000-00-00', 'Pria', 1, 1, 1, 'Jl. Bumi Raya gang.D', '0000-00-00'),
('11000177', '321001067', 'Valdo', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 1, 'Jl. Bumi Raya gang.D', '0000-00-00'),
('11000178', '321001068', 'Yosep', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Bumi Raya gang.D', '0000-00-00'),
('11000179', '321001069', 'Ulya', 'Bandung', '0000-00-00', 'Wanita', 2, 2, 1, 'Jl. Gedung Sate', '0000-00-00'),
('11000180', '321001070', 'Fikro', 'Banten', '0000-00-00', 'Pria', 2, 6, 2, 'Jl. Joyoboyo', '0000-00-00'),
('11000181', '321001071', 'Ari', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 3, 'jl. Raya Pos', '0000-00-00'),
('11000182', '321001072', 'Irna', 'Solo', '0000-00-00', 'Wanita', 1, 3, 2, 'Jl. Karah', '0000-00-00'),
('11000183', '321001073', 'Nadia', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 1, 'Jl. Madrasah II', '0000-00-00'),
('11000184', '321001074', 'Ade', 'NTB', '0000-00-00', 'Pria', 2, 7, 2, 'Jl. Kalianyar', '0000-00-00'),
('11000185', '321001075', 'Faisal', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Mangga Dua', '0000-00-00'),
('11000186', '321001076', 'Darius', 'Bandung', '0000-00-00', 'Pria', 2, 2, 1, 'Jl. Stasiun Gubeng', '0000-00-00'),
('11000187', '321001077', 'Ben', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Bumi Raya gang.D', '0000-00-00'),
('11000188', '321001078', 'Vina', 'Bandung', '0000-00-00', 'Wanita', 1, 2, 1, 'Jl. Jagalan', '0000-00-00'),
('11000189', '321001079', 'Karin', 'Bantul', '0000-00-00', 'Pria', 2, 8, 2, 'Jl. Gembong', '0000-00-00'),
('11000190', '321001080', 'Niko', 'Maluku', '0000-00-00', 'Wanita', 1, 4, 2, 'Jl. Perak Timur', '0000-00-00'),
('11000191', '321001081', 'Sinta', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Cideng', '0000-00-00'),
('11000192', '321001082', 'Yuli', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 4, 'Jl. Ciputat', '0000-00-00'),
('11000193', '321001083', 'Alya', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Bumi Raya gang.D', '0000-00-00'),
('11000194', '321001084', 'Olive', 'Jakarta', '0000-00-00', 'Pria', 1, 1, 1, 'Jl. Fatmawati', '0000-00-00'),
('11000195', '321001085', 'Bara', 'Jakarta', '0000-00-00', 'Wanita', 2, 1, 1, 'Jl. Bumi Raya gang.D', '0000-00-00'),
('11000196', '321001086', 'Fani', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Jatinegara', '0000-00-00'),
('11000197', '321001087', 'Fahmi', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 1, 'Jl. raya Kalibata', '0000-00-00'),
('11000198', '321001088', 'Riziq', 'Banten', '0000-00-00', 'Wanita', 2, 6, 2, 'Jl. Demak', '0000-00-00'),
('11000199', '321001089', 'Ezra', 'Aceh', '0000-00-00', 'Pria', 2, 1, 1, 'Jl. Dupak', '0000-00-00'),
('11000200', '321001090', 'Dinny', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Abidin', '0000-00-00'),
('11000201', '321001091', 'Bagas', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Pacuan Kuda', '0000-00-00'),
('11000202', '321001092', 'Mariyatul', 'Jakarta', '0000-00-00', 'Wanita', 2, 1, 2, 'Jl. Veteran', '0000-00-00'),
('11000203', '321001093', 'Roid', 'Banten', '0000-00-00', 'Wanita', 2, 6, 1, 'Jl. Lontar', '0000-00-00'),
('11000204', '321001094', 'Caca', 'Jakarta', '0000-00-00', 'Pria', 1, 1, 1, 'Jl. Jaksa', '0000-00-00'),
('11000205', '321001095', 'Dwita', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 1, 'Jl. Tambang', '0000-00-00'),
('11000206', '321001096', 'Adiba', 'Solo', '0000-00-00', 'Wanita', 1, 3, 2, 'Jl. Casablanca', '0000-00-00'),
('11000207', '321001097', 'Yuga', 'Jakarta', '0000-00-00', 'Wanita', 2, 1, 1, 'Jl. Majapahit', '0000-00-00'),
('11000208', '321001098', 'Fadiyah', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Abidin', '0000-00-00'),
('11000209', '321001099', 'Aldi', 'Bantul', '0000-00-00', 'Wanita', 2, 8, 1, 'Jl. Benowo', '0000-00-00'),
('11000210', '321001100', 'Gipari', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 1, 'Jl. Senopati', '0000-00-00'),
('11000211', '321001101', 'Syaharani Testing ya', 'Bantul', '0000-00-00', 'Wanita', 1, 8, 1, 'jl. Sindet', '0000-00-00'),
('11000212', '321001102', 'Fauzan', 'Aceh', '0000-00-00', 'Wanita', 2, 9, 1, 'Jl. Demak', '0000-00-00'),
('11000213', '321001103', 'Felicia', 'Bandung', '0000-00-00', 'Wanita', 1, 2, 2, 'Jl. Kalianyar', '0000-00-00'),
('11000214', '321001104', 'Widya ', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 1, 'Jl. Bintaro Permai', '0000-00-00'),
('11000215', '321001105', 'Dandi', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 4, 'Jl. Swadaya Raya', '0000-00-00'),
('11000216', '321001106', 'Indra', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 2, 'Jl. Palmerah Timur', '0000-00-00'),
('11000217', '321001107', 'Novi', 'Bantul', '0000-00-00', 'Pria', 1, 8, 1, 'Jl. Kalimas Baru', '0000-00-00'),
('11000218', '321001108', 'Dani', 'Solo', '0000-00-00', 'Wanita', 2, 3, 1, 'Jl. Stasiun Kota', '0000-00-00'),
('11000219', '321001109', 'Dea', 'Jakarta', '0000-00-00', 'Pria', 1, 1, 2, 'Jl. Pangeran Jayakarta', '0000-00-00'),
('11000220', '321001110', 'Ryfan', 'Jakarta', '0000-00-00', 'Wanita', 2, 1, 1, 'Jl. Bumi Raya gang.D', '0000-00-00'),
('11000221', '321001111', 'Jessica', 'Banten', '0000-00-00', 'Pria', 1, 6, 1, 'Jl. Rajawali', '0000-00-00'),
('11000222', '321001112', 'Azzam', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 2, 'Jl. Bumi Raya gang.D', '0000-00-00'),
('11000223', '321001113', 'Amel', 'Jakarta', '0000-00-00', 'Wanita', 2, 1, 2, 'Jl. Bumi Raya gang.D', '0000-00-00'),
('11000224', '321001114', 'Candra', 'Maluku', '0000-00-00', 'Wanita', 2, 4, 4, 'Jl. Balongsari', '0000-00-00'),
('11000225', '321001115', 'Anggi', 'Jakarta', '0000-00-00', 'Pria', 1, 2, 1, 'Jl. Patimura', '0000-00-00'),
('11000226', '321001116', 'Galih', 'Bandung', '0000-00-00', 'Pria', 2, 2, 3, 'Jl. Tandes', '0000-00-00'),
('11000227', '321001117', 'Fika', 'Aceh', '0000-00-00', 'Pria', 2, 9, 1, 'Jl. Tengger', '0000-00-00'),
('11000228', '321001118', 'Citra', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 3, 'Jl. Garuda', '0000-00-00'),
('11000229', '321001119', 'Gibran', 'Jakarta', '0000-00-00', 'Pria', 1, 1, 1, 'Jl. Imam Bonjol', '0000-00-00'),
('11000230', '321001120', 'Hamidah', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 1, 'Jl. Bumi Raya gang.D', '0000-00-00'),
('11000231', '321001121', 'Dimas', 'Solo', '0000-00-00', 'Wanita', 2, 3, 2, 'Jl. Biliton', '0000-00-00'),
('11000232', '321001122', 'Agus', 'Jakarta', '0000-00-00', 'Wanita', 2, 1, 1, 'Jl. Madrasah II', '0000-00-00'),
('11000233', '321001123', 'Ayu', 'Jakarta', '0000-00-00', 'Pria', 1, 1, 1, 'Jl. Bumi Raya gang.D', '0000-00-00'),
('11000234', '321001124', 'Bastian', 'Jakarta', '0000-00-00', 'Pria', 1, 1, 1, 'Jl. Industri', '0000-00-00'),
('11000235', '321001125', 'Guntur', 'Bantul', '0000-00-00', 'Pria', 2, 8, 2, 'Jl. Sumberan', '0000-00-00'),
('11000236', '321001126', 'Hilda', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 4, 'Jl. Tanjung Duren Raya', '0000-00-00'),
('11000237', '321001127', 'Ikbal', 'NTB', '0000-00-00', 'Pria', 2, 7, 3, 'Jl. Nasional', '0000-00-00'),
('11000238', '321001128', 'Rara', 'Jakarta', '0000-00-00', 'Pria', 1, 1, 2, 'Jl. Raya Kalibata', '0000-00-00'),
('11000239', '321001129', 'Wisnu', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 1, 'Jl. Tomang Raya', '0000-00-00'),
('11000240', '321001130', 'Eka', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Jaksa', '0000-00-00'),
('11000241', '321001131', 'Josua', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Senopati', '0000-00-00'),
('11000242', '321001132', 'Larissa', 'Aceh', '0000-00-00', 'Pria', 2, 9, 1, 'Jl. Kerta Jaya', '0000-00-00'),
('11000243', '321001133', 'Malik', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 4, 'Jl. Bumi Raya gang.D', '0000-00-00'),
('11000244', '321001134', 'Luna', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Matraman Raya', '0000-00-00'),
('11000245', '321001135', 'Omar', 'Solo', '0000-00-00', 'Wanita', 1, 3, 3, 'Jl. Diponegoro', '0000-00-00'),
('11000246', '321001136', 'Budi', 'Jakarta', '0000-00-00', 'Wanita', 2, 1, 2, 'Jl. Jaksa', '0000-00-00'),
('11000247', '321001137', 'Wida', 'Banten', '0000-00-00', 'Pria', 1, 6, 2, 'Jl. Pahlawan', '0000-00-00'),
('11000248', '321001138', 'Bayu', 'Bandung', '0000-00-00', 'Pria', 2, 2, 1, 'Jl. Kalibutuh', '0000-00-00'),
('11000249', '321001139', 'Adit', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Mampang Raya', '0000-00-00'),
('11000250', '321001140', 'Lusi', 'Jakarta', '0000-00-00', 'Pria', 1, 1, 1, 'Jl. Kayu Jati', '0000-00-00'),
('11000251', '321001141', 'Dinda', 'Bantul', '0000-00-00', 'Wanita', 2, 8, 2, 'Jl. Pemuda', '0000-00-00'),
('11000252', '321001142', 'Erwin', 'Jakarta', '0000-00-00', 'Pria', 1, 1, 2, 'Jl. Bumi Raya gang.D', '0000-00-00'),
('11000253', '321001143', 'Gading', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Bumi Raya gang.D', '0000-00-00'),
('11000254', '321001144', 'Geri', 'Jakarta', '0000-00-00', 'Wanita', 2, 1, 1, 'Jl. Bumi Raya gang.D', '0000-00-00'),
('11000255', '321001145', 'Ita', 'Jakarta', '0000-00-00', 'Wanita', 2, 1, 1, 'Jl. Bumi Raya gang.D', '0000-00-00'),
('11000256', '321001146', 'Jefri', 'Bantul', '0000-00-00', 'Pria', 1, 8, 2, 'Jl. Jepara', '0000-00-00'),
('11000257', '321001147', 'Ilham', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 4, 'Jl. Raya Bogor', '0000-00-00'),
('11000258', '321001148', 'Putra', 'NTB', '0000-00-00', 'Pria', 1, 7, 1, 'Jl. Kapasari', '0000-00-00'),
('11000259', '321001149', 'Queen', 'Jakarta', '0000-00-00', 'Wanita', 2, 1, 1, 'Jl. Gotong Royong', '0000-00-00'),
('11000260', '321001150', 'Rian', 'Aceh', '0000-00-00', 'Pria', 2, 9, 1, 'Jl. Dukuh', '0000-00-00'),
('11000261', '321001151', 'Syahrul', 'Bandung', '0000-00-00', 'Pria', 1, 2, 2, 'Jl. Dupak', '0000-00-00'),
('11000262', '321001152', 'Deo', 'Jakarta', '0000-00-00', 'Wanita', 2, 1, 1, 'Jl. Cipinang Muara', '0000-00-00'),
('11000263', '321001153', 'Ivan', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Fatmawati', '0000-00-00'),
('11000264', '321001154', 'Rafi', 'Solo', '0000-00-00', 'Wanita', 2, 8, 1, 'Jl. Wonorejo', '0000-00-00'),
('11000265', '321001155', 'Wulan', 'Maluku', '0000-00-00', 'Pria', 2, 4, 4, 'Jl. Bulak Raya', '0000-00-00'),
('11000266', '321001156', 'Yuda', 'Bantul', '0000-00-00', 'Wanita', 1, 8, 1, 'Jl. Bratang Gede', '0000-00-00'),
('11000267', '321001157', 'Olivia', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 3, 'Jl. Cilandak', '0000-00-00'),
('11000268', '321001158', 'Paul', 'Jakarta', '0000-00-00', 'Wanita', 2, 1, 1, 'Jl. Hayam Wuruk', '0000-00-00'),
('11000269', '321001159', 'Nisa', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Arjuna', '0000-00-00'),
('11000270', '321001160', 'Ririn', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Daan Mogot', '0000-00-00'),
('11000271', '321001161', 'Ulfa', 'Solo', '0000-00-00', 'Wanita', 2, 3, 3, 'Jl. Tambang Sari', '0000-00-00'),
('11000272', '321001162', 'Toni', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 4, 'Jl. Cilandak', '0000-00-00'),
('11000273', '321001163', 'Rafa', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Cipinang Muara', '0000-00-00'),
('11000274', '321001164', 'Haikal', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Meruya', '0000-00-00'),
('11000275', '321001165', 'Faisal', 'Banten', '0000-00-00', 'Pria', 2, 6, 3, 'Jl. Prapen', '0000-00-00'),
('11000276', '321001166', 'Arya', 'Aceh', '0000-00-00', 'Wanita', 1, 9, 1, 'Jl. Wonoayu', '0000-00-00'),
('11000277', '321001167', 'Rayan', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 2, 'JL. Bekasi Raya', '0000-00-00'),
('11000278', '321001168', 'Rahma', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 4, 'Jl. raya Condet', '0000-00-00'),
('11000279', '321001169', 'Rani', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Gajah Mada', '0000-00-00'),
('11000280', '321001170', 'Ali', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 1, 'Jl. Cipinang Muara', '0000-00-00'),
('11000281', '321001171', 'Rahman', 'Jakarta', '0000-00-00', 'Pria', 1, 1, 2, 'Jl. Bunga Raya', '0000-00-00'),
('11000282', '321001172', 'Dewi', 'Bandung', '0000-00-00', 'Wanita', 2, 2, 1, 'Jl. Cipinang Besar Selatan', '0000-00-00'),
('11000283', '321001173', 'Hadi', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Kampung Jembatan', '0000-00-00'),
('11000284', '321001174', 'Adi', 'Maluku', '0000-00-00', 'Pria', 2, 4, 2, 'Jl. Kebon Agung', '0000-00-00'),
('11000285', '321001175', 'Aida', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 1, 'Jl. Senopati', '0000-00-00'),
('11000286', '321001176', 'Alexandra', 'Jakarta', '0000-00-00', 'Pria', 1, 1, 4, 'Jl. Iskandar Raya', '0000-00-00'),
('11000287', '321001177', 'Amalia', 'Banten', '0000-00-00', 'Pria', 2, 6, 3, 'Jl. Simpangan Dukuh', '0000-00-00'),
('11000288', '321001178', 'Amy', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Sultan Agung', '0000-00-00'),
('11000289', '321001179', 'Andreas', 'Aceh', '0000-00-00', 'Wanita', 1, 9, 1, 'Jl. H. Ali', '0000-00-00'),
('11000290', '321001180', 'Angel', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 2, 'Jl. Kapuk Kayu', '0000-00-00'),
('11000291', '321001181', 'Anita', 'Solo', '0000-00-00', 'Wanita', 1, 3, 1, 'Jl. Kalimas', '0000-00-00'),
('11000292', '321001182', 'Bambang', 'Jakarta', '0000-00-00', 'Wanita', 2, 1, 1, 'Jl. Kebon Sirih', '0000-00-00'),
('11000293', '321001183', 'Adiba', 'Jakarta', '0000-00-00', 'Wanita', 2, 1, 1, 'Jl. Bumi Raya gang.D', '0000-00-00'),
('11000294', '321001184', 'Budi', 'Jakarta', '0000-00-00', 'Wanita', 2, 1, 1, 'Jl. Jatinegara', '0000-00-00'),
('11000295', '321001185', 'Diah', 'Banten', '0000-00-00', 'Pria', 1, 6, 1, 'Jl. Balongsari', '0000-00-00'),
('11000296', '321001186', 'Afyra', 'Solo', '0000-00-00', 'Wanita', 1, 3, 2, 'Jl. Laban Sari', '0000-00-00'),
('11000297', '321001187', 'Lintang', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 1, 'Jl. Raya Kalibata', '0000-00-00'),
('11000298', '321001188', 'Elvin', 'Jakarta', '0000-00-00', 'Pria', 1, 1, 1, 'Jl. Menteng Raya', '0000-00-00'),
('11000299', '321001189', 'Faiz', 'Jakarta', '0000-00-00', 'Pria', 1, 1, 3, 'Jl. Angkasa', '0000-00-00'),
('11000300', '321001190', 'Alfiani', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Semper Barat', '0000-00-00'),
('11000301', '321001191', 'Naini', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 1, 'Jl. Cililitan Besar', '0000-00-00'),
('11000302', '321001192', 'Gita', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Tambak', '0000-00-00'),
('11000303', '321001193', 'Alifa', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 1, 'Jl. Kampung Sumur', '0000-00-00'),
('11000304', '321001194', 'Haris', 'Jakarta', '0000-00-00', 'Wanita', 1, 1, 1, 'Jl. Kalimalang', '0000-00-00'),
('11000305', '321001195', 'Gunawan', 'Bandung', '0000-00-00', 'Wanita', 1, 2, 1, 'Jl. Mulyorejo', '0000-00-00'),
('11000306', '321001196', 'Nila', 'Jakarta', '0000-00-00', 'Wanita', 2, 1, 1, 'Jl. Bumi Raya gang.D', '0000-00-00'),
('11000307', '321001197', 'Nova', 'Jakarta', '0000-00-00', 'Pria', 1, 1, 1, 'Jl. Bumi Raya gang.D', '0000-00-00'),
('11000308', '321001198', 'Syifa', 'Bantul', '0000-00-00', 'Wanita', 2, 8, 1, 'Jl. Madrasah II', '0000-00-00'),
('11000309', '321001199', 'Nur', 'Jakarta', '0000-00-00', 'Pria', 2, 1, 1, 'Jl. Madrasah II', '0000-00-00'),
('123124', '12413434', 'Gipari Pradina Abdillah', 'Tasikmalaya', '2023-02-07', 'Pria', 1, 7, 2, 'Jl. Cikoko', '2023-02-01');

-- --------------------------------------------------------

--
-- Table structure for table `tab_prodi`
--

CREATE TABLE `tab_prodi` (
  `id` int(11) NOT NULL,
  `prodi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tab_prodi`
--

INSERT INTO `tab_prodi` (`id`, `prodi`) VALUES
(1, 'Sistem Informasi'),
(2, 'Teknik Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `tab_provinsi`
--

CREATE TABLE `tab_provinsi` (
  `id` int(11) NOT NULL,
  `provinsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tab_provinsi`
--

INSERT INTO `tab_provinsi` (`id`, `provinsi`) VALUES
(1, 'DKI Jakarta'),
(2, 'Bandung'),
(3, 'Semarang'),
(4, 'Maluku'),
(6, 'Banten'),
(7, 'NTB'),
(8, 'Yogyakarta'),
(9, 'Aceh');

-- --------------------------------------------------------

--
-- Table structure for table `tab_user`
--

CREATE TABLE `tab_user` (
  `id` int(11) NOT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `created_by` varchar(15) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_by` varchar(15) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tab_user`
--

INSERT INTO `tab_user` (`id`, `username`, `password`, `lastlogin`, `created_by`, `created_at`, `update_by`, `update_at`) VALUES
(3, 'gipari', 'mantap', '2023-02-03 09:02:08', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tab_agama`
--
ALTER TABLE `tab_agama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab_mahasiswa`
--
ALTER TABLE `tab_mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `tab_prodi`
--
ALTER TABLE `tab_prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab_provinsi`
--
ALTER TABLE `tab_provinsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tab_user`
--
ALTER TABLE `tab_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tab_agama`
--
ALTER TABLE `tab_agama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tab_provinsi`
--
ALTER TABLE `tab_provinsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tab_user`
--
ALTER TABLE `tab_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
