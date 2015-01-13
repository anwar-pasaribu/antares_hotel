-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 27, 2013 at 11:46 AM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE IF NOT EXISTS `about` (
  `nama_hotel` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `telepon` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fax` varchar(100) NOT NULL,
  `profil` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`nama_hotel`, `alamat`, `telepon`, `email`, `fax`, `profil`) VALUES
('Grand Antares', 'JL Sisingamangaraja No 328 20152, Indonesia', '+62 61 7883555', 'reservation@grandantares.com', '+62 61 7863666', 'Grand Antares Hotel Indonesia is ideally located in central of Medan City close to business industrial area, shopping and entertainment districts, approximately 15 minutes from Polonia International Airport.\r\n\r\nOur intention is to serve you with accommodations for everyone who is doing business in Medan (e.g. government, businesses and private guests), meaning that our target market are all persons in need of business and leisure (e.g. Meeting Rooms, Convention Halls and Banquet). The bedrooms consists of various types and we can offer you office spaces, rent car facilities as well as a fully equipped business center with very fast internet lines.');

-- --------------------------------------------------------

--
-- Table structure for table `award`
--

CREATE TABLE IF NOT EXISTS `award` (
  `id_award` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` text NOT NULL,
  `foto_award` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `award`
--

INSERT INTO `award` (`id_award`, `tanggal`, `keterangan`, `foto_award`) VALUES
(1, '2013-12-12', 'Pelayanan masakan terbaik', ''),
(2, '2010-09-13', 'Pelayanan pegawai terbaik', ''),
(3, '2011-01-19', 'pelayanan kamar terbaik', ''),
(5, '2013-12-05', 'satu hotel terlaris di sumatera utara', ''),
(4, '2013-12-20', 'pelayanan fasilitas terlengkap', ''),
(6, '2010-12-30', 'Pelayanan masakan terbaik', ''),
(7, '2011-12-29', 'Pelayanan pegawai terbaik', '');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `id_booking` int(11) NOT NULL,
  `id_cust` int(11) NOT NULL,
  `no_kamar` int(100) NOT NULL,
  `tipe_booking` enum('Normal','Discount','Other') NOT NULL,
  `arrival` date NOT NULL,
  `checkout` date NOT NULL,
  `id_staff` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id_booking`, `id_cust`, `no_kamar`, `tipe_booking`, `arrival`, `checkout`, `id_staff`) VALUES
(1012013001, 1220132201, 201, 'Normal', '2013-10-01', '2013-10-04', 4),
(1012013002, 1220132202, 303, 'Normal', '2013-10-01', '2013-10-08', 4),
(1012013003, 1220132203, 210, 'Discount', '2013-10-02', '2013-10-15', 4),
(1012013004, 1220132204, 1009, 'Normal', '2013-10-02', '2013-10-04', 27),
(1012013005, 1220132205, 503, 'Other', '2013-10-03', '2013-10-12', 28),
(1012013006, 1220132206, 605, 'Discount', '2013-10-06', '2013-10-10', 28),
(1012013007, 1220132206, 601, 'Normal', '2013-10-06', '2013-10-10', 28),
(1012013008, 1220132206, 602, 'Normal', '2013-10-06', '2013-10-10', 28),
(1012013009, 1220132207, 1105, 'Normal', '2013-10-07', '2013-10-09', 30),
(1012013010, 1220132207, 1106, 'Normal', '2013-10-07', '2013-10-09', 30),
(1012013011, 1220132208, 1103, 'Normal', '2013-10-08', '2013-10-12', 30),
(1012013012, 1220132209, 202, 'Normal', '2013-10-10', '2013-10-15', 4),
(1012013013, 1220132209, 203, 'Normal', '2013-10-10', '2013-10-15', 4),
(1012013014, 1220132209, 204, 'Normal', '2013-10-10', '2013-10-15', 4),
(1012013015, 1220132209, 205, 'Normal', '2013-10-10', '2013-10-15', 31),
(1012013016, 1220132210, 206, 'Normal', '2013-10-10', '2013-10-15', 31),
(1012013017, 1220132210, 207, 'Normal', '2013-10-10', '2013-10-15', 31),
(1012013018, 1220132211, 208, 'Normal', '2013-10-10', '2013-10-15', 31),
(1012013019, 1220132211, 209, 'Normal', '2013-10-10', '2013-10-15', 31),
(1012013020, 1220132211, 210, 'Normal', '2013-10-10', '2013-10-15', 4),
(1012013021, 1220132212, 210, 'Normal', '2013-10-10', '2013-10-15', 4),
(1012013022, 1220132212, 212, 'Normal', '2013-10-10', '2013-10-15', 4),
(1012013023, 1220132213, 309, 'Discount', '2013-10-11', '2013-10-12', 27),
(1012013024, 1220132215, 312, 'Normal', '2013-10-11', '2013-10-15', 28),
(1012013025, 1220132215, 313, 'Normal', '2013-10-11', '2013-10-15', 28),
(1012013026, 1220132216, 804, 'Other', '2013-10-12', '2013-10-14', 30),
(1012013027, 1220132216, 805, 'Other', '2013-10-12', '2013-10-14', 30),
(1012013028, 1220132216, 806, 'Other', '2013-10-12', '2013-10-14', 30),
(1012013029, 1220132216, 807, 'Other', '2013-10-12', '2013-10-14', 30),
(1012013030, 1220132217, 808, 'Other', '2013-10-12', '2013-10-14', 30),
(1012013031, 1220132217, 809, 'Other', '2013-10-12', '2013-10-14', 30),
(1012013032, 1220132217, 810, 'Other', '2013-10-12', '2013-10-14', 30),
(1012013033, 1220132218, 702, 'Normal', '2013-10-16', '2013-10-20', 28),
(1012013034, 1220132219, 801, 'Normal', '2013-10-17', '2013-10-19', 28),
(1012013035, 1220132219, 802, 'Normal', '2013-10-17', '2013-10-19', 28),
(1012013036, 1220132220, 909, 'Discount', '2013-10-20', '2013-10-30', 27),
(1012013037, 1220132221, 903, 'Normal', '2013-10-20', '2013-10-22', 27),
(1012013038, 1220132222, 403, 'Normal', '2013-10-22', '2013-10-25', 4),
(1012013039, 1220132223, 404, 'Normal', '2013-10-23', '2013-10-24', 4),
(1012013040, 1220132224, 406, 'Normal', '2013-10-25', '2013-10-29', 30),
(1012013041, 1220132225, 407, 'Normal', '2013-10-26', '2013-11-02', 28),
(1012013042, 1220132226, 408, 'Discount', '2013-10-26', '2013-11-03', 28),
(1012013043, 1220132227, 511, 'Normal', '2013-11-01', '2013-11-12', 31),
(1012013044, 1220132228, 512, 'Normal', '2013-11-02', '2013-11-03', 31),
(1012013045, 1220132229, 703, 'Normal', '2013-11-03', '2013-11-07', 4),
(1012013046, 1220132230, 705, 'Normal', '2013-11-04', '2013-11-05', 27),
(1012013047, 1220132231, 708, 'Normal', '2013-11-04', '2013-11-06', 27),
(1012013048, 1220132231, 710, 'Normal', '2013-11-07', '2013-11-11', 30),
(1012013049, 1220132232, 711, 'Normal', '2013-11-08', '2013-11-15', 31),
(1012013050, 1220132233, 1201, 'Normal', '2013-11-10', '2013-11-12', 27),
(1012013051, 1220132233, 1202, 'Normal', '2013-11-10', '2013-11-12', 28),
(1012013052, 1220132234, 1206, 'Discount', '2013-11-11', '2013-11-18', 28),
(1012013053, 1220132236, 1207, 'Normal', '2013-11-12', '2013-11-15', 30),
(1012013054, 1220132236, 1208, 'Discount', '2013-11-12', '2013-11-15', 30),
(1012013055, 1220132237, 1104, 'Normal', '2013-11-14', '2013-11-18', 27),
(1012013056, 1220132238, 1107, 'Other', '2013-11-14', '2013-11-15', 27),
(1012013057, 1220132239, 1109, 'Normal', '2013-11-16', '2013-11-21', 30),
(1012013058, 1220132240, 1001, 'Other', '2013-11-17', '2013-11-21', 31),
(1012013059, 1220132241, 1002, 'Normal', '2013-11-18', '2013-11-23', 27),
(1012013060, 1220132242, 1003, 'Other', '2013-11-20', '2013-11-30', 28),
(1012013061, 1220132242, 1004, 'Other', '2013-11-20', '2013-11-30', 28),
(1012013062, 1220132243, 1005, 'Discount', '2013-11-21', '2013-11-28', 30),
(1012013063, 1220132244, 215, 'Discount', '2013-11-22', '2013-11-27', 4),
(1012013064, 1220132245, 305, 'Discount', '2013-11-23', '2013-11-25', 4),
(1012013065, 1220132245, 309, 'Normal', '2013-11-24', '2013-11-29', 30),
(1012013066, 1220132245, 310, 'Normal', '2013-11-24', '2013-11-29', 30),
(1012013067, 1220132246, 311, 'Normal', '2013-11-26', '2013-11-29', 28),
(1012013068, 1220132247, 314, 'Other', '2013-11-27', '2013-12-02', 28),
(1012013069, 1220132247, 1002, 'Normal', '2013-11-27', '2013-12-02', 4),
(1012013070, 1220132248, 408, 'Normal', '2013-11-29', '2013-12-01', 28),
(1012013071, 1220132248, 409, 'Normal', '2013-11-29', '2013-12-01', 27),
(1012013072, 1220132248, 410, 'Normal', '2013-11-29', '2013-12-01', 4),
(1012013073, 1220132248, 411, 'Normal', '2013-11-29', '2013-12-01', 4),
(1012013074, 1220132248, 412, 'Normal', '2013-11-29', '2013-12-01', 27),
(1012013075, 1220132248, 413, 'Normal', '2013-11-29', '2013-12-01', 4),
(1012013076, 1220132249, 415, 'Discount', '2013-12-01', '2013-12-04', 4),
(1012013077, 1220132250, 507, 'Normal', '2013-12-03', '2013-12-06', 28),
(1012013076, 1220132250, 508, 'Normal', '2013-12-03', '2013-12-06', 28),
(1012013076, 1220132250, 509, 'Normal', '2013-12-03', '2013-12-06', 31);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id_cust` int(11) NOT NULL,
  `id_num` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `negara` varchar(100) NOT NULL,
  `kk_num` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_cust`, `id_num`, `nama`, `tgl_lahir`, `alamat`, `telepon`, `kota`, `negara`, `kk_num`) VALUES
(1220132201, '001', 'Baniah', '1988-12-08', 'Tebingtinggi', '06190201', 'Medan', 'Indonesia', '7889-8794-5435-4131'),
(1220132202, '002', 'Jesika', '1994-12-02', 'Medan', '08900206', 'Medan', 'Indonesia', '7889-8794-5435-5131'),
(1220132203, '003', 'Rudolph', '1985-12-05', 'Marelan', '09781234', 'Amsterdam', 'Belanda', '4112-7483-4324-4320'),
(1220132204, '004', 'Jhon', '1988-12-09', 'Nias', '0821623789', 'Nias', 'Indonesia', '3001-6372-2103-3219'),
(1220132205, '005', 'Cindai', '1988-10-10', 'Brebes', '089872538', 'Brebes', 'Indonesia', '2990-5261-1092-2108'),
(1220132206, '006', 'Beno', '1995-12-15', 'barara', '90877545', 'Meksiko', 'Amerika', '1889-4150-0981-1097'),
(1220132207, '007', 'Langkas', '1988-12-01', 'Manado', '087655421', 'Manado', 'Indonesia', '8990-9805-6546-5242'),
(1220132208, '008', 'Sebastian', '1992-12-04', 'Jongkook', '01873445', 'Incheon', 'Korea', '9009-0794-54354321'),
(1220132209, '009', 'Ayu', '1994-08-08', 'Singapore', '09875373', 'Singapore', 'Singapore', '8998-9685-4324-3219'),
(1220132210, '010', 'Anisa', '1992-08-10', 'Kunamu', '098787484', 'Kuala lumpur', 'Malaysia', '9887-8574-3213-2108'),
(1220132211, '011', 'Maya', '1995-12-08', 'Titi pojok', '08129901833', 'Jakarta', 'Indonesia', '1011-17-14-1111-2101'),
(1220132212, '012', 'Beatrix', '1989-12-08', 'Belanda', '98753410', 'Rotterdam', 'Belanda', '1010-1212-2013-2242'),
(1220132213, '013', 'Jihoo', '1995-12-12', 'Medan', '09781234', 'Medan', 'Indonesia', '1212-1110-8811-0012'),
(1220132215, '015', 'Haha', '1988-12-08', 'Tebingtinggi', '06190201', 'Medan', 'Indonesia', '1010-1144-6633-8811'),
(1220132216, '016', 'Fitri', '1994-12-02', 'Medan', '08900206', 'Medan', 'Indonesia', '2929-0033-5522-7799'),
(1220132217, '017', 'Rama', '1985-12-05', 'Marelan', '09781234', 'Belanda', 'Belanda', '1818-9922-4411-6688'),
(1220132218, '018', 'Dani', '1988-12-09', 'Nias', '0821623789', 'Nias', 'Indonesia', '8118-9922-4411-6688'),
(1220132219, '019', 'Ika', '1988-10-10', 'Brebes', '089872538', 'Brebes', 'Indonesia', '7722-1001-1331-5445'),
(1220132220, '020', 'Angel', '1995-12-15', 'barara', '90877545', 'Washington', 'Amerika', '6611-0110-9123-4519'),
(1220132221, '021', 'Sani', '1988-12-01', 'Manado', '087655421', 'Manado', 'Indonesia', '5599-9219-8011-3408'),
(1220132222, '022', 'Imah', '1992-12-04', 'Jongkook', '01873445', 'Busan', 'Korea', '4419-0111-4022-1141'),
(1220132223, '023', 'Fani', '1994-08-08', 'Singapore', '09875373', 'Singapore', 'Singapore', '3328-9222-3911-9911'),
(1220132224, '024', 'Nisa', '1992-08-10', 'Kunamu', '098787484', 'Kuala lumpur', 'Malaysia', '2219-4411-6677-1144'),
(1220132225, '025', 'Lili', '1995-12-08', 'Titi pojok', '08129901833', 'Jakarta', 'Indonesia', '8811-1199-7741-6612'),
(1220132226, '026', 'Vero', '1989-12-08', 'Belanda', '98753410', 'Einhoven', 'Belanda', '16789-1213-6611-4489'),
(1220132227, '027', 'Deno', '1995-12-12', 'Medan', '09781234', 'Medan', 'Indonesia', '4578-9112-7713-5478'),
(1220132228, '028', 'Denis', '1994-12-08', 'Medan', '08900206', 'Medan', 'Indonesia', '1101-1930-2013-2458'),
(1220132229, '029', 'Rani', '1988-12-08', 'Tebingtinggi', '06190201', 'Medan', 'Indonesia', '2011-1993-1887-0011'),
(1220132230, '030', 'Vino', '1994-12-02', 'Medan', '08900206', 'Medan', 'Indonesia', '1992-1083-1043-2014'),
(1220132231, '031', 'Diki', '1985-12-05', 'Marelan', '09781234', 'Rotterdam', 'Belanda', '9009-4003-6006-2002'),
(1220132232, '032', 'Alvi', '1988-12-09', 'Nias', '0821623789', 'Nias', 'Indonesia', '1993-1992-1991-1990'),
(1220132233, '033', 'Saip', '1988-10-10', 'Brebes', '089872538', 'Brebes', 'Indonesia', '8801-1088-0188-8108'),
(1220132234, '034', 'Jono', '1995-12-15', 'barara', '90877545', 'Meksiko', 'Amerika', '1934-3491-1493-2552'),
(1220132235, '035', 'Dono', '1988-12-01', 'Manado', '087655421', 'Manado', 'Indonesia', '1124-4112-1124-0011'),
(1220132236, '036', 'Kasino', '1992-12-04', 'Jongkook', '01873445', 'Binjai', 'Korea', '3673-8213-1145-1118'),
(1220132237, '037', 'Indro', '1994-08-08', 'Singapore', '09875373', 'Singapore', 'Singapore', '4050-6070-8090-1001'),
(1220132238, '038', 'Komeng', '1992-08-10', 'Kunamu', '098787484', 'Kuala lumpur', 'Malaysia', '1112-21101102-2001'),
(1220132239, '039', 'Sule', '1995-12-08', 'Titi pojok', '08129901833', 'Jakarta', 'Indonesia', '4001-8002-6003-7011'),
(1220132240, '040', 'Sam', '1989-12-08', 'Belanda', '98753410', 'Belanda', 'Belanda', '4039-3736-6768-9011'),
(1220132241, '041', 'Sopia', '1995-12-12', 'Medan', '09781234', 'Medan', 'Indonesia', '9040-3030-2223-3041'),
(1220132242, '042', 'Adelia', '1994-12-08', 'Medan', '08900206', 'Medan', 'Indonesia', '1234-3010-4011-4232'),
(1220132243, '043', 'Pasha', '1988-12-08', 'Tebingtinggi', '06190201', 'Medan', 'Indonesia', '1617-1920-2122-6678'),
(1220132244, '044', 'Aril', '1994-12-02', 'Medan', '08900206', 'Medan', 'Indonesia', '2330-2431-1825-9980'),
(1220132245, '045', 'Dedi', '1985-12-05', 'Marelan', '09781234', 'Belanda', 'Belanda', '2619-2027-2229-1001'),
(1220132246, '046', 'Anwar', '1988-12-09', 'Nias', '0821623789', 'Nias', 'Indonesia', '2004-2006-2007-1001'),
(1220132247, '047', 'Irzal', '1988-10-10', 'Brebes', '089872538', 'Brebes', 'Indonesia', '3033-1139-0079-0076'),
(1220132248, '048', 'Andi', '1995-12-15', 'barara', '90877545', 'Meksiko', 'Amerika', '1013-2306-9043-1222'),
(1220132249, '049', 'Rizki', '1988-12-01', 'Manado', '087655421', 'Manado', 'Indonesia', '1819-6178-4013-1761'),
(1220132250, '050', 'Sera', '1992-12-04', 'Jongkook', '01873445', 'Binjai', 'Korea', '2021-8139-9064-1761');

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE IF NOT EXISTS `kamar` (
  `no_kamar` int(50) NOT NULL,
  `tipe` enum('Superior','Deluxe','Bussiness','Executive','Suite') NOT NULL,
  `kapasitas` int(3) NOT NULL,
  `harga` int(15) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `status` enum('Booked','Available') NOT NULL,
  PRIMARY KEY (`no_kamar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`no_kamar`, `tipe`, `kapasitas`, `harga`, `deskripsi`, `status`) VALUES
