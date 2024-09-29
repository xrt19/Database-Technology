-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2022 at 06:25 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `YogurtStore`
--

-- --------------------------------------------------------

--
-- Table structure for table `mscustomer`
--

CREATE TABLE `mscustomer` (
  `CustomerID` char(5) NOT NULL,
  `CustomerName` varchar(50) NOT NULL,
  `CustomerDOB` date NOT NULL,
  `CustomerEmail` varchar(30) NOT NULL,
  `CustomerGender` varchar(6) DEFAULT NULL,
  `CustomerAddress` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mscustomer`
--

INSERT INTO `mscustomer` (`CustomerID`, `CustomerName`, `CustomerDOB`, `CustomerEmail`, `CustomerGender`, `CustomerAddress`) VALUES
('CU001', 'Dougie Mayo', '2002-10-01', 'mayo.doug@gmail.com', 'Male', '26 Hodgson Street'),
('CU002', 'Eliza Mcdonnell', '2003-08-17', 'elizaza@gmail.com', 'Female', '15 Sinclair Street'),
('CU003', 'Magnus Hough', '2004-08-11', 'magnus.hough@gmail.com', 'Male', '70 Dabinett Road'),
('CU004', 'Eadie Prosser', '2004-07-14', 'eadiedi@gmail.com', 'Female', '81 Eungella Road'),
('CU005', 'Alicja Dunne', '2001-03-12', 'alicja@gmail.com', 'Female', '37 Bayley Street'),
('CU006', 'Donnell Obrien', '1999-02-01', 'donellobri@gmail.com', 'Male', '29 Seninis Road'),
('CU007', 'Tilly-Mae Burrows', '2001-01-06', 'tilly.mae@gmail.com', 'Female', '14 Florabunda Lane'),
('CU008', 'Miller Zimmerman', '2001-09-01', 'miller.zimmer@gmail.com', 'Male', '61 Creek Street'),
('CU009', 'Farhan Rennie', '2010-10-02', 'farhan.han@gmail.com', 'Male', '85 Davidson Street'),
('CU010', 'Ayush Haley', '2001-05-09', 'ayush.haley@gmail.com', 'Female', '34 Peterho Boulevard');

-- --------------------------------------------------------

--
-- Table structure for table `msstaff`
--

CREATE TABLE `msstaff` (
  `StaffID` char(5) NOT NULL,
  `StaffName` varchar(50) NOT NULL,
  `StaffDOB` date NOT NULL,
  `StaffEmail` varchar(30) NOT NULL,
  `StaffSalary` int(10) DEFAULT NULL,
  `StaffGender` varchar(6) DEFAULT NULL,
  `StaffAddress` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `msstaff`
--

INSERT INTO `msstaff` (`StaffID`, `StaffName`, `StaffDOB`, `StaffEmail`, `StaffSalary`, `StaffGender`, `StaffAddress`) VALUES
('ST001', 'Steffan Riddle', '1999-12-21', 'riddle.steffan@gmail.com', 3000000, 'Male', '13 Carlisle Street'),
('ST002', 'Buddy Booker', '1997-11-30', 'booker.buddy@gmail.com', 3500000, 'Male', '5 Normans Road'),
('ST003', 'Milosz Koch', '2000-01-28', 'koch123@gmail.com', 2300000, 'Female', '10 Old Gayndah Road'),
('ST004', 'Kieren Almond', '1998-04-23', 'almondnut@gmail.com', 4500000, 'Female', '78 Campbells River Road'),
('ST005', 'Josephine Morgan', '1998-07-18', 'morgan.josie@yahoo.com', 3000000, 'Female', '50 Little Myers Street'),
('ST006', 'Leandro Hodges', '1999-09-19', 'hodges99@gmail.com', 1000000, 'Male', '5 Weemala Avenue'),
('ST007', 'Esther Collins', '2001-10-10', 'collins@yahoo.com', 2100000, 'Female', '59 Bayview Road'),
('ST008', 'Rebekka Kane', '2001-10-04', 'kane.rebecca@gmail.com', 3200000, 'Female', '4 Marlin Avenue'),
('ST009', 'Miruna Lim', '2001-07-03', 'mirunalim@yahoo.com', 2400000, 'Female', '30 Farrar Parade'),
('ST010', 'Shaurya Spooner', '1995-03-11', 'spooner.sha@yahoo.com', 1350000, 'Female', '73 South Molle Boulevard');

-- --------------------------------------------------------

--
-- Table structure for table `msyogurt`
--

CREATE TABLE `msyogurt` (
  `YogurtID` char(5) NOT NULL,
  `YogurtName` varchar(50) DEFAULT NULL,
  `YogurtFlavorID` char(5) DEFAULT NULL,
  `YogurtPrice` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `msyogurt`
--

INSERT INTO `msyogurt` (`YogurtID`, `YogurtName`, `YogurtFlavorID`, `YogurtPrice`) VALUES
('YG001', 'Phorcys', 'YF009', 34000),
('YG002', 'Lygdamis', 'YF008', 50000),
('YG003', 'Tydeus', 'YF001', 45000),
('YG004', 'Patrobus', 'YF003', 21000),
('YG005', 'Sosicles', 'YF002', 27000),
('YG006', 'Melanie', 'YF004', 90000),
('YG007', 'Eurymachos Morys', 'YF005', 155000),
('YG008', 'Antenor Linus Sosilus', 'YF007', 125000),
('YG009', 'Issa Athis', 'YF006', 300000),
('YG010', 'Artemidora', 'YF010', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `msyogurtflavor`
--

CREATE TABLE `msyogurtflavor` (
  `YogurtFlavorID` char(5) NOT NULL,
  `YogurtFlavorName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `msyogurtflavor`
--

INSERT INTO `msyogurtflavor` (`YogurtFlavorID`, `YogurtFlavorName`) VALUES
('YF001', 'Chocolate'),
('YF002', 'Lemonade'),
('YF003', 'Caramel'),
('YF004', 'Vanilla'),
('YF005', 'Passionfruit'),
('YF006', 'Ginger'),
('YF007', 'Pumpkin'),
('YF008', 'Caramel Chocolate'),
('YF009', 'Coffee Almond'),
('YF010', 'Honey Almond');

-- --------------------------------------------------------

--
-- Table structure for table `transactiondetail`
--

CREATE TABLE `transactiondetail` (
  `TransactionID` char(5) NOT NULL,
  `YogurtID` char(5) NOT NULL,
  `Quantity` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactiondetail`
--

INSERT INTO `transactiondetail` (`TransactionID`, `YogurtID`, `Quantity`) VALUES
('TR001', 'YG001', 1),
('TR001', 'YG002', 1),
('TR002', 'YG003', 2),
('TR003', 'YG002', 3),
('TR004', 'YG002', 1),
('TR005', 'YG001', 2),
('TR006', 'YG003', 2),
('TR007', 'YG004', 1),
('TR008', 'YG002', 1),
('TR008', 'YG004', 1),
('TR008', 'YG005', 1),
('TR009', 'YG001', 2),
('TR009', 'YG002', 4),
('TR009', 'YG005', 1),
('TR010', 'YG002', 1),
('TR011', 'YG002', 5),
('TR012', 'YG002', 1),
('TR013', 'YG002', 1),
('TR013', 'YG010', 1),
('TR014', 'YG001', 3),
('TR014', 'YG002', 6),
('TR014', 'YG005', 1),
('TR014', 'YG008', 2),
('TR014', 'YG010', 4),
('TR015', 'YG002', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transactionheader`
--

CREATE TABLE `transactionheader` (
  `TransactionID` char(5) NOT NULL,
  `StaffID` char(5) DEFAULT NULL,
  `CustomerID` char(5) DEFAULT NULL,
  `TransactionDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactionheader`
--

INSERT INTO `transactionheader` (`TransactionID`, `StaffID`, `CustomerID`, `TransactionDate`) VALUES
('TR001', 'ST002', 'CU003', '2021-10-01'),
('TR002', 'ST001', 'CU004', '2021-10-02'),
('TR003', 'ST003', 'CU005', '2021-10-03'),
('TR004', 'ST004', 'CU006', '2021-11-01'),
('TR005', 'ST005', 'CU007', '2021-11-11'),
('TR006', 'ST006', 'CU008', '2021-11-12'),
('TR007', 'ST007', 'CU009', '2021-12-20'),
('TR008', 'ST008', 'CU010', '2021-12-21'),
('TR009', 'ST009', 'CU002', '2022-01-02'),
('TR010', 'ST010', 'CU002', '2022-02-03'),
('TR011', 'ST003', 'CU002', '2022-03-04'),
('TR012', 'ST003', 'CU001', '2022-05-01'),
('TR013', 'ST003', 'CU001', '2022-06-01'),
('TR014', 'ST005', 'CU002', '2022-10-23'),
('TR015', 'ST005', 'CU010', '2022-11-22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mscustomer`
--
ALTER TABLE `mscustomer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `msstaff`
--
ALTER TABLE `msstaff`
  ADD PRIMARY KEY (`StaffID`);

--
-- Indexes for table `msyogurt`
--
ALTER TABLE `msyogurt`
  ADD PRIMARY KEY (`YogurtID`),
  ADD KEY `YogurtFlavorID` (`YogurtFlavorID`);

--
-- Indexes for table `msyogurtflavor`
--
ALTER TABLE `msyogurtflavor`
  ADD PRIMARY KEY (`YogurtFlavorID`);

--
-- Indexes for table `transactiondetail`
--
ALTER TABLE `transactiondetail`
  ADD PRIMARY KEY (`TransactionID`,`YogurtID`),
  ADD KEY `YogurtID` (`YogurtID`);

--
-- Indexes for table `transactionheader`
--
ALTER TABLE `transactionheader`
  ADD PRIMARY KEY (`TransactionID`),
  ADD KEY `StaffID` (`StaffID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `msyogurt`
--
ALTER TABLE `msyogurt`
  ADD CONSTRAINT `msyogurt_ibfk_1` FOREIGN KEY (`YogurtFlavorID`) REFERENCES `msyogurtflavor` (`YogurtFlavorID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactiondetail`
--
ALTER TABLE `transactiondetail`
  ADD CONSTRAINT `transactiondetail_ibfk_1` FOREIGN KEY (`TransactionID`) REFERENCES `transactionheader` (`TransactionID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactiondetail_ibfk_2` FOREIGN KEY (`YogurtID`) REFERENCES `msyogurt` (`YogurtID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactionheader`
--
ALTER TABLE `transactionheader`
  ADD CONSTRAINT `transactionheader_ibfk_1` FOREIGN KEY (`StaffID`) REFERENCES `msstaff` (`StaffID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactionheader_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `mscustomer` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
