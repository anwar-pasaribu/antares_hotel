-- phpMyAdmin SQL Dump
-- version 4.1.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 02, 2014 at 01:50 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `grand-antares`
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
  `foto_award` varchar(200) NOT NULL,
  PRIMARY KEY (`id_award`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `award`
--

INSERT INTO `award` (`id_award`, `tanggal`, `keterangan`, `foto_award`) VALUES
(1, '2013-12-12', 'Pelayanan masakan terbaik', 'img/award-img/2.jpg'),
(2, '2010-09-13', 'Pelayanan pegawai terbaik', 'img/award-img/1.jpg'),
(3, '2011-01-19', 'pelayanan kamar terbaik', 'img/award-img/1.jpg'),
(5, '2013-12-05', 'satu hotel terlaris di sumatera utara', 'img/award-img/3.jpg'),
(4, '2013-12-20', 'pelayanan fasilitas terlengkap', 'img/award-img/1.jpg'),
(6, '2010-12-30', 'Pelayanan masakan terbaik', 'img/award-img/2.jpg'),
(7, '2011-12-29', 'Pelayanan pegawai terbaik', 'img/award-img/3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `table_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_booking` int(11) NOT NULL,
  `id_cust` int(11) NOT NULL,
  `no_kamar` int(100) NOT NULL,
  `tipe_booking` enum('Normal','Discount','Other') NOT NULL DEFAULT 'Normal',
  `arrival` date NOT NULL,
  `checkout` date NOT NULL,
  `id_staff` int(11) NOT NULL,
  `booking_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `confirmation` tinyint(1) NOT NULL DEFAULT '0',
  `checkin_time` datetime NOT NULL,
  `charge_fee` int(11) NOT NULL,
  `harga_multi_hari` int(11) NOT NULL,
  `harga_diskon` int(11) NOT NULL,
  `total_hari` int(11) NOT NULL,
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=155 ;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`table_id`, `id_booking`, `id_cust`, `no_kamar`, `tipe_booking`, `arrival`, `checkout`, `id_staff`, `booking_time`, `confirmation`, `checkin_time`, `charge_fee`, `harga_multi_hari`, `harga_diskon`, `total_hari`) VALUES
(107, 12014119, 12014110, 701, 'Normal', '2014-01-11', '2014-01-12', 0, '2014-01-10 18:49:41', 1, '0000-00-00 00:00:00', 0, 1700000, 0, 1),
(108, 12014119, 12014110, 411, 'Normal', '2014-01-11', '2014-01-12', 0, '2014-01-10 18:49:41', 1, '0000-00-00 00:00:00', 0, 1700000, 0, 1),
(109, 120141196, 120141150, 411, 'Discount', '2014-01-12', '2014-01-20', 0, '2014-01-10 18:52:24', 1, '0000-00-00 00:00:00', 0, 25600000, 20480000, 8),
(110, 120141196, 120141150, 412, 'Discount', '2014-01-12', '2014-01-20', 0, '2014-01-10 18:52:24', 1, '0000-00-00 00:00:00', 0, 25600000, 20480000, 8),
(111, 120141196, 120141150, 413, 'Discount', '2014-01-12', '2014-01-20', 0, '2014-01-10 18:52:24', 1, '0000-00-00 00:00:00', 0, 25600000, 20480000, 8),
(112, 120141196, 120141150, 414, 'Discount', '2014-01-12', '2014-01-20', 0, '2014-01-10 18:52:24', 1, '0000-00-00 00:00:00', 0, 25600000, 20480000, 8),
(113, 120141159, 120141142, 701, 'Normal', '2014-01-15', '2014-01-17', 0, '2014-01-10 19:04:17', 1, '2014-01-12 09:30:00', 0, 1800000, 0, 2),
(114, 120141138, 120141143, 701, 'Discount', '2014-01-15', '2014-01-20', 0, '2014-01-11 00:43:35', 0, '2014-01-11 10:11:35', 0, 27250000, 21800000, 5),
(115, 120141138, 120141143, 411, 'Discount', '2014-01-15', '2014-01-20', 0, '2014-01-11 00:43:35', 0, '2014-01-11 10:11:35', 0, 27250000, 21800000, 5),
(116, 120141138, 120141143, 909, 'Discount', '2014-01-15', '2014-01-20', 0, '2014-01-11 00:43:35', 0, '2014-01-11 10:11:35', 0, 27250000, 21800000, 5),
(117, 120141138, 120141143, 1105, 'Discount', '2014-01-15', '2014-01-20', 0, '2014-01-11 00:43:35', 0, '2014-01-11 10:11:35', 0, 27250000, 21800000, 5),
(118, 120141138, 120141143, 201, 'Discount', '2014-01-15', '2014-01-20', 0, '2014-01-11 00:43:35', 0, '2014-01-11 10:11:35', 0, 27250000, 21800000, 5),
(119, 120141139, 120141192, 1105, 'Normal', '2014-01-15', '2014-01-18', 0, '2014-01-11 01:09:28', 0, '2014-01-11 10:19:06', 0, 18000000, 0, 3),
(120, 120141139, 120141192, 1106, 'Normal', '2014-01-15', '2014-01-18', 0, '2014-01-11 01:09:28', 0, '2014-01-11 10:19:06', 0, 18000000, 0, 3),
(121, 120141139, 120141192, 1107, 'Normal', '2014-01-15', '2014-01-18', 0, '2014-01-11 01:09:28', 0, '2014-01-11 10:19:06', 0, 18000000, 0, 3),
(122, 120141188, 12014111, 411, 'Discount', '2014-01-12', '2014-01-15', 0, '2014-01-11 03:47:25', 0, '2014-01-15 17:16:08', 0, 7050000, 5640000, 3),
(123, 120141188, 12014111, 412, 'Discount', '2014-01-12', '2014-01-15', 0, '2014-01-11 03:47:25', 0, '2014-01-15 17:16:08', 0, 7050000, 5640000, 3),
(124, 120141188, 12014111, 201, 'Discount', '2014-01-12', '2014-01-15', 0, '2014-01-11 03:47:25', 0, '2014-01-15 17:16:08', 0, 7050000, 5640000, 3),
(125, 12014147, 120141487, 701, 'Normal', '2014-01-22', '2014-01-30', 0, '2014-01-14 06:48:42', 0, '2014-04-21 18:14:36', 0, 28800000, 0, 8),
(126, 12014147, 120141487, 702, 'Normal', '2014-01-22', '2014-01-30', 0, '2014-01-14 06:48:42', 0, '2014-04-21 18:14:36', 0, 28800000, 0, 8),
(127, 12014147, 120141487, 703, 'Normal', '2014-01-22', '2014-01-30', 0, '2014-01-14 06:48:42', 0, '2014-04-21 18:14:36', 0, 28800000, 0, 8),
(128, 12014147, 120141487, 704, 'Normal', '2014-01-22', '2014-01-30', 0, '2014-01-14 06:48:42', 0, '2014-04-21 18:14:36', 0, 28800000, 0, 8),
(129, 220140733, 220140784, 701, 'Discount', '2014-02-20', '2014-02-25', 0, '2014-02-07 10:55:36', 0, '2014-04-21 18:13:21', 0, 38500000, 19250000, 5),
(130, 220140733, 220140784, 411, 'Discount', '2014-02-20', '2014-02-25', 0, '2014-02-07 10:55:36', 0, '2014-04-21 18:13:21', 0, 38500000, 19250000, 5),
(131, 220140733, 220140784, 909, 'Discount', '2014-02-20', '2014-02-25', 0, '2014-02-07 10:55:36', 0, '2014-04-21 18:13:21', 0, 38500000, 19250000, 5),
(132, 220140733, 220140784, 1105, 'Discount', '2014-02-20', '2014-02-25', 0, '2014-02-07 10:55:36', 0, '2014-04-21 18:13:21', 0, 38500000, 19250000, 5),
(133, 22014077, 22014079, 1105, 'Discount', '2014-02-20', '2014-02-25', 0, '2014-02-07 10:58:28', 0, '2014-04-21 18:13:18', 0, 10000000, 8000000, 5),
(134, 320140752, 320140791, 411, 'Normal', '2014-03-25', '2014-03-31', 0, '2014-03-07 13:56:36', 0, '2014-04-21 18:13:17', 0, 19200000, 0, 6),
(135, 320140752, 320140791, 412, 'Normal', '2014-03-25', '2014-03-31', 0, '2014-03-07 13:56:36', 0, '2014-04-21 18:13:17', 0, 19200000, 0, 6),
(136, 320140752, 320140791, 413, 'Normal', '2014-03-25', '2014-03-31', 0, '2014-03-07 13:56:36', 0, '2014-04-21 18:13:17', 0, 19200000, 0, 6),
(137, 320140752, 320140791, 414, 'Normal', '2014-03-25', '2014-03-31', 0, '2014-03-07 13:56:36', 0, '2014-04-21 18:13:17', 0, 19200000, 0, 6),
(138, 620140557, 62014056, 1105, 'Normal', '2014-06-16', '2014-06-19', 0, '2014-06-05 04:46:04', 0, '0000-00-00 00:00:00', 0, 6000000, 0, 3),
(139, 820140198, 820140175, 701, 'Discount', '2014-08-01', '2014-08-12', 0, '2014-08-01 12:42:22', 0, '0000-00-00 00:00:00', 0, 151800000, 75900000, 11),
(140, 820140198, 820140175, 702, 'Discount', '2014-08-01', '2014-08-12', 0, '2014-08-01 12:42:22', 0, '0000-00-00 00:00:00', 0, 151800000, 75900000, 11),
(141, 820140198, 820140175, 703, 'Discount', '2014-08-01', '2014-08-12', 0, '2014-08-01 12:42:22', 0, '0000-00-00 00:00:00', 0, 151800000, 75900000, 11),
(142, 820140198, 820140175, 704, 'Discount', '2014-08-01', '2014-08-12', 0, '2014-08-01 12:42:22', 0, '0000-00-00 00:00:00', 0, 151800000, 75900000, 11),
(143, 820140198, 820140175, 411, 'Discount', '2014-08-01', '2014-08-12', 0, '2014-08-01 12:42:22', 0, '0000-00-00 00:00:00', 0, 151800000, 75900000, 11),
(144, 820140198, 820140175, 412, 'Discount', '2014-08-01', '2014-08-12', 0, '2014-08-01 12:42:22', 0, '0000-00-00 00:00:00', 0, 151800000, 75900000, 11),
(145, 820140198, 820140175, 413, 'Discount', '2014-08-01', '2014-08-12', 0, '2014-08-01 12:42:22', 0, '0000-00-00 00:00:00', 0, 151800000, 75900000, 11),
(146, 820140198, 820140175, 414, 'Discount', '2014-08-01', '2014-08-12', 0, '2014-08-01 12:42:23', 0, '0000-00-00 00:00:00', 0, 151800000, 75900000, 11),
(147, 820140198, 820140175, 909, 'Discount', '2014-08-01', '2014-08-12', 0, '2014-08-01 12:42:23', 0, '0000-00-00 00:00:00', 0, 151800000, 75900000, 11),
(148, 820140198, 820140175, 910, 'Discount', '2014-08-01', '2014-08-12', 0, '2014-08-01 12:42:23', 0, '0000-00-00 00:00:00', 0, 151800000, 75900000, 11),
(149, 820140198, 820140175, 911, 'Discount', '2014-08-01', '2014-08-12', 0, '2014-08-01 12:42:23', 0, '0000-00-00 00:00:00', 0, 151800000, 75900000, 11),
(150, 820140198, 820140175, 1001, 'Discount', '2014-08-01', '2014-08-12', 0, '2014-08-01 12:42:23', 0, '0000-00-00 00:00:00', 0, 151800000, 75900000, 11),
(151, 820140198, 820140175, 201, 'Discount', '2014-08-01', '2014-08-12', 0, '2014-08-01 12:42:23', 0, '0000-00-00 00:00:00', 0, 151800000, 75900000, 11),
(152, 820140198, 820140175, 202, 'Discount', '2014-08-01', '2014-08-12', 0, '2014-08-01 12:42:23', 0, '0000-00-00 00:00:00', 0, 151800000, 75900000, 11),
(153, 820140198, 820140175, 203, 'Discount', '2014-08-01', '2014-08-12', 0, '2014-08-01 12:42:23', 0, '0000-00-00 00:00:00', 0, 151800000, 75900000, 11),
(154, 820140198, 820140175, 204, 'Discount', '2014-08-01', '2014-08-12', 0, '2014-08-01 12:42:23', 0, '0000-00-00 00:00:00', 0, 151800000, 75900000, 11);

--
-- Triggers `booking`
--
DROP TRIGGER IF EXISTS `konfirmasi`;
DELIMITER //
CREATE TRIGGER `konfirmasi` BEFORE UPDATE ON `booking`
 FOR EACH ROW begin
if NEW.no_kamar <> OLD.no_kamar then
set new.no_kamar = old.no_kamar;
end if
;
end
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id_cust` int(11) NOT NULL,
  `id_num` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `negara` varchar(100) NOT NULL,
  `kk_num` varchar(100) NOT NULL,
  PRIMARY KEY (`id_num`),
  UNIQUE KEY `id_cust` (`id_cust`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=126 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_cust`, `id_num`, `nama`, `tgl_lahir`, `alamat`, `telepon`, `email`, `kota`, `negara`, `kk_num`) VALUES
(1220132201, 1, 'Baniah', '1988-12-08', 'Tebingtinggi', '06190201', '', 'Medan', 'Indonesia', '7889-8794-5435-4131'),
(1220132202, 2, 'Jesika', '1994-12-02', 'Medan', '08900206', '', 'Medan', 'Indonesia', '7889-8794-5435-5131'),
(1220132203, 3, 'Rudolph', '1985-12-05', 'Marelan', '09781234', '', 'Amsterdam', 'Belanda', '4112-7483-4324-4320'),
(1220132204, 4, 'Jhon', '1988-12-09', 'Nias', '0821623789', '', 'Nias', 'Indonesia', '3001-6372-2103-3219'),
(1220132205, 5, 'Cindai', '1988-10-10', 'Brebes', '089872538', '', 'Brebes', 'Indonesia', '2990-5261-1092-2108'),
(1220132206, 6, 'Beno', '1995-12-15', 'barara', '90877545', '', 'Meksiko', 'Amerika', '1889-4150-0981-1097'),
(1220132207, 7, 'Langkas', '1988-12-01', 'Manado', '087655421', '', 'Manado', 'Indonesia', '8990-9805-6546-5242'),
(1220132208, 8, 'Sebastian', '1992-12-04', 'Jongkook', '01873445', '', 'Incheon', 'Korea', '9009-0794-5435-4321'),
(1220132209, 9, 'Ayu', '1994-08-08', 'Singapore', '09875373', '', 'Singapore', 'Singapore', '8998-9685-4324-3219'),
(1220132210, 10, 'Anisa', '1992-08-10', 'Kunamu', '098787484', '', 'Kuala lumpur', 'Malaysia', '9887-8574-3213-2108'),
(1220132211, 11, 'Maya', '1995-12-08', 'Titi pojok', '08129901833', '', 'Jakarta', 'Indonesia', '1011-17-14-1111-2101'),
(1220132212, 12, 'Beatrix', '1989-12-08', 'Belanda', '98753410', '', 'Rotterdam', 'Belanda', '1010-1212-2013-2242'),
(1220132213, 13, 'Jihoo', '1995-12-12', 'Medan', '09781234', '', 'Medan', 'Indonesia', '1212-1110-8811-0012'),
(1220132215, 15, 'Haha', '1988-12-08', 'Tebingtinggi', '06190201', '', 'Medan', 'Indonesia', '1010-1144-6633-8811'),
(1220132216, 16, 'Fitri', '1994-12-02', 'Medan', '08900206', '', 'Medan', 'Indonesia', '2929-0033-5522-7799'),
(1220132217, 17, 'Rama', '1985-12-05', 'Marelan', '09781234', '', 'Belanda', 'Belanda', '1818-9922-4411-6688'),
(1220132218, 18, 'Dani', '1988-12-09', 'Nias', '0821623789', '', 'Nias', 'Indonesia', '8118-9922-4411-6688'),
(1220132219, 19, 'Ika', '1988-10-10', 'Brebes', '089872538', '', 'Brebes', 'Indonesia', '7722-1001-1331-5445'),
(1220132220, 20, 'Angel', '1995-12-15', 'barara', '90877545', '', 'Washington', 'Amerika', '6611-0110-9123-4519'),
(1220132221, 21, 'Sani', '1988-12-01', 'Manado', '087655421', '', 'Manado', 'Indonesia', '5599-9219-8011-3408'),
(1220132222, 22, 'Imah', '1992-12-04', 'Jongkook', '01873445', '', 'Busan', 'Korea', '4419-0111-4022-1141'),
(1220132223, 23, 'Fani', '1994-08-08', 'Singapore', '09875373', '', 'Singapore', 'Singapore', '3328-9222-3911-9911'),
(1220132224, 24, 'Nisa', '1992-08-10', 'Kunamu', '098787484', '', 'Kuala lumpur', 'Malaysia', '2219-4411-6677-1144'),
(1220132225, 25, 'Lili', '1995-12-08', 'Titi pojok', '08129901833', '', 'Jakarta', 'Indonesia', '8811-1199-7741-6612'),
(1220132226, 26, 'Vero', '1989-12-08', 'Belanda', '98753410', '', 'Einhoven', 'Belanda', '16789-1213-6611-4489'),
(1220132227, 27, 'Deno', '1995-12-12', 'Medan', '09781234', '', 'Medan', 'Indonesia', '4578-9112-7713-5478'),
(1220132228, 28, 'Denis', '1994-12-08', 'Medan', '08900206', '', 'Medan', 'Indonesia', '1101-1930-2013-2458'),
(1220132229, 29, 'Rani', '1988-12-08', 'Tebingtinggi', '06190201', '', 'Medan', 'Indonesia', '2011-1993-1887-0011'),
(1220132230, 30, 'Vino', '1994-12-02', 'Medan', '08900206', '', 'Medan', 'Indonesia', '1992-1083-1043-2014'),
(1220132231, 31, 'Diki', '1985-12-05', 'Marelan', '09781234', '', 'Rotterdam', 'Belanda', '9009-4003-6006-2002'),
(1220132232, 32, 'Alvi', '1988-12-09', 'Nias', '0821623789', '', 'Nias', 'Indonesia', '1993-1992-1991-1990'),
(1220132233, 33, 'Saip', '1988-10-10', 'Brebes', '089872538', '', 'Brebes', 'Indonesia', '8801-1088-0188-8108'),
(1220132234, 34, 'Jono', '1995-12-15', 'barara', '90877545', '', 'Meksiko', 'Amerika', '1934-3491-1493-2552'),
(1220132235, 35, 'Dono', '1988-12-01', 'Manado', '087655421', '', 'Manado', 'Indonesia', '1124-4112-1124-0011'),
(12014110, 114, 'Anwar Pasaribu', '1993-05-20', 'Jl. Dr. Mansyur No. 70', '6285275592337', 'tirtyaaa@yahoo.co.id', 'Medan', 'Indonesia', '19283487'),
(120141150, 115, 'Arina Via', '1993-02-07', 'Gatsu', '0765', 'via.arina@gmail.com', 'Medan', 'INdonesia', '12345273683686'),
(120141142, 116, 'Kartini ', '1970-02-01', 'Bla Bla', '012-65786', 'tini@yahoo.co.id', 'Jakarta', 'Indonesia', '6789-6758-0987-1233'),
(120141143, 117, 'Indra Sari susanti', '1993-05-02', 'Jl. Dr. Mansyur', '085712341234', 'ssi@yahoo.com', 'Medan', 'Indonesia', '1234-1234-1234-1234'),
(120141192, 118, 'Abdul', '1990-01-03', 'Jl. Dr. Mansyur No. 70', '080908090809', 'abdul@yahoo.com', 'Medan', 'Indonesia', '9999-7676-4567-0980'),
(12014111, 119, 'Viront', '1993-05-13', 'JL. ALUMUNIUM LK. XXIII M.DELI MDN', '089778787878', 'vickynovita@yahoo.com', 'Medan', 'Indonesia', '12163-237837486-38763'),
(120141487, 120, 'Anwar Pasaribu', '1993-05-20', 'Jl. Dr. Mansyur No. 70', '086', 'tirtyaaa@yahoo.co.id', 'Medan', 'Indonesia', '111'),
(220140784, 121, 'Anwar Pasaribu', '1993-05-20', 'Jl. Dr. Mansyur No. 70', '6285275592337', 'tirtyaaa@yahoo.co.id', 'Medan', 'Indonesia', '1234-1234-1234-1234'),
(22014079, 122, 'Anwar Pasaribu', '1993-05-20', 'Jl. Dr. Mansyur No. 70', '6285275592337', 'tirtyaaa@yahoo.co.id', 'Medan', 'Indonesia', 'sfdsdsf'),
(320140791, 123, 'Anwar Pasaribu', '2014-03-07', 'Jl. Dr. Mansyur No. 70', '6285275592337', 'tirtyaaa@yahoo.co.id', 'Medan', 'Indonesia', 'adsdsad'),
(62014056, 124, 'Anwar', '1993-05-20', 'Medan', '123', 'asa@mail.com', 'Medan', 'Indo', '123'),
(820140175, 125, 'Anwar Pasaribu', '1993-05-20', 'JL. dr. Mansyur No. 70', '085275592337', 'anwar41000@facebook.com', 'Medan', 'Indonesia', '123');

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
  `adult_num` int(11) NOT NULL DEFAULT '2',
  `children_num` int(11) NOT NULL DEFAULT '2',
  PRIMARY KEY (`no_kamar`),
  UNIQUE KEY `no_kamar` (`no_kamar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`no_kamar`, `tipe`, `kapasitas`, `harga`, `deskripsi`, `status`, `adult_num`, `children_num`) VALUES
(201, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked', 2, 2),
(202, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked', 2, 2),
(203, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked', 2, 2),
(204, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked', 2, 2),
(205, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(206, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(207, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(208, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(209, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(210, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(211, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(212, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(213, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(214, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(215, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(301, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(302, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(303, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(304, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(305, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(306, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(307, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(308, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(309, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(310, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(311, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(312, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(313, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(314, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(315, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(401, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(402, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(403, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(404, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(405, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(406, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(407, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(408, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(409, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(410, 'Superior', 3, 750000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(411, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked', 2, 2),
(412, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked', 2, 2),
(413, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked', 2, 2),
(414, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Booked', 2, 2),
(415, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(501, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(502, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(503, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(504, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(505, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(506, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(507, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(508, 'Deluxe', 3, 800000, 'a room view to the city, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(509, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(510, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(511, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(512, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(513, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(514, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(515, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(601, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(602, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(603, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(604, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(605, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(606, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(607, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(608, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(609, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(610, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(611, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(612, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(613, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(614, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(615, 'Deluxe', 3, 800000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water, bathroom with shower and bathtub,', 'Available', 2, 2),
(701, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked', 2, 2),
(702, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Booked', 2, 2),
(703, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Booked', 2, 2),
(704, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Booked', 2, 2),
(705, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Available', 2, 2),
(706, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Available', 2, 2),
(707, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Available', 2, 2),
(708, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Available', 2, 2),
(709, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Available', 2, 2),
(710, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Available', 2, 2),
(711, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Available', 2, 2),
(712, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Available', 2, 2),
(801, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(802, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(803, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(804, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(805, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(806, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(807, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Available', 2, 2),
(808, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Available', 2, 2),
(809, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Available', 2, 2),
(810, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Available', 2, 2),
(811, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Available', 2, 2),
(812, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(901, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(902, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(903, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Available', 2, 2),
(904, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(905, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(906, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(907, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(908, 'Bussiness', 3, 900000, 'a room view to the city and to main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub,', 'Available', 2, 2),
(909, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked', 2, 2),
(910, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked', 2, 2),
(911, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked', 2, 2),
(1001, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked', 2, 2),
(1002, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(1003, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(1004, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(1005, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(1006, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(1007, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(1008, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(1009, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(1010, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(1101, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 4),
(1102, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 3),
(1103, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 5),
(1104, 'Executive', 3, 1000000, 'a room with carpet and bench,view to the city , king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 3),
(1105, 'Suite', 3, 2000000, 'a room with carpet and bench,view to the city and main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked', 2, 2),
(1106, 'Suite', 3, 2000000, 'a room with carpet and bench,view to the city and main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked', 2, 2),
(1107, 'Suite', 3, 2000000, 'a room with carpet and bench,view to the city and main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Booked', 2, 2),
(1108, 'Suite', 3, 2000000, 'a room with carpet and bench,view to the city and main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(1109, 'Suite', 3, 2000000, 'a room with carpet and bench,view to the city and main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(1110, 'Suite', 3, 2000000, 'a room with carpet and bench,view to the city and main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(1201, 'Suite', 3, 2000000, 'a room with carpet and bench,view to the city and main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(1202, 'Suite', 3, 2000000, 'a room with carpet and bench,view to the city and main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(1203, 'Suite', 3, 2000000, 'a room with carpet and bench,view to the city and main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(1204, 'Suite', 3, 2000000, 'a room with carpet and bench,view to the city and main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(1205, 'Suite', 3, 2000000, 'a room with carpet and bench,view to the city and main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(1206, 'Suite', 3, 2000000, 'a room with carpet and bench,view to the city and main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(1207, 'Suite', 3, 2000000, 'a room with carpet and bench,view to the city and main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2),
(1208, 'Suite', 3, 2000000, 'Last Room : a room with carpet and bench,view to the city and main street, king size bed or twin bed with facilities such as : minibar (additional charge),free of charge two bottle of mineral water,DVD player (without CDs) bathroom with shower and bathtub', 'Available', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `kartu_kredit`
--

CREATE TABLE IF NOT EXISTS `kartu_kredit` (
  `id_table` int(11) NOT NULL AUTO_INCREMENT,
  `kk_num` varchar(50) NOT NULL,
  `id_cust` int(11) NOT NULL,
  `expire_date` varchar(50) NOT NULL,
  `nama_pemilik` varchar(100) NOT NULL,
  `security_code` int(5) NOT NULL,
  PRIMARY KEY (`id_table`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `kartu_kredit`
--

INSERT INTO `kartu_kredit` (`id_table`, `kk_num`, `id_cust`, `expire_date`, `nama_pemilik`, `security_code`) VALUES
(1, '1234-1234-1234-1234', 120140581, '0015-10-10', 'Anwar Pasaribu', 999999),
(2, '4576-9878-1000-0047', 120140518, '2014-12-12', 'Dina S.', 80994),
(3, '0809-0809-0809-0809', 120140513, '2015-12-12', 'Budi', 80999),
(4, '0132-8789-2345-1234', 120140563, '2014-12-12', 'Ariana', 98767),
(5, '6666-6666-6666-6666', 120140585, '2014-01-30', 'Smitha', 666666),
(22, '0809-0809-0809-0809', 120141032, '02-2014', 'Indah', 80977),
(23, '7575-2337-7995-0852', 120141049, '12-2014', 'Tina', 123456),
(31, '5555-5555-5555-5555', 120141057, '02-2016', 'Parta', 989878),
(32, '6767-6767-6767-6767', 120141167, '08-2014', 'Kandar', 676767),
(33, '4343', 120141175, '2014-01-02', 'Jannah', 434341),
(34, '1987-1993-2014-2000', 120141123, '12-2014', 'Anggi', 128767),
(35, '5673-3436-3467-4343', 120141114, '05-2014', 'Karontos', 123453),
(36, '3483876', 120141184, '01-2010', 'dfjsdjfkh', 247642),
(37, '22443434', 120141162, '05-2014', 'asa', 454545),
(38, '19283487', 12014110, '08-2014', 'Asa', 23243),
(39, '12345273683686', 120141150, '01-2015', 'Via', 123456),
(40, '6789-6758-0987-1233', 120141142, '08-2014', 'Tini', 97567),
(41, '1234-1234-1234-1234', 120141143, '05-2014', 'Indira', 123456),
(42, '9999-7676-4567-0980', 120141192, '02-2014', 'Abdul', 98976),
(43, '12163-237837486-38763', 12014111, '02-2014', 'Vivi', 123),
(44, '111', 120141487, '05-2014', 'Anwar', 878),
(45, '1234-1234-1234-1234', 220140784, '08-2014', 'Anwar', 123),
(46, 'sfdsdsf', 22014079, '08-2014', 'fcfshsfdhf', 789),
(47, 'adsdsad', 320140791, '05-2014', 'asdsdas', 123),
(48, '123', 62014056, '02-2010', '123', 123),
(49, '123', 820140175, '12-2014', 'Anwar Pasaribu', 123);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE IF NOT EXISTS `promotion` (
  `id_promo` int(11) NOT NULL AUTO_INCREMENT,
  `keterangan` varchar(200) NOT NULL,
  `nilai` int(11) NOT NULL,
  `kode_promo` varchar(10) NOT NULL,
  `expire` date NOT NULL,
  PRIMARY KEY (`id_promo`),
  UNIQUE KEY `kode_promo` (`kode_promo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`id_promo`, `keterangan`, `nilai`, `kode_promo`, `expire`) VALUES
(1, 'Discount', 50, 'kode50', '2014-02-01'),
(2, 'Discount', 20, 'kode20', '2014-01-12');

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
  `foto` varchar(200) NOT NULL DEFAULT 'http://localhost/lat_grand_antares/img/staff-img/default.jpg',
  `pwd` varchar(100) NOT NULL DEFAULT 'asa',
  PRIMARY KEY (`id_staff`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id_staff`, `nama`, `jabatan`, `telepon`, `email`, `foto`, `pwd`) VALUES
(0, 'Anwar Pasaribu', 'Chairman', '085275592337', 'anwar_pasaribu@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(1, 'donald', 'Coorporate Owner', '081264667710', 'donald@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(2, 'michael', 'General Manager (GM)', '081264667711', 'michael@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(3, 'giddens', 'Executive Asisten Manager (Executive GM)', '081264667712', 'giddens@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(4, 'anthony', 'Room Division ', '081264667713', 'anthony@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(5, 'haviland', 'Housekeeping manager ', '081264667714', 'haviland@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(6, 'ihromi', 'Floor Section ', '081264667715', 'ihromi@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(7, 'horton', 'Public Area ', '081264667716', 'horton@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(8, 'henslin', 'Linen section ', '081264667717', 'henslin@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(9, 'paul', 'Front office manager ', '081264667718', 'paul@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(10, 'safitri', 'Recepsionist', '081264667719', 'safitri@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(11, 'kumanto', 'Reservation', '081264667720', 'kumanto@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(12, 'johnson', 'Information', '081264667721', 'johnson@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(13, 'nasikun', 'Cashier ', '081264667722', 'nasikun@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(14, 'nazir', 'F&B Manager ', '081264667723', 'nazir@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(15, 'rostow', 'Food Production ', '081264667724', 'rostow@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(16, 'henslino', 'F & B service ', '081264667725', 'henslino@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(17, 'james', 'Pelayan / staff BAR ', '081264667727', 'james@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(18, 'sorokin', 'Pelayan /Staff Restaurant ', '081264667728', 'sorokin@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(19, 'william', 'Pelayan / Staff Room Service ', '081264667729', 'william@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(20, 'kiamanto', 'Staff Banquet ', '081264667729', 'kiamanto@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(21, 'phil', 'Executive Chief ', '081264667730', 'phil@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(22, 'richard', ' ASS. Executive Chief ', '081264667732', 'richard@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(23, 'yusun', 'Supervisor', '081264667733', 'yusun@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(24, 'taneko', ' Staff', '081264667736', 'taneko@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(25, 'astrid', 'Human Resources Departemen ', '081264667738', 'astrid@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(26, 'soerjono', 'Sales dan Marketing Manager ', '081264667740', 'soerjono@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(27, 'james', 'Room Division', '081264667710', 'james@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(28, 'sarah', 'Room Division', '081264667711', 'sarah@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(29, 'ladi', 'Pelayan / Staff Room Service ', '081264667712', 'ladi@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(30, 'thony', 'Room Division ', '081264667713', 'thony@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(31, 'iland', 'Room Division', '081264667714', 'iland@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(32, 'ihrom', 'Floor Section ', '081264667715', 'ihrom@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(33, 'hoon', 'Public Area ', '081264667716', 'hoton@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(34, 'lin', 'Linen section ', '081264667717', 'lin@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(35, 'piil', 'Front office manager ', '081264667718', 'piil@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(36, 'fitri', 'Recepsionist', '081264667719', 'fitri@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(37, 'anto', 'Reservation', '081264667720', 'anto@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(38, 'john', 'Information', '081264667721', 'john@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(39, 'ikun', 'Cashier ', '081264667722', 'ikun@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(40, 'nair', 'F&B Manager ', '081264667723', 'nair@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(41, 'stow', 'Food Production ', '081264667724', 'stow@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(42, 'hens', 'F & B service ', '081264667725', 'hens@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(43, 'ade', 'Pelayan / staff BAR ', '081264667727', 'ade@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(44, 'diki', 'Pelayan /Staff Restaurant ', '081264667728', 'diki@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(45, 'parker', 'Pelayan / Staff Room Service ', '081264667729', 'parker@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(46, 'bebi', 'Staff Banquet ', '081264667729', 'bebi@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(47, 'dam', 'Room Division', '081264667730', 'dam@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(48, 'ella', 'Pelayan / Staff Room Service ', '081264667732', 'ella@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(49, 'anti', 'Supervisor', '081264667733', 'anti@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(50, 'tono', ' Staff', '081264667736', 'tono@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa'),
(1000, 'Anwar Pasaribu', 'Chairman', '085275592337', 'anwar_pasaribu@gmail.com', 'http://localhost/lat_grand_antares/img/staff-img/default.jpg', 'asa');

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