(201, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(202, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(203, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(204, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(205, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(206, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(207, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(208, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(209, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(210, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(211, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(212, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(213, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(214, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(215, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(301, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(302, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(303, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(304, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(305, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(306, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(307, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(308, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(309, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(310, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(311, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(312, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(313, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(314, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(315, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(401, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(402, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(403, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(404, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(405, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(406, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(407, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(408, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(409, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(410, 'Superior', 2, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(411, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(412, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(413, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(414, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(415, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(501, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(502, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(503, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(504, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(505, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(506, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(507, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(508, 'Deluxe', 2, 800000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(509, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(510, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(511, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(512, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(513, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(514, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(515, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(601, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(602, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(603, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(604, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(605, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(606, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(607, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(608, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(609, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(610, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(611, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(612, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(613, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(614, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked'),
(615, 'Deluxe', 2, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available'),
(701, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked'),
(702, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Booked'),
(703, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Booked'),
(704, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Available'),
(705, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Booked'),
(706, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Available'),
(707, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Available'),
(708, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Booked'),
(709, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Available'),
(710, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Booked'),
(711, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Booked'),
(712, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Available'),
(801, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked'),
(802, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked'),
(803, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available'),
(804, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available'),
(805, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked'),
(806, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked'),
(807, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Booked'),
(808, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Booked'),
(809, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Booked'),
(810, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Booked'),
(811, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Available'),
(812, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked'),
(901, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available'),
(902, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available'),
(903, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Booked'),
(904, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked'),
(905, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked'),
(906, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked'),
(907, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked'),
(908, 'Bussiness', 2, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Available'),
(909, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked'),
(910, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked'),
(911, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available'),
(1001, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked'),
(1002, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked'),
(1003, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked'),
(1004, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked'),
(1005, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked'),
(1006, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available'),
(1007, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available'),
(1008, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available'),
(1009, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked'),
(1010, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available'),
(1101, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available'),
(1102, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available'),
(1103, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked'),
(1104, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked'),
(1105, 'Suite', 3, 2000000, 'a room with carpet and bench,view to the city and main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked'),
(1106, 'Suite', 3, 2000000, 'a room with carpet and bench,view to the city and main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked'),
(1107, 'Suite', 3, 2000000, 'a room with carpet and bench,view to the city and main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked'),
(1108, 'Suite', 3, 2000000, 'a room with carpet and bench,view to the city and main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available'),
(1109, 'Suite', 3, 2000000, 'a room with carpet and bench,view to the city and main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked'),
(1110, 'Suite', 3, 2000000, 'a room with carpet and bench,view to the city and main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available'),
(1201, 'Suite', 3, 2000000, 'a room with carpet and bench,view to the city and main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked'),
(1202, 'Suite', 3, 2000000, 'a room with carpet and bench,view to the city and main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked'),
(1203, 'Suite', 3, 2000000, 'a room with carpet and bench,view to the city and main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available'),
(1204, 'Suite', 3, 2000000, 'a room with carpet and bench,view to the city and main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available'),
(1205, 'Suite', 3, 2000000, 'a room with carpet and bench,view to the city and main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available'),
(1206, 'Suite', 3, 2000000, 'a room with carpet and bench,view to the city and main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked'),
(1207, 'Suite', 3, 2000000, 'a room with carpet and bench,view to the city and main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked'),
(1208, 'Suite', 3, 2000000, 'a room with carpet and bench,view to the city and main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked');

-- --------------------------------------------------------

--
-- Table structure for table `kartu_kredit`
--

CREATE TABLE IF NOT EXISTS `kartu_kredit` (
  `kk_num` varchar(50) NOT NULL,
  `expire_date` date NOT NULL,
  `nama_pemilik` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kartu_kredit`
--

INSERT INTO `kartu_kredit` (`kk_num`, `expire_date`, `nama_pemilik`) VALUES
('7889-8794-5435-4131', '2013-12-31', 'Baniah'),
('7889-8594-5435-5131', '2015-01-19', 'Jesika'),
('4112-7483-4324-4320', '2015-12-25', 'Rudolph'),
('3001-6272-2103-3219', '2015-04-15', 'Jhon'),
('2990-5261-1092-2108', '2017-12-07', 'Cindai'),
('8990-9805-6546-5242', '2015-12-04', 'Langkas'),
('1889-4150-0981-1097', '2014-12-05', 'Berto'),
('9009-0794-5435-4321', '2015-07-06', 'Sebastian'),
('8998-9685-4324-3219', '2015-06-08', 'Ayu'),
('9887-8574-3213-2108', '2017-12-01', 'Anisa'),
('1010-1212-2013-2242', '2014-12-26', 'Beatrix'),
('1011-1714-1111-2101', '2013-12-27', 'Maya'),
('7889-8794-5435-4131', '2013-12-31', 'Baniah'),
('7889-8594-5435-5131', '2015-01-19', 'Jesika'),
('4112-7483-4324-4320', '2015-12-25', 'Rudolf'),
('3001-6272-2103-3219', '2015-04-15', 'Jhon'),
('2990-5261-1092-2108', '2017-12-07', 'Cindai'),
('8990-9805-6546-5242', '2015-12-04', 'Langkas'),
('1889-4150-0981-1097', '2014-12-05', 'Berto'),
('9009-0794-5435-4321', '2015-07-06', 'Sebastian'),
('8998-9685-4324-3219', '2015-06-08', 'Ayu'),
('9887-8574-3213-2108', '2017-12-01', 'Anisa'),
('1010-1212-2013-2242', '2014-12-26', 'Betrix'),
('1011-1714-1111-2101', '2013-12-27', 'Maya'),
('1212-1110-8811-0012', '2030-12-20', 'Jihoo'),
('1919-9999-7722-9921', '2014-12-31', 'Joongkok'),
('1818-9922-4411-6688', '2015-03-18', 'Rama'),
('8118-9922-4411-6688', '2019-01-15', 'Dani'),
('7722-1001-1331-5445', '2023-12-19', 'Ika'),
('6611-0110-9123-4519', '2015-03-17', 'Angel'),
('2929-0033-5522-7799', '2028-12-20', 'Fitri'),
('1010-1144-6633-8811', '2015-03-18', 'Haha'),
('5599-9219-8011-3408', '2022-02-07', 'Sani'),
('4419-0111-4022-1141', '2022-05-24', 'Imah'),
('3328-9222-3911-9911', '2016-12-22', 'Fani'),
('2219-4411-6677-1144', '2023-12-27', 'Nisa'),
('8811-1199-7741-6612', '2015-12-31', 'Lili'),
('4578-9112-7713-5478', '2018-12-26', 'Deno'),
('1101-1930-2013-2458', '2014-12-31', 'Denis'),
('6789-1213-6611-4489', '2016-12-20', 'Vero'),
('2011-1993-1887-0011', '2015-12-31', 'Rani'),
('1992-1083-1043-2014', '2015-12-24', 'Vino'),
('9009-4003-6006-2002', '2013-12-31', 'Diki'),
('1993-1992-1991-1990', '2014-12-10', 'Alvi'),
('8801-1088-0188-8108', '2015-12-09', 'Saip'),
('1934-3491-1493-2552', '2015-12-15', 'Jono'),
('1124-4112-1124-0011', '2020-12-23', 'Dono'),
('4050-6070-8090-1001', '2014-12-25', 'Indro'),
('1112-21101102-2001', '2014-12-25', 'Komeng'),
('3673-8213-1145-1118', '2017-12-20', 'Kasino'),
('4001-8002-6003-7011', '2015-12-24', 'Sule'),
('4039-3736-6768-9011', '2018-12-27', 'Sam'),
('9040-3030-2223-3041', '2014-12-18', 'Sopia'),
('1243-3010-4011-4231', '2015-12-16', 'Adelia'),
('1617-1920-2122-6676', '2015-12-24', 'Pasha'),
('2330-2431-1825-9980', '2015-03-10', 'Aril'),
('2619-2027-2229-1001', '2018-03-06', 'Dedi'),
('2004-2006-2007-1001', '2014-12-10', 'Awar'),
('3033-1139-0079-0076', '2013-12-06', 'Irzal'),
('1819-6178-4013-1716', '2013-12-12', 'Rizki'),
('2021-8139-9064-1761', '2013-12-27', 'Sera'),
('1813-2306-9043-1222', '2013-12-06', 'Andi');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `id_staff` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jabatan` varchar(200) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  PRIMARY KEY (`id_staff`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id_staff`, `nama`, `jabatan`, `telepon`, `email`, `foto`) VALUES
(1, 'donald', 'Coorporate Owner', '081264667710', 'donald@gmail.com', ''),
(2, 'michael', 'General Manager (GM)', '081264667711', 'michael@gmail.com', ''),
(3, 'giddens', 'Executive Asisten Manager (Executive GM)', '081264667712', 'giddens@gmail.com', ''),
(4, 'anthony', 'Room Division ', '081264667713', 'anthony@gmail.com', ''),
(5, 'haviland', 'Housekeeping manager ', '081264667714', 'haviland@gmail.com', ''),
(6, 'ihromi', 'Floor Section ', '081264667715', 'ihromi@gmail.com', ''),
(7, 'horton', 'Public Area ', '081264667716', 'horton@gmail.com', ''),
(8, 'henslin', 'Linen section ', '081264667717', 'henslin@gmail.com', ''),
(9, 'paul', 'Front office manager ', '081264667718', 'paul@gmail.com', ''),
(10, 'safitri', 'Recepsionist', '081264667719', 'safitri@gmail.com', ''),
(11, 'kumanto', 'Reservation', '081264667720', 'kumanto@gmail.com', ''),
(12, 'johnson', 'Information', '081264667721', 'johnson@gmail.com', ''),
(13, 'nasikun', 'Cashier ', '081264667722', 'nasikun@gmail.com', ''),
(14, 'nazir', 'F&B Manager ', '081264667723', 'nazir@gmail.com', ''),
(15, 'rostow', 'Food Production ', '081264667724', 'rostow@gmail.com', ''),
(16, 'henslino', 'F & B service ', '081264667725', 'henslino@gmail.com', ''),
(17, 'james', 'Pelayan / staff BAR ', '081264667727', 'james@gmail.com', ''),
(18, 'sorokin', 'Pelayan /Staff Restaurant ', '081264667728', 'sorokin@gmail.com', ''),
(19, 'william', 'Pelayan / Staff Room Service ', '081264667729', 'william@gmail.com', ''),
(20, 'kiamanto', 'Staff Banquet ', '081264667729', 'kiamanto@gmail.com', ''),
(21, 'phil', 'Executive Chief ', '081264667730', 'phil@gmail.com', ''),
(22, 'richard', ' ASS. Executive Chief ', '081264667732', 'richard@gmail.com', ''),
(23, 'yusun', 'Supervisor', '081264667733', 'yusun@gmail.com', ''),
(24, 'taneko', ' Staff', '081264667736', 'taneko@gmail.com', ''),
(25, 'astrid', 'Human Resources Departemen ', '081264667738', 'astrid@gmail.com', ''),
(26, 'soerjono', 'Sales dan Marketing Manager ', '081264667740', 'soerjono@gmail.com', ''),
(27, 'james', 'Room Division', '081264667710', 'james@gmail.com', ''),
(28, 'sarah', 'Room Division', '081264667711', 'sarah@gmail.com', ''),
(29, 'ladi', 'Pelayan / Staff Room Service ', '081264667712', 'ladi@gmail.com', ''),
(30, 'thony', 'Room Division ', '081264667713', 'thony@gmail.com', ''),
(31, 'iland', 'Room Division', '081264667714', 'iland@gmail.com', ''),
(32, 'ihrom', 'Floor Section ', '081264667715', 'ihrom@gmail.com', ''),
(33, 'hoon', 'Public Area ', '081264667716', 'hoton@gmail.com', ''),
(34, 'lin', 'Linen section ', '081264667717', 'lin@gmail.com', ''),
(35, 'piil', 'Front office manager ', '081264667718', 'piil@gmail.com', ''),
(36, 'fitri', 'Recepsionist', '081264667719', 'fitri@gmail.com', ''),
(37, 'anto', 'Reservation', '081264667720', 'anto@gmail.com', ''),
(38, 'john', 'Information', '081264667721', 'john@gmail.com', ''),
(39, 'ikun', 'Cashier ', '081264667722', 'ikun@gmail.com', ''),
(40, 'nair', 'F&B Manager ', '081264667723', 'nair@gmail.com', ''),
(41, 'stow', 'Food Production ', '081264667724', 'stow@gmail.com', ''),
(42, 'hens', 'F & B service ', '081264667725', 'hens@gmail.com', ''),
(43, 'ade', 'Pelayan / staff BAR ', '081264667727', 'ade@gmail.com', ''),
(44, 'diki', 'Pelayan /Staff Restaurant ', '081264667728', 'diki@gmail.com', ''),
(45, 'parker', 'Pelayan / Staff Room Service ', '081264667729', 'parker@gmail.com', ''),
(46, 'bebi', 'Staff Banquet ', '081264667729', 'bebi@gmail.com', ''),
(47, 'dam', 'Room Division', '081264667730', 'dam@gmail.com', ''),
(48, 'ella', 'Pelayan / Staff Room Service ', '081264667732', 'ella@gmail.com', ''),
(49, 'anti', 'Supervisor', '081264667733', 'anti@gmail.com', ''),
(50, 'tono', ' Staff', '081264667736', 'tono@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `string_en`
--

CREATE TABLE IF NOT EXISTS `string_en` (
  `id_string` int(11) NOT NULL,
  `kunci_string` varchar(100) NOT NULL,
  `nilai_string` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `string_id`
--

CREATE TABLE IF NOT EXISTS `string_id` (
  `id_string` int(11) NOT NULL,
  `kunci_string` varchar(100) NOT NULL,
  `nilai_string` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
