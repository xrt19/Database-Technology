-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2022 at 02:43 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bergeemah`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` char(5) NOT NULL,
  `CustomerName` varchar(255) NOT NULL,
  `CustomerDOB` date NOT NULL,
  `CustomerGender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `CustomerName`, `CustomerDOB`, `CustomerGender`) VALUES
('CS001', 'Timoon', '2002-01-19', 'Male'),
('CS002', 'Timoona', '2002-01-19', 'Female'),
('CS003', 'Christina', '2000-01-22', 'Female'),
('CS004', 'Christino', '1999-05-20', 'Male'),
('CS005', 'Peesau', '1998-03-25', 'Female'),
('CS006', 'Bindi Miti', '1998-05-26', 'Female'),
('CS007', 'Bandohiks', '2001-07-19', 'Male'),
('CS008', 'Liptip', '2003-05-20', 'Female'),
('CS009', 'Mawus Dooduk', '1999-11-19', 'Male'),
('CS010', 'Mownitoor', '2000-01-23', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `speaker`
--

CREATE TABLE `speaker` (
  `SpeakerID` char(5) NOT NULL,
  `SpeakerBrandID` char(5) NOT NULL,
  `SpeakerName` varchar(255) NOT NULL,
  `SpeakerPrice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `speaker`
--

INSERT INTO `speaker` (`SpeakerID`, `SpeakerBrandID`, `SpeakerName`, `SpeakerPrice`) VALUES
('SP001', 'SB001', 'WonderBoom 2', 999000),
('SP002', 'SB001', 'Megaboom', 4999000),
('SP003', 'SB004', 'Onyx Studio 5', 2650000),
('SP004', 'SB004', 'Onyx Studio 4', 2000000),
('SP005', 'SB005', 'Home Speaker 500', 7899000),
('SP006', 'SB005', 'Soundlink Revolve + II Revolve Plus', 6350000),
('SP007', 'SB003', 'Sonos Move', 7911000),
('SP008', 'SB003', 'Sonos One Gen2', 4350000),
('SP009', 'SB003', 'Sonos ONE SL', 15800000),
('SP010', 'SB007', 'SONY SRS-XB23', 1299000),
('SP011', 'SB006', 'Sennheiser Ambeo Soundbar', 49750000),
('SP012', 'SB008', 'Klipsch The Five Bookshelf', 15000000),
('SP013', 'SB009', 'Beosound A1 2nd Gen', 4099000),
('SP014', 'SB010', 'ProMonitor 800 Satellite', 2799999);

-- --------------------------------------------------------

--
-- Table structure for table `speakerbrand`
--

CREATE TABLE `speakerbrand` (
  `SpeakerBrandID` char(5) NOT NULL,
  `SpeakerBrandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `speakerbrand`
--

INSERT INTO `speakerbrand` (`SpeakerBrandID`, `SpeakerBrandName`) VALUES
('SB001', 'Ultimate Ears'),
('SB002', 'JBL'),
('SB003', 'Sonos'),
('SB004', 'Harman Kardon'),
('SB005', 'Bose'),
('SB006', 'Sennheiser'),
('SB007', 'Sony'),
('SB008', 'Klipsch'),
('SB009', 'Bang & Olufsen'),
('SB010', 'Definitive Technology');

-- --------------------------------------------------------

--
-- Table structure for table `trdetail`
--

CREATE TABLE `trdetail` (
  `TransactionID` char(5) NOT NULL,
  `SpeakerID` char(5) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trdetail`
--

INSERT INTO `trdetail` (`TransactionID`, `SpeakerID`, `Quantity`) VALUES
('TR001', 'SP001', 3),
('TR001', 'SP003', 1),
('TR002', 'SP003', 2),
('TR002', 'SP004', 2),
('TR002', 'SP005', 1),
('TR003', 'SP006', 4),
('TR004', 'SP007', 5),
('TR005', 'SP001', 8),
('TR005', 'SP008', 2),
('TR005', 'SP009', 1),
('TR006', 'SP011', 1),
('TR006', 'SP012', 2),
('TR007', 'SP013', 3),
('TR008', 'SP014', 3),
('TR009', 'SP002', 1),
('TR009', 'SP003', 2),
('TR010', 'SP005', 2);

-- --------------------------------------------------------

--
-- Table structure for table `trheader`
--

CREATE TABLE `trheader` (
  `TransactionID` char(5) NOT NULL,
  `CustomerID` char(5) NOT NULL,
  `TransactionDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trheader`
--

INSERT INTO `trheader` (`TransactionID`, `CustomerID`, `TransactionDate`) VALUES
('TR001', 'CS003', '2010-02-03'),
('TR002', 'CS003', '2013-07-08'),
('TR003', 'CS002', '2014-05-17'),
('TR004', 'CS007', '2015-02-23'),
('TR005', 'CS008', '2016-01-28'),
('TR006', 'CS007', '2017-02-13'),
('TR007', 'CS009', '2018-09-05'),
('TR008', 'CS001', '2019-09-03'),
('TR009', 'CS010', '2021-11-02'),
('TR010', 'CS004', '2022-07-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `speaker`
--
ALTER TABLE `speaker`
  ADD PRIMARY KEY (`SpeakerID`),
  ADD KEY `FK_SpeakerBrand` (`SpeakerBrandID`);

--
-- Indexes for table `speakerbrand`
--
ALTER TABLE `speakerbrand`
  ADD PRIMARY KEY (`SpeakerBrandID`);

--
-- Indexes for table `trdetail`
--
ALTER TABLE `trdetail`
  ADD PRIMARY KEY (`TransactionID`,`SpeakerID`),
  ADD KEY `FK_Speaker` (`SpeakerID`);

--
-- Indexes for table `trheader`
--
ALTER TABLE `trheader`
  ADD PRIMARY KEY (`TransactionID`),
  ADD KEY `FK_Customer` (`CustomerID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `speaker`
--
ALTER TABLE `speaker`
  ADD CONSTRAINT `FK_SpeakerBrand` FOREIGN KEY (`SpeakerBrandID`) REFERENCES `speakerbrand` (`SpeakerBrandID`);

--
-- Constraints for table `trdetail`
--
ALTER TABLE `trdetail`
  ADD CONSTRAINT `FK_Speaker` FOREIGN KEY (`SpeakerID`) REFERENCES `speaker` (`SpeakerID`),
  ADD CONSTRAINT `FK_Transaction` FOREIGN KEY (`TransactionID`) REFERENCES `trheader` (`TransactionID`);

--
-- Constraints for table `trheader`
--
ALTER TABLE `trheader`
  ADD CONSTRAINT `FK_Customer` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
